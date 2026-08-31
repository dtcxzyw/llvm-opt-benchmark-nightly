Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@poly_init:bb.a
  %i.gj = fmul double %i.gh, %i.gi                ; 2 uses
  store double %i.gj, ptr %1, align 16, !tbaa !19
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gk = load double, ptr %1, align 16, !tbaa !19
  %i.gl = fmul double %i.gk, f0x3FF6A09E667F3BCD  ; 2 uses
  store double %i.gl, ptr %1, align 16, !tbaa !19
  store double %i.gb, ptr %i.es, align 8, !tbaa !17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gm = phi double [ %i.gb, %bb.ar ], [ %i.ga, %bb.aq ] ; 2 uses
  %i.gn = phi double [ %i.gl, %bb.ar ], [ %i.gj, %bb.aq ]
  %i.go = icmp ugt i64 %.1510, 2
  br i1 %i.go, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gp = uitofp i64 %.1510 to double
  %i.gq = fdiv double f0x400921FB54442D18, %i.gp
  %i.gr = call double @cos(double noundef %i.gq) #26
  %i.gs = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gm, i64 1
  %i.gu = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fdiv <2 x double> %i.gt, %i.gv          ; 2 uses
  store <2 x double> %i.gw, ptr %1, align 16, !tbaa !9
  %i.gx = extractelement <2 x double> %i.gw, i64 1
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge657, %bb.ao, %bb.at, %bb.as
  %.sroa.3.0.copyload = phi double [ %i.fz, %bb.ao ], [ %i.gx, %bb.at ], [ %i.gm, %bb.as ], [ %.sroa.3.0.copyload.pre, %._crit_edge657 ]
  %i.gy = phi i1 [ false, %bb.ao ], [ false, %bb.at ], [ false, %bb.as ], [ true, %._crit_edge657 ] ; 2 uses
  %i.gz = load ptr, ptr @N_fixed, align 8, !tbaa !61
  %i.ha = call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.gz, ptr noundef nonnull @.str.15) #26 ; 3 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !87
  %i.hc = icmp eq i8 %i.hb, 115
  br i1 %i.hc, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hd = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(6) @.str.16) #31
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store double %i.ax, ptr %1, align 16, !tbaa !9
  store double %i.aw, ptr %i.es, align 8, !tbaa !9
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 2048, ptr %i.hf, align 8
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.hg = call zeroext i1 @mapbool(ptr noundef nonnull %i.ha) #26
  br i1 %i.hg, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 136
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !65 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !66
  %i.hm = fcmp olt double %i.ax, %i.hl
  br i1 %i.hm, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !92
  %i.hp = fcmp olt double %i.aw, %i.ho
  br i1 %i.hp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hq = call ptr @agnameof(ptr noundef nonnull %0) #26
  %i.hr = call ptr @agraphof(ptr noundef nonnull %0) #26
  %i.hs = call ptr @agnameof(ptr noundef %i.hr) #26
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.17, ptr noundef %i.hq, ptr noundef %i.hs) #26
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store double %i.ax, ptr %1, align 16, !tbaa !9
  store double %i.aw, ptr %i.es, align 8, !tbaa !9
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ax
  %i.ht = load <2 x double>, ptr %1, align 16, !tbaa !9
  %i.hu = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.av, <2 x double> %i.ht) ; 4 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 1
  %i.hw = extractelement <2 x double> %i.hu, i64 0
  store <2 x double> %i.hu, ptr %1, align 16, !tbaa !9
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.aw
  %.not535 = phi i1 [ false, %bb.aw ], [ true, %bb.bb ], [ true, %bb.bc ] ; 2 uses
  %i.hx = phi double [ %i.aw, %bb.aw ], [ %i.aw, %bb.bb ], [ %i.hv, %bb.bc ]
  %i.hy = phi double [ %i.ax, %bb.aw ], [ %i.ax, %bb.bb ], [ %i.hw, %bb.bc ]
  %i.hz = phi <2 x double> [ %i.av, %bb.aw ], [ %i.av, %bb.bb ], [ %i.hu, %bb.bc ]
  br i1 %i.y, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ia = call nsz double @llvm.maxnum.f64(double %i.hy, double %i.hx) ; 3 uses
  store double %i.ia, ptr %i.es, align 8, !tbaa !17
  store double %i.ia, ptr %1, align 16, !tbaa !19
  %i.ib = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.id = phi <2 x double> [ %i.ic, %bb.be ], [ %i.hz, %bb.bd ]
  %i.ie = load ptr, ptr @N_nojustify, align 8, !tbaa !61
  %i.if = call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.ie, ptr noundef nonnull @.str.15) #26
  %i.ig = call zeroext i1 @mapbool(ptr noundef %i.if) #26
  %i.ih = extractelement <2 x double> %i.dh, i64 0 ; 4 uses
  br i1 %i.ig, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.gy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ii = load double, ptr %1, align 16, !tbaa !19
  %i.ij = call nsz double @llvm.maxnum.f64(double %i.ih, double %i.ii)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.ik = load double, ptr %i.es, align 8, !tbaa !17 ; 3 uses
  %i.il = extractelement <2 x double> %i.dh, i64 1 ; 3 uses
  %i.im = fcmp olt double %i.il, %i.ik
  br i1 %i.im, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.in = load double, ptr %1, align 16, !tbaa !19
  %i.io = fmul double %i.il, %i.il
  %i.ip = fmul double %i.ik, %i.ik
  %i.iq = fdiv double %i.io, %i.ip
  %i.ir = fsub double 1.000000e+00, %i.iq
  %i.is = call double @sqrt(double noundef %i.ir) #26
  %i.it = fmul double %i.in, %i.is
  %i.iu = call nsz double @llvm.maxnum.f64(double %i.ih, double %i.it)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bi, %bb.bh, %bb.bj
  %.sink696 = phi double [ %i.ij, %bb.bh ], [ %i.ih, %bb.bi ], [ %i.iu, %bb.bj ], [ %i.ih, %bb.bf ]
  %i.iv = fsub double %.sink696, %i.cr
  %i.iw = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 136
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !65 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  store double %i.iv, ptr %i.iz, align 8, !tbaa !93
  br i1 %.not535, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ja = load double, ptr %i.es, align 8, !tbaa !17
  %i.jb = fsub double %i.ja, %.sroa.3.0.copyload  ; 2 uses
  %i.jc = extractelement <2 x double> %i.dh, i64 1 ; 3 uses
  %i.jd = fcmp olt double %i.jc, %i.et
  %i.je = fsub double %i.et, %i.jc
  %i.jf = fadd double %i.je, %i.jb
  %.0476 = select i1 %i.jd, double %i.jf, double %i.jb
  %i.jg = fadd double %i.jc, %.0476
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  store double %i.jg, ptr %i.jh, align 8, !tbaa !94
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ji = load ptr, ptr @N_penwidth, align 8, !tbaa !61
  %i.jj = call double @late_double(ptr noundef nonnull %0, ptr noundef %i.ji, double noundef 1.000000e+00, double noundef 0.000000e+00) #26 ; 3 uses
  %i.jk = icmp eq i32 %i.ba, 0
  %spec.store.select = select i1 %i.jk, i64 1, i64 %i.bb
  %i.jl = icmp ne i32 %i.ba, 0
  %i.jm = fcmp ogt double %i.jj, 0.000000e+00
  %or.cond10 = select i1 %i.jl, i1 %i.jm, i1 false
  %i.jn = zext i1 %or.cond10 to i64
  %spec.select = add nsw i64 %spec.store.select, %i.jn ; 8 uses
  %i.jo = icmp ult i64 %.1510, 3
  br i1 %i.jo, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  %i.jp = shl nsw i64 %spec.select, 1             ; 3 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %.thread.i, label %bb.bo

.thread.i:                                        ; preds = %bb.bn
  %i.jq = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit

bb.bo:                                            ; preds = %bb.bn
  %mul.ov.i = icmp ugt i64 %i.jp, 1152921504606846975
  br i1 %mul.ov.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.js = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jr, ptr noundef nonnull @.str.5, i64 noundef %i.jp, i64 noundef 16) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.jt = call noalias ptr @calloc(i64 noundef %i.jp, i64 noundef 16) #27 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.br, label %gv_calloc.exit

bb.br:                                            ; preds = %bb.bq
  %i.jv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.jw = shl nuw nsw i64 %spec.select, 5
  %i.jx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jv, ptr noundef nonnull @.str.6, i64 noundef %i.jw) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.bq
  %i.jy = phi ptr [ %i.jq, %.thread.i ], [ %i.jt, %bb.bq ] ; 8 uses
  %i.jz = load <2 x double>, ptr %1, align 16, !tbaa !9 ; 2 uses
  %i.ka = fmul <2 x double> %i.jz, splat (double 5.000000e-01) ; 5 uses
  %i.kb = fneg <2 x double> %i.ka
  store <2 x double> %i.kb, ptr %i.jy, align 8, !tbaa !9
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store <2 x double> %i.ka, ptr %i.kc, align 8, !tbaa !9
  %i.kd = icmp ugt i32 %i.ba, 1
  br i1 %i.kd, label %.preheader.preheader, label %bb.bt

.preheader.preheader:                             ; preds = %gv_calloc.exit
  %i.ke = add nsw i64 %i.bb, -1                   ; 3 uses
  %xtraiter753 = and i64 %i.ke, 1
  %i.kf = icmp eq i32 %i.ba, 2
  br i1 %i.kf, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter760 = and i64 %i.ke, -2
  br label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod757.not = icmp eq i64 %xtraiter753, 0
  br i1 %lcmp.mod757.not, label %bb.bs, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.0502636.epil.init = phi i64 [ 2, %.preheader.preheader ], [ %i.kv, %.unr-lcssa ]
  %.epil.init756 = phi <2 x double> [ %i.ka, %.preheader.preheader ], [ %i.kq, %.unr-lcssa ]
  %lcmp.mod759 = trunc i64 %i.ke to i1
  call void @llvm.assume(i1 %lcmp.mod759)
  %i.kg = fadd <2 x double> %.epil.init756, splat (double 4.000000e+00) ; 3 uses
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %.0502636.epil.init ; 2 uses
  %i.ki = fneg <2 x double> %i.kg
  store <2 x double> %i.ki, ptr %i.kh, align 8, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store <2 x double> %i.kg, ptr %i.kj, align 8, !tbaa !9
  br label %bb.bs

bb.bs:                                            ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa = phi <2 x double> [ %i.kq, %.unr-lcssa ], [ %i.kg, %.preheader.epil.preheader ] ; 2 uses
  %i.kk = fmul <2 x double> %.lcssa, splat (double 2.000000e+00)
  br label %bb.bt

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0502636 = phi i64 [ 2, %.preheader.preheader.new ], [ %i.kv, %.preheader ] ; 3 uses
  %i.kl = phi <2 x double> [ %i.ka, %.preheader.preheader.new ], [ %i.kq, %.preheader ]
  %niter761 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter761.next.1, %.preheader ]
  %i.km = fadd <2 x double> %i.kl, splat (double 4.000000e+00) ; 3 uses
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %.0502636 ; 2 uses
  %i.ko = fneg <2 x double> %i.km
  store <2 x double> %i.ko, ptr %i.kn, align 8, !tbaa !9
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store <2 x double> %i.km, ptr %i.kp, align 8, !tbaa !9
  %i.kq = fadd <2 x double> %i.km, splat (double 4.000000e+00) ; 5 uses
  %i.kr = getelementptr [16 x i8], ptr %i.jy, i64 %.0502636 ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 32
  %i.kt = fneg <2 x double> %i.kq
  store <2 x double> %i.kt, ptr %i.ks, align 8, !tbaa !9
  %i.ku = getelementptr i8, ptr %i.kr, i64 48
  store <2 x double> %i.kq, ptr %i.ku, align 8, !tbaa !9
  %i.kv = add i64 %.0502636, 4                    ; 2 uses
  %niter761.next.1 = add i64 %niter761, 2         ; 2 uses
  %niter761.ncmp.1 = icmp eq i64 %niter761.next.1, %unroll_iter760
  br i1 %niter761.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !95

bb.bt:                                            ; preds = %bb.bs, %gv_calloc.exit
  %i.kw = phi <2 x double> [ %i.kk, %bb.bs ], [ %i.jz, %gv_calloc.exit ] ; 3 uses
  %i.kx = phi <2 x double> [ %.lcssa, %bb.bs ], [ %i.ka, %gv_calloc.exit ]
  %i.ky = icmp ugt i64 %spec.select, %i.bb
  br i1 %i.ky, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %bb.bt
  %i.kz = fmul double %i.jj, 5.000000e-01
  %i.la = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = fadd <2 x double> %i.lb, %i.kx          ; 3 uses
  %.idx = shl nsw i64 %i.bb, 5
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.idx ; 2 uses
  %i.le = fneg <2 x double> %i.lc
  store <2 x double> %i.le, ptr %i.ld, align 8, !tbaa !9
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store <2 x double> %i.lc, ptr %i.lf, align 8, !tbaa !9
  %i.lg = fmul <2 x double> %i.lc, splat (double 2.000000e+00)
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bm
  %i.lh = mul i64 %spec.select, %.1510            ; 5 uses
  %.not.i541 = icmp eq i64 %i.lh, 0
  br i1 %.not.i541, label %.thread.i544, label %bb.bw

.thread.i544:                                     ; preds = %bb.bv
  %i.li = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit545

bb.bw:                                            ; preds = %bb.bv
  %mul.ov.i543 = icmp ugt i64 %i.lh, 1152921504606846975
  br i1 %mul.ov.i543, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.lj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lj, ptr noundef nonnull @.str.5, i64 noundef %i.lh, i64 noundef 16) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.ll = call noalias ptr @calloc(i64 noundef %i.lh, i64 noundef 16) #27 ; 2 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.bz, label %gv_calloc.exit545

bb.bz:                                            ; preds = %bb.by
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lo = shl nuw i64 %i.lh, 4
  %i.lp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ln, ptr noundef nonnull @.str.6, i64 noundef %i.lo) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit545:                                ; preds = %.thread.i544, %bb.by
  %i.lq = phi ptr [ %i.li, %.thread.i544 ], [ %i.ll, %bb.by ] ; 21 uses
  %i.lr = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !30
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !51
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 56
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !89 ; 2 uses
  %.not536 = icmp eq ptr %i.lx, null
  br i1 %.not536, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %gv_calloc.exit545
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !96
  call void %i.lz(ptr noundef %i.lq, ptr noundef nonnull %1) #26
  %i.ma = load <2 x double>, ptr %1, align 16, !tbaa !9
  %i.mb = fmul <2 x double> %i.ma, splat (double 5.000000e-01)
  br label %.loopexit563

bb.cb:                                            ; preds = %gv_calloc.exit545
  %i.mc = uitofp i64 %.1510 to double
  %i.md = fdiv double f0x401921FB54442D18, %i.mc  ; 5 uses
  %i.me = fmul nnan double %i.md, 5.000000e-01    ; 2 uses
  %i.mf = call double @sin(double noundef %i.me) #26 ; 2 uses
  %i.mg = call double @llvm.fabs.f64(double %.0496)
  %i.mh = call double @llvm.fabs.f64(double %.0497)
  %i.mi = fadd double %i.mh, %i.mg
  %i.mj = call double @hypot(double noundef %i.mi, double noundef 1.000000e+00) #26 ; 2 uses
  %i.mk = fmul double %.0496, f0x3FF6A09E667F3BCD
  %i.ml = call double @cos(double noundef %i.me) #26
  %i.mm = fdiv double %i.mk, %i.ml                ; 2 uses
  %i.mn = fmul double %.0497, 5.000000e-01        ; 2 uses
  %i.mo = fadd nnan double %i.md, f0xC00921FB54442D18
  %i.mp = fmul nnan double %i.mo, 5.000000e-01    ; 3 uses
  %i.mq = call double @sin(double noundef %i.mp) #26
  %i.mr = call double @cos(double noundef %i.mp) #26
  %i.ms = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mt = insertelement <2 x double> %i.ms, double %i.mq, i64 1
  %i.mu = fmul <2 x double> %i.mt, splat (double 5.000000e-01) ; 2 uses
  %i.mv = fsub nnan double f0x400921FB54442D18, %i.md
  %i.mw = fmul nnan double %i.mv, 5.000000e-01
  %i.mx = fadd double %i.mp, %i.mw                ; 2 uses
  %i.my = fdiv double %i.be, 1.800000e+02         ; 2 uses
  %i.mz = load <2 x double>, ptr %1, align 16, !tbaa !9 ; 2 uses
  br i1 %i.gy, label %.critedge.us, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.cb
  %i.na = insertelement <2 x double> poison, double %i.mf, i64 0
  %i.nb = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.critedge

.critedge.us:                                     ; preds = %bb.cb
  %i.nc = fadd double %i.md, %i.mx                ; 2 uses
  %i.nd = call double @sin(double noundef %i.nc) #26
  %i.ne = call double @cos(double noundef %i.nc) #26
  %i.nf = insertelement <2 x double> poison, double %i.mf, i64 0
  %i.ng = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nh = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.nd, i64 1
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.ni, <2 x double> %i.mu) ; 2 uses
  %i.nk = extractelement <2 x double> %i.nj, i64 1 ; 4 uses
  %i.nl = call double @llvm.fmuladd.f64(double %i.nk, double %i.mm, double %i.mj)
  %i.nm = fmul double %i.mn, %i.nk
  %i.nn = extractelement <2 x double> %i.nj, i64 0
  %i.no = call double @llvm.fmuladd.f64(double %i.nn, double %i.nl, double %i.nm) ; 2 uses
  %i.np = call double @atan2(double noundef %i.nk, double noundef %i.no) #26
  %i.nq = call double @llvm.fmuladd.f64(double %i.my, double f0x400921FB54442D18, double %i.np) ; 2 uses
  %i.nr = call double @sin(double noundef %i.nq) #26 ; 2 uses
  %i.ns = call double @cos(double noundef %i.nq) #26 ; 2 uses
  %i.nt = call double @hypot(double noundef %i.no, double noundef %i.nk) #26
  %i.nu = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %i.nr, i64 1
  %i.nw = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x double> %i.nv, %i.nx
  %i.nz = fmul <2 x double> %i.ny, %i.mz          ; 5 uses
  %i.oa = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nz)
  %i.ob = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.oa, <2 x double> zeroinitializer)
  %i.oc = extractelement <2 x double> %i.nz, i64 0
end_hunk_0
begin_hunk_1_@poly_init:bb.a

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sroa.9.3.sink = phi double [ %i.wc, %bb.cl ], [ %i.vv, %bb.ck ]
  %.sink699 = phi ptr [ %i.vx, %bb.cl ], [ %i.vo, %bb.ck ] ; 2 uses
  %i.wd = fdiv double %.sroa.9.3.sink, 7.200000e+01
  %i.we = getelementptr inbounds nuw i8, ptr %.sink699, i64 128
  store double %i.wd, ptr %i.we, align 8, !tbaa !111
  %i.wf = getelementptr inbounds nuw i8, ptr %.sink699, i64 24
  store ptr %i.c, ptr %i.wf, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @agraphof(ptr noundef %0) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.e = load i32, ptr %i.d, align 4, !tbaa !113
  %i.f = and i32 %i.e, 4
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114  ; 2 uses
  store ptr %i.k, ptr @reclblp, align 8, !tbaa !115
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #31
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.l, i64 2)
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.o = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 1) #27
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 1) #27 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.6, i64 noundef %i.n) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.b
  %i.t = phi ptr [ %i.o, %.thread.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.u = tail call fastcc ptr @parse_reclbl(ptr noundef nonnull %0, i1 noundef zeroext %.not, i1 noundef zeroext true, ptr noundef %i.t) ; 2 uses
  %.not38 = icmp eq ptr %i.u, null
  br i1 %.not38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %gv_calloc.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.19, ptr noundef %i.y) #26
  store ptr @.str.20, ptr @reclblp, align 8, !tbaa !115
  %i.z = tail call fastcc ptr @parse_reclbl(ptr noundef nonnull %0, i1 noundef zeroext %.not, i1 noundef zeroext true, ptr noundef %i.t)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %gv_calloc.exit
  %.0 = phi ptr [ %i.u, %gv_calloc.exit ], [ %i.z, %bb.d ] ; 6 uses
  tail call void @free(ptr noundef %i.t) #26
  %i.aa = tail call fastcc { double, double } @size_reclbl(ptr noundef nonnull %0, ptr noundef %.0) ; 0 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !9
  %i.ae = fmul <2 x double> %i.ad, splat (double 7.200000e+01) ; 2 uses
  %i.af = load ptr, ptr @N_fixed, align 8, !tbaa !61
  %i.ag = tail call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull @.str.15) #26
  %i.ah = tail call zeroext i1 @mapbool(ptr noundef %i.ag) #26
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load <2 x double>, ptr %.0, align 8, !tbaa !9
  %i.aj = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ai, <2 x double> %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ak = phi <2 x double> [ %i.ae, %bb.e ], [ %i.aj, %bb.f ] ; 2 uses
  %i.al = load ptr, ptr @N_nojustify, align 8, !tbaa !61
  %i.am = tail call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.al, ptr noundef nonnull @.str.15) #26
  %i.an = tail call zeroext i1 @mapbool(ptr noundef %i.am) #26
  %i.ao = extractelement <2 x double> %i.ak, i64 0 ; 2 uses
  %i.ap = extractelement <2 x double> %i.ak, i64 1 ; 2 uses
  tail call fastcc void @resize_reclbl(ptr noundef %.0, double %i.ao, double %i.ap, i1 noundef zeroext %i.an)
  %i.aq = fmul double %i.ao, -5.000000e-01
  %i.ar = fmul double %i.ap, 5.000000e-01
  tail call fastcc void @pos_reclbl(ptr noundef %.0, double %i.aq, double %i.ar, i8 noundef zeroext 15)
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load <2 x double>, ptr %.0, align 8, !tbaa !9
  %i.av = fadd <2 x double> %i.au, <double -0.000000e+00, double 1.000000e+00>
  %i.aw = fdiv <2 x double> %i.av, splat (double 7.200000e+01)
  store <2 x double> %i.aw, ptr %i.at, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.0, ptr %i.ax, align 8, !tbaa !112
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @point_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 89) 64) #27 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.6, i64 noundef 64) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !56
  %i.m = load ptr, ptr @N_width, align 8, !tbaa !61
  %i.n = tail call double @late_double(ptr noundef %0, ptr noundef %i.m, double noundef f0x7FEFFFFFFFFFFFFF, double noundef 1.000000e-02) #26
  %i.o = load ptr, ptr @N_height, align 8, !tbaa !61
  %i.p = tail call double @late_double(ptr noundef %0, ptr noundef %i.o, double noundef f0x7FEFFFFFFFFFFFFF, double noundef 2.000000e-02) #26 ; 2 uses
  %i.q = tail call nsz double @llvm.minnum.f64(double %i.n, double %i.p) ; 4 uses
  %lhsv.cast.i = bitcast double %i.q to i64
  %.not.i = icmp eq i64 %lhsv.cast.i, 9218868437227405311
  %lhsv.cast.i106 = bitcast double %i.p to i64
  %.not.i107 = icmp eq i64 %lhsv.cast.i106, 9218868437227405311
  %or.cond109 = select i1 %.not.i, i1 %.not.i107, i1 false
  br i1 %or.cond109, label %bb.c, label %bb.d

bb.c:                                             ; preds = %gv_alloc.exit
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store <2 x double> splat (double 5.000000e-02), ptr %i.s, align 8, !tbaa !9
  br label %bb.e

bb.d:                                             ; preds = %gv_alloc.exit
  %i.t = fcmp ogt double %i.q, 0.000000e+00
  %i.u = tail call nsz double @llvm.maxnum.f64(double %i.q, double 3.000000e-04)
  %.0 = select i1 %i.t, double %i.u, double %i.q  ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store double %.0, ptr %i.w, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store double %.0, ptr %i.x, align 8, !tbaa !63
  %i.y = fmul double %.0, 7.200000e+01
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi double [ %i.y, %bb.d ], [ 3.600000e+00, %bb.c ] ; 2 uses
  %i.aa = load ptr, ptr @N_peripheries, align 8, !tbaa !61
  %i.ab = trunc i64 %i.l to i32
  %i.ac = tail call i32 @late_int(ptr noundef nonnull %0, ptr noundef %i.aa, i32 noundef %i.ab, i32 noundef 0) #26 ; 5 uses
  %i.ad = sext i32 %i.ac to i64                   ; 4 uses
  %i.ae = icmp eq i32 %i.ac, 0
  %. = select i1 %i.ae, i64 1, i64 %i.ad
  %i.af = load ptr, ptr @N_penwidth, align 8, !tbaa !61
  %i.ag = tail call double @late_double(ptr noundef nonnull %0, ptr noundef %i.af, double noundef 1.000000e+00, double noundef 0.000000e+00) #26 ; 2 uses
  %i.ah = icmp ne i32 %i.ac, 0
  %i.ai = fcmp ogt double %i.ag, 0.000000e+00
  %or.cond = select i1 %i.ah, i1 %i.ai, i1 false  ; 2 uses
  %i.aj = zext i1 %or.cond to i64
  %.199 = add nsw i64 %., %i.aj                   ; 4 uses
  %i.ak = shl nsw i64 %.199, 1                    ; 3 uses
  %.not.i108 = icmp eq i64 %.199, 0
  br i1 %.not.i108, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.al = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %mul.ov.i = icmp ugt i64 %i.ak, 1152921504606846975
  br i1 %mul.ov.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.5, i64 noundef %i.ak, i64 noundef 16) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = tail call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 16) #27 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %gv_calloc.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ar = shl nuw nsw i64 %.199, 5
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.6, i64 noundef %i.ar) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.h
  %i.at = phi ptr [ %i.al, %.thread.i ], [ %i.ao, %bb.h ] ; 9 uses
  %i.au = fmul double %i.z, 5.000000e-01          ; 6 uses
  %i.av = fneg double %i.au                       ; 2 uses
  store double %i.av, ptr %i.at, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %i.av, ptr %i.aw, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store double %i.au, ptr %i.ax, align 8, !tbaa !9
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store double %i.au, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !9
  %i.ay = icmp ugt i32 %i.ac, 1
  %i.az = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %i.ay, label %.preheader.preheader, label %bb.k

.preheader.preheader:                             ; preds = %gv_calloc.exit
  %i.bb = add nsw i64 %i.ad, -1                   ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.bc = icmp eq i32 %i.ac, 2
  br i1 %i.bc, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.bb, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.096112 = phi i64 [ 2, %.preheader.preheader.new ], [ %i.bn, %.preheader ] ; 3 uses
  %i.bd = phi <2 x double> [ %i.ba, %.preheader.preheader.new ], [ %i.bi, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.be = fadd <2 x double> %i.bd, splat (double 4.000000e+00) ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.096112 ; 2 uses
  %i.bg = fneg <2 x double> %i.be
  store <2 x double> %i.bg, ptr %i.bf, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %i.be, ptr %i.bh, align 8, !tbaa !9
  %i.bi = fadd <2 x double> %i.be, splat (double 4.000000e+00) ; 5 uses
  %i.bj = getelementptr [16 x i8], ptr %i.at, i64 %.096112 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %i.bl = fneg <2 x double> %i.bi
  store <2 x double> %i.bl, ptr %i.bk, align 8, !tbaa !9
  %i.bm = getelementptr i8, ptr %i.bj, i64 48
  store <2 x double> %i.bi, ptr %i.bm, align 8, !tbaa !9
  %i.bn = add i64 %.096112, 4                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !116

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.j, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.096112.epil.init = phi i64 [ 2, %.preheader.preheader ], [ %i.bn, %.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ %i.ba, %.preheader.preheader ], [ %i.bi, %.unr-lcssa ]
  %lcmp.mod128 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.bo = fadd <2 x double> %.epil.init, splat (double 4.000000e+00) ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.096112.epil.init ; 2 uses
  %i.bq = fneg <2 x double> %i.bo
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x double> %i.bo, ptr %i.br, align 8, !tbaa !9
  %i.bs = add i64 %.096112.epil.init, 2
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa125 = phi <2 x double> [ %i.bi, %.unr-lcssa ], [ %i.bo, %.preheader.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.bn, %.unr-lcssa ], [ %i.bs, %.preheader.epil.preheader ]
  %i.bt = extractelement <2 x double> %.lcssa125, i64 0 ; 2 uses
  %i.bu = fmul double %i.bt, 2.000000e+00
  %i.bv = extractelement <2 x double> %.lcssa125, i64 1
  br label %bb.k

bb.k:                                             ; preds = %gv_calloc.exit, %bb.j
  %.097 = phi double [ %i.bu, %bb.j ], [ %i.z, %gv_calloc.exit ]
  %.sroa.15.1 = phi double [ %i.bv, %bb.j ], [ %i.au, %gv_calloc.exit ]
  %.sroa.0.1 = phi double [ %i.bt, %bb.j ], [ %i.au, %gv_calloc.exit ] ; 2 uses
  %.1 = phi i64 [ %.lcssa, %bb.j ], [ 2, %gv_calloc.exit ]
  %i.bw = icmp ugt i64 %.199, %i.ad
  %or.cond105 = and i1 %or.cond, %i.bw
  br i1 %or.cond105, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = fmul nnan double %i.ag, 5.000000e-01    ; 2 uses
  %i.by = fadd double %i.bx, %.sroa.0.1           ; 3 uses
  %i.bz = fadd double %i.bx, %.sroa.15.1          ; 2 uses
  %i.ca = fneg double %i.by
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.1 ; 4 uses
  store double %i.ca, ptr %i.cb, align 8, !tbaa !19
  %i.cc = fneg double %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store double %i.cc, ptr %i.cd, align 8, !tbaa !17
  %i.ce = getelementptr i8, ptr %i.cb, i64 16
  store double %i.by, ptr %i.ce, align 8, !tbaa !19
  %i.cf = getelementptr i8, ptr %i.cb, i64 24
  store double %i.bz, ptr %i.cf, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.2 = phi double [ %i.by, %bb.l ], [ %.sroa.0.1, %bb.k ]
  %i.cg = fmul double %.sroa.0.2, 2.000000e+00
  store i32 1, ptr %i.a, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ad, ptr %i.ch, align 8, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %i.ci, align 8, !tbaa !57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.at, ptr %i.cj, align 8, !tbaa !89
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !25  ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cn = insertelement <2 x double> poison, double %.097, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cg, i64 1
  %i.cp = fdiv <2 x double> %i.co, splat (double 7.200000e+01) ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0 ; 2 uses
  store double %i.cq, ptr %i.cl, align 8, !tbaa !63
  store double %i.cq, ptr %i.cm, align 8, !tbaa !64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.cs = extractelement <2 x double> %i.cp, i64 1 ; 2 uses
  store double %i.cs, ptr %i.cr, align 8, !tbaa !110
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 128
  store double %i.cs, ptr %i.ct, align 8, !tbaa !111
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.a, ptr %i.cu, align 8, !tbaa !112
  ret void
}

declare void @epsf_init(ptr noundef) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @isPolygon(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = icmp eq ptr %i.g, @poly_init
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @find_user_shape(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @UserShape, align 8, !tbaa !117 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr @N_UserShape, align 8, !tbaa !119 ; 2 uses
  %.not13 = icmp eq i64 %i.b, 0
  br i1 %.not13, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.0610, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %i.b
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !120

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.0610 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0610
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %0) #31
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %.preheader ], [ %i.e, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noundef ptr @bind_shape(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agget(ptr noundef %1, ptr noundef nonnull @.str.2) #26
  %i.b = tail call ptr @safefile(ptr noundef %i.a) #26
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.3) #31
  %i.d = icmp eq i32 %i.c, 0
  %spec.select = select i1 %i.d, ptr %0, ptr @.str.4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi ptr [ %spec.select, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.e = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.013, ptr noundef nonnull dereferenceable(7) @.str.4) #31
  %i.f = icmp eq i32 %i.e, 0
  %i.g = load ptr, ptr @Shapes, align 16          ; 2 uses
  %.not1522 = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.f, i1 true, i1 %.not1522
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.l, %bb.d ], [ %i.g, %bb.c ]
  %.01223 = phi ptr [ %i.k, %bb.d ], [ @Shapes, %bb.c ] ; 2 uses
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %.013) #31
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %user_shape.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.01223, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !122

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr @UserShape, align 8, !tbaa !117 ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %.pre.i = load i64, ptr @N_UserShape, align 8, !tbaa !119 ; 5 uses
  br i1 %.not.i.i, label %.loopexit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit
  %.not13.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not13.i.i, label %.thread17, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.n = add nuw i64 %.0610.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %.pre.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !120

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.0610.i.i = phi i64 [ %i.n, %bb.e ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0610.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !121  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %.013) #31
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %user_shape.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.e, %.loopexit
  %i.t = add i64 %.pre.i, 1                       ; 5 uses
  store i64 %i.t, ptr @N_UserShape, align 8, !tbaa !119
  %i.u = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit.i
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.5, i64 noundef %i.t, i64 noundef 8) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.g:                                             ; preds = %.loopexit.i
  %i.x = shl nuw i64 %.pre.i, 3                   ; 2 uses
  %i.y = shl nuw i64 %i.t, 3                      ; 3 uses
  %i.z = icmp eq i64 %i.t, 0
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.m) #26
  br label %gv_recalloc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.y) #32 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k

.thread17:                                        ; preds = %.preheader.i.i
  store i64 1, ptr @N_UserShape, align 8, !tbaa !119
  %i.ac = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 8) #32 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %.thread18

bb.j:                                             ; preds = %.thread17, %bb.i
  %i.ae = phi i64 [ 8, %.thread17 ], [ %i.y, %bb.i ]
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.6, i64 noundef %i.ae) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp ugt i64 %i.y, %i.x
  br i1 %i.ah, label %.thread18, label %gv_recalloc.exit.i

.thread18:                                        ; preds = %.thread17, %bb.k
  %i.ai = phi i64 [ %i.x, %bb.k ], [ 0, %.thread17 ]
  %i.aj = phi ptr [ %i.aa, %bb.k ], [ %i.ac, %.thread17 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i64 0, ptr %i.ak, align 1
  br label %gv_recalloc.exit.i

gv_recalloc.exit.i:                               ; preds = %.thread18, %bb.k, %bb.h
  %.0.i.i.i = phi ptr [ null, %bb.h ], [ %i.aj, %.thread18 ], [ %i.aa, %bb.k ] ; 2 uses
  store ptr %.0.i.i.i, ptr @UserShape, align 8, !tbaa !117
  %i.al = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 89) 32) #27 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %gv_alloc.exit.i

bb.l:                                             ; preds = %gv_recalloc.exit.i
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.6, i64 noundef 32) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_alloc.exit.i:                                  ; preds = %gv_recalloc.exit.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %.pre.i
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 16 dereferenceable(32) @Shapes, i64 32, i1 false), !tbaa.struct !123
  %i.aq = tail call noalias ptr @strdup(ptr noundef nonnull readonly %.013) #26 ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !85
  %i.ar = load ptr, ptr @Lib, align 8, !tbaa !127
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.m, label %find_user_shape.exit.sink.split.i

bb.m:                                             ; preds = %gv_alloc.exit.i
  %i.at = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.013, ptr noundef nonnull dereferenceable(7) @.str.4) #31
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %find_user_shape.exit.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr @Shapes, align 16, !tbaa !85
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.164, ptr noundef %i.av, ptr noundef %i.aq) #26
  br label %find_user_shape.exit.sink.split.i

find_user_shape.exit.sink.split.i:                ; preds = %bb.n, %bb.m, %gv_alloc.exit.i
  %.sink.i = phi i8 [ 0, %bb.n ], [ 1, %bb.m ], [ 1, %gv_alloc.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 %.sink.i, ptr %i.aw, align 8, !tbaa !82
  br label %user_shape.exit

user_shape.exit:                                  ; preds = %.lr.ph, %.lr.ph.i.i, %find_user_shape.exit.sink.split.i
  %.1 = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %find_user_shape.exit.sink.split.i ], [ %.01223, %.lr.ph ]
  ret ptr %.1
}

declare ptr @safefile(ptr noundef) local_unnamed_addr #7

declare ptr @agget(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @resolvePort(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.port) align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agraphof(ptr noundef %1) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !113
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load double, ptr %i.k, align 8           ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = load double, ptr %i.m, align 8           ; 4 uses
  switch i32 %i.h, label %default.unreachable [
    i32 0, label %cvtPt.exit.thread.i
    i32 2, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
  ]

cvtPt.exit.thread.i:                              ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load double, ptr %i.s, align 8
  br label %cvtPt.exit63.i

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.u = fneg double %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load double, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = fneg double %i.aa
  br label %cvtPt.exit63.i

bb.c:                                             ; preds = %bb.a
  %i.ac = fneg double %i.n
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = fneg double %i.ai
  br label %cvtPt.exit63.i

bb.d:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load double, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ap = load double, ptr %i.ao, align 8
  br label %cvtPt.exit63.i

cvtPt.exit63.i:                                   ; preds = %bb.d, %bb.c, %bb.b, %cvtPt.exit.thread.i
  %.sroa.05.0.i69.i = phi double [ %i.n, %bb.d ], [ %i.l, %bb.b ], [ %i.ac, %bb.c ], [ %i.l, %cvtPt.exit.thread.i ] ; 4 uses
  %.sroa.6.0.i68.i = phi double [ %i.l, %bb.d ], [ %i.u, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %cvtPt.exit.thread.i ] ; 4 uses
  %.sroa.6.0.i58.i = phi double [ %i.an, %bb.d ], [ %i.ab, %bb.b ], [ %i.ag, %bb.c ], [ %i.t, %cvtPt.exit.thread.i ] ; 4 uses
  %.sroa.05.0.i59.i = phi double [ %i.ap, %bb.d ], [ %i.y, %bb.b ], [ %i.aj, %bb.c ], [ %i.r, %cvtPt.exit.thread.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 37 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !137 ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 4 uses
  switch i8 %i.ar, label %bb.e [
    i8 15, label %closestSide.exit
    i8 0, label %closestSide.exit
  ]

bb.e:                                             ; preds = %cvtPt.exit63.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !139 ; 5 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.024.0.copyload.i = load double, ptr %i.au, align 8, !tbaa !9
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.13.0.copyload.i = load double, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.20.0.copyload.i = load double, ptr %.sroa.20.0..sroa_idx.i, align 8, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.av = tail call ptr @agraphof(ptr noundef nonnull %1) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 132
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !113
  %i.ba = and i32 %i.az, 1
  %.not56.i = icmp eq i32 %i.ba, 0                ; 4 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !140
  %i.be = fmul double %i.bd, 5.000000e-01         ; 3 uses
  %i.bf = fneg double %i.be                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !141 ; 3 uses
  %i.bi = fneg double %i.bh                       ; 2 uses
  %..i = select i1 %.not56.i, double %i.be, double %i.bh
  %.90.i = select i1 %.not56.i, double %i.bh, double %i.be
  %.91.i = select i1 %.not56.i, double %i.bf, double %i.bi
  %.92.i = select i1 %.not56.i, double %i.bi, double %i.bf
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.20.0.i = phi double [ %.sroa.20.0.copyload.i, %bb.f ], [ %..i, %bb.g ] ; 2 uses
  %.sroa.13.0.i = phi double [ %.sroa.13.0.copyload.i, %bb.f ], [ %.90.i, %bb.g ] ; 2 uses
  %.sroa.8.0.i = phi double [ %.sroa.8.0.copyload.i, %bb.f ], [ %.91.i, %bb.g ] ; 2 uses
  %.sroa.024.0.i = phi double [ %.sroa.024.0.copyload.i, %bb.f ], [ %.92.i, %bb.g ] ; 2 uses
  %i.bj = fadd double %.sroa.20.0.i, %.sroa.8.0.i
  %i.bk = fmul double %i.bj, 5.000000e-01         ; 2 uses
  %i.bl = fadd double %.sroa.13.0.i, %.sroa.024.0.i
  %i.bm = fmul double %i.bl, 5.000000e-01         ; 2 uses
  %i.bn = and i32 %i.as, 1
  %i.bo = icmp eq i32 %i.bn, 0                    ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = fadd double %.sroa.05.0.i69.i, %i.bm
  %i.bq = fsub double %i.bp, %.sroa.05.0.i59.i    ; 2 uses
  %i.br = fadd double %.sroa.6.0.i68.i, %.sroa.8.0.i
  %i.bs = fsub double %i.br, %.sroa.6.0.i58.i     ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bt)
end_hunk_1
