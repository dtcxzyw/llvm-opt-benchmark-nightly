Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_chromakey?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@do_chromakey_slice:bb.a
  %i.hn = load i32, ptr %i.ac, align 8, !tbaa !47
  %i.ho = mul nsw i32 %i.hn, %i.fn
  %i.hp = add nsw i32 %i.ho, %i.he
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %i.hm, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !46
  br label %.split.us.2

.split.us.2:                                      ; preds = %.split.us.1, %get_pixel_uv.exit.1.2, %bb.r, %bb.s
  %.sroa.1565.4 = phi i8 [ %.sroa.1565.3, %get_pixel_uv.exit.1.2 ], [ %.sroa.1565.3, %bb.s ], [ %.sroa.1565.3, %bb.r ], [ %.sroa.1565.1, %.split.us.1 ] ; 3 uses
  %.sroa.1766.4 = phi i8 [ %.sroa.1766.3, %get_pixel_uv.exit.1.2 ], [ %.sroa.1766.3, %bb.s ], [ %.sroa.1766.3, %bb.r ], [ %.sroa.1766.1, %.split.us.1 ] ; 3 uses
  %.sroa.1967.4 = phi i8 [ %.sroa.1967.1, %get_pixel_uv.exit.1.2 ], [ %i.hl, %bb.s ], [ %.sroa.1967.1, %bb.r ], [ %.sroa.1967.1, %.split.us.1 ] ; 3 uses
  %.sroa.15.4 = phi i8 [ %.sroa.15.3, %get_pixel_uv.exit.1.2 ], [ %.sroa.15.3, %bb.s ], [ %.sroa.15.3, %bb.r ], [ %.sroa.15.1, %.split.us.1 ] ; 3 uses
  %.sroa.17.4 = phi i8 [ %.sroa.17.3, %get_pixel_uv.exit.1.2 ], [ %.sroa.17.3, %bb.s ], [ %.sroa.17.3, %bb.r ], [ %.sroa.17.1, %.split.us.1 ] ; 3 uses
  %.sroa.19.4 = phi i8 [ %.sroa.19.1, %get_pixel_uv.exit.1.2 ], [ %i.hs, %bb.s ], [ %.sroa.19.1, %bb.r ], [ %.sroa.19.1, %.split.us.1 ] ; 3 uses
  %i.ht = zext i8 %.sroa.059.3 to i32
  %i.hu = zext i8 %.sroa.0.3 to i32
  %i.hv = zext i8 %.sroa.560.2 to i32
  %i.hw = zext i8 %.sroa.5.2 to i32
  %i.hx = zext i8 %.sroa.761.2 to i32
  %i.hy = zext i8 %.sroa.7.2 to i32
  %i.hz = zext i8 %.sroa.962.4 to i32
  %i.ia = zext i8 %.sroa.9.4 to i32
  %i.ib = zext i8 %.sroa.1163.4 to i32
  %i.ic = zext i8 %.sroa.11.4 to i32
  %i.id = zext i8 %.sroa.1364.4 to i32
  %i.ie = zext i8 %.sroa.13.4 to i32
  %i.if = zext i8 %.sroa.1565.4 to i32
  %i.ig = zext i8 %.sroa.15.4 to i32
  %i.ih = zext i8 %.sroa.1766.4 to i32
  %i.ii = zext i8 %.sroa.17.4 to i32
  %i.ij = load i16, ptr %i.p, align 4, !tbaa !51
  %i.ik = load i16, ptr %i.s, align 2, !tbaa !51
  %i.il = zext i16 %i.ij to i32                   ; 9 uses
  %i.im = zext i16 %i.ik to i32                   ; 9 uses
  %i.in = sub nsw i32 %i.ih, %i.il                ; 2 uses
  %i.io = sub nsw i32 %i.if, %i.il                ; 2 uses
  %i.ip = sub nsw i32 %i.id, %i.il                ; 2 uses
  %i.iq = sub nsw i32 %i.ib, %i.il                ; 2 uses
  %i.ir = sub nsw i32 %i.hz, %i.il                ; 2 uses
  %i.is = sub nsw i32 %i.hx, %i.il                ; 2 uses
  %i.it = sub nsw i32 %i.hv, %i.il                ; 2 uses
  %i.iu = sub nsw i32 %i.ht, %i.il                ; 2 uses
  %i.iv = sub nsw i32 %i.ii, %i.im                ; 2 uses
  %i.iw = sub nsw i32 %i.ig, %i.im                ; 2 uses
  %i.ix = sub nsw i32 %i.ie, %i.im                ; 2 uses
  %i.iy = sub nsw i32 %i.ic, %i.im                ; 2 uses
  %i.iz = sub nsw i32 %i.ia, %i.im                ; 2 uses
  %i.ja = sub nsw i32 %i.hy, %i.im                ; 2 uses
  %i.jb = sub nsw i32 %i.hw, %i.im                ; 2 uses
  %i.jc = sub nsw i32 %i.hu, %i.im                ; 2 uses
  %i.jd = mul nsw i32 %i.in, %i.in
  %i.je = mul nsw i32 %i.io, %i.io
  %i.jf = mul nsw i32 %i.ip, %i.ip
  %i.jg = mul nsw i32 %i.iq, %i.iq
  %i.jh = mul nsw i32 %i.ir, %i.ir
  %i.ji = mul nsw i32 %i.is, %i.is
  %i.jj = mul nsw i32 %i.it, %i.it
  %i.jk = mul nsw i32 %i.iu, %i.iu
  %i.jl = mul nsw i32 %i.iv, %i.iv
  %i.jm = mul nsw i32 %i.iw, %i.iw
  %i.jn = mul nsw i32 %i.ix, %i.ix
  %i.jo = mul nsw i32 %i.iy, %i.iy
  %i.jp = mul nsw i32 %i.iz, %i.iz
  %i.jq = mul nsw i32 %i.ja, %i.ja
  %i.jr = mul nsw i32 %i.jb, %i.jb
  %i.js = mul nsw i32 %i.jc, %i.jc
  %i.jt = add nuw nsw i32 %i.jl, %i.jd
  %i.ju = add nuw nsw i32 %i.jm, %i.je
  %i.jv = add nuw nsw i32 %i.jn, %i.jf
  %i.jw = add nuw nsw i32 %i.jo, %i.jg
  %i.jx = add nuw nsw i32 %i.jp, %i.jh
  %i.jy = add nuw nsw i32 %i.jq, %i.ji
  %i.jz = add nuw nsw i32 %i.jr, %i.jj
  %i.ka = add nuw nsw i32 %i.js, %i.jk
  %i.kb = uitofp nsz nneg i32 %i.jt to double
  %i.kc = uitofp nsz nneg i32 %i.ju to double
  %i.kd = uitofp nsz nneg i32 %i.jv to double
  %i.ke = uitofp nsz nneg i32 %i.jw to double
  %i.kf = uitofp nsz nneg i32 %i.jx to double
  %i.kg = uitofp nsz nneg i32 %i.jy to double
  %i.kh = uitofp nsz nneg i32 %i.jz to double
  %i.ki = uitofp nsz nneg i32 %i.ka to double
  %i.kj = insertelement <8 x double> poison, double %i.ki, i64 0
  %i.kk = insertelement <8 x double> %i.kj, double %i.kh, i64 1
  %i.kl = insertelement <8 x double> %i.kk, double %i.kg, i64 2
  %i.km = insertelement <8 x double> %i.kl, double %i.kf, i64 3
  %i.kn = insertelement <8 x double> %i.km, double %i.ke, i64 4
  %i.ko = insertelement <8 x double> %i.kn, double %i.kd, i64 5
  %i.kp = insertelement <8 x double> %i.ko, double %i.kc, i64 6
  %i.kq = insertelement <8 x double> %i.kp, double %i.kb, i64 7
  %i.kr = fdiv nsz <8 x double> %i.kq, splat (double 1.300500e+05) ; 4 uses
  %i.ks = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.kr) ; 2 uses
  %i.kt = shufflevector <8 x double> %i.ks, <8 x double> poison, <2 x i32> <i32 0, i32 poison>
  %shift = shufflevector <8 x double> %i.ks, <8 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x double> %i.kt, %shift
  %i.ku = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.kr) ; 2 uses
  %i.kv = shufflevector <8 x double> %i.ku, <8 x double> poison, <2 x i32> <i32 2, i32 poison>
  %foldExtExtBinop81 = fadd nsz <2 x double> %foldExtExtBinop, %i.kv
  %shift83 = shufflevector <8 x double> %i.ku, <8 x double> poison, <2 x i32> <i32 3, i32 poison>
  %foldExtExtBinop84 = fadd nsz <2 x double> %foldExtExtBinop81, %shift83
  %i.kw = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.kr) ; 2 uses
  %i.kx = shufflevector <8 x double> %i.kw, <8 x double> poison, <2 x i32> <i32 4, i32 poison>
  %foldExtExtBinop86 = fadd nsz <2 x double> %foldExtExtBinop84, %i.kx
  %shift88 = shufflevector <8 x double> %i.kw, <8 x double> poison, <2 x i32> <i32 5, i32 poison>
  %foldExtExtBinop89 = fadd nsz <2 x double> %foldExtExtBinop86, %shift88
  %i.ky = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.kr) ; 2 uses
  %i.kz = shufflevector <8 x double> %i.ky, <8 x double> poison, <2 x i32> <i32 6, i32 poison>
  %foldExtExtBinop91 = fadd nsz <2 x double> %foldExtExtBinop89, %i.kz
  %shift93 = shufflevector <8 x double> %i.ky, <8 x double> poison, <2 x i32> <i32 7, i32 poison>
  %foldExtExtBinop94 = fadd nsz <2 x double> %foldExtExtBinop91, %shift93
  %i.la = extractelement <2 x double> %foldExtExtBinop94, i64 0
  %i.lb = zext i8 %.sroa.1967.4 to i32
  %i.lc = sub nsw i32 %i.lb, %i.il                ; 2 uses
  %i.ld = zext i8 %.sroa.19.4 to i32
  %i.le = sub nsw i32 %i.ld, %i.im                ; 2 uses
  %i.lf = mul nsw i32 %i.lc, %i.lc
  %i.lg = mul nsw i32 %i.le, %i.le
  %i.lh = add nuw nsw i32 %i.lg, %i.lf
  %i.li = uitofp nsz nneg i32 %i.lh to double
  %i.lj = fdiv nsz double %i.li, 1.300500e+05
  %i.lk = tail call nsz double @llvm.sqrt.f64(double %i.lj)
  %i.ll = fadd nsz double %i.la, %i.lk
  %i.lm = fdiv nsz double %i.ll, 9.000000e+00     ; 2 uses
  %i.ln = load float, ptr %i.ad, align 4, !tbaa !56
  %i.lo = fpext nsz float %i.ln to double         ; 2 uses
  %i.lp = fcmp nsz ogt double %i.lo, 1.000000e-04
  %i.lq = load float, ptr %i.ae, align 8, !tbaa !57
  %i.lr = fpext nsz float %i.lq to double         ; 2 uses
  br i1 %i.lp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.split.us.2
  %i.ls = fsub nsz double %i.lm, %i.lr
  %i.lt = fdiv nsz double %i.ls, %i.lo            ; 2 uses
  %i.lu = fcmp nsz ogt double %i.lt, 0.000000e+00
  %i.lv = select nsz i1 %i.lu, double %i.lt, double 0.000000e+00 ; 2 uses
  %i.lw = fcmp nsz ogt double %i.lv, 1.000000e+00
  %..i.i = select nsz i1 %i.lw, double 1.000000e+00, double %i.lv
  %i.lx = fmul nsz double %..i.i, 2.550000e+02
  %i.ly = fptoui double %i.lx to i8
  br label %do_chromakey_pixel.exit

bb.u:                                             ; preds = %.split.us.2
  %i.lz = fcmp nsz ogt double %i.lm, %i.lr
  %i.ma = sext i1 %i.lz to i8
  br label %do_chromakey_pixel.exit

do_chromakey_pixel.exit:                          ; preds = %bb.t, %bb.u
  %.021.i = phi i8 [ %i.ly, %bb.t ], [ %i.ma, %bb.u ]
  %i.mb = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.mc = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.md = mul nsw i32 %i.mc, %i.am
  %i.me = trunc nuw nsw i64 %indvars.iv to i32
  %i.mf = add nsw i32 %i.md, %i.me
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds i8, ptr %i.mb, i64 %i.mg
  store i8 %.021.i, ptr %i.mh, align 1, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mi = load i32, ptr %i.w, align 8, !tbaa !52  ; 3 uses
  %i.mj = sext i32 %i.mi to i64
  %i.mk = icmp slt i64 %indvars.iv.next, %i.mj
  br i1 %i.mk, label %.preheader39, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %do_chromakey_pixel.exit, %.preheader40.._crit_edge_crit_edge
  %indvars.iv.next57.pre-phi = phi i64 [ %.pre, %.preheader40.._crit_edge_crit_edge ], [ %i.ap, %do_chromakey_pixel.exit ] ; 2 uses
  %i.ml = phi i32 [ %i.ak, %.preheader40.._crit_edge_crit_edge ], [ %i.mi, %do_chromakey_pixel.exit ]
  %.sroa.059.4 = phi i8 [ %.sroa.059.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.059.3, %do_chromakey_pixel.exit ]
  %.sroa.560.3 = phi i8 [ %.sroa.560.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.560.2, %do_chromakey_pixel.exit ]
  %.sroa.761.3 = phi i8 [ %.sroa.761.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.761.2, %do_chromakey_pixel.exit ]
  %.sroa.962.2 = phi i8 [ %.sroa.962.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.962.4, %do_chromakey_pixel.exit ]
  %.sroa.1163.2 = phi i8 [ %.sroa.1163.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.1163.4, %do_chromakey_pixel.exit ]
  %.sroa.1364.2 = phi i8 [ %.sroa.1364.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.1364.4, %do_chromakey_pixel.exit ]
  %.sroa.1565.2 = phi i8 [ %.sroa.1565.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.1565.4, %do_chromakey_pixel.exit ]
  %.sroa.1766.2 = phi i8 [ %.sroa.1766.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.1766.4, %do_chromakey_pixel.exit ]
  %.sroa.1967.2 = phi i8 [ %.sroa.1967.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.1967.4, %do_chromakey_pixel.exit ]
  %.sroa.0.4 = phi i8 [ %.sroa.0.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.0.3, %do_chromakey_pixel.exit ]
  %.sroa.5.3 = phi i8 [ %.sroa.5.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.5.2, %do_chromakey_pixel.exit ]
  %.sroa.7.3 = phi i8 [ %.sroa.7.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.7.2, %do_chromakey_pixel.exit ]
  %.sroa.9.2 = phi i8 [ %.sroa.9.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.9.4, %do_chromakey_pixel.exit ]
  %.sroa.11.2 = phi i8 [ %.sroa.11.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.11.4, %do_chromakey_pixel.exit ]
  %.sroa.13.2 = phi i8 [ %.sroa.13.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.13.4, %do_chromakey_pixel.exit ]
  %.sroa.15.2 = phi i8 [ %.sroa.15.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.15.4, %do_chromakey_pixel.exit ]
  %.sroa.17.2 = phi i8 [ %.sroa.17.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.17.4, %do_chromakey_pixel.exit ]
  %.sroa.19.2 = phi i8 [ %.sroa.19.0, %.preheader40.._crit_edge_crit_edge ], [ %.sroa.19.4, %do_chromakey_pixel.exit ]
  %exitcond.not = icmp eq i64 %indvars.iv.next57.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge45, label %.preheader40, !llvm.loop !66

._crit_edge45:                                    ; preds = %._crit_edge, %.preheader40.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_chromakey16_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
.preheader48:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !51   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 14 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !51   ; 9 uses
  %.fr = freeze i32 %i.b                          ; 4 uses
  %i.i = sext i32 %.fr to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp slt i32 %i.n, %i.s
  br i1 %i.t, label %.preheader47.lr.ph, label %._crit_edge54.split

.preheader47.lr.ph:                               ; preds = %.preheader48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !52   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 9 uses
  br i1 %i.w, label %.preheader47.lr.ph.split, label %._crit_edge54.split

.preheader47.lr.ph.split:                         ; preds = %.preheader47.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ak = load i32, ptr %i.af, align 8, !tbaa !53 ; 9 uses
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !54 ; 3 uses
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !49
  %i.an = sitofp nsz i32 %i.am to double          ; 4 uses
  %i.ao = fmul nnan nsz double %i.an, %i.an
  %i.ap = fmul nnan nsz double %i.ao, 2.000000e+00 ; 2 uses
  %i.aq = load float, ptr %i.ac, align 4, !tbaa !56
  %i.ar = fpext nsz float %i.aq to double         ; 2 uses
  %i.as = fcmp nsz ogt double %i.ar, 1.000000e-04
  %i.at = load float, ptr %i.ab, align 8, !tbaa !57
  %i.au = fpext nsz float %i.at to double         ; 2 uses
  %i.av = zext nneg i32 %i.v to i64               ; 3 uses
  %sext = shl i64 %i.m, 32
  %i.aw = ashr exact i64 %sext, 32
  %i.ax = sext i32 %i.aj to i64
  %sext84 = shl i64 %i.r, 32
  %wide.trip.count66 = ashr exact i64 %sext84, 32
  %wide.trip.count = zext nneg i32 %i.v to i64
  %i.ay = insertelement <8 x double> poison, double %i.ap, i64 0
  %i.az = shufflevector <8 x double> %i.ay, <8 x double> poison, <8 x i32> zeroinitializer
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.lr.ph.split, %._crit_edge
  %.sroa.2676.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.2676.3, %._crit_edge ]
  %.sroa.2375.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.2375.3, %._crit_edge ]
  %.sroa.2074.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.2074.3, %._crit_edge ]
  %.sroa.1773.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.1773.3, %._crit_edge ]
  %.sroa.1472.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.1472.3, %._crit_edge ]
  %.sroa.1171.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.1171.3, %._crit_edge ]
  %.sroa.870.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.870.2, %._crit_edge ]
  %.sroa.569.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.569.2, %._crit_edge ]
  %.sroa.068.0 = phi i16 [ %i.f, %.preheader47.lr.ph.split ], [ %.sroa.068.3, %._crit_edge ]
  %.sroa.26.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.26.3, %._crit_edge ]
  %.sroa.23.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.23.3, %._crit_edge ]
  %.sroa.20.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.20.3, %._crit_edge ]
  %.sroa.17.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.17.3, %._crit_edge ]
  %.sroa.14.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.14.3, %._crit_edge ]
  %.sroa.11.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.11.3, %._crit_edge ]
  %.sroa.8.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.8.2, %._crit_edge ]
  %.sroa.5.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.5.2, %._crit_edge ]
  %.sroa.0.0 = phi i16 [ %i.h, %.preheader47.lr.ph.split ], [ %.sroa.0.3, %._crit_edge ]
  %indvars.iv63 = phi i64 [ %i.aw, %.preheader47.lr.ph.split ], [ %i.bh, %._crit_edge ] ; 4 uses
  %i.ba = mul nsw i64 %indvars.iv63, %i.ax
  %i.bb = getelementptr inbounds i8, ptr %i.ai, i64 %i.ba
  %i.bc = trunc i64 %indvars.iv63 to i32          ; 3 uses
  %i.bd = add nsw i32 %i.bc, -1
  %i.be = icmp sgt i32 %i.bc, 0
  %.not.i = icmp sge i32 %.fr, %i.bc
  %i.bf = lshr i32 %i.bd, %i.al                   ; 6 uses
  %i.bg = and i1 %.not.i, %i.be
  %i.bh = add i64 %indvars.iv63, 1                ; 3 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = icmp sgt i32 %i.bi, 0
  %.not.i.1 = icmp sge i32 %.fr, %i.bi
  %i.bl = lshr i32 %i.bj, %i.al                   ; 6 uses
  %i.bm = and i1 %.not.i.1, %i.bk
  %i.bn = trunc i64 %indvars.iv63 to i32          ; 2 uses
  %i.bo = add i32 %i.bn, 2                        ; 2 uses
  %i.bp = add i32 %i.bn, 1
  %i.bq = icmp sgt i32 %i.bo, 0
  %.not.i.2 = icmp sle i32 %i.bo, %.fr
  %i.br = lshr i32 %i.bp, %i.al                   ; 6 uses
  %i.bs = and i1 %.not.i.2, %i.bq
  br label %.preheader

.preheader:                                       ; preds = %.preheader47, %do_chromakey_pixel16.exit
  %.sroa.2676.1 = phi i16 [ %.sroa.2676.0, %.preheader47 ], [ %.sroa.2676.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.2375.1 = phi i16 [ %.sroa.2375.0, %.preheader47 ], [ %.sroa.2375.3, %do_chromakey_pixel16.exit ]
  %.sroa.2074.1 = phi i16 [ %.sroa.2074.0, %.preheader47 ], [ %.sroa.2074.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.1773.1 = phi i16 [ %.sroa.1773.0, %.preheader47 ], [ %.sroa.1773.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.1472.1 = phi i16 [ %.sroa.1472.0, %.preheader47 ], [ %.sroa.1472.3, %do_chromakey_pixel16.exit ]
  %.sroa.1171.1 = phi i16 [ %.sroa.1171.0, %.preheader47 ], [ %.sroa.1171.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.870.1 = phi i16 [ %.sroa.870.0, %.preheader47 ], [ %.sroa.870.2, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.569.1 = phi i16 [ %.sroa.569.0, %.preheader47 ], [ %.sroa.569.2, %do_chromakey_pixel16.exit ]
  %.sroa.068.1 = phi i16 [ %.sroa.068.0, %.preheader47 ], [ %.sroa.068.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.26.1 = phi i16 [ %.sroa.26.0, %.preheader47 ], [ %.sroa.26.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.23.1 = phi i16 [ %.sroa.23.0, %.preheader47 ], [ %.sroa.23.3, %do_chromakey_pixel16.exit ]
  %.sroa.20.1 = phi i16 [ %.sroa.20.0, %.preheader47 ], [ %.sroa.20.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.17.1 = phi i16 [ %.sroa.17.0, %.preheader47 ], [ %.sroa.17.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.14.1 = phi i16 [ %.sroa.14.0, %.preheader47 ], [ %.sroa.14.3, %do_chromakey_pixel16.exit ]
  %.sroa.11.1 = phi i16 [ %.sroa.11.0, %.preheader47 ], [ %.sroa.11.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.8.1 = phi i16 [ %.sroa.8.0, %.preheader47 ], [ %.sroa.8.2, %do_chromakey_pixel16.exit ] ; 2 uses
  %.sroa.5.1 = phi i16 [ %.sroa.5.0, %.preheader47 ], [ %.sroa.5.2, %do_chromakey_pixel16.exit ]
  %.sroa.0.1 = phi i16 [ %.sroa.0.0, %.preheader47 ], [ %.sroa.0.3, %do_chromakey_pixel16.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader47 ], [ %indvars.iv.next, %do_chromakey_pixel16.exit ] ; 17 uses
  br i1 %i.bg, label %.preheader.split.preheader, label %.split.us

.preheader.split.preheader:                       ; preds = %.preheader
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %get_pixel16_uv.exit.1, label %bb.a

bb.a:                                             ; preds = %.preheader.split.preheader
  %i.bt = trunc i64 %indvars.iv to i32
  %i.bu = add i32 %i.bt, -1
  %i.bv = lshr i32 %i.bu, %i.ak
  %i.bw = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.bx = load i32, ptr %i.y, align 4, !tbaa !47
  %i.by = mul nsw i32 %i.bx, %i.bf
  %i.bz = shl nuw nsw i32 %i.bv, 1                ; 2 uses
  %i.ca = add nsw i32 %i.by, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 1, !tbaa !46
  %i.ce = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.cf = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.cg = mul nsw i32 %i.cf, %i.bf
  %i.ch = add nsw i32 %i.cg, %i.bz
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 1, !tbaa !46
  br label %get_pixel16_uv.exit.1

get_pixel16_uv.exit.1:                            ; preds = %.preheader.split.preheader, %bb.a
  %.sroa.068.2 = phi i16 [ %i.cd, %bb.a ], [ %.sroa.068.1, %.preheader.split.preheader ] ; 2 uses
  %.sroa.0.2 = phi i16 [ %i.ck, %bb.a ], [ %.sroa.0.1, %.preheader.split.preheader ] ; 2 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  %i.cm = lshr i32 %i.cl, %i.ak
  %i.cn = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.co = load i32, ptr %i.y, align 4, !tbaa !47
  %i.cp = mul nsw i32 %i.co, %i.bf
  %i.cq = shl nuw nsw i32 %i.cm, 1                ; 2 uses
  %i.cr = add nsw i32 %i.cp, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cn, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 1, !tbaa !46 ; 2 uses
  %i.cv = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.cw = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.cx = mul nsw i32 %i.cw, %i.bf
  %i.cy = add nsw i32 %i.cx, %i.cq
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.cv, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 1, !tbaa !46 ; 2 uses
  %i.dc = add nuw nsw i64 %indvars.iv, 2
  %.not88 = icmp samesign ugt i64 %i.dc, %i.av
  br i1 %.not88, label %.split.us, label %bb.b

bb.b:                                             ; preds = %get_pixel16_uv.exit.1
  %i.dd = trunc i64 %indvars.iv to i32
  %i.de = add i32 %i.dd, 1
  %i.df = lshr i32 %i.de, %i.ak
  %i.dg = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.dh = load i32, ptr %i.y, align 4, !tbaa !47
  %i.di = mul nsw i32 %i.dh, %i.bf
  %i.dj = shl nuw nsw i32 %i.df, 1                ; 2 uses
  %i.dk = add nsw i32 %i.di, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dg, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 1, !tbaa !46
  %i.do = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.dp = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.dq = mul nsw i32 %i.dp, %i.bf
  %i.dr = add nsw i32 %i.dq, %i.dj
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 1, !tbaa !46
  br label %.split.us

.split.us:                                        ; preds = %get_pixel16_uv.exit.1, %bb.b, %.preheader
  %.sroa.870.2 = phi i16 [ %.sroa.870.1, %.preheader ], [ %i.dn, %bb.b ], [ %.sroa.870.1, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.569.2 = phi i16 [ %.sroa.569.1, %.preheader ], [ %i.cu, %bb.b ], [ %i.cu, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.068.3 = phi i16 [ %.sroa.068.1, %.preheader ], [ %.sroa.068.2, %bb.b ], [ %.sroa.068.2, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.8.2 = phi i16 [ %.sroa.8.1, %.preheader ], [ %i.du, %bb.b ], [ %.sroa.8.1, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.5.2 = phi i16 [ %.sroa.5.1, %.preheader ], [ %i.db, %bb.b ], [ %i.db, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.0.3 = phi i16 [ %.sroa.0.1, %.preheader ], [ %.sroa.0.2, %bb.b ], [ %.sroa.0.2, %get_pixel16_uv.exit.1 ] ; 3 uses
  br i1 %i.bm, label %.preheader.split.preheader.1, label %.split.us.1

.preheader.split.preheader.1:                     ; preds = %.split.us
  %.not93 = icmp eq i64 %indvars.iv, 0
  br i1 %.not93, label %get_pixel16_uv.exit.1.1, label %bb.c

bb.c:                                             ; preds = %.preheader.split.preheader.1
  %i.dv = trunc i64 %indvars.iv to i32
  %i.dw = add i32 %i.dv, -1
  %i.dx = lshr i32 %i.dw, %i.ak
  %i.dy = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.dz = load i32, ptr %i.y, align 4, !tbaa !47
  %i.ea = mul nsw i32 %i.dz, %i.bl
  %i.eb = shl nuw nsw i32 %i.dx, 1                ; 2 uses
  %i.ec = add nsw i32 %i.ea, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.dy, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !46
  %i.eg = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.eh = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ei = mul nsw i32 %i.eh, %i.bl
  %i.ej = add nsw i32 %i.ei, %i.eb
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.eg, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 1, !tbaa !46
  br label %get_pixel16_uv.exit.1.1

get_pixel16_uv.exit.1.1:                          ; preds = %bb.c, %.preheader.split.preheader.1
  %.sroa.1171.2 = phi i16 [ %i.ef, %bb.c ], [ %.sroa.1171.1, %.preheader.split.preheader.1 ] ; 2 uses
  %.sroa.11.2 = phi i16 [ %i.em, %bb.c ], [ %.sroa.11.1, %.preheader.split.preheader.1 ] ; 2 uses
  %i.en = trunc nuw nsw i64 %indvars.iv to i32
  %i.eo = lshr i32 %i.en, %i.ak
  %i.ep = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.eq = load i32, ptr %i.y, align 4, !tbaa !47
  %i.er = mul nsw i32 %i.eq, %i.bl
  %i.es = shl nuw nsw i32 %i.eo, 1                ; 2 uses
  %i.et = add nsw i32 %i.er, %i.es
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %i.ep, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 1, !tbaa !46 ; 2 uses
  %i.ex = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ey = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ez = mul nsw i32 %i.ey, %i.bl
  %i.fa = add nsw i32 %i.ez, %i.es
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 1, !tbaa !46 ; 2 uses
  %i.fe = add nuw nsw i64 %indvars.iv, 2
  %.not94 = icmp samesign ugt i64 %i.fe, %i.av
  br i1 %.not94, label %.split.us.1, label %bb.d

bb.d:                                             ; preds = %get_pixel16_uv.exit.1.1
  %i.ff = trunc i64 %indvars.iv to i32
  %i.fg = add i32 %i.ff, 1
  %i.fh = lshr i32 %i.fg, %i.ak
  %i.fi = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.fj = load i32, ptr %i.y, align 4, !tbaa !47
  %i.fk = mul nsw i32 %i.fj, %i.bl
  %i.fl = shl nuw nsw i32 %i.fh, 1                ; 2 uses
  %i.fm = add nsw i32 %i.fk, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fi, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 1, !tbaa !46
  %i.fq = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.fr = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.fs = mul nsw i32 %i.fr, %i.bl
  %i.ft = add nsw i32 %i.fs, %i.fl
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fq, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 1, !tbaa !46
  br label %.split.us.1

.split.us.1:                                      ; preds = %get_pixel16_uv.exit.1.1, %bb.d, %.split.us
  %.sroa.1773.3 = phi i16 [ %.sroa.1773.1, %.split.us ], [ %i.fp, %bb.d ], [ %.sroa.1773.1, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.1472.3 = phi i16 [ %.sroa.1472.1, %.split.us ], [ %i.ew, %bb.d ], [ %i.ew, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.1171.3 = phi i16 [ %.sroa.1171.1, %.split.us ], [ %.sroa.1171.2, %bb.d ], [ %.sroa.1171.2, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.17.3 = phi i16 [ %.sroa.17.1, %.split.us ], [ %i.fw, %bb.d ], [ %.sroa.17.1, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.14.3 = phi i16 [ %.sroa.14.1, %.split.us ], [ %i.fd, %bb.d ], [ %i.fd, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.11.3 = phi i16 [ %.sroa.11.1, %.split.us ], [ %.sroa.11.2, %bb.d ], [ %.sroa.11.2, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  br i1 %i.bs, label %.preheader.split.preheader.2, label %.split.us.2

.preheader.split.preheader.2:                     ; preds = %.split.us.1
  %.not99 = icmp eq i64 %indvars.iv, 0
  br i1 %.not99, label %get_pixel16_uv.exit.1.2, label %bb.e

bb.e:                                             ; preds = %.preheader.split.preheader.2
  %i.fx = trunc i64 %indvars.iv to i32
  %i.fy = add i32 %i.fx, -1
  %i.fz = lshr i32 %i.fy, %i.ak
  %i.ga = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.gb = load i32, ptr %i.y, align 4, !tbaa !47
  %i.gc = mul nsw i32 %i.gb, %i.br
  %i.gd = shl nuw nsw i32 %i.fz, 1                ; 2 uses
  %i.ge = add nsw i32 %i.gc, %i.gd
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %i.ga, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 1, !tbaa !46
  %i.gi = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.gj = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.gk = mul nsw i32 %i.gj, %i.br
  %i.gl = add nsw i32 %i.gk, %i.gd
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %i.gi, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 1, !tbaa !46
  br label %get_pixel16_uv.exit.1.2

get_pixel16_uv.exit.1.2:                          ; preds = %bb.e, %.preheader.split.preheader.2
  %.sroa.2074.2 = phi i16 [ %i.gh, %bb.e ], [ %.sroa.2074.1, %.preheader.split.preheader.2 ] ; 2 uses
  %.sroa.20.2 = phi i16 [ %i.go, %bb.e ], [ %.sroa.20.1, %.preheader.split.preheader.2 ] ; 2 uses
  %i.gp = trunc nuw nsw i64 %indvars.iv to i32
  %i.gq = lshr i32 %i.gp, %i.ak
  %i.gr = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.gs = load i32, ptr %i.y, align 4, !tbaa !47
  %i.gt = mul nsw i32 %i.gs, %i.br
  %i.gu = shl nuw nsw i32 %i.gq, 1                ; 2 uses
  %i.gv = add nsw i32 %i.gt, %i.gu
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gr, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 1, !tbaa !46 ; 2 uses
  %i.gz = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ha = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.hb = mul nsw i32 %i.ha, %i.br
  %i.hc = add nsw i32 %i.hb, %i.gu
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %i.gz, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 1, !tbaa !46 ; 2 uses
  %i.hg = add nuw nsw i64 %indvars.iv, 2
  %.not100 = icmp samesign ugt i64 %i.hg, %i.av
  br i1 %.not100, label %.split.us.2, label %bb.f

bb.f:                                             ; preds = %get_pixel16_uv.exit.1.2
  %i.hh = trunc i64 %indvars.iv to i32
  %i.hi = add i32 %i.hh, 1
  %i.hj = lshr i32 %i.hi, %i.ak
  %i.hk = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.hl = load i32, ptr %i.y, align 4, !tbaa !47
  %i.hm = mul nsw i32 %i.hl, %i.br
  %i.hn = shl nuw nsw i32 %i.hj, 1                ; 2 uses
  %i.ho = add nsw i32 %i.hm, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds i8, ptr %i.hk, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 1, !tbaa !46
  %i.hs = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ht = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.hu = mul nsw i32 %i.ht, %i.br
  %i.hv = add nsw i32 %i.hu, %i.hn
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.hs, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 1, !tbaa !46
  br label %.split.us.2

.split.us.2:                                      ; preds = %get_pixel16_uv.exit.1.2, %bb.f, %.split.us.1
  %.sroa.2676.3 = phi i16 [ %.sroa.2676.1, %.split.us.1 ], [ %i.hr, %bb.f ], [ %.sroa.2676.1, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.2375.3 = phi i16 [ %.sroa.2375.1, %.split.us.1 ], [ %i.gy, %bb.f ], [ %i.gy, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.2074.3 = phi i16 [ %.sroa.2074.1, %.split.us.1 ], [ %.sroa.2074.2, %bb.f ], [ %.sroa.2074.2, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.26.3 = phi i16 [ %.sroa.26.1, %.split.us.1 ], [ %i.hy, %bb.f ], [ %.sroa.26.1, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.23.3 = phi i16 [ %.sroa.23.1, %.split.us.1 ], [ %i.hf, %bb.f ], [ %i.hf, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.20.3 = phi i16 [ %.sroa.20.1, %.split.us.1 ], [ %.sroa.20.2, %bb.f ], [ %.sroa.20.2, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %i.hz = insertelement <8 x i16> poison, i16 %.sroa.068.3, i64 0
  %i.ia = insertelement <8 x i16> %i.hz, i16 %.sroa.569.2, i64 1
  %i.ib = insertelement <8 x i16> %i.ia, i16 %.sroa.870.2, i64 2
  %i.ic = insertelement <8 x i16> %i.ib, i16 %.sroa.1171.3, i64 3
  %i.id = insertelement <8 x i16> %i.ic, i16 %.sroa.1472.3, i64 4
  %i.ie = insertelement <8 x i16> %i.id, i16 %.sroa.1773.3, i64 5
  %i.if = insertelement <8 x i16> %i.ie, i16 %.sroa.2074.3, i64 6
  %i.ig = insertelement <8 x i16> %i.if, i16 %.sroa.2375.3, i64 7
  %i.ih = zext <8 x i16> %i.ig to <8 x i32>
  %i.ii = insertelement <8 x i16> poison, i16 %.sroa.0.3, i64 0
  %i.ij = insertelement <8 x i16> %i.ii, i16 %.sroa.5.2, i64 1
  %i.ik = insertelement <8 x i16> %i.ij, i16 %.sroa.8.2, i64 2
  %i.il = insertelement <8 x i16> %i.ik, i16 %.sroa.11.3, i64 3
  %i.im = insertelement <8 x i16> %i.il, i16 %.sroa.14.3, i64 4
  %i.in = insertelement <8 x i16> %i.im, i16 %.sroa.17.3, i64 5
  %i.io = insertelement <8 x i16> %i.in, i16 %.sroa.20.3, i64 6
  %i.ip = insertelement <8 x i16> %i.io, i16 %.sroa.23.3, i64 7
  %i.iq = zext <8 x i16> %i.ip to <8 x i32>
  %4 = load i16, ptr %i.e, align 4, !tbaa !51
  %5 = load i16, ptr %i.g, align 2, !tbaa !51
  %6 = zext i16 %4 to i32                         ; 2 uses
  %7 = zext i16 %5 to i32                         ; 2 uses
  %8 = insertelement <8 x i32> poison, i32 %6, i64 0
  %i.ir = shufflevector <8 x i32> %8, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.is = sub nsw <8 x i32> %i.ih, %i.ir          ; 2 uses
  %9 = insertelement <8 x i32> poison, i32 %7, i64 0
  %10 = shufflevector <8 x i32> %9, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.it = sub nsw <8 x i32> %i.iq, %10            ; 2 uses
  %i.iu = mul nsw <8 x i32> %i.is, %i.is
  %i.iv = mul nsw <8 x i32> %i.it, %i.it
  %i.iw = add nuw nsw <8 x i32> %i.iv, %i.iu
  %i.ix = uitofp nneg <8 x i32> %i.iw to <8 x double>
  %i.iy = fdiv nsz <8 x double> %i.ix, %i.az      ; 4 uses
  %i.iz = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.iy) ; 2 uses
  %i.ja = shufflevector <8 x double> %i.iz, <8 x double> poison, <2 x i32> <i32 0, i32 poison>
  %shift = shufflevector <8 x double> %i.iz, <8 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x double> %i.ja, %shift
  %i.jb = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.iy) ; 2 uses
  %i.jc = shufflevector <8 x double> %i.jb, <8 x double> poison, <2 x i32> <i32 2, i32 poison>
  %foldExtExtBinop102 = fadd nsz <2 x double> %foldExtExtBinop, %i.jc
  %shift104 = shufflevector <8 x double> %i.jb, <8 x double> poison, <2 x i32> <i32 3, i32 poison>
  %foldExtExtBinop105 = fadd nsz <2 x double> %foldExtExtBinop102, %shift104
  %i.jd = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.iy) ; 2 uses
  %i.je = shufflevector <8 x double> %i.jd, <8 x double> poison, <2 x i32> <i32 4, i32 poison>
  %foldExtExtBinop107 = fadd nsz <2 x double> %foldExtExtBinop105, %i.je
  %shift109 = shufflevector <8 x double> %i.jd, <8 x double> poison, <2 x i32> <i32 5, i32 poison>
  %foldExtExtBinop110 = fadd nsz <2 x double> %foldExtExtBinop107, %shift109
  %i.jf = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.iy) ; 2 uses
  %i.jg = shufflevector <8 x double> %i.jf, <8 x double> poison, <2 x i32> <i32 6, i32 poison>
  %foldExtExtBinop112 = fadd nsz <2 x double> %foldExtExtBinop110, %i.jg
  %shift114 = shufflevector <8 x double> %i.jf, <8 x double> poison, <2 x i32> <i32 7, i32 poison>
  %foldExtExtBinop115 = fadd nsz <2 x double> %foldExtExtBinop112, %shift114
  %i.jh = extractelement <2 x double> %foldExtExtBinop115, i64 0
  %i.ji = zext i16 %.sroa.2676.3 to i32
  %i.jj = sub nsw i32 %i.ji, %6                   ; 2 uses
  %i.jk = zext i16 %.sroa.26.3 to i32
  %i.jl = sub nsw i32 %i.jk, %7                   ; 2 uses
  %i.jm = mul nsw i32 %i.jj, %i.jj
  %i.jn = mul nsw i32 %i.jl, %i.jl
  %i.jo = add nuw nsw i32 %i.jn, %i.jm
  %i.jp = uitofp nsz nneg i32 %i.jo to double
  %i.jq = fdiv nsz double %i.jp, %i.ap
  %i.jr = tail call nsz double @llvm.sqrt.f64(double %i.jq)
  %i.js = fadd nsz double %i.jh, %i.jr
  %i.jt = fdiv nsz double %i.js, 9.000000e+00     ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.us.2
  %i.ju = fsub nsz double %i.jt, %i.au
  %i.jv = fdiv nsz double %i.ju, %i.ar            ; 2 uses
  %i.jw = fcmp nsz ogt double %i.jv, 0.000000e+00
  %i.jx = select nsz i1 %i.jw, double %i.jv, double 0.000000e+00 ; 2 uses
  %i.jy = fcmp nsz ogt double %i.jx, 1.000000e+00
  %..i.i = select nsz i1 %i.jy, double 1.000000e+00, double %i.jx
  %i.jz = fmul nsz double %..i.i, %i.an
  br label %do_chromakey_pixel16.exit

bb.h:                                             ; preds = %.split.us.2
  %i.ka = fcmp nsz ogt double %i.jt, %i.au
  %i.kb = select nsz i1 %i.ka, double %i.an, double 0.000000e+00
  br label %do_chromakey_pixel16.exit

do_chromakey_pixel16.exit:                        ; preds = %bb.g, %bb.h
  %.026.in.i = phi double [ %i.jz, %bb.g ], [ %i.kb, %bb.h ]
  %.026.i = fptoui double %.026.in.i to i16
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  store i16 %.026.i, ptr %i.kc, align 2, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !68

._crit_edge:                                      ; preds = %do_chromakey_pixel16.exit
  %exitcond67.not = icmp eq i64 %i.bh, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge54.split, label %.preheader47, !llvm.loop !69

._crit_edge54.split:                              ; preds = %._crit_edge, %.preheader47.lr.ph, %.preheader48
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_chromahold_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = ashr i32 %i.d, %i.f
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sext i32 %2 to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %i.k = sext i32 %3 to i64                       ; 2 uses
  %i.l = sdiv i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.h, %i.o
  %i.q = sdiv i64 %i.p, %i.k
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = icmp slt i32 %i.m, %i.r
  br i1 %i.s, label %.preheader.lr.ph, label %._crit_edge64

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre = load i32, ptr %i.t, align 8, !tbaa !52
  %.pre65 = load i32, ptr %i.u, align 8, !tbaa !53
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ad = phi i32 [ %.pre65, %.preheader.lr.ph ], [ %i.cu, %._crit_edge ] ; 2 uses
  %i.ae = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.cv, %._crit_edge ] ; 2 uses
  %.063 = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.cw, %._crit_edge ] ; 4 uses
  %i.af = ashr i32 %i.ae, %i.ad
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.06062 = phi i32 [ %i.cp, %bb.e ], [ 0, %.preheader ] ; 4 uses
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !47
  %i.aj = mul nsw i32 %i.ai, %.063
  %i.ak = add nsw i32 %i.aj, %.06062
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !46  ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !47
  %i.aq = mul nsw i32 %i.ap, %.063
  %i.ar = add nsw i32 %i.aq, %.06062
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46  ; 2 uses
  %i.av = zext i8 %i.au to i32
  %i.aw = zext i8 %i.an to i32
  %i.ax = load i16, ptr %i.z, align 4, !tbaa !51
  %i.ay = zext i16 %i.ax to i32
  %i.az = sub nsw i32 %i.aw, %i.ay                ; 2 uses
  %i.ba = load i16, ptr %i.aa, align 2, !tbaa !51
  %i.bb = zext i16 %i.ba to i32
  %i.bc = sub nsw i32 %i.av, %i.bb                ; 2 uses
  %i.bd = mul nsw i32 %i.az, %i.az
  %i.be = mul nsw i32 %i.bc, %i.bc
  %i.bf = add nuw nsw i32 %i.be, %i.bd
  %i.bg = uitofp nsz nneg i32 %i.bf to double
  %i.bh = fdiv nsz double %i.bg, 1.300500e+05
  %i.bi = tail call nsz double @llvm.sqrt.f64(double %i.bh) ; 2 uses
  %i.bj = load float, ptr %i.ab, align 8, !tbaa !57
  %i.bk = fpext nsz float %i.bj to double         ; 2 uses
  %i.bl = load float, ptr %i.ac, align 4, !tbaa !56
  %i.bm = fpext nsz float %i.bl to double         ; 2 uses
  %i.bn = fcmp nsz ogt double %i.bm, 1.000000e-04
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bo = fsub nsz double %i.bi, %i.bk
  %i.bp = fdiv nsz double %i.bo, %i.bm            ; 2 uses
  %i.bq = fcmp nsz ogt double %i.bp, 0.000000e+00
  %i.br = select nsz i1 %i.bq, double %i.bp, double 0.000000e+00 ; 2 uses
  %i.bs = fcmp nsz ogt double %i.br, 1.000000e+00
  %..i = select nsz i1 %i.bs, double 1.000000e+00, double %i.br
  %i.bt = fsub nsz double 1.000000e+00, %..i
  %i.bu = zext i8 %i.an to i16
  %i.bv = add nsw i16 %i.bu, -128
  %i.bw = insertelement <2 x i16> poison, i16 %i.bv, i64 0
  %i.bx = zext i8 %i.au to i16
  %i.by = add nsw i16 %i.bx, -128
  %i.bz = insertelement <2 x i16> %i.bw, i16 %i.by, i64 1
  %i.ca = sitofp <2 x i16> %i.bz to <2 x double>
  %i.cb = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cc, <2 x double> splat (double 1.280000e+02)) ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = fptoui double %i.ce to i8
  store i8 %i.cf, ptr %i.am, align 1, !tbaa !46
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = fptoui double %i.cg to i8
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph
  %i.ci = fcmp nsz ogt double %i.bi, %i.bk
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 -128, ptr %i.am, align 1, !tbaa !46
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i8 [ -128, %bb.d ], [ %i.ch, %bb.b ]
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.ck = load i32, ptr %i.y, align 8, !tbaa !47
  %i.cl = mul nsw i32 %i.ck, %.063
  %i.cm = add nsw i32 %i.cl, %.06062
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.cn
  store i8 %.sink, ptr %i.co, align 1, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.cp = add nuw nsw i32 %.06062, 1              ; 2 uses
  %i.cq = load i32, ptr %i.t, align 8, !tbaa !52  ; 2 uses
  %i.cr = load i32, ptr %i.u, align 8, !tbaa !53  ; 2 uses
  %i.cs = ashr i32 %i.cq, %i.cr
  %i.ct = icmp slt i32 %i.cp, %i.cs
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.cu = phi i32 [ %i.ad, %.preheader ], [ %i.cr, %bb.e ]
  %i.cv = phi i32 [ %i.ae, %.preheader ], [ %i.cq, %bb.e ]
  %i.cw = add nsw i32 %.063, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %i.r
  br i1 %exitcond.not, label %._crit_edge64, label %.preheader, !llvm.loop !71

._crit_edge64:                                    ; preds = %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_chromahold16_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = ashr i32 %i.d, %i.f
  %i.h = sext i32 %i.g to i64                     ; 2 uses
end_hunk_0
