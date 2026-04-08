inline.NumInlined: 26868
inline.NumDeleted: 24
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AaddString0x28llvh0x3A0x3AStringRef0x2C0x20bool0x29:bb.a
  %i.cp = shl nsw i32 -1, %.0.copyload.i1277
  %i.cq = sub nuw nsw i32 32, %.0.copyload.i1277  ; 2 uses
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.cq) ; 3 uses
  %i.cs = sub nuw nsw i32 %i.cq, %i.cr
  %i.ct = lshr i32 -1, %i.cs
  %i.cu = and i32 %i.ct, %i.cp                    ; 2 uses
  %i.cv = xor i32 %i.cu, -1
  %i.cw = and i32 %.0.copyload.i1283, %i.cv
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AaddString0x28llvh0x3A0x3AStringRef0x2C0x20bool0x29:bb.a
  %i.de = lshr i32 %i.dd, 3
  %i.df = and i32 %i.de, 536870908
  %i.dg = add i32 %i.cj, %i.df
  %i.dh = sub nuw nsw i32 %i.bq, %i.cr
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AaddString0x28llvh0x3A0x3AStringRef0x2C0x20bool0x29:bb.a
  %.01126 = phi i32 [ %i.dc, %bb.m ], [ %.0.copyload.i1279, %bb.l ] ; 2 uses
  %.01125 = phi i32 [ %i.dh, %bb.m ], [ %i.bq, %bb.l ] ; 4 uses
  %i.di = lshr i32 %.01125, 5                     ; 2 uses
  %i.dj = icmp samesign ugt i32 %.01125, 31
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AaddString0x28llvh0x3A0x3AStringRef0x2C0x20bool0x29:bb.a
  %i.ff = sub i32 32, %.0.copyload.i1288          ; 2 uses
  %i.fg = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %i.ff) ; 4 uses
  %i.fh = tail call i32 @llvm.umin.i32(i32 %i.fg, i32 %i.fe) ; 4 uses
  %i.fi = sub nuw i32 %i.fe, %i.fh
  %i.fj = and i32 %i.fi, 31
  %i.fk = lshr i32 -1, %i.fj
  %i.fl = and i32 %.0.copyload.i1295, 31
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AaddString0x28llvh0x3A0x3AStringRef0x2C0x20bool0x29:bb.a
  %.val1247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1247, i64 %i.en
  store i32 %i.go, ptr %i.gp, align 1
  %i.gq = sub nuw i32 %i.fg, %i.fh                ; 4 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %bb.w, label %bb.x

end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AquoteStr0x28llvh0x3A0x3AStringRef0x29:bb.a
  %.0501 = phi i32 [ %i.ax, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.0498 = phi i32 [ %.1, %bb.e ], [ 0, %bb.c ]   ; 2 uses
  %i.ar = tail call i32 @llvm.umin.i32(i32 %.0501, i32 %.0.copyload.i580) ; 2 uses
  %i.as = sub nuw i32 %.0.copyload.i580, %i.ar
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.as, i32 %.0.copyload.i581)
  %.not = icmp eq i32 %i.at, %i.w
  br i1 %.not, label %bb.d, label %bb.e
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
bb.ao:                                            ; preds = %bb.ai
  %i.im = shl nuw nsw i32 %i.fp, 3
  %i.in = add i32 %i.im, %.11446
  %i.io = sub nuw i32 %i.o, %i.fp
  %i.ip = shl i32 %i.io, 3
  %i.iq = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.in, i32 noundef %.11446, i32 noundef %i.ip) #7 ; 0 uses
  br label %.loopexit1698
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ALowerSwitchIntoJumpTables0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  br i1 %i.gn, label %.loopexit1050, label %bb.aa

bb.aa:                                            ; preds = %.loopexit1064
  %i.go = sub nuw i32 %i.gl, %i.gk                ; 3 uses
  %i.gp = icmp eq i32 %i.go, -1
  %i.gq = icmp ult i32 %i.bs, 20
  %or.cond824 = or i1 %i.gq, %i.gp
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3AprintDiagnostic0x28llvh0x3A0x3ASMDiagnostic0x20const0x260x2C0x20void0x2A0x29:bb.a
  %i.amn = icmp slt i32 %sext3659, 0              ; 2 uses
  %i.amo = select i1 %i.amn, i32 %.0.copyload.i4193, i32 %i.amm ; 3 uses
  %i.amp = tail call i32 @llvm.umin.i32(i32 %i.amo, i32 %i.ala) ; 2 uses
  %i.amq = sub nuw i32 %i.amo, %i.amp             ; 4 uses
  %.val3739 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.amr = getelementptr inbounds nuw i8, ptr %.val3739, i64 %i.pn
  %.0.copyload.i4195 = load i32, ptr %i.amr, align 1 ; 2 uses
end_hunk_8
