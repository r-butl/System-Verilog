for j in range(4):
    val0 = format(j, '03b')
    val0 = val0[-2:]
    for i in range(4):
        val1 = format(i, '03b')
        val1 = val1[-2:]
        print(f"    A1 = {val1[1]}; A0 = {val1[0]}; B1 = {val0[1]}; B0 = {val0[0]}; #100;")
