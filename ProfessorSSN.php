<html>
<body>
  <div>
    <h1> Professor SSN Look Up </h1>
  </div>

  <fieldset>
    <?php
      $link = mysqli_connect('mariadb', 'cs332t8', 'DwZ2T99o', 'cs332t8');
      if(!$link) {
        die('Could not connect: ' . mysqli_error());
      }
      echo 'Connected Successfully<p>';
      $query = "SELECT course_name, section_classroom, section_meeting_days, section_begin_time, section_end_time

        FROM course, section, professor
        WHERE p_ssn = section_prof_ssn
        AND course_num = section_course_number
        AND p_ssn =" .$_POST["Pssnnum"];

      $result = $link->query($query);
      $nor = $result->num_rows;
      $i = 0;
      if ($i < $nor) {
        echo "Professor SSN: " .$_POST["Pssnnum"], "<br>", "<br>";

        for ($i = 0; $i < $nor; $i++) {
          $row = $result->fetch_assoc();
          echo "Course Title: ", $row["course_name"], "<br>";
          echo "Classrooms: ", $row["section_classroom"], "<br>";
          echo "Meeting days: ", $row["section_meeting_days"], "<br>";
          echo "Start time: ", $row["section_begin_time"], "<br>";
          echo "End time: ", $row["section_end_time"],"<br>","<br>";
        }
      }
      else {
        echo "SSN Not Found", "<br>";
      }
      $result->free_result();
      $link->close();
    ?>
  </fieldset>
</body>
</html>
