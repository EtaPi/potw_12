I found a fun, simple mobile game recently called Oh h1. Check out [ios] and [android] to play it. This week's Problem is to read in a file with the starting board, like this:

```
B-B-
----
---B
-RB-
```

and outputting the solution like this:

```
BRBR
BBRR
RBRB
RRBB
```

Here are the rules governing the game:

*    Fill the grid with red (R) or blue (B) tiles.
*    Three red or three blue tiles next to each other in a row or column aren't allowed.
*    A full row or column must have as many red tiles as blue tiles.
*    No two rows or columns can be the same.

Here's a bigger test board:

```
R-B---R--B
R------R--
--B---BB-R
---B-R----
R--------B
--------R-
-R-R--B-RR
--R-BB----
B-----B---
--R-B---R-
```

and a solution to check your code:

```
RRBBRBRRBB
RBRRBBRRBB
BRBBRRBBRR
BRRBBRRBBR
RBBRRBRRBB
RBRBRBBRRB
BRBRBRBBRR
RBRRBBRBBR
BRBBRRBRRB
BBRRBRBBRR
```

[ios]: https://itunes.apple.com/us/app/0h-h1/id936504196?mt=8
[android]: https://play.google.com/store/apps/details?id=com.q42.ohhi
