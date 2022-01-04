<html>
<body>
  <div>
    <h1> Student CWID Look Up </h1>
  </div>

  <fieldset>
    <?php
      $link = mysqli_connect('mariadb', 'cs332t8', 'DwZ2T99o', 'cs332t8');
      if(!$link) {
        die('Could not connect: ' . mysqli_error());
      }
      echo 'Connected Successfully<p>';
      $query = "SELECT course_name, e_course_number, e_grade

        FROM enrollment, course
        WHERE e_course_number = course_num
        AND e_student_cwid =" .$_POST["Scwid"];

      $result = $link->query($query);
      $nor = $result->num_rows;
      $i = 0;
      if ($i < $nor) {
        echo "Student CWID: " .$_POST["Scwid"], "<br>", "<br>";

        for ($i = 0; $i < $nor; $i++) {
          $row = $result->fetch_assoc();
          echo "Course Title: ", $row["course_name"], "<br>";
          echo "Course Number: ", $row["e_course_number"], "<br>";
          echo "Grade: ", $row["e_grade"], "<br>", "<br>";
        }
      }
      else {
        echo "CWID Not Found", "<br>";
      }
      $result->free_result();
      $link->close();
    ?>
  </fieldset>
</body>
</html>
