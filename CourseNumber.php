<html>
<body>
  <div>
    <h1> Course Look Up </h1>
  </div>

  <fieldset>
    <?php
      $link = mysqli_connect('mariadb', 'cs332t8', 'DwZ2T99o', 'cs332t8');
      if(!$link) {
        die('Could not connect: ' . mysqli_error());
      }
      echo 'Connected Successfully<p>';
      $query = "SELECT course_num, course_name, section_number, section_classroom, section_meeting_days, section_begin_time, section_end_time, (COUNT(e_student_cwid)) as 'Enrolled'

        FROM course, enrollment, section
        WHERE e_section_number = section_number
        AND course_num = section_course_number
        AND e_course_number ='" .$_POST["Coursenum"]."'
        GROUP BY section_number;";

      $result = $link->query($query);
      $nor = $result->num_rows;
      $i = 0;
      if ($i < $nor) {
        echo "Course Number: " .$_POST["Coursenum"], "<br>", "<br>";

        for ($i = 0; $i < $nor; $i++) {
          $row = $result->fetch_assoc();
          echo "Section Number: ", $row["section_number"], "<br>";
          echo "Classroom: ", $row["section_classroom"], "<br>";
          echo "Meeting days: ", $row["section_meeting_days"], "<br>";
          echo "Start time: ", $row["section_begin_time"], "<br>";
          echo "End time: ", $row["section_end_time"], "<br>";
          echo "Number of Students Enrolled: ", $row['Enrolled'], "<br>", "<br>";
        }
      }
      else {
        echo "Course Number Not Found", "<br>";
      }
      $result->free_result();
      $link->close();
    ?>
  </fieldset>
</body>
</html>
