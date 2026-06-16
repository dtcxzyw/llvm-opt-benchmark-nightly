inline.NumInlined: 1776
inline.NumDeleted: 830
begin_hunk_0_@_ZN6Assimp11IRRImporter17ComputeAnimationsEPNS0_4NodeEP6aiNodeRSt6vectorIP10aiNodeAnimSaIS7_EE:bb.a
  %i.jc = tail call float @llvm.fmuladd.f32(float %.sroa.14.1, float %i.io, float %i.jb) ; 4 uses
  %i.jd = fneg float %i.io
  %i.je = fmul float %.sroa.0442.4.vec.extract454.pre-phi, %i.jd
  %i.jf = tail call float @llvm.fmuladd.f32(float %.sroa.0442.0.vec.extract447.pre-phi, float %i.hv, float %i.je) ; 4 uses
  %.sroa.0.0.vec.insert.i301 = insertelement <2 x float> poison, float %i.iz, i64 0
  %.sroa.0.4.vec.insert.i302 = insertelement <2 x float> %.sroa.0.0.vec.insert.i301, float %i.jc, i64 1
  %i.jg = fmul float %i.jc, %i.jc
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.iz, float %i.jg)
  %i.ji = tail call noundef float @llvm.fmuladd.f32(float %i.jf, float %i.jf, float %i.jh) ; 2 uses
  %i.jj = fcmp oeq float %i.ji, 0.000000e+00
  br i1 %i.jj, label %_ZN10aiVector3tIfE9NormalizeEv.exit307, label %_ZN10aiVector3tIfEdVEf.exit.i305

_ZN10aiVector3tIfEdVEf.exit.i305:                 ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i306 = tail call noundef float @llvm.sqrt.f32(float %i.ji)
  %i.jk = fdiv float 1.000000e+00, %sqrt.i.i306   ; 3 uses
  %i.jl = fmul float %i.iz, %i.jk
  %.sroa.0435.0.vec.insert = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jm = fmul float %i.jc, %i.jk
  %.sroa.0435.4.vec.insert = insertelement <2 x float> %.sroa.0435.0.vec.insert, float %i.jm, i64 1
  %i.jn = fmul float %i.jf, %i.jk
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit307

_ZN10aiVector3tIfE9NormalizeEv.exit307:           ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i305
  %.sroa.0435.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i302, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %.sroa.0435.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i305 ] ; 2 uses
  %.sroa.8.0 = phi float [ %i.jf, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.jn, %_ZN10aiVector3tIfEdVEf.exit.i305 ]
  br i1 %i.hm, label %._crit_edge577, label %.lr.ph576

.lr.ph576:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit307
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 36
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 48
  %.sroa.0459.0.vec.extract = extractelement <2 x float> %.sroa.0435.0, i64 0
  %.sroa.0459.4.vec.extract = extractelement <2 x float> %.sroa.0435.0, i64 1
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 44
  br label %bb.ay

._crit_edge577:                                   ; preds = %bb.ay, %_ZN10aiVector3tIfE9NormalizeEv.exit307
  %i.js = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 3, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 3, ptr %i.jt, align 4
  br label %.loopexit559

bb.ay:                                            ; preds = %.lr.ph576, %bb.ay
  %indvars.iv607 = phi i64 [ 0, %.lr.ph576 ], [ %indvars.iv.next608, %bb.ay ] ; 3 uses
  %i.ju = load ptr, ptr %i.hs, align 8
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %indvars.iv607 ; 3 uses
  %i.jw = trunc nuw i64 %indvars.iv607 to i32
  %i.jx = uitofp i32 %i.jw to double
  %i.jy = fmul double %i.hf, %i.jx                ; 2 uses
  store double %i.jy, ptr %i.jv, align 8
  %i.jz = load float, ptr %i.gz, align 4
  %i.ka = fpext float %i.jz to double
  %i.kb = fmul double %i.jy, %i.ka
  %i.kc = fptrunc double %i.kb to float           ; 2 uses
  %i.kd = load float, ptr %i.jp, align 8          ; 3 uses
  %i.ke = tail call noundef float @cosf(float noundef %i.kc) #26 ; 3 uses
  %i.kf = fmul float %.sroa.0459.0.vec.extract, %i.ke
  %i.kg = fmul float %.sroa.0459.4.vec.extract, %i.ke
  %i.kh = fmul float %.sroa.8.0, %i.ke
  %i.ki = tail call noundef float @sinf(float noundef %i.kc) #26 ; 3 uses
  %i.kj = fmul float %.sroa.0442.0.vec.extract447.pre-phi, %i.ki
  %i.kk = fmul float %.sroa.0442.4.vec.extract454.pre-phi, %i.ki
  %i.kl = fmul float %.sroa.14.1, %i.ki
  %i.km = fadd float %i.kf, %i.kj
  %i.kn = fadd float %i.kg, %i.kk
  %i.ko = fadd float %i.kh, %i.kl
  %i.kp = fmul float %i.kd, %i.km
  %i.kq = fmul float %i.kd, %i.kn
  %i.kr = fmul float %i.kd, %i.ko
  %i.ks = load float, ptr %i.jo, align 4
  %i.kt = fadd float %i.ks, %i.kp
  %i.ku = load float, ptr %i.jq, align 8
  %i.kv = fadd float %i.ku, %i.kq
  %i.kw = load float, ptr %i.jr, align 4
  %i.kx = fadd float %i.kw, %i.kr
  %.sroa.0.0.vec.insert.i324 = insertelement <2 x float> poison, float %i.kt, i64 0
  %.sroa.0.4.vec.insert.i325 = insertelement <2 x float> %.sroa.0.0.vec.insert.i324, float %i.kv, i64 1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store <2 x float> %.sroa.0.4.vec.insert.i325, ptr %i.ky, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store float %i.kx, ptr %.sroa.4129.0..sroa_idx, align 8
  %indvars.iv.next608 = add nuw nsw i64 %indvars.iv607, 1 ; 2 uses
  %i.kz = load i32, ptr %i.hi, align 4
  %i.la = zext i32 %i.kz to i64
  %i.lb = icmp samesign ult i64 %indvars.iv.next608, %i.la
  br i1 %i.lb, label %bb.ay, label %._crit_edge577, !llvm.loop !10

bb.az:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 80
  %i.ld = load i8, ptr %i.lc, align 8, !range !11, !noundef !12
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = select i1 %i.le, i32 3, i32 1           ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 %i.lf, ptr %i.lg, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 %i.lf, ptr %i.lh, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 84 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4
  %i.lk = sitofp i32 %i.lj to double
  %i.ll = fdiv nnan double %i.lk, 1.000000e+03
  %i.lm = load double, ptr %i.m, align 8          ; 2 uses
  %i.ln = fdiv double 1.000000e+03, %i.lm
  %i.lo = fmul double %i.lm, %i.ll
  %i.lp = fptoui double %i.lo to i32              ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 2 uses
  store i32 %i.lp, ptr %i.lq, align 4
  %i.lr = zext i32 %i.lp to i64                   ; 2 uses
  %i.ls = mul nuw nsw i64 %i.lr, 24
  %i.lt = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ls) #28 ; 3 uses
  %i.lu = icmp eq i32 %i.lp, 0                    ; 2 uses
  br i1 %i.lu, label %.loopexit560, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lt, i64 %i.lr
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %i.lw = phi ptr [ %i.lt, %bb.ba ], [ %i.ly, %bb.bb ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 24 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.lv
  br i1 %i.lz, label %.loopexit560, label %bb.bb

.loopexit560:                                     ; preds = %bb.bb, %bb.az
  %i.ma = getelementptr inbounds nuw i8, ptr %i.r, i64 1032 ; 2 uses
  store ptr %i.lt, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 36 ; 2 uses
  %i.md = load <2 x float>, ptr %i.mb, align 8
  %i.me = load <2 x float>, ptr %i.mc, align 4
  %i.mf = fsub <2 x float> %i.md, %i.me           ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 32
  %i.mh = load float, ptr %i.mg, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 44 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4
  %i.mk = fsub float %i.mh, %i.mj                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.mf, %i.mf
  %i.ml = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.mm = extractelement <2 x float> %i.mf, i64 0 ; 2 uses
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.mm, float %i.mm, float %i.ml)
  %i.mo = tail call noundef float @llvm.fmuladd.f32(float %i.mk, float %i.mk, float %i.mn) ; 2 uses
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.mo) ; 2 uses
  %i.mp = fcmp oeq float %i.mo, 0.000000e+00      ; 2 uses
  %i.mq = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.mr = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = fmul <2 x float> %i.mf, %i.ms
  %i.mu = fmul float %i.mk, %i.mq
  %.sroa.0414.0 = select i1 %i.mp, <2 x float> %i.mf, <2 x float> %i.mt
  %.sroa.11.0 = select i1 %i.mp, float %i.mk, float %i.mu
  %i.mv = load i32, ptr %i.li, align 4
  %i.mw = sitofp i32 %i.mv to float
  %i.mx = fdiv float %sqrt.i, %i.mw
  %i.my = fpext float %i.mx to double
  br i1 %i.lu, label %.loopexit559, label %.lr.ph574

.lr.ph574:                                        ; preds = %.loopexit560, %.lr.ph574
  %indvars.iv604 = phi i64 [ %indvars.iv.next605, %.lr.ph574 ], [ 0, %.loopexit560 ] ; 3 uses
  %i.mz = load ptr, ptr %i.ma, align 8
  %i.na = getelementptr inbounds nuw [24 x i8], ptr %i.mz, i64 %indvars.iv604 ; 3 uses
  %i.nb = trunc nuw i64 %indvars.iv604 to i32
  %i.nc = uitofp i32 %i.nb to double
  %i.nd = fmul double %i.ln, %i.nc                ; 2 uses
  store double %i.nd, ptr %i.na, align 8
  %i.ne = fmul double %i.nd, %i.my
  %i.nf = fptrunc double %i.ne to float           ; 2 uses
  %i.ng = fmul float %.sroa.11.0, %i.nf
  %i.nh = insertelement <2 x float> poison, float %i.nf, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x float> %.sroa.0414.0, %i.ni
  %i.nk = load <2 x float>, ptr %i.mc, align 4
  %i.nl = fadd <2 x float> %i.nj, %i.nk
  %i.nm = load float, ptr %i.mi, align 4
  %i.nn = fadd float %i.ng, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store <2 x float> %i.nl, ptr %i.no, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store float %i.nn, ptr %.sroa.492.0..sroa_idx, align 8
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1 ; 2 uses
  %i.np = load i32, ptr %i.lq, align 4
  %i.nq = zext i32 %i.np to i64
  %i.nr = icmp samesign ult i64 %indvars.iv.next605, %i.nq
  br i1 %i.nr, label %.lr.ph574, label %.loopexit559, !llvm.loop !13

bb.bc:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 3, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 3, ptr %i.nt, align 4
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 56 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 64
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = load ptr, ptr %i.nu, align 8
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = sdiv exact i64 %i.oa, 24
  %i.oc = trunc i64 %i.ob to i32                  ; 11 uses
  switch i32 %i.oc, label %bb.bk [
    i32 0, label %bb.bd
    i32 1, label %bb.bj
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.od = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.od, ptr noundef nonnull @.str.12)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  %i.of = load ptr, ptr %i.oe, align 8            ; 2 uses
  %i.og = icmp eq ptr %i.of, null
  br i1 %i.og, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZdaPv(ptr noundef nonnull %i.of) #27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.oh = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZdaPv(ptr noundef nonnull %i.oh) #27
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.oj = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZdaPv(ptr noundef nonnull %i.oj) #27
  br label %bb.bo

bb.bj:                                            ; preds = %bb.bc
  %i.ol = getelementptr inbounds nuw i8, ptr %i.r, i64 1028
  store i32 1, ptr %i.ol, align 4
  %i.om = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #28 ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.om, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.on, align 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  store ptr %i.om, ptr %i.oo, align 8
  %i.op = load ptr, ptr %i.nu, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.or, ptr noundef nonnull align 8 dereferenceable(12) %i.oq, i64 12, i1 false)
  store double 0.000000e+00, ptr %i.om, align 8
  br label %.loopexit559

bb.bk:                                            ; preds = %bb.bc
  %i.os = load double, ptr %i.m, align 8
  %i.ot = fmul double %i.os, 1.500000e+01
  %i.ou = fptoui double %i.ot to i32              ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 2 uses
  store i32 %i.ou, ptr %i.ov, align 4
  %i.ow = zext i32 %i.ou to i64                   ; 2 uses
  %i.ox = mul nuw nsw i64 %i.ow, 24
  %i.oy = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ox) #28 ; 4 uses
  %i.oz = icmp eq i32 %i.ou, 0
  br i1 %i.oz, label %.loopexit562.thread, label %bb.bl

.loopexit562.thread:                              ; preds = %bb.bk
  %i.pa = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  store ptr %i.oy, ptr %i.pa, align 8
  br label %.loopexit559

bb.bl:                                            ; preds = %bb.bk
  %i.pb = getelementptr inbounds nuw [24 x i8], ptr %i.oy, i64 %i.ow
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %i.pc = phi ptr [ %i.oy, %bb.bl ], [ %i.pe, %bb.bm ] ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pc, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.pd, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 24 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.pb
  br i1 %i.pf, label %.lr.ph572, label %bb.bm

.lr.ph572:                                        ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %i.r, i64 1032 ; 2 uses
  store ptr %i.oy, ptr %i.pg, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 20
  %i.pi = tail call i32 @llvm.smin.i32(i32 %i.oc, i32 0)
  %i.pj = sub i32 0, %i.pi                        ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0518.0589, i64 52
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph572, %bb.bn
  %indvars.iv601 = phi i64 [ 0, %.lr.ph572 ], [ %indvars.iv.next602, %bb.bn ] ; 3 uses
  %i.pl = load ptr, ptr %i.pg, align 8
  %i.pm = getelementptr inbounds nuw [24 x i8], ptr %i.pl, i64 %indvars.iv601 ; 3 uses
  %i.pn = trunc nuw i64 %indvars.iv601 to i32     ; 2 uses
  %i.po = uitofp i32 %i.pn to float
  %i.pp = load float, ptr %i.ph, align 4
  %i.pq = fmul float %i.pp, %i.po
  %i.pr = fmul float %i.pq, 1.000000e-03          ; 2 uses
  %i.ps = tail call noundef float @llvm.floor.f32(float %i.pr) ; 2 uses
  %i.pt = fsub float %i.pr, %i.ps                 ; 2 uses
  %i.pu = fptosi float %i.ps to i32
  %i.pv = srem i32 %i.pu, %i.oc                   ; 8 uses
  %i.pw = add nsw i32 %i.pv, -1
  %i.px = icmp slt i32 %i.pv, 1
  %.p.i = select i1 %i.px, i32 %i.oc, i32 %i.pj
  %i.py = add i32 %i.pw, %.p.i
  %i.pz = sext i32 %i.py to i64
  %i.qa = load ptr, ptr %i.nu, align 8            ; 4 uses
  %i.qb = getelementptr inbounds nuw [24 x i8], ptr %i.qa, i64 %i.pz ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = icmp slt i32 %i.pv, 0
  %.p.i345 = select i1 %i.qd, i32 %i.oc, i32 %i.pj
  %i.qe = add i32 %.p.i345, %i.pv
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [24 x i8], ptr %i.qa, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = add nsw i32 %i.pv, 1                    ; 2 uses
  %i.qj = icmp slt i32 %i.pv, -1
  %.not.i346 = icmp slt i32 %i.qi, %i.oc
  %i.qk = select i1 %.not.i346, i32 0, i32 %i.oc
  %i.ql = sub i32 0, %i.qk
  %.p.i347 = select i1 %i.qj, i32 %i.oc, i32 %i.ql
  %i.qm = add i32 %.p.i347, %i.qi
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %i.qa, i64 %i.qn ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = add nsw i32 %i.pv, 2                    ; 2 uses
  %i.qr = icmp slt i32 %i.pv, -2
  %.not.i348 = icmp slt i32 %i.qq, %i.oc
  %i.qs = select i1 %.not.i348, i32 0, i32 %i.oc
  %i.qt = sub i32 0, %i.qs
  %.p.i349 = select i1 %i.qr, i32 %i.oc, i32 %i.qt
  %i.qu = add i32 %.p.i349, %i.qq
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %i.qa, i64 %i.qv ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = fmul float %i.pt, %i.pt                 ; 3 uses
  %i.qz = fmul float %i.qy, 2.000000e+00          ; 6 uses
  %i.ra = fmul float %i.qy, -3.000000e+00
  %i.rb = tail call float @llvm.fmuladd.f32(float %i.qz, float 2.000000e+00, float %i.ra)
  %i.rc = fadd float %i.rb, 1.000000e+00          ; 2 uses
  %i.rd = fmul float %i.qz, 3.000000e+00
  %i.re = tail call float @llvm.fmuladd.f32(float %i.qz, float -2.000000e+00, float %i.rd) ; 2 uses
  %i.rf = tail call float @llvm.fmuladd.f32(float %i.qz, float -2.000000e+00, float %i.qz) ; 2 uses
  %i.rg = fsub float %i.qz, %i.qy                 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.ri = load float, ptr %i.rh, align 4          ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.rk = load float, ptr %i.rj, align 4
  %i.rl = fsub float %i.ri, %i.rk
  %i.rm = load float, ptr %i.pk, align 4          ; 3 uses
  %i.rn = fmul float %i.rm, %i.rl
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rp = load float, ptr %i.ro, align 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.rr = load float, ptr %i.rq, align 4          ; 2 uses
  %i.rs = fsub float %i.rp, %i.rr
  %i.rt = fmul float %i.rm, %i.rs
  %i.ru = fmul float %i.rc, %i.rr
  %i.rv = fmul float %i.ri, %i.re
  %i.rw = fadd float %i.rv, %i.ru
  %i.rx = fmul float %i.rf, %i.rn
  %i.ry = fadd float %i.rx, %i.rw
  %i.rz = fmul float %i.rg, %i.rt
  %i.sa = load <2 x float>, ptr %i.qp, align 4    ; 2 uses
  %i.sb = load <2 x float>, ptr %i.qc, align 4
  %i.sc = fsub <2 x float> %i.sa, %i.sb
  %i.sd = insertelement <2 x float> poison, float %i.rm, i64 0
  %i.se = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sf = fmul <2 x float> %i.sc, %i.se
  %i.sg = load <2 x float>, ptr %i.qx, align 4
  %i.sh = load <2 x float>, ptr %i.qh, align 4    ; 2 uses
  %i.si = fsub <2 x float> %i.sg, %i.sh
  %i.sj = fmul <2 x float> %i.se, %i.si
  %i.sk = insertelement <2 x float> poison, float %i.rc, i64 0
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sm = fmul <2 x float> %i.sl, %i.sh
  %i.sn = insertelement <2 x float> poison, float %i.re, i64 0
  %i.so = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sp = fmul <2 x float> %i.sa, %i.so
  %i.sq = fadd <2 x float> %i.sp, %i.sm
  %i.sr = insertelement <2 x float> poison, float %i.rf, i64 0
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = fmul <2 x float> %i.ss, %i.sf
  %i.su = fadd <2 x float> %i.st, %i.sq
  %i.sv = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.sw = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sx = fmul <2 x float> %i.sw, %i.sj
  %i.sy = fadd <2 x float> %i.su, %i.sx
  %i.sz = fadd float %i.ry, %i.rz
  %i.ta = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store <2 x float> %i.sy, ptr %i.ta, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store float %i.sz, ptr %.sroa.7.0..sroa_idx, align 8
  %i.tb = uitofp i32 %i.pn to double
  store double %i.tb, ptr %i.pm, align 8
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 1 ; 2 uses
  %i.tc = load i32, ptr %i.ov, align 4
  %i.td = zext i32 %i.tc to i64
  %i.te = icmp samesign ult i64 %indvars.iv.next602, %i.td
  br i1 %i.te, label %bb.bn, label %.loopexit559, !llvm.loop !14

bb.bo:                                            ; preds = %bb.bh, %bb.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1080) #27
  br label %bb.bu

.loopexit559:                                     ; preds = %bb.bn, %.lr.ph574, %.thread677, %.loopexit562.thread, %.loopexit560, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.bj, %._crit_edge577, %._crit_edge584, %bb.ak
  %i.tf = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.tg = load ptr, ptr %i.o, align 8
  %.not.i394 = icmp eq ptr %i.tf, %i.tg
  br i1 %.not.i394, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.loopexit559
  store ptr %i.r, ptr %i.tf, align 8
  %i.th = load ptr, ptr %i.n, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store ptr %i.ti, ptr %i.n, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

bb.bq:                                            ; preds = %.loopexit559
  %i.tj = load ptr, ptr %3, align 8               ; 4 uses
  %i.tk = ptrtoint ptr %i.tf to i64
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = sub i64 %i.tk, %i.tl                    ; 6 uses
  %i.tn = icmp eq i64 %i.tm, 9223372036854775800
  br i1 %i.tn, label %bb.br, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.br:                                            ; preds = %bb.bq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bq
  %i.to = ashr exact i64 %i.tm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.to, i64 1)
  %i.tp = add nsw i64 %.sroa.speculated.i.i.i, %i.to ; 2 uses
  %i.tq = icmp ult i64 %i.tp, %i.to
  %i.tr = tail call i64 @llvm.umin.i64(i64 %i.tp, i64 1152921504606846975)
  %i.ts = select i1 %i.tq, i64 1152921504606846975, i64 %i.tr ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ts, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.tt = shl nuw nsw i64 %i.ts, 3
  %i.tu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tt) #28 ; 4 uses
  %i.tv = getelementptr inbounds i8, ptr %i.tu, i64 %i.tm ; 2 uses
  store ptr %i.r, ptr %i.tv, align 8
  %i.tw = icmp sgt i64 %i.tm, 0
  br i1 %i.tw, label %bb.bs, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bs:                                            ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tu, ptr align 8 %i.tj, i64 %i.tm, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bs, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %.not.i17.i.i = icmp eq ptr %i.tj, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.tm) #27
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bt, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.tu, ptr %3, align 8
  store ptr %i.tx, ptr %i.n, align 8
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.ts
  store ptr %i.ty, ptr %i.o, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bp, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.tz = add i32 %.2588, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.h, %bb.h, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit, %bb.bo
  %.1238 = phi i32 [ %.0237587, %bb.h ], [ %.0237587, %bb.h ], [ %i.bg, %bb.bo ], [ %i.bg, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit ]
  %.4 = phi i32 [ %.2588, %bb.h ], [ %.2588, %bb.h ], [ %.2588, %bb.bo ], [ %i.tz, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0518.0 = load ptr, ptr %.sroa.0518.0589, align 8 ; 2 uses
  %.not557 = icmp eq ptr %.sroa.0518.0, %i.a
  br i1 %.not557, label %.loopexit563, label %bb.h, !llvm.loop !15

.loopexit563:                                     ; preds = %bb.bu, %bb.g, %bb.b, %bb.a
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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.not130 = icmp eq i32 %i.d, 0
  br i1 %.not130, label %.lr.ph.preheader, label %_ZNSt12_Vector_baseIP18aiMaterialPropertySaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP18aiMaterialPropertySaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
end_hunk_0
