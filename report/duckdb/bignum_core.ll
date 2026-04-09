inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@_Z23mbedtls_mpi_core_bitlenPKmm:bb.a
bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.f, 6
  %reass.sub = add nuw nsw i64 %i.j, 64
  %2 = sub nuw nsw i64 %reass.sub, %i.i
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.0 = phi i64 [ %2, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.0
}

end_hunk_0
begin_hunk_1_@_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_:bb.a
_Z23mbedtls_mpi_core_bitlenPKmm.exit:             ; preds = %bb.c
  %i.k = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = shl i64 %i.h, 6
  %reass.sub.i = add i64 %i.l, 64
  %6 = sub i64 %reass.sub.i, %i.k                 ; 3 uses
  %i.m = add nuw nsw i64 %6, 7                    ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %7 = icmp ugt i64 %6, 32
  %spec.select = select i1 %7, i32 30, i32 250
  %i.o = and i64 %i.m, 274877906936
  %i.p = sub nsw i64 %i.o, %6
  br label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread

_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread:      ; preds = %bb.b, %bb.a, %_Z23mbedtls_mpi_core_bitlenPKmm.exit
end_hunk_1
begin_hunk_2_@_Z38mbedtls_mpi_core_exp_mod_working_limbsmm:bb.a
  %i.a = shl i64 %1, 6
  %i.b = icmp ugt i64 %i.a, 79
  %i.c = select i1 %i.b, i64 3, i64 1
  %2 = shl i64 %0, %i.c
  %i.d = shl i64 %0, 1
  %3 = add i64 %0, 1
  %i.e = add i64 %3, %i.d
  %i.f = add i64 %i.e, %2
  ret i64 %i.f
}

end_hunk_2
begin_hunk_3_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.g, 6
  %reass.sub.i.i = add nuw nsw i64 %i.k, 64
  %9 = sub nuw nsw i64 %reass.sub.i.i, %i.j
  br label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i

_Z23mbedtls_mpi_core_bitlenPKmm.exit.i:           ; preds = %bb.c, %bb.b, %bb.e
  %.0.i.i = phi i64 [ %9, %bb.e ], [ 1, %bb.b ], [ 1, %bb.c ] ; 2 uses
  %i.l = lshr i64 %.0.i.i, 6
  %i.m = and i64 %.0.i.i, 63
  br label %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit
end_hunk_3
begin_hunk_4_@llvm.bswap.i64
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_4
