Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IRRLoader?download=true
inline.NumInlined: 1776
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp11IRRImporter17ComputeAnimationsEPNS0_4NodeEP6aiNodeRSt6vectorIP10aiNodeAnimSaIS7_EE:bb.a
  %i.nk = sitofp i32 %i.nj to float
  %i.nl = fdiv float %sqrt.i, %i.nk
  %i.nm = fpext float %i.nl to double
  %i.nn = load i32, ptr %i.me, align 4
  %.not588 = icmp eq i32 %i.nn, 0
  br i1 %.not588, label %.loopexit553, label %.lr.ph568

.lr.ph568:                                        ; preds = %.loopexit554, %.lr.ph568
  %indvars.iv598 = phi i64 [ %indvars.iv.next599, %.lr.ph568 ], [ 0, %.loopexit554 ] ; 3 uses
  %i.no = load ptr, ptr %i.mo, align 8
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %i.no, i64 %indvars.iv598 ; 3 uses
  %i.nq = trunc nuw i64 %indvars.iv598 to i32
  %i.nr = uitofp i32 %i.nq to double
  %i.ns = fmul double %i.mb, %i.nr                ; 2 uses
  store double %i.ns, ptr %i.np, align 8
  %i.nt = fmul double %i.ns, %i.nm
  %i.nu = fptrunc double %i.nt to float           ; 2 uses
  %i.nv = fmul float %.sroa.11.0, %i.nu
  %i.nw = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.nx = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x float> %.sroa.0414.0, %i.nx
  %i.nz = load <2 x float>, ptr %i.mq, align 4
  %i.oa = fadd <2 x float> %i.ny, %i.nz
  %i.ob = load float, ptr %i.mw, align 4
  %i.oc = fadd float %i.nv, %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store <2 x float> %i.oa, ptr %i.od, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store float %i.oc, ptr %.sroa.492.0..sroa_idx, align 8
  %indvars.iv.next599 = add nuw nsw i64 %indvars.iv598, 1 ; 2 uses
  %i.oe = load i32, ptr %i.me, align 4
  %i.of = zext i32 %i.oe to i64
  %i.og = icmp samesign ult i64 %indvars.iv.next599, %i.of
  br i1 %i.og, label %.lr.ph568, label %.loopexit553, !llvm.loop !16

bb.bb:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 3, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 3, ptr %i.oi, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 56 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 64
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = load ptr, ptr %i.oj, align 8
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = sdiv exact i64 %i.op, 24
  %i.or = trunc i64 %i.oq to i32                  ; 11 uses
  switch i32 %i.or, label %bb.bj [
    i32 0, label %bb.bc
    i32 1, label %bb.bi
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.os = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.os, ptr noundef nonnull @.str.12)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  %i.ou = load ptr, ptr %i.ot, align 8            ; 2 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZdaPv(ptr noundef nonnull %i.ou) #27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ow = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZdaPv(ptr noundef nonnull %i.ow) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.oy = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZdaPv(ptr noundef nonnull %i.oy) #27
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bb
  %i.pa = getelementptr inbounds nuw i8, ptr %i.r, i64 1028
  store i32 1, ptr %i.pa, align 4
  %i.pb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #28 ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.pc, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  store ptr %i.pb, ptr %i.pd, align 8
  %i.pe = load ptr, ptr %i.oj, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pg, ptr noundef nonnull align 8 dereferenceable(12) %i.pf, i64 12, i1 false)
  store double 0.000000e+00, ptr %i.pb, align 8
  br label %.loopexit553

bb.bj:                                            ; preds = %bb.bb
  %i.ph = load double, ptr %i.m, align 8
  %i.pi = fmul double %i.ph, 1.500000e+01
  %i.pj = fptoui double %i.pi to i32              ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 3 uses
  store i32 %i.pj, ptr %i.pk, align 4
  %i.pl = zext i32 %i.pj to i64                   ; 2 uses
  %i.pm = mul nuw nsw i64 %i.pl, 24
  %i.pn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.pm) #28 ; 3 uses
  %i.po = icmp eq i32 %i.pj, 0
  br i1 %i.po, label %.loopexit556, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pp = getelementptr inbounds nuw [24 x i8], ptr %i.pn, i64 %i.pl
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %i.pq = phi ptr [ %i.pn, %bb.bk ], [ %i.ps, %bb.bl ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pq, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.pr, align 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 24 ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.pp
  br i1 %i.pt, label %.loopexit556, label %bb.bl

.loopexit556:                                     ; preds = %bb.bl, %bb.bj
  %i.pu = getelementptr inbounds nuw i8, ptr %i.r, i64 1032 ; 2 uses
  store ptr %i.pn, ptr %i.pu, align 8
  %i.pv = load i32, ptr %i.pk, align 4
  %.not587 = icmp eq i32 %i.pv, 0
  br i1 %.not587, label %.loopexit553, label %.lr.ph566

.lr.ph566:                                        ; preds = %.loopexit556
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 20
  %i.px = tail call i32 @llvm.smin.i32(i32 %i.or, i32 0)
  %i.py = sub i32 0, %i.px                        ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 52
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph566, %bb.bm
  %indvars.iv595 = phi i64 [ 0, %.lr.ph566 ], [ %indvars.iv.next596, %bb.bm ] ; 3 uses
  %i.qa = load ptr, ptr %i.pu, align 8
  %i.qb = getelementptr inbounds nuw [24 x i8], ptr %i.qa, i64 %indvars.iv595 ; 3 uses
  %i.qc = trunc nuw i64 %indvars.iv595 to i32     ; 2 uses
  %i.qd = uitofp i32 %i.qc to float
  %i.qe = load float, ptr %i.pw, align 4
  %i.qf = fmul float %i.qe, %i.qd
  %i.qg = fmul float %i.qf, 1.000000e-03          ; 2 uses
  %i.qh = tail call noundef float @llvm.floor.f32(float %i.qg) ; 2 uses
  %i.qi = fsub float %i.qg, %i.qh                 ; 2 uses
  %i.qj = fptosi float %i.qh to i32
  %i.qk = srem i32 %i.qj, %i.or                   ; 8 uses
  %i.ql = add nsw i32 %i.qk, -1
  %i.qm = icmp slt i32 %i.qk, 1
  %.p.i = select i1 %i.qm, i32 %i.or, i32 %i.py
  %i.qn = add i32 %i.ql, %.p.i
  %i.qo = sext i32 %i.qn to i64
  %i.qp = load ptr, ptr %i.oj, align 8            ; 4 uses
  %i.qq = getelementptr inbounds nuw [24 x i8], ptr %i.qp, i64 %i.qo ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = icmp slt i32 %i.qk, 0
  %.p.i345 = select i1 %i.qs, i32 %i.or, i32 %i.py
  %i.qt = add i32 %.p.i345, %i.qk
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [24 x i8], ptr %i.qp, i64 %i.qu ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = add nsw i32 %i.qk, 1                    ; 2 uses
  %i.qy = icmp slt i32 %i.qk, -1
  %.not.i346 = icmp slt i32 %i.qx, %i.or
  %i.qz = select i1 %.not.i346, i32 0, i32 %i.or
  %i.ra = sub i32 0, %i.qz
  %.p.i347 = select i1 %i.qy, i32 %i.or, i32 %i.ra
  %i.rb = add i32 %.p.i347, %i.qx
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [24 x i8], ptr %i.qp, i64 %i.rc ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = add nsw i32 %i.qk, 2                    ; 2 uses
  %i.rg = icmp slt i32 %i.qk, -2
  %.not.i348 = icmp slt i32 %i.rf, %i.or
  %i.rh = select i1 %.not.i348, i32 0, i32 %i.or
  %i.ri = sub i32 0, %i.rh
  %.p.i349 = select i1 %i.rg, i32 %i.or, i32 %i.ri
  %i.rj = add i32 %.p.i349, %i.rf
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [24 x i8], ptr %i.qp, i64 %i.rk ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = fmul float %i.qi, %i.qi                 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rp = load float, ptr %i.ro, align 4          ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.rr = load float, ptr %i.rq, align 4
  %i.rs = fsub float %i.rp, %i.rr
  %i.rt = load float, ptr %i.pz, align 4          ; 3 uses
  %i.ru = fmul float %i.rt, %i.rs
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.rw = load float, ptr %i.rv, align 4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.ry = load float, ptr %i.rx, align 4          ; 2 uses
  %i.rz = fsub float %i.rw, %i.ry
  %i.sa = fmul float %i.rt, %i.rz
  %i.sb = fmul float %i.rn, 2.000000e+00          ; 6 uses
  %i.sc = fmul float %i.rn, -3.000000e+00
  %i.sd = tail call float @llvm.fmuladd.f32(float %i.sb, float 2.000000e+00, float %i.sc)
  %i.se = fmul float %i.sb, 3.000000e+00
  %4 = tail call float @llvm.fmuladd.f32(float %i.sb, float -2.000000e+00, float %i.se) ; 2 uses
  %5 = tail call float @llvm.fmuladd.f32(float %i.sb, float -2.000000e+00, float %i.sb) ; 2 uses
  %i.sf = fsub float %i.sb, %i.rn                 ; 2 uses
  %i.sg = fadd float %i.sd, 1.000000e+00          ; 2 uses
  %i.sh = load <2 x float>, ptr %i.re, align 4    ; 2 uses
  %i.si = load <2 x float>, ptr %i.qr, align 4
  %i.sj = fsub <2 x float> %i.sh, %i.si
  %i.sk = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sm = fmul <2 x float> %i.sj, %i.sl
  %i.sn = load <2 x float>, ptr %i.rm, align 4
  %i.so = load <2 x float>, ptr %i.qw, align 4    ; 2 uses
  %i.sp = fsub <2 x float> %i.sn, %i.so
  %i.sq = fmul <2 x float> %i.sl, %i.sp
  %i.sr = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = fmul <2 x float> %i.ss, %i.so
  %i.su = fmul float %i.sg, %i.ry
  %6 = insertelement <2 x float> poison, float %4, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %i.sh, %7
  %i.sv = fmul float %i.rp, %4
  %i.sw = fadd <2 x float> %8, %i.st
  %i.sx = fadd float %i.sv, %i.su
  %9 = insertelement <2 x float> poison, float %5, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %10, %i.sm
  %i.sy = fmul float %5, %i.ru
  %i.sz = fadd <2 x float> %11, %i.sw
  %i.ta = fadd float %i.sy, %i.sx
  %i.tb = insertelement <2 x float> poison, float %i.sf, i64 0
  %i.tc = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.td = fmul <2 x float> %i.tc, %i.sq
  %i.te = fmul float %i.sf, %i.sa
  %i.tf = fadd <2 x float> %i.sz, %i.td
  %i.tg = fadd float %i.ta, %i.te
  %i.th = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store <2 x float> %i.tf, ptr %i.th, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store float %i.tg, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ti = uitofp i32 %i.qc to double
  store double %i.ti, ptr %i.qb, align 8
  %indvars.iv.next596 = add nuw nsw i64 %indvars.iv595, 1 ; 2 uses
  %i.tj = load i32, ptr %i.pk, align 4
  %i.tk = zext i32 %i.tj to i64
  %i.tl = icmp samesign ult i64 %indvars.iv.next596, %i.tk
  br i1 %i.tl, label %bb.bm, label %.loopexit553, !llvm.loop !17

bb.bn:                                            ; preds = %bb.bg, %bb.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1080) #27
  br label %bb.bt

.loopexit553:                                     ; preds = %bb.bm, %.lr.ph568, %.thread671, %.loopexit556, %.loopexit554, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.bi, %._crit_edge571, %._crit_edge578, %bb.ak
  %i.tm = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.tn = load ptr, ptr %i.o, align 8
  %.not.i394 = icmp eq ptr %i.tm, %i.tn
  br i1 %.not.i394, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.loopexit553
  store ptr %i.r, ptr %i.tm, align 8
  %i.to = load ptr, ptr %i.n, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store ptr %i.tp, ptr %i.n, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

bb.bp:                                            ; preds = %.loopexit553
  %i.tq = load ptr, ptr %3, align 8               ; 4 uses
  %i.tr = ptrtoint ptr %i.tm to i64
  %i.ts = ptrtoint ptr %i.tq to i64               ; 2 uses
  %i.tt = sub i64 %i.tr, %i.ts                    ; 5 uses
  %i.tu = icmp eq i64 %i.tt, 9223372036854775800
  br i1 %i.tu, label %bb.bq, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bq:                                            ; preds = %bb.bp
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bp
  %i.tv = ashr exact i64 %i.tt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.tv, i64 1)
  %i.tw = add nsw i64 %.sroa.speculated.i.i.i, %i.tv ; 2 uses
  %i.tx = icmp ult i64 %i.tw, %i.tv
  %i.ty = tail call i64 @llvm.umin.i64(i64 %i.tw, i64 1152921504606846975)
  %i.tz = select i1 %i.tx, i64 1152921504606846975, i64 %i.ty ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.tz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ua = shl nuw nsw i64 %i.tz, 3
  %i.ub = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ua) #28 ; 4 uses
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 %i.tt ; 2 uses
  store ptr %i.r, ptr %i.uc, align 8
  %i.ud = icmp sgt i64 %i.tt, 0
  br i1 %i.ud, label %bb.br, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.br:                                            ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ub, ptr align 8 %i.tq, i64 %i.tt, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.br, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %.not.i17.i.i = icmp eq ptr %i.tq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.uf = load ptr, ptr %i.o, align 8
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = sub i64 %i.ug, %i.ts
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.uh) #27
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bs, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ub, ptr %3, align 8
  store ptr %i.ue, ptr %i.n, align 8
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %i.tz
  store ptr %i.ui, ptr %i.o, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bo, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.uj = add i32 %.2582, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.h, %bb.h, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit, %bb.bn
  %.1238 = phi i32 [ %.0237581, %bb.h ], [ %.0237581, %bb.h ], [ %i.bg, %bb.bn ], [ %i.bg, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit ]
  %.4 = phi i32 [ %.2582, %bb.h ], [ %.2582, %bb.h ], [ %.2582, %bb.bn ], [ %i.uj, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0518.0 = load ptr, ptr %.sroa.0518.0583, align 8 ; 2 uses
  %.not551 = icmp eq ptr %.sroa.0518.0, %i.a
  br i1 %.not551, label %.loopexit557, label %bb.h, !llvm.loop !18

.loopexit557:                                     ; preds = %bb.bt, %bb.g, %bb.b, %bb.a
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
  br i1 %.not137, label %.lr.ph.preheader, label %_ZNSt12_Vector_baseIP18aiMaterialPropertySaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP18aiMaterialPropertySaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE7reserveEm.exit unwind label %bb.c ; 3 uses

_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIP18aiMaterialPropertySaIS1_EE11_M_allocateEm.exit.i
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %.pre = load i32, ptr %i.b, align 8
  %.not174 = icmp eq i32 %.pre, 0
  br i1 %.not174, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE7reserveEm.exit
  %.sroa.23.0169.ph = phi ptr [ %i.g, %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE7reserveEm.exit ], [ null, %bb.b ] ; 2 uses
  %.sroa.47.0168.ph = phi ptr [ %i.h, %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE7reserveEm.exit ], [ null, %bb.b ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE9push_backERKS1_.exit68
  %i.i = icmp eq ptr %.sroa.098.5, %.sroa.23.2
  br i1 %i.i, label %bb.al, label %bb.af

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIP18aiMaterialPropertySaIS1_EE11_M_allocateEm.exit.i, %bb.ai
  %.sroa.47.1 = phi ptr [ %.sroa.47.5, %bb.ai ], [ null, %_ZNSt12_Vector_baseIP18aiMaterialPropertySaIS1_EE11_M_allocateEm.exit.i ]
  %.sroa.098.1 = phi ptr [ %.sroa.098.5, %bb.ai ], [ null, %_ZNSt12_Vector_baseIP18aiMaterialPropertySaIS1_EE11_M_allocateEm.exit.i ]
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE9push_backERKS1_.exit68
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE9push_backERKS1_.exit68 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.098.0170 = phi ptr [ %.sroa.098.5, %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE9push_backERKS1_.exit68 ], [ %.sroa.23.0169.ph, %.lr.ph.preheader ] ; 17 uses
  %.sroa.23.0169 = phi ptr [ %.sroa.23.2, %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE9push_backERKS1_.exit68 ], [ %.sroa.23.0169.ph, %.lr.ph.preheader ] ; 13 uses
  %.sroa.47.0168 = phi ptr [ %.sroa.47.5, %_ZNSt6vectorIP18aiMaterialPropertySaIS1_EE9push_backERKS1_.exit68 ], [ %.sroa.47.0168.ph, %.lr.ph.preheader ] ; 7 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(10) @.str.13) #30
  %.not32 = icmp eq i32 %i.o, 0
  br i1 %.not32, label %bb.d, label %bb.w

bb.d:                                             ; preds = %.lr.ph
  %i.p = invoke noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #28
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %.loopexit138 ; 11 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1040 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.r, i8 0, i64 1024, i1 false)
  store i32 1, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1048 ; 2 uses
  store ptr null, ptr %i.s, align 8
  store i32 12, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 1 dereferenceable(12) @.str.14, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i8 0, ptr %i.u, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 1032
  %.pre190 = load i32, ptr %.phi.trans.insert, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 1032
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 1032
  store i32 %.pre190, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 1028 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 1028
  store i32 %i.y, ptr %i.z, align 4
  store i32 4, ptr %i.q, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 1036
  store i32 4, ptr %i.aa, align 4
  %i.ab = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #28
          to label %bb.e unwind label %.loopexit138 ; 2 uses

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ab, ptr %i.s, align 8
  store i32 %1, ptr %i.ab, align 4
  %.not.i = icmp eq ptr %.sroa.23.0169, %.sroa.47.0168
  br i1 %.not.i, label %bb.g, label %bb.f

end_hunk_0
