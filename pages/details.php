<?php


//retrieve query string parameters

$record_name = $_GET['name'];
$record_artist = $_GET['artist'];
$record_price = $_GET['price'];

//Query Database

//Record Details Query

$record_select_clause = "SELECT id,file_ext,album_description FROM records";

$record_where_clause = ' WHERE (records.album_name = ' . '"'.$record_name.'");';

$record_details_query = $record_select_clause.$record_where_clause;

$result = exec_sql_query($db, $record_details_query);
$records = $result->fetchAll();

$id = $records[0]['id'];
$file_ext = $records[0]['file_ext'];
$album_description = $records[0]['album_description'];


//Record Tags Query
$tags_select_clause =
"SELECT tags.genre  AS 'tags.genre',
tags.decade AS 'tags.decade',
tags.rating AS 'tags.rating'
FROM tags
INNER JOIN records_tags ON records_tags.tags_id = tags.id";

$tags_where_clause = ' WHERE records_id = ' . $id;

$tags_details_query = $tags_select_clause.$tags_where_clause;

$tags_result = exec_sql_query($db, $tags_details_query);
$tags = $tags_result->fetchAll();

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
      <div class="page_margins">
        <h1>Roarin Records Details Page </h1>

          <div class="column">
            <!-- Source:https://www.bluescentric.com/p-4890-michael-jackson-thriller-vinyl-record-new.aspx -->
            <?php $album_cover_url = '/public/uploads/album-covers/'.$id.'.'.$file_ext; ?>
            <img src="<?php echo htmlspecialchars($album_cover_url); ?>" width="500" height="500">
          </div>

            <p>Album Name: <?php echo htmlspecialchars($record_name);?> </p>
            <p>Album Artist: <?php echo htmlspecialchars($record_artist);?></p>
            <p>Price: <?php echo htmlspecialchars($record_price); ?></p>

            <?php foreach($tags as $tag) { ?>
                <!-- Note: later this should be information echoed from another database -->
                <?php if ($tag['tags.genre'] != ''){?>
                  <p> Genre: <?php echo htmlspecialchars($tag['tags.genre']); ?></p>
                <?php } ?>

                <?php if ($tag['tags.decade'] != '') { ?>
                  <p> Era: <?php echo htmlspecialchars($tag['tags.decade']); ?> </p>
                <?php }?>

                <?php if ($tag['tags.rating'] != '') { ?>
                  <p> Rating: <?php echo htmlspecialchars($tag['tags.rating']); ?> Stars</p>
                <?php }?>
            <?php }; ?>
            <!-- Source: Wikipedia -->
            <?php if($album_description != NULl) { ?>
            <p>Description: <?php echo htmlspecialchars($album_description); ?></p>
            <?php };?>

        </div>




    </main>
</body>

</html>
