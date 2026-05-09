inline.NumInlined: 1
begin_hunk_0_@_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj:bb.a
  %i.q = add nsw i32 %i.p, 1                      ; 26 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %.not282 = icmp eq i32 %5, %i.s                 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.h ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !28
end_hunk_0
begin_hunk_1_@_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj:bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.cb = select i1 %.not282, i32 0, i32 32
  %i.cc = shl i32 %5, 1                           ; 4 uses
  %i.cd = mul i32 %i.cc, %i.o
  %i.ce = add i32 %i.cd, 64
end_hunk_1
begin_hunk_2_@_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj:bb.a
  %i.ci = load i16, ptr %i.c, align 8, !tbaa !10
  %i.cj = sext i16 %i.ci to i32
  %i.ck = mul i32 %i.cc, %i.cj
  %9 = select i1 %.not282, i32 16, i32 48
  %i.cl = add i32 %9, %i.ck                       ; 3 uses
  %.not = icmp ult i32 %.0254, %i.cl
  br i1 %.not, label %bb.s, label %bb.ab
end_hunk_2
begin_hunk_3_@_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj:bb.a
  %i.o = add nsw i32 %i.n, 1                      ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %.not138 = icmp eq i32 %5, %i.q                 ; 4 uses
  %i.r = add nsw i32 %i.l, -16                    ; 2 uses
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 30)
  switch i32 %i.s, label %bb.g [
end_hunk_3
begin_hunk_4_@_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj:bb.a
bb.l:                                             ; preds = %bb.k
  %i.dn = load i32, ptr %i.a, align 4, !tbaa !4
  %i.do = load i32, ptr %i.b, align 4, !tbaa !4
  %i.dp = select i1 %.not138, i32 0, i32 32
  %i.dq = shl i32 %5, 1                           ; 2 uses
  %i.dr = mul i32 %i.dq, %i.m
  %i.ds = add i32 %i.dr, 320
end_hunk_4
begin_hunk_5_@_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj:bb.a
  %i.dw = load i16, ptr %i.c, align 8, !tbaa !10
  %i.dx = sext i16 %i.dw to i32
  %i.dy = mul i32 %i.dq, %i.dx
  %8 = select i1 %.not138, i32 16, i32 48
  %i.dz = add i32 %8, %i.dy                       ; 3 uses
  %.not = icmp ult i32 %.0124, %i.dz
  br i1 %.not, label %bb.m, label %.critedge142
end_hunk_5
begin_hunk_6_@_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj:bb.a
  %i.o = sub nsw i32 %i.n, %i.l                   ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %.not199 = icmp eq i32 %5, %i.q                 ; 6 uses
  %i.r = add nsw i32 %i.n, -16                    ; 2 uses
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 30)
  switch i32 %i.s, label %.loopexit220 [
end_hunk_6
begin_hunk_7_@_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj:bb.a
  %i.gi = load i32, ptr %i.b, align 4, !tbaa !4
  %i.gj = shl i32 %i.gi, 3
  %i.gk = add i32 %i.gj, 128                      ; 2 uses
  %i.gl = icmp ult i32 %i.gk, %spec.select202     ; 2 uses
  %spec.select.1 = select i1 %i.gl, i32 8, i32 4  ; 3 uses
  %spec.select202.1 = call i32 @llvm.umin.i32(i32 %i.gk, i32 %spec.select202)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.gm = select i1 %.not199, i32 32, i32 64
  %i.gn = mul i32 %i.l, %5
  %i.go = select i1 %i.k, i32 %i.gn, i32 0
  %i.gp = add i32 %i.gm, %i.go
  %.3 = add i32 %i.gp, %spec.select202.1
  %i.gq = load i16, ptr %i.c, align 8, !tbaa !10
  %i.gr = sext i16 %i.gq to i32
  %i.gs = mul i32 %5, %i.gr
  %9 = select i1 %.not199, i32 16, i32 48
  %i.gt = add i32 %9, %i.gs                       ; 3 uses
  %.not = icmp ult i32 %.3, %i.gt
  br i1 %.not, label %bb.h, label %bb.m

end_hunk_7
begin_hunk_8_@_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj:bb.a
.lr.ph238:                                        ; preds = %bb.h, %bb.i
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 16)
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 9, i32 noundef 8)
  %10 = select i1 %i.gl, i32 136, i32 132
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %10, i32 noundef 8)
  %i.gx = zext nneg i32 %spec.select.1 to i64     ; 2 uses
  %i.gy = getelementptr [32 x i8], ptr %i.i, i64 %i.gx
  %i.gz = getelementptr i8, ptr %i.gy, i64 -32
end_hunk_8
