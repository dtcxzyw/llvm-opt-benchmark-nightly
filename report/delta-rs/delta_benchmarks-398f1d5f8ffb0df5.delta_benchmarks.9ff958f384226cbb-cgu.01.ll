inline.NumInlined: 8088
inline.NumDeleted: 2392
begin_hunk_0_@_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !17381, !noalias !17382
  %i.ae = icmp ugt i64 %i.f, 8
  br i1 %i.ae, label %9, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.a
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.h, %bb.g ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i.i.i     ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i.i.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i.i.i, label %bb.h

bb.g:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = load i64, ptr %i.aj, align 8, !alias.scope !17381, !noalias !17382, !noundef !3
  %3 = xor i64 %2, %i.ad                          ; 3 uses
  %i.ak = load i64, ptr %0, align 8, !alias.scope !17386, !noalias !17382, !noundef !3
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load i64, ptr %4, align 8, !alias.scope !17386, !noalias !17382, !noundef !3 ; 3 uses
  %i.am = add i64 %i.al, %i.ak                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !17386, !noalias !17382, !noundef !3
  %i.ap = add i64 %i.ao, %3                       ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 13)
  %i.ar = xor i64 %i.aq, %i.am                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 16)
  %5 = xor i64 %i.ap, %i.as                       ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.au = add i64 %i.ap, %i.ar                    ; 3 uses
  %6 = add i64 %5, %i.at                          ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 17)
  %i.aw = xor i64 %i.au, %i.av
  store i64 %i.aw, ptr %4, align 8, !alias.scope !17386, !noalias !17382
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 21)
  %i.ay = xor i64 %i.ax, %6
  store i64 %i.ay, ptr %i.aj, align 8, !alias.scope !17386, !noalias !17382
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  store i64 %7, ptr %i.an, align 8, !alias.scope !17386, !noalias !17382
  %8 = xor i64 %6, %i.ad
  store i64 %8, ptr %0, align 8, !alias.scope !17381, !noalias !17382
  br label %bb.f

9:                                                ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i.i.i
  %10 = add i64 %i.f, 8
  br label %_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCsdJxlLsGgtXr_16delta_benchmarks.exit

._crit_edge.i.i.i:                                ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %13 = add nuw nsw i64 %.sroa.0.0.i.i.i, 8
  %.promoted23.i.i.i = load i64, ptr %12, align 8, !alias.scope !17389, !noalias !17382
  %.promoted20.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !17381, !noalias !17382
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i.i.i
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %14, align 1, !alias.scope !17382, !noalias !17381 ; 2 uses
  %15 = xor i64 %.sroa.07.0.copyload.i.i.i, %.promoted20.i.i.i ; 3 uses
  %i.ba = add i64 %15, %.promoted23.i.i.i         ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 16)
  %i.bc = xor i64 %i.ba, %i.bb                    ; 3 uses
  %.promoted21.i.i.i = load i64, ptr %11, align 8, !alias.scope !17389, !noalias !17382 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %0, align 8, !alias.scope !17381, !noalias !17382
  %16 = add i64 %.promoted.i.i.i, %.promoted21.i.i.i ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 32)
  %i.be = add i64 %i.bd, %i.bc                    ; 2 uses
  %17 = xor i64 %i.be, %.sroa.07.0.copyload.i.i.i
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted21.i.i.i, i64 %.promoted21.i.i.i, i64 13)
  %i.bg = xor i64 %16, %i.bf                      ; 3 uses
  %18 = add i64 %i.bg, %i.ba                      ; 3 uses
  %19 = tail call noundef i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 32)
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 21)
  %i.bi = xor i64 %i.be, %i.bh
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 17)
  %21 = xor i64 %18, %20
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !17381, !noalias !17382
  store i64 %21, ptr %11, align 8, !alias.scope !17389, !noalias !17382
  store i64 %19, ptr %12, align 8, !alias.scope !17389, !noalias !17382
  store i64 %17, ptr %0, align 8, !alias.scope !17381, !noalias !17382
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.f
  %.sroa.0.1.lcssa.i.i.i = phi i64 [ %13, %._crit_edge.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.f ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bj, label %bb.i, label %bb.j

end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  store i64 %.sroa.0.2.i15.i.i.i, ptr %i.ce, align 8, !alias.scope !17381, !noalias !17382
  br label %_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %9, %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18.i.i.i
  %storemerge.i.i.i = phi i64 [ %10, %9 ], [ %i.ag, %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.e, align 8, !alias.scope !17381, !noalias !17382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17368
  ret void
end_hunk_1
