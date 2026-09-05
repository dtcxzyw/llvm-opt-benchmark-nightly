Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__sort_edges_quicksort:bb.a
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
  %i.am = phi float [ %.pre140, %.lr.ph98.us.preheader ], [ %i.ap, %.lr.ph98.us._crit_edge ] ; 2 uses
  %indvars.iv125 = phi i64 [ 0, %.lr.ph98.us.preheader ], [ %indvars.iv.next126, %.lr.ph98.us._crit_edge ] ; 5 uses
  %.08595.us.us = phi i32 [ %i.al, %.lr.ph98.us.preheader ], [ %.pre-phi, %.lr.ph98.us._crit_edge ] ; 2 uses
  %.294.us.us = phi i32 [ %.188101.us, %.lr.ph98.us.preheader ], [ %.3.us.us, %.lr.ph98.us._crit_edge ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !112 ; 3 uses
  %i.aq = fcmp oeq float %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph98.us._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph98.us
  %i.ar = sext i32 %.294.us.us to i64
  %i.as = getelementptr inbounds [20 x i8], ptr %i.p, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = fcmp olt float %i.am, %i.ap             ; 3 uses
  %spec.store.select = zext i1 %i.au to i32
  store i32 %spec.store.select, ptr %i.at, align 4
  %i.av = sext i32 %.08595.us.us to i64
  %i.aw = select i1 %i.au, i64 %i.av, i64 %indvars.iv125
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.aw
  %i.ay = sext i32 %.08595.us.us to i64
  %i.az = select i1 %i.au, i64 %indvars.iv125, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.az
  %i.bb = load <2 x float>, ptr %i.ax, align 4, !tbaa !80
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !80
  %i.bd = shufflevector <2 x float> %i.bb, <2 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.ab, <4 x float> %i.ae)
  store <4 x float> %i.be, ptr %i.as, align 4, !tbaa !80
  %i.bf = add nsw i32 %.294.us.us, 1
  br label %.lr.ph98.us._crit_edge

.lr.ph98.us._crit_edge:                           ; preds = %.lr.ph98.us, %bb.b
  %.3.us.us = phi i32 [ %i.bf, %bb.b ], [ %.294.us.us, %.lr.ph98.us ] ; 2 uses
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
  %.083103 = phi i32 [ %i.bk, %._crit_edge99.split ], [ 0, %.lr.ph104.split.preheader ] ; 2 uses
  %.188101 = phi i32 [ %.2.lcssa, %._crit_edge99.split ], [ 0, %.lr.ph104.split.preheader ] ; 2 uses
  %i.bg = sext i32 %.083103 to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv120
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !39 ; 4 uses
  %i.bk = add nsw i32 %i.bj, %.083103
  %i.bl = icmp sgt i32 %i.bj, 0
  br i1 %i.bl, label %.lr.ph98.preheader, label %._crit_edge99.split

.lr.ph98.preheader:                               ; preds = %.lr.ph104.split
  %i.bm = add nsw i32 %i.bj, -1                   ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.bj to i64
  %.phi.trans.insert = zext nneg i32 %i.bm to i64
  %.phi.trans.insert135 = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.phi.trans.insert
  %.phi.trans.insert136 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert135, i64 4
  %.pre = load float, ptr %.phi.trans.insert136, align 4, !tbaa !112
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.lr.ph98._crit_edge
  %i.bn = phi float [ %.pre, %.lr.ph98.preheader ], [ %i.bq, %.lr.ph98._crit_edge ] ; 2 uses
  %indvars.iv115 = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next116, %.lr.ph98._crit_edge ] ; 5 uses
  %.08595 = phi i32 [ %i.bm, %.lr.ph98.preheader ], [ %.pre-phi143, %.lr.ph98._crit_edge ] ; 2 uses
  %.294 = phi i32 [ %.188101, %.lr.ph98.preheader ], [ %.3, %.lr.ph98._crit_edge ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv115
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !112 ; 3 uses
  %i.br = fcmp oeq float %i.bn, %i.bq
  br i1 %i.br, label %.lr.ph98._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph98
  %i.bs = sext i32 %.294 to i64
  %i.bt = getelementptr inbounds [20 x i8], ptr %i.p, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = fcmp ogt float %i.bn, %i.bq             ; 3 uses
  %spec.store.select109 = zext i1 %i.bv to i32
  store i32 %spec.store.select109, ptr %i.bu, align 4
  %i.bw = sext i32 %.08595 to i64
  %i.bx = select i1 %i.bv, i64 %i.bw, i64 %indvars.iv115
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %.08595 to i64
  %i.ca = select i1 %i.bv, i64 %indvars.iv115, i64 %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ca
  %i.cc = load <2 x float>, ptr %i.by, align 4, !tbaa !80
  %i.cd = load <2 x float>, ptr %i.cb, align 4, !tbaa !80
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.v, <4 x float> %i.y)
  store <4 x float> %i.cf, ptr %i.bt, align 4, !tbaa !80
  %i.cg = add nsw i32 %.294, 1
  br label %.lr.ph98._crit_edge

.lr.ph98._crit_edge:                              ; preds = %.lr.ph98, %bb.c
  %.3 = phi i32 [ %i.cg, %bb.c ], [ %.294, %.lr.ph98 ] ; 2 uses
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
  %i.ch = icmp sgt i32 %.188.lcssa, 1
  br i1 %i.ch, label %.lr.ph.preheader.i.i, label %stbtt__sort_edges.exit

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge105
  %wide.trip.count.i.i = zext nneg i32 %.188.lcssa to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.ci = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %indvars.iv.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !80
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, i64 12, i1 false), !tbaa.struct !109
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next32.i.i, %bb.e ] ; 4 uses
  %i.ck = getelementptr [20 x i8], ptr %i.p, i64 %indvars.iv31.i.i ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !93
  %i.cn = fcmp olt float %.sroa.4.0.copyload.i.i, %i.cm
  br i1 %i.cn, label %bb.e, label %.thread.split.loop.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.co = getelementptr i8, ptr %i.ck, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ck, ptr noundef nonnull align 4 dereferenceable(20) %i.co, i64 20, i1 false), !tbaa.struct !110
  %indvars.iv.next32.i.i = add nsw i64 %indvars.iv31.i.i, -1
  %i.cp = icmp sgt i64 %indvars.iv31.i.i, 1
  br i1 %i.cp, label %bb.d, label %.thread.i.i

.thread.split.loop.exit.i.i:                      ; preds = %bb.d
  %i.cq = trunc nuw nsw i64 %indvars.iv31.i.i to i32
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %.thread.split.loop.exit.i.i
  %.021.lcssa.i.i = phi i32 [ %i.cq, %.thread.split.loop.exit.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.cr = zext i32 %.021.lcssa.i.i to i64
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.cr
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i.i
  %i.cs = sext i32 %.021.lcssa.i.i to i64
  %i.ct = getelementptr inbounds [20 x i8], ptr %i.p, i64 %i.cs ; 2 uses
  store <2 x float> %i.cj, ptr %i.ct, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !tbaa.struct !109
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbtt__sort_edges.exit, label %.lr.ph.i.i, !llvm.loop !6

stbtt__sort_edges.exit:                           ; preds = %bb.g, %._crit_edge105.thread, %._crit_edge105
  %.188.lcssa153 = phi i32 [ 0, %._crit_edge105.thread ], [ %.188.lcssa, %._crit_edge105 ], [ %.188.lcssa, %bb.g ]
  %i.cu = phi ptr [ %i.r, %._crit_edge105.thread ], [ %i.p, %._crit_edge105 ], [ %i.p, %bb.g ] ; 2 uses
  tail call void @stbtt__rasterize_sorted_edges(ptr noundef %0, ptr noundef nonnull %i.cu, i32 noundef %.188.lcssa153, i32 poison, i32 noundef %8, i32 noundef %9, ptr poison)
  tail call void @free(ptr noundef nonnull %i.cu) #29
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
  %.tr106115 = phi i32 [ %i.bi, %tailrecurse ], [ %11, %.lr.ph.preheader ]
  %.tr102114 = phi float [ %i.ay, %tailrecurse ], [ %7, %.lr.ph.preheader ] ; 2 uses
  %.tr101113 = phi float [ %i.az, %tailrecurse ], [ %6, %.lr.ph.preheader ] ; 2 uses
  %.tr98110 = phi float [ %i.bg, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr97109 = phi float [ %i.bh, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi <2 x float> [ %i.bn, %tailrecurse ], [ %i.l, %.lr.ph.preheader ]
  %i.n = phi <2 x float> [ %i.bo, %tailrecurse ], [ %i.k, %.lr.ph.preheader ]
  %i.o = phi <2 x float> [ %i.bp, %tailrecurse ], [ %i.j, %.lr.ph.preheader ]
  %i.p = phi <2 x float> [ %i.br, %tailrecurse ], [ %i.h, %.lr.ph.preheader ]
  %i.q = phi <2 x float> [ %i.bf, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
end_hunk_0
begin_hunk_1_@stbtt_GetGlyphSDF:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.hu = fmul float %i.eg, 4.000000e+00
  %i.hv = fneg float %i.hr
  %i.hw = fmul float %i.hu, %i.hv
  %i.hx = call float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.hw) ; 2 uses
  %i.hy = fcmp olt float %i.hx, 0.000000e+00
  br i1 %i.hy, label %stbtt__solve_cubic.exit.us.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %sqrtf.us.us = call float @sqrtf(float noundef %i.hx) #29 ; 2 uses
  %i.hz = fneg float %i.hp
  %i.ia = fmul float %i.eg, 2.000000e+00
  %i.ib = fsub float %sqrtf.us.us, %i.hp
  %i.ic = fsub float %i.hz, %sqrtf.us.us
  %i.id = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ib, i64 1
  %i.ih = fdiv <2 x float> %i.ig, %i.ie           ; 2 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0
  %i.ij = extractelement <2 x float> %i.ih, i64 1
  br label %stbtt__solve_cubic.exit.us.us

bb.ad:                                            ; preds = %bb.aa
  %i.ik = call float @llvm.fabs.f32(float %i.hp)
  %i.il = fcmp ult float %i.ik, f0x35800000
  br i1 %i.il, label %stbtt__solve_cubic.exit.us.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.im = fneg float %i.hr
  %i.in = fdiv float %i.im, %i.hp
  br label %stbtt__solve_cubic.exit.us.us

stbtt__solve_cubic.exit.us.us:                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %stbtt__cuberoot.exit49.i.us.us
  %.sroa.0.0.us.us = phi float [ 0.000000e+00, %bb.ad ], [ %i.in, %bb.ae ], [ 0.000000e+00, %bb.ab ], [ %i.ii, %bb.ac ], [ %i.hf, %bb.z ], [ %i.gl, %stbtt__cuberoot.exit49.i.us.us ] ; 6 uses
  %.sroa.8.0.us.us = phi float [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %bb.ae ], [ 0.000000e+00, %bb.ab ], [ %i.ij, %bb.ac ], [ %i.hi, %bb.z ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i.us.us ] ; 6 uses
  %.sroa.11.0.us.us = phi float [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %bb.ae ], [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.ac ], [ %i.hk, %bb.z ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i.us.us ] ; 6 uses
  %i.io = phi i1 [ false, %bb.ad ], [ true, %bb.ae ], [ false, %bb.ab ], [ true, %bb.ac ], [ true, %bb.z ], [ true, %stbtt__cuberoot.exit49.i.us.us ]
  %i.ip = phi i1 [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.ab ], [ true, %bb.ac ], [ true, %bb.z ], [ false, %stbtt__cuberoot.exit49.i.us.us ]
  %i.iq = phi i1 [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.ac ], [ true, %bb.z ], [ false, %stbtt__cuberoot.exit49.i.us.us ]
  %i.ir = fmul float %i.ea, %i.ea
  %i.is = call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.ir) ; 2 uses
  %i.it = fmul float %.0428518.us.us, %.0428518.us.us
  %i.iu = fcmp olt float %i.is, %i.it
  %sqrt510.us.us = call float @llvm.sqrt.f32(float %i.is)
  %.4.us.us = select i1 %i.iu, float %sqrt510.us.us, float %.0428518.us.us ; 4 uses
  %i.iv = fcmp oge float %.sroa.0.0.us.us, 0.000000e+00
  %i.iw = fcmp ole float %.sroa.0.0.us.us, 1.000000e+00
  %i.ix = and i1 %i.iv, %i.iw
  %or.cond7.us.us = select i1 %i.io, i1 %i.ix, i1 false
  br i1 %or.cond7.us.us, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %stbtt__solve_cubic.exit.us.us
  %i.iy = fsub float 1.000000e+00, %.sroa.0.0.us.us ; 3 uses
  %i.iz = fmul float %i.iy, %i.iy                 ; 2 uses
  %i.ja = fmul nnan float %.sroa.0.0.us.us, 2.000000e+00
  %i.jb = fmul float %i.ja, %i.iy                 ; 2 uses
  %i.jc = fmul float %i.do, %i.jb
  %i.jd = call float @llvm.fmuladd.f32(float %i.iz, float %i.dn, float %i.jc)
  %i.je = fmul nnan float %.sroa.0.0.us.us, %.sroa.0.0.us.us ; 2 uses
  %i.jf = call float @llvm.fmuladd.f32(float %i.je, float %i.du, float %i.jd)
  %i.jg = fmul float %i.dr, %i.jb
  %i.jh = call float @llvm.fmuladd.f32(float %i.iz, float %i.dq, float %i.jg)
  %i.ji = call float @llvm.fmuladd.f32(float %i.je, float %i.dx, float %i.jh)
  %i.jj = fsub float %i.jf, %i.bz                 ; 2 uses
  %i.jk = fsub float %i.ji, %i.bs                 ; 2 uses
  %i.jl = fmul float %i.jk, %i.jk
  %i.jm = call float @llvm.fmuladd.f32(float %i.jj, float %i.jj, float %i.jl) ; 2 uses
  %i.jn = fmul float %.4.us.us, %.4.us.us
  %i.jo = fcmp olt float %i.jm, %i.jn
  br i1 %i.jo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %sqrt511.us.us = call float @llvm.sqrt.f32(float %i.jm)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %stbtt__solve_cubic.exit.us.us
  %.5.us.us = phi float [ %sqrt511.us.us, %bb.ag ], [ %.4.us.us, %bb.af ], [ %.4.us.us, %stbtt__solve_cubic.exit.us.us ] ; 4 uses
  %i.jp = fcmp oge float %.sroa.8.0.us.us, 0.000000e+00
  %i.jq = fcmp ole float %.sroa.8.0.us.us, 1.000000e+00
  %i.jr = and i1 %i.jp, %i.jq
  %or.cond13.us.us = select i1 %i.ip, i1 %i.jr, i1 false
  br i1 %or.cond13.us.us, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.js = fsub float 1.000000e+00, %.sroa.8.0.us.us ; 3 uses
  %i.jt = fmul float %i.js, %i.js                 ; 2 uses
  %i.ju = fmul nnan float %.sroa.8.0.us.us, 2.000000e+00
  %i.jv = fmul float %i.ju, %i.js                 ; 2 uses
  %i.jw = fmul float %i.do, %i.jv
  %i.jx = call float @llvm.fmuladd.f32(float %i.jt, float %i.dn, float %i.jw)
  %i.jy = fmul nnan float %.sroa.8.0.us.us, %.sroa.8.0.us.us ; 2 uses
  %i.jz = call float @llvm.fmuladd.f32(float %i.jy, float %i.du, float %i.jx)
  %i.ka = fmul float %i.dr, %i.jv
  %i.kb = call float @llvm.fmuladd.f32(float %i.jt, float %i.dq, float %i.ka)
  %i.kc = call float @llvm.fmuladd.f32(float %i.jy, float %i.dx, float %i.kb)
  %i.kd = fsub float %i.jz, %i.bz                 ; 2 uses
  %i.ke = fsub float %i.kc, %i.bs                 ; 2 uses
  %i.kf = fmul float %i.ke, %i.ke
  %i.kg = call float @llvm.fmuladd.f32(float %i.kd, float %i.kd, float %i.kf) ; 2 uses
  %i.kh = fmul float %.5.us.us, %.5.us.us
  %i.ki = fcmp olt float %i.kg, %i.kh
  br i1 %i.ki, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %sqrt512.us.us = call float @llvm.sqrt.f32(float %i.kg)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.6.us.us = phi float [ %sqrt512.us.us, %bb.aj ], [ %.5.us.us, %bb.ai ], [ %.5.us.us, %bb.ah ] ; 4 uses
  %i.kj = fcmp oge float %.sroa.11.0.us.us, 0.000000e+00
  %i.kk = fcmp ole float %.sroa.11.0.us.us, 1.000000e+00
  %i.kl = and i1 %i.kj, %i.kk
  %or.cond19.us.us = select i1 %i.iq, i1 %i.kl, i1 false
  br i1 %or.cond19.us.us, label %bb.al, label %.thread.us.us

bb.al:                                            ; preds = %bb.ak
  %i.km = fsub float 1.000000e+00, %.sroa.11.0.us.us ; 3 uses
  %i.kn = fmul float %i.km, %i.km                 ; 2 uses
  %i.ko = fmul nnan float %.sroa.11.0.us.us, 2.000000e+00
  %i.kp = fmul float %i.ko, %i.km                 ; 2 uses
  %i.kq = fmul float %i.do, %i.kp
  %i.kr = call float @llvm.fmuladd.f32(float %i.kn, float %i.dn, float %i.kq)
  %i.ks = fmul nnan float %.sroa.11.0.us.us, %.sroa.11.0.us.us ; 2 uses
  %i.kt = call float @llvm.fmuladd.f32(float %i.ks, float %i.du, float %i.kr)
  %i.ku = fmul float %i.dr, %i.kp
  %i.kv = call float @llvm.fmuladd.f32(float %i.kn, float %i.dq, float %i.ku)
  %i.kw = call float @llvm.fmuladd.f32(float %i.ks, float %i.dx, float %i.kv)
  %i.kx = fsub float %i.kt, %i.bz                 ; 2 uses
  %i.ky = fsub float %i.kw, %i.bs                 ; 2 uses
  %i.kz = fmul float %i.ky, %i.ky
  %i.la = call float @llvm.fmuladd.f32(float %i.kx, float %i.kx, float %i.kz) ; 2 uses
  %i.lb = fmul float %.6.us.us, %.6.us.us
  %i.lc = fcmp olt float %i.la, %i.lb
  br i1 %i.lc, label %bb.am, label %.thread.us.us

bb.am:                                            ; preds = %bb.al
  %sqrt513.us.us = call float @llvm.sqrt.f32(float %i.la)
  br label %.thread.us.us

bb.an:                                            ; preds = %bb.q
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv531
  %i.le = load float, ptr %i.ld, align 4, !tbaa !80 ; 2 uses
  %i.lf = fcmp une float %i.le, 0.000000e+00
  br i1 %i.lf, label %bb.ao, label %.thread.us.us

bb.ao:                                            ; preds = %bb.an
  %i.lg = getelementptr i8, ptr %i.cc, i64 -14
  %i.lh = load <2 x i16>, ptr %i.lg, align 2, !tbaa !70
  %i.li = sitofp <2 x i16> %i.lh to <2 x float>   ; 2 uses
  %i.lj = extractelement <2 x float> %i.li, i64 0
  %i.lk = fmul float %1, %i.lj
  %i.ll = extractelement <2 x float> %i.li, i64 1
  %i.lm = fmul float %i.ll, %i.ao
  %i.ln = fmul float %.0428518.us.us, %.0428518.us.us
  %i.lo = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lp = insertelement <2 x float> %i.lo, float %i.lm, i64 1
  %i.lq = insertelement <2 x float> %i.cf, float %i.bs, i64 0
  %i.lr = fsub <2 x float> %i.lp, %i.lq           ; 5 uses
  %i.ls = insertelement <2 x float> %i.cf, float %i.lk, i64 1
  %i.lt = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lu = insertelement <2 x float> %i.lt, float %i.bz, i64 0
  %i.lv = fsub <2 x float> %i.ls, %i.lu           ; 5 uses
  %i.lw = fneg <2 x float> %i.lv
  %i.lx = shufflevector <2 x float> %i.lr, <2 x float> %i.lw, <2 x i32> <i32 0, i32 2>
  %i.ly = fmul <2 x float> %i.lr, %i.lx
  %i.lz = shufflevector <2 x float> %i.lv, <2 x float> %i.lr, <2 x i32> <i32 0, i32 2>
  %i.ma = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lz, <2 x float> %i.ly) ; 2 uses
  %i.mb = extractelement <2 x float> %i.ma, i64 0 ; 2 uses
  %i.mc = fcmp olt float %i.mb, %i.ln
  %sqrt509.us.us = call float @llvm.sqrt.f32(float %i.mb)
  %.1429.us.us = select i1 %i.mc, float %sqrt509.us.us, float %.0428518.us.us ; 3 uses
  %i.md = extractelement <2 x float> %i.ma, i64 1
  %i.me = call float @llvm.fabs.f32(float %i.md)
  %i.mf = fmul float %i.le, %i.me                 ; 2 uses
  %i.mg = fcmp olt float %i.mf, %.1429.us.us
  br i1 %i.mg, label %bb.ap, label %.thread.us.us

bb.ap:                                            ; preds = %bb.ao
  %i.mh = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mi = fmul <2 x float> %i.mh, %i.lr
  %i.mj = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> %i.lv, <2 x float> %i.mi) ; 2 uses
  %i.ml = extractelement <2 x float> %i.mk, i64 0
  %i.mm = fneg float %i.ml
  %i.mn = extractelement <2 x float> %i.mk, i64 1
  %i.mo = fdiv float %i.mm, %i.mn                 ; 2 uses
  %i.mp = fcmp oge float %i.mo, 0.000000e+00
  %i.mq = fcmp ole float %i.mo, 1.000000e+00
  %or.cond.us.us = and i1 %i.mp, %i.mq
  %.2430.us.us = select i1 %or.cond.us.us, float %i.mf, float %.1429.us.us
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.r, %bb.q
  %.9.us.us = phi float [ %.0428518.us.us, %bb.q ], [ %.1429.us.us, %bb.ao ], [ %.2430.us.us, %bb.ap ], [ %.6.us.us, %bb.ak ], [ %.0428518.us.us, %bb.r ], [ %sqrt513.us.us, %bb.am ], [ %.6.us.us, %bb.al ], [ %.0428518.us.us, %bb.an ] ; 3 uses
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next532, %wide.trip.count534
  br i1 %exitcond535.not, label %._crit_edge.us.us, label %bb.q, !llvm.loop !240

._crit_edge.us.us:                                ; preds = %.thread.us.us
  %12 = icmp eq i32 %i.cb, 0
  %13 = fneg float %.9.us.us
  %.10.us.us = select i1 %12, float %13, float %.9.us.us
  %14 = call float @llvm.fmuladd.f32(float %5, float %.10.us.us, float %i.bn) ; 3 uses
  %15 = fcmp olt float %14, 0.000000e+00
  br i1 %15, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.us.us
  %i.mr = fcmp ogt float %14, 2.550000e+02
  %spec.store.select.us.us = select i1 %i.mr, float 2.550000e+02, float %14
  %i.ms = fptoui float %spec.store.select.us.us to i8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.us.us
  %.0431.us.us = phi i8 [ %i.ms, %bb.aq ], [ 0, %._crit_edge.us.us ]
  %i.mt = add i32 %i.bw, %i.bx
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds i8, ptr %i.be, i64 %i.mu
  store i8 %.0431.us.us, ptr %i.mv, align 1, !tbaa !37
  %indvars.iv.next537 = add nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.mw = icmp slt i64 %indvars.iv.next537, %i.bp
  br i1 %i.mw, label %.lr.ph519.us.us, label %._crit_edge522.split.us.us, !llvm.loop !241

._crit_edge522.split.us.us:                       ; preds = %bb.ar
  %i.mx = add nsw i32 %.0435523.us, 1             ; 2 uses
  %i.my = icmp slt i32 %i.mx, %i.al
  br i1 %i.my, label %.preheader.us, label %._crit_edge.split, !llvm.loop !242

bb.as:                                            ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aw ] ; 4 uses
  %.0432516 = phi i64 [ %i.bk, %.lr.ph ], [ %indvars.iv, %bb.aw ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  %i.nb = load i8, ptr %i.na, align 2, !tbaa !65
  switch i8 %i.nb, label %bb.aw [
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.nc = load i16, ptr %i.mz, align 2, !tbaa !66
  %i.nd = sitofp i16 %i.nc to float
  %i.ne = fmul float %1, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !67
  %i.nh = sitofp i16 %i.ng to float
  %i.ni = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %.0432516 ; 2 uses
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !66
  %i.nk = sitofp i16 %i.nj to float
  %i.nl = fmul float %1, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 2
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !67
  %i.no = sitofp i16 %i.nn to float
  %i.np = fsub float %i.nl, %i.ne                 ; 2 uses
  %i.nq = fmul float %1, %i.nh
  %i.nr = fmul float %1, %i.no
  %i.ns = fsub float %i.nq, %i.nr                 ; 2 uses
  %i.nt = fmul float %i.ns, %i.ns
  %i.nu = call float @llvm.fmuladd.f32(float %i.np, float %i.np, float %i.nt)
  %sqrt = call float @llvm.sqrt.f32(float %i.nu)  ; 2 uses
  %i.nv = fcmp olt float %sqrt, f0x3A800000
  %i.nw = fdiv float 1.000000e+00, %sqrt
  %i.nx = select i1 %i.nv, float 0.000000e+00, float %i.nw
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.ny = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %.0432516 ; 2 uses
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !66
  %i.oa = sitofp i16 %i.nz to float
  %i.ob = fmul float %1, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !67
  %i.oe = sitofp i16 %i.od to float
  %i.of = load <4 x i16>, ptr %i.mz, align 2, !tbaa !70
  %i.og = sitofp <4 x i16> %i.of to <4 x float>   ; 4 uses
  %i.oh = extractelement <4 x float> %i.og, i64 2
  %i.oi = fmul float %1, %i.oh
  %i.oj = extractelement <4 x float> %i.og, i64 3
  %i.ok = fmul float %i.oj, %i.ao
  %i.ol = extractelement <4 x float> %i.og, i64 0
  %i.om = fmul float %1, %i.ol
  %i.on = extractelement <4 x float> %i.og, i64 1
  %i.oo = fmul float %i.on, %i.ao
  %i.op = call float @llvm.fmuladd.f32(float %i.oi, float -2.000000e+00, float %i.om)
  %i.oq = fadd float %i.ob, %i.op                 ; 2 uses
  %i.or = call float @llvm.fmuladd.f32(float %i.ok, float -2.000000e+00, float %i.oo)
  %i.os = fmul float %1, %i.oe
  %i.ot = fsub float %i.or, %i.os                 ; 2 uses
  %i.ou = fmul float %i.ot, %i.ot
  %i.ov = call float @llvm.fmuladd.f32(float %i.oq, float %i.oq, float %i.ou) ; 2 uses
  %i.ow = fcmp ult float %i.ov, f0x35800000
  br i1 %i.ow, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ox = fdiv float 1.000000e+00, %i.ov
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.au, %bb.av, %bb.at
  %.sink = phi float [ %i.ox, %bb.av ], [ 0.000000e+00, %bb.au ], [ %i.nx, %bb.at ], [ 0.000000e+00, %bb.as ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  store float %.sink, ptr %i.oy, align 4, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader514, label %bb.as, !llvm.loop !243

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge522.split
  %.0435523 = phi i32 [ %i.pt, %._crit_edge522.split ], [ %i.ah, %.preheader.lr.ph.split ] ; 3 uses
  %i.oz = sitofp i32 %.0435523 to float
  %i.pa = fadd float %i.oz, 5.000000e-01
  %i.pb = fdiv float %i.pa, %i.ao
  %i.pc = sub nsw i32 %.0435523, %i.ah
  %i.pd = mul nuw nsw i32 %i.pc, %i.am
  %i.pe = sub i32 %i.pd, %i.af
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.az
  %indvars.iv528 = phi i64 [ %i.bo, %.preheader ], [ %indvars.iv.next529, %bb.az ] ; 2 uses
  %i.pf = trunc nsw i64 %indvars.iv528 to i32     ; 2 uses
  %i.pg = sitofp i32 %i.pf to float
  %i.ph = fadd float %i.pg, 5.000000e-01
  %i.pi = fdiv float %i.ph, %1
  %i.pj = call i32 @stbtt__compute_crossings_x(float noundef %i.pi, float noundef %i.pb, i32 noundef %.0.i.fr, ptr noundef %.pre.pre)
  %i.pk = icmp eq i32 %i.pj, 0
  %.10 = select i1 %i.pk, float -9.999990e+05, float 9.999990e+05
  %i.pl = call float @llvm.fmuladd.f32(float %5, float %.10, float %i.bn) ; 3 uses
  %i.pm = fcmp olt float %i.pl, 0.000000e+00
  br i1 %i.pm, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pn = fcmp ogt float %i.pl, 2.550000e+02
  %spec.store.select = select i1 %i.pn, float 2.550000e+02, float %i.pl
  %i.po = fptoui float %spec.store.select to i8
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.0431 = phi i8 [ %i.po, %bb.ay ], [ 0, %bb.ax ]
  %i.pp = add i32 %i.pe, %i.pf
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds i8, ptr %i.be, i64 %i.pq
  store i8 %.0431, ptr %i.pr, align 1, !tbaa !37
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.ps = icmp slt i64 %indvars.iv.next529, %i.bp
  br i1 %i.ps, label %bb.ax, label %._crit_edge522.split, !llvm.loop !241

._crit_edge522.split:                             ; preds = %bb.az
  %i.pt = add nsw i32 %.0435523, 1                ; 2 uses
  %i.pu = icmp slt i32 %i.pt, %i.al
  br i1 %i.pu, label %.preheader, label %._crit_edge.split, !llvm.loop !242

._crit_edge.split:                                ; preds = %._crit_edge522.split, %._crit_edge522.split.us.us, %.preheader.lr.ph, %.preheader514
  call void @free(ptr noundef %i.bh) #29
  call void @free(ptr noundef %.pre.pre) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %bb.ba

bb.ba:                                            ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread, %stbtt_GetGlyphBitmapBoxSubpixel.exit, %bb.a, %._crit_edge.split
  %.0 = phi ptr [ %i.be, %._crit_edge.split ], [ null, %bb.a ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbtt_GetCodepointSDF(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #25 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %2)
  %i.b = tail call ptr @stbtt_GetGlyphSDF(ptr noundef %0, float noundef %1, i32 noundef %i.a, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @stbtt_FreeSDF(ptr noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #19 {
bb.a:
  tail call void @free(ptr noundef %0) #29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -2147483647, -2147483648) i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %.not97 = icmp eq i32 %3, 0
  br i1 %.not97, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.064100 = phi i32 [ %.2, %bb.s ], [ 0, %bb.a ] ; 12 uses
  %.06699 = phi i32 [ %i.ck, %bb.s ], [ %3, %bb.a ] ; 4 uses
  %.07098 = phi ptr [ %i.cj, %bb.s ], [ %2, %bb.a ] ; 7 uses
  %i.a = load i8, ptr %.07098, align 1, !tbaa !37 ; 3 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %.07098, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = or disjoint i32 %i.c, %i.f               ; 5 uses
  %i.h = icmp samesign ult i32 %i.g, 128
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %.not93 = icmp slt i32 %.064100, %1
  br i1 %.not93, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.064100, 1
  %i.j = sext i32 %.064100 to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37
  %i.m = zext i8 %i.l to i32
  %.not94 = icmp eq i32 %i.g, %i.m
  br i1 %.not94, label %bb.s, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp ult i8 %i.a, 8
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %.064100, 1                  ; 2 uses
  %.not90 = icmp slt i32 %i.o, %1
  br i1 %.not90, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %.064100 to i64
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  %i.s = zext i8 %i.r to i32
  %i.t = lshr i32 %i.g, 6
end_hunk_1
