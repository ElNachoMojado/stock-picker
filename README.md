# stock-picker
<h2>Problem</h2>
Implement a method <strong>#stock_picker</strong> that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
<h2>Solution</h2>
<ul>
  <li>Calculate the profit for each possible transaction in the stocks.</li>
  <li>Save profit only if it's positive and the transaction is chronologically possible.</li>
  <li>Return the highest value out of all the possible profits.</li>
</ul>
I used two different arrays to save the profits that complied with the conditions and the pair of days that generate that amount. The <strong>#each_with_index</strong> method was used to loop through every possible transaction.
