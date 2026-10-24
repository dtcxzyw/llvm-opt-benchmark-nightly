Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/AbsoluteLayout?download=true
inline.NumInlined: 733
inline.NumDeleted: 181
begin_hunk_0_@_ZN8facebook4yoga19layoutAbsoluteChildEPKNS0_4NodeES3_PS1_ffNS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjj:bb.a
  %.not7.i13.i404 = icmp eq i16 %i.nt, 0
  %spec.select.i14.i405 = select i1 %.not7.i13.i404, ptr %i.nf, ptr %i.nc
  %.sroa.0.0.in.i15.i406 = select i1 %.not.i12.i403, ptr %spec.select.i14.i405, ptr %i.np
  %.sroa.0.0.i16.i407 = load i16, ptr %.sroa.0.0.in.i15.i406, align 1, !tbaa !12
  %i.nu = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i16.i407, float noundef %3)
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 129 ; 2 uses
  %i.nw = load i16, ptr %i.nv, align 1, !tbaa !11
  %i.nx = and i16 %i.nw, 7
  %.not.i12.i397 = icmp eq i16 %i.nx, 0
  %i.ny = load i16, ptr %i.nk, align 1
  %i.nz = and i16 %i.ny, 7
  %.not7.i13.i398 = icmp eq i16 %i.nz, 0
  %spec.select.i14.i399 = select i1 %.not7.i13.i398, ptr %i.nn, ptr %i.nk
  %.sroa.0.0.in.i15.i400 = select i1 %.not.i12.i397, ptr %spec.select.i14.i399, ptr %i.nv
  %.sroa.0.0.i16.i401 = load i16, ptr %.sroa.0.0.in.i15.i400, align 1, !tbaa !12
  %i.oa = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i16.i401, float noundef 0.000000e+00)
  %i.ob = insertelement <4 x float> poison, float %i.ng, i64 0
  %i.oc = insertelement <4 x float> %i.ob, float %i.no, i64 1
  %i.od = insertelement <4 x float> %i.oc, float %i.nu, i64 2
  %i.oe = insertelement <4 x float> %i.od, float %i.oa, i64 3 ; 2 uses
  %i.of = fcmp oge <4 x float> %i.oe, zeroinitializer
  %i.og = select <4 x i1> %i.of, <4 x float> %i.oe, <4 x float> zeroinitializer ; 2 uses
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.oi = shufflevector <4 x float> %i.og, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.oj = fadd <2 x float> %i.oh, %i.oi           ; 2 uses
  %shift = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.oj, %shift
  %i.ok = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ol = fcmp ord float %i.ok, 0.000000e+00
  %.sroa.0.0.i161 = select i1 %i.ol, float %i.ok, float 0.000000e+00
  %i.om = fadd float %.sroa.0.0.i.i160, %.sroa.0.0.i161
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit163

_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit163: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i159, %bb.bg
  %.sroa.06.0.i162 = phi float [ %i.om, %bb.bg ], [ %.sroa.0.0.i.i160, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i159 ]
  %i.on = fadd float %i.bf, %.sroa.06.0.i162
  br label %bb.bj

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit157.thread: ; preds = %bb.be, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit157
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 89 ; 4 uses
  %i.op = load i16, ptr %i.oo, align 1, !tbaa !11
  %i.oq = and i16 %i.op, 7
  %.not.i3.i268 = icmp eq i16 %i.oq, 0
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 101 ; 6 uses
  %i.os = load i16, ptr %i.or, align 1
  %i.ot = and i16 %i.os, 7
  %.not7.i.i269 = icmp eq i16 %i.ot, 0
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 103 ; 3 uses
  %spec.select.i.i270 = select i1 %.not7.i.i269, ptr %i.ou, ptr %i.or ; 2 uses
  %.sroa.0.0.in.i.i271 = select i1 %.not.i3.i268, ptr %spec.select.i.i270, ptr %i.oo
  %.sroa.0.0.i4.i272 = load i16, ptr %.sroa.0.0.in.i.i271, align 1, !tbaa !12
  %.sroa.0.0.i4.i272.fr = freeze i16 %.sroa.0.0.i4.i272
  %i.ov = and i16 %.sroa.0.0.i4.i272.fr, 7        ; 2 uses
  %.not488 = icmp eq i16 %i.ov, 0
  br i1 %.not488, label %.thr_comm463, label %bb.bh

bb.bh:                                            ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit157.thread
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 93 ; 4 uses
  %i.ox = icmp eq i16 %i.ov, 4
  br i1 %i.ox, label %.thr_comm463, label %switch.early.test

switch.early.test:                                ; preds = %bb.bh
  %i.oy = load i16, ptr %i.ow, align 1, !tbaa !11
  %i.oz = and i16 %i.oy, 7
  %.not.i12.i274 = icmp eq i16 %i.oz, 0
  %.sroa.0.0.in.i15.i277 = select i1 %.not.i12.i274, ptr %spec.select.i.i270, ptr %i.ow
  %.sroa.0.0.i16.i278 = load i16, ptr %.sroa.0.0.in.i15.i277, align 1, !tbaa !12
  %i.pa = and i16 %.sroa.0.0.i16.i278, 7
  switch i16 %i.pa, label %bb.bi [
    i16 4, label %.thr_comm463
    i16 0, label %.thr_comm463
  ]

bb.bi:                                            ; preds = %switch.early.test
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !14
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.pf = load i16, ptr %i.pe, align 1, !tbaa !11
  %i.pg = and i16 %i.pf, 7
  %.not.i3.i292 = icmp eq i16 %i.pg, 0
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 4 uses
  %i.pi = load i16, ptr %i.ph, align 1
  %i.pj = and i16 %i.pi, 7
  %.not7.i.i293 = icmp eq i16 %i.pj, 0
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %spec.select.i.i294 = select i1 %.not7.i.i293, ptr %i.pk, ptr %i.ph
  %.sroa.0.0.in.i.i295 = select i1 %.not.i3.i292, ptr %spec.select.i.i294, ptr %i.pe
  %.sroa.0.0.i4.i296 = load i16, ptr %.sroa.0.0.in.i.i295, align 1, !tbaa !12
  %i.pl = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.pd, i16 %.sroa.0.0.i4.i296, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i164 = fcmp oge float %i.pl, 0.000000e+00
  %i.pm = select i1 %.sink.i.inv.i164, float %i.pl, float 0.000000e+00
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.po = load i16, ptr %i.pn, align 1, !tbaa !11
  %i.pp = and i16 %i.po, 7
  %.not.i12.i298 = icmp eq i16 %i.pp, 0
  %i.pq = load i16, ptr %i.ph, align 1
  %i.pr = and i16 %i.pq, 7
  %.not7.i13.i299 = icmp eq i16 %i.pr, 0
  %spec.select.i14.i300 = select i1 %.not7.i13.i299, ptr %i.pk, ptr %i.ph
  %.sroa.0.0.in.i15.i301 = select i1 %.not.i12.i298, ptr %spec.select.i14.i300, ptr %i.pn
  %.sroa.0.0.i16.i302 = load i16, ptr %.sroa.0.0.in.i15.i301, align 1, !tbaa !12
  %i.ps = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.pd, i16 %.sroa.0.0.i16.i302, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i165 = fcmp oge float %i.ps, 0.000000e+00
  %i.pt = select i1 %.sink.i.inv.i165, float %i.ps, float 0.000000e+00
  %i.pu = fadd float %i.pm, %i.pt
  %i.pv = fsub float %i.pc, %i.pu
  %i.pw = load i16, ptr %i.oo, align 1, !tbaa !11
  %i.px = and i16 %i.pw, 7
  %.not.i3.i304 = icmp eq i16 %i.px, 0
  %i.py = load i16, ptr %i.or, align 1
  %i.pz = and i16 %i.py, 7
  %.not7.i.i305 = icmp eq i16 %i.pz, 0
  %spec.select.i.i306 = select i1 %.not7.i.i305, ptr %i.ou, ptr %i.or
  %.sroa.0.0.in.i.i307 = select i1 %.not.i3.i304, ptr %spec.select.i.i306, ptr %i.oo
  %.sroa.0.0.i4.i308 = load i16, ptr %.sroa.0.0.in.i.i307, align 1, !tbaa !12
  %i.qa = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i4.i308, float noundef %4) ; 2 uses
  %.inv.i166 = fcmp ord float %i.qa, 0.000000e+00
  %i.qb = select i1 %.inv.i166, float %i.qa, float 0.000000e+00
  %i.qc = load i16, ptr %i.ow, align 1, !tbaa !11
  %i.qd = and i16 %i.qc, 7
  %.not.i12.i310 = icmp eq i16 %i.qd, 0
  %i.qe = load i16, ptr %i.or, align 1
  %i.qf = and i16 %i.qe, 7
  %.not7.i13.i311 = icmp eq i16 %i.qf, 0
  %spec.select.i14.i312 = select i1 %.not7.i13.i311, ptr %i.ou, ptr %i.or
  %.sroa.0.0.in.i15.i313 = select i1 %.not.i12.i310, ptr %spec.select.i14.i312, ptr %i.ow
  %.sroa.0.0.i16.i314 = load i16, ptr %.sroa.0.0.in.i15.i313, align 1, !tbaa !12
  %i.qg = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i16.i314, float noundef %4) ; 2 uses
  %.inv.i167 = fcmp ord float %i.qg, 0.000000e+00
  %i.qh = select i1 %.inv.i167, float %i.qg, float 0.000000e+00
  %i.qi = fadd float %i.qb, %i.qh
  %i.qj = fsub float %i.pv, %i.qi
  %i.qk = tail call float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %2, i8 noundef zeroext %6, i8 noundef zeroext 0, float %i.qj, float noundef %4, float noundef %3) ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 107 ; 2 uses
  %i.qm = load i16, ptr %i.ql, align 1, !tbaa !11
  %i.qn = and i16 %i.qm, 7
  %.not.i3.i334 = icmp eq i16 %i.qn, 0
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 119 ; 4 uses
  %i.qp = load i16, ptr %i.qo, align 1
  %i.qq = and i16 %i.qp, 7
  %.not7.i.i335 = icmp eq i16 %i.qq, 0
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 121 ; 2 uses
  %spec.select.i.i336 = select i1 %.not7.i.i335, ptr %i.qr, ptr %i.qo
  %.sroa.0.0.in.i.i337 = select i1 %.not.i3.i334, ptr %spec.select.i.i336, ptr %i.ql
  %.sroa.0.0.i4.i338 = load i16, ptr %.sroa.0.0.in.i.i337, align 1, !tbaa !12
  %i.qs = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i4.i338, float noundef %3)
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 125 ; 2 uses
  %i.qu = load i16, ptr %i.qt, align 1, !tbaa !11
  %i.qv = and i16 %i.qu, 7
  %.not.i3.i328 = icmp eq i16 %i.qv, 0
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 137 ; 4 uses
  %i.qx = load i16, ptr %i.qw, align 1
  %i.qy = and i16 %i.qx, 7
  %.not7.i.i329 = icmp eq i16 %i.qy, 0
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 139 ; 2 uses
  %spec.select.i.i330 = select i1 %.not7.i.i329, ptr %i.qz, ptr %i.qw
  %.sroa.0.0.in.i.i331 = select i1 %.not.i3.i328, ptr %spec.select.i.i330, ptr %i.qt
  %.sroa.0.0.i4.i332 = load i16, ptr %.sroa.0.0.in.i.i331, align 1, !tbaa !12
  %i.ra = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i4.i332, float noundef 0.000000e+00)
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 111 ; 2 uses
  %i.rc = load i16, ptr %i.rb, align 1, !tbaa !11
  %i.rd = and i16 %i.rc, 7
  %.not.i12.i322 = icmp eq i16 %i.rd, 0
  %i.re = load i16, ptr %i.qo, align 1
  %i.rf = and i16 %i.re, 7
  %.not7.i13.i323 = icmp eq i16 %i.rf, 0
  %spec.select.i14.i324 = select i1 %.not7.i13.i323, ptr %i.qr, ptr %i.qo
  %.sroa.0.0.in.i15.i325 = select i1 %.not.i12.i322, ptr %spec.select.i14.i324, ptr %i.rb
  %.sroa.0.0.i16.i326 = load i16, ptr %.sroa.0.0.in.i15.i325, align 1, !tbaa !12
  %i.rg = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i16.i326, float noundef %3)
  %i.rh = getelementptr inbounds nuw i8, ptr %2, i64 129 ; 2 uses
  %i.ri = load i16, ptr %i.rh, align 1, !tbaa !11
  %i.rj = and i16 %i.ri, 7
  %.not.i12.i316 = icmp eq i16 %i.rj, 0
  %i.rk = load i16, ptr %i.qw, align 1
  %i.rl = and i16 %i.rk, 7
  %.not7.i13.i317 = icmp eq i16 %i.rl, 0
  %spec.select.i14.i318 = select i1 %.not7.i13.i317, ptr %i.qz, ptr %i.qw
  %.sroa.0.0.in.i15.i319 = select i1 %.not.i12.i316, ptr %spec.select.i14.i318, ptr %i.rh
  %.sroa.0.0.i16.i320 = load i16, ptr %.sroa.0.0.in.i15.i319, align 1, !tbaa !12
  %i.rm = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i16.i320, float noundef 0.000000e+00)
  %i.rn = insertelement <4 x float> poison, float %i.qs, i64 0
  %i.ro = insertelement <4 x float> %i.rn, float %i.ra, i64 1
  %i.rp = insertelement <4 x float> %i.ro, float %i.rg, i64 2
  %i.rq = insertelement <4 x float> %i.rp, float %i.rm, i64 3 ; 2 uses
  %i.rr = fcmp oge <4 x float> %i.rq, zeroinitializer
  %i.rs = select <4 x i1> %i.rr, <4 x float> %i.rq, <4 x float> zeroinitializer ; 2 uses
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ru = shufflevector <4 x float> %i.rs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.rv = fadd <2 x float> %i.rt, %i.ru
  %i.rw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.rv) ; 3 uses
  %or.cond.i.i172 = fcmp ord float %i.qk, %i.rw
  %i.rx = fcmp uno float %i.qk, 0.000000e+00
  %i.ry = fcmp olt float %i.qk, %i.rw
  %.sink.i.i173 = select i1 %or.cond.i.i172, i1 %i.ry, i1 %i.rx
  %i.rz = select i1 %.sink.i.i173, float %i.rw, float %i.qk
  br label %bb.bj

.thr_comm463:                                     ; preds = %switch.early.test, %switch.early.test, %bb.bh, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit157.thread
  %10 = fcmp ord float %.0141, 0.000000e+00
  br i1 %10, label %bb.bk, label %bb.cb

bb.bj:                                            ; preds = %bb.bi, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit163
  %.0140 = phi float [ %i.on, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit163 ], [ %i.rz, %bb.bi ] ; 3 uses
  %i.sa = fcmp uno float %.0141, 0.000000e+00     ; 2 uses
  %i.sb = fcmp uno float %.0140, 0.000000e+00     ; 2 uses
  %i.sc = xor i1 %i.sa, %i.sb
  br i1 %i.sc, label %bb.bk, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

bb.bk:                                            ; preds = %.thr_comm463, %bb.bj
  %i.sd = phi i1 [ true, %.thr_comm463 ], [ %i.sb, %bb.bj ] ; 2 uses
  %i.se = phi i1 [ false, %.thr_comm463 ], [ %i.sa, %bb.bj ] ; 2 uses
  %.0140464 = phi float [ +qnan, %.thr_comm463 ], [ %.0140, %bb.bj ] ; 6 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 159
  %.sroa.0.0.copyload.i = load i16, ptr %i.sf, align 1, !tbaa !12 ; 12 uses
  %i.sg = and i16 %.sroa.0.0.copyload.i, 7
  %i.sh = icmp eq i16 %i.sg, 0
  br i1 %i.sh, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.si = and i16 %.sroa.0.0.copyload.i, 8
  %.not.i.i = icmp eq i16 %i.si, 0
  br i1 %.not.i.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sj = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.sk = zext nneg i16 %i.sj to i64              ; 2 uses
  %i.sl = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.sl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.sm = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sk
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit

bb.bo:                                            ; preds = %bb.bm
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !17 ; 2 uses
  %i.sq = add nsw i64 %i.sk, -4                   ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !20
  %i.st = load ptr, ptr %i.sp, align 8, !tbaa !21 ; 2 uses
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = ptrtoint ptr %i.st to i64
  %i.sw = sub i64 %i.su, %i.sv
  %i.sx = ashr exact i64 %i.sw, 2                 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.sq, %i.sx
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.sq, i64 noundef %i.sx) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i:             ; preds = %bb.bo
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %i.sq
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit

_ZNK8facebook4yoga5Style11aspectRatioEv.exit:     ; preds = %bb.bn, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i
  %.0.in.i.i.i = phi ptr [ %i.sn, %bb.bn ], [ %i.sy, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i ]
  %.0.i7.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !22
  %i.sz = fcmp ord float %.0.i7.i.i, 0.000000e+00
  br i1 %i.sz, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread: ; preds = %bb.bl
  br i1 %i.se, label %bb.bu, label %bb.bv

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit
  br i1 %i.se, label %bb.bq, label %.thread519

bb.bq:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread
  %i.ta = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.tb = zext nneg i16 %i.ta to i64              ; 2 uses
  %i.tc = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.tc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.td = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tb
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i178

bb.bs:                                            ; preds = %bb.bq
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !17 ; 2 uses
  %i.th = add nsw i64 %i.tb, -4                   ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !20
  %i.tk = load ptr, ptr %i.tg, align 8, !tbaa !21 ; 2 uses
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = sub i64 %i.tl, %i.tm
  %i.to = ashr exact i64 %i.tn, 2                 ; 2 uses
  %.not.i.i.i.i.i176 = icmp ult i64 %i.th, %i.to
  br i1 %.not.i.i.i.i.i176, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i177, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.th, i64 noundef %i.to) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i177:          ; preds = %bb.bs
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.th
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i178

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i178: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i177, %bb.br
  %.0.in.i.i.i179 = phi ptr [ %i.te, %bb.br ], [ %i.tp, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i177 ]
  %.0.i7.i.i180 = load float, ptr %.0.in.i.i.i179, align 4, !tbaa !22
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit183

bb.bu:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread
  %i.tq = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.tr = and i16 %i.tq, 2047
  %i.ts = zext nneg i16 %i.tr to i32              ; 2 uses
  %i.tt = sub nsw i32 0, %i.ts
  %.not.i6.i.i182 = icmp slt i16 %.sroa.0.0.copyload.i, 0
  %i.tu = select i1 %.not.i6.i.i182, i32 %i.tt, i32 %i.ts
  %i.tv = sitofp i32 %i.tu to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit183

_ZNK8facebook4yoga5Style11aspectRatioEv.exit183:  ; preds = %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i178, %bb.bu
  %.sroa.05.0.i.i181 = phi float [ %i.tv, %bb.bu ], [ %.0.i7.i.i180, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i178 ]
  %i.tw = fsub float %.0140464, %i.bf
  %i.tx = tail call float @llvm.fmuladd.f32(float %i.tw, float %.sroa.05.0.i.i181, float %i.ao)
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

bb.bv:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread
  br i1 %i.sd, label %bb.ca, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

.thread519:                                       ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread
  br i1 %i.sd, label %bb.bw, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

bb.bw:                                            ; preds = %.thread519
  %i.ty = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.tz = zext nneg i16 %i.ty to i64              ; 2 uses
  %i.ua = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.ua, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ub = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.tz
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188

bb.by:                                            ; preds = %bb.bw
  %i.ud = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !17 ; 2 uses
  %i.uf = add nsw i64 %i.tz, -4                   ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !20
  %i.ui = load ptr, ptr %i.ue, align 8, !tbaa !21 ; 2 uses
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = ptrtoint ptr %i.ui to i64
  %i.ul = sub i64 %i.uj, %i.uk
  %i.um = ashr exact i64 %i.ul, 2                 ; 2 uses
  %.not.i.i.i.i.i186 = icmp ult i64 %i.uf, %i.um
  br i1 %.not.i.i.i.i.i186, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i187, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.uf, i64 noundef %i.um) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i187:          ; preds = %bb.by
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %i.uf
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i187, %bb.bx
  %.0.in.i.i.i189 = phi ptr [ %i.uc, %bb.bx ], [ %i.un, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i187 ]
  %.0.i7.i.i190 = load float, ptr %.0.in.i.i.i189, align 4, !tbaa !22
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193

bb.ca:                                            ; preds = %bb.bv
  %i.uo = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.up = and i16 %i.uo, 2047
  %i.uq = zext nneg i16 %i.up to i32              ; 2 uses
  %i.ur = sub nsw i32 0, %i.uq
  %.not.i6.i.i192 = icmp slt i16 %.sroa.0.0.copyload.i, 0
  %i.us = select i1 %.not.i6.i.i192, i32 %i.ur, i32 %i.uq
  %i.ut = sitofp i32 %i.us to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193

_ZNK8facebook4yoga5Style11aspectRatioEv.exit193:  ; preds = %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188, %bb.ca
  %.sroa.05.0.i.i191 = phi float [ %i.ut, %bb.ca ], [ %.0.i7.i.i190, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188 ]
  %i.uu = fsub float %.0141, %i.ao
  %i.uv = fdiv float %i.uu, %.sroa.05.0.i.i191
  %i.uw = fadd float %i.bf, %i.uv
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466: ; preds = %.thread519, %bb.bk, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit, %bb.bv, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit183, %bb.bj
  %.1142 = phi float [ %i.tx, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit183 ], [ %.0141, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193 ], [ %.0141, %bb.bv ], [ %.0141, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit ], [ %.0141, %bb.bj ], [ %.0141, %bb.bk ], [ %.0141, %.thread519 ] ; 4 uses
  %.1 = phi float [ %.0140464, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit183 ], [ %i.uw, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193 ], [ %.0140464, %bb.bv ], [ %.0140464, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit ], [ %.0140, %bb.bj ], [ %.0140464, %bb.bk ], [ %.0140464, %.thread519 ] ; 4 uses
  %i.ux = fcmp uno float %.1142, 0.000000e+00
  br i1 %i.ux, label %bb.cb, label %11

11:                                               ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466
  %12 = fcmp uno float %.1, 0.000000e+00
  br i1 %12, label %.thread468, label %bb.cg

bb.cb:                                            ; preds = %.thr_comm463, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466
  %.1474 = phi float [ +qnan, %.thr_comm463 ], [ %.1, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466 ] ; 3 uses
  %.1142472 = phi float [ %.0141, %.thr_comm463 ], [ %.1142, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466 ]
  %i.uy = fcmp uno float %.1474, 0.000000e+00     ; 2 uses
  %13 = icmp ne i32 %5, 1
  %14 = and i1 %13, %i.o
  %15 = fcmp ogt float %3, 0.000000e+00
  %or.cond = and i1 %14, %15
  br i1 %or.cond, label %16, label %.thread468

16:                                               ; preds = %bb.cb
  br label %.thread468

.thread468:                                       ; preds = %11, %16, %bb.cb
  %i.uz = phi i1 [ %i.uy, %bb.cb ], [ %i.uy, %16 ], [ true, %11 ]
  %.1474.a = phi float [ %.1474, %bb.cb ], [ %.1474, %16 ], [ %.1, %11 ]
  %.1142472.a = phi float [ %.1142472, %bb.cb ], [ %3, %16 ], [ %.1142, %11 ]
  %.0 = phi i32 [ 1, %bb.cb ], [ 2, %16 ], [ 0, %11 ]
  %i.va = zext i1 %i.uz to i32
  %i.vb = tail call noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %2, float noundef %.1142472.a, float noundef %.1474.a, i8 noundef zeroext %6, i32 noundef %.0, i32 noundef %i.va, float noundef %3, float noundef %4, i1 noundef zeroext false, i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(60) %7, i32 noundef %8, i32 noundef %9) ; 0 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !14
  %i.ve = load i16, ptr %i.r, align 1, !tbaa !11  ; 2 uses
  %i.vf = and i16 %i.ve, 7
  %.not14.i.i347 = icmp eq i16 %i.vf, 0
  br i1 %.not14.i.i347, label %bb.cc, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353

bb.cc:                                            ; preds = %.thread468
  %i.vg = load i16, ptr %i.q, align 1, !tbaa !11  ; 2 uses
  %i.vh = and i16 %i.vg, 7
  %.not15.i.i349 = icmp eq i16 %i.vh, 0
  br i1 %.not15.i.i349, label %bb.cd, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353

bb.cd:                                            ; preds = %bb.cc
  %i.vi = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.vj = load i16, ptr %i.vi, align 1, !tbaa !11 ; 2 uses
  %i.vk = and i16 %i.vj, 7
  %.not16.i.i350 = icmp eq i16 %i.vk, 0
  %.val.i.i351 = load i16, ptr %i.av, align 1
  %.sroa.0.0.pre.i.i352 = select i1 %.not16.i.i350, i16 %.val.i.i351, i16 %i.vj
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353: ; preds = %.thread468, %bb.cc, %bb.cd
  %.sroa.0.0.i348 = phi i16 [ %.sroa.0.0.pre.i.i352, %bb.cd ], [ %i.ve, %.thread468 ], [ %i.vg, %bb.cc ]
  %i.vl = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i348, float noundef %3) ; 2 uses
  %.inv.i.i194 = fcmp ord float %i.vl, 0.000000e+00
  %i.vm = select i1 %.inv.i.i194, float %i.vl, float 0.000000e+00
  %i.vn = load i16, ptr %i.ac, align 1, !tbaa !11 ; 2 uses
  %i.vo = and i16 %i.vn, 7
  %.not14.i11.i340 = icmp eq i16 %i.vo, 0
  br i1 %.not14.i11.i340, label %bb.ce, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346

bb.ce:                                            ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353
  %i.vp = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.vq = load i16, ptr %i.vp, align 1, !tbaa !11 ; 2 uses
  %i.vr = and i16 %i.vq, 7
  %.not15.i7.i342 = icmp eq i16 %i.vr, 0
  br i1 %.not15.i7.i342, label %bb.cf, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346

bb.cf:                                            ; preds = %bb.ce
  %i.vs = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.vt = load i16, ptr %i.vs, align 1, !tbaa !11 ; 2 uses
  %i.vu = and i16 %i.vt, 7
  %.not16.i8.i343 = icmp eq i16 %i.vu, 0
  %.val.i9.i344 = load i16, ptr %i.av, align 1
  %.sroa.0.0.pre.i10.i345 = select i1 %.not16.i8.i343, i16 %.val.i9.i344, i16 %i.vt
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353, %bb.ce, %bb.cf
  %.sroa.0.0.i341 = phi i16 [ %.sroa.0.0.pre.i10.i345, %bb.cf ], [ %i.vn, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353 ], [ %i.vq, %bb.ce ]
  %i.vv = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i341, float noundef %3) ; 2 uses
  %.inv.i5.i195 = fcmp ord float %i.vv, 0.000000e+00
  %i.vw = select i1 %.inv.i5.i195, float %i.vv, float 0.000000e+00
  %i.vx = fadd float %i.vm, %i.vw
  %i.vy = fadd float %i.vd, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %2, i64 596
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !14
  %i.wb = load i16, ptr %i.ap, align 1, !tbaa !11
  %i.wc = and i16 %i.wb, 7
  %.not.i3.i360 = icmp eq i16 %i.wc, 0
  %i.wd = load i16, ptr %i.as, align 1
  %i.we = and i16 %i.wd, 7
  %.not7.i.i361 = icmp eq i16 %i.we, 0
  %spec.select.i.i362 = select i1 %.not7.i.i361, ptr %i.av, ptr %i.as
  %.sroa.0.0.in.i.i363 = select i1 %.not.i3.i360, ptr %spec.select.i.i362, ptr %i.ap
  %.sroa.0.0.i4.i364 = load i16, ptr %.sroa.0.0.in.i.i363, align 1, !tbaa !12
  %i.wf = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i4.i364, float noundef %3) ; 2 uses
  %.inv.i.i196 = fcmp ord float %i.wf, 0.000000e+00
  %i.wg = select i1 %.inv.i.i196, float %i.wf, float 0.000000e+00
  %i.wh = load i16, ptr %i.ay, align 1, !tbaa !11
  %i.wi = and i16 %i.wh, 7
  %.not.i12.i354 = icmp eq i16 %i.wi, 0
  %i.wj = load i16, ptr %i.as, align 1
  %i.wk = and i16 %i.wj, 7
  %.not7.i13.i355 = icmp eq i16 %i.wk, 0
  %spec.select.i14.i356 = select i1 %.not7.i13.i355, ptr %i.av, ptr %i.as
  %.sroa.0.0.in.i15.i357 = select i1 %.not.i12.i354, ptr %spec.select.i14.i356, ptr %i.ay
  %.sroa.0.0.i16.i358 = load i16, ptr %.sroa.0.0.in.i15.i357, align 1, !tbaa !12
  %i.wl = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i16.i358, float noundef %3) ; 2 uses
  %.inv.i5.i197 = fcmp ord float %i.wl, 0.000000e+00
  %i.wm = select i1 %.inv.i5.i197, float %i.wl, float 0.000000e+00
  %i.wn = fadd float %i.wg, %i.wm
  %i.wo = fadd float %i.wa, %i.wn
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346, %11
  %.3 = phi float [ %i.vy, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346 ], [ %.1142, %11 ]
  %.2 = phi float [ %i.wo, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346 ], [ %.1, %11 ]
  %i.wp = tail call noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %2, float noundef %.3, float noundef %.2, i8 noundef zeroext %6, i32 noundef 0, i32 noundef 0, float noundef %3, float noundef %4, i1 noundef zeroext true, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(60) %7, i32 noundef %8, i32 noundef %9) ; 0 uses
  tail call fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %6, i8 noundef zeroext %i.m, i1 noundef zeroext true, float noundef %3, float noundef %4)
  tail call fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %6, i8 noundef zeroext %i.n, i1 noundef zeroext false, float noundef %3, float noundef %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef, float noundef, float noundef, i8 noundef zeroext, i32 noundef, i32 noundef, float noundef, float noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 4 dereferenceable(60), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5, float noundef %6, float noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = and i8 %4, -2
  %i.b = icmp eq i8 %i.a, 2                       ; 3 uses
  %i.c = select i1 %i.b, float %6, float %7       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 14 uses
  %i.e = icmp eq i8 %3, 2                         ; 2 uses
  %i.f = select i1 %i.e, i32 2, i32 0
  %.0.i.i = select i1 %i.b, i32 %i.f, i32 1       ; 7 uses
  %i.g = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.h = and i16 %i.g, 7
  %.not117 = icmp eq i16 %i.h, 0
  br i1 %.not117, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.j = and i16 %i.i, 7
  %i.k = icmp eq i16 %i.j, 4
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.m = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.l, float noundef %i.c) ; 2 uses
  %.inv.i = fcmp ord float %i.m, 0.000000e+00
  %i.n = select i1 %.inv.i, float %i.m, float 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.q = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i16 %i.p, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i = fcmp oge float %i.q, 0.000000e+00
  %i.r = select i1 %.sink.i.inv.i, float %i.q, float 0.000000e+00
  %i.s = fadd float %i.n, %i.r
  %i.t = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.u = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.t, float noundef %i.c) ; 2 uses
  %.inv.i79 = fcmp ord float %i.u, 0.000000e+00
  %i.v = select i1 %.inv.i79, float %i.u, float 0.000000e+00
  %i.w = fadd float %i.s, %i.v                    ; 2 uses
  switch i8 %4, label %bb.f [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
    i8 1, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i80 = phi i32 [ 2, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.not = icmp eq i32 %.0.i.i, %.0.i80
  br i1 %.not, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
  %switch = icmp samesign ult i8 %4, 2
  %spec.select = zext i1 %switch to i64
  br label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit

_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit: ; preds = %bb.c, %bb.g
  %.0.i.i81 = phi i64 [ %spec.select, %bb.g ], [ 1, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0.i.i81
  %i.z = load float, ptr %i.y, align 4, !tbaa !14
  %switch.i = icmp samesign ult i8 %4, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.ab = zext i1 %switch.i to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !14
  %i.ae = fsub float %i.z, %i.ad
  %i.af = fsub float %i.ae, %i.w
  br label %switch.lookup

switch.lookup:                                    ; preds = %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
  %i.ag = phi float [ %i.af, %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit ], [ %i.w, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit ]
  %i.ah = zext nneg i8 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %2, float noundef %i.ag, i32 noundef %switch.ext)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.ai = select i1 %i.e, i32 0, i32 2
  %.0.i.i84 = select i1 %i.b, i32 %i.ai, i32 3    ; 5 uses
  %i.aj = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.ak = and i16 %i.aj, 7
  %.not118 = icmp eq i16 %i.ak, 0
  br i1 %.not118, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.am = and i16 %i.al, 7
  %i.an = icmp eq i16 %i.am, 4
  br i1 %i.an, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i8 %4, 4
  br i1 %i.ao, label %switch.lookup120, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

switch.lookup120:                                 ; preds = %bb.j
  %i.ap = zext nneg i8 %4 to i64
  %switch.gep121 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf, i64 %i.ap
  %switch.load122 = load i8, ptr %switch.gep121, align 1
  %switch.ext123 = zext i8 %switch.load122 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %switch.ext123
  %i.as = load float, ptr %i.ar, align 4, !tbaa !14
  %switch113 = icmp samesign ult i8 %4, 2
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.au = zext i1 %switch113 to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14
  %i.ax = fsub float %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.az = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ay, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.ba = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ay, i16 %i.az, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i90 = fcmp oge float %i.ba, 0.000000e+00
  %i.bb = select i1 %.sink.i.inv.i90, float %i.ba, float 0.000000e+00
  %i.bc = fsub float %i.ax, %i.bb
  %i.bd = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.be = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.bd, float noundef %i.c) ; 2 uses
  %.inv.i92 = fcmp ord float %i.be, 0.000000e+00
  %i.bf = select i1 %.inv.i92, float %i.be, float 0.000000e+00
  %i.bg = fsub float %i.bc, %i.bf
  %i.bh = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.bi = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.bh, float noundef %i.c) ; 2 uses
  %.inv.i94 = fcmp ord float %i.bi, 0.000000e+00
  %i.bj = select i1 %.inv.i94, float %i.bi, float 0.000000e+00
  %i.bk = fsub float %i.bg, %i.bj                 ; 2 uses
  switch i8 %4, label %default.unreachable108 [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97
    i8 1, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %switch.lookup120
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97

bb.m:                                             ; preds = %switch.lookup120
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97

default.unreachable108:                           ; preds = %switch.lookup120
  unreachable

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97: ; preds = %switch.lookup120, %bb.l, %bb.m
  %.0.i96 = phi i32 [ 2, %bb.m ], [ 1, %switch.lookup120 ], [ 0, %bb.l ]
  %.not74 = icmp eq i32 %.0.i.i, %.0.i96
  br i1 %.not74, label %switch.lookup124, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100

_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100: ; preds = %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97, %switch.lookup120
  %.0.i.i98 = phi i64 [ 1, %switch.lookup120 ], [ %i.au, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.0.i.i98
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !14
  %i.bn = load float, ptr %i.av, align 4, !tbaa !14
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = fsub float %i.bo, %i.bk
  br label %switch.lookup124

switch.lookup124:                                 ; preds = %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97
  %i.bq = phi float [ %i.bp, %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100 ], [ %i.bk, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97 ]
  %i.br = zext nneg i8 %4 to i64
  %switch.gep125 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.br
  %switch.load126 = load i8, ptr %switch.gep125, align 1
  %switch.ext127 = zext i8 %switch.load126 to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %2, float noundef %i.bq, i32 noundef %switch.ext127)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.n:                                             ; preds = %bb.i, %bb.h
  br i1 %5, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
end_hunk_0
