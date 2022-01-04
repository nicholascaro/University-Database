<html>
<body>
  <div>
    <h1> Grade Count Look Up </h1>
  </div>

  <fieldset>
    <?php
      $link = mysqli_connect('mariadb', 'cs332t8', 'DwZ2T99o', 'cs332t8');
      if(!$link) {
        die('Could not connect: ' . mysqli_error());
      }
      echo 'Connected Successfully<p>';
      $query = "SELECT e_grade, COUNT(*) as 'Count'

        FROM enrollment, course, section
        WHERE course_num = section_course_number
        AND e_course_number = course_num
        AND e_section_number = section_number
        AND section_number =" .$_POST["Sectionnum"]."
        AND course_num = '".$_POST["Coursenum"]."'
        GROUP BY e_grade;";

      $result = $link->query($query);
      $nor = $result->num_rows;
      $i = 0;
      if ($i < $nor) {
        echo "Course Number: " .$_POST["Coursenum"], "<br>";
        echo "Section Number: " .$_POST["Sectionnum"], "<br>", "<br>";

        for ($i = 0; $i < $nor; $i++) {
          $row = $result->fetch_assoc();
          echo $row["Count"], " student(s) received: ", $row["e_grade"], "<br>";
        }
      }
      else {
        echo "Course/Section Not Found", "<br>";
      }
      $result->free_result();
      $link->close();
    ?>
  </fieldset>
</body>
</html>
