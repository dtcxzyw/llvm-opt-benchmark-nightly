Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newvor?download=true
inline.NumInlined: 47
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@do_merge:bb.a
  %i.hk = and i64 %i.hj, 127
  %i.hl = and i64 %i.hi, -128
  %i.hm = or disjoint i64 %i.hk, %i.hl            ; 2 uses
  %i.hn = xor i64 %i.hm, 64
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !15
  %i.hq = load <2 x double>, ptr %i.hp, align 8, !tbaa !27
  %i.hr = fsub <2 x double> %i.hq, %i.ch          ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 0
  %i.ht = fmul double %i.hs, %i.cm
  %i.hu = extractelement <2 x double> %i.hr, i64 1
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.hu, double %i.ht)
  %i.hw = fcmp ule double %i.hv, 0.000000e+00
  br i1 %i.hw, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit145
  %i.hx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !28 ; 3 uses
  %avail_edge.promoted149 = load ptr, ptr @avail_edge, align 8
  %i.hz = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ia = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.l
  %i.ib = phi ptr [ %i.mf, %bb.l ], [ %avail_edge.promoted149, %.preheader ]
  %.1112 = phi ptr [ %.1110, %bb.l ], [ %.0111, %.preheader ] ; 5 uses
  %.1104.in.in.in = phi i64 [ %i.ms, %bb.l ], [ %i.hm, %.preheader ] ; 5 uses
  %.1102.in.in.in = phi i64 [ %.1104.in.in.in, %bb.l ], [ %i.ha, %.preheader ]
  %.1 = load ptr, ptr %.1112, align 8, !tbaa !15  ; 2 uses
  %.1102.in.in = xor i64 %.1102.in.in.in, 64
  %.1102.in = inttoptr i64 %.1102.in.in to ptr
  %.1102 = load ptr, ptr %.1102.in, align 8, !tbaa !15 ; 2 uses
  %.1104.in.in = xor i64 %.1104.in.in.in, 64
  %.1104.in = inttoptr i64 %.1104.in.in to ptr
  %.1104 = load ptr, ptr %.1104.in, align 8, !tbaa !15 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.1104, i64 16
  %i.id = load double, ptr %i.ic, align 8, !tbaa !28
  %i.ie = getelementptr inbounds nuw i8, ptr %.1102, i64 16
  %i.if = load double, ptr %i.ie, align 8, !tbaa !28
  %i.ig = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !28
  %i.ii = fsub double %i.id, %i.hy
  %i.ij = fsub double %i.if, %i.hy
  %i.ik = load <2 x double>, ptr %.1104, align 8, !tbaa !27 ; 2 uses
  %i.il = load <2 x double>, ptr %.1102, align 8, !tbaa !27 ; 2 uses
  %i.im = shufflevector <2 x double> %i.il, <2 x double> %i.ik, <2 x i32> <i32 0, i32 3>
  %i.in = fsub <2 x double> %i.im, %i.ch          ; 3 uses
  %i.io = load <2 x double>, ptr %.1, align 8, !tbaa !27 ; 3 uses
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = fsub <2 x double> %i.ip, %i.ia          ; 2 uses
  %i.ir = fsub <2 x double> %i.io, %i.ch
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.it = shufflevector <2 x double> %i.il, <2 x double> %i.io, <2 x i32> <i32 1, i32 3>
  %i.iu = fsub <2 x double> %i.it, %i.hz          ; 2 uses
  %i.iv = fneg <2 x double> %i.iq
  %i.iw = fmul <2 x double> %i.iu, %i.iv
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.in, <2 x double> %i.iw) ; 2 uses
  %i.iy = fsub double %i.ih, %i.hy
  %i.iz = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.ja = fneg <2 x double> %i.in
  %i.jb = shufflevector <2 x double> %i.iz, <2 x double> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.jc = shufflevector <2 x double> %i.ix, <2 x double> %i.in, <2 x i32> <i32 0, i32 3>
  %i.jd = fmul <2 x double> %i.jb, %i.jc
  %i.je = insertelement <2 x double> %i.iq, double %i.ij, i64 0
  %i.jf = shufflevector <2 x double> %i.ix, <2 x double> %i.iu, <2 x i32> <i32 1, i32 2>
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.jf, <2 x double> %i.jd) ; 2 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0
  %i.ji = extractelement <2 x double> %i.jg, i64 1
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.iy, double %i.ji, double %i.jh)
  %i.jk = fcmp ule double %i.jj, 0.000000e+00
  br i1 %i.jk, label %.loopexit.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.1110 = inttoptr i64 %.1104.in.in.in to ptr
  %i.jl = ptrtoint ptr %.1112 to i64              ; 3 uses
  %i.jm = add i64 %i.jl, 32
  %i.jn = and i64 %i.jm, 127
  %i.jo = and i64 %i.jl, -128                     ; 3 uses
  %i.jp = or disjoint i64 %i.jn, %i.jo
  %i.jq = inttoptr i64 %i.jp to ptr
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !16
  %i.jt = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.ju = add i64 %i.jt, 32
  %i.jv = and i64 %i.ju, 127
  %i.jw = and i64 %i.jt, -128
  %i.jx = or disjoint i64 %i.jv, %i.jw
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = getelementptr inbounds nuw i8, ptr %.1112, i64 8 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !16
  %i.kb = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.kc = add i64 %i.kb, 32
  %i.kd = and i64 %i.kc, 127
  %i.ke = and i64 %i.kb, -128
  %i.kf = or disjoint i64 %i.kd, %i.ke
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !16
  %i.kj = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kk = add i64 %i.kj, 32
  %i.kl = and i64 %i.kk, 127
  %i.km = and i64 %i.kj, -128
  %i.kn = or disjoint i64 %i.kl, %i.km
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !16
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !16
  store ptr %i.ks, ptr %i.kp, align 8, !tbaa !16
  %i.kt = load ptr, ptr %i.jz, align 8, !tbaa !16
  %i.ku = load ptr, ptr %i.kh, align 8, !tbaa !16
  store ptr %i.kt, ptr %i.kh, align 8, !tbaa !16
  store ptr %i.ku, ptr %i.jz, align 8, !tbaa !16
  %i.kv = xor i64 %i.jl, 64                       ; 2 uses
  %i.kw = inttoptr i64 %i.kv to ptr
  %i.kx = add i64 %i.kv, 32
  %i.ky = and i64 %i.kx, 127
  %i.kz = or disjoint i64 %i.ky, %i.jo
  %i.la = inttoptr i64 %i.kz to ptr
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !16
  %i.ld = ptrtoint ptr %i.lc to i64               ; 2 uses
  %i.le = add i64 %i.ld, 32
  %i.lf = and i64 %i.le, 127
  %i.lg = and i64 %i.ld, -128
  %i.lh = or disjoint i64 %i.lf, %i.lg
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !16
  %i.ll = ptrtoint ptr %i.lk to i64               ; 2 uses
  %i.lm = add i64 %i.ll, 32
  %i.ln = and i64 %i.lm, 127
  %i.lo = and i64 %i.ll, -128
  %i.lp = or disjoint i64 %i.ln, %i.lo
  %i.lq = inttoptr i64 %i.lp to ptr
  %i.lr = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !16
  %i.lt = ptrtoint ptr %i.ls to i64               ; 2 uses
  %i.lu = add i64 %i.lt, 32
  %i.lv = and i64 %i.lu, 127
  %i.lw = and i64 %i.lt, -128
  %i.lx = or disjoint i64 %i.lv, %i.lw
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !16
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !16
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !16
  store ptr %i.mc, ptr %i.lz, align 8, !tbaa !16
  %i.md = load ptr, ptr %i.lj, align 8, !tbaa !16
  %i.me = load ptr, ptr %i.lr, align 8, !tbaa !16
  store ptr %i.md, ptr %i.lr, align 8, !tbaa !16
  store ptr %i.me, ptr %i.lj, align 8, !tbaa !16
  %i.mf = inttoptr i64 %i.jo to ptr               ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store ptr %i.ib, ptr %i.mg, align 8, !tbaa !16
  store ptr %i.mf, ptr @avail_edge, align 8, !tbaa !17
  %i.mh = add i64 %.1104.in.in.in, 32
  %i.mi = and i64 %i.mh, 127
  %i.mj = and i64 %.1104.in.in.in, -128
  %i.mk = or disjoint i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !16
  %i.mo = ptrtoint ptr %i.mn to i64               ; 2 uses
  %i.mp = add i64 %i.mo, 32
  %i.mq = and i64 %i.mp, 127
  %i.mr = and i64 %i.mo, -128
  %i.ms = or disjoint i64 %i.mq, %i.mr
  br label %bb.k, !llvm.loop !39

.loopexit.loopexit:                               ; preds = %bb.k
  %.pre151 = ptrtoint ptr %.1112 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit145
  %.pre-phi = phi i64 [ %.pre151, %.loopexit.loopexit ], [ %i.ha, %.loopexit145 ]
  %.2 = phi ptr [ %.1112, %.loopexit.loopexit ], [ %.0111, %.loopexit145 ] ; 3 uses
  %i.mt = ptrtoint ptr %.2115 to i64
  %i.mu = xor i64 %i.mt, 64
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !15 ; 2 uses
  %i.mx = xor i64 %.pre-phi, 64
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !15 ; 2 uses
  %i.na = load <2 x double>, ptr %i.mz, align 8, !tbaa !27 ; 6 uses
  %i.nb = load <2 x double>, ptr %i.mw, align 8, !tbaa !27 ; 4 uses
  %i.nc = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nd = shufflevector <2 x double> %i.na, <2 x double> %i.nb, <2 x i32> <i32 1, i32 3>
  %i.ne = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nf = fsub <2 x double> %i.nd, %i.ne
  %i.ng = shufflevector <2 x double> %i.na, <2 x double> %i.nb, <2 x i32> <i32 0, i32 2>
  %i.nh = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ni = fsub <2 x double> %i.ng, %i.nh
  %i.nj = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = fmul <2 x double> %i.ni, %i.nk
  %i.nm = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.nf, <2 x double> %i.nl)
  %.fr = freeze <2 x double> %i.nn
  %i.no = fcmp ogt <2 x double> %.fr, zeroinitializer ; 3 uses
  %i.np = extractelement <2 x i1> %i.no, i64 0
  %4 = bitcast <2 x i1> %i.no to i2
  %or.cond.not = icmp eq i2 %4, 0
  br i1 %or.cond.not, label %bb.s, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %5 = extractelement <2 x i1> %i.no, i64 1
  %i.nq = load ptr, ptr %.2115, align 8, !tbaa !15 ; 2 uses
  %i.nr = load ptr, ptr %.2, align 8, !tbaa !15   ; 2 uses
  br i1 %5, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.np, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !28 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !28
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !28
  %i.nz = fsub double %i.nv, %i.nt
  %foldExtExtBinop159 = fsub <2 x double> %i.nb, %i.na ; 2 uses
  %i.oa = load <2 x double>, ptr %i.nq, align 8, !tbaa !27
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> %i.nb, <2 x i32> <i32 0, i32 3>
  %i.oc = fsub <2 x double> %i.ob, %i.na          ; 3 uses
  %i.od = load <2 x double>, ptr %i.nr, align 8, !tbaa !27
  %i.oe = fsub <2 x double> %i.od, %i.na          ; 3 uses
  %i.of = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.og = shufflevector <2 x double> %i.oe, <2 x double> %foldExtExtBinop159, <2 x i32> <i32 0, i32 2>
  %i.oh = fneg <2 x double> %i.og
  %i.oi = fsub double %i.ny, %i.nt
  %i.oj = extractelement <2 x double> %i.oc, i64 0
  %i.ok = fneg double %i.oj
  %i.ol = load <2 x double>, ptr %i.nw, align 8, !tbaa !27
  %i.om = insertelement <2 x double> %i.nc, double %i.nt, i64 1
  %i.on = fsub <2 x double> %i.ol, %i.om          ; 2 uses
  %i.oo = shufflevector <2 x double> %i.on, <2 x double> %i.oe, <2 x i32> <i32 0, i32 3>
  %i.op = fmul <2 x double> %i.oo, %i.oh
  %i.oq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.of, <2 x double> %i.oc, <2 x double> %i.op) ; 2 uses
  %i.or = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.os = insertelement <2 x double> %i.or, double %i.nz, i64 1
  %i.ot = shufflevector <2 x double> %i.oc, <2 x double> %i.oq, <2 x i32> <i32 1, i32 2>
  %i.ou = fmul <2 x double> %i.os, %i.ot
  %i.ov = shufflevector <2 x double> %foldExtExtBinop159, <2 x double> %i.oq, <2 x i32> <i32 0, i32 3>
  %i.ow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.ov, <2 x double> %i.ou) ; 2 uses
  %i.ox = extractelement <2 x double> %i.ow, i64 0
  %i.oy = extractelement <2 x double> %i.ow, i64 1
  %i.oz = tail call double @llvm.fmuladd.f64(double %i.oi, double %i.ox, double %i.oy)
  %i.pa = fcmp ule double %i.oz, 0.000000e+00
  br i1 %i.pa, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.pb = tail call ptr @connect_left(ptr noundef nonnull %.2, ptr noundef nonnull %i.ca) ; 2 uses
  %i.pc = ptrtoint ptr %i.pb to i64               ; 2 uses
  %i.pd = xor i64 %i.pc, 64
  %i.pe = add i64 %i.pd, 96
  %i.pf = and i64 %i.pe, 127
  %i.pg = and i64 %i.pc, -128
  %i.ph = or disjoint i64 %i.pf, %i.pg
  %i.pi = inttoptr i64 %i.ph to ptr
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !16
  %i.pl = ptrtoint ptr %i.pk to i64               ; 2 uses
  %i.pm = add i64 %i.pl, 32
  %i.pn = and i64 %i.pm, 127
  %i.po = and i64 %i.pl, -128
  %i.pp = or disjoint i64 %i.pn, %i.po
  %i.pq = inttoptr i64 %i.pp to ptr
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.pr = tail call ptr @connect_right(ptr noundef nonnull %.2115, ptr noundef nonnull %.0118) ; 2 uses
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = xor i64 %i.ps, 64
  %i.pu = inttoptr i64 %i.pt to ptr
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.2120 = phi ptr [ %i.pu, %bb.q ], [ %i.pb, %bb.p ] ; 2 uses
  %.4117 = phi ptr [ %i.pw, %bb.q ], [ %.2115, %bb.p ]
  %.4 = phi ptr [ %.2, %bb.q ], [ %i.pq, %bb.p ]
  %.pre = load ptr, ptr %.2120, align 8, !tbaa !15
  br label %bb.h

bb.s:                                             ; preds = %.loopexit
  %i.px = icmp eq ptr %i.bs, %i.bu
  %.0126 = select i1 %i.px, ptr %i.bb, ptr %0
  %i.py = icmp eq ptr %i.br, %i.bt
  %spec.select = select i1 %i.py, ptr %i.ay, ptr %3
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0126, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %spec.select, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ccw(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !26
  %i.d = load double, ptr %1, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !26
  %i.g = load double, ptr %2, align 8, !tbaa !25  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !26 ; 2 uses
  %i.j = fsub double %i.a, %i.g
  %i.k = fsub double %i.f, %i.i
  %i.l = fsub double %i.d, %i.g
  %i.m = fsub double %i.c, %i.i
  %i.n = fneg double %i.m
  %i.o = fmul double %i.l, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.j, double %i.k, double %i.o)
  %i.q = fcmp ogt double %i.p, 0.000000e+00
  %i.r = zext i1 %i.q to i32
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @delete_all_edges() local_unnamed_addr #8 {
bb.a:
  store ptr null, ptr @next_edge, align 8, !tbaa !17
  store ptr null, ptr @avail_edge, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias nonnull ptr @myalign(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = tail call noalias ptr @memalign(i64 noundef %i.a, i64 noundef %i.b) #25 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 %i.a) ]
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef -1) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @memalign(i64 allocalign noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @alloc_edge() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @avail_edge, align 8, !tbaa !17 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias align 128 dereferenceable_or_null(128) ptr @memalign(i64 noundef 128, i64 noundef 128) #25 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %myalign.exit

bb.c:                                             ; preds = %bb.b
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef -1) #26
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  store ptr %i.f, ptr @avail_edge, align 8, !tbaa !17
  br label %myalign.exit

myalign.exit:                                     ; preds = %bb.b, %bb.d
  %.0 = phi ptr [ %i.a, %bb.d ], [ %i.c, %bb.b ]  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 48
  store i64 0, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 80
  store i64 0, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 112
  store i64 0, ptr %i.j, align 8, !tbaa !18
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @incircle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !28
  %i.i = fsub double %i.d, %i.b
  %i.j = fsub double %i.f, %i.b
end_hunk_0
