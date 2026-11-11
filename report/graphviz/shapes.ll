Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@poly_init:bb.a
.thread:                                          ; preds = %bb.ak, %bb.al, %bb.am, %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !38
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !45
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !77 ; 2 uses
  %.not534 = icmp eq ptr %i.fn, null
  br i1 %.not534, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !166
  %i.fp = load double, ptr %1, align 16
  %i.fq = load double, ptr %i.ep, align 8
  %i.fr = call { double, double } %i.fo(double %i.fp, double %i.fq) #26 ; 2 uses
  %i.fs = extractvalue { double, double } %i.fr, 0
  %i.ft = extractvalue { double, double } %i.fr, 1 ; 2 uses
  store double %i.fs, ptr %1, align 16, !tbaa !10
  store double %i.ft, ptr %i.ep, align 8, !tbaa !10
  br label %bb.au

bb.ap:                                            ; preds = %.thread
  %i.fu = load double, ptr %i.ep, align 8, !tbaa !17 ; 3 uses
  %i.fv = fmul double %i.fu, f0x3FF6A09E667F3BCD  ; 3 uses
  %i.fw = fcmp ule double %i.aw, %i.fv
  %brmerge = or i1 %i.fw, %.not690
  br i1 %brmerge, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = fdiv double %i.fu, %i.aw                ; 2 uses
  %i.fy = fneg double %i.fx
  %i.fz = call double @llvm.fmuladd.f64(double %i.fy, double %i.fx, double 1.000000e+00)
  %i.ga = fdiv double 1.000000e+00, %i.fz
  %i.gb = call double @sqrt(double noundef %i.ga) #26
  %i.gc = load double, ptr %1, align 16, !tbaa !18
  %i.gd = fmul double %i.gb, %i.gc                ; 2 uses
  store double %i.gd, ptr %1, align 16, !tbaa !18
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ge = load double, ptr %1, align 16, !tbaa !18
  %i.gf = fmul double %i.ge, f0x3FF6A09E667F3BCD  ; 2 uses
  store double %i.gf, ptr %1, align 16, !tbaa !18
  store double %i.fv, ptr %i.ep, align 8, !tbaa !17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gg = phi double [ %i.fv, %bb.ar ], [ %i.fu, %bb.aq ] ; 2 uses
  %i.gh = phi double [ %i.gf, %bb.ar ], [ %i.gd, %bb.aq ]
  %i.gi = icmp ugt i64 %.1510, 2
  br i1 %i.gi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gj = uitofp i64 %.1510 to double
  %i.gk = fdiv double f0x400921FB54442D18, %i.gj
  %i.gl = call double @cos(double noundef %i.gk) #26
  %i.gm = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gg, i64 1
  %i.go = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = fdiv <2 x double> %i.gn, %i.gp          ; 2 uses
  store <2 x double> %i.gq, ptr %1, align 16, !tbaa !10
  %i.gr = extractelement <2 x double> %i.gq, i64 1
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge655, %bb.ao, %bb.at, %bb.as
  %.sroa.3.0.copyload = phi double [ %i.ft, %bb.ao ], [ %i.gr, %bb.at ], [ %i.gg, %bb.as ], [ %.sroa.3.0.copyload.pre, %._crit_edge655 ]
  %i.gs = phi i1 [ false, %bb.ao ], [ false, %bb.at ], [ false, %bb.as ], [ true, %._crit_edge655 ] ; 2 uses
  %i.gt = load ptr, ptr @N_fixed, align 8, !tbaa !56
  %i.gu = call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.gt, ptr noundef nonnull @.str.15) #26 ; 3 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !76
  %i.gw = icmp eq i8 %i.gv, 115
  br i1 %i.gw, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gx = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.gu, ptr noundef nonnull dereferenceable(6) @.str.16) #31
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store double %i.ax, ptr %1, align 16, !tbaa !10
  store double %i.aw, ptr %i.ep, align 8, !tbaa !10
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 2048, ptr %i.gz, align 8
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.ha = call zeroext i1 @mapbool(ptr noundef nonnull %i.gu) #26
  br i1 %i.ha, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.hb = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 136
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !59 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hf = load double, ptr %i.he, align 8, !tbaa !159
  %i.hg = fcmp olt double %i.ax, %i.hf
  br i1 %i.hg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !167
  %i.hj = fcmp olt double %i.aw, %i.hi
  br i1 %i.hj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hk = call ptr @agnameof(ptr noundef nonnull %0) #26
  %i.hl = call ptr @agraphof(ptr noundef nonnull %0) #26
  %i.hm = call ptr @agnameof(ptr noundef %i.hl) #26
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.17, ptr noundef %i.hk, ptr noundef %i.hm) #26
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store double %i.ax, ptr %1, align 16, !tbaa !10
  store double %i.aw, ptr %i.ep, align 8, !tbaa !10
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ax
  %i.hn = load <2 x double>, ptr %1, align 16, !tbaa !10
  %i.ho = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.av, <2 x double> %i.hn) ; 4 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1
  %i.hq = extractelement <2 x double> %i.ho, i64 0
  store <2 x double> %i.ho, ptr %1, align 16, !tbaa !10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.aw
  %.not535 = phi i1 [ false, %bb.aw ], [ true, %bb.bb ], [ true, %bb.bc ] ; 2 uses
  %i.hr = phi double [ %i.aw, %bb.aw ], [ %i.aw, %bb.bb ], [ %i.hp, %bb.bc ]
  %i.hs = phi double [ %i.ax, %bb.aw ], [ %i.ax, %bb.bb ], [ %i.hq, %bb.bc ]
  %i.ht = phi <2 x double> [ %i.av, %bb.aw ], [ %i.av, %bb.bb ], [ %i.ho, %bb.bc ]
  br i1 %i.y, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hu = call nsz double @llvm.maxnum.f64(double %i.hs, double %i.hr) ; 3 uses
  store double %i.hu, ptr %i.ep, align 8, !tbaa !17
  store double %i.hu, ptr %1, align 16, !tbaa !18
  %i.hv = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hx = phi <2 x double> [ %i.hw, %bb.be ], [ %i.ht, %bb.bd ]
  %i.hy = load ptr, ptr @N_nojustify, align 8, !tbaa !56
  %i.hz = call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.hy, ptr noundef nonnull @.str.15) #26
  %i.ia = call zeroext i1 @mapbool(ptr noundef %i.hz) #26
  %i.ib = extractelement <2 x double> %i.dh, i64 0 ; 4 uses
  br i1 %i.ia, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.gs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ic = load double, ptr %1, align 16, !tbaa !18
  %i.id = call nsz double @llvm.maxnum.f64(double %i.ib, double %i.ic)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.ie = load double, ptr %i.ep, align 8, !tbaa !17 ; 3 uses
  %i.if = extractelement <2 x double> %i.dh, i64 1 ; 3 uses
  %i.ig = fcmp olt double %i.if, %i.ie
  br i1 %i.ig, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ih = load double, ptr %1, align 16, !tbaa !18
  %i.ii = fmul double %i.if, %i.if
  %i.ij = fmul double %i.ie, %i.ie
  %i.ik = fdiv double %i.ii, %i.ij
  %i.il = fsub double 1.000000e+00, %i.ik
  %i.im = call double @sqrt(double noundef %i.il) #26
  %i.in = fmul double %i.ih, %i.im
  %i.io = call nsz double @llvm.maxnum.f64(double %i.ib, double %i.in)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bi, %bb.bh, %bb.bj
  %.sink695 = phi double [ %i.id, %bb.bh ], [ %i.ib, %bb.bi ], [ %i.io, %bb.bj ], [ %i.ib, %bb.bf ]
  %i.ip = fsub double %.sink695, %i.cr
  %i.iq = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 136
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !59 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  store double %i.ip, ptr %i.it, align 8, !tbaa !168
  br i1 %.not535, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.iu = load double, ptr %i.ep, align 8, !tbaa !17
  %i.iv = fsub double %i.iu, %.sroa.3.0.copyload  ; 2 uses
  %i.iw = extractelement <2 x double> %i.dh, i64 1 ; 3 uses
  %i.ix = extractelement <2 x double> %i.eo, i64 1 ; 2 uses
  %i.iy = fcmp olt double %i.iw, %i.ix
  %i.iz = fsub double %i.ix, %i.iw
  %i.ja = fadd double %i.iz, %i.iv
  %.0476 = select i1 %i.iy, double %i.ja, double %i.iv
  %i.jb = fadd double %i.iw, %.0476
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  store double %i.jb, ptr %i.jc, align 8, !tbaa !169
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.jd = load ptr, ptr @N_penwidth, align 8, !tbaa !56
  %i.je = call double @late_double(ptr noundef nonnull %0, ptr noundef %i.jd, double noundef 1.000000e+00, double noundef 0.000000e+00) #26 ; 3 uses
  %2 = icmp ne i32 %i.ba, 0                       ; 2 uses
  %spec.store.select = select i1 %2, i64 %i.bb, i64 1
  %i.jf = fcmp ogt double %i.je, 0.000000e+00
  %or.cond10 = select i1 %2, i1 %i.jf, i1 false
  %3 = zext i1 %or.cond10 to i64
  %spec.select = add nsw i64 %spec.store.select, %3 ; 8 uses
  %i.jg = icmp ult i64 %.1510, 3
  br i1 %i.jg, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  %i.jh = shl nsw i64 %spec.select, 1             ; 3 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %.thread.i, label %bb.bo

.thread.i:                                        ; preds = %bb.bn
  %i.ji = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit

bb.bo:                                            ; preds = %bb.bn
  %mul.ov.i = icmp ugt i64 %i.jh, 1152921504606846975
  br i1 %mul.ov.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.jk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jj, ptr noundef nonnull @.str.5, i64 noundef %i.jh, i64 noundef 16) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.jl = call noalias ptr @calloc(i64 noundef %i.jh, i64 noundef 16) #27 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.br, label %gv_calloc.exit

bb.br:                                            ; preds = %bb.bq
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.jo = shl nuw nsw i64 %spec.select, 5
  %i.jp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jn, ptr noundef nonnull @.str.6, i64 noundef %i.jo) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.bq
  %i.jq = phi ptr [ %i.ji, %.thread.i ], [ %i.jl, %bb.bq ] ; 8 uses
  %i.jr = load <2 x double>, ptr %1, align 16, !tbaa !10 ; 2 uses
  %i.js = fmul <2 x double> %i.jr, splat (double 5.000000e-01) ; 5 uses
  %i.jt = fneg <2 x double> %i.js
  store <2 x double> %i.jt, ptr %i.jq, align 8, !tbaa !10
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <2 x double> %i.js, ptr %i.ju, align 8, !tbaa !10
  %i.jv = icmp ugt i32 %i.ba, 1
  br i1 %i.jv, label %.preheader.preheader, label %bb.bt

.preheader.preheader:                             ; preds = %gv_calloc.exit
  %i.jw = add nsw i64 %i.bb, -1                   ; 3 uses
  %xtraiter750 = and i64 %i.jw, 1
  %i.jx = icmp eq i32 %i.ba, 2
  br i1 %i.jx, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter757 = and i64 %i.jw, -2
  br label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod754.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod754.not, label %bb.bs, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.0502636.epil.init = phi i64 [ 2, %.preheader.preheader ], [ %i.kn, %.unr-lcssa ]
  %.epil.init753 = phi <2 x double> [ %i.js, %.preheader.preheader ], [ %i.ki, %.unr-lcssa ]
  %lcmp.mod756 = trunc i64 %i.jw to i1
  call void @llvm.assume(i1 %lcmp.mod756)
  %i.jy = fadd <2 x double> %.epil.init753, splat (double 4.000000e+00) ; 3 uses
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %.0502636.epil.init ; 2 uses
  %i.ka = fneg <2 x double> %i.jy
  store <2 x double> %i.ka, ptr %i.jz, align 8, !tbaa !10
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <2 x double> %i.jy, ptr %i.kb, align 8, !tbaa !10
  br label %bb.bs

bb.bs:                                            ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa = phi <2 x double> [ %i.ki, %.unr-lcssa ], [ %i.jy, %.preheader.epil.preheader ] ; 2 uses
  %i.kc = fmul <2 x double> %.lcssa, splat (double 2.000000e+00)
  br label %bb.bt

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0502636 = phi i64 [ 2, %.preheader.preheader.new ], [ %i.kn, %.preheader ] ; 3 uses
  %i.kd = phi <2 x double> [ %i.js, %.preheader.preheader.new ], [ %i.ki, %.preheader ]
  %niter758 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter758.next.1, %.preheader ]
  %i.ke = fadd <2 x double> %i.kd, splat (double 4.000000e+00) ; 3 uses
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %.0502636 ; 2 uses
  %i.kg = fneg <2 x double> %i.ke
  store <2 x double> %i.kg, ptr %i.kf, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <2 x double> %i.ke, ptr %i.kh, align 8, !tbaa !10
  %i.ki = fadd <2 x double> %i.ke, splat (double 4.000000e+00) ; 5 uses
  %i.kj = getelementptr [16 x i8], ptr %i.jq, i64 %.0502636 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 32
  %i.kl = fneg <2 x double> %i.ki
  store <2 x double> %i.kl, ptr %i.kk, align 8, !tbaa !10
  %i.km = getelementptr i8, ptr %i.kj, i64 48
  store <2 x double> %i.ki, ptr %i.km, align 8, !tbaa !10
  %i.kn = add i64 %.0502636, 4                    ; 2 uses
  %niter758.next.1 = add i64 %niter758, 2         ; 2 uses
  %niter758.ncmp.1 = icmp eq i64 %niter758.next.1, %unroll_iter757
  br i1 %niter758.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !148

bb.bt:                                            ; preds = %bb.bs, %gv_calloc.exit
  %i.ko = phi <2 x double> [ %i.kc, %bb.bs ], [ %i.jr, %gv_calloc.exit ] ; 3 uses
  %i.kp = phi <2 x double> [ %.lcssa, %bb.bs ], [ %i.js, %gv_calloc.exit ]
  %i.kq = icmp ugt i64 %spec.select, %i.bb
  br i1 %i.kq, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %bb.bt
  %i.kr = fmul double %i.je, 5.000000e-01
  %i.ks = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ku = fadd <2 x double> %i.kt, %i.kp          ; 3 uses
  %.idx = shl nsw i64 %i.bb, 5
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx ; 2 uses
  %i.kw = fneg <2 x double> %i.ku
  store <2 x double> %i.kw, ptr %i.kv, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store <2 x double> %i.ku, ptr %i.kx, align 8, !tbaa !10
  %i.ky = fmul <2 x double> %i.ku, splat (double 2.000000e+00)
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bm
  %i.kz = mul i64 %spec.select, %.1510            ; 5 uses
  %.not.i541 = icmp eq i64 %i.kz, 0
  br i1 %.not.i541, label %.thread.i544, label %bb.bw

.thread.i544:                                     ; preds = %bb.bv
  %i.la = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit545

bb.bw:                                            ; preds = %bb.bv
  %mul.ov.i543 = icmp ugt i64 %i.kz, 1152921504606846975
  br i1 %mul.ov.i543, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.lb = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.lc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lb, ptr noundef nonnull @.str.5, i64 noundef %i.kz, i64 noundef 16) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.ld = call noalias ptr @calloc(i64 noundef %i.kz, i64 noundef 16) #27 ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.bz, label %gv_calloc.exit545

bb.bz:                                            ; preds = %bb.by
  %i.lf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.lg = shl nuw i64 %i.kz, 4
  %i.lh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lf, ptr noundef nonnull @.str.6, i64 noundef %i.lg) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit545:                                ; preds = %.thread.i544, %bb.by
  %i.li = phi ptr [ %i.la, %.thread.i544 ], [ %i.ld, %bb.by ] ; 21 uses
  %i.lj = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !38
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !45
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 56
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !77 ; 2 uses
  %.not536 = icmp eq ptr %i.lp, null
  br i1 %.not536, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %gv_calloc.exit545
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !170
  call void %i.lr(ptr noundef %i.li, ptr noundef nonnull %1) #26
  %i.ls = load <2 x double>, ptr %1, align 16, !tbaa !10
  %i.lt = fmul <2 x double> %i.ls, splat (double 5.000000e-01)
  br label %.loopexit563

bb.cb:                                            ; preds = %gv_calloc.exit545
  %i.lu = uitofp i64 %.1510 to double
  %i.lv = fdiv double f0x401921FB54442D18, %i.lu  ; 5 uses
  %i.lw = fmul nnan double %i.lv, 5.000000e-01    ; 2 uses
  %i.lx = call double @sin(double noundef %i.lw) #26 ; 2 uses
  %i.ly = call double @llvm.fabs.f64(double %.0496)
  %i.lz = call double @llvm.fabs.f64(double %.0497)
  %i.ma = fadd double %i.lz, %i.ly
  %i.mb = call double @hypot(double noundef %i.ma, double noundef 1.000000e+00) #26 ; 2 uses
  %i.mc = fmul double %.0496, f0x3FF6A09E667F3BCD
  %i.md = call double @cos(double noundef %i.lw) #26
  %i.me = fdiv double %i.mc, %i.md                ; 2 uses
  %i.mf = fmul double %.0497, 5.000000e-01        ; 2 uses
  %i.mg = fadd nnan double %i.lv, f0xC00921FB54442D18
  %i.mh = fmul nnan double %i.mg, 5.000000e-01    ; 3 uses
  %i.mi = call double @sin(double noundef %i.mh) #26
  %i.mj = call double @cos(double noundef %i.mh) #26
  %i.mk = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.ml = insertelement <2 x double> %i.mk, double %i.mi, i64 1
  %i.mm = fmul <2 x double> %i.ml, splat (double 5.000000e-01) ; 2 uses
  %i.mn = fsub nnan double f0x400921FB54442D18, %i.lv
  %i.mo = fmul nnan double %i.mn, 5.000000e-01
  %i.mp = fadd double %i.mh, %i.mo                ; 2 uses
  %i.mq = fdiv double %i.be, 1.800000e+02         ; 2 uses
  %i.mr = load <2 x double>, ptr %1, align 16, !tbaa !10 ; 2 uses
  br i1 %i.gs, label %.critedge.us, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.cb
  %i.ms = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@poly_init:bb.a
  %i.vb = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %.0497, ptr %i.vb, align 8, !tbaa !53
  %i.vc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %.0496, ptr %i.vc, align 8, !tbaa !54
  %i.vd = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %.0475, ptr %i.vd, align 8, !tbaa !77
  br i1 %.not535, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.loopexit
  %i.ve = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.dh, <2 x double> %i.uv)
  %i.vf = load ptr, ptr %i.g, align 8, !tbaa !23  ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 48
  %i.vh = fdiv <2 x double> %i.ve, splat (double 7.200000e+01)
  store <2 x double> %i.vh, ptr %i.vg, align 8, !tbaa !10
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 120
  %i.vj = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.dh, <2 x double> %i.uw) ; 2 uses
  %i.vk = extractelement <2 x double> %i.vj, i64 0
  %i.vl = fdiv double %i.vk, 7.200000e+01
  store double %i.vl, ptr %i.vi, align 8, !tbaa !80
  %i.vm = extractelement <2 x double> %i.vj, i64 1
  br label %bb.cn

bb.cm:                                            ; preds = %.loopexit
  %i.vn = fdiv <2 x double> %i.uv, splat (double 7.200000e+01)
  %i.vo = load ptr, ptr %i.g, align 8, !tbaa !23  ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 48
  store <2 x double> %i.vn, ptr %i.vp, align 8, !tbaa !10
  %i.vq = extractelement <2 x double> %i.uw, i64 0
  %i.vr = fdiv double %i.vq, 7.200000e+01
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 120
  store double %i.vr, ptr %i.vs, align 8, !tbaa !80
  %i.vt = extractelement <2 x double> %i.uw, i64 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.sroa.9.3.sink = phi double [ %i.vt, %bb.cm ], [ %i.vm, %bb.cl ]
  %.sink698 = phi ptr [ %i.vo, %bb.cm ], [ %i.vf, %bb.cl ] ; 2 uses
  %i.vu = fdiv double %.sroa.9.3.sink, 7.200000e+01
  %i.vv = getelementptr inbounds nuw i8, ptr %.sink698, i64 128
  store double %i.vu, ptr %i.vv, align 8, !tbaa !81
  %i.vw = getelementptr inbounds nuw i8, ptr %.sink698, i64 24
  store ptr %i.c, ptr %i.vw, align 8, !tbaa !82
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.e = load i32, ptr %i.d, align 4, !tbaa !83
  %i.f = and i32 %i.e, 4
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172  ; 2 uses
  store ptr %i.k, ptr @reclblp, align 8, !tbaa !84
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
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.6, i64 noundef %i.n) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.b
  %i.t = phi ptr [ %i.o, %.thread.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.u = tail call fastcc ptr @parse_reclbl(ptr noundef nonnull %0, i1 noundef zeroext %.not, i1 noundef zeroext true, ptr noundef %i.t) ; 2 uses
  %.not38 = icmp eq ptr %i.u, null
  br i1 %.not38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %gv_calloc.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !172
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.19, ptr noundef %i.y) #26
  store ptr @.str.20, ptr @reclblp, align 8, !tbaa !84
  %i.z = tail call fastcc ptr @parse_reclbl(ptr noundef nonnull %0, i1 noundef zeroext %.not, i1 noundef zeroext true, ptr noundef %i.t)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %gv_calloc.exit
  %.0 = phi ptr [ %i.u, %gv_calloc.exit ], [ %i.z, %bb.d ] ; 6 uses
  tail call void @free(ptr noundef %i.t) #26
  %i.aa = tail call fastcc { double, double } @size_reclbl(ptr noundef nonnull %0, ptr noundef %.0) ; 0 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !10
  %i.ae = fmul <2 x double> %i.ad, splat (double 7.200000e+01) ; 2 uses
  %i.af = load ptr, ptr @N_fixed, align 8, !tbaa !56
  %i.ag = tail call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull @.str.15) #26
  %i.ah = tail call zeroext i1 @mapbool(ptr noundef %i.ag) #26
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load <2 x double>, ptr %.0, align 8, !tbaa !10
  %i.aj = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ai, <2 x double> %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ak = phi <2 x double> [ %i.ae, %bb.e ], [ %i.aj, %bb.f ] ; 2 uses
  %i.al = load ptr, ptr @N_nojustify, align 8, !tbaa !56
  %i.am = tail call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.al, ptr noundef nonnull @.str.15) #26
  %i.an = tail call zeroext i1 @mapbool(ptr noundef %i.am) #26
  %i.ao = extractelement <2 x double> %i.ak, i64 0 ; 2 uses
  %i.ap = extractelement <2 x double> %i.ak, i64 1 ; 2 uses
  tail call fastcc void @resize_reclbl(ptr noundef %.0, double %i.ao, double %i.ap, i1 noundef zeroext %i.an)
  %i.aq = fmul double %i.ao, -5.000000e-01
  %i.ar = fmul double %i.ap, 5.000000e-01
  tail call fastcc void @pos_reclbl(ptr noundef %.0, double %i.aq, double %i.ar, i8 noundef zeroext 15)
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load <2 x double>, ptr %.0, align 8, !tbaa !10
  %i.av = fadd <2 x double> %i.au, <double -0.000000e+00, double 1.000000e+00>
  %i.aw = fdiv <2 x double> %i.av, splat (double 7.200000e+01)
  store <2 x double> %i.aw, ptr %i.at, align 8, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.0, ptr %i.ax, align 8, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @point_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 89) 64) #27 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.6, i64 noundef 64) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50
  %i.m = load ptr, ptr @N_width, align 8, !tbaa !56
  %i.n = tail call double @late_double(ptr noundef %0, ptr noundef %i.m, double noundef f0x7FEFFFFFFFFFFFFF, double noundef 1.000000e-02) #26
  %i.o = load ptr, ptr @N_height, align 8, !tbaa !56
  %i.p = tail call double @late_double(ptr noundef %0, ptr noundef %i.o, double noundef f0x7FEFFFFFFFFFFFFF, double noundef 2.000000e-02) #26 ; 2 uses
  %i.q = tail call nsz double @llvm.minnum.f64(double %i.n, double %i.p) ; 4 uses
  %lhsv.cast.i = bitcast double %i.q to i64
  %.not.i = icmp eq i64 %lhsv.cast.i, 9218868437227405311
  %lhsv.cast.i106 = bitcast double %i.p to i64
  %.not.i107 = icmp eq i64 %lhsv.cast.i106, 9218868437227405311
  %or.cond109 = select i1 %.not.i, i1 %.not.i107, i1 false
  br i1 %or.cond109, label %bb.c, label %bb.d

bb.c:                                             ; preds = %gv_alloc.exit
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store <2 x double> splat (double 5.000000e-02), ptr %i.s, align 8, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %gv_alloc.exit
  %i.t = fcmp ogt double %i.q, 0.000000e+00
  %i.u = tail call nsz double @llvm.maxnum.f64(double %i.q, double 3.000000e-04)
  %.0 = select i1 %i.t, double %i.u, double %i.q  ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store double %.0, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store double %.0, ptr %i.x, align 8, !tbaa !57
  %i.y = fmul double %.0, 7.200000e+01
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi double [ %i.y, %bb.d ], [ 3.600000e+00, %bb.c ] ; 2 uses
  %i.aa = load ptr, ptr @N_peripheries, align 8, !tbaa !56
  %i.ab = trunc i64 %i.l to i32
  %i.ac = tail call i32 @late_int(ptr noundef nonnull %0, ptr noundef %i.aa, i32 noundef %i.ab, i32 noundef 0) #26 ; 4 uses
  %i.ad = sext i32 %i.ac to i64                   ; 4 uses
  %i.ae = icmp ne i32 %i.ac, 0                    ; 2 uses
  %. = select i1 %i.ae, i64 %i.ad, i64 1
  %i.af = load ptr, ptr @N_penwidth, align 8, !tbaa !56
  %i.ag = tail call double @late_double(ptr noundef nonnull %0, ptr noundef %i.af, double noundef 1.000000e+00, double noundef 0.000000e+00) #26 ; 2 uses
  %i.ah = fcmp ogt double %i.ag, 0.000000e+00
  %or.cond = select i1 %i.ae, i1 %i.ah, i1 false  ; 2 uses
  %i.ai = zext i1 %or.cond to i64
  %.199.a = add nsw i64 %., %i.ai                 ; 4 uses
  %i.aj = shl nsw i64 %.199.a, 1                  ; 3 uses
  %.not.i108 = icmp eq i64 %.199.a, 0
  br i1 %.not.i108, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.ak = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %mul.ov.i = icmp ugt i64 %i.aj, 1152921504606846975
  br i1 %mul.ov.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.5, i64 noundef %i.aj, i64 noundef 16) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.an = tail call noalias ptr @calloc(i64 noundef %i.aj, i64 noundef 16) #27 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %gv_calloc.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.aq = shl nuw nsw i64 %.199.a, 5
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.6, i64 noundef %i.aq) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.h
  %i.as = phi ptr [ %i.ak, %.thread.i ], [ %i.an, %bb.h ] ; 9 uses
  %i.at = fmul double %i.z, 5.000000e-01          ; 6 uses
  %i.au = fneg double %i.at                       ; 2 uses
  store double %i.au, ptr %i.as, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store double %i.au, ptr %i.av, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %i.at, ptr %i.aw, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store double %i.at, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !10
  %i.ax = icmp ugt i32 %i.ac, 1
  %i.ay = insertelement <2 x double> poison, double %i.at, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %i.ax, label %.preheader.preheader, label %bb.k

.preheader.preheader:                             ; preds = %gv_calloc.exit
  %i.ba = add nsw i64 %i.ad, -1                   ; 3 uses
  %xtraiter = and i64 %i.ba, 1
  %i.bb = icmp eq i32 %i.ac, 2
  br i1 %i.bb, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.ba, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.096112 = phi i64 [ 2, %.preheader.preheader.new ], [ %i.bm, %.preheader ] ; 3 uses
  %i.bc = phi <2 x double> [ %i.az, %.preheader.preheader.new ], [ %i.bh, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.bd = fadd <2 x double> %i.bc, splat (double 4.000000e+00) ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.096112 ; 2 uses
  %i.bf = fneg <2 x double> %i.bd
  store <2 x double> %i.bf, ptr %i.be, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x double> %i.bd, ptr %i.bg, align 8, !tbaa !10
  %i.bh = fadd <2 x double> %i.bd, splat (double 4.000000e+00) ; 5 uses
  %i.bi = getelementptr [16 x i8], ptr %i.as, i64 %.096112 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %i.bk = fneg <2 x double> %i.bh
  store <2 x double> %i.bk, ptr %i.bj, align 8, !tbaa !10
  %i.bl = getelementptr i8, ptr %i.bi, i64 48
  store <2 x double> %i.bh, ptr %i.bl, align 8, !tbaa !10
  %i.bm = add i64 %.096112, 4                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !173

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.j, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.096112.epil.init = phi i64 [ 2, %.preheader.preheader ], [ %i.bm, %.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ %i.az, %.preheader.preheader ], [ %i.bh, %.unr-lcssa ]
  %lcmp.mod128 = trunc i64 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.bn = fadd <2 x double> %.epil.init, splat (double 4.000000e+00) ; 3 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.096112.epil.init ; 2 uses
  %i.bp = fneg <2 x double> %i.bn
  store <2 x double> %i.bp, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x double> %i.bn, ptr %i.bq, align 8, !tbaa !10
  %i.br = add i64 %.096112.epil.init, 2
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa125 = phi <2 x double> [ %i.bh, %.unr-lcssa ], [ %i.bn, %.preheader.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.bm, %.unr-lcssa ], [ %i.br, %.preheader.epil.preheader ]
  %i.bs = extractelement <2 x double> %.lcssa125, i64 0 ; 2 uses
  %i.bt = fmul double %i.bs, 2.000000e+00
  %i.bu = extractelement <2 x double> %.lcssa125, i64 1
  br label %bb.k

bb.k:                                             ; preds = %gv_calloc.exit, %bb.j
  %.097 = phi double [ %i.bt, %bb.j ], [ %i.z, %gv_calloc.exit ]
  %.sroa.15.1 = phi double [ %i.bu, %bb.j ], [ %i.at, %gv_calloc.exit ]
  %.sroa.0.1 = phi double [ %i.bs, %bb.j ], [ %i.at, %gv_calloc.exit ] ; 2 uses
  %.1 = phi i64 [ %.lcssa, %bb.j ], [ 2, %gv_calloc.exit ]
  %i.bv = icmp ugt i64 %.199.a, %i.ad
  %or.cond105 = and i1 %or.cond, %i.bv
  br i1 %or.cond105, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = fmul nnan double %i.ag, 5.000000e-01    ; 2 uses
  %i.bx = fadd double %i.bw, %.sroa.0.1           ; 3 uses
  %i.by = fadd double %i.bw, %.sroa.15.1          ; 2 uses
  %i.bz = fneg double %i.bx
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.1 ; 4 uses
  store double %i.bz, ptr %i.ca, align 8, !tbaa !18
  %i.cb = fneg double %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store double %i.cb, ptr %i.cc, align 8, !tbaa !17
  %i.cd = getelementptr i8, ptr %i.ca, i64 16
  store double %i.bx, ptr %i.cd, align 8, !tbaa !18
  %i.ce = getelementptr i8, ptr %i.ca, i64 24
  store double %i.by, ptr %i.ce, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.2 = phi double [ %i.bx, %bb.l ], [ %.sroa.0.1, %bb.k ]
  %i.cf = fmul double %.sroa.0.2, 2.000000e+00
  store i32 1, ptr %i.a, align 8, !tbaa !49
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ad, ptr %i.cg, align 8, !tbaa !50
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %i.ch, align 8, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.as, ptr %i.ci, align 8, !tbaa !77
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !23  ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cm = insertelement <2 x double> poison, double %.097, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cf, i64 1
  %i.co = fdiv <2 x double> %i.cn, splat (double 7.200000e+01) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0 ; 2 uses
  store double %i.cp, ptr %i.ck, align 8, !tbaa !57
  store double %i.cp, ptr %i.cl, align 8, !tbaa !58
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  %i.cr = extractelement <2 x double> %i.co, i64 1 ; 2 uses
  store double %i.cr, ptr %i.cq, align 8, !tbaa !80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  store double %i.cr, ptr %i.cs, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %i.a, ptr %i.ct, align 8, !tbaa !82
  ret void
}

declare void @epsf_init(ptr noundef) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @isPolygon(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = icmp eq ptr %i.g, @poly_init
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @find_user_shape(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @UserShape, align 8, !tbaa !86 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr @N_UserShape, align 8, !tbaa !87 ; 2 uses
  %.not13 = icmp eq i64 %i.b, 0
  br i1 %.not13, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.0610, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %i.b
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.0610 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0610
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !174

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr @UserShape, align 8, !tbaa !86 ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %.pre.i = load i64, ptr @N_UserShape, align 8, !tbaa !87 ; 5 uses
  br i1 %.not.i.i, label %.loopexit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit
  %.not13.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not13.i.i, label %.thread17, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.n = add nuw i64 %.0610.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %.pre.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.0610.i.i = phi i64 [ %i.n, %bb.e ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0610.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %.013) #31
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %user_shape.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.e, %.loopexit
  %i.t = add i64 %.pre.i, 1                       ; 5 uses
  store i64 %i.t, ptr @N_UserShape, align 8, !tbaa !87
  %i.u = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit.i
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !15
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
  store i64 1, ptr @N_UserShape, align 8, !tbaa !87
  %i.ac = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 8) #32 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %.thread18

bb.j:                                             ; preds = %.thread17, %bb.i
  %i.ae = phi i64 [ 8, %.thread17 ], [ %i.y, %bb.i ]
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.6, i64 noundef %i.ae) #28 ; 0 uses
end_hunk_1
