inline.NumInlined: 162
inline.NumDeleted: 17
begin_hunk_0_@_ZL35mbedtls_mpi_exp_mod_optionally_safeP11mbedtls_mpiPKS_S2_iS2_S0_:bb.a
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = trunc i64 %i.cn to i16
  %i.cp = and i16 %i.co, 2
  %7 = xor i16 %i.cp, 2
  %8 = add nsw i16 %7, -1
  store i16 %8, ptr %i.ba, align 8, !tbaa !12
  %i.cq = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %0, i32 noundef 1)
  br label %bb.ab

end_hunk_0
