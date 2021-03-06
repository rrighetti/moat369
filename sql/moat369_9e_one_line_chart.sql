-- add seq to one_spool_filename
DEF one_spool_filename = '&&spool_filename.'
@@&&fc_seq_output_file. one_spool_filename
DEF one_spool_fullpath_filename = '&&moat369_sw_output_fdr./&&one_spool_filename._line_chart.html'

-- Check mandatory variables
@@&&fc_def_empty_var. tit_01
@@&&fc_def_empty_var. tit_02
@@&&fc_def_empty_var. tit_03
@@&&fc_def_empty_var. tit_04
@@&&fc_def_empty_var. tit_05
@@&&fc_def_empty_var. tit_06
@@&&fc_def_empty_var. tit_07
@@&&fc_def_empty_var. tit_08
@@&&fc_def_empty_var. tit_09
@@&&fc_def_empty_var. tit_10
@@&&fc_def_empty_var. tit_11
@@&&fc_def_empty_var. tit_12
@@&&fc_def_empty_var. tit_13
@@&&fc_def_empty_var. tit_14
@@&&fc_def_empty_var. tit_15
@@&&fc_def_empty_var. stacked
@@&&fc_def_empty_var. haxis
@@&&fc_def_empty_var. vaxis
@@&&fc_def_empty_var. vbaseline
@@&&fc_def_empty_var. chartype

-- Check mandatory variables
@@&&fc_def_empty_var. one_spool_line_chart_file

@@moat369_0j_html_topic_intro.sql &&one_spool_filename._line_chart.html line

SPO &&one_spool_fullpath_filename. APP;
PRO <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

-- chart header
PRO    <script type="text/javascript" id="gchart_script">
PRO      google.charts.load("current", {packages:["corechart"]});
PRO      google.charts.setOnLoadCallback(drawChart);
PRO      function drawChart() {
PRO        var data = google.visualization.arrayToDataTable([

-- Count lines returned by PL/SQL
VAR row_count NUMBER;
EXEC :row_count := -1;

-- body
SET SERVEROUT ON;
DECLARE
  cur SYS_REFCURSOR;
  l_snap_id NUMBER;
  l_begin_time VARCHAR2(32);
  l_end_time VARCHAR2(32);
  l_col_01 NUMBER;
  l_col_02 NUMBER;
  l_col_03 NUMBER;
  l_col_04 NUMBER;
  l_col_05 NUMBER;
  l_col_06 NUMBER;
  l_col_07 NUMBER;
  l_col_08 NUMBER;
  l_col_09 NUMBER;
  l_col_10 NUMBER;
  l_col_11 NUMBER;
  l_col_12 NUMBER;
  l_col_13 NUMBER;
  l_col_14 NUMBER;
  l_col_15 NUMBER;
  l_line VARCHAR2(1000);
  l_sql_text VARCHAR2(32767);
BEGIN
  IF '&&one_spool_line_chart_file.' IS NULL THEN
    l_line := '[''Date''';
    IF '&&tit_01.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_01.'''; 
    END IF;
    IF '&&tit_02.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_02.'''; 
    END IF;
    IF '&&tit_03.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_03.'''; 
    END IF;
    IF '&&tit_04.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_04.'''; 
    END IF;
    IF '&&tit_05.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_05.'''; 
    END IF;
    IF '&&tit_06.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_06.'''; 
    END IF;
    IF '&&tit_07.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_07.'''; 
    END IF;
    IF '&&tit_08.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_08.'''; 
    END IF;
    IF '&&tit_09.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_09.'''; 
    END IF;
    IF '&&tit_10.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_10.'''; 
    END IF;
    IF '&&tit_11.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_11.'''; 
    END IF;
    IF '&&tit_12.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_12.'''; 
    END IF;
    IF '&&tit_13.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_13.'''; 
    END IF;
    IF '&&tit_14.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_14.'''; 
    END IF;
    IF '&&tit_15.' IS NOT NULL THEN
      l_line := l_line||', ''&&tit_15.'''; 
    END IF;
    l_line := l_line||']';
    DBMS_OUTPUT.PUT_LINE(l_line);
    --OPEN cur FOR :sql_text;
    l_sql_text := DBMS_LOB.SUBSTR(:sql_text); -- needed for 10g
    OPEN cur FOR l_sql_text; -- needed for 10g
    LOOP
      FETCH cur INTO l_snap_id, l_begin_time, l_end_time,
      l_col_01, l_col_02, l_col_03, l_col_04, l_col_05,
      l_col_06, l_col_07, l_col_08, l_col_09, l_col_10,
      l_col_11, l_col_12, l_col_13, l_col_14, l_col_15;
      EXIT WHEN cur%NOTFOUND;
      l_line := ', [new Date('||SUBSTR(l_end_time,1,4)||','||(TO_NUMBER(SUBSTR(l_end_time,6,2)) - 1)||','||SUBSTR(l_end_time,9,2)||','||SUBSTR(l_end_time,12,2)||','||SUBSTR(l_end_time,15,2)||',0)';
      IF '&&tit_01.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_01; 
      END IF;
      IF '&&tit_02.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_02; 
      END IF;
      IF '&&tit_03.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_03; 
      END IF;
      IF '&&tit_04.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_04; 
      END IF;
      IF '&&tit_05.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_05; 
      END IF;
      IF '&&tit_06.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_06; 
      END IF;
      IF '&&tit_07.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_07; 
      END IF;
      IF '&&tit_08.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_08; 
      END IF;
      IF '&&tit_09.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_09; 
      END IF;
      IF '&&tit_10.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_10; 
      END IF;
      IF '&&tit_11.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_11; 
      END IF;
      IF '&&tit_12.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_12; 
      END IF;
      IF '&&tit_13.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_13; 
      END IF;
      IF '&&tit_14.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_14; 
      END IF;
      IF '&&tit_15.' IS NOT NULL THEN
        l_line := l_line||', '||l_col_15; 
      END IF;
      l_line := l_line||']';
      DBMS_OUTPUT.PUT_LINE(l_line);
    END LOOP;
    :row_count := cur%ROWCOUNT;
    CLOSE cur;
  END IF;
END;
/
SET SERVEROUT OFF;
SPO OFF

-- get sql_id
SELECT prev_sql_id moat369_prev_sql_id, TO_CHAR(prev_child_number) moat369_prev_child_number FROM v$session WHERE sid = SYS_CONTEXT('USERENV', 'SID');

-- Set row_num to row_count;
COL row_num NOPRI
select TRIM(:row_count) row_num from dual;
COL row_num PRI

-- If one_spool_line_chart_file is defined and is readable, paste it contents on HTML.
HOS if [ '&&one_spool_line_chart_file.' != '' ]; then if [ -f &&one_spool_line_chart_file. ]; then cat &&one_spool_line_chart_file. >> &&one_spool_fullpath_filename.; fi; fi

SPO &&one_spool_fullpath_filename. APP;
-- chart footer
PRO        ]);;
PRO        
PRO        var options = {&&stacked.
PRO          backgroundColor: {fill: '#fcfcf0', stroke: '#336699', strokeWidth: 1},
PRO          explorer: {actions: ['dragToZoom', 'rightClickToReset'], maxZoomIn: 0.1},
PRO          title: '&&title.&&title_suffix.',
PRO          titleTextStyle: {fontSize: 16, bold: false},
PRO          focusTarget: 'category',
PRO          legend: {position: 'right', textStyle: {fontSize: 12}},
PRO          tooltip: {textStyle: {fontSize: 10}},
PRO          hAxis: {title: '&&haxis.', gridlines: {count: -1}},
PRO          vAxis: {title: '&&vaxis.', &&vbaseline. gridlines: {count: -1}}
PRO        };
PRO
PRO        var chart = new google.visualization.&&chartype.(document.getElementById('chart_div'));
PRO        chart.draw(data, options);
PRO      }
PRO    </script>
PRO
PRO    <div id="chart_div" class="google-chart"></div>
PRO

-- footer
PRO<font class="n">Notes:<br>1) drag to zoom, and right click to reset<br>2) up to &&history_days. days of awr history were considered</font>
PRO<font class="n"><br>3) &&foot.</font>
PRO
SPO OFF

@@&&fc_set_value_var_nvl2. hide_sql_print '&&one_spool_line_chart_file.' 'Y' 'N'

@@moat369_0k_html_topic_end.sql &&one_spool_filename._line_chart.html line &&hide_sql_print. &&hide_sql_print.

undef hide_sql_print

@@&&fc_encrypt_html. &&one_spool_fullpath_filename.

HOS zip -mj &&moat369_zip_filename. &&one_spool_fullpath_filename. >> &&moat369_log3.

undef one_spool_line_chart_file

UNDEF one_spool_fullpath_filename