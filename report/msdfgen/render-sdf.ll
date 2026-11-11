Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/render-sdf?download=true
inline.NumInlined: 147
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7msdfgen9renderSDFERKNS_13BitmapSectionIfLi4EEERKNS_18BitmapConstSectionIfLi4EEENS_5RangeEf:bb.a
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !11
  %i.id = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !11
  %i.if = sitofp <2 x i32> %i.gd to <2 x double>
  %i.ig = fsub <2 x double> %i.gb, %i.if          ; 6 uses
  %i.ih = fsub <2 x double> splat (double 1.000000e+00), %i.ig ; 4 uses
  %i.ii = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ij = fmul <2 x double> %i.ii, %i.ia
  %i.ik = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.hx, <2 x double> %i.ij) ; 2 uses
  %i.im = extractelement <2 x double> %i.il, i64 0
  %i.in = fptrunc double %i.im to float
  %i.io = extractelement <2 x double> %i.il, i64 1
  %i.ip = fptrunc double %i.io to float
  %i.iq = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %i.in, i64 1
  %i.is = fpext <2 x float> %i.ir to <2 x double>
  %i.it = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.ip, i64 1
  %i.iv = fpext <2 x float> %i.iu to <2 x double>
  %i.iw = fmul <2 x double> %i.ig, %i.iv
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.is, <2 x double> %i.iw)
  %i.iy = fptrunc <2 x double> %i.ix to <2 x float> ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !11
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !11
  %i.jd = extractelement <2 x float> %i.iy, i64 0
  %i.je = fpext float %i.jd to double
  %i.jf = extractelement <2 x double> %i.ih, i64 1 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !11
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !11
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !11
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !11
  %i.jo = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %i.jl, i64 1
  %i.jq = fpext <2 x float> %i.jp to <2 x double>
  %i.jr = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %i.jn, i64 1
  %i.jt = fpext <2 x float> %i.js to <2 x double>
  %i.ju = fmul <2 x double> %i.ii, %i.jt
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.jq, <2 x double> %i.ju) ; 2 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 0
  %i.jx = fptrunc double %i.jw to float
  %i.jy = extractelement <2 x double> %i.jv, i64 1
  %i.jz = fptrunc double %i.jy to float
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !11
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !11
  %i.ke = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kf = insertelement <2 x float> %i.ke, float %i.jx, i64 1
  %i.kg = fpext <2 x float> %i.kf to <2 x double>
  %i.kh = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.ki = insertelement <2 x float> %i.kh, float %i.jz, i64 1
  %i.kj = fpext <2 x float> %i.ki to <2 x double>
  %i.kk = fmul <2 x double> %i.ig, %i.kj
  %i.kl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.kg, <2 x double> %i.kk)
  %i.km = fptrunc <2 x double> %i.kl to <2 x float> ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !11
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !11
  %i.kr = extractelement <2 x float> %i.km, i64 0
  %i.ks = fpext float %i.kr to double
  %i.kt = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.ku = insertelement <2 x float> %i.kt, float %i.ko, i64 1
  %i.kv = fpext <2 x float> %i.ku to <2 x double>
  %i.kw = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.kx = insertelement <2 x float> %i.kw, float %i.kq, i64 1
  %i.ky = fpext <2 x float> %i.kx to <2 x double>
  %i.kz = fmul <2 x double> %i.ii, %i.ky
  %i.la = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.kv, <2 x double> %i.kz)
  %i.lb = fptrunc <2 x double> %i.la to <2 x float>
  %i.lc = fpext <2 x float> %i.lb to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137 = fmul <2 x double> %shift, %i.lc
  %i.ld = extractelement <2 x double> %foldExtExtBinop137, i64 0
  %i.le = call double @llvm.fmuladd.f64(double %i.jf, double %i.je, double %i.ld)
  %i.lf = fptrunc double %i.le to float
  %foldExtExtBinop = fmul <2 x double> %i.ig, %i.lc
  %i.lg = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.lh = call double @llvm.fmuladd.f64(double %i.jf, double %i.ks, double %i.lg)
  %i.li = fptrunc double %i.lh to float
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store double %i.ee, ptr %8, align 8
  store double %i.ef, ptr %i.ek, align 8
  %i.lj = shl nuw nsw i64 %indvars.iv, 2          ; 4 uses
  %i.lk = shufflevector <2 x float> %i.iy, <2 x float> %i.km, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ll = insertelement <4 x float> %i.lk, float %i.lf, i64 1
  %i.lm = insertelement <4 x float> %i.ll, float %i.li, i64 3
  %i.ln = fadd <4 x float> %i.eu, %i.lm
  %i.lo = fpext <4 x float> %i.ln to <4 x double> ; 4 uses
  %i.lp = extractelement <4 x double> %i.lo, i64 0
  %i.lq = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %8, double noundef %i.lp)
  %i.lr = fadd double %i.lq, 5.000000e-01         ; 4 uses
  %i.ls = fcmp oge double %i.lr, 0.000000e+00
  %i.lt = fcmp ole double %i.lr, 1.000000e+00
  %or.cond.i.i90 = and i1 %i.ls, %i.lt
  %i.lu = fcmp ogt double %i.lr, 0.000000e+00
  %i.lv = uitofp i1 %i.lu to double
  %i.lw = select i1 %or.cond.i.i90, double %i.lr, double %i.lv
  %i.lx = fptrunc double %i.lw to float
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ly = load ptr, ptr %0, align 8, !tbaa !38
  %i.lz = load i32, ptr %i.el, align 8, !tbaa !65
  %i.ma = mul nsw i32 %i.lz, %.076110
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.mb
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.lj
  store float %i.lx, ptr %i.md, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store double %i.ee, ptr %7, align 8
  store double %i.ef, ptr %i.em, align 8
  %i.me = extractelement <4 x double> %i.lo, i64 1
  %i.mf = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %7, double noundef %i.me)
  %i.mg = fadd double %i.mf, 5.000000e-01         ; 4 uses
  %i.mh = fcmp oge double %i.mg, 0.000000e+00
  %i.mi = fcmp ole double %i.mg, 1.000000e+00
  %or.cond.i.i91 = and i1 %i.mh, %i.mi
  %i.mj = fcmp ogt double %i.mg, 0.000000e+00
  %i.mk = uitofp i1 %i.mj to double
  %i.ml = select i1 %or.cond.i.i91, double %i.mg, double %i.mk
  %i.mm = fptrunc double %i.ml to float
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.mn = load ptr, ptr %0, align 8, !tbaa !38
  %i.mo = load i32, ptr %i.el, align 8, !tbaa !65
  %i.mp = mul nsw i32 %i.mo, %.076110
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.lj
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store float %i.mm, ptr %i.mt, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store double %i.ee, ptr %6, align 8
  store double %i.ef, ptr %i.en, align 8
  %i.mu = extractelement <4 x double> %i.lo, i64 2
  %i.mv = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %6, double noundef %i.mu)
  %i.mw = fadd double %i.mv, 5.000000e-01         ; 4 uses
  %i.mx = fcmp oge double %i.mw, 0.000000e+00
  %i.my = fcmp ole double %i.mw, 1.000000e+00
  %or.cond.i.i92 = and i1 %i.mx, %i.my
  %i.mz = fcmp ogt double %i.mw, 0.000000e+00
  %i.na = uitofp i1 %i.mz to double
  %i.nb = select i1 %or.cond.i.i92, double %i.mw, double %i.na
  %i.nc = fptrunc double %i.nb to float
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.nd = load ptr, ptr %0, align 8, !tbaa !38
  %i.ne = load i32, ptr %i.el, align 8, !tbaa !65
  %i.nf = mul nsw i32 %i.ne, %.076110
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.nd, i64 %i.ng
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.lj
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  store float %i.nc, ptr %i.nj, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store double %i.ee, ptr %5, align 8
  store double %i.ef, ptr %i.eo, align 8
  %i.nk = extractelement <4 x double> %i.lo, i64 3
  %i.nl = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %5, double noundef %i.nk)
  %i.nm = fadd double %i.nl, 5.000000e-01         ; 4 uses
  %i.nn = fcmp oge double %i.nm, 0.000000e+00
  %i.no = fcmp ole double %i.nm, 1.000000e+00
  %or.cond.i.i93 = and i1 %i.nn, %i.no
  %i.np = fcmp ogt double %i.nm, 0.000000e+00
  %i.nq = uitofp i1 %i.np to double
  %i.nr = select i1 %or.cond.i.i93, double %i.nm, double %i.nq
  %i.ns = fptrunc double %i.nr to float
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.nt = load ptr, ptr %0, align 8, !tbaa !38
  %i.nu = load i32, ptr %i.el, align 8, !tbaa !65
  %i.nv = mul nsw i32 %i.nu, %.076110
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.nt, i64 %i.nw
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.lj
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 12
  store float %i.ns, ptr %i.nz, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oa = load i32, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.ob = sext i32 %i.oa to i64
  %i.oc = icmp slt i64 %indvars.iv.next, %i.ob
  br i1 %i.oc, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge113, %.preheader107.lr.ph, %bb.c, %.preheader106, %.preheader.lr.ph
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = mul nsw i32 %i.e, %i.c                   ; 2 uses
  %1 = sext i32 %i.f to i64
  %.idx = shl nsw i64 %1, 2                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.j = add i64 %.idx, %i.i
  %i.k = add i64 %i.i, 4
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.k)
  %i.m = xor i64 %i.i, -1
  %i.n = add i64 %i.l, %i.m                       ; 2 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 12
  br i1 %min.iters.check, label %.lr.ph.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.p, 9223372036854775804      ; 3 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.s ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !11 ; 4 uses
  %i.t = fcmp oge <4 x float> %wide.load, zeroinitializer
  %i.u = fcmp ole <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.v = and <4 x i1> %i.t, %i.u
  %i.w = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %i.x = uitofp <4 x i1> %i.w to <4 x float>
  %i.y = select <4 x i1> %i.v, <4 x float> %wide.load, <4 x float> %i.x
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> splat (float -2.550000e+02), <4 x float> splat (float 2.555000e+02))
  %i.aa = fptosi <4 x float> %i.z to <4 x i32>
  %i.ab = trunc <4 x i32> %i.aa to <4 x i8>
  %i.ac = xor <4 x i8> %i.ab, splat (i8 -1)
  %i.ad = uitofp <4 x i8> %i.ac to <4 x float>
  %i.ae = fmul nnan <4 x float> %i.ad, splat (float f0x3B808081)
  store <4 x float> %i.ae, ptr %next.gep, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader10

.lr.ph.preheader10:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader10, %.lr.ph
  %.09 = phi ptr [ %i.as, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader10 ] ; 3 uses
  %i.ag = load float, ptr %.09, align 4, !tbaa !11 ; 4 uses
  %i.ah = fcmp oge float %i.ag, 0.000000e+00
  %i.ai = fcmp ole float %i.ag, 1.000000e+00
  %or.cond.i.i = and i1 %i.ah, %i.ai
  %i.aj = fcmp ogt float %i.ag, 0.000000e+00
  %i.ak = uitofp i1 %i.aj to float
  %i.al = select i1 %or.cond.i.i, float %i.ag, float %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float -2.550000e+02, float 2.555000e+02)
  %i.an = fptosi float %i.am to i32
  %i.ao = trunc i32 %i.an to i8
  %i.ap = xor i8 %i.ao, -1
  %i.aq = uitofp i8 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x3B808081
  store float %i.ar, ptr %.09, align 4, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %.09, i64 4 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.g
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi3EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26
  %i.d = mul nsw i32 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  %i.g = mul nsw i32 %i.d, %i.f                   ; 2 uses
  %1 = sext i32 %i.g to i64
  %.idx = shl nsw i64 %1, 2                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.k = add i64 %.idx, %i.j
  %i.l = add i64 %i.j, 4
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.n = xor i64 %i.j, -1
  %i.o = add i64 %i.m, %i.n                       ; 2 uses
  %i.p = lshr i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 12
  br i1 %min.iters.check, label %.lr.ph.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  %i.r = shl i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.t ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !11 ; 4 uses
  %i.u = fcmp oge <4 x float> %wide.load, zeroinitializer
  %i.v = fcmp ole <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.w = and <4 x i1> %i.u, %i.v
  %i.x = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %i.y = uitofp <4 x i1> %i.x to <4 x float>
  %i.z = select <4 x i1> %i.w, <4 x float> %wide.load, <4 x float> %i.y
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float -2.550000e+02), <4 x float> splat (float 2.555000e+02))
  %i.ab = fptosi <4 x float> %i.aa to <4 x i32>
  %i.ac = trunc <4 x i32> %i.ab to <4 x i8>
  %i.ad = xor <4 x i8> %i.ac, splat (i8 -1)
  %i.ae = uitofp <4 x i8> %i.ad to <4 x float>
  %i.af = fmul nnan <4 x float> %i.ae, splat (float f0x3B808081)
  store <4 x float> %i.af, ptr %next.gep, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader10

.lr.ph.preheader10:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader10, %.lr.ph
  %.09 = phi ptr [ %i.at, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader10 ] ; 3 uses
  %i.ah = load float, ptr %.09, align 4, !tbaa !11 ; 4 uses
  %i.ai = fcmp oge float %i.ah, 0.000000e+00
  %i.aj = fcmp ole float %i.ah, 1.000000e+00
  %or.cond.i.i = and i1 %i.ai, %i.aj
  %i.ak = fcmp ogt float %i.ah, 0.000000e+00
  %i.al = uitofp i1 %i.ak to float
  %i.am = select i1 %or.cond.i.i, float %i.ah, float %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float -2.550000e+02, float 2.555000e+02)
  %i.ao = fptosi float %i.an to i32
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = xor i8 %i.ap, -1
  %i.ar = uitofp i8 %i.aq to float
  %i.as = fmul nnan float %i.ar, f0x3B808081
  store float %i.as, ptr %.09, align 4, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %.09, i64 4 ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.h
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi4EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = shl nsw i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36
  %i.g = mul nsw i32 %i.d, %i.f                   ; 2 uses
  %1 = sext i32 %i.g to i64
  %.idx = shl nsw i64 %1, 2                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.k = add i64 %.idx, %i.j
  %i.l = add i64 %i.j, 4
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.n = xor i64 %i.j, -1
  %i.o = add i64 %i.m, %i.n                       ; 2 uses
  %i.p = lshr i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 12
  br i1 %min.iters.check, label %.lr.ph.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  %i.r = shl i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.t ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !11 ; 4 uses
  %i.u = fcmp oge <4 x float> %wide.load, zeroinitializer
  %i.v = fcmp ole <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.w = and <4 x i1> %i.u, %i.v
  %i.x = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %i.y = uitofp <4 x i1> %i.x to <4 x float>
  %i.z = select <4 x i1> %i.w, <4 x float> %wide.load, <4 x float> %i.y
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float -2.550000e+02), <4 x float> splat (float 2.555000e+02))
  %i.ab = fptosi <4 x float> %i.aa to <4 x i32>
  %i.ac = trunc <4 x i32> %i.ab to <4 x i8>
  %i.ad = xor <4 x i8> %i.ac, splat (i8 -1)
  %i.ae = uitofp <4 x i8> %i.ad to <4 x float>
  %i.af = fmul nnan <4 x float> %i.ae, splat (float f0x3B808081)
  store <4 x float> %i.af, ptr %next.gep, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader10

.lr.ph.preheader10:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader10, %.lr.ph
  %.09 = phi ptr [ %i.at, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader10 ] ; 3 uses
  %i.ah = load float, ptr %.09, align 4, !tbaa !11 ; 4 uses
  %i.ai = fcmp oge float %i.ah, 0.000000e+00
  %i.aj = fcmp ole float %i.ah, 1.000000e+00
  %or.cond.i.i = and i1 %i.ai, %i.aj
  %i.ak = fcmp ogt float %i.ah, 0.000000e+00
  %i.al = uitofp i1 %i.ak to float
  %i.am = select i1 %or.cond.i.i, float %i.ah, float %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float -2.550000e+02, float 2.555000e+02)
  %i.ao = fptosi float %i.an to i32
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = xor i8 %i.ap, -1
  %i.ar = uitofp i8 %i.aq to float
  %i.as = fmul nnan float %i.ar, f0x3B808081
  store float %i.as, ptr %.09, align 4, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %.09, i64 4 ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.h
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !71
}

declare noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"float", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 float", !12, i64 0}
!14 = !{!"_ZTSN7msdfgen16YAxisOrientationE", !4, i64 0}
!15 = !{!"_ZTSN7msdfgen13BitmapSectionIfLi1EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 20}
!16 = !{!15, !5, i64 12}
!17 = !{!15, !5, i64 8}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi1EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 20}
!20 = !{!19, !13, i64 0}
!21 = !{!19, !5, i64 16}
!22 = !{!15, !13, i64 0}
!23 = !{!15, !5, i64 16}
!24 = !{!"_ZTSN7msdfgen13BitmapSectionIfLi3EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 20}
!25 = !{!24, !5, i64 12}
!26 = !{!24, !5, i64 8}
!27 = !{!24, !13, i64 0}
!28 = !{!24, !5, i64 16}
!29 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi3EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 20}
!30 = !{!29, !13, i64 0}
!31 = !{!29, !5, i64 16}
!32 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi4EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 20}
!33 = !{!32, !13, i64 0}
!34 = !{!32, !5, i64 16}
!35 = !{!"_ZTSN7msdfgen13BitmapSectionIfLi4EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 20}
!36 = !{!35, !5, i64 12}
!37 = !{!35, !5, i64 8}
!38 = !{!35, !13, i64 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9, !18}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9, !18}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9, !18}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9, !18}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9, !18}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9, !18}
!64 = distinct !{!64, !9}
!65 = !{!35, !5, i64 16}
!66 = distinct !{!66, !9, !39, !40}
!67 = distinct !{!67, !9, !40, !39}
!68 = distinct !{!68, !9, !39, !40}
!69 = distinct !{!69, !9, !40, !39}
!70 = distinct !{!70, !9, !39, !40}
!71 = distinct !{!71, !9, !40, !39}
end_hunk_0
