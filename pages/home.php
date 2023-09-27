<?php

const TAG_NAMES = array(
  5005 => 'Rating 5 Stars',
  4004 => 'Rating 4 Stars',
  3003 => 'Rating 3 Stars',
  2002 => 'Rating 2 Stars',
  1001 => 'Rating 1 Star',
  34   => 'Genre - Pop',
  27   => 'Genre - R&B',
  50   => 'Genre - Rock',
  12   => 'Genre - Classical',
  72   => 'Genre - Alternative',
  84   => 'Genre - Country',
  66   => 'Genre - Jazz',
  98   => 'Genre - Hiphop',
  90   => 'Genre - Rap',
  44   => 'Genre - Dance/Electronic',
  123  => 'Genre - Reggae',
  11   => 'Genre - Folk',
  175   => 'Genre - Soundtrack',
  940  => 'Music from the 40s',
  950  => 'Music from the 50s',
  960  => 'Music from the 60s',
  970  => 'Music from the 70s',
  980  => 'Music from the 80s',
  990  => 'Music from the 90s',
  200  => 'Music from the 2000s',
  210  => 'Music from the 2010s',
  220  => 'Music from the 2020s'
);


//Inserting New Record into DB
define("MAX_FILE_SIZE", 1000000);
//field initializations
$file_name = NULL;
$file_ext = NULL;

//File Upload
$upload = $_FILES['album-cover'];

//Form Values from Uploading a File
$form_values['album-name'] = $_POST['album-name'];
$form_values['album-year'] = $_POST['album-year'];
$form_values['artist'] = $_POST['artist'];
$form_values['price'] = $_POST['price'];

$form_valid = true;

//File uploaded correctly, no error
if (is_user_logged_in()) {
  if($form_values['album-name'] == NULL){
    $form_valid = false;
  }

  if($form_values['album-year'] == NULL){
    $form_valid = false;
  }

  if($form_values['artist'] == NULL){
    $form_valid = false;
  }

  if($form_values['price'] == NULL){
    $form_valid = false;
  }

  if($upload['error'] == UPLOAD_ERR_OK){

    //1. Store file information in variables to later insert into db
    $file_name = basename($upload['name']);
    $file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

    //2. Insert file information into the db
    if($form_valid){
    $insert_db = exec_sql_query(
      $db,
      "INSERT INTO records(album_name, album_year, artist, price, file_name, file_ext)
      VALUES (:album_name, :album_year, :artist, :price, :file_name, :file_ext)",
      array(
        ':album_name' => $form_values['album-name'],
        ':album_year' => $form_values['album-year'],
        ':artist'     => $form_values['artist'],
        ':price'      => $form_values['price'],
        ':file_name' => $file_name,
        ':file_ext' => $file_ext
      )
      );
    };

    //3. Move the uploaded file into the uploads folder
    if($insert_db){
    $record_id = $db->lastInsertId('id');

    $new_file_location = 'public/uploads/album-covers/'. $record_id . '.' . $file_ext;

    move_uploaded_file($upload['tmp_name'], $new_file_location);
    }
  };

};

//Get Filter Parameters
$filter_param = array(':tag_id' => $_GET['tag'])?? NULL;

//Initial Select Clause - Shows all records
$sql_select_clause = "SELECT * FROM records";

//Tags Select Clause
$sql_tags_clause = "SELECT * FROM tags";

  if($filter_param[':tag_id'] != NULL){
    //Filter Select Clause
    $sql_select_clause =
    "SELECT records.id AS 'records.id',
    records.album_name AS 'records.album_name',
    records.artist AS 'records.artist',
    records.price AS 'records.price',
    tags.id AS 'tags.id',
    tags.genre AS 'tags.genre',
    records.file_ext AS 'file_ext'
    FROM records
    INNER JOIN records_tags ON records_tags.records_id = records.id
    INNER JOIN tags ON records_tags.tags_id = tags.id";
    $sql_where_clause = ' WHERE tags.id = ' . $filter_param[':tag_id'];
  };

//Filter Query
$sql_filter_query = $sql_select_clause . $sql_where_clause . ';';

//Records and Tags Queries
$records = exec_sql_query($db, $sql_filter_query)->fetchAll();
$tags = exec_sql_query($db, $sql_tags_clause)->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <link rel="stylesheet" type="text/css" href="/public/styles/site.css" media="all">

  <title>Roarin' Records - Home</title>
</head>


<body>
  <?php include 'includes/header.php'; ?>

    <main>
      <!-- Main Page Header -->
      <div>
        <h1 class="page_margins">Welcome to Roarin Records </h2>

        <!-- Show Sign In Form - if user isn't logged in show sign in form-->
        <?php if(!is_user_logged_in()) { ?>
          <!-- Sign In Form -->
          <div class="page_margins">
            <!-- 4. Add login form -->
            <?php echo login_form('/', $session_messages); ?>
          </div>

        <?php }; ?>

        <!-- Show Logout Form -->
        <?php if(is_user_logged_in()) { ?>
          <div class="page_margins">
            <h3 class="logged_in">Welcome, <?php echo htmlspecialchars($current_user['name']);?>! You are logged in as an <strong>Administrator</strong> for Roarin Records.</h3>
          </div>
        <?php }; ?>
      </div>


      <!-- Genre Tags -->
      <div class="page_margins column">
        <div class="page_margins genre row">
          <h4>Show All Records:</h4>
          <a class="" href="/">All Records</a>
        </div>
        <div class="page_margins genre row">
        <p>Genre: </p>
        <?php foreach ($tags as $tag) { ?>
          <?php if ($tag['genre'] != NULL) {?>
            <a class="" href="/?<?php echo http_build_query(array('tag' => $tag['id'])); ?>"><?php echo $tag['genre']; ?>|</a>
          <?php }; ?>
      <?php }; ?>
      </div>
      </div>

      <div class="page_margins">
        <!-- All other tags -->
        <aside>
          <form>
            <h3>Choose a Filter</h3>
            Select a Decade
            <?php foreach($tags as $tag) {?>
              <div class="column">
              <?php if($tag['decade'] != NULL) {?>
                  <label for="<?php echo $tag['decade'];?>"><?php echo $tag['decade'];?></label>
                  <input id="<?php echo $tag['decade'];?>" type="radio" name='tag' value="<?php echo $tag['id'];?>">
              <?php };?>
              </div>
            <?php };?>

            Select a Rating
            <?php foreach($tags as $tag) {?>

              <?php if($tag['rating'] != NULL) {?>
                <div class="column">
                  <label for="<?php echo $tag['rating'];?>"><?php echo $tag['rating'];?> - Stars</label>
                  <input id="<?php echo $tag['rating'];?>" type="radio" name='tag' value="<?php echo $tag['id'];?>" >
                </div>
              <?php };?>
            <?php };?>

            <button type="submit" name="filter"> Filter</button>
          </form>



          <?php if (is_user_logged_in()) { ?>
          <div class="upload-form">
            <h3> Upload a record </h3>
            <!-- 1. Form -> must be a POST Request -->
            <!-- 2. enctype -> multipart/form-data -->
              <form action="/" method="post" enctype="multipart/form-data">
                <!-- 4. MAX_FILE_SIZE in bites input  -->
                <!-- 5. MAX_FILE_SIZE must be before file input in HTML -->
                <input type="hidden" name="MAX_FILE_SIZE" value="<?php echo MAX_FILE_SIZE; ?>">
                    <label for="name">Type Album Name</label>
                    <input id="name" type="text" name="album-name" value=""/>

                    <label for="album-year">Enter Year Album Was Created </label>
                    <input id="album-year" type="text" name="album-year" value=""/>

                    <label for="artist">Enter Artist Name</label>
                    <input id="artist" type="text" name="artist" value=""/>

                    <label for="price">Enter Album Price</label>
                    <input id="price" type="float" name="price" value=""/>

                    <label for="album-cover">Upload a Album Cover </label>
                    <!-- 3. File Input -->
                    <input id="album-cover" type="file" accept=".jpg,.jpeg,.png,image/jpeg,image/png" name="album-cover"/>

                    <button type="submit" name="upload record">Upload New Record</button>
              </form>
            </div>
            <?php }; ?>

        </aside>

        <!-- Initial Records Page Showing All Records -->
        <?php if($filter_param[':tag_id'] == NULL) { ?>
            <div class="row">
            <?php foreach ($records as $record) { ?>
              <?php
                $album_name = htmlspecialchars($record["album_name"]);
                $artist = htmlspecialchars($record["artist"]);
                $price = htmlspecialchars($record["price"]);
                $album_cover_url = '/public/uploads/album-covers/'.$record['id'].'.'.$record['file_ext'];
              ?>
              <!-- Item in Catalog -->
              <div class="catalog-column">
                <a id="name" href="/details?<?php echo http_build_query(array(
                  'name' => $album_name,
                  'artist'=> $artist,
                  'price' => $price
                ));?>">
                <img src="<?php echo htmlspecialchars($album_cover_url); ?>" width="300" height="300" alt="<?php echo htmlspecialchars($record["album_name"]); ?> - Album Cover"></a>
                  <p><?php echo htmlspecialchars($record["album_name"]); ?></p>
                  <p>By - <?php echo htmlspecialchars($record["artist"]); ?></p>
                  <p><?php echo htmlspecialchars($record["price"]); ?></p>
              </div>
            <?php } ?>
          <?php }?>
        </div>
      </div>

          <!-- Filtered Records -->
          <?php if($filter_param[':tag_id'] != '') { ?>
            <h2><?php echo htmlspecialchars(TAG_NAMES[$filter_param[':tag_id']]);?></h2>
            <div class="row">

            <?php foreach ($records as $record) { ?>
            <?php
              $album_name = htmlspecialchars($record["records.album_name"]);
              $artist = htmlspecialchars($record["records.artist"]);
              $price = htmlspecialchars($record["records.price"]);
              $album_cover_url = '/public/uploads/album-covers/'.$record['records.id'].'.'.$record['file_ext'];
            ?>
            <!-- Item in Catalog -->
            <div class="catalog-column">
              <a id="name" href="/details?<?php echo http_build_query(array(
                'name' => $album_name,
                'artist'=> $artist,
                'price' => $price
              ));?>">
              <img src="<?php echo htmlspecialchars($album_cover_url); ?>" width="300" height="300" alt="<?php echo htmlspecialchars($record["album_name"]); ?> - Album Cover"></a>
                <p><?php echo htmlspecialchars($record["records.album_name"]); ?></p>
                <p>By - <?php echo htmlspecialchars($record["records.artist"]); ?></p>
                <p><?php echo htmlspecialchars($record["records.price"]); ?></p>
            </div>
            <?php } ?>
            </div>
          <?php }?>

    </main>

  </body>

</html>
