[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Hayden Godwin

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data? 

  42

* How many salts did you create? 

  42
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`) 
  
  42 combinations
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try? 
  
  1764 combinations
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why? 
  
  I would generate a unique salt for every student and then hash the salt with the names. I would then add the unique salt to the hash

```bash
printf 12345name | sha256sum
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?

**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
50963battery - 0000a4f5fe4581d79bd781abefdba288c956a3fa7d7f160a5c23ece7871fbf17 
```

* How many words were in your dictionary? 

  14 words
* How many nonces did your code iterate over? 
 
  100000
* What was the maximum number of hashes your code *could* compute given the above? 
  
  1,400,000 hashes.
* What did you think about Task 2? 

  I thought it was interesting and I learned how blockchain uses hashes for verification.
* Is there a better way than brute force to attempt to get higher valued coins? 

  No
* Why or why not? 

  I can think that brute force is the only way to get higher value coins because you can't predict the hashes 
and the only way to do it is by testing each possibility.


```bash
for i in $(seq 100000); do saltedword="$1"battery; hashval=$( echo -n $saltedword | sha256sum); echo "hashval saltedword"; done | grep ^0000
```

