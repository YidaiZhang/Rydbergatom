using Yao
reg = ArrayReg([0, 1, -1+0.0im, 0])
statevec(reg)
print_table(reg)

reg_zero = zero_state(3)
print_table(reg_zero)


reg_rand = rand_state(3)
reg_uniform = uniform_state(3)
print_table(reg_uniform)

reg_prod = product_state(bit"110")
print_table(reg_prod)

reg_ghz = ghz_state(3)
print_table(reg_ghz)

von_neumann_entropy(reg_ghz, (1,3)) / log(2)

reg_rand3 = rand_state(3, nlevel=3)

reg_prod3 = product_state(dit"120;3")
print_table(reg_prod3)

reg_batch = rand_state(3; nbatch=2)
print_table(reg_batch)

reg_view = viewbatch(reg_batch, 1)
print_table(reg_view)