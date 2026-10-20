Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IRRLoader?download=true
inline.NumInlined: 1776
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp11IRRImporter17ComputeAnimationsEPNS0_4NodeEP6aiNodeRSt6vectorIP10aiNodeAnimSaIS7_EE:bb.a
  %i.jp = fneg <2 x float> %i.jo
  %i.jq = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jr = insertelement <2 x float> %i.jq, float %.sroa.18.1, i64 0
  %i.js = fmul <2 x float> %i.jr, %i.jp
  %i.jt = insertelement <2 x float> %i.jq, float %.sroa.18.1, i64 1
  %i.ju = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jv = insertelement <2 x float> %i.ju, float %i.jm, i64 1
  %i.jw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.jv, <2 x float> %i.js) ; 5 uses
  %i.jx = fneg float %i.jm
  %i.jy = fmul float %i.jl, %i.jx
  %i.jz = extractelement <2 x float> %i.jo, i64 0
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.jz, float %i.jy) ; 4 uses
  %foldExtExtBinop757 = fmul <2 x float> %i.jw, %i.jw
  %i.kb = extractelement <2 x float> %foldExtExtBinop757, i64 1
  %i.kc = extractelement <2 x float> %i.jw, i64 0 ; 2 uses
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.kc, float %i.kb)
  %i.ke = tail call noundef float @llvm.fmuladd.f32(float %i.ka, float %i.ka, float %i.kd)
  %i.kf = tail call noundef float @sqrtf(float noundef %i.ke) #26 ; 2 uses
  %i.kg = fcmp oeq float %i.kf, 0.000000e+00      ; 2 uses
  %i.kh = fdiv float 1.000000e+00, %i.kf          ; 2 uses
  %i.ki = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x float> %i.jw, %i.kj
  %i.kl = fmul float %i.kh, %i.ka
  %.sroa.0441.0 = select i1 %i.kg, <2 x float> %i.jw, <2 x float> %i.kk
  %.sroa.12.0 = select i1 %i.kg, float %i.ka, float %i.kl
  %i.km = load i32, ptr %i.hn, align 4
  %.not616 = icmp eq i32 %i.km, 0
  br i1 %.not616, label %._crit_edge598, label %.lr.ph597

.lr.ph597:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 36
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 44
  br label %bb.aw

._crit_edge598:                                   ; preds = %bb.aw, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 3, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 3, ptr %i.kr, align 4
  br label %.loopexit580

bb.aw:                                            ; preds = %.lr.ph597, %bb.aw
  %indvars.iv628 = phi i64 [ 0, %.lr.ph597 ], [ %indvars.iv.next629, %bb.aw ] ; 3 uses
  %i.ks = load ptr, ptr %i.hx, align 8
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %i.ks, i64 %indvars.iv628 ; 3 uses
  %i.ku = trunc nuw i64 %indvars.iv628 to i32
  %i.kv = uitofp i32 %i.ku to double
  %i.kw = fmul double %i.hk, %i.kv                ; 2 uses
  store double %i.kw, ptr %i.kt, align 8
  %i.kx = load float, ptr %i.he, align 4
  %i.ky = fpext float %i.kx to double
  %i.kz = fmul double %i.kw, %i.ky
  %i.la = fptrunc double %i.kz to float           ; 2 uses
  %i.lb = load float, ptr %i.ko, align 8          ; 2 uses
  %i.lc = tail call noundef float @cosf(float noundef %i.la) #26 ; 2 uses
  %i.ld = fmul float %.sroa.12.0, %i.lc
  %i.le = tail call noundef float @sinf(float noundef %i.la) #26 ; 2 uses
  %i.lf = fmul float %.sroa.18.1, %i.le
  %i.lg = fadd float %i.ld, %i.lf
  %i.lh = fmul float %i.lb, %i.lg
  %i.li = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = fmul <2 x float> %.sroa.0441.0, %i.lj
  %i.ll = insertelement <2 x float> poison, float %i.le, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x float> %i.jk, %i.lm
  %i.lo = fadd <2 x float> %i.lk, %i.ln
  %i.lp = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fmul <2 x float> %i.lq, %i.lo
  %i.ls = load <2 x float>, ptr %i.kn, align 4
  %i.lt = fadd <2 x float> %i.ls, %i.lr
  %i.lu = load float, ptr %i.kp, align 4
  %i.lv = fadd float %i.lu, %i.lh
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store <2 x float> %i.lt, ptr %i.lw, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store float %i.lv, ptr %.sroa.4129.0..sroa_idx, align 8
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %i.lx = load i32, ptr %i.hn, align 4
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next629, %i.ly
  br i1 %i.lz, label %bb.aw, label %._crit_edge598, !llvm.loop !15

bb.ax:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 80
  %i.mb = load i8, ptr %i.ma, align 8, !range !7, !noundef !8
  %i.mc = trunc nuw i8 %i.mb to i1
  %i.md = select i1 %i.mc, i32 3, i32 1           ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 %i.md, ptr %i.me, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 %i.md, ptr %i.mf, align 4
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 84 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = sitofp i32 %i.mh to double
  %i.mj = fdiv nnan double %i.mi, 1.000000e+03
  %i.mk = load double, ptr %i.m, align 8          ; 2 uses
  %i.ml = fdiv double 1.000000e+03, %i.mk
  %i.mm = fmul double %i.mk, %i.mj
  %i.mn = fptoui double %i.mm to i32              ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 3 uses
  store i32 %i.mn, ptr %i.mo, align 4
  %i.mp = zext i32 %i.mn to i64                   ; 2 uses
  %i.mq = mul nuw nsw i64 %i.mp, 24
  %i.mr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mq) #28 ; 3 uses
  %i.ms = icmp eq i32 %i.mn, 0
  br i1 %i.ms, label %.loopexit581, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.mr, i64 %i.mp
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %i.mu = phi ptr [ %i.mr, %bb.ay ], [ %i.mw, %bb.az ] ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.mv, align 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 24 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.mt
  br i1 %i.mx, label %.loopexit581, label %bb.az

.loopexit581:                                     ; preds = %bb.az, %bb.ax
  %i.my = getelementptr inbounds nuw i8, ptr %i.r, i64 1032 ; 2 uses
  store ptr %i.mr, ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 24
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 36 ; 2 uses
  %i.nb = load <2 x float>, ptr %i.mz, align 8
  %i.nc = load <2 x float>, ptr %i.na, align 4
  %i.nd = fsub <2 x float> %i.nb, %i.nc           ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 32
  %i.nf = load float, ptr %i.ne, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 44 ; 2 uses
  %i.nh = load float, ptr %i.ng, align 4
  %i.ni = fsub float %i.nf, %i.nh                 ; 4 uses
  %foldExtExtBinop759 = fmul <2 x float> %i.nd, %i.nd
  %i.nj = extractelement <2 x float> %foldExtExtBinop759, i64 1
  %i.nk = extractelement <2 x float> %i.nd, i64 0 ; 2 uses
  %i.nl = tail call float @llvm.fmuladd.f32(float %i.nk, float %i.nk, float %i.nj)
  %i.nm = tail call noundef float @llvm.fmuladd.f32(float %i.ni, float %i.ni, float %i.nl)
  %i.nn = tail call noundef float @sqrtf(float noundef %i.nm) #26 ; 3 uses
  %i.no = fcmp oeq float %i.nn, 0.000000e+00      ; 2 uses
  %i.np = fdiv float 1.000000e+00, %i.nn          ; 2 uses
  %i.nq = insertelement <2 x float> poison, float %i.np, i64 0
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ns = fmul <2 x float> %i.nd, %i.nr
  %i.nt = fmul float %i.ni, %i.np
  %.sroa.0410.0 = select i1 %i.no, <2 x float> %i.nd, <2 x float> %i.ns
  %.sroa.15.0 = select i1 %i.no, float %i.ni, float %i.nt
  %i.nu = load i32, ptr %i.mg, align 4
  %i.nv = sitofp i32 %i.nu to float
  %i.nw = fdiv float %i.nn, %i.nv
  %i.nx = fpext float %i.nw to double
  %i.ny = load i32, ptr %i.mo, align 4
  %.not615 = icmp eq i32 %i.ny, 0
  br i1 %.not615, label %.loopexit580, label %.lr.ph595

.lr.ph595:                                        ; preds = %.loopexit581, %.lr.ph595
  %indvars.iv625 = phi i64 [ %indvars.iv.next626, %.lr.ph595 ], [ 0, %.loopexit581 ] ; 3 uses
  %i.nz = load ptr, ptr %i.my, align 8
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.nz, i64 %indvars.iv625 ; 3 uses
  %i.ob = trunc nuw i64 %indvars.iv625 to i32
  %i.oc = uitofp i32 %i.ob to double
  %i.od = fmul double %i.ml, %i.oc                ; 2 uses
  store double %i.od, ptr %i.oa, align 8
  %i.oe = fmul double %i.od, %i.nx
  %i.of = fptrunc double %i.oe to float           ; 2 uses
  %i.og = fmul float %.sroa.15.0, %i.of
  %i.oh = insertelement <2 x float> poison, float %i.of, i64 0
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oj = fmul <2 x float> %.sroa.0410.0, %i.oi
  %i.ok = load <2 x float>, ptr %i.na, align 4
  %i.ol = fadd <2 x float> %i.oj, %i.ok
  %i.om = load float, ptr %i.ng, align 4
  %i.on = fadd float %i.og, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store <2 x float> %i.ol, ptr %i.oo, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store float %i.on, ptr %.sroa.492.0..sroa_idx, align 8
  %indvars.iv.next626 = add nuw nsw i64 %indvars.iv625, 1 ; 2 uses
  %i.op = load i32, ptr %i.mo, align 4
  %i.oq = zext i32 %i.op to i64
  %i.or = icmp samesign ult i64 %indvars.iv.next626, %i.oq
  br i1 %i.or, label %.lr.ph595, label %.loopexit580, !llvm.loop !16

bb.ba:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.os = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 3, ptr %i.os, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 3, ptr %i.ot, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 56 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 64
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = load ptr, ptr %i.ou, align 8
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = sdiv exact i64 %i.pa, 24
  %i.pc = trunc i64 %i.pb to i32                  ; 13 uses
  switch i32 %i.pc, label %bb.bi [
    i32 0, label %bb.bb
    i32 1, label %bb.bh
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.pd = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.pd, ptr noundef nonnull @.str.12)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  %i.pf = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZdaPv(ptr noundef nonnull %i.pf) #27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ph = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZdaPv(ptr noundef nonnull %i.ph) #27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.pj = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZdaPv(ptr noundef nonnull %i.pj) #27
  br label %bb.bm

bb.bh:                                            ; preds = %bb.ba
  %i.pl = getelementptr inbounds nuw i8, ptr %i.r, i64 1028
  store i32 1, ptr %i.pl, align 4
  %i.pm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #28 ; 5 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pm, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.pn, align 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  store ptr %i.pm, ptr %i.po, align 8
  %i.pp = load ptr, ptr %i.ou, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pr, ptr noundef nonnull align 8 dereferenceable(12) %i.pq, i64 12, i1 false)
  store double 0.000000e+00, ptr %i.pm, align 8
  br label %.loopexit580

bb.bi:                                            ; preds = %bb.ba
  %i.ps = load double, ptr %i.m, align 8
  %i.pt = fmul double %i.ps, 1.500000e+01
  %i.pu = fptoui double %i.pt to i32              ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 3 uses
  store i32 %i.pu, ptr %i.pv, align 4
  %i.pw = zext i32 %i.pu to i64                   ; 2 uses
  %i.px = mul nuw nsw i64 %i.pw, 24
  %i.py = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.px) #28 ; 3 uses
  %i.pz = icmp eq i32 %i.pu, 0
  br i1 %i.pz, label %.loopexit583, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qa = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %i.pw
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %i.qb = phi ptr [ %i.py, %bb.bj ], [ %i.qd, %bb.bk ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.qc, align 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 24 ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.qa
  br i1 %i.qe, label %.loopexit583, label %bb.bk

.loopexit583:                                     ; preds = %bb.bk, %bb.bi
  %i.qf = getelementptr inbounds nuw i8, ptr %i.r, i64 1032 ; 2 uses
  store ptr %i.py, ptr %i.qf, align 8
  %i.qg = load i32, ptr %i.pv, align 4
  %.not614 = icmp eq i32 %i.qg, 0
  br i1 %.not614, label %.loopexit580, label %.lr.ph593

.lr.ph593:                                        ; preds = %.loopexit583
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 20
  %i.qi = tail call i32 @llvm.smin.i32(i32 %i.pc, i32 0)
  %i.qj = sub i32 0, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0545.0610, i64 52
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph593, %bb.bl
  %indvars.iv622 = phi i64 [ 0, %.lr.ph593 ], [ %indvars.iv.next623, %bb.bl ] ; 3 uses
  %i.ql = load ptr, ptr %i.qf, align 8
  %i.qm = getelementptr inbounds nuw [24 x i8], ptr %i.ql, i64 %indvars.iv622 ; 3 uses
  %i.qn = trunc nuw i64 %indvars.iv622 to i32     ; 2 uses
  %i.qo = uitofp i32 %i.qn to float
  %i.qp = load float, ptr %i.qh, align 4
  %i.qq = fmul float %i.qp, %i.qo
  %i.qr = fmul float %i.qq, 1.000000e-03          ; 2 uses
  %i.qs = tail call noundef float @llvm.floor.f32(float %i.qr) ; 2 uses
  %i.qt = fsub float %i.qr, %i.qs                 ; 2 uses
  %i.qu = fptosi float %i.qs to i32
  %i.qv = srem i32 %i.qu, %i.pc                   ; 8 uses
  %i.qw = add nsw i32 %i.qv, -1                   ; 2 uses
  %4 = icmp slt i32 %i.qv, 1
  %i.qx = icmp slt i32 %i.qw, %i.pc
  %5 = select i1 %i.qx, i32 0, i32 %i.pc
  %6 = sub i32 0, %5
  %.p.i = select i1 %4, i32 %i.pc, i32 %6
  %i.qy = add i32 %.p.i, %i.qw
  %i.qz = sext i32 %i.qy to i64
  %i.ra = load ptr, ptr %i.ou, align 8            ; 4 uses
  %i.rb = getelementptr inbounds nuw [24 x i8], ptr %i.ra, i64 %i.qz ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = icmp slt i32 %i.qv, 0
  %.p.i341 = select i1 %i.rd, i32 %i.pc, i32 %i.qj
  %i.re = add i32 %.p.i341, %i.qv
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [24 x i8], ptr %i.ra, i64 %i.rf ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = add nsw i32 %i.qv, 1                    ; 2 uses
  %i.rj = icmp slt i32 %i.qv, -1
  %.not.i342 = icmp slt i32 %i.ri, %i.pc
  %i.rk = select i1 %.not.i342, i32 0, i32 %i.pc
  %i.rl = sub i32 0, %i.rk
  %.p.i343 = select i1 %i.rj, i32 %i.pc, i32 %i.rl
  %i.rm = add i32 %.p.i343, %i.ri
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw [24 x i8], ptr %i.ra, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rq = add nsw i32 %i.qv, 2                    ; 2 uses
  %i.rr = icmp slt i32 %i.qv, -2
  %.not.i344 = icmp slt i32 %i.rq, %i.pc
  %i.rs = select i1 %.not.i344, i32 0, i32 %i.pc
  %i.rt = sub i32 0, %i.rs
  %.p.i345 = select i1 %i.rr, i32 %i.pc, i32 %i.rt
  %i.ru = add i32 %.p.i345, %i.rq
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw [24 x i8], ptr %i.ra, i64 %i.rv ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = fmul float %i.qt, %i.qt                 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.sa = load float, ptr %i.rz, align 4          ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.sc = load float, ptr %i.sb, align 4
  %i.sd = fsub float %i.sa, %i.sc
  %i.se = load float, ptr %i.qk, align 4          ; 3 uses
  %i.sf = fmul float %i.se, %i.sd
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.sh = load float, ptr %i.sg, align 4
  %i.si = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.sj = load float, ptr %i.si, align 4          ; 2 uses
  %i.sk = fsub float %i.sh, %i.sj
  %i.sl = fmul float %i.se, %i.sk
  %i.sm = fmul float %i.ry, 2.000000e+00          ; 4 uses
  %i.sn = fmul float %i.ry, -3.000000e+00
  %i.so = tail call float @llvm.fmuladd.f32(float %i.sm, float 2.000000e+00, float %i.sn)
  %i.sp = fadd float %i.so, 1.000000e+00          ; 2 uses
  %i.sq = fmul float %i.sm, 3.000000e+00
  %i.sr = insertelement <2 x float> poison, float %i.sm, i64 0 ; 2 uses
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = insertelement <2 x float> %i.sr, float %i.sq, i64 1
  %i.su = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ss, <2 x float> splat (float -2.000000e+00), <2 x float> %i.st) ; 4 uses
  %i.sv = fsub float %i.sm, %i.ry                 ; 2 uses
  %i.sw = load <2 x float>, ptr %i.rp, align 4    ; 2 uses
  %i.sx = load <2 x float>, ptr %i.rc, align 4
  %i.sy = fsub <2 x float> %i.sw, %i.sx
  %i.sz = insertelement <2 x float> poison, float %i.se, i64 0
  %i.ta = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tb = fmul <2 x float> %i.sy, %i.ta
  %i.tc = load <2 x float>, ptr %i.rx, align 4
  %i.td = load <2 x float>, ptr %i.rh, align 4    ; 2 uses
  %i.te = fsub <2 x float> %i.tc, %i.td
  %i.tf = fmul <2 x float> %i.ta, %i.te
  %i.tg = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.th = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ti = fmul <2 x float> %i.th, %i.td
  %i.tj = fmul float %i.sp, %i.sj
  %i.tk = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tl = fmul <2 x float> %i.sw, %i.tk
  %i.tm = extractelement <2 x float> %i.su, i64 1
  %i.tn = fmul float %i.sa, %i.tm
  %i.to = fadd <2 x float> %i.tl, %i.ti
  %i.tp = fadd float %i.tn, %i.tj
  %i.tq = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x float> %i.tq, %i.tb
  %i.ts = extractelement <2 x float> %i.su, i64 0
  %i.tt = fmul float %i.ts, %i.sf
  %i.tu = fadd <2 x float> %i.tr, %i.to
  %i.tv = fadd float %i.tt, %i.tp
  %i.tw = insertelement <2 x float> poison, float %i.sv, i64 0
  %i.tx = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ty = fmul <2 x float> %i.tx, %i.tf
  %i.tz = fmul float %i.sv, %i.sl
  %i.ua = fadd <2 x float> %i.tu, %i.ty
  %i.ub = fadd float %i.tv, %i.tz
  %i.uc = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store <2 x float> %i.ua, ptr %i.uc, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store float %i.ub, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ud = uitofp i32 %i.qn to double
  store double %i.ud, ptr %i.qm, align 8
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %i.ue = load i32, ptr %i.pv, align 4
  %i.uf = zext i32 %i.ue to i64
  %i.ug = icmp samesign ult i64 %indvars.iv.next623, %i.uf
  br i1 %i.ug, label %bb.bl, label %.loopexit580, !llvm.loop !17

bb.bm:                                            ; preds = %bb.bf, %bb.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1080) #27
  br label %bb.bs

.loopexit580:                                     ; preds = %bb.bl, %.lr.ph595, %.thread699, %.loopexit583, %.loopexit581, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.bh, %._crit_edge598, %._crit_edge605, %bb.ak
  %i.uh = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.ui = load ptr, ptr %i.o, align 8
  %.not.i390 = icmp eq ptr %i.uh, %i.ui
  br i1 %.not.i390, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.loopexit580
  store ptr %i.r, ptr %i.uh, align 8
  %i.uj = load ptr, ptr %i.n, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  store ptr %i.uk, ptr %i.n, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

bb.bo:                                            ; preds = %.loopexit580
  %i.ul = load ptr, ptr %3, align 8               ; 4 uses
  %i.um = ptrtoint ptr %i.uh to i64
  %i.un = ptrtoint ptr %i.ul to i64               ; 2 uses
  %i.uo = sub i64 %i.um, %i.un                    ; 5 uses
  %i.up = icmp eq i64 %i.uo, 9223372036854775800
  br i1 %i.up, label %bb.bp, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bp:                                            ; preds = %bb.bo
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bo
  %i.uq = ashr exact i64 %i.uo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.uq, i64 1)
  %i.ur = add nsw i64 %.sroa.speculated.i.i.i, %i.uq ; 2 uses
  %i.us = icmp ult i64 %i.ur, %i.uq
  %i.ut = tail call i64 @llvm.umin.i64(i64 %i.ur, i64 1152921504606846975)
  %i.uu = select i1 %i.us, i64 1152921504606846975, i64 %i.ut ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.uu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.uv = shl nuw nsw i64 %i.uu, 3
  %i.uw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uv) #28 ; 4 uses
  %i.ux = getelementptr inbounds i8, ptr %i.uw, i64 %i.uo ; 2 uses
  store ptr %i.r, ptr %i.ux, align 8
  %i.uy = icmp sgt i64 %i.uo, 0
  br i1 %i.uy, label %bb.bq, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bq:                                            ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uw, ptr align 8 %i.ul, i64 %i.uo, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bq, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ul, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.va = load ptr, ptr %i.o, align 8
  %i.vb = ptrtoint ptr %i.va to i64
  %i.vc = sub i64 %i.vb, %i.un
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ul, i64 noundef %i.vc) #27
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.br, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.uw, ptr %3, align 8
  store ptr %i.uz, ptr %i.n, align 8
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.uu
  store ptr %i.vd, ptr %i.o, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bn, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ve = add i32 %.2609, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.h, %bb.h, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit, %bb.bm
  %.1238 = phi i32 [ %.0237608, %bb.h ], [ %.0237608, %bb.h ], [ %i.bg, %bb.bm ], [ %i.bg, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit ]
  %.4 = phi i32 [ %.2609, %bb.h ], [ %.2609, %bb.h ], [ %.2609, %bb.bm ], [ %i.ve, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0545.0 = load ptr, ptr %.sroa.0545.0610, align 8 ; 2 uses
  %.not578 = icmp eq ptr %.sroa.0545.0, %i.a
  br i1 %.not578, label %.loopexit584, label %bb.h, !llvm.loop !18

.loopexit584:                                     ; preds = %bb.bs, %bb.g, %bb.b, %bb.a
  ret void
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress uwtable
define hidden void @_Z12SetupMappingP10aiMaterial16aiTextureMappingRK10aiVector3tIfE(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.not137 = icmp eq i32 %i.d, 0
end_hunk_0
