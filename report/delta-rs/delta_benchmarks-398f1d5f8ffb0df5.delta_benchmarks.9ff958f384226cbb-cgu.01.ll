inline.NumInlined: 8088
inline.NumDeleted: 2392
begin_hunk_0_@_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !17381, !noalias !17382
  %i.ae = icmp ugt i64 %i.f, 8
  br i1 %i.ae, label %22, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i, %bb.a
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.h, %._crit_edge.i.i.i ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i.i.i     ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i.i.i, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.promoted.i.i.i = load i64, ptr %0, align 8, !alias.scope !17381, !noalias !17382
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !17381, !noalias !17382
  %.promoted21.i.i.i = load i64, ptr %2, align 8, !alias.scope !17386, !noalias !17382 ; 3 uses
  %i.al = load i64, ptr %3, align 8, !alias.scope !17386, !noalias !17382
  %i.am = add nuw nsw i64 %.sroa.0.0.i.i.i, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i.i.i
  %i.ao = load i64, ptr %i.an, align 1, !alias.scope !17382, !noalias !17381 ; 2 uses
  %4 = xor i64 %i.ao, %i.ak                       ; 3 uses
  %i.ap = add i64 %4, %i.al                       ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 16)
  %i.ar = xor i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %5 = add i64 %.promoted21.i.i.i, %.promoted.i.i.i ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 32)
  %i.au = add i64 %i.ar, %i.at                    ; 2 uses
  %6 = xor i64 %i.as, %i.au
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted21.i.i.i, i64 %.promoted21.i.i.i, i64 13)
  %i.aw = xor i64 %i.av, %5                       ; 3 uses
  %7 = add i64 %i.ap, %i.aw                       ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.ay = xor i64 %7, %i.ax
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 32)
  %9 = xor i64 %i.au, %i.ao
  store i64 %6, ptr %i.aj, align 8, !alias.scope !17381, !noalias !17382
  store i64 %i.ay, ptr %2, align 8, !alias.scope !17386, !noalias !17382
  store i64 %8, ptr %3, align 8, !alias.scope !17386, !noalias !17382
  store i64 %9, ptr %0, align 8, !alias.scope !17381, !noalias !17382
  br label %bb.h

._crit_edge.i.i.i:                                ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %10 = load i64, ptr %i.az, align 8, !alias.scope !17381, !noalias !17382, !noundef !3
  %11 = xor i64 %10, %i.ad                        ; 3 uses
  %12 = load i64, ptr %0, align 8, !alias.scope !17389, !noalias !17382, !noundef !3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted20.i.i.i = load i64, ptr %13, align 8, !alias.scope !17389, !noalias !17382, !noundef !3 ; 3 uses
  %14 = add i64 %.promoted20.i.i.i, %12           ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %16 = load i64, ptr %15, align 8, !alias.scope !17389, !noalias !17382, !noundef !3
  %i.ba = add i64 %16, %11                        ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted20.i.i.i, i64 %.promoted20.i.i.i, i64 13)
  %i.bc = xor i64 %i.bb, %14                      ; 3 uses
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 16)
  %18 = xor i64 %i.ba, %17                        ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 32)
  %i.be = add i64 %i.ba, %i.bc                    ; 3 uses
  %19 = add i64 %18, %i.bd                        ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bg = xor i64 %i.be, %i.bf
  store i64 %i.bg, ptr %13, align 8, !alias.scope !17389, !noalias !17382
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 21)
  %i.bi = xor i64 %i.bh, %19
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !17389, !noalias !17382
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 32)
  store i64 %20, ptr %15, align 8, !alias.scope !17389, !noalias !17382
  %21 = xor i64 %19, %i.ad
  store i64 %21, ptr %0, align 8, !alias.scope !17381, !noalias !17382
  br label %bb.f

22:                                               ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i.i.i
  %23 = add i64 %i.f, 8
  br label %_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.1.lcssa.i.i.i = phi i64 [ %i.am, %bb.g ], [ %.sroa.0.0.i.i.i, %bb.f ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bj, label %bb.i, label %bb.j

end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  store i64 %.sroa.0.2.i15.i.i.i, ptr %i.ce, align 8, !alias.scope !17381, !noalias !17382
  br label %_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %22, %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18.i.i.i
  %storemerge.i.i.i = phi i64 [ %23, %22 ], [ %i.ag, %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.e, align 8, !alias.scope !17381, !noalias !17382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17368
  ret void
end_hunk_1
