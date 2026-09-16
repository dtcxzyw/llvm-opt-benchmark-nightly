Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nla_pp?download=true
inline.NumInlined: 1470
inline.NumDeleted: 612
begin_hunk_0_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairI8rationaljESt6vectorIS4_13std_allocatorIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2lp35print_linear_combination_customizedIS3_EERSoRK6vectorIS2_IT_jELb1EjESt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEESF_EUlRKSH_RKT0_E_EEEvSH_SH_SH_SH_SX_:bb.a
  %i.hc = and i8 %i.hb, 2
  %i.hd = and i8 %i.gy, -3
  %i.he = or disjoint i8 %i.hc, %i.hd
  store i8 %i.he, ptr %i.gx, align 4
  %i.hf = load i8, ptr %i.ha, align 4             ; 2 uses
  %i.hg = and i8 %i.hf, -3
  %i.hh = or disjoint i8 %i.hg, %i.gz
  store i8 %i.hh, ptr %i.ha, align 4
  %i.hi = load i8, ptr %i.gx, align 4             ; 2 uses
  %i.hj = and i8 %i.hi, 1
  %i.hk = and i8 %i.hf, 1
  %i.hl = and i8 %i.hi, -2
  %i.hm = or disjoint i8 %i.hl, %i.hk
  store i8 %i.hm, ptr %i.gx, align 4
  %i.hn = load i8, ptr %i.ha, align 4
  %i.ho = and i8 %i.hn, -2
  %i.hp = or disjoint i8 %i.ho, %i.hj
  store i8 %i.hp, ptr %i.ha, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !26
  %i.hs = load i32, ptr %i.a, align 8, !tbaa !26
  store i32 %i.hs, ptr %i.hq, align 8, !tbaa !26
  store i32 %i.hr, ptr %i.a, align 8, !tbaa !26
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ht = icmp ult i32 %i.d, %i.g
  %i.hu = load i32, ptr %0, align 4, !tbaa !26    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  br i1 %i.ht, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hx = load i32, ptr %3, align 8, !tbaa !26
  store i32 %i.hx, ptr %0, align 4, !tbaa !26
  store i32 %i.hu, ptr %3, align 8, !tbaa !26
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hv, align 8, !tbaa !324
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !324
  store ptr %i.ia, ptr %i.hv, align 8, !tbaa !324
  store ptr %i.hz, ptr %i.hy, align 8, !tbaa !324
  %i.ib = load i8, ptr %i.hw, align 4             ; 2 uses
  %i.ic = and i8 %i.ib, 2
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.ie = load i8, ptr %i.id, align 4
  %i.if = and i8 %i.ie, 2
  %i.ig = and i8 %i.ib, -3
  %i.ih = or disjoint i8 %i.if, %i.ig
  store i8 %i.ih, ptr %i.hw, align 4
  %i.ii = load i8, ptr %i.id, align 4             ; 2 uses
  %i.ij = and i8 %i.ii, -3
  %i.ik = or disjoint i8 %i.ij, %i.ic
  store i8 %i.ik, ptr %i.id, align 4
  %i.il = load i8, ptr %i.hw, align 4             ; 2 uses
  %i.im = and i8 %i.il, 1
  %i.in = and i8 %i.ii, 1
  %i.io = and i8 %i.il, -2
  %i.ip = or disjoint i8 %i.io, %i.in
  store i8 %i.ip, ptr %i.hw, align 4
  %i.iq = load i8, ptr %i.id, align 4
  %i.ir = and i8 %i.iq, -2
  %i.is = or disjoint i8 %i.ir, %i.im
  store i8 %i.is, ptr %i.id, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.iv = load i32, ptr %i.it, align 8, !tbaa !26
  %i.iw = load i32, ptr %i.iu, align 8, !tbaa !26
  store i32 %i.iw, ptr %i.it, align 8, !tbaa !26
  store i32 %i.iv, ptr %i.iu, align 8, !tbaa !26
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !324
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !324
  store ptr %i.ja, ptr %i.ix, align 8, !tbaa !324
  store ptr %i.iz, ptr %i.iy, align 8, !tbaa !324
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.jc = load i8, ptr %i.jb, align 4             ; 2 uses
  %i.jd = and i8 %i.jc, 2
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.jf = load i8, ptr %i.je, align 4
  %i.jg = and i8 %i.jf, 2
  %i.jh = and i8 %i.jc, -3
  %i.ji = or disjoint i8 %i.jg, %i.jh
  store i8 %i.ji, ptr %i.jb, align 4
  %i.jj = load i8, ptr %i.je, align 4             ; 2 uses
  %i.jk = and i8 %i.jj, -3
  %i.jl = or disjoint i8 %i.jk, %i.jd
  store i8 %i.jl, ptr %i.je, align 4
  %i.jm = load i8, ptr %i.jb, align 4             ; 2 uses
  %i.jn = and i8 %i.jm, 1
  %i.jo = and i8 %i.jj, 1
  %i.jp = and i8 %i.jm, -2
  %i.jq = or disjoint i8 %i.jp, %i.jo
  store i8 %i.jq, ptr %i.jb, align 4
  %i.jr = load i8, ptr %i.je, align 4
  %i.js = and i8 %i.jr, -2
  %i.jt = or disjoint i8 %i.js, %i.jn
  store i8 %i.jt, ptr %i.je, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !26
  %i.jw = load i32, ptr %i.f, align 8, !tbaa !26
  store i32 %i.jw, ptr %i.ju, align 8, !tbaa !26
  store i32 %i.jv, ptr %i.f, align 8, !tbaa !26
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.jx = load i32, ptr %2, align 8, !tbaa !26
  store i32 %i.jx, ptr %0, align 4, !tbaa !26
  store i32 %i.hu, ptr %2, align 8, !tbaa !26
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jz = load ptr, ptr %i.hv, align 8, !tbaa !324
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !324
  store ptr %i.ka, ptr %i.hv, align 8, !tbaa !324
  store ptr %i.jz, ptr %i.jy, align 8, !tbaa !324
  %i.kb = load i8, ptr %i.hw, align 4             ; 2 uses
  %i.kc = and i8 %i.kb, 2
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.ke = load i8, ptr %i.kd, align 4
  %i.kf = and i8 %i.ke, 2
  %i.kg = and i8 %i.kb, -3
  %i.kh = or disjoint i8 %i.kf, %i.kg
  store i8 %i.kh, ptr %i.hw, align 4
  %i.ki = load i8, ptr %i.kd, align 4             ; 2 uses
  %i.kj = and i8 %i.ki, -3
  %i.kk = or disjoint i8 %i.kj, %i.kc
  store i8 %i.kk, ptr %i.kd, align 4
  %i.kl = load i8, ptr %i.hw, align 4             ; 2 uses
  %i.km = and i8 %i.kl, 1
  %i.kn = and i8 %i.ki, 1
  %i.ko = and i8 %i.kl, -2
  %i.kp = or disjoint i8 %i.ko, %i.kn
  store i8 %i.kp, ptr %i.hw, align 4
  %i.kq = load i8, ptr %i.kd, align 4
  %i.kr = and i8 %i.kq, -2
  %i.ks = or disjoint i8 %i.kr, %i.km
  store i8 %i.ks, ptr %i.kd, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kv = load i32, ptr %i.kt, align 8, !tbaa !26
  %i.kw = load i32, ptr %i.ku, align 8, !tbaa !26
  store i32 %i.kw, ptr %i.kt, align 8, !tbaa !26
  store i32 %i.kv, ptr %i.ku, align 8, !tbaa !26
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !324
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !324
  store ptr %i.la, ptr %i.kx, align 8, !tbaa !324
  store ptr %i.kz, ptr %i.ky, align 8, !tbaa !324
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.lc = load i8, ptr %i.lb, align 4             ; 2 uses
  %i.ld = and i8 %i.lc, 2
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.lf = load i8, ptr %i.le, align 4
  %i.lg = and i8 %i.lf, 2
  %i.lh = and i8 %i.lc, -3
  %i.li = or disjoint i8 %i.lg, %i.lh
  store i8 %i.li, ptr %i.lb, align 4
  %i.lj = load i8, ptr %i.le, align 4             ; 2 uses
  %i.lk = and i8 %i.lj, -3
  %i.ll = or disjoint i8 %i.lk, %i.ld
  store i8 %i.ll, ptr %i.le, align 4
  %i.lm = load i8, ptr %i.lb, align 4             ; 2 uses
  %i.ln = and i8 %i.lm, 1
  %i.lo = and i8 %i.lj, 1
  %i.lp = and i8 %i.lm, -2
  %i.lq = or disjoint i8 %i.lp, %i.lo
  store i8 %i.lq, ptr %i.lb, align 4
  %i.lr = load i8, ptr %i.le, align 4
  %i.ls = and i8 %i.lr, -2
  %i.lt = or disjoint i8 %i.ls, %i.ln
  store i8 %i.lt, ptr %i.le, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !26
  %i.lw = load i32, ptr %i.c, align 8, !tbaa !26
  store i32 %i.lw, ptr %i.lu, align 8, !tbaa !26
  store i32 %i.lv, ptr %i.c, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairI8rationaljESt6vectorIS4_13std_allocatorIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2lp35print_linear_combination_customizedIS3_EERSoRK6vectorIS2_IT_jELb1EjESt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEESF_EUlRKSH_RKT0_E_EEESH_SH_SH_SH_SX_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.012.0 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.g ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.g ]
  %i.b = load i32, ptr %i.a, align 8, !tbaa !326  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.012.1 = phi ptr [ %.sroa.012.0, %bb.b ], [ %i.f, %bb.c ] ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !326
  %i.e = icmp ult i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 40 ; 2 uses
  br i1 %i.e, label %bb.c, label %.preheader, !llvm.loop !481

.preheader:                                       ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.1, %bb.d ], [ %.sroa.0.0, %.preheader ] ; 8 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -40 ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !326
  %i.i = icmp ult i32 %i.b, %i.h
  br i1 %i.i, label %bb.d, label %bb.e, !llvm.loop !482

bb.e:                                             ; preds = %bb.d
  %.not = icmp ult ptr %.sroa.012.1, %.sroa.0.1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  ret ptr %.sroa.012.1

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8 ; 2 uses
  %i.k = load i32, ptr %.sroa.012.1, align 4, !tbaa !26
  %i.l = load i32, ptr %.sroa.0.1, align 4, !tbaa !26
  store i32 %i.l, ptr %.sroa.012.1, align 4, !tbaa !26
  store i32 %i.k, ptr %.sroa.0.1, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -32 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !324
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !324
  store ptr %i.p, ptr %i.m, align 8, !tbaa !324
  store ptr %i.o, ptr %i.n, align 8, !tbaa !324
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 4 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4               ; 2 uses
  %i.s = and i8 %i.r, 2
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -36 ; 5 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, 2
  %i.w = and i8 %i.r, -3
  %i.x = or disjoint i8 %i.v, %i.w
  store i8 %i.x, ptr %i.q, align 4
  %i.y = load i8, ptr %i.t, align 4               ; 2 uses
  %i.z = and i8 %i.y, -3
  %i.aa = or disjoint i8 %i.z, %i.s
  store i8 %i.aa, ptr %i.t, align 4
  %i.ab = load i8, ptr %i.q, align 4              ; 2 uses
  %i.ac = and i8 %i.ab, 1
  %i.ad = and i8 %i.y, 1
  %i.ae = and i8 %i.ab, -2
  %i.af = or disjoint i8 %i.ae, %i.ad
  store i8 %i.af, ptr %i.q, align 4
  %i.ag = load i8, ptr %i.t, align 4
  %i.ah = and i8 %i.ag, -2
  %i.ai = or disjoint i8 %i.ah, %i.ac
  store i8 %i.ai, ptr %i.t, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -24 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !26
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !26
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !26
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16 ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !324
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !324
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !324
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !324
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 20 ; 4 uses
  %i.as = load i8, ptr %i.ar, align 4             ; 2 uses
  %i.at = and i8 %i.as, 2
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -20 ; 5 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, 2
  %i.ax = and i8 %i.as, -3
  %i.ay = or disjoint i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.ar, align 4
  %i.az = load i8, ptr %i.au, align 4             ; 2 uses
  %i.ba = and i8 %i.az, -3
  %i.bb = or disjoint i8 %i.ba, %i.at
  store i8 %i.bb, ptr %i.au, align 4
  %i.bc = load i8, ptr %i.ar, align 4             ; 2 uses
  %i.bd = and i8 %i.bc, 1
  %i.be = and i8 %i.az, 1
  %i.bf = and i8 %i.bc, -2
  %i.bg = or disjoint i8 %i.bf, %i.be
  store i8 %i.bg, ptr %i.ar, align 4
  %i.bh = load i8, ptr %i.au, align 4
  %i.bi = and i8 %i.bh, -2
  %i.bj = or disjoint i8 %i.bi, %i.bd
  store i8 %i.bj, ptr %i.au, align 4
  %i.bk = load i32, ptr %3, align 8, !tbaa !26
  %i.bl = load i32, ptr %i.j, align 8, !tbaa !26
  store i32 %i.bl, ptr %3, align 8, !tbaa !26
  store i32 %i.bk, ptr %i.j, align 8, !tbaa !26
  br label %bb.b, !llvm.loop !483
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairI8rationaljESt6vectorIS4_13std_allocatorIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2lp35print_linear_combination_customizedIS3_EERSoRK6vectorIS2_IT_jELb1EjESt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEESF_EUlRKSH_RKT0_E_EEEvSH_SH_SX_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.141", align 8    ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.018 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.f ] ; 6 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %bb.f ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pn17, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !326  ; 2 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !326
  %i.r = icmp ult i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.s = load i8, ptr %i.d, align 4
  %i.t = and i8 %i.s, -4
  %i.u = load i32, ptr %.sroa.0.018, align 4, !tbaa !26
  store i32 %i.u, ptr %2, align 8, !tbaa !26
  store i32 0, ptr %.sroa.0.018, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %.pn17, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !324
  store ptr %i.w, ptr %i.e, align 8, !tbaa !324
  store ptr null, ptr %i.v, align 8, !tbaa !324
  %i.x = getelementptr inbounds nuw i8, ptr %.pn17, i64 44 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4               ; 2 uses
  %i.z = and i8 %i.y, 3
  %i.aa = or disjoint i8 %i.z, %i.t
  store i8 %i.aa, ptr %i.d, align 4
  %i.ab = and i8 %i.y, -4
  store i8 %i.ab, ptr %i.x, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn17, i64 56 ; 2 uses
  %i.ad = load i8, ptr %i.g, align 4
  %i.ae = and i8 %i.ad, -4
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !26
  store i32 %i.af, ptr %i.f, align 8, !tbaa !26
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn17, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !324
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !324
  store ptr null, ptr %i.ag, align 8, !tbaa !324
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17, i64 60 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4             ; 2 uses
  %i.ak = and i8 %i.aj, 3
  %i.al = or disjoint i8 %i.ak, %i.ae
  store i8 %i.al, ptr %i.g, align 4
  %i.am = and i8 %i.aj, -4
  store i8 %i.am, ptr %i.ai, align 4
  store i32 %i.p, ptr %i.i, align 8, !tbaa !326
  %i.an = getelementptr inbounds nuw i8, ptr %.pn17, i64 80
  %i.ao = call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairI8rationaljES6_EET0_T_S8_S7_(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.0.018, ptr noundef nonnull %i.an) ; 0 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !26
  %i.aq = load i32, ptr %2, align 8, !tbaa !26
  store i32 %i.aq, ptr %0, align 8, !tbaa !26
  store i32 %i.ap, ptr %2, align 8, !tbaa !26
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !324
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !324
  store ptr %i.as, ptr %i.j, align 8, !tbaa !324
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !324
  %i.at = load i8, ptr %i.k, align 4              ; 2 uses
  %i.au = load i8, ptr %i.d, align 4              ; 2 uses
  %i.av = and i8 %i.at, -4
  %i.aw = and i8 %i.au, -4
  %i.ax = and i8 %i.au, 3
  %i.ay = or disjoint i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.k, align 4
  %i.az = and i8 %i.at, 3
  %i.ba = or disjoint i8 %i.aw, %i.az
  store i8 %i.ba, ptr %i.d, align 4
  %i.bb = load i32, ptr %i.l, align 8, !tbaa !26
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !26
  store i32 %i.bc, ptr %i.l, align 8, !tbaa !26
  store i32 %i.bb, ptr %i.f, align 8, !tbaa !26
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !324
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !324
  store ptr %i.be, ptr %i.m, align 8, !tbaa !324
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !324
  %i.bf = load i8, ptr %i.n, align 4              ; 2 uses
  %i.bg = load i8, ptr %i.g, align 4              ; 2 uses
  %i.bh = and i8 %i.bf, -4
  %i.bi = and i8 %i.bg, -4
  %i.bj = and i8 %i.bg, 3
  %i.bk = or disjoint i8 %i.bj, %i.bh
  store i8 %i.bk, ptr %i.n, align 4
  %i.bl = and i8 %i.bf, 3
  %i.bm = or disjoint i8 %i.bi, %i.bl
  store i8 %i.bm, ptr %i.g, align 4
  %i.bn = load i32, ptr %i.i, align 8, !tbaa !26
  store i32 %i.bn, ptr %i.c, align 8, !tbaa !326
  %i.bo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNSt4pairI8rationaljED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc.i.i, %bb.c
  %i.bp = landingpad { ptr, i32 }
end_hunk_0
