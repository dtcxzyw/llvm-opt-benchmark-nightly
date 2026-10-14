Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/make_map?download=true
inline.NumInlined: 102
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@plot_dot_polygons:bb.a

agxbfree.exit:                                    ; preds = %._crit_edge159, %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %.val116160 = load i64, ptr %i.fl, align 8, !tbaa !46
  %.not171 = icmp eq i64 %.val116160, 0
  br i1 %.not171, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %agxbfree.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 32
  br label %bb.ai

._crit_edge163:                                   ; preds = %bb.al, %agxbfree.exit
  call void @gv_list_clear_(ptr noundef nonnull %15, i64 noundef 8) #19
  call void @gv_list_free_(ptr noundef nonnull %15) #19
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.val164 = load i64, ptr %i.fn, align 8, !tbaa !46
  %.not172 = icmp eq i64 %.val164, 0
  br i1 %.not172, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %._crit_edge163
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 32
  br label %bb.am

bb.ai:                                            ; preds = %.lr.ph162, %bb.al
  %.091161 = phi i64 [ 0, %.lr.ph162 ], [ %i.fw, %bb.al ] ; 2 uses
  %i.fp = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef %.091161) #19 ; 2 uses
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !71 ; 2 uses
  %magicptr114 = ptrtoint ptr %i.fq to i64
  switch i64 %magicptr114, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fr = load ptr, ptr %15, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fp
  %.0.copyload9 = load ptr, ptr %i.fs, align 8
  call void @free(ptr noundef %.0.copyload9) #19
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ft = load ptr, ptr %15, align 8, !tbaa !35
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fp
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !24
  call void %i.fq(double noundef %i.fv) #19
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %i.fw = add nuw i64 %.091161, 1                 ; 2 uses
  %.val116 = load i64, ptr %i.fl, align 8, !tbaa !46
  %i.fx = icmp ult i64 %i.fw, %.val116
  br i1 %i.fx, label %bb.ai, label %._crit_edge163, !llvm.loop !68

._crit_edge168:                                   ; preds = %bb.ap, %._crit_edge163
  call void @gv_list_clear_(ptr noundef nonnull %16, i64 noundef 8) #19
  call void @gv_list_free_(ptr noundef nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  ret void

bb.am:                                            ; preds = %.lr.ph167, %bb.ap
  %.089165 = phi i64 [ 0, %.lr.ph167 ], [ %i.gf, %bb.ap ] ; 2 uses
  %i.fy = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %16, i64 noundef %.089165) #19 ; 2 uses
  %i.fz = load ptr, ptr %i.fo, align 8, !tbaa !71 ; 2 uses
  %magicptr115 = ptrtoint ptr %i.fz to i64
  switch i64 %magicptr115, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  %i.ga = load ptr, ptr %16, align 8, !tbaa !35
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fy
  %.0.copyload = load ptr, ptr %i.gb, align 8
  call void @free(ptr noundef %.0.copyload) #19
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gc = load ptr, ptr %16, align 8, !tbaa !35
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fy
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !24
  call void %i.fz(double noundef %i.ge) #19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an
  %i.gf = add nuw i64 %.089165, 1                 ; 2 uses
  %.val = load i64, ptr %i.fn, align 8, !tbaa !46
  %i.gg = icmp ult i64 %i.gf, %.val
  br i1 %i.gg, label %bb.am, label %._crit_edge168, !llvm.loop !69
}

declare i32 @agwrite(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @make_map_from_rectangle_groups(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef captures(address) %5, ptr nofree noundef readonly captures(address_is_null) %6, double noundef %7, i32 noundef %8, ptr nofree noundef captures(none) %9, i32 noundef %10, double noundef %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(none) %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(none) %15, ptr nofree noundef captures(none) %16, ptr nofree noundef captures(none) %17, ptr nofree noundef writeonly captures(none) %18, i32 noundef %19) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca ptr, align 8                      ; 15 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.g = load i32, ptr %9, align 4, !tbaa !22     ; 2 uses
  %i.h = uitofp nneg i32 %i.g to double
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sitofp i32 %1 to double
  %i.k = fdiv double %i.j, 4.000000e+02
  %i.l = fadd double %i.k, 1.000000e+00
  %i.m = fdiv double 1.000000e+01, %i.l
  %i.n = tail call double @llvm.round.f64(double %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0222 = phi double [ %i.n, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  store i32 0, ptr %9, align 4, !tbaa !22
  %i.o = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %5, align 4, !tbaa !22     ; 5 uses
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader423, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi380 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi381 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi382 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !22 ; 2 uses
  %wide.load383 = load <4 x i32>, ptr %i.s, align 4, !tbaa !22 ; 2 uses
  %i.t = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi381, <4 x i32> %wide.load) ; 2 uses
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi382, <4 x i32> %wide.load383) ; 2 uses
  %i.v = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.w = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi380, <4 x i32> %wide.load383) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.v, <4 x i32> %i.w)
  %i.y = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax384 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.t, <4 x i32> %i.u)
  %i.z = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax384) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader423

.lr.ph.preheader423:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0220276.ph = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %.0221275.ph = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader423, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader423 ] ; 2 uses
  %.0220276 = phi i32 [ %i.ac, %.lr.ph ], [ %.0220276.ph, %.lr.ph.preheader423 ]
  %.0221275 = phi i32 [ %.0221., %.lr.ph ], [ %.0221275.ph, %.lr.ph.preheader423 ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22 ; 2 uses
  %.0221. = tail call i32 @llvm.smax.i32(i32 %.0221275, i32 %i.ab) ; 2 uses
  %i.ac = tail call i32 @llvm.smin.i32(i32 %.0220276, i32 %i.ab) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.0221.lcssa = phi i32 [ %i.p, %bb.d ], [ %i.z, %middle.block ], [ %.0221., %.lr.ph ]
  %.0220.lcssa = phi i32 [ %i.p, %bb.d ], [ %i.y, %middle.block ], [ %i.ac, %.lr.ph ]
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ae = add i32 %.0221.lcssa, 1
  %i.af = sub i32 %i.ae, %.0220.lcssa
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.25, i32 noundef %i.af) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.not239 = icmp eq ptr %4, null
  br i1 %.not239, label %20, label %bb.f

20:                                               ; preds = %bb.e
  %21 = tail call fastcc i32 @make_map_internal(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6, double noundef %7, i32 noundef %8, i32 noundef %10, double noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19)
  br label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp sgt i32 %1, 0                      ; 3 uses
  br i1 %i.ah, label %.preheader268.preheader, label %.preheader

.preheader268.preheader:                          ; preds = %bb.f
  %i.ai = sext i32 %2 to i64                      ; 5 uses
  %wide.trip.count322 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count322, 3      ; 3 uses
  %i.aj = icmp ult i32 %1, 4
  br i1 %i.aj, label %.preheader268.epil.preheader, label %.preheader268.preheader.new

.preheader268.preheader.new:                      ; preds = %.preheader268.preheader
  %unroll_iter = and i64 %wide.trip.count322, 2147483644
  br label %.preheader268

.preheader268:                                    ; preds = %.preheader268, %.preheader268.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.preheader268.preheader.new ], [ %indvars.iv.next320.3, %.preheader268 ] ; 5 uses
  %i.ak = phi <2 x double> [ zeroinitializer, %.preheader268.preheader.new ], [ %i.ba, %.preheader268 ]
  %niter = phi i64 [ 0, %.preheader268.preheader.new ], [ %niter.next.3, %.preheader268 ]
  %i.al = mul nsw i64 %indvars.iv319, %i.ai
  %i.am = getelementptr inbounds [8 x i8], ptr %4, i64 %i.al
  %i.an = load <2 x double>, ptr %i.am, align 8, !tbaa !24
  %i.ao = fadd <2 x double> %i.an, %i.ak
  %indvars.iv.next320 = or disjoint i64 %indvars.iv319, 1
  %i.ap = mul nsw i64 %indvars.iv.next320, %i.ai
  %i.aq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ap
  %i.ar = load <2 x double>, ptr %i.aq, align 8, !tbaa !24
  %i.as = fadd <2 x double> %i.ar, %i.ao
  %indvars.iv.next320.1 = or disjoint i64 %indvars.iv319, 2
  %i.at = mul nsw i64 %indvars.iv.next320.1, %i.ai
  %i.au = getelementptr inbounds [8 x i8], ptr %4, i64 %i.at
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !24
  %i.aw = fadd <2 x double> %i.av, %i.as
  %indvars.iv.next320.2 = or disjoint i64 %indvars.iv319, 3
  %i.ax = mul nsw i64 %indvars.iv.next320.2, %i.ai
  %i.ay = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ax
  %i.az = load <2 x double>, ptr %i.ay, align 8, !tbaa !24
  %i.ba = fadd <2 x double> %i.az, %i.aw          ; 3 uses
  %indvars.iv.next320.3 = add nuw nsw i64 %indvars.iv319, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.preheader268, !llvm.loop !75

.preheader.loopexit.unr-lcssa:                    ; preds = %.preheader268
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.preheader268.epil.preheader

.preheader268.epil.preheader:                     ; preds = %.preheader.loopexit.unr-lcssa, %.preheader268.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.preheader268.preheader ], [ %indvars.iv.next320.3, %.preheader.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.preheader268.preheader ], [ %i.ba, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod430 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod430)
  br label %.preheader268.epil

.preheader268.epil:                               ; preds = %.preheader268.epil, %.preheader268.epil.preheader
  %indvars.iv319.epil = phi i64 [ %indvars.iv319.epil.init, %.preheader268.epil.preheader ], [ %indvars.iv.next320.epil, %.preheader268.epil ] ; 2 uses
  %i.bb = phi <2 x double> [ %.epil.init, %.preheader268.epil.preheader ], [ %i.bf, %.preheader268.epil ]
  %epil.iter = phi i64 [ 0, %.preheader268.epil.preheader ], [ %epil.iter.next, %.preheader268.epil ]
  %i.bc = mul nsw i64 %indvars.iv319.epil, %i.ai
  %i.bd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bc
  %i.be = load <2 x double>, ptr %i.bd, align 8, !tbaa !24
  %i.bf = fadd <2 x double> %i.be, %i.bb          ; 2 uses
  %indvars.iv.next320.epil = add nuw nsw i64 %indvars.iv319.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.preheader268.epil, !llvm.loop !76

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.preheader268.epil, %bb.f
  %i.bg = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.ba, %.preheader.loopexit.unr-lcssa ], [ %i.bf, %.preheader268.epil ]
  %i.bh = sitofp i32 %1 to double                 ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv <2 x double> %i.bg, %i.bj          ; 3 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bm = extractelement <2 x double> %i.bk, i64 1 ; 2 uses
  %i.bn = fadd double %i.bl, %i.bm
  %i.bo = fmul double %i.bn, 5.000000e-01         ; 3 uses
  %i.bp = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not240 = icmp eq i8 %i.bp, 0
  br i1 %.not240, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !19
  tail call void @flockfile(ptr noundef %i.bq) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.br = tail call i64 @time(ptr noundef null) #19
  store i64 %i.br, ptr %i.e, align 8, !tbaa !36
  %i.bs = call ptr @localtime(ptr noundef nonnull %i.e) #19 ; 6 uses
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !39
  %i.bw = add nsw i32 %i.bv, 1900
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !40
  %i.bz = add nsw i32 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !43
  %i.cg = load i32, ptr %i.bs, align 8, !tbaa !44
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 1338, i32 noundef %i.bw, i32 noundef %i.bz, i32 noundef %i.cb, i32 noundef %i.cd, i32 noundef %i.cf, i32 noundef %i.cg) #20 ; 0 uses
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.26, double noundef %i.bl, double noundef %i.bm) #20 ; 0 uses
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc = call i32 @fputc(i32 10, ptr %i.ck)     ; 0 uses
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !19
  call void @funlockfile(ptr noundef %i.cl) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader
  %i.cm = shl nsw i32 %1, 1
  store i32 %i.cm, ptr %i.c, align 4, !tbaa !22
  %i.cn = mul nsw i32 %1, 3                       ; 2 uses
  %i.co = mul nsw i32 %i.cn, %2                   ; 3 uses
  %i.cp = sext i32 %i.co to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.h
  %i.cq = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit

bb.i:                                             ; preds = %bb.h
  %mul.ov.i = icmp slt i32 %i.co, 0
  br i1 %mul.ov.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.28, i64 noundef %i.cp, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ct = call noalias ptr @calloc(i64 noundef %i.cp, i64 noundef 8) #22 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.l, label %gv_calloc.exit

bb.l:                                             ; preds = %bb.k
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cw = shl nuw nsw i64 %i.cp, 3
  %i.cx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.29, i64 noundef %i.cw) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.k
  %i.cy = phi ptr [ %i.cq, %.thread.i ], [ %i.ct, %bb.k ] ; 5 uses
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !12
  %i.cz = sext i32 %i.cn to i64                   ; 3 uses
  %.not.i258 = icmp eq i32 %1, 0
  br i1 %.not.i258, label %gv_calloc.exit262, label %bb.m

bb.m:                                             ; preds = %gv_calloc.exit
  %mul.ov.i260 = icmp slt i32 %1, 0
  br i1 %mul.ov.i260, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.da, ptr noundef nonnull @.str.28, i64 noundef %i.cz, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.dc = call noalias ptr @calloc(i64 noundef %i.cz, i64 noundef 4) #22 ; 5 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.p, label %.lr.ph283.preheader

bb.p:                                             ; preds = %bb.o
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.df = shl nuw nsw i64 %i.cz, 2
  %i.dg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.de, ptr noundef nonnull @.str.29, i64 noundef %i.df) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit262:                                ; preds = %gv_calloc.exit
  %i.dh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22 ; 2 uses
  store ptr %i.dh, ptr %i.d, align 8, !tbaa !30
  br label %._crit_edge284

.lr.ph283.preheader:                              ; preds = %bb.o
  store ptr %i.dc, ptr %i.d, align 8, !tbaa !30
  %i.di = sext i32 %2 to i64
  %i.dj = shl nsw i64 %i.di, 3                    ; 3 uses
  %i.dk = zext nneg i32 %1 to i64                 ; 3 uses
  %i.dl = shl nuw nsw i64 %i.dk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr align 4 %5, i64 %i.dl, i1 false), !tbaa !22
  %xtraiter431 = and i64 %i.dk, 1
  %i.dm = icmp eq i32 %1, 1
  br i1 %i.dm, label %.lr.ph283.epil.preheader, label %.lr.ph283.preheader.new

.lr.ph283.preheader.new:                          ; preds = %.lr.ph283.preheader
  %unroll_iter435 = and i64 %i.dk, 2147483646
  br label %.lr.ph283

.lr.ph283:                                        ; preds = %.lr.ph283, %.lr.ph283.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph283.preheader.new ], [ %indvar.next.1, %.lr.ph283 ] ; 4 uses
  %niter436 = phi i64 [ 0, %.lr.ph283.preheader.new ], [ %niter436.next.1, %.lr.ph283 ]
  %i.dn = shl nuw nsw i64 %indvar, 4
  %scevgep = getelementptr nuw i8, ptr %i.cy, i64 %i.dn
  %i.do = mul i64 %i.dj, %indvar
  %scevgep327 = getelementptr i8, ptr %3, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, ptr noundef nonnull align 8 dereferenceable(16) %scevgep327, i64 16, i1 false), !tbaa !24
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %i.dp = shl nuw nsw i64 %indvar.next, 4
  %scevgep.1 = getelementptr nuw i8, ptr %i.cy, i64 %i.dp
  %i.dq = mul i64 %i.dj, %indvar.next
  %scevgep327.1 = getelementptr i8, ptr %3, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.1, ptr noundef nonnull align 8 dereferenceable(16) %scevgep327.1, i64 16, i1 false), !tbaa !24
  %indvar.next.1 = add nuw nsw i64 %indvar, 2     ; 2 uses
  %niter436.next.1 = add i64 %niter436, 2         ; 2 uses
  %niter436.ncmp.1 = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1, label %._crit_edge284.loopexit.unr-lcssa, label %.lr.ph283, !llvm.loop !77

._crit_edge284.loopexit.unr-lcssa:                ; preds = %.lr.ph283
  %lcmp.mod433.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod433.not, label %._crit_edge284, label %.lr.ph283.epil.preheader

.lr.ph283.epil.preheader:                         ; preds = %._crit_edge284.loopexit.unr-lcssa, %.lr.ph283.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph283.preheader ], [ %indvar.next.1, %._crit_edge284.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod434 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod434)
  %i.dr = shl nuw nsw i64 %indvar.epil.init, 4
  %scevgep.epil = getelementptr nuw i8, ptr %i.cy, i64 %i.dr
  %i.ds = mul i64 %i.dj, %indvar.epil.init
  %scevgep327.epil = getelementptr i8, ptr %3, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.epil, ptr noundef nonnull align 8 dereferenceable(16) %scevgep327.epil, i64 16, i1 false), !tbaa !24
  br label %._crit_edge284

._crit_edge284:                                   ; preds = %.lr.ph283.epil.preheader, %._crit_edge284.loopexit.unr-lcssa, %gv_calloc.exit262
  %i.dt = phi ptr [ %i.dh, %gv_calloc.exit262 ], [ %i.dc, %._crit_edge284.loopexit.unr-lcssa ], [ %i.dc, %.lr.ph283.epil.preheader ]
  store i32 %1, ptr %i.b, align 4, !tbaa !22
  %i.du = fcmp olt double %11, 0.000000e+00
  br i1 %i.du, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge284
  %i.dv = fneg double %11
  %i.dw = fmul double %i.bo, %i.dv
  br label %bb.u

bb.r:                                             ; preds = %._crit_edge284
  %i.dx = fcmp oeq double %11, 0.000000e+00
  br i1 %i.dx, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dy = load <2 x double>, ptr %3, align 8, !tbaa !24 ; 6 uses
  br i1 %i.ah, label %.lr.ph.i, label %get_boundingbox.exit

.lr.ph.i:                                         ; preds = %bb.s
  %i.dz = sext i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check387 = icmp ne i32 %1, 1
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond = and i1 %min.iters.check387, %ident.check.not
  br i1 %or.cond, label %vector.ph388, label %scalar.ph386.preheader

vector.ph388:                                     ; preds = %.lr.ph.i
  %n.vec389 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splat391 = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat393 = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body394

vector.body394:                                   ; preds = %vector.body394, %vector.ph388
  %index395 = phi i64 [ 0, %vector.ph388 ], [ %index.next404, %vector.body394 ] ; 5 uses
  %vec.phi396 = phi <2 x double> [ %broadcast.splat391, %vector.ph388 ], [ %i.eq, %vector.body394 ] ; 2 uses
  %vec.phi397 = phi <2 x double> [ %broadcast.splat391, %vector.ph388 ], [ %i.en, %vector.body394 ] ; 2 uses
  %vec.phi398 = phi <2 x double> [ %broadcast.splat393, %vector.ph388 ], [ %i.eh, %vector.body394 ] ; 2 uses
  %vec.phi399 = phi <2 x double> [ %broadcast.splat393, %vector.ph388 ], [ %i.ee, %vector.body394 ] ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %3, i64 %index395
  %wide.load400 = load <2 x double>, ptr %i.ea, align 8, !tbaa !24 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %4, i64 %index395
  %wide.load401 = load <2 x double>, ptr %i.eb, align 8, !tbaa !24 ; 2 uses
  %i.ec = fsub nsz <2 x double> %wide.load400, %wide.load401
  %i.ed = freeze <2 x double> %i.ec               ; 2 uses
  %i.ee = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi399, <2 x double> %i.ed) ; 2 uses
end_hunk_0
begin_hunk_1_@make_map_from_rectangle_groups:bb.a
  %i.im = load double, ptr %i.hx, align 8, !tbaa !24
  %i.in = load double, ptr %i.ia, align 8, !tbaa !24
  %i.io = load <2 x double>, ptr %i.hw, align 8, !tbaa !24
  %i.ip = fmul <2 x double> %i.io, splat (double 5.000000e-01) ; 2 uses
  %i.iq = extractelement <2 x double> %i.ip, i64 0
  %i.ir = fadd double %i.im, %i.iq                ; 2 uses
  %i.is = extractelement <2 x double> %i.ip, i64 1
  %i.it = fsub double %i.in, %i.is                ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.ir, double %i.it, ptr noundef %i.d)
  br label %.lr.ph296

.lr.ph290:                                        ; preds = %bb.w, %.lr.ph290
  %.0217288 = phi double [ %i.iy, %.lr.ph290 ], [ 0.000000e+00, %bb.w ]
  %.sroa.0263.0287 = phi double [ %i.iu, %.lr.ph290 ], [ %i.ih, %bb.w ]
  %i.iu = fadd double %i.ie, %.sroa.0263.0287     ; 2 uses
  %i.iv = call double @drand() #19
  %i.iw = fsub double 5.000000e-01, %i.iv
  %i.ix = call double @llvm.fmuladd.f64(double %i.iw, double %.sroa.6.0, double %i.ij)
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.iu, double %i.ix, ptr noundef %i.d)
  %i.iy = fadd double %.0217288, 1.000000e+00     ; 2 uses
  %i.iz = fcmp olt double %i.iy, %i.ik
  br i1 %i.iz, label %.lr.ph290, label %._crit_edge291, !llvm.loop !80

.lr.ph296:                                        ; preds = %._crit_edge291, %.lr.ph296
  %.0216294 = phi double [ %i.je, %.lr.ph296 ], [ 0.000000e+00, %._crit_edge291 ]
  %.sroa.0263.1293 = phi double [ %i.ja, %.lr.ph296 ], [ %i.ir, %._crit_edge291 ]
  %i.ja = fsub double %.sroa.0263.1293, %i.ie     ; 2 uses
  %i.jb = call double @drand() #19
  %i.jc = fsub double 5.000000e-01, %i.jb
  %i.jd = call double @llvm.fmuladd.f64(double %i.jc, double %.sroa.6.0, double %i.it)
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.ja, double %i.jd, ptr noundef %i.d)
  %i.je = fadd double %.0216294, 1.000000e+00     ; 2 uses
  %i.jf = fcmp olt double %i.je, %i.ik
  br i1 %i.jf, label %.lr.ph296, label %.loopexit267, !llvm.loop !81

.loopexit267.critedge:                            ; preds = %bb.w
  %i.jg = load double, ptr %i.hx, align 8, !tbaa !24
  %i.jh = load double, ptr %i.ia, align 8, !tbaa !24
  %i.ji = load <2 x double>, ptr %i.hw, align 8, !tbaa !24
  %i.jj = fmul <2 x double> %i.ji, splat (double 5.000000e-01) ; 2 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 0
  %i.jl = fadd double %i.jg, %i.jk
  %i.jm = extractelement <2 x double> %i.jj, i64 1
  %i.jn = fsub double %i.jh, %i.jm
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.jl, double %i.jn, ptr noundef %i.d)
  br label %.loopexit267

.loopexit267:                                     ; preds = %.lr.ph296, %.loopexit267.critedge, %.split286
  %i.jo = fcmp ogt double %i.hu, 0.000000e+00
  br i1 %i.jo, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.loopexit267
  %i.jp = add nsw i64 %i.hm, 1                    ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jp
  %i.jr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hm ; 3 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !24
  %i.jt = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hm ; 3 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %3, i64 %i.jp ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !24
  %i.jw = load double, ptr %i.jq, align 8, !tbaa !24
  %i.jx = load <2 x double>, ptr %i.jt, align 8, !tbaa !24
  %i.jy = fdiv double %i.jw, %i.hu                ; 2 uses
  %i.jz = fmul <2 x double> %i.jx, splat (double 5.000000e-01) ; 2 uses
  %i.ka = extractelement <2 x double> %i.jz, i64 0
  %i.kb = fsub double %i.js, %i.ka                ; 2 uses
  %i.kc = extractelement <2 x double> %i.jz, i64 1
  %i.kd = fsub double %i.jv, %i.kc                ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.kb, double %i.kd, ptr noundef %i.d)
  %i.ke = fadd double %i.hu, -1.000000e+00        ; 3 uses
  %i.kf = fcmp ogt double %i.ke, 0.000000e+00
  br i1 %i.kf, label %.lr.ph300, label %.loopexit.critedge

._crit_edge301:                                   ; preds = %.lr.ph300
  %i.kg = load double, ptr %i.jr, align 8, !tbaa !24
  %i.kh = load double, ptr %i.ju, align 8, !tbaa !24
  %i.ki = load <2 x double>, ptr %i.jt, align 8, !tbaa !24
  %i.kj = fmul <2 x double> %i.ki, splat (double 5.000000e-01) ; 2 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 0
  %i.kl = fadd double %i.kg, %i.kk                ; 2 uses
  %i.km = extractelement <2 x double> %i.kj, i64 1
  %i.kn = fadd double %i.kh, %i.km                ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.kl, double %i.kn, ptr noundef %i.d)
  br label %.lr.ph306

.lr.ph300:                                        ; preds = %bb.x, %.lr.ph300
  %.0215298 = phi double [ %i.ks, %.lr.ph300 ], [ 0.000000e+00, %bb.x ]
  %.sroa.20.0297 = phi double [ %i.kr, %.lr.ph300 ], [ %i.kd, %bb.x ]
  %i.ko = call double @drand() #19
  %i.kp = fsub double 5.000000e-01, %i.ko
  %i.kq = call double @llvm.fmuladd.f64(double %i.kp, double %.sroa.0.0, double %i.kb)
  %i.kr = fadd double %i.jy, %.sroa.20.0297       ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.kq, double %i.kr, ptr noundef %i.d)
  %i.ks = fadd double %.0215298, 1.000000e+00     ; 2 uses
  %i.kt = fcmp olt double %i.ks, %i.ke
  br i1 %i.kt, label %.lr.ph300, label %._crit_edge301, !llvm.loop !82

.lr.ph306:                                        ; preds = %._crit_edge301, %.lr.ph306
  %.0304 = phi double [ %i.ky, %.lr.ph306 ], [ 0.000000e+00, %._crit_edge301 ]
  %.sroa.20.1303 = phi double [ %i.kx, %.lr.ph306 ], [ %i.kn, %._crit_edge301 ]
  %i.ku = call double @drand() #19
  %i.kv = fsub double 5.000000e-01, %i.ku
  %i.kw = call double @llvm.fmuladd.f64(double %i.kv, double %.sroa.0.0, double %i.kl)
  %i.kx = fsub double %.sroa.20.1303, %i.jy       ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.kw, double %i.kx, ptr noundef %i.d)
  %i.ky = fadd double %.0304, 1.000000e+00        ; 2 uses
  %i.kz = fcmp olt double %i.ky, %i.ke
  br i1 %i.kz, label %.lr.ph306, label %.loopexit, !llvm.loop !83

.loopexit.critedge:                               ; preds = %bb.x
  %i.la = load <2 x double>, ptr %i.jt, align 8, !tbaa !24
  %i.lb = fmul <2 x double> %i.la, splat (double 5.000000e-01)
  %i.lc = load <2 x double>, ptr %i.jr, align 8, !tbaa !24
  %i.ld = fadd <2 x double> %i.lc, %i.lb          ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %i.lf = extractelement <2 x double> %i.ld, i64 1
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hl, ptr noundef %i.a, ptr noundef %i.c, double %i.le, double %i.lf, ptr noundef %i.d)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph306, %.loopexit.critedge, %bb.v, %.loopexit267
  %i.lg = load i32, ptr %i.b, align 4, !tbaa !22  ; 2 uses
  %i.lh = sub nsw i32 %i.lg, %1
  store i32 %i.lh, ptr %9, align 4, !tbaa !22
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count340
  br i1 %exitcond341.not, label %._crit_edge310.loopexit, label %bb.v, !llvm.loop !84

._crit_edge310.loopexit:                          ; preds = %.loopexit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  %.pre350 = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %._crit_edge310

._crit_edge310:                                   ; preds = %._crit_edge310.loopexit, %bb.u
  %i.li = phi ptr [ %.pre350, %._crit_edge310.loopexit ], [ %i.dt, %bb.u ] ; 2 uses
  %i.lj = phi ptr [ %.pre, %._crit_edge310.loopexit ], [ %i.cy, %bb.u ] ; 2 uses
  %i.lk = phi i32 [ %i.lg, %._crit_edge310.loopexit ], [ 0, %bb.u ]
  %i.ll = call fastcc i32 @make_map_internal(i1 noundef zeroext %0, i32 noundef %i.lk, i32 noundef %2, ptr noundef %i.lj, ptr noundef %i.li, ptr noundef %6, double noundef %7, i32 noundef %8, i32 noundef %10, double noundef %.0219, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19)
  call void @free(ptr noundef %i.li) #19
  call void @free(ptr noundef %i.lj) #19
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge310, %20
  %.0218 = phi i32 [ %i.ll, %._crit_edge310 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0218
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @make_map_internal(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef captures(address) %4, ptr nofree noundef readonly captures(address_is_null) %5, double noundef %6, i32 noundef %7, i32 noundef %8, double noundef %9, ptr nofree noundef writeonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef captures(none) %12, ptr nofree noundef captures(none) %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(none) %15, ptr nofree noundef writeonly captures(none) %16, i32 noundef %17) unnamed_addr #0 {
.preheader573:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 17 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %i.m = alloca [2 x double], align 16            ; 3 uses
  %i.n = alloca double, align 8                   ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca [2 x double], align 16            ; 7 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  %i.r = load <2 x double>, ptr %3, align 8, !tbaa !24 ; 6 uses
  %i.s = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.s, label %.preheader572.preheader, label %._crit_edge

.preheader572.preheader:                          ; preds = %.preheader573
  %i.t = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ugt i32 %1, 3
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond1319 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond1319, label %vector.ph, label %.preheader572.preheader1374

vector.ph:                                        ; preds = %.preheader572.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %broadcast.splat1107 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ag, %vector.body ] ; 2 uses
  %vec.phi1108 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ah, %vector.body ] ; 2 uses
  %vec.phi1109 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %vec.phi1110 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.z, %vector.body ] ; 2 uses
  %vec.phi1111 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ai, %vector.body ] ; 2 uses
  %vec.phi1112 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.aj, %vector.body ] ; 2 uses
  %vec.phi1113 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.aa, %vector.body ] ; 2 uses
  %vec.phi1114 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.ab, %vector.body ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %3, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !24
  %wide.load1115 = load <2 x double>, ptr %i.v, align 8, !tbaa !24
  %i.w = freeze <2 x double> %wide.load           ; 3 uses
  %i.x = freeze <2 x double> %wide.load1115       ; 3 uses
  %i.y = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1109, <2 x double> %i.w) ; 2 uses
  %i.z = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1110, <2 x double> %i.x) ; 2 uses
  %i.aa = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1113, <2 x double> %i.w) ; 2 uses
  %i.ab = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1114, <2 x double> %i.x) ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 8
  %i.ad = getelementptr i8, ptr %i.u, i64 24
  %wide.load1116 = load <2 x double>, ptr %i.ac, align 8, !tbaa !24
  %wide.load1117 = load <2 x double>, ptr %i.ad, align 8, !tbaa !24
  %i.ae = freeze <2 x double> %wide.load1116      ; 3 uses
  %i.af = freeze <2 x double> %wide.load1117      ; 3 uses
  %i.ag = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %i.ae) ; 2 uses
  %i.ah = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1108, <2 x double> %i.af) ; 2 uses
  %i.ai = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1111, <2 x double> %i.ae) ; 2 uses
  %i.aj = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1112, <2 x double> %i.af) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = fcmp uno <2 x double> %i.ae, %i.w
  %i.al = fcmp uno <2 x double> %i.af, %i.x
  %i.am = or <2 x i1> %i.ak, %i.al
  %i.an = bitcast <2 x i1> %i.am to i2
  %i.ao = icmp ne i2 %i.an, 0                     ; 11 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %i.ar = select i1 %i.ao, <2 x double> %vec.phi, <2 x double> %i.ag
  %i.as = select i1 %i.ao, <2 x double> %vec.phi1108, <2 x double> %i.ah
  %i.at = select i1 %i.ao, <2 x double> %vec.phi1109, <2 x double> %i.y
  %i.au = select i1 %i.ao, <2 x double> %vec.phi1110, <2 x double> %i.z
  %i.av = select i1 %i.ao, <2 x double> %vec.phi1111, <2 x double> %i.ai
  %i.aw = select i1 %i.ao, <2 x double> %vec.phi1112, <2 x double> %i.aj
  %i.ax = select i1 %i.ao, <2 x double> %vec.phi1113, <2 x double> %i.aa
  %i.ay = select i1 %i.ao, <2 x double> %vec.phi1114, <2 x double> %i.ab
  %i.az = select i1 %i.ao, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ar, <2 x double> %i.as)
  %i.ba = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax)
  %rdx.minmax1118 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.at, <2 x double> %i.au)
  %i.bb = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax1118)
  %rdx.minmax1119 = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.av, <2 x double> %i.aw)
  %i.bc = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax1119)
  %rdx.minmax1120 = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ax, <2 x double> %i.ay)
  %i.bd = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax1120)
  %cmp.n = icmp ne i64 %n.vec, %wide.trip.count
  %.not1315 = or i1 %cmp.n, %i.ao
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.ba, i64 1 ; 2 uses
  %i.bg = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bc, i64 1 ; 2 uses
  br i1 %.not1315, label %.preheader572.preheader1374, label %._crit_edge

.preheader572.preheader1374:                      ; preds = %.preheader572.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader572.preheader ], [ %i.az, %middle.block ]
  %.ph = phi <2 x double> [ %i.r, %.preheader572.preheader ], [ %i.bf, %middle.block ]
  %.ph1375 = phi <2 x double> [ %i.r, %.preheader572.preheader ], [ %i.bh, %middle.block ]
  br label %.preheader572

.preheader572:                                    ; preds = %.preheader572.preheader1374, %.preheader572
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader572 ], [ %indvars.iv.ph, %.preheader572.preheader1374 ] ; 2 uses
  %i.bi = phi <2 x double> [ %i.bn, %.preheader572 ], [ %.ph, %.preheader572.preheader1374 ]
  %i.bj = phi <2 x double> [ %i.bo, %.preheader572 ], [ %.ph1375, %.preheader572.preheader1374 ]
  %i.bk = mul nsw i64 %indvars.iv, %i.t
  %i.bl = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bk
  %i.bm = load <2 x double>, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bi, <2 x double> %i.bm) ; 2 uses
  %i.bo = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bj, <2 x double> %i.bm) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader572, !llvm.loop !86

._crit_edge:                                      ; preds = %.preheader572, %middle.block, %.preheader573
  %i.bp = phi <2 x double> [ %i.r, %.preheader573 ], [ %i.bf, %middle.block ], [ %i.bn, %.preheader572 ] ; 5 uses
  %i.bq = phi <2 x double> [ %i.r, %.preheader573 ], [ %i.bh, %middle.block ], [ %i.bo, %.preheader572 ] ; 5 uses
  %i.br = fsub <2 x double> %i.bp, %i.bq          ; 6 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0 ; 2 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.br, %shift ; 2 uses
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bu = icmp eq i32 %7, 0
  br i1 %i.bu, label %bb.d, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.bv = icmp slt i32 %7, 0
  br i1 %i.bv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bw = mul i32 %1, %7
  %i.bx = sub i32 0, %i.bw
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.0420 = phi i32 [ %spec.select, %bb.c ], [ %i.bx, %bb.b ], [ %1, %._crit_edge ] ; 4 uses
  %i.by = fcmp olt double %9, 0.000000e+00
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bz = sitofp i32 %1 to double
  %i.ca = fdiv double %i.bt, %i.bz
  %i.cb = tail call double @sqrt(double noundef %i.ca) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0424 = phi double [ %i.cb, %bb.e ], [ %9, %bb.d ] ; 6 uses
  %i.cc = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not = icmp eq i8 %i.cc, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !19
  tail call void @flockfile(ptr noundef %i.cd) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  %i.ce = tail call i64 @time(ptr noundef null) #19
  store i64 %i.ce, ptr %i.q, align 8, !tbaa !36
  %i.cf = call ptr @localtime(ptr noundef nonnull %i.q) #19 ; 6 uses
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !39
  %i.cj = add nsw i32 %i.ci, 1900
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !40
  %i.cm = add nsw i32 %i.cl, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !43
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !44
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 997, i32 noundef %i.cj, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.ct) #20 ; 0 uses
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.40, i32 noundef %.0420, double noundef %.0424) #20 ; 0 uses
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc = call i32 @fputc(i32 10, ptr %i.cx)     ; 0 uses
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !19
  call void @funlockfile(ptr noundef %i.cy) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cz = icmp ne ptr %5, null
  %i.da = icmp ne i32 %8, 0
  %or.cond = and i1 %i.cz, %i.da
  br i1 %or.cond, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.41, i32 noundef %8) #20 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !152
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = mul nsw i32 %2, %1                      ; 3 uses
  %i.dh = mul i32 %8, %2
  %i.di = mul i32 %i.dh, %i.df
  %i.dj = add nsw i32 %i.di, %i.dg                ; 3 uses
  %i.dk = sext i32 %i.dj to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.dl = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit

bb.j:                                             ; preds = %bb.i
  %mul.ov.i = icmp slt i32 %i.dj, 0
  br i1 %mul.ov.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.28, i64 noundef %i.dk, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.do = call noalias ptr @calloc(i64 noundef %i.dk, i64 noundef 8) #22 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.m, label %gv_calloc.exit

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dr = shl nuw nsw i64 %i.dk, 3
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.29, i64 noundef %i.dr) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.l
  %i.dt = phi ptr [ %i.dl, %.thread.i ], [ %i.do, %bb.l ] ; 4 uses
  %i.du = icmp sgt i32 %i.dg, 0
  br i1 %i.du, label %.lr.ph.preheader, label %._crit_edge596

.lr.ph.preheader:                                 ; preds = %gv_calloc.exit
  %i.dv = zext nneg i32 %i.dg to i64
  %i.dw = shl nuw nsw i64 %i.dv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dt, ptr nonnull align 8 %3, i64 %i.dw, i1 false), !tbaa !24
  br label %._crit_edge596

._crit_edge596:                                   ; preds = %.lr.ph.preheader, %gv_calloc.exit
  %i.dx = mul nsw i32 %8, %i.df
  %i.dy = add nsw i32 %i.dx, %1                   ; 3 uses
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %.not.i496 = icmp eq i32 %i.dy, 0
  br i1 %.not.i496, label %.thread.i499, label %bb.n

.thread.i499:                                     ; preds = %._crit_edge596
  %i.ea = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit500

bb.n:                                             ; preds = %._crit_edge596
  %mul.ov.i498 = icmp slt i32 %i.dy, 0
  br i1 %mul.ov.i498, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.28, i64 noundef %i.dz, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ed = call noalias ptr @calloc(i64 noundef %i.dz, i64 noundef 4) #22 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.q, label %gv_calloc.exit500

bb.q:                                             ; preds = %bb.p
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.eg = shl nuw nsw i64 %i.dz, 2
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.29, i64 noundef %i.eg) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit500:                                ; preds = %.thread.i499, %bb.p
  %i.ei = phi ptr [ %i.ea, %.thread.i499 ], [ %i.ed, %bb.p ] ; 12 uses
  br i1 %i.s, label %.lr.ph598.preheader, label %.preheader571

.lr.ph598.preheader:                              ; preds = %gv_calloc.exit500
  %i.ej = zext nneg i32 %1 to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ei, ptr align 4 %4, i64 %i.ek, i1 false), !tbaa !22
  br label %.preheader571

.preheader571:                                    ; preds = %.lr.ph598.preheader, %gv_calloc.exit500
  %i.el = load i32, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph632, label %._crit_edge633

.lr.ph632:                                        ; preds = %.preheader571
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !32 ; 2 uses
  %.not492 = icmp eq i32 %17, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %i.eq = icmp sgt i32 %8, 0
  %i.er = icmp sgt i32 %2, 0
  %i.es = sitofp i32 %8 to double                 ; 4 uses
  %i.et = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count740 = zext nneg i32 %i.el to i64
  %.pre = load i32, ptr %i.eo, align 4, !tbaa !22
  %wide.trip.count726 = zext i32 %2 to i64        ; 3 uses
  %xtraiter = and i32 %8, 1
  %i.eu = icmp eq i32 %8, 1
  %unroll_iter = and i32 %8, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1388 = trunc i32 %8 to i1
  %min.iters.check1125 = icmp ult i32 %2, 4
  %n.vec1127 = and i64 %wide.trip.count726, 2147483644 ; 3 uses
  %cmp.n1140 = icmp eq i64 %n.vec1127, %wide.trip.count726
  br label %bb.r

.loopexit570:                                     ; preds = %..loopexit569_crit_edge.us, %.lr.ph608, %bb.r
  %.1428.lcssa = phi i32 [ %.0427631, %bb.r ], [ %.0427631, %.lr.ph608 ], [ %.3430.us, %..loopexit569_crit_edge.us ] ; 2 uses
  %exitcond741.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count740
  br i1 %exitcond741.not, label %._crit_edge633, label %bb.r, !llvm.loop !87
end_hunk_1
begin_hunk_2_@make_map_internal:.preheader573
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !22
  %i.fj = icmp eq i32 %i.fc, %i.fi
  %i.fk = icmp eq i32 %i.fc, %17
  %or.cond493.us = and i1 %i.fk, %i.fj
  br i1 %or.cond493.us, label %.preheader568.lr.ph.us, label %..loopexit569_crit_edge.us

.preheader568.lr.ph.us:                           ; preds = %bb.s, %.lr.ph608.split.us
  br i1 %i.er, label %.preheader568.lr.ph.split.us.us, label %.preheader568.us612.preheader

.preheader568.us612.preheader:                    ; preds = %.preheader568.lr.ph.us
  %i.fl = sext i32 %.1428606.us to i64            ; 2 uses
  br i1 %i.eu, label %.preheader568.us612.epil.preheader, label %.preheader568.us612

.preheader568.us612:                              ; preds = %.preheader568.us612.preheader, %bb.v
  %indvars.iv719 = phi i64 [ %indvars.iv.next720.1, %bb.v ], [ %i.fl, %.preheader568.us612.preheader ] ; 3 uses
  %.0425603.us613 = phi i32 [ %i.gg, %bb.v ], [ 0, %.preheader568.us612.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %bb.v ], [ 0, %.preheader568.us612.preheader ]
  %i.fm = uitofp nneg i32 %.0425603.us613 to double
  %i.fn = fdiv double %i.fm, %i.es
  %i.fo = fcmp ogt double %i.fn, 5.000000e-01
  br i1 %i.fo, label %.preheader568.us612.1, label %bb.t

bb.t:                                             ; preds = %.preheader568.us612
  %i.fp = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %indvars.iv732
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !22
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.fs
  br label %.preheader568.us612.1

.preheader568.us612.1:                            ; preds = %.preheader568.us612, %bb.t
  %.sink.in = phi ptr [ %i.ft, %bb.t ], [ %i.ez, %.preheader568.us612 ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !22
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %indvars.iv719
  store i32 %.sink, ptr %i.fu, align 4, !tbaa !22
  %i.fv = or disjoint i32 %.0425603.us613, 1
  %i.fw = uitofp nneg i32 %i.fv to double
  %i.fx = fdiv double %i.fw, %i.es
  %i.fy = fcmp ogt double %i.fx, 5.000000e-01
  br i1 %i.fy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader568.us612.1
  %i.fz = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %indvars.iv732
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !22
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.gc
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader568.us612.1
  %.sink.in.1 = phi ptr [ %i.gd, %bb.u ], [ %i.ez, %.preheader568.us612.1 ]
  %.sink.1 = load i32, ptr %.sink.in.1, align 4, !tbaa !22
  %i.ge = getelementptr [4 x i8], ptr %i.ei, i64 %indvars.iv719
  %i.gf = getelementptr i8, ptr %i.ge, i64 4
  store i32 %.sink.1, ptr %i.gf, align 4, !tbaa !22
  %indvars.iv.next720.1 = add nsw i64 %indvars.iv719, 2 ; 3 uses
  %i.gg = add nuw nsw i32 %.0425603.us613, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit569_crit_edge.us.loopexit685.unr-lcssa, label %.preheader568.us612, !llvm.loop !88

.preheader568.lr.ph.split.us.us:                  ; preds = %.preheader568.lr.ph.us
  %i.gh = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %indvars.iv732
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !22 ; 2 uses
  %i.gk = mul nsw i32 %i.gj, %2
  %i.gl = sext i32 %i.gk to i64
  %i.gm = sext i32 %.1428606.us to i64
  %invariant.gep1068 = getelementptr [8 x i8], ptr %3, i64 %i.gl ; 2 uses
  %i.gn = sext i32 %i.gj to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.gn
  br label %.preheader568.us.us

.preheader568.us.us:                              ; preds = %._crit_edge601.us.us, %.preheader568.lr.ph.split.us.us
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %._crit_edge601.us.us ], [ %i.gm, %.preheader568.lr.ph.split.us.us ] ; 3 uses
  %.0425603.us.us = phi i32 [ %i.hk, %._crit_edge601.us.us ], [ 0, %.preheader568.lr.ph.split.us.us ] ; 2 uses
  %i.gp = uitofp nneg i32 %.0425603.us.us to double
  %i.gq = fdiv double %i.gp, %i.es                ; 4 uses
  %i.gr = fsub double 1.000000e+00, %i.gq         ; 2 uses
  %i.gs = mul nsw i64 %indvars.iv728, %i.et
  %invariant.gep1070 = getelementptr [8 x i8], ptr %i.dt, i64 %i.gs ; 2 uses
  br i1 %min.iters.check1125, label %scalar.ph1124.preheader, label %vector.ph1126

vector.ph1126:                                    ; preds = %.preheader568.us.us
  %broadcast.splatinsert1128 = insertelement <2 x double> poison, double %i.gq, i64 0
  %broadcast.splat1129 = shufflevector <2 x double> %broadcast.splatinsert1128, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1130 = insertelement <2 x double> poison, double %i.gr, i64 0
  %broadcast.splat1131 = shufflevector <2 x double> %broadcast.splatinsert1130, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %vector.ph1126
  %index1133 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1138, %vector.body1132 ] ; 4 uses
  %i.gt = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1133 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %wide.load1134 = load <2 x double>, ptr %i.gt, align 8, !tbaa !24
  %wide.load1135 = load <2 x double>, ptr %i.gu, align 8, !tbaa !24
  %i.gv = getelementptr [8 x i8], ptr %invariant.gep1068, i64 %index1133 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 16
  %wide.load1136 = load <2 x double>, ptr %i.gv, align 8, !tbaa !24
  %wide.load1137 = load <2 x double>, ptr %i.gw, align 8, !tbaa !24
  %i.gx = fmul <2 x double> %broadcast.splat1131, %wide.load1136
  %i.gy = fmul <2 x double> %broadcast.splat1131, %wide.load1137
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1129, <2 x double> %wide.load1134, <2 x double> %i.gx)
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1129, <2 x double> %wide.load1135, <2 x double> %i.gy)
  %i.hb = getelementptr [8 x i8], ptr %invariant.gep1070, i64 %index1133 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 16
  store <2 x double> %i.gz, ptr %i.hb, align 8, !tbaa !24
  store <2 x double> %i.ha, ptr %i.hc, align 8, !tbaa !24
  %index.next1138 = add nuw i64 %index1133, 4     ; 2 uses
  %i.hd = icmp eq i64 %index.next1138, %n.vec1127
  br i1 %i.hd, label %middle.block1139, label %vector.body1132, !llvm.loop !89

middle.block1139:                                 ; preds = %vector.body1132
  br i1 %cmp.n1140, label %._crit_edge601.us.us, label %scalar.ph1124.preheader

scalar.ph1124.preheader:                          ; preds = %.preheader568.us.us, %middle.block1139
  %indvars.iv723.ph = phi i64 [ 0, %.preheader568.us.us ], [ %n.vec1127, %middle.block1139 ]
  br label %scalar.ph1124

scalar.ph1124:                                    ; preds = %scalar.ph1124.preheader, %scalar.ph1124
  %indvars.iv723 = phi i64 [ %indvars.iv.next724, %scalar.ph1124 ], [ %indvars.iv723.ph, %scalar.ph1124.preheader ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv723
  %i.he = load double, ptr %gep, align 8, !tbaa !24
  %gep1069 = getelementptr [8 x i8], ptr %invariant.gep1068, i64 %indvars.iv723
  %i.hf = load double, ptr %gep1069, align 8, !tbaa !24
  %i.hg = fmul double %i.gr, %i.hf
  %i.hh = call double @llvm.fmuladd.f64(double %i.gq, double %i.he, double %i.hg)
  %gep1071 = getelementptr [8 x i8], ptr %invariant.gep1070, i64 %indvars.iv723
  store double %i.hh, ptr %gep1071, align 8, !tbaa !24
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge601.us.us, label %scalar.ph1124, !llvm.loop !90

._crit_edge601.us.us:                             ; preds = %scalar.ph1124, %middle.block1139
  %i.hi = fcmp ogt double %i.gq, 5.000000e-01
  %spec.select1076 = select i1 %i.hi, ptr %i.ez, ptr %i.go
  %.sink887 = load i32, ptr %spec.select1076, align 4, !tbaa !22
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %indvars.iv728
  store i32 %.sink887, ptr %i.hj, align 4, !tbaa !22
  %indvars.iv.next729 = add nsw i64 %indvars.iv728, 1 ; 2 uses
  %i.hk = add nuw nsw i32 %.0425603.us.us, 1      ; 2 uses
  %exitcond731.not = icmp eq i32 %i.hk, %8
  br i1 %exitcond731.not, label %..loopexit569_crit_edge.us.loopexit, label %.preheader568.us.us, !llvm.loop !88

..loopexit569_crit_edge.us.loopexit:              ; preds = %._crit_edge601.us.us
  %i.hl = trunc nsw i64 %indvars.iv.next729 to i32
  br label %..loopexit569_crit_edge.us

..loopexit569_crit_edge.us.loopexit685.unr-lcssa: ; preds = %bb.v
  br i1 %lcmp.mod.not, label %..loopexit569_crit_edge.us.loopexit685, label %.preheader568.us612.epil.preheader

.preheader568.us612.epil.preheader:               ; preds = %..loopexit569_crit_edge.us.loopexit685.unr-lcssa, %.preheader568.us612.preheader
  %indvars.iv719.epil.init = phi i64 [ %i.fl, %.preheader568.us612.preheader ], [ %indvars.iv.next720.1, %..loopexit569_crit_edge.us.loopexit685.unr-lcssa ] ; 2 uses
  %.0425603.us613.epil.init = phi i32 [ 0, %.preheader568.us612.preheader ], [ %i.gg, %..loopexit569_crit_edge.us.loopexit685.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1388)
  %i.hm = uitofp nneg i32 %.0425603.us613.epil.init to double
  %i.hn = fdiv double %i.hm, %i.es
  %i.ho = fcmp ogt double %i.hn, 5.000000e-01
  br i1 %i.ho, label %..loopexit569_crit_edge.us.loopexit685.epilog-lcssa, label %bb.w

bb.w:                                             ; preds = %.preheader568.us612.epil.preheader
  %i.hp = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %indvars.iv732
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !22
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.hs
  br label %..loopexit569_crit_edge.us.loopexit685.epilog-lcssa

..loopexit569_crit_edge.us.loopexit685.epilog-lcssa: ; preds = %bb.w, %.preheader568.us612.epil.preheader
  %.sink.in.epil = phi ptr [ %i.ht, %bb.w ], [ %i.ez, %.preheader568.us612.epil.preheader ]
  %.sink.epil = load i32, ptr %.sink.in.epil, align 4, !tbaa !22
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %indvars.iv719.epil.init
  store i32 %.sink.epil, ptr %i.hu, align 4, !tbaa !22
  %indvars.iv.next720.epil = add nsw i64 %indvars.iv719.epil.init, 1
  br label %..loopexit569_crit_edge.us.loopexit685

..loopexit569_crit_edge.us.loopexit685:           ; preds = %..loopexit569_crit_edge.us.loopexit685.unr-lcssa, %..loopexit569_crit_edge.us.loopexit685.epilog-lcssa
  %indvars.iv.next720.lcssa = phi i64 [ %indvars.iv.next720.1, %..loopexit569_crit_edge.us.loopexit685.unr-lcssa ], [ %indvars.iv.next720.epil, %..loopexit569_crit_edge.us.loopexit685.epilog-lcssa ]
  %i.hv = trunc nsw i64 %indvars.iv.next720.lcssa to i32
  br label %..loopexit569_crit_edge.us

..loopexit569_crit_edge.us:                       ; preds = %..loopexit569_crit_edge.us.loopexit685, %..loopexit569_crit_edge.us.loopexit, %bb.s
  %.3430.us = phi i32 [ %.1428606.us, %bb.s ], [ %i.hl, %..loopexit569_crit_edge.us.loopexit ], [ %i.hv, %..loopexit569_crit_edge.us.loopexit685 ] ; 2 uses
  %indvars.iv.next733 = add nsw i64 %indvars.iv732, 1 ; 2 uses
  %exitcond736.not = icmp eq i64 %indvars.iv.next733, %wide.trip.count735
  br i1 %exitcond736.not, label %.loopexit570, label %.lr.ph608.split.us, !llvm.loop !91

._crit_edge633:                                   ; preds = %.loopexit570, %.preheader571
  %.0427.lcssa = phi i32 [ %1, %.preheader571 ], [ %.1428.lcssa, %.loopexit570 ] ; 3 uses
  %i.hw = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.hx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hw, ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %.0427.lcssa) #20 ; 0 uses
  %i.hy = call ptr @QuadTree_new_from_point_list(i32 noundef %2, i32 noundef %.0427.lcssa, i32 noundef 10, ptr noundef %i.dt) #19
  br label %bb.y

bb.x:                                             ; preds = %bb.h
  %i.hz = call ptr @QuadTree_new_from_point_list(i32 noundef %2, i32 noundef %1, i32 noundef 10, ptr noundef nonnull %3) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge633
  %.0444 = phi ptr [ %i.hy, %._crit_edge633 ], [ %i.hz, %bb.x ] ; 2 uses
  %.0432 = phi ptr [ %i.ei, %._crit_edge633 ], [ %4, %bb.x ] ; 6 uses
  %.0431 = phi ptr [ %i.dt, %._crit_edge633 ], [ %3, %bb.x ] ; 14 uses
  %.0415 = phi i32 [ %.0427.lcssa, %._crit_edge633 ], [ %1, %bb.x ] ; 13 uses
  %.04311214 = ptrtoaddr ptr %.0431 to i64        ; 2 uses
  %.not482 = icmp eq i32 %.0420, 0
  br i1 %.not482, label %bb.be, label %.preheader567

.preheader567:                                    ; preds = %bb.y
  %i.ia = fcmp ogt double %6, 0.000000e+00
  %i.ib = fcmp olt double %6, 0.000000e+00        ; 2 uses
  %i.ic = fmul nsz double %.0424, 2.000000e+00    ; 2 uses
  %i.id = fneg double %6                          ; 2 uses
  br i1 %i.ia, label %.thread1017, label %bb.z

bb.z:                                             ; preds = %.preheader567
  br i1 %i.ib, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = fmul nsz <2 x double> %i.br, splat (double 2.000000e-01)
  %i.if = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ie, <2 x double> %i.ig) ; 2 uses
  %i.ii = fsub <2 x double> %i.bq, %i.ih
  %i.ij = fadd <2 x double> %i.ih, %i.bp
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ik = insertelement <2 x double> poison, double %6, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.il, <2 x double> %i.bq)
  %i.in = insertelement <2 x double> poison, double %i.id, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.io, <2 x double> %i.bp)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.iq = phi <2 x double> [ %i.ij, %bb.aa ], [ %i.ip, %bb.ab ] ; 3 uses
  %i.ir = phi <2 x double> [ %i.ii, %bb.aa ], [ %i.im, %bb.ab ] ; 3 uses
  %i.is = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not483 = icmp eq i8 %i.is, 0
  br i1 %.not483, label %bb.ag, label %bb.ad

.thread1017:                                      ; preds = %.preheader567
  %i.it = insertelement <2 x double> poison, double %6, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iv = fsub <2 x double> %i.bq, %i.iu          ; 2 uses
  %i.iw = fadd <2 x double> %i.iu, %i.bp          ; 2 uses
  %i.ix = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not4831022 = icmp eq i8 %i.ix, 0
  br i1 %.not4831022, label %bb.ag, label %.thread1031

.thread1031:                                      ; preds = %.thread1017
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.iz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.43, double noundef %6) #20 ; 0 uses
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ja = load ptr, ptr @stderr, align 8, !tbaa !19 ; 2 uses
  br i1 %i.ib, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ja, ptr noundef nonnull @.str.44, double noundef %i.bs, double noundef %i.id) #20 ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.jc = fmul nsz double %i.bs, 2.000000e-01
  %i.jd = call nsz double @llvm.maxnum.f64(double %i.jc, double %i.ic)
  %i.je = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ja, ptr noundef nonnull @.str.43, double noundef %i.jd) #20 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.thread1017, %.thread1031, %bb.af, %bb.ae, %bb.ac
  %i.jf = phi <2 x double> [ %i.iw, %.thread1017 ], [ %i.iw, %.thread1031 ], [ %i.iq, %bb.af ], [ %i.iq, %bb.ae ], [ %i.iq, %bb.ac ] ; 4 uses
  %i.jg = phi <2 x double> [ %i.iv, %.thread1017 ], [ %i.iv, %.thread1031 ], [ %i.ir, %bb.af ], [ %i.ir, %bb.ae ], [ %i.ir, %bb.ac ] ; 6 uses
  %i.jh = icmp slt i32 %.0420, 0
  br i1 %i.jh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ji = fsub <2 x double> %i.jf, %i.jg          ; 2 uses
  %i.jj = fmul double %.0424, %.0424
  %i.jk = sitofp i32 %.0415 to double
  %18 = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %19 = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x double> %18, %19
  %i.jm = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.jn = insertelement <2 x double> %i.jm, double %i.jj, i64 0
  %i.jo = fdiv <2 x double> %i.jl, %i.jn
  %i.jp = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.jo) ; 2 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 1
  %i.jr = fmul double %i.jq, %i.jk
  %i.js = extractelement <2 x double> %i.jp, i64 0
  %i.jt = call nsz double @llvm.maxnum.f64(double %i.js, double %i.jr)
  %i.ju = fptosi double %i.jt to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1421 = phi i32 [ %i.ju, %bb.ah ], [ %.0420, %bb.ag ] ; 5 uses
  call void @srand(i32 noundef 123) #19
  %i.jv = shl i32 %.1421, 1
  %i.jw = add i32 %i.jv, 8                        ; 3 uses
  %i.jx = sext i32 %i.jw to i64                   ; 3 uses
  %.not.i501 = icmp eq i32 %i.jw, 0
  br i1 %.not.i501, label %.thread.i504, label %bb.aj

.thread.i504:                                     ; preds = %bb.ai
  %i.jy = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit505

bb.aj:                                            ; preds = %bb.ai
  %mul.ov.i503 = icmp slt i32 %i.jw, 0
  br i1 %mul.ov.i503, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jz = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ka = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jz, ptr noundef nonnull @.str.28, i64 noundef %i.jx, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.kb = call noalias ptr @calloc(i64 noundef %i.jx, i64 noundef 8) #22 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.am, label %gv_calloc.exit505

bb.am:                                            ; preds = %bb.al
  %i.kd = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ke = shl nuw nsw i64 %i.jx, 3
  %i.kf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kd, ptr noundef nonnull @.str.29, i64 noundef %i.ke) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit505:                                ; preds = %.thread.i504, %bb.al
  %i.kg = phi ptr [ %i.jy, %.thread.i504 ], [ %i.kb, %bb.al ] ; 4 uses
  br i1 %0, label %bb.an, label %gv_recalloc.exit

bb.an:                                            ; preds = %gv_calloc.exit505
  %i.kh = add nsw i32 %.1421, -1                  ; 4 uses
  %i.ki = icmp eq ptr %.0432, %4
  %i.kj = add nsw i32 %.1421, %.0415              ; 5 uses
  %i.kk = sext i32 %i.kj to i64                   ; 5 uses
  br i1 %i.ki, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %.not.i506 = icmp eq i32 %i.kj, 0
  br i1 %.not.i506, label %.thread.i509, label %bb.ap

.thread.i509:                                     ; preds = %bb.ao
  %i.kl = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit510

bb.ap:                                            ; preds = %bb.ao
  %mul.ov.i508 = icmp slt i32 %i.kj, 0
  br i1 %mul.ov.i508, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.kn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.km, ptr noundef nonnull @.str.28, i64 noundef %i.kk, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ko = call noalias ptr @calloc(i64 noundef %i.kk, i64 noundef 4) #22 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.as, label %gv_calloc.exit510

bb.as:                                            ; preds = %bb.ar
  %i.kq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.kr = shl nuw nsw i64 %i.kk, 2
  %i.ks = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kq, ptr noundef nonnull @.str.29, i64 noundef %i.kr) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit510:                                ; preds = %.thread.i509, %bb.ar
  %i.kt = phi ptr [ %i.kl, %.thread.i509 ], [ %i.ko, %bb.ar ] ; 2 uses
  %i.ku = sext i32 %.0415 to i64
  %i.kv = shl nsw i64 %i.ku, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kt, ptr align 4 %.0432, i64 %i.kv, i1 false)
  br label %gv_recalloc.exit

bb.at:                                            ; preds = %bb.an
  %mul.ov.i512 = icmp slt i32 %i.kj, 0
  br i1 %mul.ov.i512, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.kw = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.kx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kw, ptr noundef nonnull @.str.28, i64 noundef %i.kk, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ky = sext i32 %.0415 to i64
  %i.kz = shl nsw i64 %i.ky, 2                    ; 3 uses
  %i.la = shl nuw nsw i64 %i.kk, 2                ; 4 uses
  %i.lb = icmp eq i32 %i.kj, 0
  br i1 %i.lb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef %.0432) #19
  br label %gv_recalloc.exit

bb.ax:                                            ; preds = %bb.av
  %i.lc = call ptr @realloc(ptr noundef %.0432, i64 noundef %i.la) #23 ; 4 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.le = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.lf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.le, ptr noundef nonnull @.str.29, i64 noundef %i.la) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.lg = icmp ugt i64 %i.la, %i.kz
  br i1 %i.lg, label %bb.ba, label %gv_recalloc.exit

bb.ba:                                            ; preds = %bb.az
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kz
  %i.li = sub nuw nsw i64 %i.la, %i.kz
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lh, i8 0, i64 %i.li, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.ba, %bb.az, %bb.aw, %gv_calloc.exit510, %gv_calloc.exit505
  %.0436 = phi i32 [ %i.kh, %gv_calloc.exit510 ], [ 0, %gv_calloc.exit505 ], [ %i.kh, %bb.aw ], [ %i.kh, %bb.az ], [ %i.kh, %bb.ba ] ; 3 uses
  %.1433 = phi ptr [ %i.kt, %gv_calloc.exit510 ], [ %.0432, %gv_calloc.exit505 ], [ null, %bb.aw ], [ %i.lc, %bb.az ], [ %i.lc, %bb.ba ] ; 4 uses
  %i.lj = icmp sgt i32 %.1421, 0
  br i1 %i.lj, label %.preheader566.lr.ph, label %._crit_edge642

.preheader566.lr.ph:                              ; preds = %gv_recalloc.exit
  %i.lk = fdiv double %.0424, 1.000000e+01
  %i.ll = fsub <2 x double> %i.jf, %i.jg          ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ln = extractelement <2 x double> %i.jg, i64 0
  %i.lo = extractelement <2 x double> %i.jg, i64 1
  %i.lp = extractelement <2 x double> %i.ll, i64 0
  %i.lq = extractelement <2 x double> %i.ll, i64 1
  br label %.preheader566

.preheader566:                                    ; preds = %.preheader566.lr.ph, %bb.bc
  %.0418641 = phi i32 [ 0, %.preheader566.lr.ph ], [ %.1419, %bb.bc ] ; 4 uses
  %.1439640 = phi i32 [ %.0436, %.preheader566.lr.ph ], [ %.2440, %bb.bc ] ; 4 uses
  %.0441639 = phi i32 [ %.0415, %.preheader566.lr.ph ], [ %.1442, %bb.bc ] ; 4 uses
  %.5456638 = phi i32 [ 0, %.preheader566.lr.ph ], [ %i.mn, %bb.bc ]
  %i.lr = call double @drand() #19
  %i.ls = call double @llvm.fmuladd.f64(double %i.lp, double %i.lr, double %i.ln)
  store double %i.ls, ptr %i.p, align 16, !tbaa !24
  %i.lt = call double @drand() #19
  %i.lu = call double @llvm.fmuladd.f64(double %i.lq, double %i.lt, double %i.lo)
  store double %i.lu, ptr %i.lm, align 8, !tbaa !24
  call void @QuadTree_get_nearest(ptr noundef %.0444, ptr noundef nonnull %i.p, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n) #19
  %i.lv = load double, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.lw = fcmp ogt double %i.lv, %.0424
  br i1 %i.lw, label %.preheader564, label %bb.bb

.preheader564:                                    ; preds = %.preheader566
  %i.lx = shl nsw i32 %.0418641, 1
  %i.ly = sext i32 %i.lx to i64
  %i.lz = shl nsw i64 %i.ly, 3
  %scevgep751 = getelementptr i8, ptr %i.kg, i64 %i.lz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep751, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa !24
  %i.ma = add nsw i32 %.0418641, 1
  br label %bb.bc

bb.bb:                                            ; preds = %.preheader566
  %i.mb = fcmp ogt double %i.lv, %i.lk
  %or.cond495 = select i1 %0, i1 %i.mb, i1 false
  br i1 %or.cond495, label %.preheader565, label %bb.bc

.preheader565:                                    ; preds = %bb.bb
  %i.mc = shl nsw i32 %.1439640, 1
  %i.md = sext i32 %i.mc to i64
  %i.me = shl nsw i64 %i.md, 3
  %scevgep = getelementptr i8, ptr %i.kg, i64 %i.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa !24
  %i.mf = load i32, ptr %i.o, align 4, !tbaa !22
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !22
  %i.mj = add nsw i32 %.0441639, 1
  %i.mk = sext i32 %.0441639 to i64
  %i.ml = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.mk
  store i32 %i.mi, ptr %i.ml, align 4, !tbaa !22
  %i.mm = add nsw i32 %.1439640, -1
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader564, %.preheader565, %bb.bb
  %.1442 = phi i32 [ %.0441639, %.preheader564 ], [ %i.mj, %.preheader565 ], [ %.0441639, %bb.bb ] ; 2 uses
  %.2440 = phi i32 [ %.1439640, %.preheader564 ], [ %i.mm, %.preheader565 ], [ %.1439640, %bb.bb ]
  %.1419 = phi i32 [ %i.ma, %.preheader564 ], [ %.0418641, %.preheader565 ], [ %.0418641, %bb.bb ] ; 2 uses
  %i.mn = add nuw nsw i32 %.5456638, 1            ; 2 uses
  %exitcond755.not = icmp eq i32 %i.mn, %.1421
  br i1 %exitcond755.not, label %._crit_edge642, label %.preheader566, !llvm.loop !92

._crit_edge642:                                   ; preds = %bb.bc, %gv_recalloc.exit
  %.0441.lcssa = phi i32 [ %.0415, %gv_recalloc.exit ], [ %.1442, %bb.bc ] ; 2 uses
  %.0418.lcssa = phi i32 [ 0, %gv_recalloc.exit ], [ %.1419, %bb.bc ] ; 3 uses
  %i.mo = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not484 = icmp eq i8 %i.mo, 0
  br i1 %.not484, label %gv_calloc.exit513, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge642
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.mq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mp, ptr noundef nonnull @.str.45, i32 noundef %.0418.lcssa) #20 ; 0 uses
  br label %gv_calloc.exit513

bb.be:                                            ; preds = %bb.y
  %i.mr = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #22 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.bf, label %gv_calloc.exit513

bb.bf:                                            ; preds = %bb.be
  %i.mt = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.mu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mt, ptr noundef nonnull @.str.29, i64 noundef 64) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit513:                                ; preds = %bb.be, %._crit_edge642, %bb.bd
  %.2443 = phi i32 [ 0, %bb.be ], [ %.0441.lcssa, %._crit_edge642 ], [ %.0441.lcssa, %bb.bd ] ; 7 uses
  %.1437 = phi i32 [ 0, %bb.be ], [ %.0436, %._crit_edge642 ], [ %.0436, %bb.bd ]
  %.0435 = phi ptr [ %i.mr, %bb.be ], [ %i.kg, %._crit_edge642 ], [ %i.kg, %bb.bd ] ; 25 uses
  %.2434 = phi ptr [ %.0432, %bb.be ], [ %.1433, %._crit_edge642 ], [ %.1433, %bb.bd ] ; 12 uses
  %.2422 = phi i32 [ 0, %bb.be ], [ %.0418.lcssa, %._crit_edge642 ], [ %.0418.lcssa, %bb.bd ] ; 3 uses
  %i.mv = phi <2 x double> [ %i.bp, %bb.be ], [ %i.jf, %._crit_edge642 ], [ %i.jf, %bb.bd ] ; 4 uses
  %i.mw = phi <2 x double> [ %i.bq, %bb.be ], [ %i.jg, %._crit_edge642 ], [ %i.jg, %bb.bd ] ; 3 uses
  %foldExtExtBinop1327 = fsub <2 x double> %i.mv, %i.mw
  %i.mx = shl i32 %.2422, 1                       ; 4 uses
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.my
  %i.na = getelementptr [8 x i8], ptr %.0435, i64 %i.my
  %i.nb = getelementptr i8, ptr %i.na, i64 8
  %i.nc = add i32 %i.mx, 2
  %i.nd = sext i32 %i.nc to i64                   ; 2 uses
  %i.ne = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.nd
  %i.nf = getelementptr [8 x i8], ptr %.0435, i64 %i.nd
  %i.ng = getelementptr i8, ptr %i.nf, i64 8
  %i.nh = add i32 %i.mx, 4
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.ni ; 2 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 8
  %i.nl = add i32 %i.mx, 6
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.nm
  %i.no = insertelement <2 x double> %foldExtExtBinop1327, double -0.000000e+00, i64 1
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> <double -2.000000e-01, double 0.000000e+00>, <2 x double> %i.mw) ; 2 uses
  %20 = fsub <2 x double> %i.mv, %i.np
  %21 = shufflevector <2 x double> %i.mv, <2 x double> %i.mw, <2 x i32> <i32 0, i32 3>
  %22 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> <double 2.000000e-01, double -2.000000e-01>, <2 x double> %21) ; 3 uses
  %23 = extractelement <2 x double> %22, i64 1    ; 2 uses
  %i.nq = extractelement <2 x double> %i.mv, i64 1 ; 2 uses
  %24 = fsub double %i.nq, %23
  %25 = call double @llvm.fmuladd.f64(double %24, double 2.000000e-01, double %i.nq) ; 2 uses
  %i.nr = extractelement <2 x double> %i.np, i64 0 ; 2 uses
  store double %i.nr, ptr %i.mz, align 8, !tbaa !24
  store double %23, ptr %i.nb, align 8, !tbaa !24
  %i.ns = extractelement <2 x double> %22, i64 0
  store double %i.ns, ptr %i.ne, align 8, !tbaa !24
  store double %25, ptr %i.ng, align 8, !tbaa !24
  store double %i.nr, ptr %i.nj, align 8, !tbaa !24
  store double %25, ptr %i.nk, align 8, !tbaa !24
  store <2 x double> %22, ptr %i.nn, align 8, !tbaa !24
  %i.nt = add i32 %.2422, 4                       ; 6 uses
  br i1 %0, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %gv_calloc.exit513
  %i.nu = add nsw i32 %i.nt, %.2443               ; 3 uses
  %i.nv = shl nsw i32 %i.nu, 1
  %i.nw = sext i32 %i.nv to i64                   ; 3 uses
  %.not.i514 = icmp eq i32 %i.nu, 0
  br i1 %.not.i514, label %gv_calloc.exit518.sink.split, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %mul.ov.i516 = icmp slt i32 %i.nu, 0
  br i1 %mul.ov.i516, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nx = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ny = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nx, ptr noundef nonnull @.str.28, i64 noundef %i.nw, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.nz = call noalias ptr @calloc(i64 noundef %i.nw, i64 noundef 8) #22 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %bb.bk, label %gv_calloc.exit518

bb.bk:                                            ; preds = %bb.bj
  %i.ob = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.oc = shl nuw nsw i64 %i.nw, 3
  %i.od = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ob, ptr noundef nonnull @.str.29, i64 noundef %i.oc) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bl:                                            ; preds = %gv_calloc.exit513
  %i.oe = add nsw i32 %i.nt, %.0415               ; 3 uses
  %i.of = shl nsw i32 %i.oe, 1
  %i.og = sext i32 %i.of to i64                   ; 3 uses
  %.not.i519 = icmp eq i32 %i.oe, 0
  br i1 %.not.i519, label %gv_calloc.exit518.sink.split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %mul.ov.i521 = icmp slt i32 %i.oe, 0
  br i1 %mul.ov.i521, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.oh = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.oi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oh, ptr noundef nonnull @.str.28, i64 noundef %i.og, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.oj = call noalias ptr @calloc(i64 noundef %i.og, i64 noundef 8) #22 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.bp, label %gv_calloc.exit518

bb.bp:                                            ; preds = %bb.bo
  %i.ol = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.om = shl nuw nsw i64 %i.og, 3
  %i.on = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ol, ptr noundef nonnull @.str.29, i64 noundef %i.om) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit518.sink.split:                     ; preds = %bb.bl, %bb.bg
  %i.oo = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit518

gv_calloc.exit518:                                ; preds = %gv_calloc.exit518.sink.split, %bb.bo, %bb.bj
  %.0414 = phi ptr [ %i.nz, %bb.bj ], [ %i.oj, %bb.bo ], [ %i.oo, %gv_calloc.exit518.sink.split ] ; 45 uses
  %.04141213 = ptrtoaddr ptr %.0414 to i64        ; 2 uses
  %i.op = icmp sgt i32 %.0415, 0
  br i1 %i.op, label %.preheader560.preheader, label %.preheader559

.preheader560.preheader:                          ; preds = %gv_calloc.exit518
  %i.oq = sext i32 %2 to i64                      ; 3 uses
  %wide.trip.count778 = zext nneg i32 %.0415 to i64 ; 7 uses
  %min.iters.check1147 = icmp ugt i32 %.0415, 9
  %ident.check1143.not = icmp eq i32 %2, 1
  %or.cond1320 = and i1 %min.iters.check1147, %ident.check1143.not
  br i1 %or.cond1320, label %vector.memcheck, label %.preheader560.preheader1373

vector.memcheck:                                  ; preds = %.preheader560.preheader
  %i.or = shl nuw nsw i64 %wide.trip.count778, 4
  %i.os = getelementptr i8, ptr %.0414, i64 %i.or
  %i.ot = shl nuw nsw i64 %wide.trip.count778, 3
  %i.ou = getelementptr i8, ptr %.0431, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %bound0 = icmp ult ptr %.0414, %i.ov
  %bound1 = icmp ult ptr %.0431, %i.os
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader560.preheader1373, label %vector.ph1148

vector.ph1148:                                    ; preds = %vector.memcheck
  %n.vec1149 = and i64 %wide.trip.count778, 2147483646 ; 3 uses
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1148
  %index1151 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1154, %vector.body1150 ] ; 3 uses
  %i.ow = getelementptr [8 x i8], ptr %.0431, i64 %index1151 ; 2 uses
  %wide.load1152 = load <2 x double>, ptr %i.ow, align 8, !tbaa !24, !alias.scope !153
  %.idx1316 = shl nuw nsw i64 %index1151, 4
  %i.ox = getelementptr inbounds nuw i8, ptr %.0414, i64 %.idx1316
  %i.oy = getelementptr i8, ptr %i.ow, i64 8
  %wide.load1153 = load <2 x double>, ptr %i.oy, align 8, !tbaa !24, !alias.scope !153
  %interleaved.vec = shufflevector <2 x double> %wide.load1152, <2 x double> %wide.load1153, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ox, align 8, !tbaa !24, !alias.scope !154, !noalias !153
  %index.next1154 = add nuw i64 %index1151, 2     ; 2 uses
  %i.oz = icmp eq i64 %index.next1154, %n.vec1149
  br i1 %i.oz, label %middle.block1155, label %vector.body1150, !llvm.loop !96

middle.block1155:                                 ; preds = %vector.body1150
  %cmp.n1156 = icmp eq i64 %n.vec1149, %wide.trip.count778
  br i1 %cmp.n1156, label %.preheader559, label %.preheader560.preheader1373

.preheader560.preheader1373:                      ; preds = %vector.memcheck, %.preheader560.preheader, %middle.block1155
  %indvars.iv775.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader560.preheader ], [ %n.vec1149, %middle.block1155 ] ; 5 uses
  %xtraiter1389 = and i64 %wide.trip.count778, 1
  %lcmp.mod1390.not = icmp eq i64 %xtraiter1389, 0
  br i1 %lcmp.mod1390.not, label %.preheader560.prol.loopexit, label %.preheader560.prol

.preheader560.prol:                               ; preds = %.preheader560.preheader1373
  %i.pa = mul nsw i64 %indvars.iv775.ph, %i.oq    ; 2 uses
  %i.pb = shl nuw nsw i64 %indvars.iv775.ph, 1    ; 2 uses
  %i.pc = getelementptr inbounds [8 x i8], ptr %.0431, i64 %i.pa
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !24
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.pb
  store double %i.pd, ptr %i.pe, align 8, !tbaa !24
  %i.pf = getelementptr [8 x i8], ptr %.0431, i64 %i.pa
  %i.pg = getelementptr i8, ptr %i.pf, i64 8
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !24
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.pb
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store double %i.ph, ptr %i.pj, align 8, !tbaa !24
  %indvars.iv.next776.prol = or disjoint i64 %indvars.iv775.ph, 1
  br label %.preheader560.prol.loopexit

.preheader560.prol.loopexit:                      ; preds = %.preheader560.prol, %.preheader560.preheader1373
  %indvars.iv775.unr = phi i64 [ %indvars.iv775.ph, %.preheader560.preheader1373 ], [ %indvars.iv.next776.prol, %.preheader560.prol ]
  %i.pk = add nsw i64 %wide.trip.count778, -1
  %i.pl = icmp eq i64 %indvars.iv775.ph, %i.pk
  br i1 %i.pl, label %.preheader559, label %.preheader560

.preheader560:                                    ; preds = %.preheader560.prol.loopexit, %.preheader560
  %indvars.iv775 = phi i64 [ %indvars.iv.next776.1, %.preheader560 ], [ %indvars.iv775.unr, %.preheader560.prol.loopexit ] ; 4 uses
  %i.pm = mul nsw i64 %indvars.iv775, %i.oq       ; 2 uses
  %i.pn = shl nuw nsw i64 %indvars.iv775, 1       ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %.0431, i64 %i.pm
  %i.pp = load double, ptr %i.po, align 8, !tbaa !24
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.pn
  store double %i.pp, ptr %i.pq, align 8, !tbaa !24
  %i.pr = getelementptr [8 x i8], ptr %.0431, i64 %i.pm
  %i.ps = getelementptr i8, ptr %i.pr, i64 8
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !24
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.pn
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  store double %i.pt, ptr %i.pv, align 8, !tbaa !24
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %i.pw = mul nsw i64 %indvars.iv.next776, %i.oq  ; 2 uses
  %i.px = shl nuw nsw i64 %indvars.iv.next776, 1  ; 2 uses
  %i.py = getelementptr inbounds [8 x i8], ptr %.0431, i64 %i.pw
  %i.pz = load double, ptr %i.py, align 8, !tbaa !24
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.px
  store double %i.pz, ptr %i.qa, align 8, !tbaa !24
  %i.qb = getelementptr [8 x i8], ptr %.0431, i64 %i.pw
  %i.qc = getelementptr i8, ptr %i.qb, i64 8
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !24
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.px
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store double %i.qd, ptr %i.qf, align 8, !tbaa !24
  %indvars.iv.next776.1 = add nuw nsw i64 %indvars.iv775, 2 ; 2 uses
  %exitcond779.not.1 = icmp eq i64 %indvars.iv.next776.1, %wide.trip.count778
  br i1 %exitcond779.not.1, label %.preheader559, label %.preheader560, !llvm.loop !97

.preheader559:                                    ; preds = %.preheader560.prol.loopexit, %.preheader560, %middle.block1155, %gv_calloc.exit518
  %i.qg = icmp sgt i32 %.2422, -4
  br i1 %i.qg, label %.preheader558.preheader, label %._crit_edge653

.preheader558.preheader:                          ; preds = %.preheader559
  %i.qh = sext i32 %2 to i64                      ; 3 uses
  %i.qi = sext i32 %.2443 to i64                  ; 6 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.nt, i32 1)
  %wide.trip.count788 = zext nneg i32 %smax to i64 ; 7 uses
  %min.iters.check1168 = icmp sgt i32 %i.nt, 11
  %ident.check1159.not = icmp eq i32 %2, 1
  %or.cond1321 = and i1 %min.iters.check1168, %ident.check1159.not
  br i1 %or.cond1321, label %vector.memcheck1169, label %.preheader558.preheader1372

vector.memcheck1169:                              ; preds = %.preheader558.preheader
  %i.qj = shl nsw i64 %i.qi, 4
  %i.qk = getelementptr i8, ptr %.0414, i64 %i.qj
  %i.ql = add nsw i64 %i.qi, %wide.trip.count788
  %i.qm = shl nsw i64 %i.ql, 4
  %i.qn = getelementptr i8, ptr %.0414, i64 %i.qm
  %i.qo = shl nuw nsw i64 %wide.trip.count788, 3
  %i.qp = getelementptr i8, ptr %.0435, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 8
  %bound01170 = icmp ult ptr %i.qk, %i.qq
  %bound11171 = icmp ult ptr %.0435, %i.qn
  %found.conflict1172 = and i1 %bound01170, %bound11171
  br i1 %found.conflict1172, label %.preheader558.preheader1372, label %vector.ph1173

vector.ph1173:                                    ; preds = %vector.memcheck1169
  %n.vec1174 = and i64 %wide.trip.count788, 2147483646 ; 3 uses
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1180, %vector.body1175 ] ; 3 uses
  %i.qr = add nsw i64 %index1176, %i.qi
  %i.qs = getelementptr [8 x i8], ptr %.0435, i64 %index1176 ; 2 uses
  %wide.load1177 = load <2 x double>, ptr %i.qs, align 8, !tbaa !24, !alias.scope !155
  %.idx1317 = shl nsw i64 %i.qr, 4
  %i.qt = getelementptr inbounds i8, ptr %.0414, i64 %.idx1317
  %i.qu = getelementptr i8, ptr %i.qs, i64 8
  %wide.load1178 = load <2 x double>, ptr %i.qu, align 8, !tbaa !24, !alias.scope !155
  %interleaved.vec1179 = shufflevector <2 x double> %wide.load1177, <2 x double> %wide.load1178, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1179, ptr %i.qt, align 8, !tbaa !24, !alias.scope !156, !noalias !155
  %index.next1180 = add nuw i64 %index1176, 2     ; 2 uses
  %i.qv = icmp eq i64 %index.next1180, %n.vec1174
  br i1 %i.qv, label %middle.block1181, label %vector.body1175, !llvm.loop !101

middle.block1181:                                 ; preds = %vector.body1175
  %cmp.n1182 = icmp eq i64 %n.vec1174, %wide.trip.count788
  br i1 %cmp.n1182, label %._crit_edge653, label %.preheader558.preheader1372

.preheader558.preheader1372:                      ; preds = %vector.memcheck1169, %.preheader558.preheader, %middle.block1181
  %indvars.iv785.ph = phi i64 [ 0, %vector.memcheck1169 ], [ 0, %.preheader558.preheader ], [ %n.vec1174, %middle.block1181 ] ; 5 uses
  %xtraiter1391 = and i64 %wide.trip.count788, 1
  %lcmp.mod1392.not = icmp eq i64 %xtraiter1391, 0
  br i1 %lcmp.mod1392.not, label %.preheader558.prol.loopexit, label %.preheader558.prol

.preheader558.prol:                               ; preds = %.preheader558.preheader1372
  %i.qw = mul nsw i64 %indvars.iv785.ph, %i.qh    ; 2 uses
  %i.qx = add nsw i64 %indvars.iv785.ph, %i.qi
  %i.qy = shl nsw i64 %i.qx, 1                    ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.qw
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !24
  %i.rb = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.qy
  store double %i.ra, ptr %i.rb, align 8, !tbaa !24
  %i.rc = getelementptr [8 x i8], ptr %.0435, i64 %i.qw
  %i.rd = getelementptr i8, ptr %i.rc, i64 8
  %i.re = load double, ptr %i.rd, align 8, !tbaa !24
  %i.rf = getelementptr [8 x i8], ptr %.0414, i64 %i.qy
  %i.rg = getelementptr i8, ptr %i.rf, i64 8
  store double %i.re, ptr %i.rg, align 8, !tbaa !24
  %indvars.iv.next786.prol = or disjoint i64 %indvars.iv785.ph, 1
  br label %.preheader558.prol.loopexit

.preheader558.prol.loopexit:                      ; preds = %.preheader558.prol, %.preheader558.preheader1372
  %indvars.iv785.unr = phi i64 [ %indvars.iv785.ph, %.preheader558.preheader1372 ], [ %indvars.iv.next786.prol, %.preheader558.prol ]
  %i.rh = add nsw i64 %wide.trip.count788, -1
  %i.ri = icmp eq i64 %indvars.iv785.ph, %i.rh
  br i1 %i.ri, label %._crit_edge653, label %.preheader558

.preheader558:                                    ; preds = %.preheader558.prol.loopexit, %.preheader558
  %indvars.iv785 = phi i64 [ %indvars.iv.next786.1, %.preheader558 ], [ %indvars.iv785.unr, %.preheader558.prol.loopexit ] ; 4 uses
  %i.rj = mul nsw i64 %indvars.iv785, %i.qh       ; 2 uses
  %i.rk = add nsw i64 %indvars.iv785, %i.qi
  %i.rl = shl nsw i64 %i.rk, 1                    ; 2 uses
  %i.rm = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.rj
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !24
  %i.ro = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.rl
  store double %i.rn, ptr %i.ro, align 8, !tbaa !24
  %i.rp = getelementptr [8 x i8], ptr %.0435, i64 %i.rj
  %i.rq = getelementptr i8, ptr %i.rp, i64 8
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !24
  %i.rs = getelementptr [8 x i8], ptr %.0414, i64 %i.rl
  %i.rt = getelementptr i8, ptr %i.rs, i64 8
  store double %i.rr, ptr %i.rt, align 8, !tbaa !24
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %i.ru = mul nsw i64 %indvars.iv.next786, %i.qh  ; 2 uses
  %i.rv = add nsw i64 %indvars.iv.next786, %i.qi
  %i.rw = shl nsw i64 %i.rv, 1                    ; 2 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.ru
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !24
  %i.rz = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.rw
  store double %i.ry, ptr %i.rz, align 8, !tbaa !24
  %i.sa = getelementptr [8 x i8], ptr %.0435, i64 %i.ru
  %i.sb = getelementptr i8, ptr %i.sa, i64 8
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !24
  %i.sd = getelementptr [8 x i8], ptr %.0414, i64 %i.rw
  %i.se = getelementptr i8, ptr %i.sd, i64 8
  store double %i.sc, ptr %i.se, align 8, !tbaa !24
  %indvars.iv.next786.1 = add nuw nsw i64 %indvars.iv785, 2 ; 2 uses
  %exitcond789.not.1 = icmp eq i64 %indvars.iv.next786.1, %wide.trip.count788
  br i1 %exitcond789.not.1, label %._crit_edge653, label %.preheader558, !llvm.loop !102

._crit_edge653:                                   ; preds = %.preheader558.prol.loopexit, %.preheader558, %middle.block1181, %.preheader559
  br i1 %0, label %.preheader556, label %.loopexit557

.preheader556:                                    ; preds = %._crit_edge653
  %i.sf = sub nsw i32 %.2443, %.0415              ; 3 uses
  %i.sg = icmp sgt i32 %i.sf, 0
  br i1 %i.sg, label %.preheader555.preheader, label %.loopexit557

.preheader555.preheader:                          ; preds = %.preheader556
  %i.sh = sext i32 %.1437 to i64                  ; 5 uses
  %i.si = sext i32 %2 to i64                      ; 3 uses
  %i.sj = sext i32 %.0415 to i64                  ; 6 uses
  %wide.trip.count798 = zext nneg i32 %i.sf to i64 ; 7 uses
  %min.iters.check1195 = icmp ugt i32 %i.sf, 13
  %ident.check1185.not = icmp eq i32 %2, 1
  %or.cond1322 = and i1 %min.iters.check1195, %ident.check1185.not
  br i1 %or.cond1322, label %vector.memcheck1196, label %.preheader555.preheader1371

vector.memcheck1196:                              ; preds = %.preheader555.preheader
  %i.sk = shl nsw i64 %i.sj, 4
  %i.sl = getelementptr i8, ptr %.0414, i64 %i.sk
  %i.sm = add nsw i64 %i.sj, %wide.trip.count798
  %i.sn = shl nsw i64 %i.sm, 4
  %i.so = getelementptr i8, ptr %.0414, i64 %i.sn
  %i.sp = shl nsw i64 %i.sh, 3                    ; 2 uses
  %i.sq = shl nuw nsw i64 %wide.trip.count798, 3
  %i.sr = add nsw i64 %i.sp, 8
  %i.ss = sub nsw i64 %i.sr, %i.sq
  %i.st = getelementptr i8, ptr %.0435, i64 %i.ss
  %i.su = getelementptr i8, ptr %.0435, i64 %i.sp
  %i.sv = getelementptr i8, ptr %i.su, i64 16
  %bound01197 = icmp ult ptr %i.sl, %i.sv
  %bound11198 = icmp ult ptr %i.st, %i.so
  %found.conflict1199 = and i1 %bound01197, %bound11198
  br i1 %found.conflict1199, label %.preheader555.preheader1371, label %vector.ph1200

vector.ph1200:                                    ; preds = %vector.memcheck1196
  %n.vec1201 = and i64 %wide.trip.count798, 2147483646 ; 3 uses
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1208, %vector.body1202 ] ; 3 uses
  %i.sw = sub nsw i64 %i.sh, %index1203
  %i.sx = add nsw i64 %index1203, %i.sj
  %i.sy = getelementptr [8 x i8], ptr %.0435, i64 %i.sw ; 2 uses
  %i.sz = getelementptr inbounds i8, ptr %i.sy, i64 -8
  %wide.load1204 = load <2 x double>, ptr %i.sz, align 8, !tbaa !24, !alias.scope !157
  %.idx1318 = shl nsw i64 %i.sx, 4
  %i.ta = getelementptr inbounds i8, ptr %.0414, i64 %.idx1318
  %wide.load1205 = load <2 x double>, ptr %i.sy, align 8, !tbaa !24, !alias.scope !157
  %interleaved.vec1207 = shufflevector <2 x double> %wide.load1204, <2 x double> %wide.load1205, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  store <4 x double> %interleaved.vec1207, ptr %i.ta, align 8, !tbaa !24, !alias.scope !158, !noalias !157
  %index.next1208 = add nuw i64 %index1203, 2     ; 2 uses
  %i.tb = icmp eq i64 %index.next1208, %n.vec1201
  br i1 %i.tb, label %middle.block1209, label %vector.body1202, !llvm.loop !106

middle.block1209:                                 ; preds = %vector.body1202
  %cmp.n1210 = icmp eq i64 %n.vec1201, %wide.trip.count798
  br i1 %cmp.n1210, label %.loopexit557, label %.preheader555.preheader1371

.preheader555.preheader1371:                      ; preds = %vector.memcheck1196, %.preheader555.preheader, %middle.block1209
  %indvars.iv795.ph = phi i64 [ 0, %vector.memcheck1196 ], [ 0, %.preheader555.preheader ], [ %n.vec1201, %middle.block1209 ] ; 5 uses
  %xtraiter1393 = and i64 %wide.trip.count798, 1
  %lcmp.mod1394.not = icmp eq i64 %xtraiter1393, 0
  br i1 %lcmp.mod1394.not, label %.preheader555.prol.loopexit, label %.preheader555.prol

.preheader555.prol:                               ; preds = %.preheader555.preheader1371
  %i.tc = sub nsw i64 %i.sh, %indvars.iv795.ph
  %i.td = mul nsw i64 %i.tc, %i.si                ; 2 uses
  %i.te = add nsw i64 %indvars.iv795.ph, %i.sj
  %i.tf = shl nsw i64 %i.te, 1                    ; 2 uses
  %i.tg = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.td
  %i.th = load double, ptr %i.tg, align 8, !tbaa !24
  %i.ti = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.tf
  store double %i.th, ptr %i.ti, align 8, !tbaa !24
  %i.tj = getelementptr [8 x i8], ptr %.0435, i64 %i.td
  %i.tk = getelementptr i8, ptr %i.tj, i64 8
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !24
  %i.tm = getelementptr [8 x i8], ptr %.0414, i64 %i.tf
  %i.tn = getelementptr i8, ptr %i.tm, i64 8
  store double %i.tl, ptr %i.tn, align 8, !tbaa !24
  %indvars.iv.next796.prol = or disjoint i64 %indvars.iv795.ph, 1
  br label %.preheader555.prol.loopexit

.preheader555.prol.loopexit:                      ; preds = %.preheader555.prol, %.preheader555.preheader1371
  %indvars.iv795.unr = phi i64 [ %indvars.iv795.ph, %.preheader555.preheader1371 ], [ %indvars.iv.next796.prol, %.preheader555.prol ]
  %i.to = add nsw i64 %wide.trip.count798, -1
  %i.tp = icmp eq i64 %indvars.iv795.ph, %i.to
  br i1 %i.tp, label %.loopexit557, label %.preheader555

.preheader555:                                    ; preds = %.preheader555.prol.loopexit, %.preheader555
  %indvars.iv795 = phi i64 [ %indvars.iv.next796.1, %.preheader555 ], [ %indvars.iv795.unr, %.preheader555.prol.loopexit ] ; 4 uses
  %i.tq = sub nsw i64 %i.sh, %indvars.iv795
  %i.tr = mul nsw i64 %i.tq, %i.si                ; 2 uses
  %i.ts = add nsw i64 %indvars.iv795, %i.sj
  %i.tt = shl nsw i64 %i.ts, 1                    ; 2 uses
  %i.tu = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.tr
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !24
  %i.tw = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.tt
  store double %i.tv, ptr %i.tw, align 8, !tbaa !24
  %i.tx = getelementptr [8 x i8], ptr %.0435, i64 %i.tr
  %i.ty = getelementptr i8, ptr %i.tx, i64 8
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !24
  %i.ua = getelementptr [8 x i8], ptr %.0414, i64 %i.tt
  %i.ub = getelementptr i8, ptr %i.ua, i64 8
  store double %i.tz, ptr %i.ub, align 8, !tbaa !24
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %i.uc = sub nsw i64 %i.sh, %indvars.iv.next796
  %i.ud = mul nsw i64 %i.uc, %i.si                ; 2 uses
  %i.ue = add nsw i64 %indvars.iv.next796, %i.sj
  %i.uf = shl nsw i64 %i.ue, 1                    ; 2 uses
  %i.ug = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.ud
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !24
  %i.ui = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.uf
  store double %i.uh, ptr %i.ui, align 8, !tbaa !24
  %i.uj = getelementptr [8 x i8], ptr %.0435, i64 %i.ud
  %i.uk = getelementptr i8, ptr %i.uj, i64 8
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !24
  %i.um = getelementptr [8 x i8], ptr %.0414, i64 %i.uf
  %i.un = getelementptr i8, ptr %i.um, i64 8
  store double %i.ul, ptr %i.un, align 8, !tbaa !24
  %indvars.iv.next796.1 = add nuw nsw i64 %indvars.iv795, 2 ; 2 uses
  %exitcond799.not.1 = icmp eq i64 %indvars.iv.next796.1, %wide.trip.count798
  br i1 %exitcond799.not.1, label %.loopexit557, label %.preheader555, !llvm.loop !107

.loopexit557:                                     ; preds = %.preheader555.prol.loopexit, %.preheader555, %middle.block1209, %.preheader556, %._crit_edge653
  %.1416 = phi i32 [ %.0415, %._crit_edge653 ], [ %.2443, %.preheader556 ], [ %.2443, %middle.block1209 ], [ %.2443, %.preheader555 ], [ %.2443, %.preheader555.prol.loopexit ] ; 8 uses
  %.not485 = icmp eq i32 %17, 0
  br i1 %.not485, label %bb.bx, label %bb.bq

bb.bq:                                            ; preds = %.loopexit557
  %i.uo = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not486 = icmp eq i8 %i.uo, 0
  br i1 %.not486, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.up = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.uq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.up, ptr noundef nonnull @.str.46, i32 noundef %17, i32 noundef %.1416) #20 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ur = icmp sgt i32 %.1416, 0
  br i1 %i.ur, label %.lr.ph666, label %.preheader

.lr.ph666:                                        ; preds = %bb.bs
  %i.us = icmp sgt i32 %2, 0
  %i.ut = zext nneg i32 %2 to i64
  %wide.trip.count814 = zext nneg i32 %.1416 to i64
  %wide.trip.count809 = zext i32 %2 to i64        ; 11 uses
  %i.uu = sub i64 %.04141213, %.04311214
  %i.uv = mul nsw i64 %wide.trip.count809, -8
  %min.iters.check1216 = icmp ult i32 %2, 4
  %n.vec1218 = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %cmp.n1225 = icmp eq i64 %n.vec1218, %wide.trip.count809
  %xtraiter1395 = and i64 %wide.trip.count809, 3  ; 2 uses
  %lcmp.mod1396.not = icmp eq i64 %xtraiter1395, 0
  br label %bb.bt

.lr.ph676:                                        ; preds = %.loopexit554
  %i.uw = icmp slt i32 %2, 1
  %i.ux = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count830 = zext nneg i32 %.1416 to i64
  %i.uy = sub i64 %.04141213, %.04311214
  %i.uz = mul nsw i64 %wide.trip.count809, -8
  %min.iters.check1231 = icmp ult i32 %2, 4
  %n.vec1233 = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %cmp.n1240 = icmp eq i64 %n.vec1233, %wide.trip.count809
  %xtraiter1397 = and i64 %wide.trip.count809, 3  ; 2 uses
  %lcmp.mod1398.not = icmp eq i64 %xtraiter1397, 0
  br label %bb.bv

bb.bt:                                            ; preds = %.lr.ph666, %.loopexit554
  %indvars.iv811 = phi i64 [ 0, %.lr.ph666 ], [ %indvars.iv.next812, %.loopexit554 ] ; 4 uses
  %.0411664 = phi i32 [ 0, %.lr.ph666 ], [ %.1, %.loopexit554 ] ; 2 uses
  %.0412663 = phi i32 [ 0, %.lr.ph666 ], [ %.2, %.loopexit554 ] ; 3 uses
  %i.va = mul i64 %i.uv, %indvars.iv811
  %i.vb = add i64 %i.uu, %i.va
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %indvars.iv811
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !22
  %i.ve = icmp eq i32 %i.vd, %17
  br i1 %i.ve, label %bb.bu, label %.loopexit554

bb.bu:                                            ; preds = %bb.bt
  %i.vf = add nsw i32 %.0411664, 1                ; 2 uses
  br i1 %i.us, label %.lr.ph659, label %.loopexit554

.lr.ph659:                                        ; preds = %bb.bu
  %i.vg = mul nuw nsw i64 %indvars.iv811, %i.ut
  %i.vh = sext i32 %.0412663 to i64               ; 5 uses
  %invariant.gep1072 = getelementptr inbounds nuw [8 x i8], ptr %.0431, i64 %i.vg ; 6 uses
  br i1 %min.iters.check1216, label %scalar.ph1215.preheader, label %vector.memcheck1212

vector.memcheck1212:                              ; preds = %.lr.ph659
  %i.vi = shl nsw i64 %i.vh, 3
  %i.vj = add i64 %i.vb, %i.vi
  %i.vk = add i64 %i.vj, -1
  %diff.check = icmp ult i64 %i.vk, 31
  br i1 %diff.check, label %scalar.ph1215.preheader, label %vector.ph1217

vector.ph1217:                                    ; preds = %vector.memcheck1212
  %i.vl = add nsw i64 %n.vec1218, %i.vh           ; 2 uses
  %invariant.gep1453 = getelementptr [8 x i8], ptr %.0414, i64 %i.vh
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1223, %vector.body1219 ] ; 3 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %index1220 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %wide.load1221 = load <2 x double>, ptr %i.vm, align 8, !tbaa !24
  %wide.load1222 = load <2 x double>, ptr %i.vn, align 8, !tbaa !24
  %gep1454 = getelementptr [8 x i8], ptr %invariant.gep1453, i64 %index1220 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %gep1454, i64 16
  store <2 x double> %wide.load1221, ptr %gep1454, align 8, !tbaa !24
  store <2 x double> %wide.load1222, ptr %i.vo, align 8, !tbaa !24
  %index.next1223 = add nuw i64 %index1220, 4     ; 2 uses
  %i.vp = icmp eq i64 %index.next1223, %n.vec1218
  br i1 %i.vp, label %middle.block1224, label %vector.body1219, !llvm.loop !108

middle.block1224:                                 ; preds = %vector.body1219
  br i1 %cmp.n1225, label %.loopexit554.loopexit, label %scalar.ph1215.preheader

scalar.ph1215.preheader:                          ; preds = %vector.memcheck1212, %.lr.ph659, %middle.block1224
  %indvars.iv804.ph = phi i64 [ 0, %vector.memcheck1212 ], [ 0, %.lr.ph659 ], [ %n.vec1218, %middle.block1224 ] ; 3 uses
  %indvars.iv802.ph = phi i64 [ %i.vh, %vector.memcheck1212 ], [ %i.vh, %.lr.ph659 ], [ %i.vl, %middle.block1224 ] ; 2 uses
  br i1 %lcmp.mod1396.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol

scalar.ph1215.prol:                               ; preds = %scalar.ph1215.preheader, %scalar.ph1215.prol
  %indvars.iv804.prol = phi i64 [ %indvars.iv.next805.prol, %scalar.ph1215.prol ], [ %indvars.iv804.ph, %scalar.ph1215.preheader ] ; 2 uses
  %indvars.iv802.prol = phi i64 [ %indvars.iv.next803.prol, %scalar.ph1215.prol ], [ %indvars.iv802.ph, %scalar.ph1215.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1215.prol ], [ 0, %scalar.ph1215.preheader ]
  %gep1073.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804.prol
  %i.vq = load double, ptr %gep1073.prol, align 8, !tbaa !24
  %indvars.iv.next803.prol = add nsw i64 %indvars.iv802.prol, 1 ; 3 uses
  %i.vr = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv802.prol
  store double %i.vq, ptr %i.vr, align 8, !tbaa !24
  %indvars.iv.next805.prol = add nuw nsw i64 %indvars.iv804.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1395
  br i1 %prol.iter.cmp.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol, !llvm.loop !109

scalar.ph1215.prol.loopexit:                      ; preds = %scalar.ph1215.prol, %scalar.ph1215.preheader
  %indvars.iv.next803.lcssa1370.unr = phi i64 [ poison, %scalar.ph1215.preheader ], [ %indvars.iv.next803.prol, %scalar.ph1215.prol ]
  %indvars.iv804.unr = phi i64 [ %indvars.iv804.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next805.prol, %scalar.ph1215.prol ]
  %indvars.iv802.unr = phi i64 [ %indvars.iv802.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next803.prol, %scalar.ph1215.prol ]
  %i.vs = sub nsw i64 %indvars.iv804.ph, %wide.trip.count809
  %i.vt = icmp ugt i64 %i.vs, -4
  br i1 %i.vt, label %.loopexit554.loopexit, label %scalar.ph1215

scalar.ph1215:                                    ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215
  %indvars.iv804 = phi i64 [ %indvars.iv.next805.3, %scalar.ph1215 ], [ %indvars.iv804.unr, %scalar.ph1215.prol.loopexit ] ; 5 uses
  %indvars.iv802 = phi i64 [ %indvars.iv.next803.3, %scalar.ph1215 ], [ %indvars.iv802.unr, %scalar.ph1215.prol.loopexit ] ; 5 uses
  %gep1073 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %i.vu = load double, ptr %gep1073, align 8, !tbaa !24
  %i.vv = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv802
  store double %i.vu, ptr %i.vv, align 8, !tbaa !24
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.1 = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vx = load double, ptr %gep1073.1, align 8, !tbaa !24
  %i.vy = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.vz = getelementptr i8, ptr %i.vy, i64 8
  store double %i.vx, ptr %i.vz, align 8, !tbaa !24
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.2 = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wb = load double, ptr %gep1073.2, align 8, !tbaa !24
  %i.wc = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.wd = getelementptr i8, ptr %i.wc, i64 16
  store double %i.wb, ptr %i.wd, align 8, !tbaa !24
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.3 = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  %i.wf = load double, ptr %gep1073.3, align 8, !tbaa !24
  %indvars.iv.next803.3 = add nsw i64 %indvars.iv802, 4 ; 2 uses
  %i.wg = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.wh = getelementptr i8, ptr %i.wg, i64 24
  store double %i.wf, ptr %i.wh, align 8, !tbaa !24
  %indvars.iv.next805.3 = add nuw nsw i64 %indvars.iv804, 4 ; 2 uses
  %exitcond810.not.3 = icmp eq i64 %indvars.iv.next805.3, %wide.trip.count809
  br i1 %exitcond810.not.3, label %.loopexit554.loopexit, label %scalar.ph1215, !llvm.loop !110

.loopexit554.loopexit:                            ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215, %middle.block1224
  %indvars.iv.next803.lcssa = phi i64 [ %i.vl, %middle.block1224 ], [ %indvars.iv.next803.lcssa1370.unr, %scalar.ph1215.prol.loopexit ], [ %indvars.iv.next803.3, %scalar.ph1215 ]
  %i.wi = trunc nsw i64 %indvars.iv.next803.lcssa to i32
  br label %.loopexit554

.loopexit554:                                     ; preds = %.loopexit554.loopexit, %bb.bu, %bb.bt
  %.2 = phi i32 [ %.0412663, %bb.bt ], [ %.0412663, %bb.bu ], [ %i.wi, %.loopexit554.loopexit ] ; 2 uses
  %.1 = phi i32 [ %.0411664, %bb.bt ], [ %i.vf, %bb.bu ], [ %i.vf, %.loopexit554.loopexit ] ; 7 uses
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count814
  br i1 %exitcond815.not, label %.lr.ph676, label %bb.bt, !llvm.loop !111

.preheader550:                                    ; preds = %.loopexit552
  %i.wj = icmp sgt i32 %.1, 0
  br i1 %i.wj, label %.lr.ph678.preheader, label %.preheader

.lr.ph678.preheader:                              ; preds = %.preheader550
  %wide.trip.count835 = zext nneg i32 %.1 to i64  ; 3 uses
  %min.iters.check1244 = icmp ult i32 %.1, 8
  br i1 %min.iters.check1244, label %.lr.ph678.preheader1368, label %vector.ph1245

vector.ph1245:                                    ; preds = %.lr.ph678.preheader
  %n.vec1246 = and i64 %wide.trip.count835, 2147483640 ; 3 uses
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1247 ] ; 2 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %index1248 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store <4 x i32> splat (i32 1), ptr %i.wk, align 4, !tbaa !22
  store <4 x i32> splat (i32 1), ptr %i.wl, align 4, !tbaa !22
  %index.next1249 = add nuw i64 %index1248, 8     ; 2 uses
  %i.wm = icmp eq i64 %index.next1249, %n.vec1246
  br i1 %i.wm, label %middle.block1250, label %vector.body1247, !llvm.loop !112

middle.block1250:                                 ; preds = %vector.body1247
  %cmp.n1251 = icmp eq i64 %n.vec1246, %wide.trip.count835
  br i1 %cmp.n1251, label %.preheader, label %.lr.ph678.preheader1368

.lr.ph678.preheader1368:                          ; preds = %.lr.ph678.preheader, %middle.block1250
  %indvars.iv832.ph = phi i64 [ 0, %.lr.ph678.preheader ], [ %n.vec1246, %middle.block1250 ]
  br label %.lr.ph678

bb.bv:                                            ; preds = %.lr.ph676, %.loopexit552
  %indvars.iv827 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next828, %.loopexit552 ] ; 4 uses
  %.3675 = phi i32 [ %.2, %.lr.ph676 ], [ %.5, %.loopexit552 ] ; 2 uses
  %i.wn = mul i64 %i.uz, %indvars.iv827
  %i.wo = add i64 %i.uy, %i.wn
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %indvars.iv827
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !22
  %.not491 = icmp eq i32 %i.wq, %17
  %brmerge = or i1 %.not491, %i.uw
  br i1 %brmerge, label %.loopexit552, label %.lr.ph671

.lr.ph671:                                        ; preds = %bb.bv
  %i.wr = mul nuw nsw i64 %indvars.iv827, %i.ux
  %i.ws = sext i32 %.3675 to i64                  ; 5 uses
  %invariant.gep1074 = getelementptr inbounds nuw [8 x i8], ptr %.0431, i64 %i.wr ; 6 uses
  br i1 %min.iters.check1231, label %scalar.ph1230.preheader, label %vector.memcheck1228

vector.memcheck1228:                              ; preds = %.lr.ph671
  %i.wt = shl nsw i64 %i.ws, 3
  %i.wu = add i64 %i.wo, %i.wt
  %i.wv = add i64 %i.wu, -1
  %diff.check1229 = icmp ult i64 %i.wv, 31
  br i1 %diff.check1229, label %scalar.ph1230.preheader, label %vector.ph1232

vector.ph1232:                                    ; preds = %vector.memcheck1228
  %i.ww = add nsw i64 %n.vec1233, %i.ws           ; 2 uses
  %invariant.gep1455 = getelementptr [8 x i8], ptr %.0414, i64 %i.ws
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1238, %vector.body1234 ] ; 3 uses
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %index1235 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %wide.load1236 = load <2 x double>, ptr %i.wx, align 8, !tbaa !24
  %wide.load1237 = load <2 x double>, ptr %i.wy, align 8, !tbaa !24
  %gep1456 = getelementptr [8 x i8], ptr %invariant.gep1455, i64 %index1235 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %gep1456, i64 16
  store <2 x double> %wide.load1236, ptr %gep1456, align 8, !tbaa !24
  store <2 x double> %wide.load1237, ptr %i.wz, align 8, !tbaa !24
  %index.next1238 = add nuw i64 %index1235, 4     ; 2 uses
  %i.xa = icmp eq i64 %index.next1238, %n.vec1233
  br i1 %i.xa, label %middle.block1239, label %vector.body1234, !llvm.loop !113

middle.block1239:                                 ; preds = %vector.body1234
  br i1 %cmp.n1240, label %.loopexit552.loopexit, label %scalar.ph1230.preheader

scalar.ph1230.preheader:                          ; preds = %vector.memcheck1228, %.lr.ph671, %middle.block1239
  %indvars.iv820.ph = phi i64 [ 0, %vector.memcheck1228 ], [ 0, %.lr.ph671 ], [ %n.vec1233, %middle.block1239 ] ; 3 uses
  %indvars.iv818.ph = phi i64 [ %i.ws, %vector.memcheck1228 ], [ %i.ws, %.lr.ph671 ], [ %i.ww, %middle.block1239 ] ; 2 uses
  br i1 %lcmp.mod1398.not, label %scalar.ph1230.prol.loopexit, label %scalar.ph1230.prol

scalar.ph1230.prol:                               ; preds = %scalar.ph1230.preheader, %scalar.ph1230.prol
  %indvars.iv820.prol = phi i64 [ %indvars.iv.next821.prol, %scalar.ph1230.prol ], [ %indvars.iv820.ph, %scalar.ph1230.preheader ] ; 2 uses
  %indvars.iv818.prol = phi i64 [ %indvars.iv.next819.prol, %scalar.ph1230.prol ], [ %indvars.iv818.ph, %scalar.ph1230.preheader ] ; 2 uses
  %prol.iter1399 = phi i64 [ %prol.iter1399.next, %scalar.ph1230.prol ], [ 0, %scalar.ph1230.preheader ]
  %gep1075.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820.prol
  %i.xb = load double, ptr %gep1075.prol, align 8, !tbaa !24
  %indvars.iv.next819.prol = add nsw i64 %indvars.iv818.prol, 1 ; 3 uses
  %i.xc = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv818.prol
  store double %i.xb, ptr %i.xc, align 8, !tbaa !24
  %indvars.iv.next821.prol = add nuw nsw i64 %indvars.iv820.prol, 1 ; 2 uses
  %prol.iter1399.next = add i64 %prol.iter1399, 1 ; 2 uses
  %prol.iter1399.cmp.not = icmp eq i64 %prol.iter1399.next, %xtraiter1397
  br i1 %prol.iter1399.cmp.not, label %scalar.ph1230.prol.loopexit, label %scalar.ph1230.prol, !llvm.loop !114

scalar.ph1230.prol.loopexit:                      ; preds = %scalar.ph1230.prol, %scalar.ph1230.preheader
  %indvars.iv.next819.lcssa1369.unr = phi i64 [ poison, %scalar.ph1230.preheader ], [ %indvars.iv.next819.prol, %scalar.ph1230.prol ]
  %indvars.iv820.unr = phi i64 [ %indvars.iv820.ph, %scalar.ph1230.preheader ], [ %indvars.iv.next821.prol, %scalar.ph1230.prol ]
  %indvars.iv818.unr = phi i64 [ %indvars.iv818.ph, %scalar.ph1230.preheader ], [ %indvars.iv.next819.prol, %scalar.ph1230.prol ]
  %i.xd = sub nsw i64 %indvars.iv820.ph, %wide.trip.count809
  %i.xe = icmp ugt i64 %i.xd, -4
  br i1 %i.xe, label %.loopexit552.loopexit, label %scalar.ph1230

scalar.ph1230:                                    ; preds = %scalar.ph1230.prol.loopexit, %scalar.ph1230
  %indvars.iv820 = phi i64 [ %indvars.iv.next821.3, %scalar.ph1230 ], [ %indvars.iv820.unr, %scalar.ph1230.prol.loopexit ] ; 5 uses
  %indvars.iv818 = phi i64 [ %indvars.iv.next819.3, %scalar.ph1230 ], [ %indvars.iv818.unr, %scalar.ph1230.prol.loopexit ] ; 5 uses
  %gep1075 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %i.xf = load double, ptr %gep1075, align 8, !tbaa !24
  %i.xg = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv818
  store double %i.xf, ptr %i.xg, align 8, !tbaa !24
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.1 = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xi = load double, ptr %gep1075.1, align 8, !tbaa !24
  %i.xj = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.xk = getelementptr i8, ptr %i.xj, i64 8
  store double %i.xi, ptr %i.xk, align 8, !tbaa !24
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.2 = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.xm = load double, ptr %gep1075.2, align 8, !tbaa !24
  %i.xn = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.xo = getelementptr i8, ptr %i.xn, i64 16
  store double %i.xm, ptr %i.xo, align 8, !tbaa !24
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.3 = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xq = load double, ptr %gep1075.3, align 8, !tbaa !24
  %indvars.iv.next819.3 = add nsw i64 %indvars.iv818, 4 ; 2 uses
  %i.xr = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.xs = getelementptr i8, ptr %i.xr, i64 24
  store double %i.xq, ptr %i.xs, align 8, !tbaa !24
  %indvars.iv.next821.3 = add nuw nsw i64 %indvars.iv820, 4 ; 2 uses
  %exitcond826.not.3 = icmp eq i64 %indvars.iv.next821.3, %i.ux
  br i1 %exitcond826.not.3, label %.loopexit552.loopexit, label %scalar.ph1230, !llvm.loop !115

.loopexit552.loopexit:                            ; preds = %scalar.ph1230.prol.loopexit, %scalar.ph1230, %middle.block1239
  %indvars.iv.next819.lcssa = phi i64 [ %i.ww, %middle.block1239 ], [ %indvars.iv.next819.lcssa1369.unr, %scalar.ph1230.prol.loopexit ], [ %indvars.iv.next819.3, %scalar.ph1230 ]
  %i.xt = trunc nsw i64 %indvars.iv.next819.lcssa to i32
  br label %.loopexit552

.loopexit552:                                     ; preds = %.loopexit552.loopexit, %bb.bv
  %.5 = phi i32 [ %.3675, %bb.bv ], [ %i.xt, %.loopexit552.loopexit ]
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 1 ; 2 uses
  %exitcond831.not = icmp eq i64 %indvars.iv.next828, %wide.trip.count830
  br i1 %exitcond831.not, label %.preheader550, label %bb.bv, !llvm.loop !116

.preheader:                                       ; preds = %.lr.ph678, %middle.block1250, %bb.bs, %.preheader550
  %.0411.lcssa10421044 = phi i32 [ 0, %bb.bs ], [ %.1, %.preheader550 ], [ %.1, %middle.block1250 ], [ %.1, %.lr.ph678 ] ; 6 uses
  %i.xu = icmp slt i32 %.0411.lcssa10421044, %.1416
  br i1 %i.xu, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %.preheader
  %i.xv = sext i32 %.0411.lcssa10421044 to i64    ; 4 uses
  %wide.trip.count840 = sext i32 %.1416 to i64    ; 2 uses
  %i.xw = sub nsw i64 %wide.trip.count840, %i.xv  ; 3 uses
  %min.iters.check1254 = icmp ult i64 %i.xw, 8
  br i1 %min.iters.check1254, label %.lr.ph680.preheader1367, label %vector.ph1255

vector.ph1255:                                    ; preds = %.lr.ph680.preheader
  %n.vec1256 = and i64 %i.xw, -8                  ; 3 uses
  %i.xx = add nsw i64 %n.vec1256, %i.xv
  %invariant.gep1457 = getelementptr [4 x i8], ptr %.2434, i64 %i.xv
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %vector.ph1255
  %index1258 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1259, %vector.body1257 ] ; 2 uses
  %gep1458 = getelementptr [4 x i8], ptr %invariant.gep1457, i64 %index1258 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %gep1458, i64 16
  store <4 x i32> splat (i32 2), ptr %gep1458, align 4, !tbaa !22
  store <4 x i32> splat (i32 2), ptr %i.xy, align 4, !tbaa !22
  %index.next1259 = add nuw i64 %index1258, 8     ; 2 uses
  %i.xz = icmp eq i64 %index.next1259, %n.vec1256
  br i1 %i.xz, label %middle.block1260, label %vector.body1257, !llvm.loop !117

middle.block1260:                                 ; preds = %vector.body1257
  %cmp.n1261 = icmp eq i64 %i.xw, %n.vec1256
  br i1 %cmp.n1261, label %._crit_edge681, label %.lr.ph680.preheader1367

.lr.ph680.preheader1367:                          ; preds = %.lr.ph680.preheader, %middle.block1260
  %indvars.iv837.ph = phi i64 [ %i.xv, %.lr.ph680.preheader ], [ %i.xx, %middle.block1260 ]
  br label %.lr.ph680

.lr.ph678:                                        ; preds = %.lr.ph678.preheader1368, %.lr.ph678
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %.lr.ph678 ], [ %indvars.iv832.ph, %.lr.ph678.preheader1368 ] ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %indvars.iv832
  store i32 1, ptr %i.ya, align 4, !tbaa !22
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 1 ; 2 uses
  %exitcond836.not = icmp eq i64 %indvars.iv.next833, %wide.trip.count835
  br i1 %exitcond836.not, label %.preheader, label %.lr.ph678, !llvm.loop !118

.lr.ph680:                                        ; preds = %.lr.ph680.preheader1367, %.lr.ph680
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %.lr.ph680 ], [ %indvars.iv837.ph, %.lr.ph680.preheader1367 ] ; 2 uses
  %i.yb = getelementptr inbounds [4 x i8], ptr %.2434, i64 %indvars.iv837
  store i32 2, ptr %i.yb, align 4, !tbaa !22
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, 1 ; 2 uses
  %exitcond841.not = icmp eq i64 %indvars.iv.next838, %wide.trip.count840
  br i1 %exitcond841.not, label %._crit_edge681, label %.lr.ph680, !llvm.loop !119

._crit_edge681:                                   ; preds = %.lr.ph680, %middle.block1260, %.preheader
  %i.yc = sub nsw i32 %.1416, %.0411.lcssa10421044
  %i.yd = add nsw i32 %i.yc, %i.nt                ; 2 uses
  %i.ye = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not487 = icmp eq i8 %i.ye, 0
  br i1 %.not487, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge681
  %i.yf = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.yg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yf, ptr noundef nonnull @.str.47, i32 noundef %.0411.lcssa10421044) #20 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge681, %bb.bw, %.loopexit557
  %.3423 = phi i32 [ %i.yd, %bb.bw ], [ %i.yd, %._crit_edge681 ], [ %i.nt, %.loopexit557 ]
  %.2417 = phi i32 [ %.0411.lcssa10421044, %bb.bw ], [ %.0411.lcssa10421044, %._crit_edge681 ], [ %.1416, %.loopexit557 ] ; 9 uses
  %i.yh = add nsw i32 %.2417, %.3423              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  %i.yi = call ptr @get_triangles(ptr noundef %.0414, i32 noundef %i.yh, ptr noundef nonnull %i.l) #19 ; 3 uses
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %get_tri.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.yk = load i32, ptr %i.l, align 4, !tbaa !22  ; 3 uses
  %i.yl = sext i32 %i.yk to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.yk, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.bz

.thread.i.i:                                      ; preds = %bb.by
  %i.ym = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #22
  br label %gv_calloc.exit.i

bb.bz:                                            ; preds = %bb.by
  %mul.ov.i.i = icmp slt i32 %i.yk, 0
  br i1 %mul.ov.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.yn = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.yo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yn, ptr noundef nonnull @.str.28, i64 noundef %i.yl, i64 noundef 32) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.yp = call noalias ptr @calloc(i64 noundef %i.yl, i64 noundef 32) #22 ; 2 uses
  %i.yq = icmp eq ptr %i.yp, null
  br i1 %i.yq, label %bb.cc, label %gv_calloc.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.yr = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ys = shl nuw nsw i64 %i.yl, 5
  %i.yt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yr, ptr noundef nonnull @.str.29, i64 noundef %i.ys) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.cb, %.thread.i.i
  %i.yu = phi ptr [ %i.ym, %.thread.i.i ], [ %i.yp, %bb.cb ] ; 5 uses
  %i.yv = call ptr @SparseMatrix_new(i32 noundef %i.yh, i32 noundef %i.yh, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 2 uses
  %i.yw = load i32, ptr %i.l, align 4, !tbaa !22
  %i.yx = icmp sgt i32 %i.yw, 0
  br i1 %i.yx, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %gv_calloc.exit.i, %triangle_center.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %triangle_center.exit.i ], [ 0, %gv_calloc.exit.i ] ; 4 uses
  %.062.i = phi ptr [ %i.aav, %triangle_center.exit.i ], [ %i.yv, %gv_calloc.exit.i ]
  %i.yy = getelementptr inbounds nuw [32 x i8], ptr %i.yu, i64 %indvars.iv.i ; 4 uses
  %.idx = mul nuw nsw i64 %indvars.iv.i, 12
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yi, i64 %.idx ; 3 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !22 ; 6 uses
  store i32 %i.za, ptr %i.yy, align 4, !tbaa !22
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !22 ; 6 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !22
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !22 ; 6 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store i32 %i.zf, ptr %i.zg, align 4, !tbaa !22
  %i.zh = shl nsw i32 %i.za, 1
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.zi
  %i.zk = shl nsw i32 %i.zc, 1
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.zl
  %i.zn = shl nsw i32 %i.zf, 1
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.zr = load <2 x double>, ptr %i.zm, align 8, !tbaa !24 ; 6 uses
  %i.zs = load <2 x double>, ptr %i.zp, align 8, !tbaa !24 ; 3 uses
  %foldExtExtBinop1329 = fsub <2 x double> %i.zr, %i.zs ; 2 uses
  %26 = extractelement <2 x double> %foldExtExtBinop1329, i64 0
  %foldExtExtBinop1331 = fsub <2 x double> %i.zr, %i.zs
  %27 = load <2 x double>, ptr %i.zj, align 8, !tbaa !24 ; 3 uses
  %28 = fadd <2 x double> %i.zr, %27
  %29 = fmul <2 x double> %28, splat (double 5.000000e-01) ; 2 uses
  %i.zt = fcmp oeq double %26, 0.000000e+00
  %i.zu = insertelement <2 x i1> poison, i1 %i.zt, i64 0
  %i.zv = shufflevector <2 x i1> %i.zu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.zw = fneg <2 x double> %foldExtExtBinop1331
  %i.zx = shufflevector <2 x double> %i.zw, <2 x double> %foldExtExtBinop1329, <2 x i32> <i32 1, i32 2>
  %i.zy = select <2 x i1> %i.zv, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.zx ; 3 uses
  %foldExtExtBinop1333 = fsub <2 x double> %27, %i.zr
  %i.zz = extractelement <2 x double> %foldExtExtBinop1333, i64 0 ; 2 uses
  %foldExtExtBinop1335 = fsub <2 x double> %27, %i.zr ; 2 uses
  %foldExtExtBinop1337 = fmul <2 x double> %i.zy, %foldExtExtBinop1335
  %i.aaa = extractelement <2 x double> %foldExtExtBinop1337, i64 1
  %i.aab = extractelement <2 x double> %i.zy, i64 0
  %i.aac = call double @llvm.fmuladd.f64(double %i.aab, double %i.zz, double %i.aaa) ; 2 uses
  %i.aad = fcmp oeq double %i.aac, 0.000000e+00
  br i1 %i.aad, label %triangle_center.exit.i, label %bb.cd

bb.cd:                                            ; preds = %.preheader.i
  %i.aae = fadd <2 x double> %i.zr, %i.zs
  %i.aaf = fmul <2 x double> %i.aae, splat (double 5.000000e-01) ; 2 uses
  %i.aag = fsub <2 x double> %29, %i.aaf          ; 2 uses
  %foldExtExtBinop1339 = fmul <2 x double> %foldExtExtBinop1335, %i.aag
  %i.aah = extractelement <2 x double> %foldExtExtBinop1339, i64 1
  %i.aai = extractelement <2 x double> %i.aag, i64 0
  %i.aaj = call double @llvm.fmuladd.f64(double %i.zz, double %i.aai, double %i.aah)
  %i.aak = fdiv double %i.aaj, %i.aac
  %i.aal = insertelement <2 x double> poison, double %i.aak, i64 0
  %i.aam = shufflevector <2 x double> %i.aal, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aan = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aam, <2 x double> %i.zy, <2 x double> %i.aaf)
  br label %triangle_center.exit.i

triangle_center.exit.i:                           ; preds = %bb.cd, %.preheader.i
  %i.aao = phi <2 x double> [ %i.aan, %bb.cd ], [ %29, %.preheader.i ]
  store <2 x double> %i.aao, ptr %i.zq, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aap = trunc nuw nsw i64 %indvars.iv.i to i32 ; 3 uses
  store i32 %i.aap, ptr %i.k, align 4, !tbaa !22
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.za, i32 %i.zc) ; 2 uses
  %spec.select15.i.i = call i32 @llvm.smin.i32(i32 %i.za, i32 %i.zc) ; 2 uses
  %i.aaq = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %.062.i, i32 noundef %spec.select15.i.i, i32 noundef %spec.select.i.i, ptr noundef nonnull %i.k, i32 noundef 4) #19
  %i.aar = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aaq, i32 noundef %spec.select.i.i, i32 noundef %spec.select15.i.i, ptr noundef nonnull %i.k, i32 noundef 4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.aap, ptr %i.j, align 4, !tbaa !22
  %spec.select.i56.i = call i32 @llvm.smax.i32(i32 %i.zc, i32 %i.zf) ; 2 uses
  %spec.select15.i57.i = call i32 @llvm.smin.i32(i32 %i.zc, i32 %i.zf) ; 2 uses
  %i.aas = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aar, i32 noundef %spec.select15.i57.i, i32 noundef %spec.select.i56.i, ptr noundef nonnull %i.j, i32 noundef 4) #19
  %i.aat = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aas, i32 noundef %spec.select.i56.i, i32 noundef %spec.select15.i57.i, ptr noundef nonnull %i.j, i32 noundef 4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.aap, ptr %i.i, align 4, !tbaa !22
  %spec.select.i58.i = call i32 @llvm.smax.i32(i32 %i.zf, i32 %i.za) ; 2 uses
  %spec.select15.i59.i = call i32 @llvm.smin.i32(i32 %i.zf, i32 %i.za) ; 2 uses
  %i.aau = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aat, i32 noundef %spec.select15.i59.i, i32 noundef %spec.select.i58.i, ptr noundef nonnull %i.i, i32 noundef 4) #19
  %i.aav = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aau, i32 noundef %spec.select.i58.i, i32 noundef %spec.select15.i59.i, ptr noundef nonnull %i.i, i32 noundef 4) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aaw = load i32, ptr %i.l, align 4, !tbaa !22
  %i.aax = sext i32 %i.aaw to i64
  %i.aay = icmp slt i64 %indvars.iv.next.i, %i.aax
  br i1 %i.aay, label %.preheader.i, label %.loopexit, !llvm.loop !120

get_tri.exit:                                     ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  br label %bb.fe

.loopexit:                                        ; preds = %triangle_center.exit.i, %gv_calloc.exit.i
  %.0.lcssa.i = phi ptr [ %i.yv, %gv_calloc.exit.i ], [ %i.aav, %triangle_center.exit.i ] ; 2 uses
  %i.aaz = call ptr @SparseMatrix_from_coordinate_format_not_compacted(ptr noundef %.0.lcssa.i) #19
  call void @SparseMatrix_delete(ptr noundef %.0.lcssa.i) #19
  %i.aba = call ptr @SparseMatrix_sort(ptr noundef %i.aaz) #19 ; 8 uses
  %i.abb = load i32, ptr %i.l, align 4, !tbaa !22 ; 16 uses
  call void @free(ptr noundef nonnull %i.yi) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  store i32 %i.abb, ptr %10, align 4, !tbaa !22
  %i.abc = sext i32 %i.yh to i64                  ; 6 uses
  %.not.i.i524 = icmp eq i32 %i.yh, 0             ; 2 uses
  br i1 %.not.i.i524, label %.thread.i.i533, label %bb.ce

.thread.i.i533:                                   ; preds = %.loopexit
  %i.abd = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit.i526

bb.ce:                                            ; preds = %.loopexit
  %mul.ov.i.i525 = icmp slt i32 %i.yh, 0
  br i1 %mul.ov.i.i525, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.abe = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.abf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abe, ptr noundef nonnull @.str.28, i64 noundef %i.abc, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.abg = call noalias ptr @calloc(i64 noundef %i.abc, i64 noundef 4) #22 ; 2 uses
  %i.abh = icmp eq ptr %i.abg, null
  br i1 %i.abh, label %bb.ch, label %gv_calloc.exit.i526

bb.ch:                                            ; preds = %bb.cg
  %i.abi = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.abj = shl nuw nsw i64 %i.abc, 2
  %i.abk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abi, ptr noundef nonnull @.str.29, i64 noundef %i.abj) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i526:                              ; preds = %bb.cg, %.thread.i.i533
  %i.abl = phi ptr [ %i.abd, %.thread.i.i533 ], [ %i.abg, %bb.cg ] ; 16 uses
  %i.abm = load i32, ptr %.2434, align 4, !tbaa !22 ; 3 uses
  %i.abn = icmp sgt i32 %.2417, 0                 ; 3 uses
  br i1 %i.abn, label %.lr.ph.preheader.i, label %._crit_edge.i527

.lr.ph.preheader.i:                               ; preds = %gv_calloc.exit.i526
  %i.abo = zext nneg i32 %.2417 to i64            ; 4 uses
  %i.abp = shl nuw nsw i64 %i.abo, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.abl, ptr nonnull readonly align 4 %.2434, i64 %i.abp, i1 false), !tbaa !22
  %min.iters.check1264 = icmp ult i32 %.2417, 8
  br i1 %min.iters.check1264, label %.lr.ph.i.preheader, label %vector.ph1265

vector.ph1265:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1266 = and i64 %i.abo, 2147483640         ; 3 uses
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %i.abm, i64 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %vector.ph1265
  %index1270 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1275, %vector.body1269 ] ; 2 uses
  %vec.phi1271 = phi <4 x i32> [ %broadcast.splat1268, %vector.ph1265 ], [ %i.abs, %vector.body1269 ]
  %vec.phi1272 = phi <4 x i32> [ %broadcast.splat1268, %vector.ph1265 ], [ %i.abt, %vector.body1269 ]
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %index1270 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %wide.load1273 = load <4 x i32>, ptr %i.abq, align 4, !tbaa !22
  %wide.load1274 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !22
  %i.abs = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1271, <4 x i32> %wide.load1273) ; 2 uses
  %i.abt = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1272, <4 x i32> %wide.load1274) ; 2 uses
  %index.next1275 = add nuw i64 %index1270, 8     ; 2 uses
  %i.abu = icmp eq i64 %index.next1275, %n.vec1266
  br i1 %i.abu, label %middle.block1276, label %vector.body1269, !llvm.loop !121

middle.block1276:                                 ; preds = %vector.body1269
  %rdx.minmax1277 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abs, <4 x i32> %i.abt)
  %i.abv = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax1277) ; 2 uses
  %cmp.n1278 = icmp eq i64 %n.vec1266, %i.abo
  br i1 %cmp.n1278, label %._crit_edge.i527, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block1276
  %indvars.iv.i531.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec1266, %middle.block1276 ]
  %.0105167.i.ph = phi i32 [ %i.abm, %.lr.ph.preheader.i ], [ %i.abv, %middle.block1276 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i531 = phi i64 [ %indvars.iv.next.i532, %.lr.ph.i ], [ %indvars.iv.i531.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0105167.i = phi i32 [ %.0105..i, %.lr.ph.i ], [ %.0105167.i.ph, %.lr.ph.i.preheader ]
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %indvars.iv.i531
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !22
  %.0105..i = call i32 @llvm.smax.i32(i32 %.0105167.i, i32 %i.abx) ; 2 uses
  %indvars.iv.next.i532 = add nuw nsw i64 %indvars.iv.i531, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i532, %i.abo
  br i1 %exitcond.not.i, label %._crit_edge.i527, label %.lr.ph.i, !llvm.loop !122

._crit_edge.i527:                                 ; preds = %.lr.ph.i, %middle.block1276, %gv_calloc.exit.i526
  %.0105.lcssa.i = phi i32 [ %i.abm, %gv_calloc.exit.i526 ], [ %i.abv, %middle.block1276 ], [ %.0105..i, %.lr.ph.i ] ; 2 uses
  %i.aby = add nsw i32 %.0105.lcssa.i, 1          ; 5 uses
  %i.abz = add nsw i32 %.0105.lcssa.i, 2          ; 7 uses
  %i.aca = add nsw i32 %i.yh, -4                  ; 3 uses
  %i.acb = icmp slt i32 %.2417, %i.aca
  br i1 %i.acb, label %.lr.ph171.preheader.i, label %._crit_edge..preheader152_crit_edge.i

._crit_edge..preheader152_crit_edge.i:            ; preds = %._crit_edge.i527
  %.pre214.i = sext i32 %i.aca to i64
  br label %.preheader152.i

.lr.ph171.preheader.i:                            ; preds = %._crit_edge.i527
  %i.acc = sext i32 %.2417 to i64                 ; 4 uses
  %wide.trip.count195.i = sext i32 %i.aca to i64  ; 4 uses
  %i.acd = sub nsw i64 %wide.trip.count195.i, %i.acc ; 3 uses
  %min.iters.check1282 = icmp ult i64 %i.acd, 8
  br i1 %min.iters.check1282, label %.lr.ph171.i.preheader, label %vector.ph1283

vector.ph1283:                                    ; preds = %.lr.ph171.preheader.i
  %n.vec1284 = and i64 %i.acd, -8                 ; 3 uses
  %i.ace = add nsw i64 %n.vec1284, %i.acc
  %broadcast.splatinsert1285 = insertelement <4 x i32> poison, i32 %i.aby, i64 0
  %broadcast.splat1286 = shufflevector <4 x i32> %broadcast.splatinsert1285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep1459 = getelementptr [4 x i8], ptr %i.abl, i64 %i.acc
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1283
  %index1288 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1289, %vector.body1287 ] ; 2 uses
  %gep1460 = getelementptr [4 x i8], ptr %invariant.gep1459, i64 %index1288 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %gep1460, i64 16
  store <4 x i32> %broadcast.splat1286, ptr %gep1460, align 4, !tbaa !22
  store <4 x i32> %broadcast.splat1286, ptr %i.acf, align 4, !tbaa !22
  %index.next1289 = add nuw i64 %index1288, 8     ; 2 uses
  %i.acg = icmp eq i64 %index.next1289, %n.vec1284
  br i1 %i.acg, label %middle.block1290, label %vector.body1287, !llvm.loop !123

middle.block1290:                                 ; preds = %vector.body1287
  %cmp.n1291 = icmp eq i64 %i.acd, %n.vec1284
  br i1 %cmp.n1291, label %.preheader152.i, label %.lr.ph171.i.preheader

.lr.ph171.i.preheader:                            ; preds = %.lr.ph171.preheader.i, %middle.block1290
  %indvars.iv192.i.ph = phi i64 [ %i.acc, %.lr.ph171.preheader.i ], [ %i.ace, %middle.block1290 ]
  br label %.lr.ph171.i

.preheader152.i:                                  ; preds = %.lr.ph171.i, %middle.block1290, %._crit_edge..preheader152_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre214.i, %._crit_edge..preheader152_crit_edge.i ], [ %wide.trip.count195.i, %middle.block1290 ], [ %wide.trip.count195.i, %.lr.ph171.i ] ; 2 uses
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.abl, i64 %.pre-phi.i ; 3 uses
  store i32 %i.abz, ptr %i.ach, align 4, !tbaa !22
  %indvars.iv.next198.i = add nsw i64 %.pre-phi.i, 1 ; 2 uses
  %i.aci = icmp slt i64 %indvars.iv.next198.i, %i.abc
  br i1 %i.aci, label %bb.ci, label %bb.cj

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.preheader, %.lr.ph171.i
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i, %.lr.ph171.i ], [ %indvars.iv192.i.ph, %.lr.ph171.i.preheader ] ; 2 uses
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.abl, i64 %indvars.iv192.i
  store i32 %i.aby, ptr %i.acj, align 4, !tbaa !22
  %indvars.iv.next193.i = add nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next193.i, %wide.trip.count195.i
  br i1 %exitcond196.not.i, label %.preheader152.i, label %.lr.ph171.i, !llvm.loop !124

bb.ci:                                            ; preds = %.preheader152.i
  %i.ack = getelementptr inbounds [4 x i8], ptr %i.abl, i64 %indvars.iv.next198.i
  store i32 %i.abz, ptr %i.ack, align 4, !tbaa !22
  %i.acl = getelementptr i8, ptr %i.ach, i64 8
  store i32 %i.abz, ptr %i.acl, align 4, !tbaa !22
  %i.acm = getelementptr i8, ptr %i.ach, i64 12
  store i32 %i.abz, ptr %i.acm, align 4, !tbaa !22
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.preheader152.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 1, ptr %i.e, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
end_hunk_2
begin_hunk_3_@make_map_internal:.preheader573
  %i.bbp = phi i32 [ %storemerge411516.i.i, %.preheader451.i.i ], [ %.pre550.i.i, %._crit_edge512.loopexit.i.i ]
  %.5.lcssa.i.i = phi i32 [ %.1388.lcssa.i.i, %.preheader451.i.i ], [ %i.bba, %._crit_edge512.loopexit.i.i ]
  %.lcssa453.i.i = phi i32 [ %i.atk, %.preheader451.i.i ], [ %i.bbk, %._crit_edge512.loopexit.i.i ]
  %.lcssa.i.i = phi i64 [ %i.atm, %.preheader451.i.i ], [ %i.bbm, %._crit_edge512.loopexit.i.i ]
  %i.bbq = sext i32 %.5.lcssa.i.i to i64
  %i.bbr = getelementptr inbounds [4 x i8], ptr %i.arl, i64 %i.bbq
  store i32 -1, ptr %i.bbr, align 4, !tbaa !22
  %i.bbs = sext i32 %.lcssa453.i.i to i64
  %i.bbt = getelementptr inbounds [4 x i8], ptr %i.anv, i64 %i.bbs
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !22
  %i.bbv = getelementptr inbounds [4 x i8], ptr %i.anv, i64 %.lcssa.i.i
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !22
  %i.bbx = load ptr, ptr %13, align 8, !tbaa !160
  %i.bby = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bbx, i32 noundef %i.bbp, i32 noundef %i.bbu, ptr noundef nonnull %i.c, i32 noundef 4) #19 ; 0 uses
  %i.bbz = load ptr, ptr %13, align 8, !tbaa !160
  %i.bca = load i32, ptr %i.c, align 4, !tbaa !22
  %i.bcb = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bbz, i32 noundef %i.bca, i32 noundef %i.bbw, ptr noundef nonnull %i.c, i32 noundef 4) #19 ; 0 uses
  %i.bcc = load i32, ptr %i.c, align 4, !tbaa !22
  %i.bcd = add nsw i32 %i.bcc, 1                  ; 3 uses
  store i32 %i.bcd, ptr %i.c, align 4, !tbaa !22
  %i.bce = icmp slt i32 %i.bcd, %.3.in.lcssa.i
  br i1 %i.bce, label %.lr.ph521.i.i, label %._crit_edge522.loopexit.i.i, !llvm.loop !147

._crit_edge522.loopexit.i.i:                      ; preds = %._crit_edge512.i.i
  %.pre551.i.i = load ptr, ptr %13, align 8, !tbaa !160
  br label %get_polygon_solids.exit.i

get_polygon_solids.exit.i:                        ; preds = %._crit_edge522.loopexit.i.i, %._crit_edge471.i.i
  %i.bcf = phi ptr [ %.pre551.i.i, %._crit_edge522.loopexit.i.i ], [ %i.atc, %._crit_edge471.i.i ]
  %i.bcg = call ptr @SparseMatrix_from_coordinate_format_not_compacted(ptr noundef %i.bcf) #19
  %i.bch = load ptr, ptr %13, align 8, !tbaa !160
  call void @SparseMatrix_delete(ptr noundef %i.bch) #19
  store ptr %i.bcg, ptr %13, align 8, !tbaa !160
  call void @SparseMatrix_delete(ptr noundef %i.aqs) #19
  call void @free(ptr noundef %i.aqr) #19
  call void @free(ptr noundef %i.arl) #19
  call void @free(ptr noundef %i.atb) #19
  call void @free(ptr noundef %i.arm) #19
  call void @free(ptr noundef %i.anv) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 1, ptr %i.a, align 4, !tbaa !22
  %i.bci = load i32, ptr %i.abl, align 4, !tbaa !22 ; 5 uses
  br i1 %i.abn, label %.lr.ph.preheader.i.i, label %._crit_edge.i141.i

.lr.ph.preheader.i.i:                             ; preds = %get_polygon_solids.exit.i
  %wide.trip.count.i146.i = zext nneg i32 %.2417 to i64 ; 3 uses
  %min.iters.check1294 = icmp ult i32 %.2417, 8
  br i1 %min.iters.check1294, label %.lr.ph.i147.i.preheader, label %vector.ph1295

vector.ph1295:                                    ; preds = %.lr.ph.preheader.i.i
  %n.vec1296 = and i64 %wide.trip.count.i146.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1297 = insertelement <4 x i32> poison, i32 %i.bci, i64 0
  %broadcast.splat1298 = shufflevector <4 x i32> %broadcast.splatinsert1297, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1295
  %index1300 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1307, %vector.body1299 ] ; 2 uses
  %vec.phi1301 = phi <4 x i32> [ %broadcast.splat1298, %vector.ph1295 ], [ %i.bcl, %vector.body1299 ]
  %vec.phi1302 = phi <4 x i32> [ %broadcast.splat1298, %vector.ph1295 ], [ %i.bcm, %vector.body1299 ]
  %vec.phi1303 = phi <4 x i32> [ %broadcast.splat1298, %vector.ph1295 ], [ %i.bcn, %vector.body1299 ]
  %vec.phi1304 = phi <4 x i32> [ %broadcast.splat1298, %vector.ph1295 ], [ %i.bco, %vector.body1299 ]
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %index1300 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 16
  %wide.load1305 = load <4 x i32>, ptr %i.bcj, align 4, !tbaa !22 ; 2 uses
  %wide.load1306 = load <4 x i32>, ptr %i.bck, align 4, !tbaa !22 ; 2 uses
  %i.bcl = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1305, <4 x i32> %vec.phi1301) ; 2 uses
  %i.bcm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1306, <4 x i32> %vec.phi1302) ; 2 uses
  %i.bcn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load1305, <4 x i32> %vec.phi1303) ; 2 uses
  %i.bco = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load1306, <4 x i32> %vec.phi1304) ; 2 uses
  %index.next1307 = add nuw i64 %index1300, 8     ; 2 uses
  %i.bcp = icmp eq i64 %index.next1307, %n.vec1296
  br i1 %i.bcp, label %middle.block1308, label %vector.body1299, !llvm.loop !148

middle.block1308:                                 ; preds = %vector.body1299
  %rdx.minmax1309 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bcl, <4 x i32> %i.bcm)
  %i.bcq = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax1309) ; 2 uses
  %rdx.minmax1310 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bcn, <4 x i32> %i.bco)
  %i.bcr = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax1310) ; 2 uses
  %cmp.n1311 = icmp eq i64 %n.vec1296, %wide.trip.count.i146.i
  br i1 %cmp.n1311, label %._crit_edge.i141.i, label %.lr.ph.i147.i.preheader

.lr.ph.i147.i.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block1308
  %indvars.iv.i148.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec1296, %middle.block1308 ]
  %.075.i.i.ph = phi i32 [ %i.bci, %.lr.ph.preheader.i.i ], [ %i.bcq, %middle.block1308 ]
  %.05974.i.i.ph = phi i32 [ %i.bci, %.lr.ph.preheader.i.i ], [ %i.bcr, %middle.block1308 ]
  br label %.lr.ph.i147.i

.lr.ph.i147.i:                                    ; preds = %.lr.ph.i147.i.preheader, %.lr.ph.i147.i
  %indvars.iv.i148.i = phi i64 [ %indvars.iv.next.i149.i, %.lr.ph.i147.i ], [ %indvars.iv.i148.i.ph, %.lr.ph.i147.i.preheader ] ; 2 uses
  %.075.i.i = phi i32 [ %..0.i.i, %.lr.ph.i147.i ], [ %.075.i.i.ph, %.lr.ph.i147.i.preheader ]
  %.05974.i.i = phi i32 [ %i.bcu, %.lr.ph.i147.i ], [ %.05974.i.i.ph, %.lr.ph.i147.i.preheader ]
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %indvars.iv.i148.i
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !22 ; 2 uses
  %..0.i.i = call i32 @llvm.smax.i32(i32 %i.bct, i32 %.075.i.i) ; 2 uses
  %i.bcu = call i32 @llvm.smin.i32(i32 %i.bct, i32 %.05974.i.i) ; 2 uses
  %indvars.iv.next.i149.i = add nuw nsw i64 %indvars.iv.i148.i, 1 ; 2 uses
  %exitcond.not.i150.i = icmp eq i64 %indvars.iv.next.i149.i, %wide.trip.count.i146.i
  br i1 %exitcond.not.i150.i, label %._crit_edge.i141.i, label %.lr.ph.i147.i, !llvm.loop !149

._crit_edge.i141.i:                               ; preds = %.lr.ph.i147.i, %middle.block1308, %get_polygon_solids.exit.i
  %.059.lcssa.i.i = phi i32 [ %i.bci, %get_polygon_solids.exit.i ], [ %i.bcr, %middle.block1308 ], [ %i.bcu, %.lr.ph.i147.i ]
  %.0.lcssa.i.i = phi i32 [ %i.bci, %get_polygon_solids.exit.i ], [ %i.bcq, %middle.block1308 ], [ %..0.i.i, %.lr.ph.i147.i ] ; 2 uses
  %i.bcv = icmp slt i32 %.059.lcssa.i.i, 1
  br i1 %i.bcv, label %get_polygons.exit, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge.i141.i
  %i.bcw = call ptr @SparseMatrix_new(i32 noundef %.0.lcssa.i.i, i32 noundef %.0.lcssa.i.i, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 4 uses
  %i.bcx = load ptr, ptr %i.aco, align 8, !tbaa !32 ; 2 uses
  %i.bcy = load ptr, ptr %i.acq, align 8, !tbaa !33
  br i1 %i.abn, label %.lr.ph83.preheader.i.i, label %._crit_edge84.i.i

.lr.ph83.preheader.i.i:                           ; preds = %bb.fa
  %wide.trip.count92.i.i = zext nneg i32 %.2417 to i64
  br label %.lr.ph83.i.i

.loopexit.i142.i:                                 ; preds = %bb.fd, %.lr.ph83.i.i
  %exitcond93.not.i.i = icmp eq i64 %indvars.iv.next90.i.i, %wide.trip.count92.i.i
  br i1 %exitcond93.not.i.i, label %._crit_edge84.i.i, label %.lr.ph83.i.i, !llvm.loop !150

.lr.ph83.i.i:                                     ; preds = %.loopexit.i142.i, %.lr.ph83.preheader.i.i
  %indvars.iv89.i.i = phi i64 [ 0, %.lr.ph83.preheader.i.i ], [ %indvars.iv.next90.i.i, %.loopexit.i142.i ] ; 4 uses
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %indvars.iv89.i.i ; 2 uses
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !22
  %i.bdb = add nsw i32 %i.bda, -1                 ; 2 uses
  %i.bdc = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bcw, i32 noundef %i.bdb, i32 noundef %i.bdb, ptr noundef nonnull %i.a, i32 noundef 4) #19 ; 0 uses
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv89.i.i
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !22 ; 2 uses
  %indvars.iv.next90.i.i = add nuw nsw i64 %indvars.iv89.i.i, 1 ; 3 uses
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv.next90.i.i ; 2 uses
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !22 ; 2 uses
  %i.bdh = icmp slt i32 %i.bde, %i.bdg
  br i1 %i.bdh, label %.lr.ph79.preheader.i.i, label %.loopexit.i142.i

.lr.ph79.preheader.i.i:                           ; preds = %.lr.ph83.i.i
  %i.bdi = sext i32 %i.bde to i64
  br label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %bb.fd, %.lr.ph79.preheader.i.i
  %i.bdj = phi i32 [ %i.bdg, %.lr.ph79.preheader.i.i ], [ %i.bdu, %bb.fd ] ; 2 uses
  %indvars.iv86.i.i = phi i64 [ %i.bdi, %.lr.ph79.preheader.i.i ], [ %indvars.iv.next87.i.i, %bb.fd ] ; 2 uses
  %i.bdk = getelementptr inbounds [4 x i8], ptr %i.bcy, i64 %indvars.iv86.i.i
  %i.bdl = load i32, ptr %i.bdk, align 4, !tbaa !22 ; 2 uses
  %i.bdm = zext i32 %i.bdl to i64
  %.not.i143.i = icmp eq i64 %indvars.iv89.i.i, %i.bdm
  br i1 %.not.i143.i, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph79.i.i
  %i.bdn = load i32, ptr %i.bcz, align 4, !tbaa !22 ; 2 uses
  %i.bdo = sext i32 %i.bdl to i64
  %i.bdp = getelementptr inbounds [4 x i8], ptr %i.abl, i64 %i.bdo
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !22 ; 4 uses
  %.not69.i.i = icmp eq i32 %i.bdn, %i.bdq
  %.not70.i.i = icmp eq i32 %i.bdq, %i.aby
  %or.cond.i144.i = or i1 %.not69.i.i, %.not70.i.i
  %.not71.i.i = icmp eq i32 %i.bdq, %i.abz
  %or.cond72.i.i = or i1 %.not71.i.i, %or.cond.i144.i
  br i1 %or.cond72.i.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bdr = add nsw i32 %i.bdn, -1
  %i.bds = add nsw i32 %i.bdq, -1
  %i.bdt = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bcw, i32 noundef %i.bdr, i32 noundef %i.bds, ptr noundef nonnull %i.a, i32 noundef 4) #19 ; 0 uses
  %.pre.i145.i = load i32, ptr %i.bdf, align 4, !tbaa !22
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %.lr.ph79.i.i
  %i.bdu = phi i32 [ %i.bdj, %.lr.ph79.i.i ], [ %i.bdj, %bb.fb ], [ %.pre.i145.i, %bb.fc ] ; 2 uses
  %indvars.iv.next87.i.i = add nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %i.bdv = sext i32 %i.bdu to i64
  %i.bdw = icmp slt i64 %indvars.iv.next87.i.i, %i.bdv
  br i1 %i.bdw, label %.lr.ph79.i.i, label %.loopexit.i142.i, !llvm.loop !151

._crit_edge84.i.i:                                ; preds = %.loopexit.i142.i, %bb.fa
  %i.bdx = call ptr @SparseMatrix_from_coordinate_format(ptr noundef %i.bcw) #19
  call void @SparseMatrix_delete(ptr noundef %i.bcw) #19
  br label %get_polygons.exit

get_polygons.exit:                                ; preds = %._crit_edge.i141.i, %._crit_edge84.i.i
  %.062.i.i = phi ptr [ %i.bdx, %._crit_edge84.i.i ], [ null, %._crit_edge.i141.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %.062.i.i, ptr %16, align 8, !tbaa !160
  call void @free(ptr noundef %i.abl) #19
  call void @SparseMatrix_delete(ptr noundef nonnull %i.aba) #19
  call void @free(ptr noundef %i.yu) #19
  br label %bb.fe

bb.fe:                                            ; preds = %get_tri.exit, %get_polygons.exit
  %.0 = phi i32 [ 0, %get_polygons.exit ], [ -1, %get_tri.exit ]
  call void @free(ptr noundef %.0414) #19
  call void @free(ptr noundef %.0435) #19
  %.not489 = icmp eq ptr %.2434, %4
  br i1 %.not489, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @free(ptr noundef %.2434) #19
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  call void @QuadTree_delete(ptr noundef %.0444) #19
  %.not490 = icmp eq ptr %.0431, %3
  br i1 %.not490, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @free(ptr noundef %.0431) #19
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @add_point(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, double %.0.val, double %.8.val, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22     ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !22     ; 3 uses
  %.not = icmp slt i32 %i.a, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre1 = load ptr, ptr %4, align 8, !tbaa !30
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, 20                     ; 3 uses
  store i32 %i.c, ptr %3, align 4, !tbaa !22
  %i.d = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.e = shl nsw i32 %i.c, 1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %mul.ov.i = icmp slt i32 %i.a, -20
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.28, i64 noundef %i.f, i64 noundef 8) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = shl nsw i32 %i.b, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3                      ; 3 uses
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 4 uses
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.d) #19
  br label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.l) #23 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.29, i64 noundef %i.l) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %i.l, %i.k
  br i1 %i.r, label %bb.i, label %gv_recalloc.exit

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.t = sub nuw nsw i64 %i.l, %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.t, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.e, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.e ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  store ptr %.0.i.i, ptr %2, align 8, !tbaa !12
  %i.u = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !22     ; 3 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %mul.ov.i24 = icmp slt i32 %i.v, 0
  br i1 %mul.ov.i24, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gv_recalloc.exit
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.28, i64 noundef %i.w, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.k:                                             ; preds = %gv_recalloc.exit
  %i.z = sext i32 %i.b to i64
  %i.aa = shl nsw i64 %i.z, 2                     ; 3 uses
  %i.ab = shl nuw nsw i64 %i.w, 2                 ; 4 uses
  %i.ac = icmp eq i32 %i.v, 0
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.u) #19
  br label %gv_recalloc.exit26

bb.m:                                             ; preds = %bb.k
  %i.ad = tail call ptr @realloc(ptr noundef %i.u, i64 noundef %i.ab) #23 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.29, i64 noundef %i.ab) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ah = icmp ugt i64 %i.ab, %i.aa
  br i1 %i.ah, label %bb.p, label %gv_recalloc.exit26

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.aj = sub nuw nsw i64 %i.ab, %i.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.aj, i1 false)
  br label %gv_recalloc.exit26

gv_recalloc.exit26:                               ; preds = %bb.l, %bb.o, %bb.p
  %.0.i.i25 = phi ptr [ null, %bb.l ], [ %i.ad, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  store ptr %.0.i.i25, ptr %4, align 8, !tbaa !30
  %.pre = load i32, ptr %0, align 4, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %gv_recalloc.exit26
  %i.ak = phi ptr [ %.0.i.i25, %gv_recalloc.exit26 ], [ %.pre1, %._crit_edge ]
  %i.al = phi i32 [ %.pre, %gv_recalloc.exit26 ], [ %i.a, %._crit_edge ] ; 2 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !12
  %i.an = shl nsw i32 %i.al, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  store double %.0.val, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store double %.8.val, ptr %i.aq, align 8, !tbaa !24
  %i.ar = sext i32 %i.al to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ar
  store i32 %1, ptr %i.as, align 4, !tbaa !22
  %i.at = load i32, ptr %0, align 4, !tbaa !22
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %0, align 4, !tbaa !22
  ret void
}

declare double @drand() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #9 {
bb.a:
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @flockfile(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

declare void @rgb2hex(float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dot_polygon(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly byval(%struct.doubles_t) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.doubles_t) align 8 captures(none) %2, double noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load i64, ptr %i.a, align 8, !tbaa !46 ; 5 uses
  %i.b = icmp eq i64 %.val24, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #24 ; 2 uses
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.c, ptr noundef nonnull %5, i64 noundef %i.c, ptr noundef nonnull %5, i64 noundef %.val24)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = fcmp ogt double %3, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.33, double noundef %3) #19
  %i.f = sext i32 %i.e to i64
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #24
  %i.h = add nsw i64 %i.f, 14
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef %i.g, ptr noundef nonnull %5, i64 noundef %i.h, double noundef %3, i64 noundef %.val24)
end_hunk_3
