beep()
{
    echo -n '\a'
}

# Rehash PATH for new commands
_force_rehash()
{
    if [[ $CURRENT -eq 1 ]]
    then
        rehash
    elif [[ $CURRENT -eq 2 && "$words[1]" = sudo ]]
    then
        rehash
    fi
    return 1
}

# Couchbase Server functions

cbload_cluster()
{
  cbworkloadgen -n $1:8091 -i $2 -s 256 -j -b makura \
  -u Administrator -p couchbase
}

