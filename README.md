<h1>class Integer</h1>

Creates additional methods for the Integer class in Ruby.

<h3>Currently includes:</h3>
<ul><li><b>Integer.to_roman</b></li>
    <ul><li>Returns any integer (up to 3999) in Roman numerals.</li>
        <li>1999.to_roman == 'MCMXCIX'</li></ul>

   <li><b>Integer.to_old_roman</b></li>
   <ul><li>Returns any integer (up to 3999) in old style Roman numerals (VIIII as opposed to IV in new Roman).</li>
        <li>1999.to_old_roman == 'MDCCCCLXXXXVIIII'</li></ul>

   <li><b>Integer.!</b></li>
   <ul><li>Returns any integer factorial.</li>
       <li>4.! == 24</li></ul>
       
<li><b>Integer.to_english</b></li>
<ul><li>Returns an integer as an english number.</li>
  <li>See working sample here: http://evening-scrubland-1979.herokuapp.com/english_number</li>
	<li>Works up to trillions.</li>
  <li>1999.to_english == 'one thousand nine hundred and ninety nine'</li></ul>

<li><b>Integer.add_commas</b></li>
<ul><li>Returns an integer as a string with commas.</li>
  <li>1999.add_commas == '1,999'</li></ul>  

<li><b>test.rb</b></li>
<ul><li>Quick test that returns an array of true/false responses based on methods.</li></ul>

<li>Error checking for incorrect inputs.</li></ul>

<h3>To later include:</h3>

<ul><li>Additional ArgumentErrors for bad inputs.</li>
