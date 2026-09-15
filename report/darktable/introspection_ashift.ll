Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@pango_cairo_show_layout

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #7

declare void @g_object_unref(ptr noundef) local_unnamed_addr #7

declare i64 @dt_dev_hash_distort_plus(ptr noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_update_colors(i32 %.704.val.152.val, ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %.704.val.152.val, 0        ; 4 uses
  %i.b = select i1 %.not, i32 4, i32 2            ; 5 uses
  %i.c = select i1 %.not, i32 3, i32 1            ; 5 uses
  %i.d = select i1 %.not, i32 2, i32 4            ; 5 uses
  %i.e = select i1 %.not, i32 1, i32 3            ; 5 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %1, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.h

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv.epil ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !196
  %i.j = and i32 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  switch i32 %i.j, label %bb.f [
    i32 7, label %bb.g
    i32 3, label %bb.e
    i32 5, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.epil = phi i32 [ %i.d, %bb.e ], [ %i.b, %bb.c ], [ 0, %bb.f ], [ %i.c, %bb.d ], [ %i.e, %bb.b ]
  store i32 %.sink.epil, ptr %i.k, align 8, !tbaa !191
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !416

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %bb.a
  ret void

bb.h:                                             ; preds = %bb.ab, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ab ]
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !196
  %i.o = and i32 %i.n, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  switch i32 %i.o, label %bb.l [
    i32 7, label %bb.m
    i32 3, label %bb.i
    i32 5, label %bb.j
    i32 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.j
  %.sink = phi i32 [ %i.d, %bb.i ], [ %i.b, %bb.k ], [ 0, %bb.l ], [ %i.c, %bb.j ], [ %i.e, %bb.h ]
  store i32 %.sink, ptr %i.p, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !196
  %i.t = and i32 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  switch i32 %i.t, label %bb.q [
    i32 7, label %bb.r
    i32 3, label %bb.p
    i32 5, label %bb.o
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.sink.1 = phi i32 [ %i.d, %bb.p ], [ %i.b, %bb.n ], [ 0, %bb.q ], [ %i.c, %bb.o ], [ %i.e, %bb.m ]
  store i32 %.sink.1, ptr %i.u, align 8, !tbaa !191
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.x = load i32, ptr %i.w, align 4, !tbaa !196
  %i.y = and i32 %i.x, 7
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  switch i32 %i.y, label %bb.v [
    i32 7, label %bb.w
    i32 3, label %bb.u
    i32 5, label %bb.t
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sink.2 = phi i32 [ %i.d, %bb.u ], [ %i.b, %bb.s ], [ 0, %bb.v ], [ %i.c, %bb.t ], [ %i.e, %bb.r ]
  store i32 %.sink.2, ptr %i.z, align 8, !tbaa !191
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 164
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !196
  %i.ad = and i32 %i.ac, 7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  switch i32 %i.ad, label %bb.aa [
    i32 7, label %bb.ab
    i32 3, label %bb.z
    i32 5, label %bb.y
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.sink.3 = phi i32 [ %i.d, %bb.z ], [ %i.b, %bb.x ], [ 0, %bb.aa ], [ %i.c, %bb.y ], [ %i.e, %bb.w ]
  store i32 %.sink.3, ptr %i.ae, align 8, !tbaa !191
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.h
}

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 7 uses
  %i.b = alloca [4 x [3 x float]], align 16       ; 7 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
  %i.f = alloca [2 x float], align 8              ; 10 uses
  %i.g = alloca [2 x float], align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !125 ; 46 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !174
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.ck

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.m = load i32, ptr %i.l, align 16, !tbaa !158
  %.not256 = icmp eq i32 %i.m, 0
  br i1 %.not256, label %bb.ck, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.p = call i32 @dt_dev_get_preview_size(ptr noundef %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #34 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 348
  %i.r = load i32, ptr %i.q, align 4, !tbaa !171
  %.not257 = icmp eq i32 %i.r, 0
  br i1 %.not257, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store float %1, ptr %i.e, align 16, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %2, ptr %i.u, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.v, align 8, !tbaa !15
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !126  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !143
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !144
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ac = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.w, ptr noundef %i.y, double noundef %i.ab, i32 noundef 1, ptr noundef nonnull %i.e, i64 noundef 2) #34 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 332
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 324
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !15
  %i.ag = load <2 x float>, ptr %i.e, align 16, !tbaa !15
  %i.ah = load <2 x float>, ptr %i.v, align 8, !tbaa !15
  %i.ai = load <2 x float>, ptr %i.ae, align 4, !tbaa !15
  %i.aj = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.af
  %i.ak = fadd reassoc nsz arcp contract afn <2 x float> %i.ah, %i.ai
  %i.al = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ak
  %.val = load ptr, ptr %i.h, align 16, !tbaa !125 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.an = load i32, ptr %i.am, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.f, label %crop_adjust.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !204
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread24.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !205
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !206
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !207
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.az = load float, ptr %i.ay, align 4, !tbaa !208
  br label %.thread24.i

.thread24.i:                                      ; preds = %bb.g, %bb.f
  %i.ba = phi float [ %i.ax, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.bb = phi float [ %i.av, %bb.g ], [ 2.800000e+01, %bb.f ]
  %i.bc = phi reassoc nsz arcp contract afn float [ %i.az, %bb.g ], [ 1.000000e+00, %bb.f ]
  %i.bd = load float, ptr %i.t, align 4, !tbaa !209
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !210
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !211
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !212
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.br = load <2 x i32>, ptr %i.bk, align 8, !tbaa !17
  %i.bs = sitofp <2 x i32> %i.br to <2 x float>   ; 6 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 3 uses
  %i.bu = fptosi float %i.bt to i32               ; 2 uses
  %i.bv = extractelement <2 x float> %i.bs, i64 1 ; 3 uses
  %i.bw = fptosi float %i.bv to i32               ; 2 uses
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.bd, float noundef %i.bf, float noundef %i.bh, float noundef %i.bj, float noundef %i.bb, float noundef %i.ba, float noundef %i.bc, i32 noundef %i.bu, i32 noundef %i.bw, i32 noundef 0)
  %i.bx = load <4 x float>, ptr %i.a, align 64, !tbaa !15, !noalias !421 ; 3 uses
  %i.by = load <4 x float>, ptr %i.bl, align 16   ; 2 uses
  %i.bz = load float, ptr %i.bm, align 8, !tbaa !15, !noalias !421
  %6 = load <2 x float>, ptr %i.bn, align 4, !tbaa !15, !noalias !421
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, zeroinitializer
  %i.cc = shufflevector <4 x float> %i.bx, <4 x float> %i.by, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.cc, zeroinitializer ; 2 uses
  %i.ce = shufflevector <4 x float> %i.bx, <4 x float> %i.by, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.cf = fadd reassoc nsz arcp contract afn <2 x float> %i.ce, %i.cb ; 2 uses
  %i.cg = fadd reassoc nsz arcp contract afn <2 x float> %i.cf, %i.cd
  %i.ch = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.cc, %i.ch ; 2 uses
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.cf, %i.ci
  %i.ck = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.ce, %i.cl ; 2 uses
  %i.cn = fadd reassoc nsz arcp contract afn <2 x float> %i.cm, %i.ci
  %8 = insertelement <2 x float> poison, float %i.bz, i64 0
  %9 = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %9, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %11 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %12 = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.bs, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %13 = fmul reassoc nsz arcp contract afn <4 x float> %11, %12
  %14 = shufflevector <4 x float> %13, <4 x float> %10, <4 x i32> <i32 4, i32 0, i32 6, i32 1> ; 2 uses
  %15 = fmul reassoc nsz arcp contract afn <4 x float> %7, %14 ; 2 uses
  %16 = fadd reassoc nsz arcp contract afn <4 x float> %7, %14 ; 2 uses
  %17 = shufflevector <4 x float> %15, <4 x float> %16, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %18 = fadd reassoc nsz arcp contract afn <2 x float> %i.cm, %i.cd
  %19 = shufflevector <4 x float> %16, <4 x float> %15, <4 x i32> <i32 1, i32 6, i32 3, i32 4>
  %20 = fadd reassoc nsz arcp contract afn <4 x float> %17, %19 ; 4 uses
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> zeroinitializer
  %22 = fdiv reassoc nsz arcp contract afn <2 x float> %i.cg, %21 ; 10 uses
  %23 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.co = fdiv reassoc nsz arcp contract afn <2 x float> %i.cj, %23 ; 9 uses
  %24 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cp = fdiv reassoc nsz arcp contract afn <2 x float> %i.cn, %24 ; 9 uses
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.cr = fdiv reassoc nsz arcp contract afn <2 x float> %18, %25 ; 10 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cu = extractelement <2 x float> %22, i64 1   ; 2 uses
  %i.cv = extractelement <2 x float> %22, i64 0
  %i.cw = extractelement <2 x float> %i.cr, i64 1 ; 2 uses
  %i.cx = extractelement <2 x float> %i.cr, i64 0
  %i.cy = shufflevector <2 x float> %i.co, <2 x float> %i.cp, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.cz = shufflevector <3 x float> %i.cy, <3 x float> %i.ct, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.da = shufflevector <2 x float> %22, <2 x float> %i.co, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.db = shufflevector <3 x float> %i.da, <3 x float> %i.cq, <3 x i32> <i32 0, i32 1, i32 3>
  %i.dc = fsub reassoc nsz arcp contract afn <3 x float> %i.cz, %i.db ; 3 uses
  %i.dd = shufflevector <2 x float> %22, <2 x float> %i.co, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.de = shufflevector <2 x float> %i.cp, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.df = shufflevector <3 x float> %i.dd, <3 x float> %i.de, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.co, <2 x float> %i.cp, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dh = shufflevector <3 x float> %i.dg, <3 x float> %i.cs, <3 x i32> <i32 0, i32 1, i32 4>
  %i.di = fsub reassoc nsz arcp contract afn <3 x float> %i.df, %i.dh ; 3 uses
  %i.dj = shufflevector <2 x float> %22, <2 x float> %i.cp, <3 x i32> <i32 0, i32 3, i32 2>
  %i.dk = shufflevector <2 x float> %i.co, <2 x float> %i.cr, <3 x i32> <i32 1, i32 0, i32 3>
  %i.dl = fmul reassoc nsz arcp contract afn <3 x float> %i.dj, %i.dk
  %i.dm = fmul reassoc nsz arcp contract afn <3 x float> %i.cz, %i.df
  %i.dn = fsub reassoc nsz arcp contract afn <3 x float> %i.dl, %i.dm ; 4 uses
  %i.do = fmul reassoc nsz arcp contract afn <3 x float> %i.di, %i.di
  %i.dp = fmul reassoc nsz arcp contract afn <3 x float> %i.dc, %i.dc
  %i.dq = fadd reassoc nsz arcp contract afn <3 x float> %i.dp, %i.do
  %i.dr = fmul reassoc nsz arcp contract afn <3 x float> %i.dn, %i.dn
  %i.ds = fadd reassoc nsz arcp contract afn <3 x float> %i.dq, %i.dr ; 2 uses
  %i.dt = call reassoc nsz arcp contract afn <3 x float> @llvm.sqrt.v3f32(<3 x float> %i.ds)
  %i.du = fcmp reassoc nsz arcp contract afn ogt <3 x float> %i.ds, zeroinitializer
  %i.dv = fdiv reassoc nsz arcp contract afn <3 x float> splat (float 1.000000e+00), %i.dt
  %i.dw = select <3 x i1> %i.du, <3 x float> %i.dv, <3 x float> splat (float 1.000000e+00) ; 2 uses
  %i.dx = shufflevector <3 x float> %i.dw, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dy = shufflevector <3 x float> %i.di, <3 x float> %i.dc, <8 x i32> <i32 0, i32 3, i32 poison, i32 1, i32 4, i32 poison, i32 2, i32 5>
  %i.dz = shufflevector <3 x float> %i.dn, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <8 x float> %i.dy, <8 x float> %i.dz, <8 x i32> <i32 0, i32 1, i32 8, i32 3, i32 4, i32 9, i32 6, i32 7>
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %i.dx, %i.ea
  store <8 x float> %i.eb, ptr %i.b, align 16, !tbaa !15
  %i.ec = fsub reassoc nsz arcp contract afn float %i.cw, %i.cu ; 3 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %22, %i.cr ; 3 uses
  %i.ed = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ee = fmul reassoc nsz arcp contract afn float %i.cx, %i.cu
  %i.ef = fmul reassoc nsz arcp contract afn float %i.cv, %i.cw
  %i.eg = fsub reassoc nsz arcp contract afn float %i.ee, %i.ef ; 3 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.ec, %i.ec
  %foldExtExtBinop338 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.ei = extractelement <2 x float> %foldExtExtBinop338, i64 0
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.eh
  %i.ek = fmul reassoc nsz arcp contract afn float %i.eg, %i.eg
  %i.el = fadd reassoc nsz arcp contract afn float %i.ej, %i.ek ; 2 uses
  %i.em = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.el)
  %i.en = fcmp reassoc nsz arcp contract afn ogt float %i.el, 0.000000e+00
  %i.eo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.em
  %i.ep = select reassoc nsz arcp contract afn i1 %i.en, float %i.eo, float 1.000000e+00 ; 3 uses
  %i.eq = shufflevector <3 x float> %i.dw, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.er = insertelement <2 x float> %i.eq, float %i.ep, i64 1
  %i.es = shufflevector <3 x float> %i.dn, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.et = insertelement <2 x float> %i.es, float %i.ec, i64 1
  %i.eu = fmul reassoc nsz arcp contract afn <2 x float> %i.er, %i.et
  store <2 x float> %i.eu, ptr %i.bo, align 16, !tbaa !15
  %i.ev = fmul reassoc nsz arcp contract afn float %i.ep, %i.ed
  store float %i.ev, ptr %i.bp, align 8, !tbaa !15
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ep, %i.eg
  store float %i.ew, ptr %i.bq, align 4, !tbaa !15
  %i.ex = fcmp reassoc nsz arcp contract afn ogt <2 x float> %22, splat (float f0x7F7FFFFF)
  %i.ey = select <2 x i1> %i.ex, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %22 ; 2 uses
  %i.ez = fcmp reassoc nsz arcp contract afn olt <2 x float> %22, splat (float f0x00800000)
  %i.fa = select <2 x i1> %i.ez, <2 x float> splat (float f0x00800000), <2 x float> %22 ; 2 uses
  %i.fb = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ey, %i.co
  %i.fc = select <2 x i1> %i.fb, <2 x float> %i.ey, <2 x float> %i.co ; 2 uses
  %i.fd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fa, %i.co
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.fa, <2 x float> %i.co ; 2 uses
  %i.ff = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fc, %i.cp
  %i.fg = select <2 x i1> %i.ff, <2 x float> %i.fc, <2 x float> %i.cp ; 2 uses
  %i.fh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fe, %i.cp
  %i.fi = select <2 x i1> %i.fh, <2 x float> %i.fe, <2 x float> %i.cp ; 2 uses
  %i.fj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fg, %i.cr
  %i.fk = select <2 x i1> %i.fj, <2 x float> %i.fg, <2 x float> %i.cr
  %i.fl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fi, %i.cr
  %i.fm = select <2 x i1> %i.fl, <2 x float> %i.fi, <2 x float> %i.cr
  %i.fn = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bv, float %i.bt) ; 3 uses
  %sincos.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.fn) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 2 uses
  %i.fo = fsub reassoc nsz arcp contract afn <2 x float> %i.fm, %i.fk ; 2 uses
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.fq = fmul reassoc nsz arcp contract afn <2 x float> %i.fo, %i.al ; 3 uses
  %i.fr = fmul reassoc nsz arcp contract afn float %cos.i, 1.000000e+01 ; 5 uses
  %i.fs = extractelement <2 x float> %i.fq, i64 0 ; 5 uses
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %i.fr
  %i.fu = extractelement <2 x float> %i.fq, i64 1 ; 5 uses
  %i.fv = fmul reassoc nsz arcp contract afn float %sin.i, -1.000000e+01
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fr, %i.fr
  %i.fx = fmul reassoc nsz arcp contract afn float %i.ft, %i.fu ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %sin.i, 1.000000e+01 ; 5 uses
  %i.fz = fsub reassoc nsz arcp contract afn float %i.fu, %i.fy
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fu, %i.fy
  %i.gb = fmul reassoc nsz arcp contract afn float %i.fy, %i.fy
  %i.gc = fadd reassoc nsz arcp contract afn float %i.fw, %i.gb ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fz, %i.fs
  %i.ge = fmul reassoc nsz arcp contract afn float %i.ga, %i.fs
  %i.gf = fsub reassoc nsz arcp contract afn float %i.gd, %i.fx ; 3 uses
  %i.gg = fsub reassoc nsz arcp contract afn float %i.ge, %i.fx ; 3 uses
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gf, %i.gf
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gg, %i.gg
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gh, %i.gc ; 2 uses
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gi, %i.gc ; 2 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ogt float %i.gk, 0.000000e+00
  %i.gm = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.gj, i64 1
  %i.go = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gn)
  %i.gp = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.go ; 2 uses
  %i.gq = extractelement <2 x float> %i.gp, i64 0
  %i.gr = select reassoc nsz arcp contract afn i1 %i.gl, float %i.gq, float 1.000000e+00 ; 3 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %i.fv, %i.gr ; 2 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gr, %i.fr ; 2 uses
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gr, %i.gg ; 2 uses
  %i.gv = fcmp reassoc nsz arcp contract afn ogt float %i.gj, 0.000000e+00
  %i.gw = extractelement <2 x float> %i.gp, i64 1
  %i.gx = select reassoc nsz arcp contract afn i1 %i.gv, float %i.gw, float 1.000000e+00 ; 3 uses
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.fy ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gx, %i.fr ; 2 uses
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gx, %i.gf ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %.thread24.i
  %indvars.iv.i = phi i64 [ 0, %.thread24.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.014343.i = phi float [ f0x7F7FFFFF, %.thread24.i ], [ %.3.i, %bb.l ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !15 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hf = load float, ptr %i.he, align 4, !tbaa !15 ; 4 uses
  %i.hg = load float, ptr %i.hb, align 4, !tbaa !15 ; 4 uses
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hd, %i.gu
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hf, %i.gt
  %i.hj = fsub reassoc nsz arcp contract afn float %i.hh, %i.hi ; 3 uses
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hf, %i.gs
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hg, %i.gu
  %i.hm = fsub reassoc nsz arcp contract afn float %i.hk, %i.hl ; 3 uses
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hg, %i.gt
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hd, %i.gs
  %i.hp = fsub reassoc nsz arcp contract afn float %i.hn, %i.ho ; 3 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hj, %i.hj
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hm, %i.hm
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, %i.hq
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hp, %i.hp
  %i.hu = fadd reassoc nsz arcp contract afn float %i.hs, %i.ht ; 2 uses
  %i.hv = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hu)
  %i.hw = fcmp reassoc nsz arcp contract afn ogt float %i.hu, 0.000000e+00
  %i.hx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hv
  %i.hy = select reassoc nsz arcp contract afn i1 %i.hw, float %i.hx, float 1.000000e+00 ; 3 uses
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, %i.hj ; 2 uses
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hy, %i.hm ; 2 uses
  %i.ib = fmul reassoc nsz arcp contract afn float %i.hy, %i.hp ; 4 uses
  %i.ic = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hz)
  %i.id = fcmp reassoc nsz arcp contract afn uge float %i.ic, 1.000000e-10
  %i.ie = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ia)
  %i.if = fcmp reassoc nsz arcp contract afn uge float %i.ie, 1.000000e-10
  %or.cond31.not47.i = select i1 %i.id, i1 true, i1 %i.if
  %i.ig = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ib)
  %i.ih = fcmp reassoc nsz arcp contract afn uge float %i.ig, 1.000000e-10
  %or.cond.i = select i1 %or.cond31.not47.i, i1 true, i1 %i.ih
  br i1 %or.cond.i, label %vec3isnull.exit.thread.i, label %bb.l

bb.h:                                             ; preds = %bb.l
  %i.ii = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %.3.i) ; 4 uses
  %i.ij = fmul reassoc nnan nsz arcp contract afn float %i.fn, 2.000000e+00
  %i.ik = call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.ij)
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, 2.000000e+00
  %i.im = fmul reassoc nsz arcp contract afn float %i.ii, %i.ii
  %i.in = fmul reassoc nsz arcp contract afn float %i.im, %i.il
  %i.io = fmul reassoc nnan nsz arcp contract afn float %i.bt, f0x3C23D70A
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.bv
  %i.iq = fcmp reassoc nsz arcp contract afn olt float %i.in, %i.ip
  br i1 %i.iq, label %bb.o, label %bb.m

vec3isnull.exit.thread.i:                         ; preds = %.preheader.i
  %i.ir = fcmp reassoc nsz arcp contract afn oeq float %i.ib, 0.000000e+00
  br i1 %i.ir, label %bb.j, label %bb.i

bb.i:                                             ; preds = %vec3isnull.exit.thread.i
  %i.is = fdiv reassoc nsz arcp contract afn float %i.hz, %i.ib
  %i.it = fdiv reassoc nsz arcp contract afn float %i.ia, %i.ib
  %i.iu = fsub reassoc nsz arcp contract afn float %i.fs, %i.is ; 2 uses
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.iu
  %i.iw = fsub reassoc nsz arcp contract afn float %i.fu, %i.it ; 2 uses
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, %i.iw
  %i.iy = fadd reassoc nsz arcp contract afn float %i.iv, %i.ix ; 2 uses
  %i.iz = fcmp reassoc nsz arcp contract afn olt float %.014343.i, %i.iy
  %i.ja = select reassoc nsz arcp contract afn i1 %i.iz, float %.014343.i, float %i.iy
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %vec3isnull.exit.thread.i
  %.2.ph.i = phi float [ %.014343.i, %vec3isnull.exit.thread.i ], [ %i.ja, %bb.i ] ; 3 uses
  %i.jb = fmul reassoc nsz arcp contract afn float %i.hd, %i.ha
  %i.jc = fmul reassoc nsz arcp contract afn float %i.hf, %i.gz
  %i.jd = fsub reassoc nsz arcp contract afn float %i.jb, %i.jc ; 3 uses
  %i.je = fmul reassoc nsz arcp contract afn float %i.hf, %i.gy
  %i.jf = fmul reassoc nsz arcp contract afn float %i.hg, %i.ha
end_hunk_0
begin_hunk_1_@_do_get_structure_auto:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !178
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.ha

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.f, align 4, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !152
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.n) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.r) #34
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.s) #34
  br label %_remove_outliers.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.d, align 16, !tbaa !125 ; 11 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.y = load <4 x i32>, ptr %i.x, align 8, !tbaa !17 ; 5 uses
  %i.z = extractelement <4 x i32> %i.y, i64 1     ; 16 uses
  %i.aa = extractelement <4 x i32> %i.y, i64 0    ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !155 ; 2 uses
  %i.ad = sext i32 %i.aa to i64                   ; 4 uses
  %i.ae = sext i32 %i.z to i64                    ; 4 uses
  %i.af = shl nsw i64 %i.ad, 4
  %i.ag = mul i64 %i.af, %i.ae
  %i.ah = tail call ptr @dt_alloc_aligned(i64 noundef %i.ag) #34 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %.not54.i = icmp eq ptr %i.ah, null
  br i1 %.not54.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  br label %bb.gk

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.ak = shl nsw i64 %i.ad, 2
  %i.al = mul i64 %i.ak, %i.ae                    ; 6 uses
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.ah, ptr noundef %i.aj, i64 noundef %i.al) #34
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 220 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 224 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !179
  tail call void @free(ptr noundef %i.ar) #34
  store ptr null, ptr %i.aq, align 8, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.av = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.au) #34
  %.not.i.i = icmp eq i32 %i.av, 0
  %.not.i.i.i = icmp eq i64 %i.al, 0              ; 3 uses
  %or.cond.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.f
  %i.aw = add i64 %i.al, -4                       ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.aw, 12
  br i1 %i.az, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.ay, 9223372036854775804
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.01214.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.cn, %.preheader.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 4 uses
  %i.bb = load float, ptr %i.ba, align 64, !tbaa !15
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bb, float 4.500000e-01)
  store float %i.bc, ptr %i.ba, align 64, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !15
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float 4.500000e-01)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !15
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float 4.500000e-01)
  store float %i.bi, ptr %i.bg, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 16, !tbaa !15
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bl, float 4.500000e-01)
  store float %i.bm, ptr %i.bk, align 16, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 20 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !15
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float 4.500000e-01)
  store float %i.bp, ptr %i.bn, align 4, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !15
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.br, float 4.500000e-01)
  store float %i.bs, ptr %i.bq, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 32, !tbaa !15
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float 4.500000e-01)
  store float %i.bw, ptr %i.bu, align 32, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 36 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !15
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float 4.500000e-01)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !15
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float 4.500000e-01)
  store float %i.cc, ptr %i.ca, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !15
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cf, float 4.500000e-01)
  store float %i.cg, ptr %i.ce, align 16, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 52 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !15
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ci, float 4.500000e-01)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !15
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cl, float 4.500000e-01)
  store float %i.cm, ptr %i.ck, align 8, !tbaa !15
  %i.cn = add nuw i64 %.01214.i.i.i, 16           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %gamma_correct.exit.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i

gamma_correct.exit.i.i.loopexit.unr-lcssa:        ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.01214.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.cn, %gamma_correct.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod243 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod243)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.01214.i.i.i.epil = phi i64 [ %i.cx, %.preheader.i.i.i.epil ], [ %.01214.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i.epil ; 4 uses
  %i.cp = load float, ptr %i.co, align 16, !tbaa !15
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cp, float 4.500000e-01)
  store float %i.cq, ptr %i.co, align 16, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cs, float 4.500000e-01)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !15
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float 4.500000e-01)
  store float %i.cw, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add nuw i64 %.01214.i.i.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil, !llvm.loop !535

gamma_correct.exit.i.i:                           ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.f
  %i.cy = and i32 %1, 2
  %.not185.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not185.i.i, label %detail_enhance.exit.i.i, label %bb.g

bb.g:                                             ; preds = %gamma_correct.exit.i.i
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.da = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  %i.db = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.cz, float %i.da)
  %i.dc = fmul reassoc nnan nsz arcp contract afn float %i.db, 2.000000e-02
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %dt_XYZ_to_Lab.exit.i.i.i, %bb.g
  %i.dd = tail call ptr @dt_bilateral_init(i32 noundef %i.aa, i32 noundef %i.z, float noundef %i.dc, float noundef 5.000000e+00) #34 ; 5 uses
  %.not.i191.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i191.i.i, label %bb.t, label %bb.s

.lr.ph.i.i.i:                                     ; preds = %bb.g, %dt_XYZ_to_Lab.exit.i.i.i
  %.02943.i.i.i = phi i64 [ %i.fb, %dt_XYZ_to_Lab.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.02943.i.i.i ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load float, ptr %i.df, align 8, !tbaa !15 ; 4 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, f0x3E1283AB
  %i.di = fmul reassoc nsz arcp contract afn float %i.dg, 6.061690e-02
  %i.dj = fmul reassoc nsz arcp contract afn float %i.dg, f0x3F36D410
  %4 = load <2 x float>, ptr %i.de, align 16, !tbaa !15 ; 2 uses
  %i.dk = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dl = fmul reassoc nsz arcp contract afn <4 x float> %i.dk, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dm = fmul reassoc nsz arcp contract afn <4 x float> %5, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.dn = fadd reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dl ; 4 uses
  %i.do = extractelement <4 x float> %i.dn, i64 0
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, %i.dh ; 2 uses
  %i.dq = extractelement <4 x float> %i.dn, i64 1
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, %i.di ; 3 uses
  %i.ds = extractelement <4 x float> %i.dn, i64 2
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dj ; 2 uses
  %i.du = extractelement <4 x float> %i.dn, i64 3
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.dg
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dp, f0x3F84C0A6 ; 2 uses
  %i.dx = fcmp reassoc nsz arcp contract afn ogt float %i.dw, f0x3C111AA7
  br i1 %i.dx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.dy = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.dw) #35
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dp, f0x410137F7
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, f0x3E0D3DCB
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eb = phi reassoc nsz arcp contract afn float [ %i.dy, %bb.h ], [ %i.ea, %bb.i ]
  %i.ec = fcmp reassoc nsz arcp contract afn ogt float %i.dr, f0x3C111AA7
  br i1 %i.ec, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = fmul reassoc nsz arcp contract afn float %i.dr, f0x40F92F69
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ef = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.dr) #35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.eg = phi reassoc nsz arcp contract afn float [ %i.ef, %bb.l ], [ %i.ee, %bb.k ] ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.dt, f0x3F9B2B9B ; 2 uses
  %i.ei = fcmp reassoc nsz arcp contract afn ogt float %i.eh, f0x3C111AA7
  br i1 %i.ei, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ej = fmul reassoc nsz arcp contract afn float %i.dt, f0x41170A26
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, f0x3E0D3DCB
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.el = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.eh) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.em = phi reassoc nsz arcp contract afn float [ %i.el, %bb.o ], [ %i.ek, %bb.n ]
  %i.en = fmul reassoc nsz arcp contract afn float %i.dv, 0.000000e+00 ; 3 uses
  %i.eo = fcmp reassoc nsz arcp contract afn ogt float %i.en, f0x3C111AA7
  br i1 %i.eo, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = fadd reassoc nsz arcp contract afn float %i.en, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.eq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.en) #35
  br label %dt_XYZ_to_Lab.exit.i.i.i

dt_XYZ_to_Lab.exit.i.i.i:                         ; preds = %bb.r, %bb.q
  %i.er = phi reassoc nsz arcp contract afn float [ %i.eq, %bb.r ], [ %i.ep, %bb.q ]
  %i.es = fmul reassoc nsz arcp contract afn float %i.eg, 1.160000e+02
  %i.et = insertelement <4 x float> poison, float %i.es, i64 0
  %i.eu = insertelement <4 x float> %i.et, float %i.eb, i64 1
  %i.ev = insertelement <4 x float> %i.eu, float %i.em, i64 2
  %i.ew = insertelement <4 x float> %i.ev, float %i.er, i64 3
  %i.ex = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.eg, i64 1
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ez = fsub reassoc nsz arcp contract afn <4 x float> %i.ew, %i.ey
  %i.fa = fmul reassoc nsz arcp contract afn <4 x float> %i.ez, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.fa, ptr %i.de, align 16, !tbaa !15
  %i.fb = add nuw i64 %.02943.i.i.i, 4            ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.al
  br i1 %i.fc, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i
  tail call void @dt_bilateral_splat(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.ah) #34
  tail call void @dt_bilateral_blur(ptr noundef nonnull %i.dd) #34
  tail call void @dt_bilateral_slice_to_output(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ah, float noundef 1.000000e+01) #34
  tail call void @dt_bilateral_free(ptr noundef nonnull %i.dd) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  br i1 %.not.i.i.i, label %detail_enhance.exit.i.i, label %.lr.ph46.i.i.i.preheader

.lr.ph46.i.i.i.preheader:                         ; preds = %bb.t
  %i.fd = add i64 %i.al, -4                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.fd, 32
  br i1 %min.iters.check, label %.lr.ph46.i.i.i.preheader242, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.i.i.preheader
  %i.fe = lshr exact i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %i.fg = and i64 %i.ff, 7                        ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = select i1 %i.fh, i64 8, i64 %i.fg
  %n.vec = sub nsw i64 %i.ff, %i.fi               ; 2 uses
  %i.fj = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.fk, align 64, !tbaa !15 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec153 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec154 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec153, splat (float 2.000000e-03)
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.fn = fadd reassoc nsz arcp contract afn <8 x float> %i.fm, splat (float f0x3E0D3DCB) ; 7 uses
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec154, splat (float 5.000000e-03)
  %i.fp = fadd reassoc nsz arcp contract afn <8 x float> %i.fn, %i.fl ; 5 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fp, splat (float f0x3E53DCB1)
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %i.fp, %i.fp
  %i.fs = fmul reassoc nsz arcp contract afn <8 x float> %i.fr, %i.fp
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %i.fp, splat (float f0x3E038026)
  %i.fu = fadd reassoc nsz arcp contract afn <8 x float> %i.ft, splat (float f0xBC911AA6)
  %i.fv = select reassoc nsz arcp contract afn <8 x i1> %i.fq, <8 x float> %i.fs, <8 x float> %i.fu ; 3 uses
  %i.fw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fn, splat (float f0x3E53DCB1)
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.fn, %i.fn
  %i.fy = fmul reassoc nsz arcp contract afn <8 x float> %i.fx, %i.fn
  %i.fz = fmul reassoc nsz arcp contract afn <8 x float> %i.fn, splat (float f0x3E038026)
  %i.ga = fadd reassoc nsz arcp contract afn <8 x float> %i.fz, splat (float f0xBC911AA6)
  %i.gb = select reassoc nsz arcp contract afn <8 x i1> %i.fw, <8 x float> %i.fy, <8 x float> %i.ga ; 3 uses
  %i.gc = fsub reassoc nsz arcp contract afn <8 x float> %i.fn, %i.fo ; 5 uses
  %i.gd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gc, splat (float f0x3E53DCB1)
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %i.gc, %i.gc
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %i.ge, %i.gc
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %i.gc, splat (float f0x3E038026)
  %i.gh = fadd reassoc nsz arcp contract afn <8 x float> %i.gg, splat (float f0xBC911AA6)
  %i.gi = select reassoc nsz arcp contract afn <8 x i1> %i.gd, <8 x float> %i.gf, <8 x float> %i.gh ; 3 uses
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.fv, splat (float 9.642000e-01)
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, splat (float f0x3F532CA5)
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.fv, splat (float f0x3D8E11AE)
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, splat (float f0xBE6A7CB9)
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %i.gm
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, splat (float f0x3F94602A)
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %i.gn, %i.go
  %i.gq = fadd reassoc nsz arcp contract afn <8 x float> %i.gb, %i.gj
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gk
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %i.gr, zeroinitializer
  %i.gt = shufflevector <8 x float> %i.fv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gu = fmul reassoc nsz arcp contract afn <16 x float> %i.gt, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.gv = shufflevector <8 x float> %i.gb, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gw = fmul reassoc nsz arcp contract afn <16 x float> %i.gv, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.gx = fadd reassoc nsz arcp contract afn <16 x float> %i.gu, %i.gw
  %i.gy = shufflevector <8 x float> %i.gi, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gz = fmul reassoc nsz arcp contract afn <16 x float> %i.gy, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.ha = fadd reassoc nsz arcp contract afn <16 x float> %i.gx, %i.gz
  %i.hb = shufflevector <8 x float> %i.gp, <8 x float> %i.gs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ha, <16 x float> %i.hb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.fk, align 64, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %.lr.ph46.i.i.i.preheader242, label %vector.body, !llvm.loop !536

.lr.ph46.i.i.i.preheader242:                      ; preds = %vector.body, %.lr.ph46.i.i.i.preheader
  %.044.i.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.i.preheader ], [ %i.fj, %vector.body ]
  br label %.lr.ph46.i.i.i

.lr.ph46.i.i.i:                                   ; preds = %.lr.ph46.i.i.i.preheader242, %.lr.ph46.i.i.i
  %.044.i.i.i = phi i64 [ %i.iv, %.lr.ph46.i.i.i ], [ %.044.i.i.i.ph, %.lr.ph46.i.i.i.preheader242 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.044.i.i.i ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !15
  %i.hg = load float, ptr %i.hd, align 16, !tbaa !15
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !15
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hf, 2.000000e-03
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hg, 8.620690e-03
  %i.hl = fadd reassoc nsz arcp contract afn float %i.hk, f0x3E0D3DCB ; 4 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hi, 5.000000e-03
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hl, %i.hj ; 2 uses
  %i.ho = fsub reassoc nsz arcp contract afn float %i.hl, %i.hm
  %i.hp = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.hl, i64 1 ; 5 uses
  %i.hr = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hq, splat (float f0x3E53DCB1)
  %i.hs = fmul reassoc nsz arcp contract afn <2 x float> %i.hq, %i.hq
  %i.ht = insertelement <4 x float> poison, float %i.hl, i64 0
  %i.hu = insertelement <4 x float> %i.ht, float %i.hn, i64 1
  %i.hv = insertelement <4 x float> %i.hu, float %i.ho, i64 3 ; 4 uses
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn <4 x float> %i.hv, %i.hv
  %i.hy = fmul reassoc nsz arcp contract afn <2 x float> %i.hs, %i.hq
  %i.hz = fmul reassoc nsz arcp contract afn <2 x float> %i.hq, splat (float f0x3E038026)
  %i.ia = fmul reassoc nsz arcp contract afn <4 x float> %i.hw, splat (float f0x3E038026)
  %i.ib = fadd reassoc nsz arcp contract afn <2 x float> %i.hz, splat (float f0xBC911AA6)
  %i.ic = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hw, splat (float f0x3E53DCB1)
  %i.id = fmul reassoc nsz arcp contract afn <4 x float> %i.hx, %i.hv
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.if = fadd reassoc nsz arcp contract afn <4 x float> %i.ia, splat (float f0xBC911AA6)
  %i.ig = select <2 x i1> %i.hr, <2 x float> %i.hy, <2 x float> %i.ib
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
end_hunk_1
