Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IRRLoader?download=true
inline.NumInlined: 1776
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp11IRRImporter17ComputeAnimationsEPNS0_4NodeEP6aiNodeRSt6vectorIP10aiNodeAnimSaIS7_EE:bb.a
  %i.no = sitofp i32 %i.nn to float
  %i.np = fdiv float %sqrt.i, %i.no
  %i.nq = fpext float %i.np to double
  %i.nr = load i32, ptr %i.mi, align 4
  %.not588 = icmp eq i32 %i.nr, 0
  br i1 %.not588, label %.loopexit553, label %.lr.ph568

.lr.ph568:                                        ; preds = %.loopexit554, %.lr.ph568
  %indvars.iv598 = phi i64 [ %indvars.iv.next599, %.lr.ph568 ], [ 0, %.loopexit554 ] ; 3 uses
  %i.ns = load ptr, ptr %i.ms, align 8
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.ns, i64 %indvars.iv598 ; 3 uses
  %i.nu = trunc nuw i64 %indvars.iv598 to i32
  %i.nv = uitofp i32 %i.nu to double
  %i.nw = fmul double %i.mf, %i.nv                ; 2 uses
  store double %i.nw, ptr %i.nt, align 8
  %i.nx = fmul double %i.nw, %i.nq
  %i.ny = fptrunc double %i.nx to float           ; 2 uses
  %i.nz = fmul float %.sroa.11.0, %i.ny
  %i.oa = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.ob = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x float> %.sroa.0414.0, %i.ob
  %i.od = load <2 x float>, ptr %i.mu, align 4
  %i.oe = fadd <2 x float> %i.oc, %i.od
  %i.of = load float, ptr %i.na, align 4
  %i.og = fadd float %i.nz, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store <2 x float> %i.oe, ptr %i.oh, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store float %i.og, ptr %.sroa.492.0..sroa_idx, align 8
  %indvars.iv.next599 = add nuw nsw i64 %indvars.iv598, 1 ; 2 uses
  %i.oi = load i32, ptr %i.mi, align 4
  %i.oj = zext i32 %i.oi to i64
  %i.ok = icmp samesign ult i64 %indvars.iv.next599, %i.oj
  br i1 %i.ok, label %.lr.ph568, label %.loopexit553, !llvm.loop !16

bb.bb:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 3, ptr %i.ol, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 3, ptr %i.om, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 56 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 64
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = load ptr, ptr %i.on, align 8
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = sdiv exact i64 %i.ot, 24
  %i.ov = trunc i64 %i.ou to i32                  ; 11 uses
  switch i32 %i.ov, label %bb.bj [
    i32 0, label %bb.bc
    i32 1, label %bb.bi
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.ow = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ow, ptr noundef nonnull @.str.12)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  %i.oy = load ptr, ptr %i.ox, align 8            ; 2 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZdaPv(ptr noundef nonnull %i.oy) #27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.pa = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZdaPv(ptr noundef nonnull %i.pa) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.pc = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZdaPv(ptr noundef nonnull %i.pc) #27
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bb
  %i.pe = getelementptr inbounds nuw i8, ptr %i.r, i64 1028
  store i32 1, ptr %i.pe, align 4
  %i.pf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #28 ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pf, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.pg, align 4
  %i.ph = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  store ptr %i.pf, ptr %i.ph, align 8
  %i.pi = load ptr, ptr %i.on, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pk, ptr noundef nonnull align 8 dereferenceable(12) %i.pj, i64 12, i1 false)
  store double 0.000000e+00, ptr %i.pf, align 8
  br label %.loopexit553

bb.bj:                                            ; preds = %bb.bb
  %i.pl = load double, ptr %i.m, align 8
  %i.pm = fmul double %i.pl, 1.500000e+01
  %i.pn = fptoui double %i.pm to i32              ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 3 uses
  store i32 %i.pn, ptr %i.po, align 4
  %i.pp = zext i32 %i.pn to i64                   ; 2 uses
  %i.pq = mul nuw nsw i64 %i.pp, 24
  %i.pr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.pq) #28 ; 3 uses
  %i.ps = icmp eq i32 %i.pn, 0
  br i1 %i.ps, label %.loopexit556, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.pr, i64 %i.pp
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %i.pu = phi ptr [ %i.pr, %bb.bk ], [ %i.pw, %bb.bl ] ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pu, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.pv, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 24 ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.pt
  br i1 %i.px, label %.loopexit556, label %bb.bl

.loopexit556:                                     ; preds = %bb.bl, %bb.bj
  %i.py = getelementptr inbounds nuw i8, ptr %i.r, i64 1032 ; 2 uses
  store ptr %i.pr, ptr %i.py, align 8
  %i.pz = load i32, ptr %i.po, align 4
  %.not587 = icmp eq i32 %i.pz, 0
  br i1 %.not587, label %.loopexit553, label %.lr.ph566

.lr.ph566:                                        ; preds = %.loopexit556
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 20
  %i.qb = tail call i32 @llvm.smin.i32(i32 %i.ov, i32 0)
  %i.qc = sub i32 0, %i.qb                        ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 52
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph566, %bb.bm
  %indvars.iv595 = phi i64 [ 0, %.lr.ph566 ], [ %indvars.iv.next596, %bb.bm ] ; 3 uses
  %i.qe = load ptr, ptr %i.py, align 8
  %i.qf = getelementptr inbounds nuw [24 x i8], ptr %i.qe, i64 %indvars.iv595 ; 3 uses
  %i.qg = trunc nuw i64 %indvars.iv595 to i32     ; 2 uses
  %i.qh = uitofp i32 %i.qg to float
  %i.qi = load float, ptr %i.qa, align 4
  %i.qj = fmul float %i.qi, %i.qh
  %i.qk = fmul float %i.qj, 1.000000e-03          ; 2 uses
  %i.ql = tail call noundef float @llvm.floor.f32(float %i.qk) ; 2 uses
  %i.qm = fsub float %i.qk, %i.ql                 ; 2 uses
  %i.qn = fptosi float %i.ql to i32
  %i.qo = srem i32 %i.qn, %i.ov                   ; 8 uses
  %i.qp = add nsw i32 %i.qo, -1
  %i.qq = icmp slt i32 %i.qo, 1
  %.p.i = select i1 %i.qq, i32 %i.ov, i32 %i.qc
  %i.qr = add i32 %i.qp, %.p.i
  %i.qs = sext i32 %i.qr to i64
  %i.qt = load ptr, ptr %i.on, align 8            ; 4 uses
  %i.qu = getelementptr inbounds nuw [24 x i8], ptr %i.qt, i64 %i.qs ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = icmp slt i32 %i.qo, 0
  %.p.i345 = select i1 %i.qw, i32 %i.ov, i32 %i.qc
  %i.qx = add i32 %.p.i345, %i.qo
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [24 x i8], ptr %i.qt, i64 %i.qy ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = add nsw i32 %i.qo, 1                    ; 2 uses
  %i.rc = icmp slt i32 %i.qo, -1
  %.not.i346 = icmp slt i32 %i.rb, %i.ov
  %i.rd = select i1 %.not.i346, i32 0, i32 %i.ov
  %i.re = sub i32 0, %i.rd
  %.p.i347 = select i1 %i.rc, i32 %i.ov, i32 %i.re
  %i.rf = add i32 %.p.i347, %i.rb
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [24 x i8], ptr %i.qt, i64 %i.rg ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = add nsw i32 %i.qo, 2                    ; 2 uses
  %i.rk = icmp slt i32 %i.qo, -2
  %.not.i348 = icmp slt i32 %i.rj, %i.ov
  %i.rl = select i1 %.not.i348, i32 0, i32 %i.ov
  %i.rm = sub i32 0, %i.rl
  %.p.i349 = select i1 %i.rk, i32 %i.ov, i32 %i.rm
  %i.rn = add i32 %.p.i349, %i.rj
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [24 x i8], ptr %i.qt, i64 %i.ro ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = fmul float %i.qm, %i.qm                 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rt = load float, ptr %i.rs, align 4          ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.rv = load float, ptr %i.ru, align 4
  %i.rw = fsub float %i.rt, %i.rv
  %i.rx = load float, ptr %i.qd, align 4          ; 3 uses
  %i.ry = fmul float %i.rx, %i.rw
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.sa = load float, ptr %i.rz, align 4
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.sc = load float, ptr %i.sb, align 4          ; 2 uses
  %i.sd = fsub float %i.sa, %i.sc
  %i.se = fmul float %i.rx, %i.sd
  %i.sf = fmul float %i.rr, 2.000000e+00          ; 4 uses
  %i.sg = fmul float %i.rr, -3.000000e+00
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.sf, float 2.000000e+00, float %i.sg)
  %i.si = fmul float %i.sf, 3.000000e+00
  %4 = insertelement <2 x float> poison, float %i.sf, i64 0 ; 2 uses
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x float> %4, float %i.si, i64 1
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> splat (float -2.000000e+00), <2 x float> %6) ; 4 uses
  %i.sj = fsub float %i.sf, %i.rr                 ; 2 uses
  %i.sk = fadd float %i.sh, 1.000000e+00          ; 2 uses
  %i.sl = load <2 x float>, ptr %i.ri, align 4    ; 2 uses
  %i.sm = load <2 x float>, ptr %i.qv, align 4
  %i.sn = fsub <2 x float> %i.sl, %i.sm
  %i.so = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.sp = shufflevector <2 x float> %i.so, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sq = fmul <2 x float> %i.sn, %i.sp
  %i.sr = load <2 x float>, ptr %i.rq, align 4
  %i.ss = load <2 x float>, ptr %i.ra, align 4    ; 2 uses
  %i.st = fsub <2 x float> %i.sr, %i.ss
  %i.su = fmul <2 x float> %i.sp, %i.st
  %i.sv = insertelement <2 x float> poison, float %i.sk, i64 0
  %i.sw = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sx = fmul <2 x float> %i.sw, %i.ss
  %i.sy = fmul float %i.sk, %i.sc
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %9 = fmul <2 x float> %i.sl, %8
  %10 = extractelement <2 x float> %7, i64 1
  %i.sz = fmul float %i.rt, %10
  %i.ta = fadd <2 x float> %9, %i.sx
  %i.tb = fadd float %i.sz, %i.sy
  %11 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %11, %i.sq
  %13 = extractelement <2 x float> %7, i64 0
  %i.tc = fmul float %13, %i.ry
  %i.td = fadd <2 x float> %12, %i.ta
  %i.te = fadd float %i.tc, %i.tb
  %i.tf = insertelement <2 x float> poison, float %i.sj, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.th = fmul <2 x float> %i.tg, %i.su
  %i.ti = fmul float %i.sj, %i.se
  %i.tj = fadd <2 x float> %i.td, %i.th
  %i.tk = fadd float %i.te, %i.ti
  %i.tl = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store <2 x float> %i.tj, ptr %i.tl, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store float %i.tk, ptr %.sroa.7.0..sroa_idx, align 8
  %i.tm = uitofp i32 %i.qg to double
  store double %i.tm, ptr %i.qf, align 8
  %indvars.iv.next596 = add nuw nsw i64 %indvars.iv595, 1 ; 2 uses
  %i.tn = load i32, ptr %i.po, align 4
  %i.to = zext i32 %i.tn to i64
  %i.tp = icmp samesign ult i64 %indvars.iv.next596, %i.to
  br i1 %i.tp, label %bb.bm, label %.loopexit553, !llvm.loop !17

bb.bn:                                            ; preds = %bb.bg, %bb.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1080) #27
  br label %bb.bt

.loopexit553:                                     ; preds = %bb.bm, %.lr.ph568, %.thread671, %.loopexit556, %.loopexit554, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.bi, %._crit_edge571, %._crit_edge578, %bb.ak
  %i.tq = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.tr = load ptr, ptr %i.o, align 8
  %.not.i394 = icmp eq ptr %i.tq, %i.tr
  br i1 %.not.i394, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.loopexit553
  store ptr %i.r, ptr %i.tq, align 8
  %i.ts = load ptr, ptr %i.n, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store ptr %i.tt, ptr %i.n, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

bb.bp:                                            ; preds = %.loopexit553
  %i.tu = load ptr, ptr %3, align 8               ; 4 uses
  %i.tv = ptrtoint ptr %i.tq to i64
  %i.tw = ptrtoint ptr %i.tu to i64               ; 2 uses
  %i.tx = sub i64 %i.tv, %i.tw                    ; 5 uses
  %i.ty = icmp eq i64 %i.tx, 9223372036854775800
  br i1 %i.ty, label %bb.bq, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bq:                                            ; preds = %bb.bp
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bp
  %i.tz = ashr exact i64 %i.tx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.tz, i64 1)
  %i.ua = add nsw i64 %.sroa.speculated.i.i.i, %i.tz ; 2 uses
  %i.ub = icmp ult i64 %i.ua, %i.tz
  %i.uc = tail call i64 @llvm.umin.i64(i64 %i.ua, i64 1152921504606846975)
  %i.ud = select i1 %i.ub, i64 1152921504606846975, i64 %i.uc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ud, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ue = shl nuw nsw i64 %i.ud, 3
  %i.uf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ue) #28 ; 4 uses
  %i.ug = getelementptr inbounds i8, ptr %i.uf, i64 %i.tx ; 2 uses
  store ptr %i.r, ptr %i.ug, align 8
  %i.uh = icmp sgt i64 %i.tx, 0
  br i1 %i.uh, label %bb.br, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.br:                                            ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uf, ptr align 8 %i.tu, i64 %i.tx, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.br, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %.not.i17.i.i = icmp eq ptr %i.tu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.uj = load ptr, ptr %i.o, align 8
  %i.uk = ptrtoint ptr %i.uj to i64
  %i.ul = sub i64 %i.uk, %i.tw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tu, i64 noundef %i.ul) #27
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bs, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.uf, ptr %3, align 8
  store ptr %i.ui, ptr %i.n, align 8
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.ud
  store ptr %i.um, ptr %i.o, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bo, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.un = add i32 %.2582, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.h, %bb.h, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit, %bb.bn
  %.1238 = phi i32 [ %.0237581, %bb.h ], [ %.0237581, %bb.h ], [ %i.bg, %bb.bn ], [ %i.bg, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit ]
  %.4 = phi i32 [ %.2582, %bb.h ], [ %.2582, %bb.h ], [ %.2582, %bb.bn ], [ %i.un, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit ]
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
