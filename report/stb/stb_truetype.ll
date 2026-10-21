Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__sort_edges_ins_sort:bb.a
bb.d:                                             ; preds = %.thread
  %i.l = sext i32 %.021.lcssa to i64
  %i.m = getelementptr inbounds [20 x i8], ptr %0, i64 %i.l ; 2 uses
  store <2 x float> %i.c, ptr %i.m, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5, i64 12, i1 false), !tbaa.struct !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__sort_edges_quicksort(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %2 = alloca %struct.stbtt__edge, align 4        ; 8 uses
  %i.a = icmp sgt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.078 = phi ptr [ %.1, %bb.l ], [ %0, %bb.a ]   ; 10 uses
  %.06977 = phi i32 [ %.170, %bb.l ], [ %1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = lshr i32 %.06977, 1
  %i.c = getelementptr inbounds nuw i8, ptr %.078, i64 4 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !93 ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !93 ; 2 uses
  %i.i = add nsw i32 %.06977, -1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !93 ; 2 uses
  %i.n = fcmp olt float %i.h, %i.m                ; 2 uses
  %i.o = fcmp uge float %i.d, %i.h
  %.not = xor i1 %i.o, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = fcmp uge float %i.d, %i.m
  %i.q = xor i1 %i.p, %i.n
  %i.r = select i1 %i.q, i64 0, i64 %i.j
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.r ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.s, i64 20, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.078, i64 20, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.078, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.067 = phi i64 [ 1, %bb.c ], [ %i.af, %bb.h ]
  %.065 = phi i32 [ %i.i, %bb.c ], [ %i.ag, %bb.h ]
  %i.t = load float, ptr %i.c, align 4, !tbaa !93 ; 2 uses
  %sext = shl i64 %.067, 32
  %i.u = ashr exact i64 %sext, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.u, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !93
  %i.y = fcmp olt float %i.x, %i.t
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.y, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.z = sext i32 %.065 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.f ], [ %i.z, %.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv81 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !93
  %i.ad = fcmp olt float %i.t, %i.ac
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nsw i64 %indvars.iv81 to i32      ; 4 uses
  %.not74 = icmp slt i64 %indvars.iv, %indvars.iv81
  br i1 %.not74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.v, i64 20, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  %i.af = add nsw i64 %indvars.iv, 1
  %i.ag = add nsw i32 %i.ae, -1
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.ah = trunc nsw i64 %indvars.iv to i32
  %i.ai = sub nsw i32 %.06977, %i.ah              ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ae
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @stbtt__sort_edges_quicksort(ptr noundef nonnull %.078, i32 noundef %i.ae)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.v, i32 noundef %i.ai)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.170 = phi i32 [ %i.ai, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %.1 = phi ptr [ %i.v, %bb.j ], [ %.078, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ak = icmp sgt i32 %.170, 12
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__sort_edges(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %.sroa.5.i = alloca { float, float, i32 }, align 8 ; 4 uses
  tail call void @stbtt__sort_edges_quicksort(ptr noundef %0, i32 noundef %1)
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader.i, label %stbtt__sort_edges_ins_sort.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.b = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !80
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !109
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next32.i, %bb.c ] ; 4 uses
  %i.d = getelementptr [20 x i8], ptr %0, i64 %indvars.iv31.i ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %i.f = load float, ptr %i.e, align 4, !tbaa !93
  %i.g = fcmp olt float %.sroa.4.0.copyload.i, %i.f
  br i1 %i.g, label %bb.c, label %.thread.split.loop.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, ptr noundef nonnull align 4 dereferenceable(20) %i.h, i64 20, i1 false), !tbaa.struct !110
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, -1
  %i.i = icmp sgt i64 %indvars.iv31.i, 1
  br i1 %i.i, label %bb.b, label %.thread.i

.thread.split.loop.exit.i:                        ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv31.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %.thread.split.loop.exit.i
  %.021.lcssa.i = phi i32 [ %i.j, %.thread.split.loop.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.k = zext i32 %.021.lcssa.i to i64
  %.not.i = icmp eq i64 %indvars.iv.i, %i.k
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread.i
  %i.l = sext i32 %.021.lcssa.i to i64
  %i.m = getelementptr inbounds [20 x i8], ptr %0, i64 %i.l ; 2 uses
  store <2 x float> %i.c, ptr %i.m, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i, i64 12, i1 false), !tbaa.struct !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__sort_edges_ins_sort.exit, label %.lr.ph.i, !llvm.loop !6

stbtt__sort_edges_ins_sort.exit:                  ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stbtt__rasterize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nofree readnone captures(none) %11) local_unnamed_addr #21 {
bb.a:
  %.sroa.5.i.i = alloca { float, float, i32 }, align 8 ; 4 uses
  %.not = icmp eq i32 %10, 0                      ; 2 uses
  %i.a = fneg float %5
  %12 = select i1 %.not, float %5, float %i.a     ; 2 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi158 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !39
  %wide.load159 = load <4 x i32>, ptr %i.d, align 4, !tbaa !39
  %i.e = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.f = add <4 x i32> %wide.load159, %vec.phi158 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.f, %i.e
  %i.h = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader162

.lr.ph.preheader162:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.08792.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader162, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader162 ] ; 2 uses
  %.08792 = phi i32 [ %i.k, %.lr.ph ], [ %.08792.ph, %.lr.ph.preheader162 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %i.k = add nsw i32 %i.j, %.08792                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.h, %middle.block ], [ %i.k, %.lr.ph ]
  %i.l = add nsw i32 %.lcssa, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.m, 20
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #30 ; 9 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %.lr.ph104

._crit_edge.thread:                               ; preds = %bb.a
  %i.q = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #30 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %._crit_edge105.thread

.lr.ph104:                                        ; preds = %._crit_edge
  %wide.trip.count133 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %.not, label %.lr.ph104.split.us.preheader, label %.lr.ph104.split.preheader

.lr.ph104.split.preheader:                        ; preds = %.lr.ph104
  %i.s = insertelement <4 x float> poison, float %4, i64 0
  %i.t = insertelement <4 x float> %i.s, float %12, i64 1
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = insertelement <4 x float> poison, float %6, i64 0
  %i.w = insertelement <4 x float> %i.v, float %7, i64 1
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph104.split

.lr.ph104.split.us.preheader:                     ; preds = %.lr.ph104
  %i.y = insertelement <4 x float> poison, float %4, i64 0
  %i.z = insertelement <4 x float> %i.y, float %12, i64 1
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = insertelement <4 x float> poison, float %6, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %7, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader, %._crit_edge99.split.us.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %._crit_edge99.split.us.us ], [ 0, %.lr.ph104.split.us.preheader ] ; 2 uses
  %.083103.us = phi i32 [ %i.ai, %._crit_edge99.split.us.us ], [ 0, %.lr.ph104.split.us.preheader ] ; 2 uses
  %.188101.us = phi i32 [ %.2.lcssa.us, %._crit_edge99.split.us.us ], [ 0, %.lr.ph104.split.us.preheader ] ; 2 uses
  %i.ae = sext i32 %.083103.us to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv130
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39 ; 4 uses
  %i.ai = add nsw i32 %i.ah, %.083103.us
  %i.aj = icmp sgt i32 %i.ah, 0
  br i1 %i.aj, label %.lr.ph98.us.preheader, label %._crit_edge99.split.us.us

.lr.ph98.us.preheader:                            ; preds = %.lr.ph104.split.us
  %i.ak = add nsw i32 %i.ah, -1                   ; 2 uses
  %wide.trip.count128 = zext nneg i32 %i.ah to i64
  %.phi.trans.insert137 = zext nneg i32 %i.ak to i64
  %.phi.trans.insert138 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.phi.trans.insert137
  %.phi.trans.insert139 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert138, i64 4
  %.pre140 = load float, ptr %.phi.trans.insert139, align 4, !tbaa !112
  br label %.lr.ph98.us

.lr.ph98.us:                                      ; preds = %.lr.ph98.us.preheader, %.lr.ph98.us._crit_edge
  %i.al = phi float [ %.pre140, %.lr.ph98.us.preheader ], [ %i.ao, %.lr.ph98.us._crit_edge ] ; 2 uses
  %indvars.iv125 = phi i64 [ 0, %.lr.ph98.us.preheader ], [ %indvars.iv.next126, %.lr.ph98.us._crit_edge ] ; 5 uses
  %.08595.us.us = phi i32 [ %i.ak, %.lr.ph98.us.preheader ], [ %.pre-phi, %.lr.ph98.us._crit_edge ] ; 2 uses
  %.294.us.us = phi i32 [ %.188101.us, %.lr.ph98.us.preheader ], [ %.3.us.us, %.lr.ph98.us._crit_edge ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv125
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !112 ; 3 uses
  %i.ap = fcmp oeq float %i.al, %i.ao
  br i1 %i.ap, label %.lr.ph98.us._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph98.us
  %i.aq = sext i32 %.294.us.us to i64
  %i.ar = getelementptr inbounds [20 x i8], ptr %i.o, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = fcmp olt float %i.al, %i.ao             ; 3 uses
  %spec.store.select = zext i1 %i.at to i32
  store i32 %spec.store.select, ptr %i.as, align 4, !tbaa !99
  %i.au = sext i32 %.08595.us.us to i64
  %i.av = select i1 %i.at, i64 %i.au, i64 %indvars.iv125
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.av
  %i.ax = sext i32 %.08595.us.us to i64
  %i.ay = select i1 %i.at, i64 %indvars.iv125, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ay
  %i.ba = load <2 x float>, ptr %i.aw, align 4, !tbaa !80
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !80
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.aa, <4 x float> %i.ad)
  store <4 x float> %i.bd, ptr %i.ar, align 4, !tbaa !80
  %i.be = add nsw i32 %.294.us.us, 1
  br label %.lr.ph98.us._crit_edge

.lr.ph98.us._crit_edge:                           ; preds = %.lr.ph98.us, %bb.b
  %.3.us.us = phi i32 [ %i.be, %bb.b ], [ %.294.us.us, %.lr.ph98.us ] ; 2 uses
  %.pre-phi = trunc i64 %indvars.iv125 to i32
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge99.split.us.us, label %.lr.ph98.us, !llvm.loop !199

._crit_edge99.split.us.us:                        ; preds = %.lr.ph98.us._crit_edge, %.lr.ph104.split.us
  %.2.lcssa.us = phi i32 [ %.188101.us, %.lr.ph104.split.us ], [ %.3.us.us, %.lr.ph98.us._crit_edge ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge105, label %.lr.ph104.split.us, !llvm.loop !200

.lr.ph104.split:                                  ; preds = %.lr.ph104.split.preheader, %._crit_edge99.split
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %._crit_edge99.split ], [ 0, %.lr.ph104.split.preheader ] ; 2 uses
  %.083103 = phi i32 [ %i.bj, %._crit_edge99.split ], [ 0, %.lr.ph104.split.preheader ] ; 2 uses
  %.188101 = phi i32 [ %.2.lcssa, %._crit_edge99.split ], [ 0, %.lr.ph104.split.preheader ] ; 2 uses
  %i.bf = sext i32 %.083103 to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv120
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !39 ; 4 uses
  %i.bj = add nsw i32 %i.bi, %.083103
  %i.bk = icmp sgt i32 %i.bi, 0
  br i1 %i.bk, label %.lr.ph98.preheader, label %._crit_edge99.split

.lr.ph98.preheader:                               ; preds = %.lr.ph104.split
  %i.bl = add nsw i32 %i.bi, -1                   ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.bi to i64
  %.phi.trans.insert = zext nneg i32 %i.bl to i64
  %.phi.trans.insert135 = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.phi.trans.insert
  %.phi.trans.insert136 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert135, i64 4
  %.pre = load float, ptr %.phi.trans.insert136, align 4, !tbaa !112
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.lr.ph98._crit_edge
  %i.bm = phi float [ %.pre, %.lr.ph98.preheader ], [ %i.bp, %.lr.ph98._crit_edge ] ; 2 uses
  %indvars.iv115 = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next116, %.lr.ph98._crit_edge ] ; 5 uses
  %.08595 = phi i32 [ %i.bl, %.lr.ph98.preheader ], [ %.pre-phi143, %.lr.ph98._crit_edge ] ; 2 uses
  %.294 = phi i32 [ %.188101, %.lr.ph98.preheader ], [ %.3, %.lr.ph98._crit_edge ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv115
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !112 ; 3 uses
  %i.bq = fcmp oeq float %i.bm, %i.bp
  br i1 %i.bq, label %.lr.ph98._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph98
  %i.br = sext i32 %.294 to i64
  %i.bs = getelementptr inbounds [20 x i8], ptr %i.o, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = fcmp ogt float %i.bm, %i.bp             ; 3 uses
  %spec.store.select109 = zext i1 %i.bu to i32
  store i32 %spec.store.select109, ptr %i.bt, align 4, !tbaa !99
  %i.bv = sext i32 %.08595 to i64
  %i.bw = select i1 %i.bu, i64 %i.bv, i64 %indvars.iv115
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bw
  %i.by = sext i32 %.08595 to i64
  %i.bz = select i1 %i.bu, i64 %indvars.iv115, i64 %i.by
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bz
  %i.cb = load <2 x float>, ptr %i.bx, align 4, !tbaa !80
  %i.cc = load <2 x float>, ptr %i.ca, align 4, !tbaa !80
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.u, <4 x float> %i.x)
  store <4 x float> %i.ce, ptr %i.bs, align 4, !tbaa !80
  %i.cf = add nsw i32 %.294, 1
  br label %.lr.ph98._crit_edge

.lr.ph98._crit_edge:                              ; preds = %.lr.ph98, %bb.c
  %.3 = phi i32 [ %i.cf, %bb.c ], [ %.294, %.lr.ph98 ] ; 2 uses
  %.pre-phi143 = trunc i64 %indvars.iv115 to i32
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge99.split, label %.lr.ph98, !llvm.loop !199

._crit_edge99.split:                              ; preds = %.lr.ph98._crit_edge, %.lr.ph104.split
  %.2.lcssa = phi i32 [ %.188101, %.lr.ph104.split ], [ %.3, %.lr.ph98._crit_edge ] ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count133
  br i1 %exitcond124.not, label %._crit_edge105, label %.lr.ph104.split, !llvm.loop !200

._crit_edge105.thread:                            ; preds = %._crit_edge.thread
  tail call void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.q, i32 noundef 0)
  br label %stbtt__sort_edges.exit

._crit_edge105:                                   ; preds = %._crit_edge99.split, %._crit_edge99.split.us.us
  %.188.lcssa = phi i32 [ %.2.lcssa.us, %._crit_edge99.split.us.us ], [ %.2.lcssa, %._crit_edge99.split ] ; 5 uses
  tail call void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.o, i32 noundef %.188.lcssa)
  %i.cg = icmp sgt i32 %.188.lcssa, 1
  br i1 %i.cg, label %.lr.ph.preheader.i.i, label %stbtt__sort_edges.exit

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge105
  %wide.trip.count.i.i = zext nneg i32 %.188.lcssa to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.ch = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !80
  %i.ci = load <2 x float>, ptr %i.ch, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, i64 12, i1 false), !tbaa.struct !109
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next32.i.i, %bb.e ] ; 4 uses
  %i.cj = getelementptr [20 x i8], ptr %i.o, i64 %indvars.iv31.i.i ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -16
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !93
  %i.cm = fcmp olt float %.sroa.4.0.copyload.i.i, %i.cl
  br i1 %i.cm, label %bb.e, label %.thread.split.loop.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr i8, ptr %i.cj, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cj, ptr noundef nonnull align 4 dereferenceable(20) %i.cn, i64 20, i1 false), !tbaa.struct !110
  %indvars.iv.next32.i.i = add nsw i64 %indvars.iv31.i.i, -1
  %i.co = icmp sgt i64 %indvars.iv31.i.i, 1
  br i1 %i.co, label %bb.d, label %.thread.i.i

.thread.split.loop.exit.i.i:                      ; preds = %bb.d
  %i.cp = trunc nuw nsw i64 %indvars.iv31.i.i to i32
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %.thread.split.loop.exit.i.i
  %.021.lcssa.i.i = phi i32 [ %i.cp, %.thread.split.loop.exit.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.cq = zext i32 %.021.lcssa.i.i to i64
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.cq
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i.i
  %i.cr = sext i32 %.021.lcssa.i.i to i64
  %i.cs = getelementptr inbounds [20 x i8], ptr %i.o, i64 %i.cr ; 2 uses
  store <2 x float> %i.ci, ptr %i.cs, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !tbaa.struct !109
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
end_hunk_0
