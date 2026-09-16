Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/dynamic_tree?download=true
inline.NumInlined: 146
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b2DynamicTree_EnlargeProxy
define void @b2DynamicTree_EnlargeProxy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b ; 3 uses
  store <2 x float> %2, ptr %i.c, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x float> %3, ptr %.sroa.3.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not23 = icmp eq i32 %i.e, -1
  br i1 %.not23, label %._crit_edge30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %2, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %2, i64 1 ; 2 uses
  %.sroa.5.8.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 2 uses
  %.sroa.5.12.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.02024 = phi i32 [ %i.e, %.lr.ph ], [ %.020.be, %.backedge ]
  %i.f = sext i32 %.02024 to i64
  %i.g = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.f ; 10 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !48
  %i.i = fcmp olt float %.sroa.0.0.vec.extract.i, %i.h ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %.sroa.0.0.vec.extract.i, ptr %i.g, align 4, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !49
  %i.l = fcmp olt float %.sroa.0.4.vec.extract.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %.sroa.0.4.vec.extract.i, ptr %i.j, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi i1 [ true, %bb.e ], [ %i.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !50
  %i.o = fcmp olt float %i.n, %.sroa.5.8.vec.extract.i
  br i1 %i.o, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !51
  %i.r = fcmp olt float %i.q, %.sroa.5.12.vec.extract.i
  br i1 %i.r, label %.split, label %b2EnlargeAABB.exit

.thread:                                          ; preds = %bb.f
  store float %.sroa.5.8.vec.extract.i, ptr %i.m, align 4, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !51
  %i.u = fcmp olt float %i.t, %.sroa.5.12.vec.extract.i
  br i1 %i.u, label %.split, label %.backedge.sink.split

.split:                                           ; preds = %.thread, %bb.g
  %i.v = phi ptr [ %i.s, %.thread ], [ %i.p, %bb.g ]
  store float %.sroa.5.12.vec.extract.i, ptr %i.v, align 4, !tbaa !51
  br label %.backedge.sink.split

b2EnlargeAABB.exit:                               ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 38 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !34
  %i.y = or i16 %i.x, 2
  store i16 %i.y, ptr %i.w, align 2, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !19  ; 3 uses
  br i1 %.1.i, label %.backedge, label %b2EnlargeAABB.exit._crit_edge

.backedge.sink.split:                             ; preds = %.thread, %.split
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 38 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !34
  %i.ad = or i16 %i.ac, 2
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !19
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %b2EnlargeAABB.exit
  %.020.be = phi i32 [ %i.aa, %b2EnlargeAABB.exit ], [ %i.af, %.backedge.sink.split ] ; 2 uses
  %.not = icmp eq i32 %.020.be, -1
  br i1 %.not, label %._crit_edge30, label %bb.b

b2EnlargeAABB.exit._crit_edge:                    ; preds = %b2EnlargeAABB.exit
  %.not2126 = icmp eq i32 %i.aa, -1
  br i1 %.not2126, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %b2EnlargeAABB.exit._crit_edge, %bb.h
  %.227 = phi i32 [ %i.an, %bb.h ], [ %i.aa, %b2EnlargeAABB.exit._crit_edge ]
  %i.ag = sext i32 %.227 to i64
  %i.ah = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 38 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !34 ; 2 uses
  %i.ak = and i16 %i.aj, 2
  %.not22 = icmp eq i16 %i.ak, 0
  br i1 %.not22, label %bb.h, label %._crit_edge30

bb.h:                                             ; preds = %.lr.ph29
  %i.al = or disjoint i16 %i.aj, 2
  store i16 %i.al, ptr %i.ai, align 2, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %.not21 = icmp eq i32 %i.an, -1
  br i1 %.not21, label %._crit_edge30, label %.lr.ph29, !llvm.loop !47

._crit_edge30:                                    ; preds = %.backedge, %bb.h, %.lr.ph29, %bb.a, %b2EnlargeAABB.exit._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @b2DynamicTree_SetCategoryBits(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %i.d, align 8, !tbaa !32
  %.0.in16 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.017 = load i32, ptr %.0.in16, align 8, !tbaa !19 ; 2 uses
  %.not18 = icmp eq i32 %.017, -1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi i32 [ %.0, %.lr.ph ], [ %.017, %bb.a ]
  %i.e = sext i32 %.019 to i64
  %i.f = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !32
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = or i64 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !32
  %.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !19  ; 2 uses
  %.not = icmp eq i32 %.0, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @b2DynamicTree_GetCategoryBits(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @b2DynamicTree_GetHeight(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.h = load i16, ptr %i.g, align 4, !tbaa !33
  %i.i = zext i16 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @b2DynamicTree_GetAreaRatio(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %1 = sext i32 %i.b to i64
  %2 = getelementptr inbounds [40 x i8], ptr %i.d, i64 %1 ; 2 uses
  %3 = load <2 x float>, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = load <2 x float>, ptr %4, align 8
  %6 = fsub <2 x float> %5, %3                    ; 2 uses
  %shift = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %6, %shift
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %8 = fmul float %7, 2.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = zext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.017.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.1, %bb.d ]
  %i.i = fdiv float %.017.lcssa, %8
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.01727 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 38
  %.val = load i16, ptr %i.k, align 2, !tbaa !34
  %i.l = and i16 %.val, 5
  %or.cond = icmp ne i16 %i.l, 1
  %i.m = icmp eq i64 %indvars.iv, %i.h
  %or.cond26 = or i1 %i.m, %or.cond
  br i1 %or.cond26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = load <2 x float>, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load <2 x float>, ptr %i.o, align 8
  %i.q = fsub <2 x float> %i.p, %i.n
  %i.r = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.q)
  %i.s = fmul float %i.r, 2.000000e+00
  %i.t = fadd float %.01727, %i.s
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.1 = phi float [ %i.t, %bb.c ], [ %.01727, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.018 = phi float [ %i.i, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  ret float %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds [40 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0.copyload = load <2 x float>, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.3.0 = phi <2 x float> [ %.sroa.3.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @b2DynamicTree_Validate(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @b2DynamicTree_ValidateNoEnlarged(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @b2DynamicTree_GetByteCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = mul i32 %i.b, 40
  %i.d = add i32 %i.c, 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = shl i32 %i.f, 5
  %i.h = add i32 %i.d, %i.g
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @b2DynamicTree_GetUserData(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @b2DynamicTree_GetAABB(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define i64 @b2DynamicTree_Query(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  store i32 %i.f, ptr %i.a, align 16, !tbaa !36
  br label %.outer

.outer:                                           ; preds = %.split, %bb.b
  %.sroa.4.0.ph = phi i32 [ %i.ag, %.split ], [ 0, %bb.b ] ; 3 uses
  %.sroa.023.0.ph = phi i32 [ %i.o, %.split ], [ 0, %bb.b ] ; 2 uses
  %.027.ph = phi i32 [ %i.i, %.split ], [ 1, %bb.b ] ; 2 uses
  %i.g = icmp sgt i32 %.027.ph, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.outer
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.02739 = phi i32 [ %.027.ph, %.lr.ph ], [ %.2, %bb.h ] ; 4 uses
  %.sroa.023.038 = phi i32 [ %.sroa.023.0.ph, %.lr.ph ], [ %i.o, %bb.h ]
  %i.i = add nsw i32 %.02739, -1                  ; 5 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.m ; 7 uses
  %i.o = add nuw nsw i32 %.sroa.023.038, 1        ; 4 uses
  %i.p = load <2 x float>, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = shufflevector <2 x float> %1, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fcmp ule <4 x float> %i.s, %i.t
  %i.v = freeze <4 x i1> %i.u
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !32
  %i.aa = and i64 %i.z, %3
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.n, i64 38
  %.val = load i16, ptr %i.ab, align 2, !tbaa !34
  %i.ac = and i16 %.val, 4
  %.not30 = icmp eq i16 %i.ac, 0
  br i1 %.not30, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.af = tail call zeroext i1 %4(i32 noundef %i.l, i64 noundef %i.ae, ptr noundef %5) #14
  %i.ag = add nuw nsw i32 %.sroa.4.0.ph, 1        ; 2 uses
  br i1 %i.af, label %.outer, label %.loopexit, !llvm.loop !54

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp samesign ult i32 %.02739, 1024
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  store i32 %i.aj, ptr %i.k, align 4, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = add nuw nsw i32 %.02739, 1
  %i.an = zext nneg i32 %.02739 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f
  %.2 = phi i32 [ %i.i, %bb.c ], [ %i.am, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.d ] ; 2 uses
  %i.ap = icmp sgt i32 %.2, 0
end_hunk_0
