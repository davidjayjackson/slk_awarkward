```
#!/usr/bin/gawk -f

BEGIN {
  FS = ","   # Set the field separator to a comma (assuming CSV input)
}

{
  artist = $1  # Assuming the artist name is in the first field
  
  if (artist in count) {
    count[artist] += 1  # Increment the count for the artist
  } else {
    count[artist] = 1  # Initialize the count for a new artist
  }
}

END {
  # Print the results
  for (artist in count) {
    print artist, count[artist]
  }
}

```
