begin_hunk_0
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 142857)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %.sroa.0.0.i8, 73  ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 142857)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %.sroa.0.0.i8, 73  ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2
  %i.qo = shl i64 %storemerge.i292, 3
  %i.qp = and i64 %i.qo, 56
  %i.qq = shl nuw i64 %.sroa.0.2.i.i254, %i.qp
  %i.qr = or i64 %i.ql, %i.qq                     ; 3 uses
  %notsub565 = add i64 %storemerge.i292, -9
  %i.qs = icmp ult i64 %notsub565, -2
  br i1 %i.qs, label %bb.bf, label %bb.be
end_hunk_2
begin_hunk_3
  %i.afi = shl i64 %storemerge.i147, 3
  %i.afj = and i64 %i.afi, 56
  %i.afk = shl nuw i64 %.sroa.0.2.i.i109, %i.afj
  %i.afl = or i64 %i.afg, %i.afk                  ; 3 uses
  %notsub = add i64 %storemerge.i147, -9
  %i.afm = icmp ult i64 %notsub, -2
  br i1 %i.afm, label %bb.dk, label %bb.dj
end_hunk_3
begin_hunk_4
  %i.jr = shl i64 %storemerge.i226, 3
  %i.js = and i64 %i.jr, 56
  %i.jt = shl nuw i64 %.sroa.0.2.i.i188, %i.js
  %i.ju = or i64 %i.jo, %i.jt                     ; 3 uses
  %notsub369 = add i64 %storemerge.i226, -9
  %i.jv = icmp ult i64 %notsub369, -2
  br i1 %i.jv, label %bb.ao, label %bb.an
end_hunk_4
begin_hunk_5
  %i.yl = shl i64 %storemerge.i81, 3
  %i.ym = and i64 %i.yl, 56
  %i.yn = shl nuw i64 %.sroa.0.2.i.i43, %i.ym
  %i.yo = or i64 %i.yj, %i.yn                     ; 3 uses
  %notsub = add i64 %storemerge.i81, -9
  %i.yp = icmp ult i64 %notsub, -2
  br i1 %i.yp, label %bb.ct, label %bb.cs
end_hunk_5
