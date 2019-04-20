1. **Given the alphabetically sorted collection in this checkpoint, how many iterations would it take to find the value G using linear search?**
    - _Linear Searching_ would take seven iterations to locate the desired value of `G`.
    
      |iteration|index|value|
      |:---:|:---:|:---:|
      |1|0|A|
      |2|1|B|
      |3|2|C|
      |4|3|D|
      |5|4|E|
      |6|5|F|
      |7|6|G|
    
2. **Given the alphabetically sorted collection in this checkpoint, how many iterations would it take to find the value G using binary search?**
    - _Binary Searching_ would take three iterations to locate the desired value of `G`
    
      |iteration|low|mid|high|
      |:---:|:---:|:---:|:---:|
      |1|A|D|G|
      |2|E|F|G|
      |3|G|G|G|
     
3. **Calculate fib(10), fib(11), fib(12) by hand.**
 
    - |seq|value|
      |---|---|
      |0  |0  |
      |1  |1  |
      |2  |1  |
      |3  |2  |
      |4  |3  |
      |5  |5  |
      |6  |8  |
      |7  |13 |
      |8  |21 |
      |9  |34 |
      |**10** |**55** |
      |**11** |**89** |
      |**12** |**144**|

4. **Given an unsorted collection of a million items, which algorithm would you choose between linear search and binary search? Would you use an iterative or recursive solution? Explain your reasoning.**
    - Since the collection is unsorted, a binary search would not be appropriate unless the collection was sorted first, which would cost time.  In this case, I would lean in favor of a linear search.
    - It is my understanding that a `while` iteration would be more efficient with a collection this size due to the potential stack size.
    
5. **Given a sorted collection of a million items, which algorithm would you choose between linear search and binary search? Would you use an iterative or recursive solution? Explain your reasoning.**
    - Since the collection is sorted, I would definitely favor a binary search.
    - Given that we will be using a binary search, it will require up to seven iterations to locate our value.  With this, I would lean in favor of a recursive search.
