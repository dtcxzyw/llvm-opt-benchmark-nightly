Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/smart_ini_x?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@IMDS_given_dim:bb.a
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !58
  %i.fz = fadd double %.02022.i.i, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i39.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !58
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i39.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !58
  %i.gh = fadd double %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i39.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !58
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i39.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load double, ptr %i.gn, align 8, !tbaa !58
  %i.gp = fadd double %i.gl, %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i39.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !58
  %i.gt = fadd double %i.gp, %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i39.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !58
  %i.gx = fadd double %i.gt, %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i39.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !58
  %i.hb = fadd double %i.gx, %i.ha                ; 3 uses
  %indvars.iv.next.i40.i.7 = add nuw nsw i64 %indvars.iv.i39.i, 8 ; 2 uses
  %niter500.next.7 = add i64 %niter500, 8         ; 2 uses
  %niter500.ncmp.7 = icmp eq i64 %niter500.next.7, %unroll_iter499
  br i1 %niter500.ncmp.7, label %.lr.ph26.preheader.i.i.unr-lcssa, label %.lr.ph.i38.i, !llvm.loop !22

.lr.ph26.preheader.i.i.unr-lcssa:                 ; preds = %.lr.ph.i38.i
  %lcmp.mod496.not = icmp eq i64 %xtraiter494, 0
  br i1 %lcmp.mod496.not, label %.lr.ph26.preheader.i.i, label %.lr.ph.i38.i.epil.preheader

.lr.ph.i38.i.epil.preheader:                      ; preds = %.lr.ph26.preheader.i.i.unr-lcssa, %.lr.ph.preheader.i37.i
  %indvars.iv.i39.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i37.i ], [ %indvars.iv.next.i40.i.7, %.lr.ph26.preheader.i.i.unr-lcssa ]
  %.02022.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i37.i ], [ %i.hb, %.lr.ph26.preheader.i.i.unr-lcssa ]
  %lcmp.mod498 = icmp ne i64 %xtraiter494, 0
  tail call void @llvm.assume(i1 %lcmp.mod498)
  br label %.lr.ph.i38.i.epil

.lr.ph.i38.i.epil:                                ; preds = %.lr.ph.i38.i.epil, %.lr.ph.i38.i.epil.preheader
  %indvars.iv.i39.i.epil = phi i64 [ %indvars.iv.i39.i.epil.init, %.lr.ph.i38.i.epil.preheader ], [ %indvars.iv.next.i40.i.epil, %.lr.ph.i38.i.epil ] ; 2 uses
  %.02022.i.i.epil = phi double [ %.02022.i.i.epil.init, %.lr.ph.i38.i.epil.preheader ], [ %i.he, %.lr.ph.i38.i.epil ]
  %epil.iter495 = phi i64 [ 0, %.lr.ph.i38.i.epil.preheader ], [ %epil.iter495.next, %.lr.ph.i38.i.epil ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i39.i.epil
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !58
  %i.he = fadd double %.02022.i.i.epil, %i.hd     ; 2 uses
  %indvars.iv.next.i40.i.epil = add nuw nsw i64 %indvars.iv.i39.i.epil, 1
  %epil.iter495.next = add i64 %epil.iter495, 1   ; 2 uses
  %epil.iter495.cmp.not = icmp eq i64 %epil.iter495.next, %xtraiter494
  br i1 %epil.iter495.cmp.not, label %.lr.ph26.preheader.i.i, label %.lr.ph.i38.i.epil, !llvm.loop !23

.lr.ph26.preheader.i.i:                           ; preds = %.lr.ph.i38.i.epil, %.lr.ph26.preheader.i.i.unr-lcssa
  %.lcssa482 = phi double [ %i.hb, %.lr.ph26.preheader.i.i.unr-lcssa ], [ %i.he, %.lr.ph.i38.i.epil ]
  %i.hf = uitofp nneg i32 %1 to double
  %i.hg = fdiv double %.lcssa482, %i.hf           ; 2 uses
  %min.iters.check433 = icmp ult i32 %1, 4
  br i1 %min.iters.check433, label %.lr.ph26.i.i.preheader, label %vector.ph434

vector.ph434:                                     ; preds = %.lr.ph26.preheader.i.i
  %n.vec435 = and i64 %wide.trip.count313, 2147483644 ; 3 uses
  %broadcast.splatinsert436 = insertelement <2 x double> poison, double %i.hg, i64 0
  %broadcast.splat437 = shufflevector <2 x double> %broadcast.splatinsert436, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body438

vector.body438:                                   ; preds = %vector.body438, %vector.ph434
  %index439 = phi i64 [ 0, %vector.ph434 ], [ %index.next442, %vector.body438 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index439 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load440 = load <2 x double>, ptr %i.hh, align 8, !tbaa !58
  %wide.load441 = load <2 x double>, ptr %i.hi, align 8, !tbaa !58
  %i.hj = fsub <2 x double> %wide.load440, %broadcast.splat437
  %i.hk = fsub <2 x double> %wide.load441, %broadcast.splat437
  store <2 x double> %i.hj, ptr %i.hh, align 8, !tbaa !58
  store <2 x double> %i.hk, ptr %i.hi, align 8, !tbaa !58
  %index.next442 = add nuw i64 %index439, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next442, %n.vec435
  br i1 %i.hl, label %middle.block443, label %vector.body438, !llvm.loop !24

middle.block443:                                  ; preds = %vector.body438
  %cmp.n444 = icmp eq i64 %n.vec435, %wide.trip.count313
  br i1 %cmp.n444, label %._crit_edge27.i.i, label %.lr.ph26.i.i.preheader

.lr.ph26.i.i.preheader:                           ; preds = %.lr.ph26.preheader.i.i, %middle.block443
  %indvars.iv29.i.i.ph = phi i64 [ 0, %.lr.ph26.preheader.i.i ], [ %n.vec435, %middle.block443 ]
  br label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.lr.ph26.i.i.preheader, %.lr.ph26.i.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i, %.lr.ph26.i.i ], [ %indvars.iv29.i.i.ph, %.lr.ph26.i.i.preheader ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv29.i.i ; 2 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !58
  %i.ho = fsub double %i.hn, %i.hg
  store double %i.ho, ptr %i.hm, align 8, !tbaa !58
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %indvars.iv.next30.i.i, %i.ce
  br i1 %exitcond33.not.i.i, label %._crit_edge27.i.i, label %.lr.ph26.i.i, !llvm.loop !25

._crit_edge27.i.i:                                ; preds = %.lr.ph26.i.i, %middle.block443, %._crit_edge266.thread
  %i.hp = phi i64 [ 0, %._crit_edge266.thread ], [ %i.bt, %middle.block443 ], [ %i.bt, %.lr.ph26.i.i ] ; 2 uses
  %i.hq = phi i1 [ false, %._crit_edge266.thread ], [ %i.aa, %middle.block443 ], [ %i.aa, %.lr.ph26.i.i ]
  %i.hr = phi ptr [ %i.n, %._crit_edge266.thread ], [ %i.d, %middle.block443 ], [ %i.d, %.lr.ph26.i.i ] ; 6 uses
  %i.hs = phi ptr [ %i.o, %._crit_edge266.thread ], [ %i.i, %middle.block443 ], [ %i.i, %.lr.ph26.i.i ] ; 4 uses
  %i.ht = phi ptr [ %i.p, %._crit_edge266.thread ], [ %i.s, %middle.block443 ], [ %i.s, %.lr.ph26.i.i ] ; 7 uses
  %.fr391393 = phi double [ +qnan, %._crit_edge266.thread ], [ %.fr, %middle.block443 ], [ %.fr, %.lr.ph26.i.i ] ; 8 uses
  %i.hu = phi i64 [ 0, %._crit_edge266.thread ], [ %i.ce, %middle.block443 ], [ %i.ce, %.lr.ph26.i.i ] ; 4 uses
  %i.hv = phi ptr [ %i.q, %._crit_edge266.thread ], [ %i.bz, %middle.block443 ], [ %i.bz, %.lr.ph26.i.i ] ; 5 uses
  %i.hw = phi ptr [ %i.r, %._crit_edge266.thread ], [ %i.fq, %middle.block443 ], [ %i.fq, %.lr.ph26.i.i ] ; 9 uses
  %i.hx = add nsw i32 %1, -1                      ; 6 uses
  %i.hy = tail call double @norm(ptr noundef %i.hw, i32 noundef %i.hx) #15 ; 2 uses
  %i.hz = tail call double @llvm.fabs.f64(double %i.hy)
  %i.ia = fcmp olt double %i.hz, f0x3CB0000000000000
  br i1 %i.ia, label %standardize.exit.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge27.i.i
  %i.ib = fdiv double 1.000000e+00, %i.hy
  tail call void @vectors_scalar_mult(i32 noundef %1, ptr noundef %i.hw, double noundef %i.ib, ptr noundef %i.hw) #15
  br label %standardize.exit.i

standardize.exit.i:                               ; preds = %bb.q, %._crit_edge27.i.i
  br i1 %.not.i, label %bb.r, label %gv_calloc.exit170.i.i

bb.r:                                             ; preds = %standardize.exit.i
  %i.ic = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.hu, i64 noundef 8) #14 ; 7 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.s, label %gv_calloc.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.ie = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.if = shl nuw nsw i64 %i.hu, 3
  %i.ig = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ie, ptr noundef nonnull @.str.1, i64 noundef %i.if) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit.i.i:                               ; preds = %bb.r
  %i.ih = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.hu, i64 noundef 8) #14 ; 5 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.t, label %.lr.ph.i43.i

bb.t:                                             ; preds = %gv_calloc.exit.i.i
  %i.ij = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.ik = shl nuw nsw i64 %i.hu, 3
  %i.il = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ij, ptr noundef nonnull @.str.1, i64 noundef %i.ik) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit170.i.i:                            ; preds = %standardize.exit.i
  %i.im = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14
  %i.in = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14
  br label %power_iteration_orthog.exit.i

.lr.ph.i43.i:                                     ; preds = %gv_calloc.exit.i.i
  %wide.trip.count.i44.i = zext i32 %1 to i64     ; 5 uses
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph.us.i.i.backedge, %.lr.ph.i43.i
  %indvars.iv.i45.i = phi i64 [ 0, %.lr.ph.i43.i ], [ %indvars.iv.i45.i.be, %.lr.ph.us.i.i.backedge ] ; 2 uses
  %i.io = tail call i32 @rand() #15
  %i.ip = srem i32 %i.io, 100
  %i.iq = sitofp i32 %i.ip to double
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i45.i
  store double %i.iq, ptr %i.ir, align 8, !tbaa !58
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %wide.trip.count.i44.i
  br i1 %exitcond.not.i47.i, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i.backedge

.lr.ph.us.i.i.backedge:                           ; preds = %.lr.ph.us.i.i, %._crit_edge.us.i.i
  %indvars.iv.i45.i.be = phi i64 [ %indvars.iv.next.i46.i, %.lr.ph.us.i.i ], [ 0, %._crit_edge.us.i.i ]
  br label %.lr.ph.us.i.i, !llvm.loop !26

._crit_edge.us.i.i:                               ; preds = %.lr.ph.us.i.i
  %i.is = tail call double @vectors_inner_product(i32 noundef %1, ptr noundef %i.hw, ptr noundef nonnull %3) #15
  %i.it = fneg double %i.is
  tail call void @scadd(ptr noundef nonnull %3, i32 noundef %i.hx, double noundef %i.it, ptr noundef %i.hw) #15
  %i.iu = tail call double @norm(ptr noundef nonnull %3, i32 noundef %i.hx) #15 ; 2 uses
  %i.iv = fcmp olt double %i.iu, 1.000000e-10
  br i1 %i.iv, label %.lr.ph.us.i.i.backedge, label %.split182.us.i.i

.split182.us.i.i:                                 ; preds = %._crit_edge.us.i.i
  %i.iw = fsub double 1.000000e+00, %4
  %i.ix = fdiv double 1.000000e+00, %i.iu
  tail call void @vectors_scalar_mult(i32 noundef %1, ptr noundef nonnull %3, double noundef %i.ix, ptr noundef nonnull %3) #15
  %xtraiter502 = and i64 %wide.trip.count.i44.i, 3 ; 3 uses
  %i.iy = add i32 %1, -1
  %i.iz = icmp ult i32 %i.iy, 3
  %unroll_iter507 = and i64 %wide.trip.count.i44.i, 4294967292
  %lcmp.mod504.not = icmp eq i64 %xtraiter502, 0
  %lcmp.mod506 = icmp ne i64 %xtraiter502, 0
  br label %.preheader.us.i.preheader.i.i

.preheader.us.i.preheader.i.i:                    ; preds = %bb.v, %.split182.us.i.i
  tail call void @copy_vector(i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %i.ih) #15
  br label %.preheader.us.i.i48.i

.preheader.us.i.i48.i:                            ; preds = %._crit_edge.us.i.i52.i, %.preheader.us.i.preheader.i.i
  %indvars.iv31.i.i.i = phi i64 [ %indvars.iv.next32.i.i.i, %._crit_edge.us.i.i52.i ], [ 0, %.preheader.us.i.preheader.i.i ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv31.i.i.i
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !60 ; 5 uses
  br i1 %i.iz, label %.epil.preheader501, label %.preheader.us.i.i48.i.new

.preheader.us.i.i48.i.new:                        ; preds = %.preheader.us.i.i48.i, %.preheader.us.i.i48.i.new
  %indvars.iv.i.i49.i = phi i64 [ %indvars.iv.next.i.i50.i.3, %.preheader.us.i.i48.i.new ], [ 0, %.preheader.us.i.i48.i ] ; 6 uses
  %.02125.us.i.i.i = phi double [ %i.jz, %.preheader.us.i.i48.i.new ], [ 0.000000e+00, %.preheader.us.i.i48.i ]
  %niter508 = phi i64 [ %niter508.next.3, %.preheader.us.i.i48.i.new ], [ 0, %.preheader.us.i.i48.i ]
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i.i49.i
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !63
  %i.je = fpext float %i.jd to double
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i49.i
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !58
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.je, double %i.jg, double %.02125.us.i.i.i)
  %indvars.iv.next.i.i50.i = or disjoint i64 %indvars.iv.i.i49.i, 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i50.i
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !63
  %i.jk = fpext float %i.jj to double
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i50.i
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !58
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.jk, double %i.jm, double %i.jh)
  %indvars.iv.next.i.i50.i.1 = or disjoint i64 %indvars.iv.i.i49.i, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i50.i.1
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !63
  %i.jq = fpext float %i.jp to double
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i50.i.1
  %i.js = load double, ptr %i.jr, align 8, !tbaa !58
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.jq, double %i.js, double %i.jn)
  %indvars.iv.next.i.i50.i.2 = or disjoint i64 %indvars.iv.i.i49.i, 3 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i50.i.2
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !63
  %i.jw = fpext float %i.jv to double
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i50.i.2
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !58
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.jy, double %i.jt) ; 3 uses
  %indvars.iv.next.i.i50.i.3 = add nuw nsw i64 %indvars.iv.i.i49.i, 4 ; 2 uses
  %niter508.next.3 = add i64 %niter508, 4         ; 2 uses
  %niter508.ncmp.3 = icmp eq i64 %niter508.next.3, %unroll_iter507
  br i1 %niter508.ncmp.3, label %._crit_edge.us.i.i52.i.unr-lcssa, label %.preheader.us.i.i48.i.new, !llvm.loop !27

._crit_edge.us.i.i52.i.unr-lcssa:                 ; preds = %.preheader.us.i.i48.i.new
  br i1 %lcmp.mod504.not, label %._crit_edge.us.i.i52.i, label %.epil.preheader501

.epil.preheader501:                               ; preds = %._crit_edge.us.i.i52.i.unr-lcssa, %.preheader.us.i.i48.i
  %indvars.iv.i.i49.i.epil.init = phi i64 [ 0, %.preheader.us.i.i48.i ], [ %indvars.iv.next.i.i50.i.3, %._crit_edge.us.i.i52.i.unr-lcssa ]
  %.02125.us.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.i.i48.i ], [ %i.jz, %._crit_edge.us.i.i52.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod506)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader501
  %indvars.iv.i.i49.i.epil = phi i64 [ %indvars.iv.i.i49.i.epil.init, %.epil.preheader501 ], [ %indvars.iv.next.i.i50.i.epil, %bb.u ] ; 3 uses
  %.02125.us.i.i.i.epil = phi double [ %.02125.us.i.i.i.epil.init, %.epil.preheader501 ], [ %i.kf, %bb.u ]
  %epil.iter503 = phi i64 [ 0, %.epil.preheader501 ], [ %epil.iter503.next, %bb.u ]
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i.i49.i.epil
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !63
  %i.kc = fpext float %i.kb to double
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i49.i.epil
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !58
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.ke, double %.02125.us.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i50.i.epil = add nuw nsw i64 %indvars.iv.i.i49.i.epil, 1
  %epil.iter503.next = add i64 %epil.iter503, 1   ; 2 uses
  %epil.iter503.cmp.not = icmp eq i64 %epil.iter503.next, %xtraiter502
  br i1 %epil.iter503.cmp.not, label %._crit_edge.us.i.i52.i, label %bb.u, !llvm.loop !28

._crit_edge.us.i.i52.i:                           ; preds = %bb.u, %._crit_edge.us.i.i52.i.unr-lcssa
  %.lcssa477 = phi double [ %i.jz, %._crit_edge.us.i.i52.i.unr-lcssa ], [ %i.kf, %bb.u ]
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv31.i.i.i
  store double %.lcssa477, ptr %i.kg, align 8, !tbaa !58
  %indvars.iv.next32.i.i.i = add nuw nsw i64 %indvars.iv31.i.i.i, 1 ; 2 uses
  %exitcond35.not.i.i.i = icmp eq i64 %indvars.iv.next32.i.i.i, %wide.trip.count.i44.i
  br i1 %exitcond35.not.i.i.i, label %mat_mult_vec_orthog.exit.i.i, label %.preheader.us.i.i48.i, !llvm.loop !29

mat_mult_vec_orthog.exit.i.i:                     ; preds = %._crit_edge.us.i.i52.i
  %i.kh = tail call double @vectors_inner_product(i32 noundef %1, ptr noundef nonnull %i.ic, ptr noundef %i.hw) #15
  %i.ki = fneg double %i.kh
  tail call void @scadd(ptr noundef nonnull %i.ic, i32 noundef %i.hx, double noundef %i.ki, ptr noundef %i.hw) #15
  tail call void @copy_vector(i32 noundef %1, ptr noundef nonnull %i.ic, ptr noundef nonnull %3) #15
  %i.kj = tail call double @norm(ptr noundef nonnull %3, i32 noundef %i.hx) #15 ; 3 uses
  %i.kk = fcmp olt double %i.kj, 1.000000e-10
  br i1 %i.kk, label %.lr.ph188.i.i, label %bb.v

bb.v:                                             ; preds = %mat_mult_vec_orthog.exit.i.i
  %i.kl = fdiv double 1.000000e+00, %i.kj
  tail call void @vectors_scalar_mult(i32 noundef %1, ptr noundef nonnull %3, double noundef %i.kl, ptr noundef nonnull %3) #15
  %i.km = tail call double @vectors_inner_product(i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %i.ih) #15 ; 2 uses
  %i.kn = tail call double @llvm.fabs.f64(double %i.km)
  %i.ko = fcmp olt double %i.kn, %i.iw
  br i1 %i.ko, label %.preheader.us.i.preheader.i.i, label %..loopexit172_crit_edge.i.i, !llvm.loop !30

..loopexit172_crit_edge.i.i:                      ; preds = %bb.v
  %i.kp = fmul double %i.kj, %i.km
  %i.kq = tail call double @llvm.fabs.f64(double %i.kp)
  %i.kr = tail call double @llvm.sqrt.f64(double %i.kq)
  br label %power_iteration_orthog.exit.i

.lr.ph188.i.i:                                    ; preds = %mat_mult_vec_orthog.exit.i.i, %.lr.ph188.i.i
  %indvars.iv196.i.i = phi i64 [ %indvars.iv.next197.i.i, %.lr.ph188.i.i ], [ 0, %mat_mult_vec_orthog.exit.i.i ] ; 2 uses
  %i.ks = tail call i32 @rand() #15
  %i.kt = srem i32 %i.ks, 100
  %i.ku = sitofp i32 %i.kt to double
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv196.i.i
  store double %i.ku, ptr %i.kv, align 8, !tbaa !58
  %indvars.iv.next197.i.i = add nuw nsw i64 %indvars.iv196.i.i, 1 ; 2 uses
  %exitcond200.not.i.i = icmp eq i64 %indvars.iv.next197.i.i, %wide.trip.count.i44.i
  br i1 %exitcond200.not.i.i, label %._crit_edge.us190.i.i, label %.lr.ph188.i.i, !llvm.loop !31

._crit_edge.us190.i.i:                            ; preds = %.lr.ph188.i.i
  %i.kw = tail call double @norm(ptr noundef nonnull %3, i32 noundef %i.hx) #15
  %i.kx = fdiv double 1.000000e+00, %i.kw
  tail call void @vectors_scalar_mult(i32 noundef %1, ptr noundef nonnull %3, double noundef %i.kx, ptr noundef nonnull %3) #15
  br label %power_iteration_orthog.exit.i

power_iteration_orthog.exit.i:                    ; preds = %._crit_edge.us190.i.i, %..loopexit172_crit_edge.i.i, %gv_calloc.exit170.i.i
  %sqrt.i = phi double [ 0.000000e+00, %gv_calloc.exit170.i.i ], [ %i.kr, %..loopexit172_crit_edge.i.i ], [ 0.000000e+00, %._crit_edge.us190.i.i ] ; 2 uses
  %i.ky = phi ptr [ %i.in, %gv_calloc.exit170.i.i ], [ %i.ih, %..loopexit172_crit_edge.i.i ], [ %i.ih, %._crit_edge.us190.i.i ]
  %i.kz = phi ptr [ %i.im, %gv_calloc.exit170.i.i ], [ %i.ic, %..loopexit172_crit_edge.i.i ], [ %i.ic, %._crit_edge.us190.i.i ]
  tail call void @free(ptr noundef %i.kz) #15
  tail call void @free(ptr noundef %i.ky) #15
  br i1 %.not.i, label %power_iteration_orthog.exit.split.i, label %.thread.i231.critedge

power_iteration_orthog.exit.split.i:              ; preds = %power_iteration_orthog.exit.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check447 = icmp ult i32 %1, 4
  br i1 %min.iters.check447, label %scalar.ph446.preheader, label %vector.ph448

vector.ph448:                                     ; preds = %power_iteration_orthog.exit.split.i
  %n.vec449 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert450 = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %broadcast.splat451 = shufflevector <2 x double> %broadcast.splatinsert450, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph448
  %index453 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body452 ] ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index453 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %wide.load454 = load <2 x double>, ptr %i.la, align 8, !tbaa !58
  %wide.load455 = load <2 x double>, ptr %i.lb, align 8, !tbaa !58
  %i.lc = fmul <2 x double> %broadcast.splat451, %wide.load454
  %i.ld = fmul <2 x double> %broadcast.splat451, %wide.load455
  store <2 x double> %i.lc, ptr %i.la, align 8, !tbaa !58
  store <2 x double> %i.ld, ptr %i.lb, align 8, !tbaa !58
  %index.next456 = add nuw i64 %index453, 4       ; 2 uses
  %i.le = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.le, label %middle.block457, label %vector.body452, !llvm.loop !32

middle.block457:                                  ; preds = %vector.body452
  %cmp.n458 = icmp eq i64 %n.vec449, %wide.trip.count.i
  br i1 %cmp.n458, label %CMDS_orthog.exit, label %scalar.ph446.preheader

scalar.ph446.preheader:                           ; preds = %power_iteration_orthog.exit.split.i, %middle.block457
  %indvars.iv.i.ph = phi i64 [ 0, %power_iteration_orthog.exit.split.i ], [ %n.vec449, %middle.block457 ]
  br label %scalar.ph446

scalar.ph446:                                     ; preds = %scalar.ph446.preheader, %scalar.ph446
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph446 ], [ %indvars.iv.i.ph, %scalar.ph446.preheader ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !58
  %i.lh = fmul double %sqrt.i, %i.lg
  store double %i.lh, ptr %i.lf, align 8, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %CMDS_orthog.exit, label %scalar.ph446, !llvm.loop !33

CMDS_orthog.exit:                                 ; preds = %scalar.ph446, %middle.block457
  %i.li = load ptr, ptr %i.hv, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.li) #15
  tail call void @free(ptr noundef %i.hv) #15
  tail call void @free(ptr noundef %i.hw) #15
  %i.lj = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.hp, i64 noundef 4) #14 ; 2 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.w, label %gv_calloc.exit232

.thread.i231.critedge:                            ; preds = %power_iteration_orthog.exit.i
  %i.ll = load ptr, ptr %i.hv, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.ll) #15
  tail call void @free(ptr noundef %i.hv) #15
  tail call void @free(ptr noundef %i.hw) #15
  %i.lm = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #14
  br label %gv_calloc.exit232

bb.w:                                             ; preds = %CMDS_orthog.exit
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.lo = shl nuw nsw i64 %i.hp, 2
  %i.lp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ln, ptr noundef nonnull @.str.1, i64 noundef %i.lo) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit232:                                ; preds = %.thread.i231.critedge, %CMDS_orthog.exit
  %i.lq = phi ptr [ %i.lm, %.thread.i231.critedge ], [ %i.lj, %CMDS_orthog.exit ]
  br i1 %.not.i, label %.lr.ph274, label %.preheader243

.lr.ph274:                                        ; preds = %gv_calloc.exit232
  %i.lr = zext i32 %1 to i64                      ; 4 uses
  %xtraiter510 = and i64 %i.lr, 1
  %i.ls = icmp eq i32 %1, 1
  %unroll_iter515 = and i64 %i.lr, 4294967294
  %lcmp.mod512.not = icmp eq i64 %xtraiter510, 0
  %lcmp.mod514 = trunc i32 %1 to i1
  br label %.lr.ph270

.preheader243:                                    ; preds = %._crit_edge271, %gv_calloc.exit232
  br i1 %i.hq, label %.lr.ph277.preheader, label %.preheader242

.lr.ph277.preheader:                              ; preds = %.preheader243
  %wide.trip.count348 = zext nneg i32 %1 to i64
  br label %.lr.ph277

.lr.ph270:                                        ; preds = %._crit_edge271, %.lr.ph274
  %indvars.iv335 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next336, %._crit_edge271 ] ; 8 uses
  %i.lt = mul nuw nsw i64 %indvars.iv335, %i.lr
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lt ; 5 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv335
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !60
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv335 ; 3 uses
  br i1 %i.ls, label %.epil.preheader509, label %.lr.ph270.new

.lr.ph270.new:                                    ; preds = %.lr.ph270, %bb.aa
  %indvars.iv330 = phi i64 [ %indvars.iv.next331.1, %bb.aa ], [ 0, %.lr.ph270 ] ; 5 uses
  %.0205268 = phi float [ %.1206.1, %bb.aa ], [ 0.000000e+00, %.lr.ph270 ] ; 2 uses
  %niter516 = phi i64 [ %niter516.next.1, %bb.aa ], [ 0, %.lr.ph270 ]
  %i.lx = icmp eq i64 %indvars.iv330, %indvars.iv335
  br i1 %i.lx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph270.new
  %i.ly = load ptr, ptr %i.lw, align 8, !tbaa !52
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %indvars.iv330
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !53
  %i.mb = sitofp i32 %i.ma to float               ; 2 uses
  %i.mc = fmul nnan float %i.mb, %i.mb
  %i.md = fdiv float -1.000000e+00, %i.mc         ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv330
  store float %i.md, ptr %i.me, align 4, !tbaa !63
  %i.mf = fsub float %.0205268, %i.md
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph270.new, %bb.x
  %.1206 = phi float [ %.0205268, %.lr.ph270.new ], [ %i.mf, %bb.x ] ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.mg = icmp eq i64 %indvars.iv.next331, %indvars.iv335
  br i1 %i.mg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mh = load ptr, ptr %i.lw, align 8, !tbaa !52
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next331
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !53
  %i.mk = sitofp i32 %i.mj to float               ; 2 uses
  %i.ml = fmul nnan float %i.mk, %i.mk
  %i.mm = fdiv float -1.000000e+00, %i.ml         ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv.next331
  store float %i.mm, ptr %i.mn, align 4, !tbaa !63
  %i.mo = fsub float %.1206, %i.mm
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1206.1 = phi float [ %.1206, %bb.y ], [ %i.mo, %bb.z ] ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 2 uses
  %niter516.next.1 = add i64 %niter516, 2         ; 2 uses
  %niter516.ncmp.1 = icmp eq i64 %niter516.next.1, %unroll_iter515
  br i1 %niter516.ncmp.1, label %._crit_edge271.unr-lcssa, label %.lr.ph270.new, !llvm.loop !34

._crit_edge271.unr-lcssa:                         ; preds = %bb.aa
  br i1 %lcmp.mod512.not, label %._crit_edge271, label %.epil.preheader509

.epil.preheader509:                               ; preds = %._crit_edge271.unr-lcssa, %.lr.ph270
  %indvars.iv330.epil.init = phi i64 [ 0, %.lr.ph270 ], [ %indvars.iv.next331.1, %._crit_edge271.unr-lcssa ] ; 3 uses
  %.0205268.epil.init = phi float [ 0.000000e+00, %.lr.ph270 ], [ %.1206.1, %._crit_edge271.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod514)
  %i.mp = icmp eq i64 %indvars.iv330.epil.init, %indvars.iv335
  br i1 %i.mp, label %._crit_edge271, label %bb.ab

bb.ab:                                            ; preds = %.epil.preheader509
  %i.mq = load ptr, ptr %i.lw, align 8, !tbaa !52
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv330.epil.init
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !53
  %i.mt = sitofp i32 %i.ms to float               ; 2 uses
  %i.mu = fmul nnan float %i.mt, %i.mt
  %i.mv = fdiv float -1.000000e+00, %i.mu         ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv330.epil.init
  store float %i.mv, ptr %i.mw, align 4, !tbaa !63
  %i.mx = fsub float %.0205268.epil.init, %i.mv
  br label %._crit_edge271

._crit_edge271:                                   ; preds = %.epil.preheader509, %bb.ab, %._crit_edge271.unr-lcssa
  %.1206.lcssa = phi float [ %.1206.1, %._crit_edge271.unr-lcssa ], [ %.0205268.epil.init, %.epil.preheader509 ], [ %i.mx, %bb.ab ]
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv335
  store float %.1206.lcssa, ptr %i.my, align 4, !tbaa !63
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %exitcond339.not = icmp eq i64 %indvars.iv.next336, %i.lr
  br i1 %exitcond339.not, label %.preheader243, label %.lr.ph270, !llvm.loop !35

.preheader242:                                    ; preds = %bb.af, %.preheader243
  br i1 %.not.i, label %.lr.ph283, label %.preheader240

.lr.ph283:                                        ; preds = %.preheader242
  %wide.trip.count358 = zext nneg i32 %1 to i64   ; 2 uses
  br label %.lr.ph280

.lr.ph277:                                        ; preds = %.lr.ph277.preheader, %bb.af
  %indvars.iv345 = phi i64 [ 1, %.lr.ph277.preheader ], [ %indvars.iv.next346, %bb.af ] ; 5 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv345
  %i.na = load double, ptr %i.mz, align 8, !tbaa !58
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv345
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !52
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph277, %bb.ae
  %indvars.iv340 = phi i64 [ 0, %.lr.ph277 ], [ %indvars.iv.next341, %bb.ae ] ; 4 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv340 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !53
  %i.nf = sitofp i32 %i.ne to double              ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv340
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !58
  %i.ni = fsub double %i.na, %i.nh                ; 2 uses
  %i.nj = fneg double %i.ni
  %i.nk = fmul double %i.ni, %i.nj
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.nf, double %i.nk) ; 2 uses
end_hunk_0
