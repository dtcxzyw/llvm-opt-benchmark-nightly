begin_hunk_0
define dso_local void @DES_cfb_encrypt(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 18 uses
  %i.c = sdiv i32 %2, 8                           ; 2 uses
  %i.d = add nsw i32 %2, 7
  %i.e = sdiv i32 %i.d, 8                         ; 5 uses
  %i.f = srem i32 %2, 8                           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.g = add i32 %2, -65
end_hunk_0
begin_hunk_1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %7 = icmp eq i32 %i.f, 0
  %i.p = sub nuw nsw i32 8, %i.f
  %i.q = zext nneg i32 %i.c to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %i.u = shufflevector <8 x i32> %i.t, <8 x i32> poison, <8 x i32> zeroinitializer
end_hunk_1
begin_hunk_2
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %8 = icmp eq i32 %i.f, 0
  %i.ab = sub nuw nsw i32 8, %i.f
  %i.ac = zext nneg i32 %i.c to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = insertelement <8 x i32> poison, i32 %i.ab, i64 0
  %i.ag = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> zeroinitializer
end_hunk_2
begin_hunk_3
bb.u:                                             ; preds = %bb.t, %bb.l
  %.8197 = phi ptr [ %i.ca, %bb.l ], [ %i.cw, %bb.t ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.8197, i64 %i.k
  switch i32 %2, label %9 [
    i32 32, label %.loopexit255
    i32 64, label %bb.v
  ]
end_hunk_3
begin_hunk_4
bb.v:                                             ; preds = %bb.u
  br label %.loopexit255

9:                                                ; preds = %bb.u
  store i32 %.0240260, ptr %i.b, align 16, !tbaa !5
  store i32 %.0235261, ptr %i.m, align 4, !tbaa !5
  store i32 %i.bx, ptr %i.n, align 8, !tbaa !5
  store i32 %i.bz, ptr %i.o, align 4, !tbaa !5
  br i1 %7, label %10, label %.preheader254.preheader

.preheader254.preheader:                          ; preds = %9
  %i.cy = load <8 x i8>, ptr %i.r, align 1, !tbaa !9
  %i.cz = zext <8 x i8> %i.cy to <8 x i32>
  %i.da = shl nuw nsw <8 x i32> %i.cz, %i.w
end_hunk_4
begin_hunk_5
  %.pre279 = load i32, ptr %i.m, align 4, !tbaa !5
  br label %.loopexit255

10:                                               ; preds = %9
  %11 = load i64, ptr %i.r, align 1               ; 3 uses
  store i64 %11, ptr %i.b, align 16
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %11, 32
  %14 = trunc nuw i64 %13 to i32
  br label %.loopexit255

.loopexit255:                                     ; preds = %10, %.preheader254.preheader, %bb.u, %bb.v
  %.1241 = phi i32 [ %.0235261, %bb.u ], [ %i.bx, %bb.v ], [ %.pre, %.preheader254.preheader ], [ %12, %10 ] ; 2 uses
  %.1236 = phi i32 [ %i.bx, %bb.u ], [ %i.bz, %bb.v ], [ %.pre279, %.preheader254.preheader ], [ %14, %10 ] ; 2 uses
  %.not251 = icmp ult i64 %i.aj, %i.k
  br i1 %.not251, label %.loopexit253, label %bb.c, !llvm.loop !10

end_hunk_5
begin_hunk_6
  %.7216 = phi i32 [ 0, %bb.w ], [ %i.er, %bb.ae ] ; 4 uses
  %.17 = phi ptr [ %i.dh, %bb.w ], [ %i.eo, %bb.ae ]
  %i.es = getelementptr inbounds nuw i8, ptr %.17, i64 %i.k
  switch i32 %2, label %15 [
    i32 32, label %.loopexit.a
    i32 64, label %bb.ag
  ]
end_hunk_6
begin_hunk_7
bb.ag:                                            ; preds = %bb.af
  br label %.loopexit.a

15:                                               ; preds = %bb.af
  store i32 %.2242268, ptr %i.b, align 16, !tbaa !5
  store i32 %.2237269, ptr %i.y, align 4, !tbaa !5
  store i32 %.7216, ptr %i.z, align 8, !tbaa !5
  store i32 %.15232, ptr %i.aa, align 4, !tbaa !5
  br i1 %8, label %16, label %.preheader.preheader

.preheader.preheader:                             ; preds = %15
  %i.et = load <8 x i8>, ptr %i.ad, align 1, !tbaa !9
  %i.eu = zext <8 x i8> %i.et to <8 x i32>
  %i.ev = shl nuw nsw <8 x i32> %i.eu, %i.ai
end_hunk_7
begin_hunk_8
  %.pre281 = load i32, ptr %i.y, align 4, !tbaa !5
  br label %.loopexit.a

16:                                               ; preds = %15
  %17 = load i64, ptr %i.ad, align 1              ; 3 uses
  store i64 %17, ptr %i.b, align 16
  %18 = trunc i64 %17 to i32
  %19 = lshr i64 %17, 32
  %20 = trunc nuw i64 %19 to i32
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %16, %.preheader.preheader, %bb.af, %bb.ag
  %.3243 = phi i32 [ %.2237269, %bb.af ], [ %.7216, %bb.ag ], [ %.pre280, %.preheader.preheader ], [ %18, %16 ] ; 2 uses
  %.3238 = phi i32 [ %.7216, %bb.af ], [ %.15232, %bb.ag ], [ %.pre281, %.preheader.preheader ], [ %20, %16 ] ; 2 uses
  %i.fb = load i32, ptr %i.a, align 4, !tbaa !5
  %i.fc = xor i32 %i.fb, %.7216                   ; 4 uses
  %i.fd = load i32, ptr %i.x, align 4, !tbaa !5
end_hunk_8
