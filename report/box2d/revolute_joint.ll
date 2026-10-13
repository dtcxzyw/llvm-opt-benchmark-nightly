Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/revolute_joint?download=true
inline.NumInlined: 73
inline.NumDeleted: 22
begin_hunk_0_@b2SolveRevoluteJoint:bb.a
  %i.gz = fadd <2 x float> %i.gv, %i.gx           ; 2 uses
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> %i.gy, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.hb = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.gr, %i.hb           ; 2 uses
  %i.hd = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.he = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = fmul <2 x float> %i.hd, %i.he           ; 2 uses
  %i.hg = fadd <2 x float> %i.hc, %i.hf           ; 2 uses
  %i.hh = fsub <2 x float> %i.hc, %i.hf           ; 2 uses
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> %i.hg, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.hj = insertelement <2 x float> poison, float %.2238, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hm = fmul <2 x float> %i.hk, %i.hl           ; 2 uses
  %i.hn = fadd <2 x float> %.sroa.0117.0.copyload, %i.hm
  %i.ho = fsub <2 x float> %.sroa.0117.0.copyload, %i.hm
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> %i.hn, <2 x i32> <i32 0, i32 3>
  %i.hq = insertelement <2 x float> poison, float %.2, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %i.hr, %i.ha           ; 2 uses
  %i.ht = fadd <2 x float> %.sroa.0131.0.copyload, %i.hs
  %i.hu = fsub <2 x float> %.sroa.0131.0.copyload, %i.hs
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> %i.ht, <2 x i32> <i32 0, i32 3>
  %i.hw = fsub <2 x float> %i.hp, %i.hv
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.021.0.copyload = load <2 x float>, ptr %i.hx, align 4, !tbaa !81
  %i.hy = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.hy, align 4, !tbaa !81
  %i.hz = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ib = load <2 x float>, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.id = load float, ptr %i.ic, align 4, !tbaa !147
  %i.ie = fsub <2 x float> %.sroa.020.0.copyload, %.sroa.021.0.copyload
  %i.if = fsub <2 x float> %i.hi, %i.hz
  %i.ig = fadd <2 x float> %i.if, %i.ie
  %i.ih = fadd <2 x float> %i.ib, %i.ig
  %i.ii = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x float> %i.ij, %i.ih
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.im = load <2 x float>, ptr %i.il, align 4, !tbaa !81
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.025.0 = phi <2 x float> [ %i.ik, %bb.t ], [ zeroinitializer, %bb.s ]
  %i.in = phi <2 x float> [ %i.im, %bb.t ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.s ] ; 2 uses
  %i.io = fmul <2 x float> %i.ha, %i.ha
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = fmul <2 x float> %i.hi, %i.hi
  %i.ir = extractelement <2 x float> %i.gz, i64 0
  %i.is = fneg float %i.ir
  %i.it = extractelement <2 x float> %i.gy, i64 1
  %i.iu = fmul float %i.it, %i.is
  %i.iv = fmul float %i.g, %i.iu
  %i.iw = extractelement <2 x float> %i.hh, i64 0 ; 2 uses
  %i.ix = extractelement <2 x float> %i.hg, i64 1 ; 2 uses
  %i.iy = fmul float %i.ix, %i.iw
  %i.iz = fmul float %i.h, %i.iy
  %i.ja = extractelement <2 x float> %i.in, i64 0
  %i.jb = fneg float %i.ja
  %i.jc = fadd float %i.e, %i.f
  %i.jd = fsub float %i.iv, %i.iz                 ; 3 uses
  %i.je = insertelement <2 x float> poison, float %i.g, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.jf, %i.ip
  %i.jh = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fadd <2 x float> %i.ji, %i.jg
  %i.jk = insertelement <2 x float> poison, float %i.h, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.jl, %i.iq
  %i.jn = fadd <2 x float> %i.jj, %i.jm           ; 3 uses
  %i.jo = fadd <2 x float> %i.hw, %.sroa.025.0    ; 2 uses
  %shift372 = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = fmul <2 x float> %shift372, %i.jn
  %i.jp = extractelement <2 x float> %foldExtExtBinop373, i64 0
  %i.jq = fmul float %i.jd, %i.jd
  %i.jr = fsub float %i.jp, %i.jq                 ; 3 uses
  %i.js = fcmp une float %i.jr, 0.000000e+00
  %i.jt = fdiv float 1.000000e+00, %i.jr
  %.0.i = select i1 %i.js, float %i.jt, float %i.jr
  %i.ju = fmul <2 x float> %i.jn, %i.jo
  %i.jv = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jy = fmul <2 x float> %i.jw, %i.jx
  %i.jz = fsub <2 x float> %i.ju, %i.jy
  %i.ka = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.kb, %i.jz
  %i.kd = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x float> %i.kc, %i.ke
  %i.kg = load <2 x float>, ptr %i.i, align 4, !tbaa !81 ; 2 uses
  %i.kh = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ki = fmul <2 x float> %i.kh, %i.kg
  %i.kj = fsub <2 x float> %i.kf, %i.ki           ; 5 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0 ; 2 uses
  %i.kl = extractelement <2 x float> %i.kj, i64 1 ; 2 uses
  %i.km = fadd <2 x float> %i.kg, %i.kj
  store <2 x float> %i.km, ptr %i.i, align 4, !tbaa !81
  %i.kn = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = fmul <2 x float> %i.ko, %i.kj
  %i.kq = fadd <2 x float> %.sroa.0117.0.copyload, %i.kp
  %i.kr = fmul float %i.iw, %i.kl
  %i.ks = fmul float %i.ix, %i.kk
  %i.kt = fsub float %i.kr, %i.ks
  %i.ku = fmul float %i.h, %i.kt
  %i.kv = fadd float %.2238, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !109
  %i.ky = and i32 %i.kx, 512
  %.not = icmp eq i32 %i.ky, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kz = fmul <2 x float> %i.ha, %i.kj           ; 2 uses
  %shift375 = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop376 = fsub <2 x float> %shift375, %i.kz
  %i.la = extractelement <2 x float> %foldExtExtBinop376, i64 0
  %i.lb = fmul float %i.e, %i.kk
  %i.lc = fsub float %.sroa.01.0.vec.extract.i297, %i.lb
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.ld = fmul float %i.e, %i.kl
  %i.le = fsub float %.sroa.01.4.vec.extract.i300, %i.ld
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %i.le, i64 1
  %i.lf = fmul float %i.g, %i.la
  %i.lg = fsub float %.2, %i.lf
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.q, align 4, !tbaa !81
  store float %i.lg, ptr %i.z, align 4, !tbaa !110
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lh = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !109
  %i.lj = and i32 %i.li, 512
  %.not253 = icmp eq i32 %i.lj, 0
  br i1 %.not253, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.kq, ptr %i.y, align 4, !tbaa !81
  store float %i.kv, ptr %i.ab, align 4, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2DrawRevoluteJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, float noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x float>, ptr %i.b, align 4      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <2 x float>, ptr %i.h, align 4      ; 4 uses
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %5, %i.j                ; 2 uses
  %i.l = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x float> %i.l, %i.m              ; 2 uses
  %i.o = fsub <2 x float> %i.k, %i.n
  %i.p = fadd <2 x float> %i.k, %i.n
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  %i.r = fadd <2 x float> %4, %i.q                ; 11 uses
  %i.s = shufflevector <2 x float> %5, <2 x float> %3, <2 x i32> <i32 0, i32 2>
  %i.t = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 1, i32 3>
  %i.u = fmul <2 x float> %i.s, %i.t
  %i.v = shufflevector <2 x float> %5, <2 x float> %3, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.x = fmul <2 x float> %i.v, %i.w
  %i.y = fadd <2 x float> %i.x, %i.u              ; 7 uses
  %i.z = shufflevector <2 x float> %3, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %i.aa = shufflevector <2 x float> %i.e, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = shufflevector <2 x float> %3, <2 x float> %5, <2 x i32> <i32 1, i32 3>
  %i.ad = shufflevector <2 x float> %i.e, <2 x float> %i.i, <2 x i32> <i32 1, i32 3>
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = fsub <2 x float> %i.ab, %i.ae           ; 8 uses
  %i.ag = fmul float %6, 2.500000e-01             ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !152
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !153
  tail call void %i.ai(<2 x float> %i.r, float noundef %i.ag, i32 noundef 8421504, ptr noundef %i.ak) #11
  %i.al = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.am = extractelement <2 x float> %i.y, i64 1  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !153
  %7 = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %3, %7                    ; 2 uses
  %9 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %10 = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %9, %10                ; 2 uses
  %i.ar = fsub <2 x float> %8, %i.aq
  %i.as = fadd <2 x float> %8, %i.aq
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 0, i32 3>
  %i.au = fadd <2 x float> %2, %i.at              ; 5 uses
  %i.av = fmul float %i.ag, %i.al
  %i.aw = fmul float %i.am, 0.000000e+00
  %i.ax = fsub float %i.av, %i.aw
  %i.ay = fmul float %i.ag, %i.am
  %i.az = fmul float %i.al, 0.000000e+00
  %i.ba = fadd float %i.ay, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ba, i64 1
  %i.bd = fadd <2 x float> %i.au, %i.bc
  tail call void %i.ao(<2 x float> %i.au, <2 x float> %i.bd, i32 noundef 8421504, ptr noundef %i.ap) #11
  %i.be = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bg = shufflevector <2 x float> %i.af, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %i.bh = fmul <2 x float> %i.bf, %i.bg           ; 2 uses
  %i.bi = shufflevector <2 x float> %i.y, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.bj = fmul <2 x float> %i.bi, zeroinitializer ; 2 uses
  %i.bk = fsub <2 x float> %i.bh, %i.bj
  %i.bl = fadd <2 x float> %i.bh, %i.bj
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.bo = fadd <2 x float> %i.r, %i.bm
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !153
  tail call void %i.bn(<2 x float> %i.r, <2 x float> %i.bo, i32 noundef 255, ptr noundef %i.bp) #11
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !155, !range !70, !noundef !71
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bt = fmul <2 x float> %i.af, %i.y            ; 2 uses
  %shift = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bt, %shift
  %i.bu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift167 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop168 = fmul <2 x float> %i.af, %shift167
  %i.bv = extractelement <2 x float> %foldExtExtBinop168, i64 0
  %i.bw = extractelement <2 x float> %i.y, i64 0
  %i.bx = fmul float %i.am, %i.bw
  %i.by = fadd float %i.bv, %i.bx
  %i.bz = tail call float @b2Atan2(float noundef %i.bu, float noundef %i.by) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ca = fmul float %i.bz, 1.800000e+02
  %i.cb = fdiv float %i.ca, f0x40490FDB
  %i.cc = fpext float %i.cb to double
  %i.cd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str, double noundef %i.cc) #11 ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !156
  %i.cg = fadd <2 x float> %i.au, %i.bm
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.cf(<2 x float> %i.cg, ptr noundef nonnull %i.a, i32 noundef 16777215, ptr noundef %i.ch) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 210
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !113, !range !70, !noundef !71
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !115
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.co = load float, ptr %i.cn, align 4, !tbaa !114
  %i.cp = call <2 x float> @b2ComputeCosSin(float noundef %i.co) #11 ; 2 uses
  %i.cq = call <2 x float> @b2ComputeCosSin(float noundef %i.cm) #11 ; 2 uses
  %i.cr = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.cs = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %i.cp           ; 2 uses
  %i.cu = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.cp
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = fsub <2 x float> %i.ct, %i.cw
  %i.cy = fadd <2 x float> %i.ct, %i.cw
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.da = fmul <2 x float> %i.bf, %i.cz           ; 2 uses
  %i.db = fmul <2 x float> %i.cz, zeroinitializer
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dd = fsub <2 x float> %i.da, %i.dc
  %i.de = fadd <2 x float> %i.da, %i.dc
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dg = fadd <2 x float> %i.r, %i.df
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.cr(<2 x float> %i.r, <2 x float> %i.dg, i32 noundef 32768, ptr noundef %i.dh) #11
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.dj = fmul <2 x float> %i.cs, %i.cq           ; 2 uses
  %i.dk = fmul <2 x float> %i.cu, %i.cq
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dm = fsub <2 x float> %i.dj, %i.dl
  %i.dn = fadd <2 x float> %i.dj, %i.dl
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dp = fmul <2 x float> %i.bf, %i.do           ; 2 uses
  %i.dq = fmul <2 x float> %i.do, zeroinitializer
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ds = fsub <2 x float> %i.dp, %i.dr
  %i.dt = fadd <2 x float> %i.dp, %i.dr
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> %i.dt, <2 x i32> <i32 0, i32 3>
  %i.dv = fadd <2 x float> %i.r, %i.du
  %i.dw = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.di(<2 x float> %i.r, <2 x float> %i.dv, i32 noundef 16711680, ptr noundef %i.dw) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !111, !range !70, !noundef !71
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !112
  %i.ec = call <2 x float> @b2ComputeCosSin(float noundef %i.eb) #11 ; 2 uses
  %i.ed = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ee = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ee, %i.ec           ; 2 uses
  %i.eg = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ei = fmul <2 x float> %i.eg, %i.eh           ; 2 uses
  %i.ej = fsub <2 x float> %i.ef, %i.ei
  %i.ek = fadd <2 x float> %i.ef, %i.ei
  %i.el = shufflevector <2 x float> %i.ej, <2 x float> %i.ek, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.em = fmul <2 x float> %i.bf, %i.el           ; 2 uses
  %i.en = fmul <2 x float> %i.el, zeroinitializer
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ep = fsub <2 x float> %i.em, %i.eo
  %i.eq = fadd <2 x float> %i.em, %i.eo
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.es = fadd <2 x float> %i.r, %i.er
  %i.et = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.ed(<2 x float> %i.r, <2 x float> %i.es, i32 noundef 15631086, ptr noundef %i.et) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eu = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ev = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.eu(<2 x float> %i.au, <2 x float> %i.r, i32 noundef 16766720, ptr noundef %i.ev) #11
  %i.ew = load i8, ptr %i.bq, align 1, !tbaa !155, !range !70, !noundef !71
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ey = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ez = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.ey(<2 x float> %2, <2 x float> %i.au, i32 noundef 16766720, ptr noundef %i.ez) #11
  %i.fa = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.fb = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.fa(<2 x float> %4, <2 x float> %i.r, i32 noundef 16766720, ptr noundef %i.fb) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare float @b2Atan2(float noundef, float noundef) local_unnamed_addr #2

declare <2 x float> @b2ComputeCosSin(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS12b2StackEntry", !8, i64 0}
!11 = !{!"b2DynamicArray_b2StackEntry", !10, i64 0, !5, i64 8, !5, i64 12}
!12 = !{!"b2Stack", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !11, i64 24}
!13 = !{!"p1 int", !8, i64 0}
!14 = !{!"b2DynamicArray_int", !13, i64 0, !5, i64 8, !5, i64 12}
!15 = !{!"p1 _ZTS12b2MoveResult", !8, i64 0}
!16 = !{!"p1 _ZTS10b2MovePair", !8, i64 0}
!17 = !{!"b2AtomicInt", !5, i64 0}
end_hunk_0
