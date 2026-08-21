Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/do_fit?download=true
inline.NumInlined: 93
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.f = add i32 %0, -4
  %or.cond = icmp ult i32 %i.f, -2
  %.sink321.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink321.sroa.gep406 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br i1 %or.cond, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(60) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef %0) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.g

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = shl nuw nsw i32 %0, 1                    ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 9 uses
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 131, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 25 uses
  %i.k = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 132, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 15 uses
  br label %.lr.ph

.lr.ph178.preheader:                              ; preds = %.lr.ph
  %i.l = shl nuw nsw i64 %i.i, 3                  ; 12 uses
  store double 0.000000e+00, ptr %i.b, align 16, !tbaa !14
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.l, i1 false), !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.l, i1 false), !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double 0.000000e+00, ptr %i.t, align 16, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.l, i1 false), !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.l, i1 false), !tbaa !14
  %exitcond231.not.3 = icmp eq i32 %0, 2
  br i1 %exitcond231.not.3, label %._crit_edge, label %.lr.ph178.4

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ae = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 135, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 136, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %.lr.ph178.preheader, label %.lr.ph, !llvm.loop !19

.lr.ph178.4:                                      ; preds = %.lr.ph178.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double 0.000000e+00, ptr %i.ah, align 16, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.l, i1 false), !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.l, i1 false), !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph178.4, %.lr.ph178.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph187.split.us.preheader, label %.preheader171.preheader

.lr.ph187.split.us.preheader:                     ; preds = %._crit_edge
  %wide.trip.count245 = zext nneg i32 %1 to i64
  %wide.trip.count240 = zext nneg i32 %0 to i64   ; 2 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count240, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.as = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 9 uses
  %xtraiter = and i64 %wide.trip.count240, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod379 = trunc i32 %0 to i1
  br label %.lr.ph187.split.us

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv242 = phi i64 [ 0, %.lr.ph187.split.us.preheader ], [ %indvars.iv.next243, %..loopexit_crit_edge.us ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv242
  %i.au = load float, ptr %i.at, align 4, !tbaa !9 ; 2 uses
  %i.av = fpext float %i.au to double             ; 3 uses
  %i.aw = fcmp une float %i.au, 0.000000e+00
  br i1 %i.aw, label %.preheader173.us, label %..loopexit_crit_edge.us

.lr.ph181.us:                                     ; preds = %.lr.ph181.us, %.preheader173.us
  %indvars.iv237 = phi i64 [ 0, %.preheader173.us ], [ %indvars.iv.next238.1, %.lr.ph181.us ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader173.us ], [ %niter.next.1, %.lr.ph181.us ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv237
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !9
  %i.az = fpext float %i.ay to double
  %broadcast.splatinsert323 = insertelement <4 x double> poison, double %i.az, i64 0
  %broadcast.splat324 = shufflevector <4 x double> %broadcast.splatinsert323, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv237 ; 2 uses
  %wide.masked.load327 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.ba, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.bb = fpext <4 x float> %wide.masked.load327 to <4 x double>
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %broadcast.splat324, <4 x double> %i.bb)
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bd, ptr align 8 %i.ba, <4 x i1> %i.as), !tbaa !9
  %indvars.iv.next238 = or disjoint i64 %indvars.iv237, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next238
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9
  %i.bg = fpext float %i.bf to double
  %broadcast.splatinsert323.1 = insertelement <4 x double> poison, double %i.bg, i64 0
  %broadcast.splat324.1 = shufflevector <4 x double> %broadcast.splatinsert323.1, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next238 ; 2 uses
  %wide.masked.load327.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bh, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.bi = fpext <4 x float> %wide.masked.load327.1 to <4 x double>
  %i.bj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bz, <4 x double> %broadcast.splat324.1, <4 x double> %i.bi)
  %i.bk = fptrunc <4 x double> %i.bj to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bk, ptr align 4 %i.bh, <4 x i1> %i.as), !tbaa !9
  %indvars.iv.next238.1 = add nuw nsw i64 %indvars.iv237, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph181.us, !llvm.loop !20

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %.lr.ph181.us
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us, label %.lr.ph181.us.epil.preheader

.lr.ph181.us.epil.preheader:                      ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %broadcast.splatinsert325.epil = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat326.epil = shufflevector <4 x double> %broadcast.splatinsert325.epil, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next238.1
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !9
  %i.bn = fpext float %i.bm to double
  %broadcast.splatinsert323.epil = insertelement <4 x double> poison, double %i.bn, i64 0
  %broadcast.splat324.epil = shufflevector <4 x double> %broadcast.splatinsert323.epil, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next238.1 ; 2 uses
  %wide.masked.load.epil = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.bp = fpext <4 x float> %wide.masked.load.epil to <4 x double>
  %i.bq = fmul <4 x double> %broadcast.splat326.epil, %i.bp
  %wide.masked.load327.epil = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bo, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.br = fpext <4 x float> %wide.masked.load327.epil to <4 x double>
  %i.bs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bq, <4 x double> %broadcast.splat324.epil, <4 x double> %i.br)
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bt, ptr align 4 %i.bo, <4 x i1> %i.as), !tbaa !9
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.lr.ph181.us.epil.preheader, %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.lr.ph187.split.us
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count245
  br i1 %exitcond246.not, label %.preheader171.preheader, label %.lr.ph187.split.us, !llvm.loop !21

.preheader173.us:                                 ; preds = %.lr.ph187.split.us
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv242 ; 3 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv242 ; 3 uses
  %broadcast.splatinsert325.1 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat326.1 = shufflevector <4 x double> %broadcast.splatinsert325.1, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert325 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat326 = shufflevector <4 x double> %broadcast.splatinsert325, <4 x double> poison, <4 x i32> zeroinitializer
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.bw = fpext <4 x float> %wide.masked.load to <4 x double>
  %i.bx = fmul <4 x double> %broadcast.splat326, %i.bw
  %wide.masked.load.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.by = fpext <4 x float> %wide.masked.load.1 to <4 x double>
  %i.bz = fmul <4 x double> %broadcast.splat326.1, %i.by
  br label %.lr.ph181.us

.preheader171.preheader:                          ; preds = %..loopexit_crit_edge.us, %._crit_edge
  %i.ca = zext nneg i32 %0 to i64                 ; 8 uses
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.preheader, %.split.us
  %indvars.iv261 = phi i64 [ 0, %.preheader171.preheader ], [ %indvars.iv.next262, %.split.us ] ; 20 uses
  %indvars.iv259 = phi i64 [ 1, %.preheader171.preheader ], [ %indvars.iv.next260, %.split.us ] ; 5 uses
  %.not150.not = icmp samesign ult i64 %indvars.iv261, %i.ca
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv261 ; 3 uses
  %7 = sub nsw i64 %indvars.iv261, %i.ca
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %7 ; 5 uses
  br i1 %.not150.not, label %.preheader171.split.us, label %.preheader171.split.preheader

.preheader171.split.preheader:                    ; preds = %.preheader171
  %xtraiter380 = and i64 %indvars.iv259, 3        ; 3 uses
  %i.cd = icmp samesign ult i64 %indvars.iv261, 3
  br i1 %i.cd, label %.preheader171.split.epil.preheader, label %.preheader171.split.preheader.new

.preheader171.split.preheader.new:                ; preds = %.preheader171.split.preheader
  %unroll_iter383 = and i64 %indvars.iv259, 9223372036854775804
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !16 ; 4 uses
  br label %.preheader171.split

.preheader171.split.us:                           ; preds = %.preheader171
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !16 ; 9 uses
  %xtraiter385 = and i64 %indvars.iv259, 7        ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv261, 7
  br i1 %i.cg, label %.epil.preheader, label %.preheader171.split.us.new

.preheader171.split.us.new:                       ; preds = %.preheader171.split.us
  %unroll_iter389 = and i64 %indvars.iv259, 9223372036854775800
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader171.split.us.new
  %indvars.iv254 = phi i64 [ 0, %.preheader171.split.us.new ], [ %indvars.iv.next255.7, %bb.e ] ; 10 uses
  %niter390 = phi i64 [ 0, %.preheader171.split.us.new ], [ %niter390.next.7, %bb.e ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv254
  store double 0.000000e+00, ptr %i.ch, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv254
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !14
  %indvars.iv.next255 = or disjoint i64 %indvars.iv254, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next255
  store double 0.000000e+00, ptr %i.cl, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !14
  %indvars.iv.next255.1 = or disjoint i64 %indvars.iv254, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next255.1
  store double 0.000000e+00, ptr %i.cp, align 8, !tbaa !14
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.1
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !16
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.cs, align 8, !tbaa !14
  %indvars.iv.next255.2 = or disjoint i64 %indvars.iv254, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next255.2
  store double 0.000000e+00, ptr %i.ct, align 8, !tbaa !14
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.2
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.cw, align 8, !tbaa !14
  %indvars.iv.next255.3 = or disjoint i64 %indvars.iv254, 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next255.3
  store double 0.000000e+00, ptr %i.cx, align 8, !tbaa !14
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.3
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !16
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.da, align 8, !tbaa !14
  %indvars.iv.next255.4 = or disjoint i64 %indvars.iv254, 5 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next255.4
  store double 0.000000e+00, ptr %i.db, align 8, !tbaa !14
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.4
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !16
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.de, align 8, !tbaa !14
  %indvars.iv.next255.5 = or disjoint i64 %indvars.iv254, 6 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next255.5
  store double 0.000000e+00, ptr %i.df, align 8, !tbaa !14
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.5
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !16
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.di, align 8, !tbaa !14
  %indvars.iv.next255.6 = or disjoint i64 %indvars.iv254, 7 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next255.6
  store double 0.000000e+00, ptr %i.dj, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.6
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !16
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !14
  %indvars.iv.next255.7 = add nuw nsw i64 %indvars.iv254, 8 ; 2 uses
  %niter390.next.7 = add i64 %niter390, 8         ; 2 uses
  %niter390.ncmp.7 = icmp eq i64 %niter390.next.7, %unroll_iter389
  br i1 %niter390.ncmp.7, label %.split.us.loopexit.unr-lcssa, label %bb.e, !llvm.loop !22

.preheader171.split:                              ; preds = %bb.j, %.preheader171.split.preheader.new
  %indvars.iv247 = phi i64 [ 0, %.preheader171.split.preheader.new ], [ %indvars.iv.next248.3, %bb.j ] ; 8 uses
  %niter384 = phi i64 [ 0, %.preheader171.split.preheader.new ], [ %niter384.next.3, %bb.j ]
  %i.dn = icmp samesign ult i64 %indvars.iv247, %i.ca
  br i1 %i.dn, label %bb.f, label %.preheader171.split.1

bb.f:                                             ; preds = %.preheader171.split
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv247
  %i.dp = load float, ptr %i.do, align 4, !tbaa !9
  %i.dq = fpext float %i.dp to double
  br label %.preheader171.split.1

.preheader171.split.1:                            ; preds = %.preheader171.split, %bb.f
  %.sink316 = phi double [ %i.dq, %bb.f ], [ 0.000000e+00, %.preheader171.split ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv247
  store double %.sink316, ptr %i.dr, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv247
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !16
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv261
  store double %.sink316, ptr %i.du, align 8, !tbaa !14
  %indvars.iv.next248 = or disjoint i64 %indvars.iv247, 1 ; 4 uses
  %i.dv = icmp samesign ult i64 %indvars.iv.next248, %i.ca
  br i1 %i.dv, label %bb.g, label %.preheader171.split.2

bb.g:                                             ; preds = %.preheader171.split.1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next248
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !9
  %i.dy = fpext float %i.dx to double
  br label %.preheader171.split.2

.preheader171.split.2:                            ; preds = %bb.g, %.preheader171.split.1
  %.sink316.1 = phi double [ %i.dy, %bb.g ], [ 0.000000e+00, %.preheader171.split.1 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next248
  store double %.sink316.1, ptr %i.dz, align 8, !tbaa !14
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next248
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !16
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv261
  store double %.sink316.1, ptr %i.ec, align 8, !tbaa !14
  %indvars.iv.next248.1 = or disjoint i64 %indvars.iv247, 2 ; 4 uses
  %i.ed = icmp samesign ult i64 %indvars.iv.next248.1, %i.ca
  br i1 %i.ed, label %bb.h, label %.preheader171.split.3

bb.h:                                             ; preds = %.preheader171.split.2
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next248.1
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !9
  %i.eg = fpext float %i.ef to double
  br label %.preheader171.split.3

.preheader171.split.3:                            ; preds = %bb.h, %.preheader171.split.2
  %.sink316.2 = phi double [ %i.eg, %bb.h ], [ 0.000000e+00, %.preheader171.split.2 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next248.1
  store double %.sink316.2, ptr %i.eh, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next248.1
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv261
  store double %.sink316.2, ptr %i.ek, align 8, !tbaa !14
  %indvars.iv.next248.2 = or disjoint i64 %indvars.iv247, 3 ; 4 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next248.2, %i.ca
  br i1 %i.el, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader171.split.3
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next248.2
  %i.en = load float, ptr %i.em, align 4, !tbaa !9
  %i.eo = fpext float %i.en to double
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader171.split.3
  %.sink316.3 = phi double [ %i.eo, %bb.i ], [ 0.000000e+00, %.preheader171.split.3 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next248.2
  store double %.sink316.3, ptr %i.ep, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next248.2
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !16
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv261
  store double %.sink316.3, ptr %i.es, align 8, !tbaa !14
  %indvars.iv.next248.3 = add nuw nsw i64 %indvars.iv247, 4 ; 2 uses
  %niter384.next.3 = add i64 %niter384, 4         ; 2 uses
  %niter384.ncmp.3 = icmp eq i64 %niter384.next.3, %unroll_iter383
  br i1 %niter384.ncmp.3, label %.split.us.loopexit378.unr-lcssa, label %.preheader171.split, !llvm.loop !22

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod387.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod387.not, label %.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.us.loopexit.unr-lcssa, %.preheader171.split.us
  %indvars.iv254.epil.init = phi i64 [ 0, %.preheader171.split.us ], [ %indvars.iv.next255.7, %.split.us.loopexit.unr-lcssa ]
  %lcmp.mod388 = icmp ne i64 %xtraiter385, 0
  tail call void @llvm.assume(i1 %lcmp.mod388)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv254.epil = phi i64 [ %indvars.iv.next255.epil, %bb.k ], [ %indvars.iv254.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter386 = phi i64 [ %epil.iter386.next, %bb.k ], [ 0, %.epil.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv254.epil
  store double 0.000000e+00, ptr %i.et, align 8, !tbaa !14
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv254.epil
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.ew, align 8, !tbaa !14
  %indvars.iv.next255.epil = add nuw nsw i64 %indvars.iv254.epil, 1
  %epil.iter386.next = add i64 %epil.iter386, 1   ; 2 uses
  %epil.iter386.cmp.not = icmp eq i64 %epil.iter386.next, %xtraiter385
  br i1 %epil.iter386.cmp.not, label %.split.us, label %bb.k, !llvm.loop !23

.split.us.loopexit378.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %.split.us, label %.preheader171.split.epil.preheader

.preheader171.split.epil.preheader:               ; preds = %.split.us.loopexit378.unr-lcssa, %.preheader171.split.preheader
  %indvars.iv247.epil.init = phi i64 [ 0, %.preheader171.split.preheader ], [ %indvars.iv.next248.3, %.split.us.loopexit378.unr-lcssa ]
  %lcmp.mod382 = icmp ne i64 %xtraiter380, 0
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %i.ex = load ptr, ptr %i.cb, align 8, !tbaa !16
  br label %.preheader171.split.epil

.preheader171.split.epil:                         ; preds = %bb.m, %.preheader171.split.epil.preheader
  %indvars.iv247.epil = phi i64 [ %indvars.iv.next248.epil, %bb.m ], [ %indvars.iv247.epil.init, %.preheader171.split.epil.preheader ] ; 5 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.m ], [ 0, %.preheader171.split.epil.preheader ]
  %i.ey = icmp samesign ult i64 %indvars.iv247.epil, %i.ca
  br i1 %i.ey, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader171.split.epil
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv247.epil
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !9
  %i.fb = fpext float %i.fa to double
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader171.split.epil
  %.sink316.epil = phi double [ %i.fb, %bb.l ], [ 0.000000e+00, %.preheader171.split.epil ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv247.epil
  store double %.sink316.epil, ptr %i.fc, align 8, !tbaa !14
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv247.epil
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !16
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv261
  store double %.sink316.epil, ptr %i.ff, align 8, !tbaa !14
  %indvars.iv.next248.epil = add nuw nsw i64 %indvars.iv247.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter380
  br i1 %epil.iter.cmp.not, label %.split.us, label %.preheader171.split.epil, !llvm.loop !25

.split.us:                                        ; preds = %.split.us.loopexit378.unr-lcssa, %bb.m, %.split.us.loopexit.unr-lcssa, %bb.k
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  %exitcond268.not = icmp eq i64 %indvars.iv.next262, %i.i
  br i1 %exitcond268.not, label %._crit_edge190, label %.preheader171, !llvm.loop !26

._crit_edge190:                                   ; preds = %.split.us
  call void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.j, i32 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a)
  %i.fg = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %i.fh = icmp ne ptr %i.fg, null
  %i.fi = load i32, ptr %i.a, align 4
  %i.fj = icmp eq i32 %i.fi, 0
  %or.cond3 = select i1 %i.fh, i1 %i.fj, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge190
  %i.fk = call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr nonnull %i.fg) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge190
  %i.fl = icmp sgt i32 %0, 1
  br i1 %i.fl, label %.preheader170.lr.ph, label %._crit_edge202

.preheader170.lr.ph:                              ; preds = %bb.o
  %i.fm = add nsw i32 %0, -1
  %i.fn = zext nneg i32 %0 to i64
  %wide.trip.count282 = zext nneg i32 %i.fm to i64
  %invariant.gep311 = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fn ; 4 uses
  %xtraiter391 = and i64 %i.i, 2                  ; 2 uses
  %lcmp.mod393.not = icmp eq i64 %xtraiter391, 0
  %lcmp.mod395 = icmp ne i64 %xtraiter391, 0
  %min.iters.check = icmp ult i32 %0, 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %gep312.1 = getelementptr inbounds nuw i8, ptr %invariant.gep311, i64 8
  %exitcond278.not.1 = icmp eq i32 %0, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %gep312.2 = getelementptr inbounds nuw i8, ptr %invariant.gep311, i64 16
  br label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %._crit_edge199, %.preheader170.lr.ph
  %indvars.iv279 = phi i64 [ 0, %.preheader170.lr.ph ], [ %indvars.iv.next280, %._crit_edge199 ] ; 3 uses
  %.0132201 = phi i32 [ 0, %.preheader170.lr.ph ], [ %.2134.lcssa, %._crit_edge199 ]
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194, %.lr.ph194.preheader
  %indvars.iv269 = phi i64 [ 0, %.lr.ph194.preheader ], [ %indvars.iv.next270.3, %.lr.ph194 ] ; 6 uses
  %.0130193 = phi float [ -1.000000e+03, %.lr.ph194.preheader ], [ %.1131.3, %.lr.ph194 ] ; 2 uses
  %.1133192 = phi i32 [ %.0132201, %.lr.ph194.preheader ], [ %.2134.3, %.lr.ph194 ]
  %niter397 = phi i64 [ 0, %.lr.ph194.preheader ], [ %niter397.next.3, %.lr.ph194 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv269
  %i.fr = load double, ptr %i.fq, align 16, !tbaa !14 ; 2 uses
  %i.fs = fpext float %.0130193 to double
  %i.ft = fcmp ogt double %i.fr, %i.fs            ; 2 uses
  %i.fu = fptrunc double %i.fr to float
  %i.fv = trunc nuw nsw i64 %indvars.iv269 to i32
  %.2134 = select i1 %i.ft, i32 %i.fv, i32 %.1133192
  %.1131 = select i1 %i.ft, float %i.fu, float %.0130193 ; 2 uses
  %indvars.iv.next270 = or disjoint i64 %indvars.iv269, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next270
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !14 ; 2 uses
  %i.fy = fpext float %.1131 to double
  %i.fz = fcmp ogt double %i.fx, %i.fy            ; 2 uses
  %i.ga = fptrunc double %i.fx to float
  %i.gb = trunc nuw nsw i64 %indvars.iv.next270 to i32
  %.2134.1 = select i1 %i.fz, i32 %i.gb, i32 %.2134
  %.1131.1 = select i1 %i.fz, float %i.ga, float %.1131 ; 2 uses
  %indvars.iv.next270.1 = or disjoint i64 %indvars.iv269, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next270.1
  %i.gd = load double, ptr %i.gc, align 16, !tbaa !14 ; 2 uses
  %i.ge = fpext float %.1131.1 to double
  %i.gf = fcmp ogt double %i.gd, %i.ge            ; 2 uses
  %i.gg = fptrunc double %i.gd to float
  %i.gh = trunc nuw nsw i64 %indvars.iv.next270.1 to i32
  %.2134.2 = select i1 %i.gf, i32 %i.gh, i32 %.2134.1
  %.1131.2 = select i1 %i.gf, float %i.gg, float %.1131.1 ; 2 uses
  %indvars.iv.next270.2 = or disjoint i64 %indvars.iv269, 3 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next270.2
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !14 ; 2 uses
  %i.gk = fpext float %.1131.2 to double
  %i.gl = fcmp ogt double %i.gj, %i.gk            ; 2 uses
  %i.gm = fptrunc double %i.gj to float
  %i.gn = trunc nuw nsw i64 %indvars.iv.next270.2 to i32
  %.2134.3 = select i1 %i.gl, i32 %i.gn, i32 %.2134.2 ; 3 uses
  %.1131.3 = select i1 %i.gl, float %i.gm, float %.1131.2 ; 2 uses
  %indvars.iv.next270.3 = add nuw nsw i64 %indvars.iv269, 4 ; 2 uses
  %niter397.next.3 = add i64 %niter397, 4
  %niter397.ncmp.3 = icmp eq i64 %niter397, 0
  br i1 %niter397.ncmp.3, label %.lr.ph198.unr-lcssa, label %.lr.ph194, !llvm.loop !29

.lr.ph198.unr-lcssa:                              ; preds = %.lr.ph194
  br i1 %lcmp.mod393.not, label %.lr.ph198, label %.lr.ph194.epil.preheader

.lr.ph194.epil.preheader:                         ; preds = %.lr.ph198.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod395)
  br label %.lr.ph194.epil

.lr.ph194.epil:                                   ; preds = %.lr.ph194.epil, %.lr.ph194.epil.preheader
  %indvars.iv269.epil = phi i64 [ %indvars.iv.next270.3, %.lr.ph194.epil.preheader ], [ %indvars.iv.next270.epil, %.lr.ph194.epil ] ; 3 uses
  %.0130193.epil = phi float [ %.1131.3, %.lr.ph194.epil.preheader ], [ %.1131.epil, %.lr.ph194.epil ] ; 2 uses
  %.1133192.epil = phi i32 [ %.2134.3, %.lr.ph194.epil.preheader ], [ %.2134.epil, %.lr.ph194.epil ]
  %epil.iter392 = phi i64 [ 0, %.lr.ph194.epil.preheader ], [ %epil.iter392.next, %.lr.ph194.epil ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv269.epil
  %i.gp = load double, ptr %i.go, align 8, !tbaa !14 ; 2 uses
  %i.gq = fpext float %.0130193.epil to double
  %i.gr = fcmp ogt double %i.gp, %i.gq            ; 2 uses
  %i.gs = fptrunc double %i.gp to float
  %i.gt = trunc nuw nsw i64 %indvars.iv269.epil to i32
  %.2134.epil = select i1 %i.gr, i32 %i.gt, i32 %.1133192.epil ; 2 uses
  %.1131.epil = select i1 %i.gr, float %i.gs, float %.0130193.epil
  %indvars.iv.next270.epil = add nuw nsw i64 %indvars.iv269.epil, 1
  %epil.iter392.next = add i64 %epil.iter392, 1   ; 2 uses
  %epil.iter392.cmp.not = icmp eq i64 %epil.iter392.next, 2
  br i1 %epil.iter392.cmp.not, label %.lr.ph198, label %.lr.ph194.epil, !llvm.loop !30

.lr.ph198:                                        ; preds = %.lr.ph194.epil, %.lr.ph198.unr-lcssa
  %.2134.lcssa = phi i32 [ %.2134.3, %.lr.ph198.unr-lcssa ], [ %.2134.epil, %.lr.ph194.epil ] ; 2 uses
  %i.gu = zext nneg i32 %.2134.lcssa to i64       ; 9 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gu
  store double -1.000000e+04, ptr %i.gv, align 8, !tbaa !14
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv279 ; 4 uses
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv279 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.body330

vector.body330:                                   ; preds = %.lr.ph198, %vector.body330
  %index331 = phi i64 [ %index.next335, %vector.body330 ], [ 0, %.lr.ph198 ] ; 5 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index331
  %wide.load = load <4 x ptr>, ptr %i.gy, align 8, !tbaa !16
  %wide.gep = getelementptr inbounds nuw [8 x i8], <4 x ptr> %wide.load, i64 %i.gu
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !14
  %i.gz = fmul <4 x double> %wide.masked.gather, splat (double f0x3FF6A09E667F3BCD)
  %i.ha = fptrunc <4 x double> %i.gz to <4 x float>
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index331
  store <4 x float> %i.ha, ptr %i.hb, align 4, !tbaa !9
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep311, i64 %index331
  %wide.load332 = load <4 x ptr>, ptr %i.hc, align 8, !tbaa !16
  %wide.gep333 = getelementptr inbounds nuw [8 x i8], <4 x ptr> %wide.load332, i64 %i.gu
  %wide.masked.gather334 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep333, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !14
  %i.hd = fmul <4 x double> %wide.masked.gather334, splat (double f0x3FF6A09E667F3BCD)
  %i.he = fptrunc <4 x double> %i.hd to <4 x float>
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %index331
  store <4 x float> %i.he, ptr %i.hf, align 4, !tbaa !9
  %index.next335 = add nuw i64 %index331, 4
  br label %vector.body330, !llvm.loop !31

scalar.ph:                                        ; preds = %.lr.ph198
  %i.hg = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.gu
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !14
  %i.hj = fmul double %i.hi, f0x3FF6A09E667F3BCD
  %i.hk = fptrunc double %i.hj to float
  store float %i.hk, ptr %i.gw, align 4, !tbaa !9
  %i.hl = load ptr, ptr %invariant.gep311, align 8, !tbaa !16
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.gu
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !14
  %i.ho = fmul double %i.hn, f0x3FF6A09E667F3BCD
  %i.hp = fptrunc double %i.ho to float
  store float %i.hp, ptr %i.gx, align 4, !tbaa !9
  %i.hq = load ptr, ptr %i.fo, align 8, !tbaa !16
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.gu
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !14
  %i.ht = fmul double %i.hs, f0x3FF6A09E667F3BCD
  %i.hu = fptrunc double %i.ht to float
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store float %i.hu, ptr %i.hv, align 4, !tbaa !9
  %i.hw = load ptr, ptr %gep312.1, align 8, !tbaa !16
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.gu
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !14
  %i.hz = fmul double %i.hy, f0x3FF6A09E667F3BCD
  %i.ia = fptrunc double %i.hz to float
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store float %i.ia, ptr %i.ib, align 4, !tbaa !9
  br i1 %exitcond278.not.1, label %._crit_edge199, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph
  %i.ic = load ptr, ptr %i.fp, align 8, !tbaa !16
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.gu
  %i.ie = load double, ptr %i.id, align 8, !tbaa !14
  %i.if = fmul double %i.ie, f0x3FF6A09E667F3BCD
  %i.ig = fptrunc double %i.if to float
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store float %i.ig, ptr %i.ih, align 4, !tbaa !9
  %i.ii = load ptr, ptr %gep312.2, align 8, !tbaa !16
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.gu
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !14
  %i.il = fmul double %i.ik, f0x3FF6A09E667F3BCD
  %i.im = fptrunc double %i.il to float
  %i.in = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store float %i.im, ptr %i.in, align 4, !tbaa !9
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %scalar.ph.2, %scalar.ph
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %._crit_edge202, label %.lr.ph194.preheader, !llvm.loop !34

._crit_edge202:                                   ; preds = %._crit_edge199, %bb.o
  switch i32 %0, label %bb.r [
    i32 3, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %._crit_edge202
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 12
end_hunk_0
