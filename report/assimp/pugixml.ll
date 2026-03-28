begin_hunk_0
  %.039.i.i.i = phi ptr [ %.2.i.i.i, %bb.r ], [ %3, %bb.k ] ; 5 uses
  %.02638.i.i.i = phi i64 [ %i.ad, %bb.r ], [ %i.n, %bb.k ] ; 2 uses
  %.02937.i.i.i = phi i64 [ %.231.i.i.i, %bb.r ], [ 0, %bb.k ] ; 5 uses
  %i.o = load i16, ptr %.039.i.i.i, align 2       ; 5 uses
  %i.p = icmp ult i16 %i.o, -10240
  br i1 %i.p, label %bb.l, label %bb.m

end_hunk_0
begin_hunk_1
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %11 = icmp samesign ugt i16 %i.o, -8193
  br i1 %11, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = add i64 %.02937.i.i.i, 3
end_hunk_1
begin_hunk_2
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %12 = icmp samesign ult i16 %i.o, -9216
  %i.w = icmp ne i64 %.02638.i.i.i, 1
  %or.cond.i.i.i = and i1 %i.w, %12
  %i.x = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 2 ; 3 uses
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.r

end_hunk_2
begin_hunk_3
  %.039.i18.i.i = phi ptr [ %.2.i24.i.i, %bb.ab ], [ %3, %.noexc32 ] ; 5 uses
  %.02638.i19.i.i = phi i64 [ %i.cx, %bb.ab ], [ %i.n, %.noexc32 ] ; 2 uses
  %.02937.i20.i.i = phi ptr [ %.231.i23.i.i, %bb.ab ], [ %i.ag, %.noexc32 ] ; 15 uses
  %i.aj = load i16, ptr %.039.i18.i.i, align 2    ; 15 uses
  %i.ak = zext i16 %i.aj to i32
  %i.al = icmp ult i16 %i.aj, -10240
  br i1 %i.al, label %bb.s, label %bb.x

end_hunk_3
begin_hunk_4
  br label %bb.ab

bb.x:                                             ; preds = %.lr.ph.i17.i.i
  %13 = icmp samesign ugt i16 %i.aj, -8193
  br i1 %13, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit35.i.i.i, label %bb.y

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit35.i.i.i: ; preds = %bb.x
  %i.bk = lshr i16 %i.aj, 12
end_hunk_4
begin_hunk_5
  store i8 %i.bm, ptr %.02937.i20.i.i, align 1
  %i.bn = lshr i16 %i.aj, 6
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = and i8 %i.bo, -65
  %i.bq = getelementptr inbounds nuw i8, ptr %.02937.i20.i.i, i64 1
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = trunc i16 %i.aj to i8
  %i.bs = and i8 %i.br, 63
  %i.bt = or disjoint i8 %i.bs, -128
end_hunk_5
begin_hunk_6
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %14 = icmp samesign ult i16 %i.aj, -9216
  %i.bx = icmp ne i64 %.02638.i19.i.i, 1
  %or.cond.i21.i.i = and i1 %i.bx, %14
  %i.by = getelementptr inbounds nuw i8, ptr %.039.i18.i.i, i64 2 ; 3 uses
  br i1 %or.cond.i21.i.i, label %bb.z, label %bb.ab

end_hunk_6
begin_hunk_7
  %.02639.i.i.i = phi i64 [ %i.do, %bb.aj ], [ %i.n, %bb.ac ] ; 2 uses
  %.02938.i.i.i = phi i64 [ %.231.i.i44.i, %bb.aj ], [ 0, %bb.ac ] ; 5 uses
  %i.cz = load i16, ptr %.040.i.i.i, align 2
  %rev.i.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.cz) ; 5 uses
  %i.da = icmp ult i16 %rev.i.i.i.i, -10240
  br i1 %i.da, label %bb.ad, label %bb.ae

end_hunk_7
begin_hunk_8
  br label %bb.aj

bb.ae:                                            ; preds = %.lr.ph.i.i41.i
  %15 = icmp samesign ugt i16 %rev.i.i.i.i, -8193
  br i1 %15, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.df = add i64 %.02938.i.i.i, 3
end_hunk_8
begin_hunk_9
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %16 = icmp samesign ult i16 %rev.i.i.i.i, -9216
  %i.dh = icmp ne i64 %.02639.i.i.i, 1
  %or.cond.i.i42.i = and i1 %i.dh, %16
  %i.di = getelementptr inbounds nuw i8, ptr %.040.i.i.i, i64 2 ; 3 uses
  br i1 %or.cond.i.i42.i, label %bb.ah, label %bb.aj

end_hunk_9
begin_hunk_10
  %.02639.i19.i.i = phi i64 [ %i.gl, %bb.at ], [ %i.n, %.noexc34 ] ; 2 uses
  %.02938.i20.i.i = phi ptr [ %.231.i24.i.i, %bb.at ], [ %i.dr, %.noexc34 ] ; 15 uses
  %i.du = load i16, ptr %.040.i18.i.i, align 2
  %rev.i.i21.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.du) ; 14 uses
  %i.dv = zext i16 %rev.i.i21.i.i to i32          ; 2 uses
  %i.dw = icmp ult i16 %rev.i.i21.i.i, -10240
  br i1 %i.dw, label %bb.ak, label %bb.ap

end_hunk_10
begin_hunk_11
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %17 = icmp samesign ult i16 %rev.i.i21.i.i, -9216
  %i.fl = icmp ne i64 %.02639.i19.i.i, 1
  %or.cond.i22.i.i = and i1 %i.fl, %17
  %i.fm = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 2 ; 3 uses
  br i1 %or.cond.i22.i.i, label %bb.ar, label %bb.at

end_hunk_11
