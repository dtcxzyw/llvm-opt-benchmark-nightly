begin_hunk_0
define dso_local void @DES_cfb_encrypt(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 16 uses
  %i.c = sdiv i32 %2, 8                           ; 2 uses
  %i.d = add nsw i32 %2, 7
  %i.e = sdiv i32 %i.d, 8                         ; 5 uses
  %i.f = srem i32 %2, 8                           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.g = add i32 %2, -65
end_hunk_0
begin_hunk_1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = sub nuw nsw i32 8, %i.f
  %i.q = zext nneg i32 %i.c to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %i.u = shufflevector <8 x i32> %i.t, <8 x i32> poison, <8 x i32> zeroinitializer
end_hunk_1
begin_hunk_2
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ab = sub nuw nsw i32 8, %i.f
  %i.ac = zext nneg i32 %i.c to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = insertelement <8 x i32> poison, i32 %i.ab, i64 0
  %i.ag = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> zeroinitializer
end_hunk_2
begin_hunk_3
bb.u:                                             ; preds = %bb.t, %bb.l
  %.8197 = phi ptr [ %i.ca, %bb.l ], [ %i.cw, %bb.t ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.8197, i64 %i.k
  switch i32 %2, label %.preheader254.preheader [
    i32 32, label %.loopexit255
    i32 64, label %bb.v
  ]
end_hunk_3
begin_hunk_4
bb.v:                                             ; preds = %bb.u
  br label %.loopexit255

.preheader254.preheader:                          ; preds = %bb.u
  store i32 %.0240260, ptr %i.b, align 16, !tbaa !5
  store i32 %.0235261, ptr %i.m, align 4, !tbaa !5
  store i32 %i.bx, ptr %i.n, align 8, !tbaa !5
  store i32 %i.bz, ptr %i.o, align 4, !tbaa !5
  %i.cy = load <8 x i8>, ptr %i.r, align 1, !tbaa !9
  %i.cz = zext <8 x i8> %i.cy to <8 x i32>
  %i.da = shl nuw nsw <8 x i32> %i.cz, %i.w
end_hunk_4
begin_hunk_5
  %.pre279 = load i32, ptr %i.m, align 4, !tbaa !5
  br label %.loopexit255

.loopexit255:                                     ; preds = %bb.u, %bb.v, %.preheader254.preheader
  %.1241 = phi i32 [ %.pre, %.preheader254.preheader ], [ %i.bx, %bb.v ], [ %.0235261, %bb.u ] ; 2 uses
  %.1236 = phi i32 [ %.pre279, %.preheader254.preheader ], [ %i.bz, %bb.v ], [ %i.bx, %bb.u ] ; 2 uses
  %.not251 = icmp ult i64 %i.aj, %i.k
  br i1 %.not251, label %.loopexit253, label %bb.c, !llvm.loop !10

end_hunk_5
begin_hunk_6
  %.7216 = phi i32 [ 0, %bb.w ], [ %i.er, %bb.ae ] ; 4 uses
  %.17 = phi ptr [ %i.dh, %bb.w ], [ %i.eo, %bb.ae ]
  %i.es = getelementptr inbounds nuw i8, ptr %.17, i64 %i.k
  switch i32 %2, label %.preheader.preheader [
    i32 32, label %.loopexit.a
    i32 64, label %bb.ag
  ]
end_hunk_6
begin_hunk_7
bb.ag:                                            ; preds = %bb.af
  br label %.loopexit.a

.preheader.preheader:                             ; preds = %bb.af
  store i32 %.2242268, ptr %i.b, align 16, !tbaa !5
  store i32 %.2237269, ptr %i.y, align 4, !tbaa !5
  store i32 %.7216, ptr %i.z, align 8, !tbaa !5
  store i32 %.15232, ptr %i.aa, align 4, !tbaa !5
  %i.et = load <8 x i8>, ptr %i.ad, align 1, !tbaa !9
  %i.eu = zext <8 x i8> %i.et to <8 x i32>
  %i.ev = shl nuw nsw <8 x i32> %i.eu, %i.ai
end_hunk_7
begin_hunk_8
  %.pre281 = load i32, ptr %i.y, align 4, !tbaa !5
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %bb.af, %bb.ag, %.preheader.preheader
  %.3243 = phi i32 [ %.pre280, %.preheader.preheader ], [ %.7216, %bb.ag ], [ %.2237269, %bb.af ] ; 2 uses
  %.3238 = phi i32 [ %.pre281, %.preheader.preheader ], [ %.15232, %bb.ag ], [ %.7216, %bb.af ] ; 2 uses
  %i.fb = load i32, ptr %i.a, align 4, !tbaa !5
  %i.fc = xor i32 %i.fb, %.7216                   ; 4 uses
  %i.fd = load i32, ptr %i.x, align 4, !tbaa !5
end_hunk_8
