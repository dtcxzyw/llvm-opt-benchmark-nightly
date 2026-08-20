inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvgDuplicatePath:bb.a

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !66
  %i.j = sext i32 %i.c to i64
  %i.k = shl nsw i64 %i.j, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %i.i, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %i.c, ptr %i.l, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i8, ptr %i.o, align 4, !tbaa !116
  %i.q = getelementptr inbounds nuw i8, ptr %calloc, i64 12
  store i8 %i.p, ptr %i.q, align 4, !tbaa !116
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %calloc) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.a, %bb.d
  %.0 = phi ptr [ %calloc, %bb.d ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @nsvgCreateRasterizer() local_unnamed_addr #9 {
bb.a:
  %calloc = tail call dereferenceable_or_null(128) ptr @calloc(i64 1, i64 128) ; 3 uses
  %i.a = icmp eq ptr %calloc, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store <2 x float> <float 2.500000e-01, float f0x3C23D70A>, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %calloc
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @nsvgDeleteRasterizer(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %.not24 = icmp eq ptr %i.c, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.025, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  tail call void @free(ptr noundef nonnull %.025) #30
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126  ; 2 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.g) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  %.not21 = icmp eq ptr %i.i, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.i) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 2 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.k) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129  ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.m) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @free(ptr noundef nonnull %0) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nsvgRasterize(ptr noundef initializes((104, 124)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %.sroa.7269.i = alloca [3 x i8], align 1        ; 4 uses
  %.sroa.14.i = alloca [3 x i8], align 1          ; 6 uses
  %.sroa.7.i = alloca [3 x i8], align 1           ; 4 uses
  %9 = alloca %struct.NSVGpoint, align 8          ; 4 uses
  %10 = alloca %struct.NSVGcachedPaint, align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %5, ptr %i.a, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %6, ptr %i.b, align 8, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %7, ptr %i.c, align 4, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %8, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !134
  %i.g = icmp sgt i32 %6, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %6, ptr %i.e, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129
  %i.j = sext i32 %6 to i64
  %i.k = tail call ptr @realloc(ptr noundef %i.i, i64 noundef %i.j) #32 ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !tbaa !129
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.dd, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = icmp sgt i32 %7, 0                       ; 3 uses
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = shl nsw i32 %6, 2
  %i.o = sext i32 %i.n to i64                     ; 9 uses
  %i.p = sext i32 %8 to i64                       ; 9 uses
  %wide.trip.count = zext nneg i32 %7 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.q = icmp ult i32 %7, 8
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.d ]
  %i.r = mul nsw i64 %indvars.iv, %i.p
  %i.s = getelementptr inbounds i8, ptr %5, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.t = mul nsw i64 %indvars.iv.next, %i.p
  %i.u = getelementptr inbounds i8, ptr %5, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.v = mul nsw i64 %indvars.iv.next.1, %i.p
  %i.w = getelementptr inbounds i8, ptr %5, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.x = mul nsw i64 %indvars.iv.next.2, %i.p
  %i.y = getelementptr inbounds i8, ptr %5, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %i.z = mul nsw i64 %indvars.iv.next.3, %i.p
  %i.aa = getelementptr inbounds i8, ptr %5, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %i.ab = mul nsw i64 %indvars.iv.next.4, %i.p
  %i.ac = getelementptr inbounds i8, ptr %5, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %i.ad = mul nsw i64 %indvars.iv.next.5, %i.p
  %i.ae = getelementptr inbounds i8, ptr %5, i64 %i.ad
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %i.af = mul nsw i64 %indvars.iv.next.6, %i.p
  %i.ag = getelementptr inbounds i8, ptr %5, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !135

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod326 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod326)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ah = mul nsw i64 %indvars.iv.epil, %i.p
  %i.ai = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 0, i64 %i.o, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !136

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0110211 = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %.not212 = icmp eq ptr %.0110211, null
  br i1 %.not212, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 33 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 16 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 28 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.phi.trans.insert.i191.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %4, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <4 x float> poison, float %4, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ba = insertelement <4 x float> poison, float %2, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %3, i64 1
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.bd = insertelement <2 x float> poison, float %4, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = insertelement <4 x float> poison, float %4, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bh = insertelement <4 x float> poison, float %2, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %3, i64 1
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph215, %.loopexit
  %.0110213 = phi ptr [ %.0110211, %.lr.ph215 ], [ %.0110, %.loopexit ] ; 15 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0110213, i64 150
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !138
  %i.bm = and i8 %i.bl, 1
  %.not115 = icmp eq i8 %i.bm, 0
  br i1 %.not115, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.0110213, i64 149
  %i.bo = getelementptr inbounds nuw i8, ptr %.0110213, i64 80 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0110213, i64 100
  %i.bq = getelementptr inbounds nuw i8, ptr %.0110213, i64 144
  %i.br = getelementptr inbounds nuw i8, ptr %.0110213, i64 141
  %i.bs = getelementptr inbounds nuw i8, ptr %.0110213, i64 142
  %i.bt = getelementptr inbounds nuw i8, ptr %.0110213, i64 320 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0110213, i64 140 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0110213, i64 108 ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0110213, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %.0110213, i64 96 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0110213, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0110213, i64 148
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %.thread
  %.0210 = phi i32 [ 0, %.preheader ], [ %i.acf, %.thread ] ; 2 uses
  %i.ca = load i8, ptr %i.bn, align 1, !tbaa !139
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %.0210, 1
  %i.cd = lshr i32 %i.cb, %i.cc
  %i.ce = and i32 %i.cd, 3
  switch i32 %i.ce, label %.thread [
    i32 0, label %bb.h
    i32 2, label %bb.r
  ]

bb.h:                                             ; preds = %bb.g
  %i.cf = load i8, ptr %i.by, align 8, !tbaa !43
  %.not116 = icmp eq i8 %i.cf, 0
  br i1 %.not116, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.06.i = load ptr, ptr %i.ak, align 8, !tbaa !140 ; 3 uses
  %.not7.i = icmp eq ptr %.06.i, null
  br i1 %.not7.i, label %nsvg__resetPool.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.08.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.06.i, %bb.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i, i64 1024
  store i32 0, ptr %i.cg, align 8, !tbaa !141
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i, i64 1032
  %.0.i = load ptr, ptr %i.ch, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %nsvg__resetPool.exit, label %.lr.ph.i, !llvm.loop !142

nsvg__resetPool.exit:                             ; preds = %.lr.ph.i, %bb.i
  store ptr %.06.i, ptr %i.al, align 8, !tbaa !143
  store ptr null, ptr %i.am, align 8, !tbaa !144
  store i32 0, ptr %i.an, align 8, !tbaa !145
  %.04867.i = load ptr, ptr %i.bt, align 8, !tbaa !63 ; 2 uses
  %.not68.i = icmp eq ptr %.04867.i, null
  br i1 %.not68.i, label %._crit_edge205.thread, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %nsvg__resetPool.exit, %._crit_edge66.i
  %.04869.i = phi ptr [ %.048.i, %._crit_edge66.i ], [ %.04867.i, %nsvg__resetPool.exit ] ; 5 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !146
  %i.ci = load ptr, ptr %.04869.i, align 8, !tbaa !66
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !32
  %i.ck = fmul <2 x float> %i.be, %i.cj
  %i.cl = load i32, ptr %i.ap, align 4, !tbaa !147
  %.not29.i.i = icmp sgt i32 %i.cl, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %.lr.ph71.i
  %.pre.i.i = load ptr, ptr %i.aq, align 8, !tbaa !127
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph71.i
  store i32 64, ptr %i.ap, align 4, !tbaa !147
  %i.cm = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.cn = tail call dereferenceable_or_null(2048) ptr @realloc(ptr noundef %i.cm, i64 noundef 2048) #32 ; 3 uses
  store ptr %i.cn, ptr %i.aq, align 8, !tbaa !127
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %nsvg__addPathPoint.exit.i, label %._crit_edge30.i.i

._crit_edge30.i.i:                                ; preds = %bb.j
  %.pre31.i.i = load i32, ptr %i.ao, align 8, !tbaa !146
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge30.i.i, %._crit_edge.i.i
  %i.cp = phi i32 [ 0, %._crit_edge.i.i ], [ %.pre31.i.i, %._crit_edge30.i.i ] ; 2 uses
  %i.cq = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cn, %._crit_edge30.i.i ]
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds [32 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  store <2 x float> %i.ck, ptr %i.cs, align 4, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  store i8 0, ptr %i.ct, align 4, !tbaa !148
  %i.cu = add nsw i32 %i.cp, 1
  store i32 %i.cu, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__addPathPoint.exit.i

nsvg__addPathPoint.exit.i:                        ; preds = %bb.k, %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %.04869.i, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !64
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %.lr.ph.i121, label %._crit_edge.i

.lr.ph.i121:                                      ; preds = %nsvg__addPathPoint.exit.i, %.lr.ph.i121
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i121 ], [ 0, %nsvg__addPathPoint.exit.i ] ; 2 uses
  %i.cy = load ptr, ptr %.04869.i, align 8, !tbaa !66
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i ; 2 uses
  %i.da = load <4 x float>, ptr %i.cz, align 4, !tbaa !32
  %i.db = fmul <4 x float> %i.bg, %i.da           ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load <4 x float>, ptr %i.dc, align 4, !tbaa !32
  %i.de = fmul <4 x float> %i.bg, %i.dd           ; 4 uses
  %i.df = extractelement <4 x float> %i.db, i64 0
  %i.dg = extractelement <4 x float> %i.db, i64 1
  %i.dh = extractelement <4 x float> %i.db, i64 2
  %i.di = extractelement <4 x float> %i.db, i64 3
  %i.dj = extractelement <4 x float> %i.de, i64 0
  %i.dk = extractelement <4 x float> %i.de, i64 1
  %i.dl = extractelement <4 x float> %i.de, i64 2
  %i.dm = extractelement <4 x float> %i.de, i64 3
  tail call fastcc void @nsvg__flattenCubicBez(ptr noundef nonnull %0, float noundef %i.df, float noundef %i.dg, float noundef %i.dh, float noundef %i.di, float noundef %i.dj, float noundef %i.dk, float noundef %i.dl, float noundef %i.dm, i32 noundef 0, i32 noundef 0)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dn = load i32, ptr %i.cv, align 8, !tbaa !64
  %i.do = add nsw i32 %i.dn, -1
  %i.dp = trunc nuw i64 %indvars.iv.next.i to i32
  %i.dq = icmp sgt i32 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph.i121, label %._crit_edge.i, !llvm.loop !150

._crit_edge.i:                                    ; preds = %.lr.ph.i121, %nsvg__addPathPoint.exit.i
  %i.dr = load ptr, ptr %.04869.i, align 8, !tbaa !66
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !32
  %i.dt = fmul <2 x float> %i.be, %i.ds           ; 3 uses
  %i.du = load i32, ptr %i.ao, align 8, !tbaa !146 ; 5 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  %i.dw = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.dx = zext nneg i32 %i.du to i64
  %i.dy = getelementptr [32 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 -32
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !151
  %i.eb = getelementptr i8, ptr %i.dy, i64 -28
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !152
  %i.ed = load float, ptr %i.ar, align 4, !tbaa !153 ; 2 uses
  %i.ee = extractelement <2 x float> %i.dt, i64 0
  %i.ef = fsub float %i.ee, %i.ea                 ; 2 uses
  %i.eg = extractelement <2 x float> %i.dt, i64 1
  %i.eh = fsub float %i.eg, %i.ec                 ; 2 uses
  %i.ei = fmul float %i.eh, %i.eh
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ei)
  %i.ek = fmul float %i.ed, %i.ed
  %i.el = fcmp uge float %i.ej, %i.ek
  br i1 %i.el, label %bb.m, label %.lr.ph65.preheader.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %i.em = load i32, ptr %i.ap, align 4, !tbaa !147 ; 3 uses
  %.not29.i50.i = icmp slt i32 %i.du, %i.em
  br i1 %.not29.i50.i, label %._crit_edge.i54.i, label %bb.n

._crit_edge.i54.i:                                ; preds = %bb.m
  %.pre.i56.i = load ptr, ptr %i.aq, align 8, !tbaa !127
  br label %._crit_edge30.i52.i

bb.n:                                             ; preds = %bb.m
  %i.en = icmp sgt i32 %i.em, 0
  %i.eo = shl nuw nsw i32 %i.em, 1
  %spec.select.i51.i = select i1 %i.en, i32 %i.eo, i32 64 ; 2 uses
  store i32 %spec.select.i51.i, ptr %i.ap, align 4, !tbaa !147
  %i.ep = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.eq = zext nneg i32 %spec.select.i51.i to i64
  %i.er = shl nuw nsw i64 %i.eq, 5
  %i.es = tail call ptr @realloc(ptr noundef %i.ep, i64 noundef %i.er) #32 ; 3 uses
  store ptr %i.es, ptr %i.aq, align 8, !tbaa !127
  %i.et = icmp eq ptr %i.es, null
  %.pre.i = load i32, ptr %i.ao, align 8, !tbaa !146 ; 2 uses
  br i1 %i.et, label %nsvg__addPathPoint.exit57.i, label %._crit_edge30.i52.i

._crit_edge30.i52.i:                              ; preds = %bb.n, %._crit_edge.i54.i
  %i.eu = phi i32 [ %i.du, %._crit_edge.i54.i ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.ev = phi ptr [ %.pre.i56.i, %._crit_edge.i54.i ], [ %i.es, %bb.n ]
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds [32 x i8], ptr %i.ev, i64 %i.ew ; 2 uses
  store <2 x float> %i.dt, ptr %i.ex, align 4, !tbaa !32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  store i8 0, ptr %i.ey, align 4, !tbaa !148
  %i.ez = add nsw i32 %i.eu, 1                    ; 2 uses
  store i32 %i.ez, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__addPathPoint.exit57.i

nsvg__addPathPoint.exit57.i:                      ; preds = %._crit_edge30.i52.i, %bb.n
  %i.fa = phi i32 [ %i.ez, %._crit_edge30.i52.i ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph65.preheader.i, label %._crit_edge66.i

.lr.ph65.preheader.i:                             ; preds = %nsvg__addPathPoint.exit57.i, %bb.l
  %i.fc = phi i32 [ %i.fa, %nsvg__addPathPoint.exit57.i ], [ %i.du, %bb.l ]
  %i.fd = add nsw i32 %i.fc, -1
  %i.fe = zext nneg i32 %i.fd to i64
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %nsvg__addEdge.exit.i, %.lr.ph65.preheader.i
  %indvars.iv74.i = phi i64 [ 0, %.lr.ph65.preheader.i ], [ %indvars.iv.next75.i, %nsvg__addEdge.exit.i ] ; 3 uses
  %.04963.i = phi i64 [ %i.fe, %.lr.ph65.preheader.i ], [ %indvars.iv74.i, %nsvg__addEdge.exit.i ]
  %i.ff = load ptr, ptr %i.aq, align 8, !tbaa !127 ; 2 uses
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %.04963.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %indvars.iv74.i ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load <2 x float>, ptr %i.fg, align 4, !tbaa !32 ; 2 uses
  %i.fl = load float, ptr %i.fh, align 4, !tbaa !152 ; 2 uses
  %i.fm = load <2 x float>, ptr %i.fi, align 4, !tbaa !32 ; 2 uses
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !152 ; 2 uses
  %i.fo = fcmp oeq float %i.fl, %i.fn
  br i1 %i.fo, label %nsvg__addEdge.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph65.i
  %i.fp = load i32, ptr %i.an, align 8, !tbaa !145 ; 2 uses
  %i.fq = load i32, ptr %i.av, align 4, !tbaa !154 ; 3 uses
  %.not.i.i = icmp slt i32 %i.fp, %i.fq
  br i1 %.not.i.i, label %._crit_edge.i59.i, label %bb.p

._crit_edge.i59.i:                                ; preds = %bb.o
  %.pre.i61.i = load ptr, ptr %i.au, align 8, !tbaa !126
  br label %.sink.split.i.i

bb.p:                                             ; preds = %bb.o
  %i.fr = icmp sgt i32 %i.fq, 0
  %i.fs = shl nuw nsw i32 %i.fq, 1
  %spec.select.i58.i = select i1 %i.fr, i32 %i.fs, i32 64 ; 2 uses
  store i32 %spec.select.i58.i, ptr %i.av, align 4, !tbaa !154
  %i.ft = load ptr, ptr %i.au, align 8, !tbaa !126
  %i.fu = zext nneg i32 %spec.select.i58.i to i64
  %i.fv = shl nuw nsw i64 %i.fu, 5
  %i.fw = tail call ptr @realloc(ptr noundef %i.ft, i64 noundef %i.fv) #32 ; 3 uses
  store ptr %i.fw, ptr %i.au, align 8, !tbaa !126
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %nsvg__addEdge.exit.i, label %._crit_edge36.i.i

._crit_edge36.i.i:                                ; preds = %bb.p
  %.pre37.i.i = load i32, ptr %i.an, align 8, !tbaa !145
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge36.i.i, %._crit_edge.i59.i
  %i.fy = phi i32 [ %i.fp, %._crit_edge.i59.i ], [ %.pre37.i.i, %._crit_edge36.i.i ] ; 2 uses
  %i.fz = phi ptr [ %.pre.i61.i, %._crit_edge.i59.i ], [ %i.fw, %._crit_edge36.i.i ]
  %i.ga = sext i32 %i.fy to i64
  %i.gb = getelementptr inbounds [32 x i8], ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = add nsw i32 %i.fy, 1
  store i32 %i.gc, ptr %i.an, align 8, !tbaa !145
  %i.gd = fcmp olt float %i.fl, %i.fn             ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %.49.i.i = select i1 %i.gd, i32 1, i32 -1
  %i.gf = insertelement <4 x i1> poison, i1 %i.gd, i64 0
  %i.gg = shufflevector <4 x i1> %i.gf, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.gh = shufflevector <2 x float> %i.fk, <2 x float> %i.fm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gi = shufflevector <2 x float> %i.fm, <2 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gj = select <4 x i1> %i.gg, <4 x float> %i.gh, <4 x float> %i.gi
  store <4 x float> %i.gj, ptr %i.gb, align 8, !tbaa !32
  store i32 %.49.i.i, ptr %i.ge, align 8, !tbaa !155
  br label %nsvg__addEdge.exit.i

nsvg__addEdge.exit.i:                             ; preds = %.sink.split.i.i, %bb.p, %.lr.ph65.i
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.gk = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next75.i, %i.gl
  br i1 %i.gm, label %.lr.ph65.i, label %._crit_edge66.i, !llvm.loop !157

._crit_edge66.i:                                  ; preds = %nsvg__addEdge.exit.i, %nsvg__addPathPoint.exit57.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.04869.i, i64 32
  %.048.i = load ptr, ptr %i.gn, align 8, !tbaa !63 ; 2 uses
  %.not.i120 = icmp eq ptr %.048.i, null
  br i1 %.not.i120, label %nsvg__flattenShape.exit, label %.lr.ph71.i, !llvm.loop !158

nsvg__flattenShape.exit:                          ; preds = %._crit_edge66.i
  %.pre236 = load i32, ptr %i.an, align 8, !tbaa !145 ; 6 uses
  %i.go = icmp sgt i32 %.pre236, 0
  br i1 %i.go, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %nsvg__flattenShape.exit
  %i.gp = load ptr, ptr %i.au, align 8, !tbaa !126 ; 3 uses
  %wide.trip.count233 = zext nneg i32 %.pre236 to i64 ; 2 uses
  %xtraiter342 = and i64 %wide.trip.count233, 1
  %i.gq = icmp eq i32 %.pre236, 1
  br i1 %i.gq, label %.epil.preheader341, label %.lr.ph204.new

.lr.ph204.new:                                    ; preds = %.lr.ph204
  %unroll_iter346 = and i64 %wide.trip.count233, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph204.new
  %indvars.iv230 = phi i64 [ 0, %.lr.ph204.new ], [ %indvars.iv.next231.1, %bb.q ] ; 3 uses
  %niter347 = phi i64 [ 0, %.lr.ph204.new ], [ %niter347.next.1, %bb.q ]
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv230 ; 2 uses
  %i.gs = load <4 x float>, ptr %i.gr, align 8, !tbaa !32
  %i.gt = fadd <4 x float> %i.bj, %i.gs
  %i.gu = fmul <4 x float> %i.gt, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.gu, ptr %i.gr, align 8, !tbaa !32
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv230
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32 ; 2 uses
  %i.gx = load <4 x float>, ptr %i.gw, align 8, !tbaa !32
  %i.gy = fadd <4 x float> %i.bj, %i.gx
  %i.gz = fmul <4 x float> %i.gy, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.gz, ptr %i.gw, align 8, !tbaa !32
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %niter347.next.1 = add nuw i64 %niter347, 2     ; 2 uses
  %niter347.ncmp.1 = icmp eq i64 %niter347.next.1, %unroll_iter346
  br i1 %niter347.ncmp.1, label %._crit_edge205.thread299.loopexit.unr-lcssa, label %bb.q, !llvm.loop !159

._crit_edge205:                                   ; preds = %nsvg__flattenShape.exit
  %.not117 = icmp eq i32 %.pre236, 0
  br i1 %.not117, label %._crit_edge205.thread, label %._crit_edge205.thread299

._crit_edge205.thread299.loopexit.unr-lcssa:      ; preds = %bb.q
  %lcmp.mod344.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod344.not, label %._crit_edge205.thread299, label %.epil.preheader341

.epil.preheader341:                               ; preds = %._crit_edge205.thread299.loopexit.unr-lcssa, %.lr.ph204
  %indvars.iv230.epil.init = phi i64 [ 0, %.lr.ph204 ], [ %indvars.iv.next231.1, %._crit_edge205.thread299.loopexit.unr-lcssa ]
  %lcmp.mod345 = trunc i32 %.pre236 to i1
  tail call void @llvm.assume(i1 %lcmp.mod345)
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv230.epil.init ; 2 uses
  %i.hb = load <4 x float>, ptr %i.ha, align 8, !tbaa !32
  %i.hc = fadd <4 x float> %i.bj, %i.hb
  %i.hd = fmul <4 x float> %i.hc, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.hd, ptr %i.ha, align 8, !tbaa !32
  br label %._crit_edge205.thread299

._crit_edge205.thread299:                         ; preds = %.epil.preheader341, %._crit_edge205.thread299.loopexit.unr-lcssa, %._crit_edge205
  %i.he = load ptr, ptr %i.au, align 8, !tbaa !126
  %i.hf = sext i32 %.pre236 to i64
  tail call void @qsort(ptr noundef %i.he, i64 noundef %i.hf, i64 noundef 32, ptr noundef nonnull @nsvg__cmpEdge) #30
  br label %._crit_edge205.thread

._crit_edge205.thread:                            ; preds = %nsvg__resetPool.exit, %._crit_edge205, %._crit_edge205.thread299
  %i.hg = load float, ptr %i.bx, align 8, !tbaa !160
  call fastcc void @nsvg__initPaint(ptr noundef %10, ptr noundef %i.by, float noundef %i.hg)
  %i.hh = load i8, ptr %i.bz, align 4, !tbaa !161
  br label %.thread.sink.split

bb.r:                                             ; preds = %bb.g
  %i.hi = load i8, ptr %i.bo, align 8, !tbaa !46
  %.not118 = icmp eq i8 %i.hi, 0
  br i1 %.not118, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hj = load float, ptr %i.bp, align 4, !tbaa !162
  %i.hk = fmul float %4, %i.hj                    ; 3 uses
  %i.hl = fcmp ogt float %i.hk, f0x3C23D70A
  br i1 %i.hl, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %.06.i122 = load ptr, ptr %i.ak, align 8, !tbaa !140 ; 3 uses
  %.not7.i123 = icmp eq ptr %.06.i122, null
  br i1 %.not7.i123, label %nsvg__resetPool.exit129, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %bb.t, %.lr.ph.i124
  %.08.i125 = phi ptr [ %.0.i126, %.lr.ph.i124 ], [ %.06.i122, %bb.t ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.08.i125, i64 1024
  store i32 0, ptr %i.hm, align 8, !tbaa !141
  %i.hn = getelementptr inbounds nuw i8, ptr %.08.i125, i64 1032
  %.0.i126 = load ptr, ptr %i.hn, align 8, !tbaa !140 ; 2 uses
  %.not.i127 = icmp eq ptr %.0.i126, null
  br i1 %.not.i127, label %nsvg__resetPool.exit129, label %.lr.ph.i124, !llvm.loop !142

nsvg__resetPool.exit129:                          ; preds = %.lr.ph.i124, %bb.t
  store ptr %.06.i122, ptr %i.al, align 8, !tbaa !143
  store ptr null, ptr %i.am, align 8, !tbaa !144
  store i32 0, ptr %i.an, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  %i.ho = load float, ptr %i.bq, align 8, !tbaa !163 ; 6 uses
  %i.hp = load i8, ptr %i.br, align 1, !tbaa !164
  %i.hq = sext i8 %i.hp to i32                    ; 3 uses
  %i.hr = load i8, ptr %i.bs, align 2, !tbaa !165
  %i.hs = sext i8 %i.hr to i32                    ; 2 uses
  %.0166307.i = load ptr, ptr %i.bt, align 8, !tbaa !63 ; 2 uses
  %.not308.i = icmp eq ptr %.0166307.i, null
  br i1 %.not308.i, label %._crit_edge208.thread, label %.lr.ph311.i

._crit_edge208.thread:                            ; preds = %nsvg__resetPool.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  br label %bb.bp

.lr.ph311.i:                                      ; preds = %nsvg__resetPool.exit129
  %i.ht = add nsw i32 %i.hq, -1
  %i.hu = icmp ult i32 %i.ht, 2                   ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.bn, %.lr.ph311.i
  %.0166309.i = phi ptr [ %.0166307.i, %.lr.ph311.i ], [ %.0166.i, %bb.bn ] ; 5 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !146
  %i.hv = load ptr, ptr %.0166309.i, align 8, !tbaa !66
  %i.hw = load <2 x float>, ptr %i.hv, align 4, !tbaa !32
  %i.hx = fmul <2 x float> %i.ax, %i.hw
  %i.hy = load i32, ptr %i.ap, align 4, !tbaa !147
  %.not29.i.i130 = icmp sgt i32 %i.hy, 0
  br i1 %.not29.i.i130, label %._crit_edge.i.i143, label %bb.v

._crit_edge.i.i143:                               ; preds = %bb.u
  %.pre.i.i144 = load ptr, ptr %i.aq, align 8, !tbaa !127
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 64, ptr %i.ap, align 4, !tbaa !147
  %i.hz = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.ia = tail call dereferenceable_or_null(2048) ptr @realloc(ptr noundef %i.hz, i64 noundef 2048) #32 ; 3 uses
  store ptr %i.ia, ptr %i.aq, align 8, !tbaa !127
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %nsvg__addPathPoint.exit.i133, label %._crit_edge30.i.i131

._crit_edge30.i.i131:                             ; preds = %bb.v
  %.pre31.i.i132 = load i32, ptr %i.ao, align 8, !tbaa !146
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge30.i.i131, %._crit_edge.i.i143
  %i.ic = phi i32 [ 0, %._crit_edge.i.i143 ], [ %.pre31.i.i132, %._crit_edge30.i.i131 ] ; 2 uses
  %i.id = phi ptr [ %.pre.i.i144, %._crit_edge.i.i143 ], [ %i.ia, %._crit_edge30.i.i131 ]
  %i.ie = sext i32 %i.ic to i64
  %i.if = getelementptr inbounds [32 x i8], ptr %i.id, i64 %i.ie ; 2 uses
  store <2 x float> %i.hx, ptr %i.if, align 4, !tbaa !32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 28
  store i8 1, ptr %i.ig, align 4, !tbaa !148
  %i.ih = add nsw i32 %i.ic, 1
  store i32 %i.ih, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__addPathPoint.exit.i133

nsvg__addPathPoint.exit.i133:                     ; preds = %bb.w, %bb.v
  %i.ii = getelementptr inbounds nuw i8, ptr %.0166309.i, i64 8 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !64
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %.lr.ph.i139, label %._crit_edge.i134

.lr.ph.i139:                                      ; preds = %nsvg__addPathPoint.exit.i133, %.lr.ph.i139
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i142, %.lr.ph.i139 ], [ 0, %nsvg__addPathPoint.exit.i133 ] ; 2 uses
  %i.il = load ptr, ptr %.0166309.i, align 8, !tbaa !66
  %.idx.i141 = shl nuw nsw i64 %indvars.iv.i140, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %.idx.i141 ; 2 uses
  %i.in = load <4 x float>, ptr %i.im, align 4, !tbaa !32
  %i.io = fmul <4 x float> %i.az, %i.in           ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.iq = load <4 x float>, ptr %i.ip, align 4, !tbaa !32
  %i.ir = fmul <4 x float> %i.az, %i.iq           ; 4 uses
  %i.is = extractelement <4 x float> %i.io, i64 0
  %i.it = extractelement <4 x float> %i.io, i64 1
  %i.iu = extractelement <4 x float> %i.io, i64 2
  %i.iv = extractelement <4 x float> %i.io, i64 3
  %i.iw = extractelement <4 x float> %i.ir, i64 0
  %i.ix = extractelement <4 x float> %i.ir, i64 1
  %i.iy = extractelement <4 x float> %i.ir, i64 2
  %i.iz = extractelement <4 x float> %i.ir, i64 3
  tail call fastcc void @nsvg__flattenCubicBez(ptr noundef nonnull %0, float noundef %i.is, float noundef %i.it, float noundef %i.iu, float noundef %i.iv, float noundef %i.iw, float noundef %i.ix, float noundef %i.iy, float noundef %i.iz, i32 noundef 0, i32 noundef 1)
  %indvars.iv.next.i142 = add nuw nsw i64 %indvars.iv.i140, 3 ; 2 uses
  %i.ja = load i32, ptr %i.ii, align 8, !tbaa !64
  %i.jb = add nsw i32 %i.ja, -1
  %i.jc = trunc nuw i64 %indvars.iv.next.i142 to i32
  %i.jd = icmp sgt i32 %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph.i139, label %._crit_edge.i134, !llvm.loop !166

._crit_edge.i134:                                 ; preds = %.lr.ph.i139, %nsvg__addPathPoint.exit.i133
  %i.je = load i32, ptr %i.ao, align 8, !tbaa !146 ; 6 uses
  %i.jf = icmp slt i32 %i.je, 2
  br i1 %i.jf, label %bb.bn, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i134
  %i.jg = getelementptr inbounds nuw i8, ptr %.0166309.i, i64 12
  %i.jh = load i8, ptr %i.jg, align 4, !tbaa !116 ; 2 uses
  %i.ji = load ptr, ptr %i.aq, align 8, !tbaa !127 ; 12 uses
  %i.jj = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jk = getelementptr [32 x i8], ptr %i.ji, i64 %i.jj ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 -32
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !151
  %i.jn = getelementptr i8, ptr %i.jk, i64 -28
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !152
  %i.jp = load float, ptr %i.ji, align 4, !tbaa !151
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !152
  %i.js = load float, ptr %i.ar, align 4, !tbaa !153 ; 2 uses
  %i.jt = fsub float %i.jp, %i.jm                 ; 2 uses
  %i.ju = fsub float %i.jr, %i.jo                 ; 2 uses
  %i.jv = fmul float %i.ju, %i.ju
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.jt, float %i.jv)
  %i.jx = fmul float %i.js, %i.js
  %i.jy = fcmp uge float %i.jw, %i.jx
  br i1 %i.jy, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.jz = sext i8 %i.jh to i32
  %i.ka = load i8, ptr %i.bu, align 4, !tbaa !72
  %i.kb = icmp sgt i8 %i.ka, 0
  br i1 %i.kb, label %bb.z, label %.lr.ph.preheader.i158

.thread.i:                                        ; preds = %bb.x
  %i.kc = add nsw i32 %i.je, -1                   ; 4 uses
  store i32 %i.kc, ptr %i.ao, align 8, !tbaa !146
  %i.kd = load i8, ptr %i.bu, align 4, !tbaa !72
  %i.ke = icmp sgt i8 %i.kd, 0
  br i1 %i.ke, label %.thread273.i, label %.thread.i..lr.ph.preheader.i158_crit_edge

.thread.i..lr.ph.preheader.i158_crit_edge:        ; preds = %.thread.i
  %.pre237 = zext nneg i32 %i.kc to i64
  br label %.lr.ph.preheader.i158

bb.z:                                             ; preds = %bb.y
  %.not179.i = icmp eq i8 %i.jh, 0
  br i1 %.not179.i, label %bb.ab, label %.thread273.i

.thread273.i:                                     ; preds = %bb.z, %.thread.i
  %i.kf = phi i32 [ %i.je, %bb.z ], [ %i.kc, %.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %i.ji, i64 32, i1 false)
  %i.kg = load i32, ptr %i.ap, align 4, !tbaa !147 ; 3 uses
  %.not.i.i136 = icmp slt i32 %i.kf, %i.kg
  br i1 %.not.i.i136, label %._crit_edge.i187.i, label %bb.aa

bb.aa:                                            ; preds = %.thread273.i
  %i.kh = icmp sgt i32 %i.kg, 0
  %i.ki = shl nuw nsw i32 %i.kg, 1
  %spec.select.i186.i = select i1 %i.kh, i32 %i.ki, i32 64 ; 2 uses
  store i32 %spec.select.i186.i, ptr %i.ap, align 4, !tbaa !147
  %i.kj = zext nneg i32 %spec.select.i186.i to i64
  %i.kk = shl nuw nsw i64 %i.kj, 5
  %i.kl = tail call ptr @realloc(ptr noundef nonnull %i.ji, i64 noundef %i.kk) #32 ; 3 uses
  store ptr %i.kl, ptr %i.aq, align 8, !tbaa !127
  %i.km = icmp eq ptr %i.kl, null
  %.pre.pre.i = load i32, ptr %i.ao, align 8, !tbaa !146 ; 2 uses
  br i1 %i.km, label %nsvg__appendPathPoint.exit.i, label %._crit_edge.i187.i

._crit_edge.i187.i:                               ; preds = %bb.aa, %.thread273.i
  %i.kn = phi i32 [ %i.kf, %.thread273.i ], [ %.pre.pre.i, %bb.aa ]
  %i.ko = phi ptr [ %i.ji, %.thread273.i ], [ %i.kl, %bb.aa ]
  %i.kp = sext i32 %i.kn to i64
  %i.kq = getelementptr inbounds [32 x i8], ptr %i.ko, i64 %i.kp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.kq, ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !167
  %i.kr = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.ks = add nsw i32 %i.kr, 1                    ; 2 uses
  store i32 %i.ks, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__appendPathPoint.exit.i

nsvg__appendPathPoint.exit.i:                     ; preds = %._crit_edge.i187.i, %bb.aa
  %.pre.i137 = phi i32 [ %.pre.pre.i, %bb.aa ], [ %i.ks, %._crit_edge.i187.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.ab

bb.ab:                                            ; preds = %nsvg__appendPathPoint.exit.i, %bb.z
  %i.kt = phi i32 [ %.pre.i137, %nsvg__appendPathPoint.exit.i ], [ %i.je, %bb.z ] ; 4 uses
  %i.ku = load i32, ptr %i.as, align 4, !tbaa !168
  %i.kv = icmp sgt i32 %i.kt, %i.ku
  br i1 %i.kv, label %._crit_edge13.i.i, label %._crit_edge.i190.i

._crit_edge.i190.i:                               ; preds = %bb.ab
  %.pre.i192.i = load ptr, ptr %.phi.trans.insert.i191.i, align 8, !tbaa !128
  br label %nsvg__duplicatePoints.exit.i

._crit_edge13.i.i:                                ; preds = %bb.ab
  store i32 %i.kt, ptr %i.as, align 4, !tbaa !168
  %i.kw = load ptr, ptr %.phi.trans.insert.i191.i, align 8, !tbaa !128
  %i.kx = sext i32 %i.kt to i64
  %i.ky = shl nsw i64 %i.kx, 5
  %i.kz = tail call ptr @realloc(ptr noundef %i.kw, i64 noundef %i.ky) #32 ; 3 uses
  store ptr %i.kz, ptr %.phi.trans.insert.i191.i, align 8, !tbaa !128
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kz) ]
  %.pre14.i.i = load i32, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__duplicatePoints.exit.i

nsvg__duplicatePoints.exit.i:                     ; preds = %._crit_edge13.i.i, %._crit_edge.i190.i
  %i.la = phi i32 [ %i.kt, %._crit_edge.i190.i ], [ %.pre14.i.i, %._crit_edge13.i.i ]
  %i.lb = phi ptr [ %.pre.i192.i, %._crit_edge.i190.i ], [ %i.kz, %._crit_edge13.i.i ]
  %i.lc = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.ld = sext i32 %i.la to i64
  %i.le = shl nsw i64 %i.ld, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lb, ptr align 4 %i.lc, i64 %i.le, i1 false)
  %i.lf = load i32, ptr %i.ao, align 8, !tbaa !146
  store i32 %i.lf, ptr %i.at, align 8, !tbaa !169
  %.pre322.i = load ptr, ptr %.phi.trans.insert.i191.i, align 8, !tbaa !128 ; 4 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !146
  %i.lg = load <2 x float>, ptr %.pre322.i, align 4, !tbaa !32 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre322.i, i64 8
  %.sroa.13.i.sroa.0.0.copyload = load <5 x float>, ptr %.sroa.13.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.13246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre322.i, i64 28
  %.sroa.13246.0.copyload.i = load i8, ptr %.sroa.13246.0..sroa_idx.i, align 4, !tbaa !8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre322.i, i64 29 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.0..sroa_idx.i, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.0..sroa_idx.i, i64 3, i1 false)
  %i.lh = load i32, ptr %i.ap, align 4, !tbaa !147
  %.not.i193.i = icmp sgt i32 %i.lh, 0
  br i1 %.not.i193.i, label %._crit_edge.i197.i, label %bb.ac

._crit_edge.i197.i:                               ; preds = %nsvg__duplicatePoints.exit.i
  %.pre.i199.i = load ptr, ptr %i.aq, align 8, !tbaa !127
  br label %bb.ad

bb.ac:                                            ; preds = %nsvg__duplicatePoints.exit.i
  store i32 64, ptr %i.ap, align 4, !tbaa !147
  %i.li = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.lj = tail call dereferenceable_or_null(2048) ptr @realloc(ptr noundef %i.li, i64 noundef 2048) #32 ; 3 uses
  store ptr %i.lj, ptr %i.aq, align 8, !tbaa !127
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %nsvg__appendPathPoint.exit200.i, label %._crit_edge12.i195.i

._crit_edge12.i195.i:                             ; preds = %bb.ac
  %.pre13.i196.i = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.ll = sext i32 %.pre13.i196.i to i64
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge12.i195.i, %._crit_edge.i197.i
  %i.lm = phi i64 [ 0, %._crit_edge.i197.i ], [ %i.ll, %._crit_edge12.i195.i ]
  %i.ln = phi ptr [ %.pre.i199.i, %._crit_edge.i197.i ], [ %i.lj, %._crit_edge12.i195.i ]
  %i.lo = getelementptr inbounds [32 x i8], ptr %i.ln, i64 %i.lm ; 4 uses
  store <2 x float> %i.lg, ptr %i.lo, align 4, !tbaa !32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store <5 x float> %.sroa.13.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 28
  store i8 %.sroa.13246.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.i, i64 3, i1 false), !tbaa.struct !170
  %i.lp = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.lq = add nsw i32 %i.lp, 1
  store i32 %i.lq, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__appendPathPoint.exit200.i

nsvg__appendPathPoint.exit200.i:                  ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.lr = load i8, ptr %i.bu, align 4, !tbaa !72  ; 4 uses
  %i.ls = sext i8 %i.lr to i32                    ; 2 uses
  %i.lt = icmp sgt i8 %i.lr, 0
  br i1 %i.lt, label %.lr.ph283.preheader.i, label %._crit_edge284.i

.lr.ph283.preheader.i:                            ; preds = %nsvg__appendPathPoint.exit200.i
  %wide.trip.count.i = zext nneg i32 %i.ls to i64 ; 2 uses
  %xtraiter327 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.lu = icmp ult i8 %i.lr, 8
  br i1 %i.lu, label %.lr.ph283.i.epil.preheader, label %.lr.ph283.preheader.i.new

.lr.ph283.preheader.i.new:                        ; preds = %.lr.ph283.preheader.i
  %unroll_iter332 = and i64 %wide.trip.count.i, 120
  br label %.lr.ph283.i

.lr.ph283.i:                                      ; preds = %.lr.ph283.i, %.lr.ph283.preheader.i.new
  %indvars.iv318.i = phi i64 [ 0, %.lr.ph283.preheader.i.new ], [ %indvars.iv.next319.i.7, %.lr.ph283.i ] ; 9 uses
  %.0155282.i = phi float [ 0.000000e+00, %.lr.ph283.preheader.i.new ], [ %i.mz, %.lr.ph283.i ]
  %niter333 = phi i64 [ 0, %.lr.ph283.preheader.i.new ], [ %niter333.next.7, %.lr.ph283.i ]
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !32
  %i.lx = fadd float %.0155282.i, %i.lw
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !32
  %i.mb = fadd float %i.lx, %i.ma
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load float, ptr %i.md, align 4, !tbaa !32
  %i.mf = fadd float %i.mb, %i.me
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 12
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !32
  %i.mj = fadd float %i.mf, %i.mi
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !32
  %i.mn = fadd float %i.mj, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 20
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !32
  %i.mr = fadd float %i.mn, %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !32
  %i.mv = fadd float %i.mr, %i.mu
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 28
  %i.my = load float, ptr %i.mx, align 4, !tbaa !32
  %i.mz = fadd float %i.mv, %i.my                 ; 3 uses
  %indvars.iv.next319.i.7 = add nuw nsw i64 %indvars.iv318.i, 8 ; 2 uses
  %niter333.next.7 = add nuw i64 %niter333, 8     ; 2 uses
  %niter333.ncmp.7 = icmp eq i64 %niter333.next.7, %unroll_iter332
  br i1 %niter333.ncmp.7, label %._crit_edge284.i.loopexit.unr-lcssa, label %.lr.ph283.i, !llvm.loop !171

._crit_edge284.i.loopexit.unr-lcssa:              ; preds = %.lr.ph283.i
  %lcmp.mod329.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod329.not, label %._crit_edge284.i, label %.lr.ph283.i.epil.preheader

.lr.ph283.i.epil.preheader:                       ; preds = %._crit_edge284.i.loopexit.unr-lcssa, %.lr.ph283.preheader.i
  %indvars.iv318.i.epil.init = phi i64 [ 0, %.lr.ph283.preheader.i ], [ %indvars.iv.next319.i.7, %._crit_edge284.i.loopexit.unr-lcssa ]
  %.0155282.i.epil.init = phi float [ 0.000000e+00, %.lr.ph283.preheader.i ], [ %i.mz, %._crit_edge284.i.loopexit.unr-lcssa ]
  %lcmp.mod331 = icmp ne i64 %xtraiter327, 0
  tail call void @llvm.assume(i1 %lcmp.mod331)
  br label %.lr.ph283.i.epil

.lr.ph283.i.epil:                                 ; preds = %.lr.ph283.i.epil, %.lr.ph283.i.epil.preheader
  %indvars.iv318.i.epil = phi i64 [ %indvars.iv318.i.epil.init, %.lr.ph283.i.epil.preheader ], [ %indvars.iv.next319.i.epil, %.lr.ph283.i.epil ] ; 2 uses
  %.0155282.i.epil = phi float [ %.0155282.i.epil.init, %.lr.ph283.i.epil.preheader ], [ %i.nc, %.lr.ph283.i.epil ]
  %epil.iter328 = phi i64 [ 0, %.lr.ph283.i.epil.preheader ], [ %epil.iter328.next, %.lr.ph283.i.epil ]
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv318.i.epil
  %i.nb = load float, ptr %i.na, align 4, !tbaa !32
  %i.nc = fadd float %.0155282.i.epil, %i.nb      ; 2 uses
  %indvars.iv.next319.i.epil = add nuw nsw i64 %indvars.iv318.i.epil, 1
  %epil.iter328.next = add i64 %epil.iter328, 1   ; 2 uses
  %epil.iter328.cmp.not = icmp eq i64 %epil.iter328.next, %xtraiter327
  br i1 %epil.iter328.cmp.not, label %._crit_edge284.i, label %.lr.ph283.i.epil, !llvm.loop !172

._crit_edge284.i:                                 ; preds = %._crit_edge284.i.loopexit.unr-lcssa, %.lr.ph283.i.epil, %nsvg__appendPathPoint.exit200.i
  %.0155.lcssa.i = phi float [ 0.000000e+00, %nsvg__appendPathPoint.exit200.i ], [ %i.mz, %._crit_edge284.i.loopexit.unr-lcssa ], [ %i.nc, %.lr.ph283.i.epil ] ; 2 uses
  %i.nd = and i8 %i.lr, 1
  %.not180.i = icmp eq i8 %i.nd, 0
  %i.ne = fmul float %.0155.lcssa.i, 2.000000e+00
  %.1156.i = select i1 %.not180.i, float %.0155.lcssa.i, float %i.ne ; 2 uses
  %i.nf = load float, ptr %i.bw, align 8, !tbaa !173
  %i.ng = tail call float @fmodf(float noundef %i.nf, float noundef %.1156.i) #30 ; 3 uses
  %i.nh = fcmp olt float %i.ng, 0.000000e+00
  %i.ni = fadd float %.1156.i, %i.ng
  %.0.i138 = select i1 %i.nh, float %i.ni, float %i.ng ; 3 uses
  %i.nj = load float, ptr %i.bv, align 4, !tbaa !32 ; 3 uses
  %i.nk = fcmp ogt float %.0.i138, %i.nj
  br i1 %i.nk, label %.lr.ph290.i, label %._crit_edge291.i

.lr.ph290.i:                                      ; preds = %._crit_edge284.i, %.lr.ph290.i
  %i.nl = phi float [ %i.nr, %.lr.ph290.i ], [ %i.nj, %._crit_edge284.i ]
  %.1288.i = phi float [ %i.nm, %.lr.ph290.i ], [ %.0.i138, %._crit_edge284.i ]
  %.0163287.i = phi i32 [ %i.no, %.lr.ph290.i ], [ 0, %._crit_edge284.i ]
  %i.nm = fsub float %.1288.i, %i.nl              ; 3 uses
  %i.nn = add nsw i32 %.0163287.i, 1
  %i.no = srem i32 %i.nn, %i.ls                   ; 3 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !32 ; 3 uses
  %i.ns = fcmp ogt float %i.nm, %i.nr
  br i1 %i.ns, label %.lr.ph290.i, label %._crit_edge291.i, !llvm.loop !174

._crit_edge291.i:                                 ; preds = %.lr.ph290.i, %._crit_edge284.i
  %.0163.lcssa.i = phi i32 [ 0, %._crit_edge284.i ], [ %i.no, %.lr.ph290.i ]
  %.1.lcssa.i = phi float [ %.0.i138, %._crit_edge284.i ], [ %i.nm, %.lr.ph290.i ]
  %.lcssa278.i = phi float [ %i.nj, %._crit_edge284.i ], [ %i.nr, %.lr.ph290.i ]
  %i.nt = load i32, ptr %i.at, align 8, !tbaa !169
  %i.nu = icmp sgt i32 %i.nt, 1
  br i1 %i.nu, label %.lr.ph304.preheader.i, label %._crit_edge305.i

.lr.ph304.preheader.i:                            ; preds = %._crit_edge291.i
  %i.nv = fsub float %.lcssa278.i, %.1.lcssa.i
  %i.nw = fmul float %4, %i.nv
  br label %.lr.ph304.i

.lr.ph304.i:                                      ; preds = %nsvg__appendPathPoint.exit219.i, %.lr.ph304.preheader.i
  %.sroa.13.i.sroa.0.0 = phi <5 x float> [ %.sroa.13.i.sroa.0.0.copyload, %.lr.ph304.preheader.i ], [ %.sroa.13.i.sroa.0.1, %nsvg__appendPathPoint.exit219.i ] ; 3 uses
  %.0157302.i = phi float [ %i.nw, %.lr.ph304.preheader.i ], [ %.1158.i, %nsvg__appendPathPoint.exit219.i ] ; 3 uses
  %.0159301.i = phi float [ 0.000000e+00, %.lr.ph304.preheader.i ], [ %.1160.i, %nsvg__appendPathPoint.exit219.i ] ; 2 uses
  %.0161300.i = phi i32 [ 1, %.lr.ph304.preheader.i ], [ %.1162.i, %nsvg__appendPathPoint.exit219.i ] ; 2 uses
  %.1164299.i = phi i32 [ %.0163.lcssa.i, %.lr.ph304.preheader.i ], [ %.2.i, %nsvg__appendPathPoint.exit219.i ] ; 2 uses
  %.1169298.i = phi i32 [ 1, %.lr.ph304.preheader.i ], [ %.2170.i, %nsvg__appendPathPoint.exit219.i ] ; 4 uses
  %i.nx = phi <2 x float> [ %i.lg, %.lr.ph304.preheader.i ], [ %i.uq, %nsvg__appendPathPoint.exit219.i ] ; 2 uses
  %i.ny = load ptr, ptr %.phi.trans.insert.i191.i, align 8, !tbaa !128
  %i.nz = sext i32 %.1169298.i to i64
  %i.oa = getelementptr inbounds [32 x i8], ptr %i.ny, i64 %i.nz ; 4 uses
  %i.ob = load <2 x float>, ptr %i.oa, align 4, !tbaa !32 ; 3 uses
  %i.oc = fsub <2 x float> %i.ob, %i.nx           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.oc, %i.oc
  %i.od = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.oe = extractelement <2 x float> %i.oc, i64 0 ; 2 uses
  %i.of = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.oe, float %i.od)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.of) ; 2 uses
  %i.og = fadd float %.0159301.i, %sqrt.i         ; 2 uses
  %i.oh = fcmp ogt float %i.og, %.0157302.i
  br i1 %i.oh, label %bb.ae, label %bb.au

bb.ae:                                            ; preds = %.lr.ph304.i
  %i.oi = fsub float %.0157302.i, %.0159301.i
  %i.oj = fdiv float %i.oi, %sqrt.i
  %i.ok = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> zeroinitializer
  %i.om = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> %i.ol, <2 x float> %i.nx) ; 6 uses
  %i.on = load i32, ptr %i.ao, align 8, !tbaa !146 ; 5 uses
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.op = load ptr, ptr %i.aq, align 8, !tbaa !127 ; 2 uses
  %i.oq = zext nneg i32 %i.on to i64
  %i.or = getelementptr [32 x i8], ptr %i.op, i64 %i.oq ; 3 uses
  %i.os = getelementptr i8, ptr %i.or, i64 -32
  %i.ot = load float, ptr %i.os, align 4, !tbaa !151
  %i.ou = getelementptr i8, ptr %i.or, i64 -28
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !152
  %i.ow = load float, ptr %i.ar, align 4, !tbaa !153 ; 2 uses
  %i.ox = extractelement <2 x float> %i.om, i64 0
  %i.oy = fsub float %i.ox, %i.ot                 ; 2 uses
  %i.oz = extractelement <2 x float> %i.om, i64 1
  %i.pa = fsub float %i.oz, %i.ov                 ; 2 uses
  %i.pb = fmul float %i.pa, %i.pa
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.oy, float %i.pb)
  %i.pd = fmul float %i.ow, %i.ow
  %i.pe = fcmp uge float %i.pc, %i.pd
  br i1 %i.pe, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pf = getelementptr i8, ptr %i.or, i64 -4     ; 2 uses
  %i.pg = load i8, ptr %i.pf, align 4, !tbaa !148
  %i.ph = or i8 %i.pg, 1
  store i8 %i.ph, ptr %i.pf, align 4, !tbaa !148
  br label %nsvg__addPathPoint.exit208.i

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.pi = load i32, ptr %i.ap, align 4, !tbaa !147 ; 3 uses
  %.not29.i201.i = icmp slt i32 %i.on, %i.pi
  br i1 %.not29.i201.i, label %._crit_edge.i205.i, label %bb.ai

._crit_edge.i205.i:                               ; preds = %bb.ah
  %.pre.i207.i = load ptr, ptr %i.aq, align 8, !tbaa !127
  br label %._crit_edge30.i203.i

bb.ai:                                            ; preds = %bb.ah
  %i.pj = icmp sgt i32 %i.pi, 0
  %i.pk = shl nuw nsw i32 %i.pi, 1
  %spec.select.i202.i = select i1 %i.pj, i32 %i.pk, i32 64 ; 2 uses
  store i32 %spec.select.i202.i, ptr %i.ap, align 4, !tbaa !147
  %i.pl = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.pm = zext nneg i32 %spec.select.i202.i to i64
  %i.pn = shl nuw nsw i64 %i.pm, 5
  %i.po = tail call ptr @realloc(ptr noundef %i.pl, i64 noundef %i.pn) #32 ; 3 uses
  store ptr %i.po, ptr %i.aq, align 8, !tbaa !127
  %i.pp = icmp eq ptr %i.po, null
  %.pre323.i = load i32, ptr %i.ao, align 8, !tbaa !146 ; 2 uses
  br i1 %i.pp, label %nsvg__addPathPoint.exit208.i, label %._crit_edge30.i203.i

._crit_edge30.i203.i:                             ; preds = %bb.ai, %._crit_edge.i205.i
  %i.pq = phi i32 [ %i.on, %._crit_edge.i205.i ], [ %.pre323.i, %bb.ai ] ; 2 uses
  %i.pr = phi ptr [ %.pre.i207.i, %._crit_edge.i205.i ], [ %i.po, %bb.ai ] ; 2 uses
  %i.ps = sext i32 %i.pq to i64
  %i.pt = getelementptr inbounds [32 x i8], ptr %i.pr, i64 %i.ps ; 2 uses
  store <2 x float> %i.om, ptr %i.pt, align 4, !tbaa !32
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 28
  store i8 1, ptr %i.pu, align 4, !tbaa !148
  %i.pv = add nsw i32 %i.pq, 1                    ; 2 uses
  store i32 %i.pv, ptr %i.ao, align 8, !tbaa !146
  br label %nsvg__addPathPoint.exit208.i

nsvg__addPathPoint.exit208.i:                     ; preds = %._crit_edge30.i203.i, %bb.ai, %bb.ag
  %.val184.i = phi ptr [ %i.op, %bb.ag ], [ null, %bb.ai ], [ %i.pr, %._crit_edge30.i203.i ] ; 5 uses
  %i.pw = phi i32 [ %i.on, %bb.ag ], [ %.pre323.i, %bb.ai ], [ %i.pv, %._crit_edge30.i203.i ] ; 6 uses
  %i.px = icmp sgt i32 %i.pw, 1
  %i.py = icmp ne i32 %.0161300.i, 0              ; 2 uses
  %or.cond.i = select i1 %i.px, i1 %i.py, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i.i, label %bb.ar

.lr.ph.preheader.i.i:                             ; preds = %nsvg__addPathPoint.exit208.i
  %i.pz = zext nneg i32 %i.pw to i64
  %i.qa = getelementptr [32 x i8], ptr %.val184.i, i64 %i.pz ; 3 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 -32
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %nsvg__normalize.exit.i.i
  %.phi.trans.insert15.i.i = getelementptr i8, ptr %i.qa, i64 -20
  %.pre16.i.i = load float, ptr %.phi.trans.insert15.i.i, align 4, !tbaa !175 ; 2 uses
  %.phi.trans.insert17.i.i = getelementptr i8, ptr %i.qa, i64 -24
  %.pre18.i.i = load float, ptr %.phi.trans.insert17.i.i, align 4, !tbaa !176 ; 2 uses
  br i1 %i.hu, label %.lr.ph7.split.us.i.i, label %.lr.ph7.split.i.i

.lr.ph7.split.us.i.i:                             ; preds = %.preheader.i.i, %bb.ak
  %i.qc = phi float [ %i.qh, %bb.ak ], [ %.pre18.i.i, %.preheader.i.i ] ; 2 uses
  %i.qd = phi float [ %i.qf, %bb.ak ], [ %.pre16.i.i, %.preheader.i.i ] ; 2 uses
  %.16.us.i.i = phi ptr [ %i.rf, %bb.ak ], [ %.val184.i, %.preheader.i.i ] ; 6 uses
  %.0644.us.i.i = phi i32 [ %i.rg, %bb.ak ], [ 0, %.preheader.i.i ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 12
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !175 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 8
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !176 ; 3 uses
  %i.qi = fneg float %i.qh
  %i.qj = fadd float %i.qd, %i.qf
  %i.qk = fmul float %i.qj, 5.000000e-01          ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 20 ; 2 uses
  store float %i.qk, ptr %i.ql, align 4, !tbaa !177
  %i.qm = fsub float %i.qi, %i.qc
  %i.qn = fmul float %i.qm, 5.000000e-01          ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.16.us.i.i, i64 24 ; 2 uses
  store float %i.qn, ptr %i.qo, align 4, !tbaa !178
  %i.qp = fmul float %i.qn, %i.qn
end_hunk_0
begin_hunk_1_@nsvgRasterize:bb.a
  %.pre16.i = load float, ptr %.phi.trans.insert15.i, align 4, !tbaa !175 ; 2 uses
  %.phi.trans.insert17.i = getelementptr i8, ptr %i.yd, i64 -24
  %.pre18.i = load float, ptr %.phi.trans.insert17.i, align 4, !tbaa !176 ; 2 uses
  br i1 %i.hu, label %.lr.ph7.split.us.i, label %.lr.ph7.split.i

.lr.ph7.split.us.i:                               ; preds = %.preheader.i161, %bb.bg
  %i.yf = phi float [ %i.yk, %bb.bg ], [ %.pre18.i, %.preheader.i161 ] ; 2 uses
  %i.yg = phi float [ %i.yi, %bb.bg ], [ %.pre16.i, %.preheader.i161 ] ; 2 uses
  %.16.us.i = phi ptr [ %i.zi, %bb.bg ], [ %i.ji, %.preheader.i161 ] ; 6 uses
  %.0644.us.i = phi i32 [ %i.zj, %bb.bg ], [ 0, %.preheader.i161 ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 12
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !175 ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 8
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !176 ; 3 uses
  %i.yl = fneg float %i.yk
  %i.ym = fadd float %i.yg, %i.yi
  %i.yn = fmul float %i.ym, 5.000000e-01          ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 20 ; 2 uses
  store float %i.yn, ptr %i.yo, align 4, !tbaa !177
  %i.yp = fsub float %i.yl, %i.yf
  %i.yq = fmul float %i.yp, 5.000000e-01          ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 24 ; 2 uses
  store float %i.yq, ptr %i.yr, align 4, !tbaa !178
  %i.ys = fmul float %i.yq, %i.yq
  %i.yt = tail call float @llvm.fmuladd.f32(float %i.yn, float %i.yn, float %i.ys) ; 2 uses
  %i.yu = fcmp ogt float %i.yt, f0x358637BD
  br i1 %i.yu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph7.split.us.i
  %i.yv = fdiv float 1.000000e+00, %i.yt          ; 2 uses
  %i.yw = fcmp ogt float %i.yv, 6.000000e+02
  %.0.us.i = select i1 %i.yw, float 6.000000e+02, float %i.yv ; 2 uses
  %i.yx = fmul float %i.yn, %.0.us.i
  store float %i.yx, ptr %i.yo, align 4, !tbaa !177
  %i.yy = fmul float %i.yq, %.0.us.i
  store float %i.yy, ptr %i.yr, align 4, !tbaa !178
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph7.split.us.i
  %i.yz = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 28 ; 2 uses
  %i.za = load i8, ptr %i.yz, align 4, !tbaa !148
  %i.zb = and i8 %i.za, 1                         ; 3 uses
  %i.zc = fneg float %i.yi
  %i.zd = fmul float %i.yf, %i.zc
  %i.ze = tail call float @llvm.fmuladd.f32(float %i.yk, float %i.yg, float %i.zd)
  %i.zf = fcmp ogt float %i.ze, 0.000000e+00
  %i.zg = or disjoint i8 %i.zb, 4
  %storemerge.us.i = select i1 %i.zf, i8 %i.zg, i8 %i.zb
  %i.zh = shl nuw nsw i8 %i.zb, 1
  %spec.select.i = or disjoint i8 %storemerge.us.i, %i.zh
  store i8 %spec.select.i, ptr %i.yz, align 4, !tbaa !148
  %i.zi = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 32
  %i.zj = add nuw nsw i32 %.0644.us.i, 1          ; 2 uses
  %exitcond12.not.i = icmp eq i32 %i.zj, %.val181.i
  br i1 %exitcond12.not.i, label %.sink.split.i, label %.lr.ph7.split.us.i, !llvm.loop !179

.lr.ph.i159:                                      ; preds = %nsvg__normalize.exit.i, %.lr.ph.preheader.i158
  %.0613.i = phi ptr [ %i.zz, %nsvg__normalize.exit.i ], [ %i.ji, %.lr.ph.preheader.i158 ] ; 3 uses
  %.0622.i = phi ptr [ %.0613.i, %nsvg__normalize.exit.i ], [ %i.ye, %.lr.ph.preheader.i158 ] ; 4 uses
  %.0651.i = phi i32 [ %i.aaa, %nsvg__normalize.exit.i ], [ 0, %.lr.ph.preheader.i158 ]
  %i.zk = getelementptr inbounds nuw i8, ptr %.0622.i, i64 8 ; 2 uses
  %i.zl = load <2 x float>, ptr %.0613.i, align 4, !tbaa !32
  %i.zm = load <2 x float>, ptr %.0622.i, align 4, !tbaa !32
  %i.zn = fsub <2 x float> %i.zl, %i.zm           ; 3 uses
  %i.zo = extractelement <2 x float> %i.zn, i64 0 ; 3 uses
  store float %i.zo, ptr %i.zk, align 4, !tbaa !176
  %i.zp = getelementptr inbounds nuw i8, ptr %.0622.i, i64 12
  %i.zq = extractelement <2 x float> %i.zn, i64 1 ; 3 uses
  store float %i.zq, ptr %i.zp, align 4, !tbaa !175
  %i.zr = fmul float %i.zq, %i.zq
  %i.zs = tail call float @llvm.fmuladd.f32(float %i.zo, float %i.zo, float %i.zr)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.zs) ; 3 uses
  %i.zt = fcmp ogt float %sqrt.i.i, f0x358637BD
  br i1 %i.zt, label %bb.bh, label %nsvg__normalize.exit.i

bb.bh:                                            ; preds = %.lr.ph.i159
  %i.zu = fdiv nnan float 1.000000e+00, %sqrt.i.i
  %i.zv = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.zw = shufflevector <2 x float> %i.zv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zx = fmul <2 x float> %i.zn, %i.zw
  store <2 x float> %i.zx, ptr %i.zk, align 4, !tbaa !32
  br label %nsvg__normalize.exit.i

nsvg__normalize.exit.i:                           ; preds = %bb.bh, %.lr.ph.i159
  %i.zy = getelementptr inbounds nuw i8, ptr %.0622.i, i64 16
  store float %sqrt.i.i, ptr %i.zy, align 4, !tbaa !180
  %i.zz = getelementptr inbounds nuw i8, ptr %.0613.i, i64 32
  %i.aaa = add nuw nsw i32 %.0651.i, 1            ; 2 uses
  %exitcond.not.i160 = icmp eq i32 %i.aaa, %.val181.i
  br i1 %exitcond.not.i160, label %.preheader.i161, label %.lr.ph.i159, !llvm.loop !181

.lr.ph7.split.i:                                  ; preds = %.preheader.i161, %bb.bm
  %i.aab = phi float [ %i.aag, %bb.bm ], [ %.pre18.i, %.preheader.i161 ] ; 2 uses
  %i.aac = phi float [ %i.aae, %bb.bm ], [ %.pre16.i, %.preheader.i161 ] ; 2 uses
  %.16.i = phi ptr [ %i.abh, %bb.bm ], [ %i.ji, %.preheader.i161 ] ; 6 uses
  %.0644.i = phi i32 [ %i.abi, %bb.bm ], [ 0, %.preheader.i161 ]
  %i.aad = getelementptr inbounds nuw i8, ptr %.16.i, i64 12
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !175 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.16.i, i64 8
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !176 ; 3 uses
  %i.aah = fneg float %i.aag
  %i.aai = fadd float %i.aac, %i.aae
  %i.aaj = fmul float %i.aai, 5.000000e-01        ; 4 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.16.i, i64 20 ; 2 uses
  store float %i.aaj, ptr %i.aak, align 4, !tbaa !177
  %i.aal = fsub float %i.aah, %i.aab
  %i.aam = fmul float %i.aal, 5.000000e-01        ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.16.i, i64 24 ; 2 uses
  store float %i.aam, ptr %i.aan, align 4, !tbaa !178
  %i.aao = fmul float %i.aam, %i.aam
  %i.aap = tail call float @llvm.fmuladd.f32(float %i.aaj, float %i.aaj, float %i.aao) ; 3 uses
  %i.aaq = fcmp ogt float %i.aap, f0x358637BD
  br i1 %i.aaq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph7.split.i
  %i.aar = fdiv float 1.000000e+00, %i.aap        ; 2 uses
  %i.aas = fcmp ogt float %i.aar, 6.000000e+02
  %.0.i163 = select i1 %i.aas, float 6.000000e+02, float %i.aar ; 2 uses
  %i.aat = fmul float %i.aaj, %.0.i163
  store float %i.aat, ptr %i.aak, align 4, !tbaa !177
  %i.aau = fmul float %i.aam, %.0.i163
  store float %i.aau, ptr %i.aan, align 4, !tbaa !178
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph7.split.i
  %i.aav = getelementptr inbounds nuw i8, ptr %.16.i, i64 28 ; 3 uses
  %i.aaw = load i8, ptr %i.aav, align 4, !tbaa !148
  %i.aax = and i8 %i.aaw, 1                       ; 3 uses
  %i.aay = fneg float %i.aae
  %i.aaz = fmul float %i.aab, %i.aay
  %i.aba = tail call float @llvm.fmuladd.f32(float %i.aag, float %i.aac, float %i.aaz)
  %i.abb = fcmp ogt float %i.aba, 0.000000e+00
  %i.abc = or disjoint i8 %i.aax, 4
  %storemerge.i = select i1 %i.abb, i8 %i.abc, i8 %i.aax ; 2 uses
  store i8 %storemerge.i, ptr %i.aav, align 4, !tbaa !148
  %.not.i162 = icmp eq i8 %i.aax, 0
  br i1 %.not.i162, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.abd = fmul float %i.ho, %i.aap
  %i.abe = fmul float %i.ho, %i.abd
  %i.abf = fcmp olt float %i.abe, 1.000000e+00
  br i1 %i.abf, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.abg = or disjoint i8 %storemerge.i, 2
  store i8 %i.abg, ptr %i.aav, align 4, !tbaa !148
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.abh = getelementptr inbounds nuw i8, ptr %.16.i, i64 32
  %i.abi = add nuw nsw i32 %.0644.i, 1            ; 2 uses
  %exitcond11.not.i = icmp eq i32 %i.abi, %.val181.i
  br i1 %exitcond11.not.i, label %.sink.split.i, label %.lr.ph7.split.i, !llvm.loop !179

.sink.split.i:                                    ; preds = %bb.bm, %bb.bg, %bb.be, %bb.ay
  %i.abj = phi i32 [ %i.uu, %bb.ay ], [ %.val181.i, %bb.bg ], [ %i.uu, %bb.be ], [ %.val181.i, %bb.bm ]
  %i.abk = phi ptr [ %.val182.i, %bb.ay ], [ %i.ji, %bb.bg ], [ %.val182.i, %bb.be ], [ %i.ji, %bb.bm ]
  %.sink359.i = phi i32 [ 0, %bb.ay ], [ %.0167272.i, %bb.bg ], [ 0, %bb.be ], [ %.0167272.i, %bb.bm ]
  tail call fastcc void @nsvg__expandStroke(ptr noundef nonnull %0, ptr noundef %i.abk, i32 noundef %i.abj, i32 noundef %.sink359.i, i32 noundef %i.hq, i32 noundef %i.hs, float noundef %i.hk)
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split.i, %._crit_edge305.i, %._crit_edge.i134
  %i.abl = getelementptr inbounds nuw i8, ptr %.0166309.i, i64 32
  %.0166.i = load ptr, ptr %i.abl, align 8, !tbaa !63 ; 2 uses
  %.not.i135 = icmp eq ptr %.0166.i, null
  br i1 %.not.i135, label %nsvg__flattenShapeStroke.exit, label %bb.u, !llvm.loop !183

nsvg__flattenShapeStroke.exit:                    ; preds = %bb.bn
  %.pre = load i32, ptr %i.an, align 8, !tbaa !145 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %i.abm = icmp sgt i32 %.pre, 0
  br i1 %i.abm, label %.lr.ph207, label %._crit_edge208

.lr.ph207:                                        ; preds = %nsvg__flattenShapeStroke.exit
  %i.abn = load ptr, ptr %i.au, align 8, !tbaa !126 ; 3 uses
  %wide.trip.count228 = zext nneg i32 %.pre to i64 ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count228, 1
  %i.abo = icmp eq i32 %.pre, 1
  br i1 %i.abo, label %.epil.preheader334, label %.lr.ph207.new

.lr.ph207.new:                                    ; preds = %.lr.ph207
  %unroll_iter339 = and i64 %wide.trip.count228, 2147483646
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph207.new
  %indvars.iv225 = phi i64 [ 0, %.lr.ph207.new ], [ %indvars.iv.next226.1, %bb.bo ] ; 3 uses
  %niter340 = phi i64 [ 0, %.lr.ph207.new ], [ %niter340.next.1, %bb.bo ]
  %i.abp = getelementptr inbounds nuw [32 x i8], ptr %i.abn, i64 %indvars.iv225 ; 2 uses
  %i.abq = load <4 x float>, ptr %i.abp, align 8, !tbaa !32
  %i.abr = fadd <4 x float> %i.bc, %i.abq
  %i.abs = fmul <4 x float> %i.abr, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.abs, ptr %i.abp, align 8, !tbaa !32
  %i.abt = getelementptr inbounds nuw [32 x i8], ptr %i.abn, i64 %indvars.iv225
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 32 ; 2 uses
  %i.abv = load <4 x float>, ptr %i.abu, align 8, !tbaa !32
  %i.abw = fadd <4 x float> %i.bc, %i.abv
  %i.abx = fmul <4 x float> %i.abw, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.abx, ptr %i.abu, align 8, !tbaa !32
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %niter340.next.1 = add nuw i64 %niter340, 2     ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %._crit_edge208.thread302.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !184

._crit_edge208:                                   ; preds = %nsvg__flattenShapeStroke.exit
  %.not119 = icmp eq i32 %.pre, 0
  br i1 %.not119, label %bb.bp, label %._crit_edge208.thread302

._crit_edge208.thread302.loopexit.unr-lcssa:      ; preds = %bb.bo
  %lcmp.mod337.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod337.not, label %._crit_edge208.thread302, label %.epil.preheader334

.epil.preheader334:                               ; preds = %._crit_edge208.thread302.loopexit.unr-lcssa, %.lr.ph207
  %indvars.iv225.epil.init = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next226.1, %._crit_edge208.thread302.loopexit.unr-lcssa ]
  %lcmp.mod338 = trunc i32 %.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.aby = getelementptr inbounds nuw [32 x i8], ptr %i.abn, i64 %indvars.iv225.epil.init ; 2 uses
  %i.abz = load <4 x float>, ptr %i.aby, align 8, !tbaa !32
  %i.aca = fadd <4 x float> %i.bc, %i.abz
  %i.acb = fmul <4 x float> %i.aca, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.acb, ptr %i.aby, align 8, !tbaa !32
  br label %._crit_edge208.thread302

._crit_edge208.thread302:                         ; preds = %.epil.preheader334, %._crit_edge208.thread302.loopexit.unr-lcssa, %._crit_edge208
  %i.acc = load ptr, ptr %i.au, align 8, !tbaa !126
  %i.acd = sext i32 %.pre to i64
  tail call void @qsort(ptr noundef %i.acc, i64 noundef %i.acd, i64 noundef 32, ptr noundef nonnull @nsvg__cmpEdge) #30
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge208.thread, %._crit_edge208.thread302, %._crit_edge208
  %i.ace = load float, ptr %i.bx, align 8, !tbaa !160
  call fastcc void @nsvg__initPaint(ptr noundef %10, ptr noundef %i.bo, float noundef %i.ace)
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.bp, %._crit_edge205.thread
  %.sink = phi i8 [ %i.hh, %._crit_edge205.thread ], [ 0, %bb.bp ]
  call fastcc void @nsvg__rasterizeSortedEdges(ptr noundef nonnull %0, float noundef %2, float noundef %3, float noundef %4, ptr noundef %10, i8 noundef signext %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %bb.g, %bb.r, %bb.s
  %i.acf = add nuw nsw i32 %.0210, 1              ; 2 uses
  %exitcond235.not = icmp eq i32 %i.acf, 3
  br i1 %exitcond235.not, label %.loopexit, label %bb.g, !llvm.loop !185

.loopexit:                                        ; preds = %.thread, %bb.f
  %i.acg = getelementptr inbounds nuw i8, ptr %.0110213, i64 328
  %.0110 = load ptr, ptr %i.acg, align 8, !tbaa !42 ; 2 uses
  %.not = icmp eq ptr %.0110, null
  br i1 %.not, label %._crit_edge216, label %bb.f, !llvm.loop !186

._crit_edge216:                                   ; preds = %.loopexit, %._crit_edge
  %i.ach = icmp sgt i32 %6, 0                     ; 2 uses
  %or.cond.i145 = and i1 %i.ach, %i.m
  br i1 %or.cond.i145, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge216
  %i.aci = sext i32 %8 to i64
  %wide.trip.count.i151 = zext nneg i32 %7 to i64
  br label %.lr.ph.i152

.preheader.i:                                     ; preds = %._crit_edge.i155, %._crit_edge216
  br i1 %i.m, label %.lr.ph153.i, label %nsvg__unpremultiplyAlpha.exit

.lr.ph153.i:                                      ; preds = %.preheader.i
  %i.acj = sub i32 3, %8
  %i.ack = sext i32 %i.acj to i64                 ; 3 uses
  %i.acl = sub nsw i32 0, %8
  %i.acm = sext i32 %i.acl to i64                 ; 3 uses
  %i.acn = sub i32 1, %8
  %i.aco = sext i32 %i.acn to i64                 ; 3 uses
  %i.acp = sub i32 2, %8
  %i.acq = sext i32 %i.acp to i64                 ; 3 uses
  %i.acr = sext i32 %8 to i64                     ; 4 uses
  br i1 %i.ach, label %.lr.ph150.preheader.i, label %nsvg__unpremultiplyAlpha.exit

.lr.ph150.preheader.i:                            ; preds = %.lr.ph153.i
  %i.acs = zext nneg i32 %7 to i64                ; 2 uses
  %.not200.i = icmp eq i32 %6, 1                  ; 2 uses
  %i.act = icmp samesign ugt i32 %6, 2
  %exitcond157.peel184.not.i = icmp eq i32 %6, 2
  br label %.lr.ph150.i

.lr.ph.i152:                                      ; preds = %._crit_edge.i155, %.lr.ph.preheader.i
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i156, %._crit_edge.i155 ] ; 2 uses
  %i.acu = mul nsw i64 %indvars.iv.i153, %i.aci
  %i.acv = getelementptr inbounds i8, ptr %5, i64 %i.acu
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %.lr.ph.i152
  %.0104141.i = phi ptr [ %i.acv, %.lr.ph.i152 ], [ %i.adm, %bb.bs ] ; 6 uses
  %.0107140.i = phi i32 [ 0, %.lr.ph.i152 ], [ %i.adn, %bb.bs ]
  %i.acw = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 3
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !8 ; 2 uses
  %.not115.i = icmp eq i8 %i.acx, 0
  br i1 %.not115.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.acy = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 2 ; 2 uses
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !8
  %i.ada = zext i8 %i.acz to i16
  %i.adb = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 1 ; 2 uses
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !8
  %i.add = zext i8 %i.adc to i16
  %i.ade = load i8, ptr %.0104141.i, align 1, !tbaa !8
  %i.adf = zext i8 %i.ade to i16
  %.lhs.trunc.i = mul nuw i16 %i.adf, 255
  %.rhs.trunc.i = zext i8 %i.acx to i16           ; 3 uses
  %i.adg = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %i.adh = trunc i16 %i.adg to i8
  store i8 %i.adh, ptr %.0104141.i, align 1, !tbaa !8
  %.lhs.trunc124.i = mul nuw i16 %i.add, 255
  %i.adi = udiv i16 %.lhs.trunc124.i, %.rhs.trunc.i
  %i.adj = trunc i16 %i.adi to i8
  store i8 %i.adj, ptr %i.adb, align 1, !tbaa !8
  %.lhs.trunc127.i = mul nuw i16 %i.ada, 255
  %i.adk = udiv i16 %.lhs.trunc127.i, %.rhs.trunc.i
  %i.adl = trunc i16 %i.adk to i8
  store i8 %i.adl, ptr %i.acy, align 1, !tbaa !8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.adm = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 4
  %i.adn = add nuw nsw i32 %.0107140.i, 1         ; 2 uses
  %exitcond.not.i154 = icmp eq i32 %i.adn, %6
  br i1 %exitcond.not.i154, label %._crit_edge.i155, label %bb.bq, !llvm.loop !187

._crit_edge.i155:                                 ; preds = %bb.bs
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next.i156, %wide.trip.count.i151
  br i1 %exitcond156.not.i, label %.preheader.i, label %.lr.ph.i152, !llvm.loop !188

.lr.ph150.i:                                      ; preds = %._crit_edge151.i, %.lr.ph150.preheader.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph150.preheader.i ], [ %indvars.iv.next187.i, %._crit_edge151.i ] ; 3 uses
  %i.ado = mul nsw i64 %indvars.iv186.i, %i.acr
  %i.adp = getelementptr inbounds i8, ptr %5, i64 %i.ado ; 22 uses
  %i.adq = icmp samesign ugt i64 %indvars.iv186.i, 1 ; 3 uses
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 3 uses
  %i.adr = icmp samesign ult i64 %indvars.iv.next187.i, %i.acs ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adp, i64 3
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !8
  %i.adu = icmp eq i8 %i.adt, 0
  br i1 %i.adu, label %bb.bt, label %bb.cd

bb.bt:                                            ; preds = %.lr.ph150.i
  br i1 %.not200.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adp, i64 7
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !8
  %.not112.peel.i = icmp eq i8 %i.adw, 0
  br i1 %.not112.peel.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adp, i64 4
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !8
  %i.adz = zext i8 %i.ady to i16
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adp, i64 5
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !8
  %i.aec = zext i8 %i.aeb to i16
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adp, i64 6
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !8
  %i.aef = zext i8 %i.aee to i16
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.1100.peel.i = phi i16 [ %i.adz, %bb.bv ], [ 0, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %.196.peel.i = phi i16 [ %i.aec, %bb.bv ], [ 0, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %.192.peel.i = phi i16 [ %i.aef, %bb.bv ], [ 0, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %.1.peel.i = phi i32 [ 1, %bb.bv ], [ 0, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  br i1 %i.adq, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.aeg = getelementptr inbounds i8, ptr %i.adp, i64 %i.ack
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !8
  %.not113.peel.i = icmp eq i8 %i.aeh, 0
  br i1 %.not113.peel.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aei = getelementptr inbounds i8, ptr %i.adp, i64 %i.acm
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !8
  %i.aek = zext i8 %i.aej to i16
  %i.ael = add nuw nsw i16 %.1100.peel.i, %i.aek
  %i.aem = getelementptr inbounds i8, ptr %i.adp, i64 %i.aco
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !8
  %i.aeo = zext i8 %i.aen to i16
  %i.aep = add nuw nsw i16 %.196.peel.i, %i.aeo
  %i.aeq = getelementptr inbounds i8, ptr %i.adp, i64 %i.acq
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !8
  %i.aes = zext i8 %i.aer to i16
  %i.aet = add nuw nsw i16 %.192.peel.i, %i.aes
  %i.aeu = add nuw nsw i32 %.1.peel.i, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.2101.peel.i = phi i16 [ %i.ael, %bb.by ], [ %.1100.peel.i, %bb.bx ], [ %.1100.peel.i, %bb.bw ] ; 2 uses
  %.297.peel.i = phi i16 [ %i.aep, %bb.by ], [ %.196.peel.i, %bb.bx ], [ %.196.peel.i, %bb.bw ] ; 2 uses
  %.293.peel.i = phi i16 [ %i.aet, %bb.by ], [ %.192.peel.i, %bb.bx ], [ %.192.peel.i, %bb.bw ] ; 2 uses
  %.2.peel.i = phi i32 [ %i.aeu, %bb.by ], [ %.1.peel.i, %bb.bx ], [ %.1.peel.i, %bb.bw ] ; 3 uses
  br i1 %i.adr, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
end_hunk_1
begin_hunk_2_@nsvg__parseStrokeDashArray:bb.a

.critedge2.i:                                     ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01930.i, i64 1 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %nsvg__getNextDashItem.exit, label %.lr.ph.i, !llvm.loop !282

.lr.ph36.i:                                       ; preds = %.lr.ph.i, %bb.e
  %i.o = phi i8 [ %i.x, %bb.e ], [ %i.h, %.lr.ph.i ] ; 4 uses
  %.035.i = phi i32 [ %.1.i, %bb.e ], [ 0, %.lr.ph.i ] ; 5 uses
  %.12034.i = phi ptr [ %i.w, %bb.e ], [ %.01930.i, %.lr.ph.i ] ; 2 uses
  %i.p = zext nneg i8 %i.o to i64
  %memchr.bounds.i25.i = icmp ult i8 %i.o, 64
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.q, 4294983169
  %memchr.bits.i26.i = icmp ne i64 %i.r, 0
  %memchr1.i27.i = select i1 %memchr.bounds.i25.i, i1 %memchr.bits.i26.i, i1 false
  %.not24.i = icmp eq i8 %i.o, 44
  %or.cond28.i = or i1 %.not24.i, %memchr1.i27.i
  br i1 %or.cond28.i, label %.critedge4.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph36.i
  %i.s = icmp slt i32 %.035.i, 63
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i32 %.035.i, 1
  %i.u = sext i32 %.035.i to i64
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u
  store i8 %i.o, ptr %i.v, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %i.t, %bb.d ], [ %.035.i, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.12034.i, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %.not22.i = icmp eq i8 %i.x, 0
  br i1 %.not22.i, label %.critedge4.loopexit.i, label %.lr.ph36.i, !llvm.loop !283

.critedge4.loopexit.i:                            ; preds = %bb.e, %.lr.ph36.i
  %.120.lcssa.ph.i = phi ptr [ %.12034.i, %.lr.ph36.i ], [ %i.w, %bb.e ]
  %.0.lcssa.ph.i = phi i32 [ %.035.i, %.lr.ph36.i ], [ %.1.i, %bb.e ]
  %i.y = sext i32 %.0.lcssa.ph.i to i64
  br label %nsvg__getNextDashItem.exit

nsvg__getNextDashItem.exit:                       ; preds = %.critedge2.i, %bb.b, %.critedge4.loopexit.i
  %.120.lcssa.i = phi ptr [ %.120.lcssa.ph.i, %.critedge4.loopexit.i ], [ %.01926, %bb.b ], [ %i.m, %.critedge2.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.y, %.critedge4.loopexit.i ], [ 0, %bb.b ], [ 0, %.critedge2.i ]
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %.0.lcssa.i
  store i8 0, ptr %i.z, align 1, !tbaa !8
  %i.aa = load i8, ptr %i.a, align 16, !tbaa !8
  %.not20 = icmp eq i8 %i.aa, 0
  br i1 %.not20, label %nsvg__getNextDashItem.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %nsvg__getNextDashItem.exit
  %i.ab = icmp slt i32 %.01727, 8
  br i1 %i.ab, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %.val = load float, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %.val21 = load float, ptr %i.d, align 4, !tbaa !55 ; 2 uses
  %i.ac = call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef nonnull readonly %i.a) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ac to i32
  %i.ad = bitcast i32 %.sroa.0.0.extract.trunc.i.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i = lshr i64 %i.ac, 32
  %.sroa.12.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i to i32
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !58
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [312 x i8], ptr %0, i64 %i.af ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i, label %nsvg__parseCoordinate.exit [
    i32 7, label %bb.o
    i32 9, label %bb.n
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 8, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = fdiv float %i.ad, 7.200000e+01
  %i.ai = load float, ptr %i.f, align 4, !tbaa !41
  %i.aj = fmul float %i.ah, %i.ai
  br label %nsvg__parseCoordinate.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = fdiv float %i.ad, 6.000000e+00
  %i.al = load float, ptr %i.f, align 4, !tbaa !41
  %i.am = fmul float %i.ak, %i.al
  br label %nsvg__parseCoordinate.exit

bb.j:                                             ; preds = %bb.g
  %i.an = fdiv float %i.ad, 2.540000e+01
  %i.ao = load float, ptr %i.f, align 4, !tbaa !41
  %i.ap = fmul float %i.an, %i.ao
  br label %nsvg__parseCoordinate.exit

bb.k:                                             ; preds = %bb.g
  %i.aq = fdiv float %i.ad, 2.540000e+00
  %i.ar = load float, ptr %i.f, align 4, !tbaa !41
  %i.as = fmul float %i.aq, %i.ar
  br label %nsvg__parseCoordinate.exit

bb.l:                                             ; preds = %bb.g
  %i.at = load float, ptr %i.f, align 4, !tbaa !41
  %i.au = fmul float %i.at, %i.ad
  br label %nsvg__parseCoordinate.exit

bb.m:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 292
  %i.aw = load float, ptr %i.av, align 4, !tbaa !59
  %i.ax = fmul float %i.aw, %i.ad
  br label %nsvg__parseCoordinate.exit

bb.n:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 292
  %i.az = load float, ptr %i.ay, align 4, !tbaa !59
  %i.ba = fmul float %i.az, %i.ad
  %i.bb = fmul float %i.ba, 5.200000e-01
  br label %nsvg__parseCoordinate.exit

bb.o:                                             ; preds = %bb.g
  %i.bc = fmul float %.val21, %.val21
  %i.bd = tail call float @llvm.fmuladd.f32(float %.val, float %.val, float %i.bc)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bd)
  %i.be = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ad, i64 1
  %i.bg = fdiv <2 x float> %i.bf, <float f0x3FB504F3, float 1.000000e+02> ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0
  %i.bi = extractelement <2 x float> %i.bg, i64 1
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float 0.000000e+00)
  br label %nsvg__parseCoordinate.exit

nsvg__parseCoordinate.exit:                       ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i.i = phi float [ %i.ax, %bb.m ], [ %i.bj, %bb.o ], [ %i.bb, %bb.n ], [ %i.aj, %bb.h ], [ %i.am, %bb.i ], [ %i.ap, %bb.j ], [ %i.as, %bb.k ], [ %i.au, %bb.l ], [ %i.ad, %bb.g ]
  %i.bk = tail call float @llvm.fabs.f32(float %.0.i.i)
  %i.bl = add nsw i32 %.01727, 1
  %i.bm = sext i32 %.01727 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bm
  store float %i.bk, ptr %i.bn, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %nsvg__parseCoordinate.exit, %bb.f
  %.1 = phi i32 [ %i.bl, %nsvg__parseCoordinate.exit ], [ %.01727, %bb.f ] ; 2 uses
  %.pr = load i8, ptr %.120.lcssa.i, align 1, !tbaa !8
  %.not = icmp eq i8 %.pr, 0
  br i1 %.not, label %nsvg__getNextDashItem.exit._crit_edge, label %bb.b, !llvm.loop !284

nsvg__getNextDashItem.exit._crit_edge:            ; preds = %bb.p, %nsvg__getNextDashItem.exit
  %.017.lcssa = phi i32 [ %.01727, %nsvg__getNextDashItem.exit ], [ %.1, %bb.p ] ; 4 uses
  %i.bo = icmp sgt i32 %.017.lcssa, 0
  br i1 %i.bo, label %.lr.ph32.preheader, label %._crit_edge33

.lr.ph32.preheader:                               ; preds = %nsvg__getNextDashItem.exit._crit_edge
  %wide.trip.count = zext nneg i32 %.017.lcssa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bp = icmp ult i32 %.017.lcssa, 8
  br i1 %i.bp, label %.lr.ph32.epil.preheader, label %.lr.ph32.preheader.new

.lr.ph32.preheader.new:                           ; preds = %.lr.ph32.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32, %.lr.ph32.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph32.preheader.new ], [ %indvars.iv.next.7, %.lr.ph32 ] ; 9 uses
  %.030 = phi float [ 0.000000e+00, %.lr.ph32.preheader.new ], [ %i.cu, %.lr.ph32 ]
  %niter = phi i64 [ 0, %.lr.ph32.preheader.new ], [ %niter.next.7, %.lr.ph32 ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.br = load float, ptr %i.bq, align 4, !tbaa !32
  %i.bs = fadd float %.030, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !32
  %i.bw = fadd float %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !32
  %i.ca = fadd float %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !32
  %i.ce = fadd float %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !32
  %i.ci = fadd float %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !32
  %i.cm = fadd float %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load float, ptr %i.co, align 4, !tbaa !32
  %i.cq = fadd float %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !32
  %i.cu = fadd float %i.cq, %i.ct                 ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge33.loopexit.unr-lcssa, label %.lr.ph32, !llvm.loop !285

._crit_edge33.loopexit.unr-lcssa:                 ; preds = %.lr.ph32
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge33.loopexit, label %.lr.ph32.epil.preheader

.lr.ph32.epil.preheader:                          ; preds = %._crit_edge33.loopexit.unr-lcssa, %.lr.ph32.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next.7, %._crit_edge33.loopexit.unr-lcssa ]
  %.030.epil.init = phi float [ 0.000000e+00, %.lr.ph32.preheader ], [ %i.cu, %._crit_edge33.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph32.epil

.lr.ph32.epil:                                    ; preds = %.lr.ph32.epil, %.lr.ph32.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph32.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph32.epil ] ; 2 uses
  %.030.epil = phi float [ %.030.epil.init, %.lr.ph32.epil.preheader ], [ %i.cx, %.lr.ph32.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph32.epil.preheader ], [ %epil.iter.next, %.lr.ph32.epil ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !32
  %i.cx = fadd float %.030.epil, %i.cw            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge33.loopexit, label %.lr.ph32.epil, !llvm.loop !286

._crit_edge33.loopexit:                           ; preds = %.lr.ph32.epil, %._crit_edge33.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.cu, %._crit_edge33.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph32.epil ]
  %i.cy = fcmp ugt float %.lcssa, f0x358637BD
  %i.cz = select i1 %i.cy, i32 %.017.lcssa, i32 0
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %bb.a, %nsvg__getNextDashItem.exit._crit_edge, %._crit_edge33.loopexit, %bb.a
  %.018 = phi i32 [ 0, %bb.a ], [ 0, %nsvg__getNextDashItem.exit._crit_edge ], [ %i.cz, %._crit_edge33.loopexit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc signext range(i8 0, 3) i8 @nsvg__parseLineCap(ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.69) #31
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.70) #31
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.71) #31
  %i.f = icmp eq i32 %i.e, 0
  %. = select i1 %i.f, i8 2, i8 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc signext range(i8 0, 3) i8 @nsvg__parseLineJoin(ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.72) #31
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.70) #31
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.73) #31
  %i.f = icmp eq i32 %i.e, 0
  %. = select i1 %i.f, i8 2, i8 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc signext range(i8 0, 2) i8 @nsvg__parseFillRule(ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.74) #31
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.75) #31
  %i.d = icmp eq i32 %i.c, 0
  %. = zext i1 %i.d to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ %., %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @nsvg__xformPremultiply(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !32 ; 2 uses
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.e = load <2 x float>, ptr %0, align 4, !tbaa !32 ; 2 uses
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.g = insertelement <2 x float> poison, float %.sroa.14.0.copyload, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %i.h, %i.c
  %i.j = insertelement <2 x float> poison, float %.sroa.12.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.e, <2 x float> %i.i)
  %i.m = load <2 x float>, ptr %i.b, align 4, !tbaa !32
  %i.n = fadd <2 x float> %i.m, %i.l
  %i.o = load <4 x float>, ptr %1, align 4        ; 2 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.q = fmul <4 x float> %i.p, %i.d
  %i.r = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.f, <4 x float> %i.q)
  store <4 x float> %i.s, ptr %0, align 4
  store <2 x float> %i.n, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc zeroext range(i8 6, 37) i8 @nsvg__parsePaintOrder(ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.76) #31
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(20) @.str.77) #31
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(20) @.str.78) #31
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(20) @.str.79) #31
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(20) @.str.80) #31
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(20) @.str.81) #31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(20) @.str.82) #31
  %i.n = icmp eq i32 %i.m, 0
  %spec.select = select i1 %i.n, i8 6, i8 24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i8 [ %spec.select, %bb.g ], [ 24, %bb.a ], [ 36, %bb.c ], [ 33, %bb.d ], [ 9, %bb.e ], [ 18, %bb.f ], [ 24, %bb.b ]
  ret i8 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @nsvg__applyClassStyles(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca [512 x i8], align 16              ; 5 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !8       ; 2 uses
  %.not85 = icmp eq i8 %i.c, 0
  br i1 %.not85, label %.thread, label %.preheader51.lr.ph

.preheader51.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39976
  br label %.preheader51

.loopexit.loopexit:                               ; preds = %nsvg__parseStyle.exit
  %.pre96 = load i8, ptr %.2.lcssa.ph, align 1, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.critedge2
  %i.e = phi i8 [ %.pre96, %.loopexit.loopexit ], [ %i.q, %.critedge2 ] ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %.preheader51.backedge

.preheader51:                                     ; preds = %.preheader51.backedge, %.preheader51.lr.ph
  %i.f = phi i8 [ %i.c, %.preheader51.lr.ph ], [ %.be122, %.preheader51.backedge ] ; 3 uses
end_hunk_2
begin_hunk_3_@nsvg__curveBounds:bb.a

bb.t:                                             ; preds = %._crit_edge
  %i.fq = extractelement <2 x double> %i.eo, i64 0 ; 2 uses
  %i.fr = tail call double @llvm.fabs.f64(double %i.fq)
  %i.fs = fcmp ogt double %i.fr, f0x3D719799812DEA11
  br i1 %i.fs, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ft = extractelement <2 x double> %i.el, i64 1
  %i.fu = fneg double %i.ft
  %i.fv = fdiv double %i.fu, %i.fq                ; 3 uses
  %i.fw = fcmp ogt double %i.fv, f0x3D719799812DEA11
  %i.fx = fcmp olt double %i.fv, f0x3FEFFFFFFFFFDCD1
  %or.cond.1 = and i1 %i.fw, %i.fx
  br i1 %or.cond.1, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  store double %i.fv, ptr %i.a, align 16, !tbaa !309
  br label %.lr.ph.1

bb.w:                                             ; preds = %bb.r
  br i1 %or.cond3.1, label %.lr.ph.1, label %.loopexit

.lr.ph.1:                                         ; preds = %bb.s, %bb.v, %bb.w
  %.1.1137 = phi i64 [ 1, %bb.w ], [ %i.fp, %bb.s ], [ 1, %bb.v ]
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.1
  %i.fz = phi float [ %i.x, %.lr.ph.1 ], [ %i.hd, %bb.x ] ; 2 uses
  %i.ga = phi float [ %i.n, %.lr.ph.1 ], [ %i.hb, %bb.x ] ; 2 uses
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.x ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.1
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !309 ; 7 uses
  %i.gd = load float, ptr %i.i, align 4, !tbaa !32
  %i.ge = fpext float %i.gd to double
  %i.gf = load float, ptr %i.ds, align 4, !tbaa !32
  %i.gg = fpext float %i.gf to double
  %i.gh = load float, ptr %i.du, align 4, !tbaa !32
  %i.gi = fpext float %i.gh to double
  %i.gj = load float, ptr %i.dw, align 4, !tbaa !32
  %i.gk = fpext float %i.gj to double
  %i.gl = fsub double 1.000000e+00, %i.gc         ; 5 uses
  %i.gm = fmul double %i.gl, %i.gl
  %i.gn = fmul double %i.gl, %i.gm
  %i.go = fmul double %i.gl, 3.000000e+00         ; 2 uses
  %i.gp = fmul double %i.gl, %i.go
  %i.gq = fmul double %i.gc, %i.gp
  %i.gr = fmul double %i.gq, %i.gg
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.ge, double %i.gr)
  %i.gt = fmul double %i.gc, %i.go
  %i.gu = fmul double %i.gc, %i.gt
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.gi, double %i.gs)
  %i.gw = fmul double %i.gc, %i.gc
  %i.gx = fmul double %i.gc, %i.gw
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gk, double %i.gv)
  %i.gz = fptrunc double %i.gy to float           ; 4 uses
  %i.ha = fcmp olt float %i.ga, %i.gz
  %i.hb = select i1 %i.ha, float %i.ga, float %i.gz ; 2 uses
  store float %i.hb, ptr %i.o, align 4, !tbaa !32
  %i.hc = fcmp ogt float %i.fz, %i.gz
  %i.hd = select i1 %i.hc, float %i.fz, float %i.gz ; 2 uses
  store float %i.hd, ptr %i.fy, align 4, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %.1.1137
  br i1 %exitcond.1.not, label %.loopexit, label %bb.x, !llvm.loop !311

.loopexit:                                        ; preds = %bb.x, %bb.o, %bb.t, %bb.u, %bb.w, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nsvg__xformInverse(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #26 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !32
  %i.b = fpext float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !32
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !32
  %i.h = fpext <2 x float> %i.g to <2 x double>   ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fneg double %i.i
  %i.k = extractelement <2 x double> %i.h, i64 1
  %i.l = fmul double %i.k, %i.j
  %i.m = tail call double @llvm.fmuladd.f64(double %i.b, double %i.e, double %i.l) ; 2 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %or.cond = fcmp olt double %i.n, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = fdiv double 1.000000e+00, %i.m           ; 6 uses
  %i.r = fmul double %i.q, %i.e
  %i.s = fptrunc double %i.r to float
  store float %i.s, ptr %0, align 4, !tbaa !32
  %i.t = load float, ptr %i.p, align 4, !tbaa !32
  %i.u = fneg float %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.q, %i.v
  %i.x = fptrunc double %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load <4 x float>, ptr %i.p, align 4, !tbaa !32
  %i.ac = fpext <4 x float> %i.ab to <4 x double> ; 4 uses
  %i.ad = extractelement <4 x double> %i.ac, i64 2
  %i.ae = fneg double %i.ad
  %i.af = extractelement <4 x double> %i.ac, i64 1
  %i.ag = fmul double %i.af, %i.ae
  %i.ah = extractelement <4 x double> %i.ac, i64 0
  %i.ai = extractelement <4 x double> %i.ac, i64 3
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ai, double %i.ag)
  %i.ak = fmul double %i.q, %i.aj
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.al, ptr %i.am, align 4, !tbaa !32
  %i.an = load float, ptr %i.f, align 4, !tbaa !32
  %i.ao = fneg float %i.an
  %i.ap = fpext float %i.ao to double
  %i.aq = fmul double %i.q, %i.ap
  %i.ar = fptrunc double %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ar, ptr %i.as, align 4, !tbaa !32
  %i.at = load float, ptr %1, align 4, !tbaa !32
  %i.au = fpext float %i.at to double
  %i.av = fmul double %i.q, %i.au
  %i.aw = fptrunc double %i.av to float
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aw, ptr %i.ax, align 4, !tbaa !32
  %i.ay = load float, ptr %i.f, align 4, !tbaa !32
  %i.az = fpext float %i.ay to double
  %i.ba = load float, ptr %i.aa, align 4, !tbaa !32
  %i.bb = fpext float %i.ba to double
  %i.bc = load float, ptr %1, align 4, !tbaa !32
  %i.bd = fpext float %i.bc to double
  %i.be = load float, ptr %i.z, align 4, !tbaa !32
  %i.bf = fpext float %i.be to double
  %i.bg = fneg double %i.bf
  %i.bh = fmul double %i.bd, %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bb, double %i.bh)
  %i.bj = fmul double %i.q, %i.bi
  %i.bk = fptrunc double %i.bj to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink34 = phi ptr [ %0, %bb.c ], [ %1, %bb.b ]
  %.sink = phi float [ %i.bk, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink34, i64 20
  store float %.sink, ptr %i.bl, align 4, !tbaa !32
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__getLocalBounds(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #27 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.03741 = load ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %.not42 = icmp eq ptr %.03741, null
  br i1 %.not42, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %._crit_edge
  %.03744 = phi ptr [ %.03741, %.lr.ph46 ], [ %.037, %._crit_edge ] ; 3 uses
  %.043 = phi i32 [ 1, %.lr.ph46 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.l = load ptr, ptr %.03744, align 8, !tbaa !66 ; 9 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !32
  %i.p = load <2 x float>, ptr %i.d, align 4, !tbaa !32 ; 3 uses
  %i.q = load <2 x float>, ptr %2, align 4, !tbaa !32 ; 3 uses
  %i.r = load <2 x float>, ptr %i.e, align 4, !tbaa !32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03744, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !64   ; 3 uses
  %i.u = insertelement <2 x float> poison, float %i.o, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.v, %i.p
  %i.x = insertelement <2 x float> poison, float %i.m, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.q, <2 x float> %i.w)
  %i.aa = fadd <2 x float> %i.r, %i.z
  store <2 x float> %i.aa, ptr %i.a, align 16, !tbaa !32
  %i.ab = icmp sgt i32 %i.t, 1
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ac = add nsw i32 %i.t, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ag = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ah = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = load <4 x float>, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.ak = fmul <4 x float> %i.aj, %i.af
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ag, <4 x float> %i.ak)
  %i.an = fadd <4 x float> %i.ah, %i.am
  store <4 x float> %i.an, ptr %i.f, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !32
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.p, %i.at
  %i.av = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.q, <2 x float> %i.au)
  %i.ay = fadd <2 x float> %i.r, %i.ax            ; 2 uses
  store <2 x float> %i.ay, ptr %i.g, align 8, !tbaa !32
  call fastcc void @nsvg__curveBounds(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %.not38.peel = icmp eq i32 %.043, 0
  br i1 %.not38.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.az = load <4 x float>, ptr %i.b, align 16, !tbaa !32 ; 3 uses
  %i.ba = load float, ptr %i.h, align 4, !tbaa !32
  %i.bb = extractelement <4 x float> %i.az, i64 0
  store float %i.bb, ptr %0, align 4, !tbaa !32
  store float %i.ba, ptr %i.i, align 4, !tbaa !32
  %i.bc = extractelement <4 x float> %i.az, i64 2
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.bd = load <4 x float>, ptr %0, align 4, !tbaa !32 ; 3 uses
  %i.be = load <4 x float>, ptr %i.b, align 16, !tbaa !32 ; 3 uses
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bh = fcmp olt <4 x float> %i.bf, %i.bg
  %i.bi = select <4 x i1> %i.bh, <4 x float> %i.bd, <4 x float> %i.be ; 3 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bj, ptr %0, align 4, !tbaa !32
  %i.bk = extractelement <4 x float> %i.bi, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.bc, %bb.c ], [ %i.bk, %bb.d ]
  %i.bl = phi <4 x float> [ %i.az, %bb.c ], [ %i.bi, %bb.d ] ; 2 uses
  store float %storemerge, ptr %i.j, align 4, !tbaa !32
  %i.bm = extractelement <4 x float> %i.bl, i64 3
  store float %i.bm, ptr %i.k, align 4, !tbaa !32
  store <2 x float> %i.ay, ptr %i.a, align 16, !tbaa !32
  %i.bn = icmp samesign ugt i32 %i.t, 4
  br i1 %i.bn, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.e, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next ], [ 3, %bb.e ] ; 4 uses
  %i.bo = phi <4 x float> [ %i.cv, %.lr.ph.peel.next ], [ %i.bl, %bb.e ] ; 3 uses
  %3 = shl i64 %indvars.iv, 33
  %sext = add i64 %3, 8589934592
  %4 = ashr exact i64 %sext, 30
  %5 = getelementptr inbounds i8, ptr %i.l, i64 %4
  %i.bp = shl i64 %indvars.iv, 33
  %sext.a = add i64 %i.bp, 17179869184
  %i.bq = ashr exact i64 %sext.a, 30
  %i.br = getelementptr inbounds i8, ptr %i.l, i64 %i.bq
  %6 = load float, ptr %i.br, align 4, !tbaa !32
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bs = shl i32 %indvars.iv.tr, 1
  %i.bt = add i32 %i.bs, 5
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bu
  %7 = load float, ptr %i.bv, align 4, !tbaa !32
  %i.bw = load <2 x float>, ptr %5, align 4, !tbaa !32 ; 2 uses
  %i.bx = load <2 x float>, ptr %2, align 4, !tbaa !32 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bz = load <2 x float>, ptr %i.d, align 4, !tbaa !32 ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cb = load <2 x float>, ptr %i.e, align 4, !tbaa !32 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %8 = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cd = fmul <4 x float> %i.ca, %10
  %11 = insertelement <2 x float> %i.bw, float %6, i64 1
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %i.by, <4 x float> %i.cd)
  %i.cf = fadd <4 x float> %i.cc, %i.ce
  store <4 x float> %i.cf, ptr %i.f, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv.next, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !32
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %i.bz, %i.cl
  %i.cn = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.bx, <2 x float> %i.cm)
  %i.cq = fadd <2 x float> %i.cb, %i.cp           ; 2 uses
  store <2 x float> %i.cq, ptr %i.g, align 8, !tbaa !32
  call fastcc void @nsvg__curveBounds(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.cr = load <4 x float>, ptr %i.b, align 16, !tbaa !32 ; 3 uses
  %i.cs = fcmp olt <4 x float> %i.bo, %i.cr
  %i.ct = fcmp ogt <4 x float> %i.bo, %i.cr
  %i.cu = shufflevector <4 x i1> %i.cs, <4 x i1> %i.ct, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cv = select <4 x i1> %i.cu, <4 x float> %i.bo, <4 x float> %i.cr ; 2 uses
  store <4 x float> %i.cv, ptr %0, align 4, !tbaa !32
  store <2 x float> %i.cq, ptr %i.a, align 16, !tbaa !32
  %i.cw = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.cw, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !312

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.e, %bb.b
  %.1.lcssa = phi i32 [ %.043, %bb.b ], [ 0, %bb.e ], [ 0, %.lr.ph.peel.next ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.03744, i64 32
  %.037 = load ptr, ptr %i.cx, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %.037, null
  br i1 %.not, label %._crit_edge47, label %bb.b, !llvm.loop !313

._crit_edge47:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @nsvg__createGradient(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %nsvg__findGradientData.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39984
  %.011.i = load ptr, ptr %i.c, align 8, !tbaa !314 ; 3 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %nsvg__findGradientData.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.013.i = phi ptr [ %.0.i, %bb.b ], [ %.011.i, %.preheader.i ] ; 18 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.013.i, ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %nsvg__findGradientData.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.013.i, i64 216
  %.0.i = load ptr, ptr %i.f, align 8, !tbaa !314 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %nsvg__findGradientData.exit.thread, label %.lr.ph.i, !llvm.loop !315

nsvg__findGradientData.exit:                      ; preds = %.lr.ph.i, %nsvg__findGradientData.exit148
  %.0128 = phi i32 [ %i.x, %nsvg__findGradientData.exit148 ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0117 = phi ptr [ %.09.i147, %nsvg__findGradientData.exit148 ], [ %.013.i, %.lr.ph.i ] ; 5 uses
  %.not = icmp eq ptr %.0117, null
  br i1 %.not, label %nsvg__findGradientData.exit.thread, label %bb.c

bb.c:                                             ; preds = %nsvg__findGradientData.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0117, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 2 uses
  %.not136 = icmp eq ptr %i.h, null
  br i1 %.not136, label %bb.d, label %.thread.thread

.thread.thread:                                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.0117, i64 200
  %i.j = load i32, ptr %i.i, align 8, !tbaa !243  ; 3 uses
  %i.k = add nsw i32 %i.j, -1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = add nsw i64 %i.m, 48
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #33 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %nsvg__findGradientData.exit.thread, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0117, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %nsvg__findGradientData.exit148, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.d, %bb.e
  %.013.i144 = phi ptr [ %.0.i145, %bb.e ], [ %.011.i, %bb.d ] ; 3 uses
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.013.i144, ptr noundef nonnull readonly dereferenceable(1) %i.q) #31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %nsvg__findGradientData.exit148, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i143
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i144, i64 216
  %.0.i145 = load ptr, ptr %i.v, align 8, !tbaa !314 ; 2 uses
  %.not.i146 = icmp eq ptr %.0.i145, null
  br i1 %.not.i146, label %nsvg__findGradientData.exit148, label %.lr.ph.i143, !llvm.loop !315

nsvg__findGradientData.exit148:                   ; preds = %.lr.ph.i143, %bb.e, %bb.d
  %.09.i147 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %.013.i144, %.lr.ph.i143 ] ; 2 uses
  %i.w = icmp eq ptr %.09.i147, %.0117
  %i.x = add nuw nsw i32 %.0128, 1
  %i.y = icmp samesign ugt i32 %.0128, 31
  %or.cond = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond, label %nsvg__findGradientData.exit.thread, label %nsvg__findGradientData.exit

bb.f:                                             ; preds = %.thread.thread
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i, i64 173
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !237
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load <2 x float>, ptr %2, align 4, !tbaa !32 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4, !tbaa !32
  %i.af = fsub <2 x float> %i.ae, %i.ad
  %i.ag = shufflevector <2 x float> %i.ad, <2 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %0, i64 40000
  %i.ai = load <4 x float>, ptr %i.ah, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi <4 x float> [ %i.ag, %bb.g ], [ %i.ai, %bb.h ] ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i, i64 128
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !238 ; 2 uses
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.j, label %bb.aq

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i, i64 132
  %i.ao = load i64, ptr %i.an, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ao to i32
  %i.ap = bitcast i32 %.sroa.0.0.extract.trunc.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i = lshr i64 %i.ao, 32
  %.sroa.12.0.extract.trunc.i = trunc nuw i64 %.sroa.12.0.extract.shift.i to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 39936
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !58
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [312 x i8], ptr %0, i64 %i.as ; 8 uses
  switch i32 %.sroa.12.0.extract.trunc.i, label %nsvg__convertToPixels.exit [
    i32 7, label %bb.r
    i32 9, label %bb.q
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 8, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = fdiv float %i.ap, 7.200000e+01
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.aw = load float, ptr %i.av, align 4, !tbaa !41
  %i.ax = fmul float %i.au, %i.aw
  br label %nsvg__convertToPixels.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = fdiv float %i.ap, 6.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.ba = load float, ptr %i.az, align 4, !tbaa !41
  %i.bb = fmul float %i.ay, %i.ba
  br label %nsvg__convertToPixels.exit

bb.m:                                             ; preds = %bb.j
  %i.bc = fdiv float %i.ap, 2.540000e+01
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.be = load float, ptr %i.bd, align 4, !tbaa !41
  %i.bf = fmul float %i.bc, %i.be
  br label %nsvg__convertToPixels.exit

bb.n:                                             ; preds = %bb.j
  %i.bg = fdiv float %i.ap, 2.540000e+00
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !41
  %i.bj = fmul float %i.bg, %i.bi
  br label %nsvg__convertToPixels.exit

bb.o:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !41
  %i.bm = fmul float %i.bl, %i.ap
  br label %nsvg__convertToPixels.exit

bb.p:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 292
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !59
  %i.bp = fmul float %i.bo, %i.ap
end_hunk_3
