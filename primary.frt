: primary
1 swap ( 1 num )
dup 2 = if drop else
dup 1 = if drop drop 0 else
    2 ( 1 num i )
    repeat
        over over ( 1 num i num i )
        % ( 1 num i res )
        if else
            drop ( 1 num )
            dup ( 1 num num )
            1 - ( 1 num num-1 )
            rot ( num num-1 1 )
            1 - ( num num-1 0 )
            rot rot ( 0 num num-1 )
        endif ( 1 num i )
        1 + ( 1 num i+1 )
        over over ( 1 num i+1 num i+1 )
        = ( 1 num i+1 res )
    until ( 1 num i+1 )
    drop drop ( 1 )
endif endif ;
