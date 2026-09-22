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
  %.sink322.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink322.sroa.gep407 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
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

.lr.ph179.preheader:                              ; preds = %.lr.ph
  %i.l = shl nuw nsw i64 %i.i, 3                  ; 12 uses
  store double 0.000000e+00, ptr %i.b, align 16, !tbaa !47
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.l, i1 false), !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.l, i1 false), !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double 0.000000e+00, ptr %i.t, align 16, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.l, i1 false), !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.l, i1 false), !tbaa !47
  %exitcond232.not.3 = icmp eq i32 %0, 2
  br i1 %exitcond232.not.3, label %._crit_edge, label %.lr.ph179.4

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ae = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 135, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 136, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %.lr.ph179.preheader, label %.lr.ph, !llvm.loop !29

.lr.ph179.4:                                      ; preds = %.lr.ph179.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double 0.000000e+00, ptr %i.ah, align 16, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.l, i1 false), !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.l, i1 false), !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph179.4, %.lr.ph179.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph188.split.us.preheader, label %.preheader172.preheader

.lr.ph188.split.us.preheader:                     ; preds = %._crit_edge
  %wide.trip.count246 = zext nneg i32 %1 to i64
  %wide.trip.count241 = zext nneg i32 %0 to i64   ; 2 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count241, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.as = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 9 uses
  %xtraiter = and i64 %wide.trip.count241, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod380 = trunc i32 %0 to i1
  br label %.lr.ph188.split.us

.lr.ph188.split.us:                               ; preds = %.lr.ph188.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv243 = phi i64 [ 0, %.lr.ph188.split.us.preheader ], [ %indvars.iv.next244, %..loopexit_crit_edge.us ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv243
  %i.au = load float, ptr %i.at, align 4, !tbaa !11 ; 2 uses
  %i.av = fpext float %i.au to double             ; 3 uses
  %i.aw = fcmp une float %i.au, 0.000000e+00
  br i1 %i.aw, label %.preheader174.us, label %..loopexit_crit_edge.us

.lr.ph182.us:                                     ; preds = %.lr.ph182.us, %.preheader174.us
  %indvars.iv238 = phi i64 [ 0, %.preheader174.us ], [ %indvars.iv.next239.1, %.lr.ph182.us ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader174.us ], [ %niter.next.1, %.lr.ph182.us ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv238
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11
  %i.az = fpext float %i.ay to double
  %broadcast.splatinsert324 = insertelement <4 x double> poison, double %i.az, i64 0
  %broadcast.splat325 = shufflevector <4 x double> %broadcast.splatinsert324, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv238 ; 2 uses
  %wide.masked.load328 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.ba, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.bb = fpext <4 x float> %wide.masked.load328 to <4 x double>
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %broadcast.splat325, <4 x double> %i.bb)
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bd, ptr align 8 %i.ba, <4 x i1> %i.as), !tbaa !11
  %indvars.iv.next239 = or disjoint i64 %indvars.iv238, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next239
  %i.bf = load float, ptr %i.be, align 4, !tbaa !11
  %i.bg = fpext float %i.bf to double
  %broadcast.splatinsert324.1 = insertelement <4 x double> poison, double %i.bg, i64 0
  %broadcast.splat325.1 = shufflevector <4 x double> %broadcast.splatinsert324.1, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next239 ; 2 uses
  %wide.masked.load328.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bh, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.bi = fpext <4 x float> %wide.masked.load328.1 to <4 x double>
  %i.bj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bz, <4 x double> %broadcast.splat325.1, <4 x double> %i.bi)
  %i.bk = fptrunc <4 x double> %i.bj to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bk, ptr align 4 %i.bh, <4 x i1> %i.as), !tbaa !11
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph182.us, !llvm.loop !30

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %.lr.ph182.us
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us, label %.lr.ph182.us.epil.preheader

.lr.ph182.us.epil.preheader:                      ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod380)
  %broadcast.splatinsert326.epil = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat327.epil = shufflevector <4 x double> %broadcast.splatinsert326.epil, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next239.1
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !11
  %i.bn = fpext float %i.bm to double
  %broadcast.splatinsert324.epil = insertelement <4 x double> poison, double %i.bn, i64 0
  %broadcast.splat325.epil = shufflevector <4 x double> %broadcast.splatinsert324.epil, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next239.1 ; 2 uses
  %wide.masked.load.epil = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.bp = fpext <4 x float> %wide.masked.load.epil to <4 x double>
  %i.bq = fmul <4 x double> %broadcast.splat327.epil, %i.bp
  %wide.masked.load328.epil = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bo, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.br = fpext <4 x float> %wide.masked.load328.epil to <4 x double>
  %i.bs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bq, <4 x double> %broadcast.splat325.epil, <4 x double> %i.br)
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bt, ptr align 4 %i.bo, <4 x i1> %i.as), !tbaa !11
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.lr.ph182.us.epil.preheader, %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.lr.ph188.split.us
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.preheader172.preheader, label %.lr.ph188.split.us, !llvm.loop !31

.preheader174.us:                                 ; preds = %.lr.ph188.split.us
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv243 ; 3 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv243 ; 3 uses
  %broadcast.splatinsert326.1 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat327.1 = shufflevector <4 x double> %broadcast.splatinsert326.1, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert326 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat327 = shufflevector <4 x double> %broadcast.splatinsert326, <4 x double> poison, <4 x i32> zeroinitializer
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.bw = fpext <4 x float> %wide.masked.load to <4 x double>
  %i.bx = fmul <4 x double> %broadcast.splat327, %i.bw
  %wide.masked.load.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.by = fpext <4 x float> %wide.masked.load.1 to <4 x double>
  %i.bz = fmul <4 x double> %broadcast.splat327.1, %i.by
  br label %.lr.ph182.us

.preheader172.preheader:                          ; preds = %..loopexit_crit_edge.us, %._crit_edge
  %i.ca = zext nneg i32 %0 to i64                 ; 6 uses
  %i.cb = zext nneg i32 %0 to i64
  br label %.preheader172

.preheader172:                                    ; preds = %.preheader172.preheader, %.split.us
  %indvars.iv262 = phi i64 [ 0, %.preheader172.preheader ], [ %indvars.iv.next263, %.split.us ] ; 20 uses
  %indvars.iv260 = phi i64 [ 1, %.preheader172.preheader ], [ %indvars.iv.next261, %.split.us ] ; 5 uses
  %7 = trunc nuw i64 %indvars.iv262 to i32
  %.not150.not = icmp sgt i32 %0, %7
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv262 ; 3 uses
  %i.cd = sub nuw nsw i64 %indvars.iv262, %i.cb
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.cd ; 5 uses
  br i1 %.not150.not, label %.preheader172.split.us, label %.preheader172.split.preheader

.preheader172.split.preheader:                    ; preds = %.preheader172
  %xtraiter381 = and i64 %indvars.iv260, 3        ; 3 uses
  %i.cf = icmp samesign ult i64 %indvars.iv262, 3
  br i1 %i.cf, label %.preheader172.split.epil.preheader, label %.preheader172.split.preheader.new

.preheader172.split.preheader.new:                ; preds = %.preheader172.split.preheader
  %unroll_iter384 = and i64 %indvars.iv260, -4
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !49 ; 4 uses
  br label %.preheader172.split

.preheader172.split.us:                           ; preds = %.preheader172
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !49 ; 9 uses
  %xtraiter386 = and i64 %indvars.iv260, 7        ; 3 uses
  %i.ci = icmp samesign ult i64 %indvars.iv262, 7
  br i1 %i.ci, label %.epil.preheader, label %.preheader172.split.us.new

.preheader172.split.us.new:                       ; preds = %.preheader172.split.us
  %unroll_iter390 = and i64 %indvars.iv260, -8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader172.split.us.new
  %indvars.iv255 = phi i64 [ 0, %.preheader172.split.us.new ], [ %indvars.iv.next256.7, %bb.e ] ; 10 uses
  %niter391 = phi i64 [ 0, %.preheader172.split.us.new ], [ %niter391.next.7, %bb.e ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv255
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv255
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.cm, align 8, !tbaa !47
  %indvars.iv.next256 = or disjoint i64 %indvars.iv255, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next256
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !47
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !49
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.cq, align 8, !tbaa !47
  %indvars.iv.next256.1 = or disjoint i64 %indvars.iv255, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next256.1
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.1
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.cu, align 8, !tbaa !47
  %indvars.iv.next256.2 = or disjoint i64 %indvars.iv255, 3 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next256.2
  store double 0.000000e+00, ptr %i.cv, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.2
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !49
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.cy, align 8, !tbaa !47
  %indvars.iv.next256.3 = or disjoint i64 %indvars.iv255, 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next256.3
  store double 0.000000e+00, ptr %i.cz, align 8, !tbaa !47
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.3
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !49
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.dc, align 8, !tbaa !47
  %indvars.iv.next256.4 = or disjoint i64 %indvars.iv255, 5 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next256.4
  store double 0.000000e+00, ptr %i.dd, align 8, !tbaa !47
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.4
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.dg, align 8, !tbaa !47
  %indvars.iv.next256.5 = or disjoint i64 %indvars.iv255, 6 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next256.5
  store double 0.000000e+00, ptr %i.dh, align 8, !tbaa !47
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.5
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.dk, align 8, !tbaa !47
  %indvars.iv.next256.6 = or disjoint i64 %indvars.iv255, 7 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next256.6
  store double 0.000000e+00, ptr %i.dl, align 8, !tbaa !47
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.6
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !49
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.do, align 8, !tbaa !47
  %indvars.iv.next256.7 = add nuw nsw i64 %indvars.iv255, 8 ; 2 uses
  %niter391.next.7 = add i64 %niter391, 8         ; 2 uses
  %niter391.ncmp.7 = icmp eq i64 %niter391.next.7, %unroll_iter390
  br i1 %niter391.ncmp.7, label %.split.us.loopexit.unr-lcssa, label %bb.e, !llvm.loop !32

.preheader172.split:                              ; preds = %bb.j, %.preheader172.split.preheader.new
  %indvars.iv248 = phi i64 [ 0, %.preheader172.split.preheader.new ], [ %indvars.iv.next249.3, %bb.j ] ; 8 uses
  %niter385 = phi i64 [ 0, %.preheader172.split.preheader.new ], [ %niter385.next.3, %bb.j ]
  %i.dp = icmp samesign ult i64 %indvars.iv248, %i.ca
  br i1 %i.dp, label %bb.f, label %.preheader172.split.1

bb.f:                                             ; preds = %.preheader172.split
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv248
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !11
  %i.ds = fpext float %i.dr to double
  br label %.preheader172.split.1

.preheader172.split.1:                            ; preds = %.preheader172.split, %bb.f
  %.sink317 = phi double [ %i.ds, %bb.f ], [ 0.000000e+00, %.preheader172.split ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv248
  store double %.sink317, ptr %i.dt, align 8, !tbaa !47
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv248
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !49
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv262
  store double %.sink317, ptr %i.dw, align 8, !tbaa !47
  %indvars.iv.next249 = or disjoint i64 %indvars.iv248, 1 ; 4 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next249, %i.ca
  br i1 %i.dx, label %bb.g, label %.preheader172.split.2

bb.g:                                             ; preds = %.preheader172.split.1
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next249
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !11
  %i.ea = fpext float %i.dz to double
  br label %.preheader172.split.2

.preheader172.split.2:                            ; preds = %bb.g, %.preheader172.split.1
  %.sink317.1 = phi double [ %i.ea, %bb.g ], [ 0.000000e+00, %.preheader172.split.1 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next249
  store double %.sink317.1, ptr %i.eb, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next249
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv262
  store double %.sink317.1, ptr %i.ee, align 8, !tbaa !47
  %indvars.iv.next249.1 = or disjoint i64 %indvars.iv248, 2 ; 4 uses
  %i.ef = icmp samesign ult i64 %indvars.iv.next249.1, %i.ca
  br i1 %i.ef, label %bb.h, label %.preheader172.split.3

bb.h:                                             ; preds = %.preheader172.split.2
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next249.1
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !11
  %i.ei = fpext float %i.eh to double
  br label %.preheader172.split.3

.preheader172.split.3:                            ; preds = %bb.h, %.preheader172.split.2
  %.sink317.2 = phi double [ %i.ei, %bb.h ], [ 0.000000e+00, %.preheader172.split.2 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next249.1
  store double %.sink317.2, ptr %i.ej, align 8, !tbaa !47
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next249.1
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !49
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv262
  store double %.sink317.2, ptr %i.em, align 8, !tbaa !47
  %indvars.iv.next249.2 = or disjoint i64 %indvars.iv248, 3 ; 4 uses
  %i.en = icmp samesign ult i64 %indvars.iv.next249.2, %i.ca
  br i1 %i.en, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader172.split.3
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next249.2
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !11
  %i.eq = fpext float %i.ep to double
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader172.split.3
  %.sink317.3 = phi double [ %i.eq, %bb.i ], [ 0.000000e+00, %.preheader172.split.3 ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next249.2
  store double %.sink317.3, ptr %i.er, align 8, !tbaa !47
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next249.2
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !49
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv262
  store double %.sink317.3, ptr %i.eu, align 8, !tbaa !47
  %indvars.iv.next249.3 = add nuw nsw i64 %indvars.iv248, 4 ; 2 uses
  %niter385.next.3 = add i64 %niter385, 4         ; 2 uses
  %niter385.ncmp.3 = icmp eq i64 %niter385.next.3, %unroll_iter384
  br i1 %niter385.ncmp.3, label %.split.us.loopexit379.unr-lcssa, label %.preheader172.split, !llvm.loop !32

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod388.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod388.not, label %.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.us.loopexit.unr-lcssa, %.preheader172.split.us
  %indvars.iv255.epil.init = phi i64 [ 0, %.preheader172.split.us ], [ %indvars.iv.next256.7, %.split.us.loopexit.unr-lcssa ]
  %lcmp.mod389 = icmp ne i64 %xtraiter386, 0
  tail call void @llvm.assume(i1 %lcmp.mod389)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv255.epil = phi i64 [ %indvars.iv.next256.epil, %bb.k ], [ %indvars.iv255.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter387 = phi i64 [ %epil.iter387.next, %bb.k ], [ 0, %.epil.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv255.epil
  store double 0.000000e+00, ptr %i.ev, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv255.epil
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !49
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.ey, align 8, !tbaa !47
  %indvars.iv.next256.epil = add nuw nsw i64 %indvars.iv255.epil, 1
  %epil.iter387.next = add i64 %epil.iter387, 1   ; 2 uses
  %epil.iter387.cmp.not = icmp eq i64 %epil.iter387.next, %xtraiter386
  br i1 %epil.iter387.cmp.not, label %.split.us, label %bb.k, !llvm.loop !33

.split.us.loopexit379.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.split.us, label %.preheader172.split.epil.preheader

.preheader172.split.epil.preheader:               ; preds = %.split.us.loopexit379.unr-lcssa, %.preheader172.split.preheader
  %indvars.iv248.epil.init = phi i64 [ 0, %.preheader172.split.preheader ], [ %indvars.iv.next249.3, %.split.us.loopexit379.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter381, 0
  tail call void @llvm.assume(i1 %lcmp.mod383)
  %i.ez = load ptr, ptr %i.cc, align 8, !tbaa !49
end_hunk_0
