Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__sort_edges_quicksort:bb.a
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
define void @stbtt__sort_edges(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 {
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
define void @stbtt__rasterize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nofree readnone captures(none) %11) local_unnamed_addr #10 {
bb.a:
  %.sroa.5.i.i = alloca { float, float, i32 }, align 8 ; 4 uses
  %.not = icmp eq i32 %10, 0                      ; 2 uses
  %i.a = fneg float %5
  %i.b = select i1 %.not, float %5, float %i.a    ; 2 uses
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi158 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !39
  %wide.load159 = load <4 x i32>, ptr %i.e, align 4, !tbaa !39
  %i.f = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <4 x i32> %wide.load159, %vec.phi158 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader162

.lr.ph.preheader162:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.08792.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader162, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader162 ] ; 2 uses
  %.08792 = phi i32 [ %i.l, %.lr.ph ], [ %.08792.ph, %.lr.ph.preheader162 ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %i.l = add nsw i32 %i.k, %.08792                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.i, %middle.block ], [ %i.l, %.lr.ph ]
  %i.m = add nsw i32 %.lcssa, 1
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, 20
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #30 ; 9 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %.lr.ph104

._crit_edge.thread:                               ; preds = %bb.a
  %i.r = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #30 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %._crit_edge105.thread

.lr.ph104:                                        ; preds = %._crit_edge
  %wide.trip.count133 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %.not, label %.lr.ph104.split.us.preheader, label %.lr.ph104.split.preheader

.lr.ph104.split.preheader:                        ; preds = %.lr.ph104
  %i.t = insertelement <4 x float> poison, float %4, i64 0
  %i.u = insertelement <4 x float> %i.t, float %i.b, i64 1
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.w = insertelement <4 x float> poison, float %6, i64 0
  %i.x = insertelement <4 x float> %i.w, float %7, i64 1
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph104.split

.lr.ph104.split.us.preheader:                     ; preds = %.lr.ph104
  %i.z = insertelement <4 x float> poison, float %4, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.b, i64 1
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ac = insertelement <4 x float> poison, float %6, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %7, i64 1
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader, %._crit_edge99.split.us.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %._crit_edge99.split.us.us ], [ 0, %.lr.ph104.split.us.preheader ] ; 2 uses
  %.083103.us = phi i32 [ %i.aj, %._crit_edge99.split.us.us ], [ 0, %.lr.ph104.split.us.preheader ] ; 2 uses
  %.188101.us = phi i32 [ %.2.lcssa.us, %._crit_edge99.split.us.us ], [ 0, %.lr.ph104.split.us.preheader ] ; 2 uses
  %i.af = sext i32 %.083103.us to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv130
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !39 ; 4 uses
  %i.aj = add nsw i32 %i.ai, %.083103.us
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %.lr.ph98.us.preheader, label %._crit_edge99.split.us.us

.lr.ph98.us.preheader:                            ; preds = %.lr.ph104.split.us
  %i.al = add nsw i32 %i.ai, -1                   ; 2 uses
  %wide.trip.count128 = zext nneg i32 %i.ai to i64
  %.phi.trans.insert137 = zext nneg i32 %i.al to i64
  %.phi.trans.insert138 = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.phi.trans.insert137
  %.phi.trans.insert139 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert138, i64 4
  %.pre140 = load float, ptr %.phi.trans.insert139, align 4, !tbaa !112
  br label %.lr.ph98.us

.lr.ph98.us:                                      ; preds = %.lr.ph98.us.preheader, %.lr.ph98.us._crit_edge
  %12 = phi float [ %.pre140, %.lr.ph98.us.preheader ], [ %i.ao, %.lr.ph98.us._crit_edge ] ; 2 uses
  %indvars.iv125 = phi i64 [ 0, %.lr.ph98.us.preheader ], [ %indvars.iv.next126, %.lr.ph98.us._crit_edge ] ; 5 uses
  %.08595.us.us.a = phi i32 [ %i.al, %.lr.ph98.us.preheader ], [ %.pre-phi, %.lr.ph98.us._crit_edge ] ; 2 uses
  %.294.us.us = phi i32 [ %.188101.us, %.lr.ph98.us.preheader ], [ %.3.us.us, %.lr.ph98.us._crit_edge ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv125
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !112 ; 3 uses
  %i.ap = fcmp oeq float %12, %i.ao
  br i1 %i.ap, label %.lr.ph98.us._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph98.us
  %i.aq = sext i32 %.294.us.us to i64
  %i.ar = getelementptr inbounds [20 x i8], ptr %i.p, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = fcmp olt float %12, %i.ao               ; 3 uses
  %spec.store.select = zext i1 %i.at to i32
  store i32 %spec.store.select, ptr %i.as, align 4, !tbaa !99
  %i.au = sext i32 %.08595.us.us.a to i64
  %i.av = select i1 %i.at, i64 %i.au, i64 %indvars.iv125
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.av
  %i.ax = sext i32 %.08595.us.us.a to i64
  %i.ay = select i1 %i.at, i64 %indvars.iv125, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = load <2 x float>, ptr %i.aw, align 4, !tbaa !80
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !80
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.ab, <4 x float> %i.ae)
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
  %13 = phi float [ %.pre, %.lr.ph98.preheader ], [ %i.bo, %.lr.ph98._crit_edge ] ; 2 uses
  %indvars.iv115 = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next116, %.lr.ph98._crit_edge ] ; 5 uses
  %.08595.a = phi i32 [ %i.bl, %.lr.ph98.preheader ], [ %.pre-phi143, %.lr.ph98._crit_edge ] ; 2 uses
  %.294 = phi i32 [ %.188101, %.lr.ph98.preheader ], [ %.3, %.lr.ph98._crit_edge ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv115
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !112 ; 3 uses
  %i.bp = fcmp oeq float %13, %i.bo
  br i1 %i.bp, label %.lr.ph98._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph98
  %i.bq = sext i32 %.294 to i64
  %i.br = getelementptr inbounds [20 x i8], ptr %i.p, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = fcmp ogt float %13, %i.bo               ; 3 uses
  %spec.store.select109 = zext i1 %i.bt to i32
  store i32 %spec.store.select109, ptr %i.bs, align 4, !tbaa !99
  %i.bu = sext i32 %.08595.a to i64
  %i.bv = select i1 %i.bt, i64 %i.bu, i64 %indvars.iv115
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bv
  %i.bx = sext i32 %.08595.a to i64
  %i.by = select i1 %i.bt, i64 %indvars.iv115, i64 %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.by
  %i.ca = load <2 x float>, ptr %i.bw, align 4, !tbaa !80
  %i.cb = load <2 x float>, ptr %i.bz, align 4, !tbaa !80
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.v, <4 x float> %i.y)
  store <4 x float> %i.cd, ptr %i.br, align 4, !tbaa !80
  %i.ce = add nsw i32 %.294, 1
  br label %.lr.ph98._crit_edge

.lr.ph98._crit_edge:                              ; preds = %.lr.ph98, %bb.c
  %.3 = phi i32 [ %i.ce, %bb.c ], [ %.294, %.lr.ph98 ] ; 2 uses
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
  tail call void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.r, i32 noundef 0)
  br label %stbtt__sort_edges.exit

._crit_edge105:                                   ; preds = %._crit_edge99.split, %._crit_edge99.split.us.us
  %.188.lcssa = phi i32 [ %.2.lcssa.us, %._crit_edge99.split.us.us ], [ %.2.lcssa, %._crit_edge99.split ] ; 5 uses
  tail call void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.p, i32 noundef %.188.lcssa)
  %i.cf = icmp sgt i32 %.188.lcssa, 1
  br i1 %i.cf, label %.lr.ph.preheader.i.i, label %stbtt__sort_edges.exit

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge105
  %wide.trip.count.i.i = zext nneg i32 %.188.lcssa to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cg = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %indvars.iv.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !80
  %i.ch = load <2 x float>, ptr %i.cg, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, i64 12, i1 false), !tbaa.struct !109
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next32.i.i, %bb.e ] ; 4 uses
  %i.ci = getelementptr [20 x i8], ptr %i.p, i64 %indvars.iv31.i.i ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !93
  %i.cl = fcmp olt float %.sroa.4.0.copyload.i.i, %i.ck
  br i1 %i.cl, label %bb.e, label %.thread.split.loop.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.cm = getelementptr i8, ptr %i.ci, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ci, ptr noundef nonnull align 4 dereferenceable(20) %i.cm, i64 20, i1 false), !tbaa.struct !110
  %indvars.iv.next32.i.i = add nsw i64 %indvars.iv31.i.i, -1
  %i.cn = icmp sgt i64 %indvars.iv31.i.i, 1
  br i1 %i.cn, label %bb.d, label %.thread.i.i

.thread.split.loop.exit.i.i:                      ; preds = %bb.d
  %i.co = trunc nuw nsw i64 %indvars.iv31.i.i to i32
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %.thread.split.loop.exit.i.i
  %.021.lcssa.i.i = phi i32 [ %i.co, %.thread.split.loop.exit.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.cp = zext i32 %.021.lcssa.i.i to i64
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.cp
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i.i
  %i.cq = sext i32 %.021.lcssa.i.i to i64
  %i.cr = getelementptr inbounds [20 x i8], ptr %i.p, i64 %i.cq ; 2 uses
  store <2 x float> %i.ch, ptr %i.cr, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !tbaa.struct !109
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbtt__sort_edges.exit, label %.lr.ph.i.i, !llvm.loop !6

stbtt__sort_edges.exit:                           ; preds = %bb.g, %._crit_edge105.thread, %._crit_edge105
  %.188.lcssa153 = phi i32 [ 0, %._crit_edge105.thread ], [ %.188.lcssa, %._crit_edge105 ], [ %.188.lcssa, %bb.g ]
  %i.cs = phi ptr [ %i.r, %._crit_edge105.thread ], [ %i.p, %._crit_edge105 ], [ %i.p, %bb.g ] ; 2 uses
  tail call void @stbtt__rasterize_sorted_edges(ptr noundef %0, ptr noundef nonnull %i.cs, i32 noundef %.188.lcssa153, i32 poison, i32 noundef %8, i32 noundef %9, ptr poison)
  tail call void @free(ptr noundef nonnull %i.cs) #29
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge, %stbtt__sort_edges.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt__add_point(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 2 uses
  store float %2, ptr %i.b, align 4, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %3, ptr %i.c, align 4, !tbaa !112
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @stbtt__tesselate_curve(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp sgt i32 %9, 16
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %5, i64 1 ; 2 uses
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = insertelement <2 x float> %i.d, float %3, i64 1 ; 2 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> splat (float 2.000000e+00), <2 x float> %i.e)
  %i.g = insertelement <2 x float> poison, float %6, i64 0
  %i.h = insertelement <2 x float> %i.g, float %7, i64 1 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr5767 = phi i32 [ %i.aa, %tailrecurse ], [ %9, %.lr.ph.preheader ]
  %.tr5164 = phi float [ %i.p, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr5063 = phi float [ %i.t, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.i = phi <2 x float> [ %i.af, %tailrecurse ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.j = phi <2 x float> [ %i.ag, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
  %i.k = phi <2 x float> [ %i.m, %tailrecurse ], [ %i.e, %.lr.ph.preheader ]
  %i.l = fadd <2 x float> %i.h, %i.j
  %i.m = fmul <2 x float> %i.l, splat (float 2.500000e-01) ; 4 uses
  %i.n = fadd float %7, %.tr5164
  %i.o = fmul float %i.n, 5.000000e-01
  %i.p = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.q = fsub float %i.o, %i.p                    ; 2 uses
  %i.r = fadd float %6, %.tr5063
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.u = fsub float %i.s, %i.t                    ; 2 uses
  %i.v = fmul float %i.q, %i.q
  %i.w = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.v)
  %i.x = fcmp ogt float %i.w, %8
  br i1 %i.x, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.y = fadd <2 x float> %i.k, %i.i
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01) ; 2 uses
  %i.aa = add nsw i32 %.tr5767, 1                 ; 3 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 1
  %i.ad = tail call i32 @stbtt__tesselate_curve(ptr noundef %0, ptr noundef %1, float noundef %.tr5063, float noundef %.tr5164, float noundef %i.ab, float noundef %i.ac, float noundef %i.t, float noundef %i.p, float noundef %8, i32 noundef %i.aa) ; 0 uses
  %i.ae = fadd <2 x float> %i.h, %i.i
  %i.af = fmul <2 x float> %i.ae, splat (float 5.000000e-01) ; 2 uses
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> splat (float 2.000000e+00), <2 x float> %i.m)
  %exitcond = icmp eq i32 %i.aa, 17
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ah = load i32, ptr %1, align 4, !tbaa !39    ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %stbtt__add_point.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ai ; 2 uses
  store float %6, ptr %i.aj, align 4, !tbaa !113
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store float %7, ptr %i.ak, align 4, !tbaa !112
  br label %stbtt__add_point.exit

stbtt__add_point.exit:                            ; preds = %bb.b, %bb.c
  %i.al = add nsw i32 %i.ah, 1
  store i32 %i.al, ptr %1, align 4, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %stbtt__add_point.exit
  ret i32 1
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__tesselate_cubic(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) local_unnamed_addr #22 {
bb.a:
  %smax = tail call i32 @llvm.smax.i32(i32 %11, i32 17)
  %exitcond108 = icmp sgt i32 %11, 16
  br i1 %exitcond108, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = insertelement <2 x float> poison, float %4, i64 0 ; 2 uses
  %i.b = insertelement <2 x float> %i.a, float %5, i64 1
  %i.c = insertelement <2 x float> poison, float %6, i64 0
  %i.d = insertelement <2 x float> %i.c, float %7, i64 1
  %i.e = insertelement <2 x float> poison, float %2, i64 0 ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %3, i64 1
  %i.g = insertelement <2 x float> poison, float %3, i64 0
  %i.h = insertelement <2 x float> %i.g, float %5, i64 1
  %i.i = insertelement <2 x float> poison, float %5, i64 0
  %i.j = insertelement <2 x float> %i.i, float %7, i64 1
  %i.k = insertelement <2 x float> %i.e, float %4, i64 1
  %i.l = insertelement <2 x float> %i.a, float %6, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
end_hunk_0
