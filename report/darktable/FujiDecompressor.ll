Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  store i32 %i.hc, ptr %i.mz, align 8, !tbaa !261
  %i.na = getelementptr inbounds nuw i8, ptr %i.hd, i64 308
  store i32 1, ptr %i.na, align 4, !tbaa !262
  %i.nb = getelementptr inbounds nuw i8, ptr %i.he, i64 304
  store i32 %i.hc, ptr %i.nb, align 8, !tbaa !261
  %i.nc = getelementptr inbounds nuw i8, ptr %i.he, i64 308
  store i32 1, ptr %i.nc, align 4, !tbaa !262
  %i.nd = getelementptr inbounds nuw i8, ptr %i.hd, i64 312
  store i32 %i.hc, ptr %i.nd, align 8, !tbaa !261
  %i.ne = getelementptr inbounds nuw i8, ptr %i.hd, i64 316
  store i32 1, ptr %i.ne, align 4, !tbaa !262
  %i.nf = getelementptr inbounds nuw i8, ptr %i.he, i64 312
  store i32 %i.hc, ptr %i.nf, align 8, !tbaa !261
  %i.ng = getelementptr inbounds nuw i8, ptr %i.he, i64 316
  store i32 1, ptr %i.ng, align 4, !tbaa !262
  %i.nh = getelementptr inbounds nuw i8, ptr %i.hd, i64 320
  store i32 %i.hc, ptr %i.nh, align 8, !tbaa !261
  %i.ni = getelementptr inbounds nuw i8, ptr %i.hd, i64 324
  store i32 1, ptr %i.ni, align 4, !tbaa !262
  %i.nj = getelementptr inbounds nuw i8, ptr %i.he, i64 320
  store i32 %i.hc, ptr %i.nj, align 8, !tbaa !261
  %i.nk = getelementptr inbounds nuw i8, ptr %i.he, i64 324
  store i32 1, ptr %i.nk, align 4, !tbaa !262
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 3
  br i1 %exitcond.not.i.i.i, label %bb.q, label %.preheader.i.i.i, !llvm.loop !180

bb.q:                                             ; preds = %.preheader.i.i.i
  %indvars110.i.i = trunc nuw nsw i64 %indvars.iv.i.i9 to i32 ; 7 uses
  %i.nl = icmp sgt i32 %.sroa.24.0.copyload.i.i, -1
  call void @llvm.assume(i1 %i.nl)
  %i.nm = icmp samesign ult i32 %.sroa.24.0.copyload.i.i, 4
  br i1 %i.nm, label %.invoke.i.i12, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.i.i

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.i.i: ; preds = %bb.q
  %i.nn = load i8, ptr %i.dq, align 8, !tbaa !233, !range !263, !noundef !250
  %i.no = trunc nuw i8 %i.nn to i1
  store i64 0, ptr %i.eq, align 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.644.0..sroa_idx.i.i, align 8
  store i32 %.sroa.24.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  store i32 0, ptr %.sroa.845.0..sroa_idx.i.i, align 8
  br i1 %i.no, label %_ZN8rawspeed8OptionalINS_14BitStreamerMSBEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.i.i
  store i8 1, ptr %i.dq, align 8, !tbaa !233
  br label %_ZN8rawspeed8OptionalINS_14BitStreamerMSBEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit.i.i

_ZN8rawspeed8OptionalINS_14BitStreamerMSBEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit.i.i: ; preds = %bb.r, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.i.i
  %i.np = load ptr, ptr %i.dp, align 8, !tbaa !249, !nonnull !250, !align !251
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 64
  %i.nr = load i16, ptr %i.nq, align 8, !tbaa !212
  %i.ns = zext i16 %i.nr to i64
  %i.nt = shl nuw nsw i64 %i.ns, 2
  %i.nu = add nuw nsw i64 %i.nt, 8                ; 3 uses
  %i.nv = getelementptr i8, ptr %i.ex, i64 16     ; 7 uses
  %.val41.val73.i.i.i = load i16, ptr %i.nv, align 4, !tbaa !116
  %.not75.i.i.i = icmp eq i16 %.val41.val73.i.i.i, 0
  br i1 %.not75.i.i.i, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_stripERKNS0_9FujiStripE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8rawspeed8OptionalINS_14BitStreamerMSBEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit.i.i
  %i.nw = add nuw nsw i64 %indvars.iv.i.i9, 1
  %i.nx = add nuw nsw i32 %indvars110.i.i, 1      ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 5 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ex, i64 10 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader50.preheader.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i20.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i21.i.i, %.preheader50.preheader.i.i.i ] ; 7 uses
  %i.oa = load ptr, ptr %i.do, align 8, !tbaa !264, !nonnull !250, !align !255
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 3
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !118
  %i.od = icmp eq i8 %i.oc, 16
  %i.oe = load ptr, ptr %i.dp, align 8, !tbaa !249, !nonnull !250, !align !251 ; 10 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 64
  %i.og = load i16, ptr %i.of, align 8, !tbaa !212 ; 2 uses
  %i.oh = and i16 %i.og, 1
  %i.oi = icmp eq i16 %i.oh, 0
  call void @llvm.assume(i1 %i.oi)
  %i.oj = lshr exact i16 %i.og, 1
  %i.ok = zext nneg i16 %i.oj to i32              ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 40 ; 12 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 44 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.oe, i64 52 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oe, i64 56 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oe, i64 48 ; 4 uses
  %i.oq = add nuw nsw i32 %i.ok, 3                ; 2 uses
  br i1 %i.od, label %bb.t, label %bb.cb

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 33620224, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false), !tbaa !94
  br label %switch.lookup

switch.lookup:                                    ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i, %bb.t
  %.017.i97.i.i.i.i = phi i32 [ 0, %bb.t ], [ %i.atr, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i ] ; 8 uses
  %i.or = shl nuw nsw i32 %.017.i97.i.i.i.i, 1
  %i.os = and i32 %i.or, 2
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 %i.ot ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 2, !tbaa !120 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !120 ; 3 uses
  %i.oy = zext nneg i8 %i.ov to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8rawspeed16FujiDecompressor10decompressEv.30, i64 %i.oy
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.oz = zext nneg i8 %i.ov to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.oz ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !94 ; 2 uses
  %i.pc = add nsw i32 %i.pb, %switch.ext          ; 2 uses
  %i.pd = add nsw i32 %i.pb, 1
  store i32 %i.pd, ptr %i.pa, align 4, !tbaa !94
  %i.pe = zext nneg i8 %i.ox to i64
  %switch.gep232 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8rawspeed16FujiDecompressor10decompressEv.30, i64 %i.pe
  %switch.load233 = load i8, ptr %switch.gep232, align 1
  %switch.ext234 = zext i8 %switch.load233 to i32
  %i.pf = zext nneg i8 %i.ox to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.pf ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !94 ; 2 uses
  %i.pi = add nsw i32 %i.ph, %switch.ext234       ; 2 uses
  %i.pj = add nsw i32 %i.ph, 1
  store i32 %i.pj, ptr %i.pg, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false), !tbaa !94
  %i.pk = urem i32 %.017.i97.i.i.i.i, 3
  %i.pl = zext nneg i32 %i.pk to i64              ; 2 uses
  %i.pm = getelementptr inbounds nuw [328 x i8], ptr %i.eo, i64 %i.pl ; 2 uses
  %i.pn = add nsw i32 %.017.i97.i.i.i.i, -1
  %or.cond4.i.i.i.i.i.i = icmp ult i32 %i.pn, 2
  %i.po = icmp eq i32 %.017.i97.i.i.i.i, 5
  %i.pp = getelementptr inbounds nuw [328 x i8], ptr %i.ep, i64 %i.pl ; 2 uses
  %i.pq = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 5 uses
  %i.pr = icmp sgt i32 %i.pq, -1                  ; 2 uses
  %i.ps = load i32, ptr %i.ej, align 4            ; 10 uses
  %i.pt = icmp sgt i32 %i.ps, -1
  %i.pu = load i32, ptr %i.ek, align 8            ; 28 uses
  %i.pv = load i32, ptr %i.ei, align 8            ; 6 uses
  %i.pw = icmp sge i32 %i.pv, %i.ps               ; 2 uses
  %i.px = mul nuw nsw i32 %i.pv, %i.pu
  %i.py = icmp eq i32 %i.pq, %i.px                ; 2 uses
  %.sroa.0.0.copyload.i.i39.i.i.i.i.i = load ptr, ptr %i.eb, align 8 ; 46 uses
  %i.pz = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8 ; 8 uses
  %i.qa = icmp sgt i32 %i.pz, 3
  %i.qb = add nuw nsw i32 %i.pz, 8                ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.i.i.i.i.i, %switch.lookup
  %.0151.i.i.i.i.i = phi i32 [ 0, %switch.lookup ], [ %i.agd, %.loopexit.i.i.i.i.i ] ; 5 uses
  %i.qc = icmp samesign ult i32 %.0151.i.i.i.i.i, %i.ok
  br i1 %i.qc, label %.preheader140.i.i.i.i.i, label %.loopexit141.i.i.i.i.i

.preheader140.i.i.i.i.i:                          ; preds = %bb.u
  %i.qd = and i32 %.0151.i.i.i.i.i, 1
  %.not48.i.i.i.i.i.i = icmp eq i32 %i.qd, 0      ; 4 uses
  %or.cond106.v.i.i.i.i.i.i = select i1 %.not48.i.i.i.i.i.i, i32 5, i32 3
  %or.cond106.i.i.i.i.i.i = icmp eq i32 %.017.i97.i.i.i.i, %or.cond106.v.i.i.i.i.i.i
  %brmerge.i.i.i.i.i = or i1 %or.cond4.i.i.i.i.i.i, %or.cond106.i.i.i.i.i.i
  %i.qe = load i32, ptr %i.ej, align 4            ; 7 uses
  %i.qf = load i32, ptr %i.ek, align 8            ; 5 uses
  %i.qg = load i32, ptr %i.ei, align 8            ; 6 uses
  %i.qh = icmp sge i32 %i.qg, %i.qe               ; 3 uses
  %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8 ; 5 uses
  %i.qi = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8 ; 8 uses
  %i.qj = icmp sgt i32 %i.qi, 3
  %i.qk = add nuw nsw i32 %i.qi, 8                ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %.preheader140.i.i.i.i.i
  %i.ql = phi i1 [ true, %.preheader140.i.i.i.i.i ], [ false, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %.not30.i.i.i.i.i = phi i1 [ false, %.preheader140.i.i.i.i.i ], [ true, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %indvars.iv.i.sroa.phi.i.i.i.i = phi ptr [ %4, %.preheader140.i.i.i.i.i ], [ %indvars.iv159.i.sroa.gep73.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ] ; 2 uses
  %indvars.iv.i.sroa.phi78.sroa.speculated.in.i.i.i.i = phi i32 [ %i.pc, %.preheader140.i.i.i.i.i ], [ %i.pi, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ] ; 2 uses
  %i.qm = load i32, ptr %indvars.iv.i.sroa.phi.i.i.i.i, align 4, !tbaa !94 ; 3 uses
  br i1 %i.ql, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  switch i32 %.017.i97.i.i.i.i, label %unreachable.i.i.i.i.i.i [
    i32 0, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i
    i32 2, label %bb.x
    i32 4, label %bb.y
    i32 5, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i
    i32 1, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
    i32 3, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
  ]

bb.x:                                             ; preds = %bb.w
  br i1 %.not48.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  br i1 %.not48.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.v
  br i1 %brmerge.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i, label %bb.aa

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.w
  %i.qn = and i32 %indvars.iv.i.sroa.phi78.sroa.speculated.in.i.i.i.i, 255 ; 3 uses
  %i.qo = add nsw i32 %i.qn, -1                   ; 2 uses
  %i.qp = shl nsw i32 %i.qm, 1                    ; 4 uses
  %i.qq = or disjoint i32 %i.qp, 1                ; 2 uses
  call void @llvm.assume(i1 %i.qh)
  %i.qr = icmp samesign ult i32 %i.qq, %i.qe
  call void @llvm.assume(i1 %i.qr)
  %i.qs = icmp samesign ult i32 %i.qo, %i.qf
  call void @llvm.assume(i1 %i.qs)
  %i.qt = mul nuw nsw i32 %i.qo, %i.qg
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.qu ; 3 uses
  %i.qw = zext nneg i32 %i.qq to i64              ; 3 uses
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.qw
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !92
  %i.qz = zext i16 %i.qy to i32                   ; 4 uses
  %i.ra = icmp samesign ule i32 %i.qp, %i.qe
  call void @llvm.assume(i1 %i.ra)
  %i.rb = zext nneg i32 %i.qp to i64
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.rb
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !92
  %i.re = zext i16 %i.rd to i32                   ; 2 uses
  %i.rf = add nuw nsw i32 %i.qp, 2                ; 2 uses
  %i.rg = icmp samesign ult i32 %i.rf, %i.qe
  call void @llvm.assume(i1 %i.rg)
  %i.rh = zext nneg i32 %i.rf to i64
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.rh
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !92
  %i.rk = zext i16 %i.rj to i32                   ; 3 uses
  %i.rl = add nsw i32 %i.qn, -2                   ; 2 uses
  %i.rm = icmp samesign ult i32 %i.rl, %i.qf
  call void @llvm.assume(i1 %i.rm)
  %i.rn = mul nuw nsw i32 %i.rl, %i.qg
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.ro
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %i.qw
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !92
  %i.rs = zext i16 %i.rr to i32                   ; 2 uses
  %i.rt = sub nsw i32 %i.re, %i.qz
  %i.ru = call i32 @llvm.abs.i32(i32 %i.rt, i1 true) ; 2 uses
  %i.rv = sub nsw i32 %i.rs, %i.qz
  %i.rw = call i32 @llvm.abs.i32(i32 %i.rv, i1 true) ; 2 uses
  %i.rx = sub nsw i32 %i.rk, %i.qz
  %i.ry = call i32 @llvm.abs.i32(i32 %i.rx, i1 true) ; 2 uses
  %.sroa.speculated45.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.rw, i32 %i.ry)
  %i.rz = icmp samesign ugt i32 %i.ru, %.sroa.speculated45.i.i.i.i.i.i ; 2 uses
  %.sroa.speculated51.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.ru, i32 %i.rw)
  %i.sa = icmp samesign ugt i32 %i.ry, %.sroa.speculated51.i.i.i.i.i.i
  %i.sb = select i1 %i.rz, i1 true, i1 %i.sa
  %.1.i67.i.i.i.i.i.i = select i1 %i.sb, i32 %i.rs, i32 %i.rk
  %.0.i68.i.i.i.i.i.i = select i1 %i.rz, i32 %i.rk, i32 %i.re
  %i.sc = shl nuw nsw i32 %i.qz, 1
  %i.sd = add nuw nsw i32 %.0.i68.i.i.i.i.i.i, %i.sc
  %i.se = add nuw nsw i32 %i.sd, %.1.i67.i.i.i.i.i.i
  %i.sf = lshr i32 %i.se, 2
  br label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i"

unreachable.i.i.i.i.i.i:                          ; preds = %bb.w
  unreachable

bb.aa:                                            ; preds = %bb.z
  switch i32 %.017.i97.i.i.i.i, label %.unreachabledefault.i.i.i.i.i.i [
    i32 0, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
    i32 3, label %bb.ab
    i32 4, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
    i32 5, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not48.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i, label %bb.ac

.unreachabledefault.i.i.i.i.i.i:                  ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.assume(i1 %i.po)
  br label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.w
  %i.sg = and i32 %indvars.iv.i.sroa.phi78.sroa.speculated.in.i.i.i.i, 255 ; 4 uses
  %i.sh = add nsw i32 %i.sg, -1                   ; 2 uses
  %i.si = shl nsw i32 %i.qm, 1                    ; 4 uses
  %i.sj = or disjoint i32 %i.si, 1                ; 2 uses
  call void @llvm.assume(i1 %i.qh)
  %i.sk = icmp samesign ult i32 %i.sj, %i.qe
  call void @llvm.assume(i1 %i.sk)
  %i.sl = icmp samesign ult i32 %i.sh, %i.qf
  call void @llvm.assume(i1 %i.sl)
  %i.sm = mul nuw nsw i32 %i.sh, %i.qg
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.sn ; 3 uses
  %i.sp = zext nneg i32 %i.sj to i64              ; 4 uses
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %i.sp
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !92
  %i.ss = zext i16 %i.sr to i32                   ; 5 uses
  %i.st = icmp samesign ule i32 %i.si, %i.qe
  call void @llvm.assume(i1 %i.st)
  %i.su = zext nneg i32 %i.si to i64
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %i.su
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !92
  %i.sx = zext i16 %i.sw to i32                   ; 2 uses
  %i.sy = add nuw nsw i32 %i.si, 2                ; 2 uses
  %i.sz = icmp samesign ult i32 %i.sy, %i.qe
  call void @llvm.assume(i1 %i.sz)
  %i.ta = zext nneg i32 %i.sy to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %i.ta
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !92
  %i.td = zext i16 %i.tc to i32                   ; 3 uses
  %i.te = add nsw i32 %i.sg, -2                   ; 2 uses
  %i.tf = icmp samesign ult i32 %i.te, %i.qf
  call void @llvm.assume(i1 %i.tf)
  %i.tg = mul nuw nsw i32 %i.te, %i.qg
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.th
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.ti, i64 %i.sp
  %i.tk = load i16, ptr %i.tj, align 2, !tbaa !92
  %i.tl = zext i16 %i.tk to i32                   ; 3 uses
  %i.tm = sub nsw i32 %i.sx, %i.ss                ; 2 uses
  %i.tn = call i32 @llvm.abs.i32(i32 %i.tm, i1 true) ; 2 uses
  %i.to = sub nsw i32 %i.tl, %i.ss
  %i.tp = call i32 @llvm.abs.i32(i32 %i.to, i1 true) ; 2 uses
  %i.tq = sub nsw i32 %i.td, %i.ss
  %i.tr = call i32 @llvm.abs.i32(i32 %i.tq, i1 true) ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.tp, i32 %i.tr)
  %i.ts = icmp samesign ugt i32 %i.tn, %.sroa.speculated.i.i.i.i.i.i ; 2 uses
  %.sroa.speculated9.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.tn, i32 %i.tp)
  %i.tt = icmp samesign ugt i32 %i.tr, %.sroa.speculated9.i.i.i.i.i.i
  %i.tu = select i1 %i.ts, i1 true, i1 %i.tt
  %.1.i.i.i.i.i.i.i = select i1 %i.tu, i32 %i.tl, i32 %i.td
  %.0.i.i.i.i.i.i.i = select i1 %i.ts, i32 %i.td, i32 %i.sx
  %i.tv = shl nuw nsw i32 %i.ss, 1
  %i.tw = add nuw nsw i32 %.0.i.i.i.i.i.i.i, %i.tv
  %i.tx = add nuw nsw i32 %i.tw, %.1.i.i.i.i.i.i.i
  %i.ty = lshr i32 %i.tx, 2
  %i.tz = sub nsw i32 %i.ss, %i.tl
  %i.ua = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.ub = add nsw i32 %i.tz, %i.ua
  %.val72.i.i.i.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !136 ; 2 uses
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %.val72.i.i.i.i.i.i, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !93
  %i.uf = sext i8 %i.ue to i32
  %i.ug = mul nsw i32 %i.uf, 9
  %i.uh = add nsw i32 %i.ua, %i.tm
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr %.val72.i.i.i.i.i.i, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !93
  %i.ul = sext i8 %i.uk to i32
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i = add nsw i32 %i.ug, %i.ul ; 2 uses
  %i.um = call i32 @llvm.abs.i32(i32 %.sroa.01.0.extract.trunc.i.i.i.i.i.i, i1 true) ; 2 uses
  call void @llvm.assume(i1 %i.qj)
  %.promoted.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.i.i.i.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  %.promoted17.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
  %i.un = phi i64 [ %.promoted17.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.uo = phi i32 [ %.promoted16.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vl, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.up = phi i32 [ %.promoted.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.014.i.i.i.i.i.i.i = phi i32 [ 0, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vq, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ]
  %i.uq = icmp samesign ult i32 %i.up, 65
  call void @llvm.assume(i1 %i.uq)
  %.not.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.up, 32
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %i.ur = add nuw nsw i32 %i.uo, 4                ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %i.ur, %i.qi
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af, !prof !134

bb.af:                                            ; preds = %bb.ae
  %i.us = zext nneg i32 %i.uo to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.us
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.uu = icmp samesign ugt i32 %i.uo, %i.qk
  br i1 %i.uu, label %.invoke.i.i12, label %bb.ah, !prof !134

.invoke.i.i12:                                    ; preds = %bb.cn, %bb.di, %bb.am, %bb.bh, %bb.ch, %bb.dc, %bb.ag, %bb.bb, %bb.q
  %i.uv = phi ptr [ @.str.20, %bb.q ], [ @.str.23, %bb.di ], [ @.str.23, %bb.ch ], [ @.str.23, %bb.bh ], [ @.str.23, %bb.dc ], [ @.str.23, %bb.ag ], [ @.str.23, %bb.am ], [ @.str.23, %bb.bb ], [ @.str.23, %bb.cn ]
  %i.uw = phi ptr [ @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE, %bb.q ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.di ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.ch ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.bh ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.dc ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.ag ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.am ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.bb ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.cn ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.uv, ptr noundef nonnull %i.uw) #17
          to label %.cont.i.i13 unwind label %bb.ej

.cont.i.i13:                                      ; preds = %.invoke.i.i12
  unreachable

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.uo) ; 3 uses
  %i.ux = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.ux)
  %i.uy = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.uz = icmp samesign ult i32 %i.uy, 5
  call void @llvm.assume(i1 %i.uz)
  %i.va = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.va
  %i.vc = zext nneg i32 %i.uy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i.i.i.i, ptr align 1 %i.vb, i64 %i.vc, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %i.ut, %bb.af ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %i.vd = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i.i)
  %i.ve = zext i32 %i.vd to i64
  %i.vf = or disjoint i32 %i.up, 32
  %i.vg = sub nuw nsw i32 32, %i.up
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = shl nuw i64 %i.ve, %i.vh
  %i.vj = or i64 %i.vi, %i.un
  store i32 %i.ur, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i, %bb.ad
  %i.vk = phi i64 [ %i.un, %bb.ad ], [ %i.vj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.vl = phi i32 [ %i.uo, %bb.ad ], [ %i.ur, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.vm = phi i32 [ %i.up, %bb.ad ], [ %i.vf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ]
  %i.vn = lshr i64 %i.vk, 32                      ; 2 uses
  %i.vo = trunc nuw i64 %i.vn to i32
  %i.vp = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vo, i1 false) ; 2 uses
  %i.vq = add nuw nsw i32 %i.vp, %.014.i.i.i.i.i.i.i ; 3 uses
  %i.vr = icmp eq i64 %i.vn, 0                    ; 2 uses
  %i.vs = add nuw nsw i32 %i.vp, 1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.vr, i32 32, i32 %i.vs ; 3 uses
  %i.vt = icmp samesign ult i32 %spec.select.i.i.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.vt)
  %i.vu = sub nuw nsw i32 %i.vm, %spec.select.i.i.i.i.i.i.i ; 6 uses
  store i32 %i.vu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.vv = zext nneg i32 %spec.select.i.i.i.i.i.i.i to i64
  %i.vw = shl i64 %i.vk, %i.vv                    ; 4 uses
  store i64 %i.vw, ptr %i.eq, align 8, !tbaa !270
  br i1 %i.vr, label %bb.ad, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i
  %i.vx = load i32, ptr %i.om, align 4, !tbaa !218
  %i.vy = load i32, ptr %i.on, align 4, !tbaa !217 ; 2 uses
  %i.vz = xor i32 %i.vy, -1
  %i.wa = add i32 %i.vx, %i.vz
  %i.wb = icmp slt i32 %i.vq, %i.wa
  br i1 %i.wb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i
  %i.wc = zext nneg i32 %i.um to i64
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.wc ; 2 uses
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !261 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !262 ; 3 uses
  %i.wh = icmp sgt i32 %i.we, -1
  call void @llvm.assume(i1 %i.wh)
  %i.wi = icmp sgt i32 %i.wg, 0
  call void @llvm.assume(i1 %i.wi)
  %i.wj = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.we, i1 false)
  %i.wk = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.wg, i1 true)
  %i.wl = sub nsw i32 %i.wk, %i.wj
  %.sroa.speculated11.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.wl, i32 0) ; 2 uses
  %i.wm = shl i32 %i.wg, %.sroa.speculated11.i.i.i.i.i.i.i
  %i.wn = icmp slt i32 %i.wm, %i.we
  %i.wo = zext i1 %i.wn to i32
  %spec.select.i100.i.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i.i.i.i.i, %i.wo
  %.sroa.speculated.i.i.i.i.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i100.i.i.i.i.i.i, i32 15) ; 2 uses
  %i.wp = shl i32 %i.vq, %.sroa.speculated.i.i.i.i.i.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i
  %.033.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.i.i.i.i.i.i.i, %bb.ai ], [ %i.vy, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i ] ; 5 uses
  %.032.i.i.i.i.i.i.i = phi i32 [ %i.wp, %bb.ai ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i ]
  %i.wq = icmp sgt i32 %i.vl, -1
  call void @llvm.assume(i1 %i.wq)
  %.not.i101.i.i.i.i.i.i = icmp samesign ult i32 %i.vu, 32
  br i1 %.not.i101.i.i.i.i.i.i, label %bb.ak, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  %i.wr = add nuw nsw i32 %i.vl, 4                ; 2 uses
  %.not.i.i102.i.i.i.i.i.i = icmp samesign ugt i32 %i.wr, %i.qi
  br i1 %.not.i.i102.i.i.i.i.i.i, label %bb.am, label %bb.al, !prof !134

bb.al:                                            ; preds = %bb.ak
  %i.ws = zext nneg i32 %i.vl to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.ws
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.wu = icmp samesign ugt i32 %i.vl, %i.qk
  br i1 %i.wu, label %.invoke.i.i12, label %bb.an, !prof !134

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.vl) ; 3 uses
  %i.wv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.wv)
  %i.ww = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wx = icmp samesign ult i32 %i.ww, 5
  call void @llvm.assume(i1 %i.wx)
  %i.wy = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i to i64
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.wy
  %i.xa = zext nneg i32 %i.ww to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i.i.i, ptr align 1 %i.wz, i64 %i.xa, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.al
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i.i, %bb.an ], [ %i.wt, %bb.al ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  %i.xb = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i)
  %i.xc = zext i32 %i.xb to i64
  %i.xd = or disjoint i32 %i.vu, 32               ; 2 uses
  %i.xe = sub nuw nsw i32 32, %i.vu
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = shl nuw i64 %i.xc, %i.xf
  %i.xh = or i64 %i.xg, %i.vw                     ; 2 uses
  store i64 %i.xh, ptr %i.eq, align 8, !tbaa !270
  store i32 %i.xd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.wr, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i, %bb.aj
  %i.xi = phi i64 [ %i.vw, %bb.aj ], [ %i.xh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.xj = phi i32 [ %i.vu, %bb.aj ], [ %i.xd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i ]
  %.not.i.i.i10.i.i.i.i = icmp eq i32 %.033.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i10.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i
  %i.xk = icmp samesign ult i32 %.033.i.i.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.xk)
  %i.xl = sub nuw nsw i32 64, %.033.i.i.i.i.i.i.i
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = lshr i64 %i.xi, %i.xm
  %i.xo = trunc nuw i64 %i.xn to i32
  %i.xp = sub nuw nsw i32 %i.xj, %.033.i.i.i.i.i.i.i
  store i32 %i.xp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.xq = zext nneg i32 %.033.i.i.i.i.i.i.i to i64
  %i.xr = shl i64 %i.xi, %i.xq
  store i64 %i.xr, ptr %i.eq, align 8, !tbaa !270
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i
  %.0.i70.i.i.i.i.i.i = phi i32 [ %i.xo, %bb.ao ], [ 0, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i ]
  %i.xs = add nsw i32 %.0.i70.i.i.i.i.i.i, %.032.i.i.i.i.i.i.i ; 4 uses
  %i.xt = icmp slt i32 %i.xs, 0
  br i1 %i.xt, label %.invoke191.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.xu = load i32, ptr %i.oo, align 8, !tbaa !216 ; 3 uses
  %.not39.i.i.i.i.i.i.i = icmp slt i32 %i.xs, %i.xu
  br i1 %.not39.i.i.i.i.i.i.i, label %bb.ar, label %.invoke191.i.i

.invoke191.i.i:                                   ; preds = %bb.cr, %bb.cq, %bb.dm, %bb.dl, %bb.aq, %bb.ap, %bb.bl, %bb.bk
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE) #17
          to label %.cont192.i.i unwind label %bb.ej

.cont192.i.i:                                     ; preds = %.invoke191.i.i
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.xv = lshr i32 %i.xs, 1
  %i.xw = and i32 %i.xs, 1
  %sext.i.i.i.i.i.i = sub nsw i32 0, %i.xw
  %.1.i71.i.i.i.i.i.i = xor i32 %i.xv, %sext.i.i.i.i.i.i ; 3 uses
  %i.xx = call i32 @llvm.abs.i32(i32 %.1.i71.i.i.i.i.i.i, i1 true)
  %i.xy = zext nneg i32 %i.um to i64
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.xy ; 4 uses
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !261
  %i.yb = add nsw i32 %i.ya, %i.xx                ; 2 uses
  store i32 %i.yb, ptr %i.xz, align 8, !tbaa !261
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 4 ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !262 ; 3 uses
  %i.ye = load i32, ptr %i.op, align 8, !tbaa !213
  %i.yf = icmp eq i32 %i.yd, %i.ye
  br i1 %i.yf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.yg = ashr i32 %i.yb, 1
  store i32 %i.yg, ptr %i.xz, align 8, !tbaa !261
  %i.yh = ashr i32 %i.yd, 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.yi = phi i32 [ %i.yh, %bb.as ], [ %i.yd, %bb.ar ]
  %i.yj = add nsw i32 %i.yi, 1
  store i32 %i.yj, ptr %i.yc, align 4, !tbaa !262
  %i.yk = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i.i.i, 0
  %i.yl = sub nsw i32 0, %.1.i71.i.i.i.i.i.i
  %storemerge.i.p.i.i.i.i.i.i = select i1 %i.yk, i32 %i.yl, i32 %.1.i71.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = add i32 %storemerge.i.p.i.i.i.i.i.i, %i.ty ; 5 uses
  %i.ym = icmp slt i32 %storemerge.i.i.i.i.i.i.i, 0
  br i1 %i.ym, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.yn = add nsw i32 %i.xu, %storemerge.i.i.i.i.i.i.i
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.yo = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.yp = icmp sgt i32 %storemerge.i.i.i.i.i.i.i, %i.yo
  br i1 %i.yp, label %bb.aw, label %.thread102.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.yq = sub nsw i32 %storemerge.i.i.i.i.i.i.i, %i.xu
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.096.i.i.i.i.i.i = phi i32 [ %i.yn, %bb.au ], [ %i.yq, %bb.aw ] ; 2 uses
  %i.yr = icmp slt i32 %.096.i.i.i.i.i.i, 0
  br i1 %i.yr, label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", label %..thread102_crit_edge.i.i.i.i.i.i

..thread102_crit_edge.i.i.i.i.i.i:                ; preds = %bb.ax
  %.pre.i.i.i.i.i.i = load i32, ptr %i.ol, align 8, !tbaa !94
  br label %.thread102.i.i.i.i.i.i

.thread102.i.i.i.i.i.i:                           ; preds = %..thread102_crit_edge.i.i.i.i.i.i, %bb.av
  %i.ys = phi i32 [ %.pre.i.i.i.i.i.i, %..thread102_crit_edge.i.i.i.i.i.i ], [ %i.yo, %bb.av ]
  %.096104.i.i.i.i.i.i = phi i32 [ %.096.i.i.i.i.i.i, %..thread102_crit_edge.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %bb.av ]
  %.sroa.speculated89.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.ys, i32 %.096104.i.i.i.i.i.i)
  br label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i"

"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i": ; preds = %.thread102.i.i.i.i.i.i, %bb.ax, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i
  %.pre-phi170.i.i.i.i.i = phi i64 [ %i.sp, %.thread102.i.i.i.i.i.i ], [ %i.sp, %bb.ax ], [ %i.qw, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i ]
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.sg, %.thread102.i.i.i.i.i.i ], [ %i.sg, %bb.ax ], [ %i.qn, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i ] ; 2 uses
  %.0.i37.i.i.i.i.i = phi i32 [ %.sroa.speculated89.i.i.i.i.i.i, %.thread102.i.i.i.i.i.i ], [ 0, %bb.ax ], [ %i.sf, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i ]
  %i.yt = trunc i32 %.0.i37.i.i.i.i.i to i16
  call void @llvm.assume(i1 %i.qh)
  %i.yu = icmp samesign ugt i32 %i.qf, %.pre-phi.i.i.i.i.i
  call void @llvm.assume(i1 %i.yu)
  %i.yv = mul nuw nsw i32 %.pre-phi.i.i.i.i.i, %i.qg
  %i.yw = zext nneg i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.yw
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %i.yx, i64 %.pre-phi170.i.i.i.i.i
  store i16 %i.yt, ptr %i.yy, align 2, !tbaa !92
  %i.yz = add nsw i32 %i.qm, 1
  store i32 %i.yz, ptr %indvars.iv.i.sroa.phi.i.i.i.i, align 4, !tbaa !94
  br i1 %.not30.i.i.i.i.i, label %.loopexit141.i.i.i.i.i, label %bb.v, !llvm.loop !181

.loopexit141.i.i.i.i.i:                           ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %bb.u
  %i.za = icmp samesign ugt i32 %.0151.i.i.i.i.i, 3
  br i1 %i.za, label %.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.loopexit141.i.i.i.i.i
  call void @llvm.assume(i1 %i.pr)
  call void @llvm.assume(i1 %i.pt)
  call void @llvm.assume(i1 %i.pw)
  call void @llvm.assume(i1 %i.py)
  %.val35.i.i.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !136 ; 2 uses
  call void @llvm.assume(i1 %i.qa)
  %.promoted.i.pre.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.pre.i.i.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269 ; 2 uses
  br label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i: ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.zb = phi i32 [ %.promoted16.i.pre.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.aem, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %i.zc = phi i32 [ %.promoted16.i.pre.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.aey, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ] ; 2 uses
  %.promoted.i.i.i.i.i.i = phi i32 [ %.promoted.i.pre.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.promoted.i163.i.i.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %.not31.i.i.i.i.i = phi i1 [ false, %.preheader.i.i.i.i.i ], [ true, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %indvars.iv159.i.sroa.phi.i.i.i.i = phi ptr [ %4, %.preheader.i.i.i.i.i ], [ %indvars.iv159.i.sroa.gep73.i.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %indvars.iv159.i.sroa.phi75.sroa.speculated.i.i.i.i = phi i32 [ %i.pc, %.preheader.i.i.i.i.i ], [ %i.pi, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %i.zd = getelementptr inbounds nuw i8, ptr %indvars.iv159.i.sroa.phi.i.i.i.i, i64 4 ; 2 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !94 ; 2 uses
  %i.zf = and i32 %indvars.iv159.i.sroa.phi75.sroa.speculated.i.i.i.i, 255 ; 3 uses
  %i.zg = shl nsw i32 %i.ze, 1                    ; 3 uses
  %i.zh = or disjoint i32 %i.zg, 1                ; 2 uses
  %i.zi = icmp samesign ult i32 %i.zh, %i.ps
  call void @llvm.assume(i1 %i.zi)
  %i.zj = icmp samesign ugt i32 %i.pu, %i.zf
  call void @llvm.assume(i1 %i.zj)
  %i.zk = mul nuw nsw i32 %i.zf, %i.pv            ; 2 uses
  %i.zl = add nuw nsw i32 %i.zk, %i.ps
  %i.zm = icmp samesign ule i32 %i.zl, %i.pq
  call void @llvm.assume(i1 %i.zm)
  %i.zn = zext nneg i32 %i.zk to i64
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.zn ; 3 uses
  %i.zp = zext nneg i32 %i.zh to i64              ; 2 uses
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.zo, i64 %i.zp
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !92
  %i.zs = zext i16 %i.zr to i32                   ; 2 uses
  %i.zt = add nsw i32 %i.zf, -1                   ; 2 uses
  %i.zu = add nsw i32 %i.zg, 2                    ; 2 uses
  %i.zv = icmp samesign ult i32 %i.zu, %i.ps
  call void @llvm.assume(i1 %i.zv)
  %i.zw = icmp samesign ult i32 %i.zt, %i.pu
  call void @llvm.assume(i1 %i.zw)
  %i.zx = mul nuw nsw i32 %i.zt, %i.pv            ; 2 uses
  %i.zy = add nuw nsw i32 %i.zx, %i.ps
  %i.zz = icmp samesign ule i32 %i.zy, %i.pq
  call void @llvm.assume(i1 %i.zz)
  %i.aaa = zext nneg i32 %i.zx to i64
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.aaa ; 3 uses
  %i.aac = zext nneg i32 %i.zu to i64             ; 2 uses
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %i.aab, i64 %i.aac
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !92 ; 3 uses
  %i.aaf = zext i16 %i.aae to i32                 ; 2 uses
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.aab, i64 %i.zp
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !92 ; 3 uses
  %i.aai = zext i16 %i.aah to i32                 ; 2 uses
  %i.aaj = add nsw i32 %i.zg, 3                   ; 2 uses
  %i.aak = icmp samesign ult i32 %i.aaj, %i.ps
  call void @llvm.assume(i1 %i.aak)
  %i.aal = zext nneg i32 %i.aaj to i64            ; 2 uses
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.aab, i64 %i.aal
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !92 ; 2 uses
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %i.zo, i64 %i.aal
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !92
  %i.aaq = zext i16 %i.aap to i32
  %i.aar = add nuw nsw i32 %i.aaq, %i.zs          ; 2 uses
  %i.aas = call i16 @llvm.umin.i16(i16 %i.aan, i16 %i.aah)
  %i.aat = icmp ugt i16 %i.aas, %i.aae
  %i.aau = call i16 @llvm.umax.i16(i16 %i.aan, i16 %i.aah)
  %i.aav = icmp ult i16 %i.aau, %i.aae
  %or.cond.i.i.i.i.i.i = or i1 %i.aat, %i.aav
  %i.aaw = lshr i32 %i.aar, 1
  %i.aax = add nuw nsw i32 %i.aaw, %i.aaf
  %.0131.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i32 %i.aax, i32 %i.aar
  %i.aay = lshr i32 %.0131.i.i.i.i.i, 1
  %i.aaz = sub nsw i32 %i.aaf, %i.aai
  %i.aba = sub nsw i32 %i.aai, %i.zs
  %i.abb = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.abc = add nsw i32 %i.aaz, %i.abb
  %i.abd = sext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %.val35.i.i.i.i.i, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !93
  %i.abg = sext i8 %i.abf to i32
  %i.abh = mul nsw i32 %i.abg, 9
  %i.abi = add nsw i32 %i.aba, %i.abb
  %i.abj = sext i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw i8, ptr %.val35.i.i.i.i.i, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !93
  %i.abm = sext i8 %i.abl to i32
  %.sroa.082.0.extract.trunc.i.i.i.i.i = add nsw i32 %i.abh, %i.abm ; 2 uses
  %i.abn = call i32 @llvm.abs.i32(i32 %.sroa.082.0.extract.trunc.i.i.i.i.i, i1 true) ; 2 uses
  %.promoted17.i.i.i.i.i.i = load i64, ptr %i.eq, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i
  %i.abo = phi i32 [ %i.zb, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acl, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ]
  %i.abp = phi i32 [ %i.zc, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acm, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ]
  %i.abq = phi i64 [ %.promoted17.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acz, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ] ; 2 uses
  %i.abr = phi i32 [ %i.zc, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.aco, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ] ; 5 uses
  %i.abs = phi i32 [ %.promoted.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acx, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ] ; 5 uses
  %.014.i.i.i.i.i.i = phi i32 [ 0, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.act, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ]
  %i.abt = icmp samesign ult i32 %i.abs, 65
  call void @llvm.assume(i1 %i.abt)
  %.not.i.i55.i.i.i.i.i = icmp samesign ult i32 %i.abs, 32
  br i1 %.not.i.i55.i.i.i.i.i, label %bb.az, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i54.i.i.i.i.i)
  %i.abu = add nuw nsw i32 %i.abr, 4              ; 5 uses
  %.not.i.i.i58.i.i.i.i.i = icmp samesign ugt i32 %i.abu, %i.pz
  br i1 %.not.i.i.i58.i.i.i.i.i, label %bb.bb, label %bb.ba, !prof !134

bb.ba:                                            ; preds = %bb.az
  %i.abv = zext nneg i32 %i.abr to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.abv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.abx = icmp samesign ugt i32 %i.abr, %i.qb
  br i1 %i.abx, label %.invoke.i.i12, label %bb.bc, !prof !134

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %.sroa.0.i.i.i54.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i62.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.pz, i32 %i.abr) ; 3 uses
  %i.aby = add nuw nsw i32 %.sroa.speculated27.i.i.i.i62.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i63.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.pz, i32 %i.aby)
  %i.abz = sub nsw i32 %.sroa.speculated.i.i.i.i63.i.i.i.i.i, %.sroa.speculated27.i.i.i.i62.i.i.i.i.i ; 2 uses
  %i.aca = icmp samesign ult i32 %i.abz, 5
  call void @llvm.assume(i1 %i.aca)
  %i.acb = zext nneg i32 %.sroa.speculated27.i.i.i.i62.i.i.i.i.i to i64
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.acb
  %i.acd = zext nneg i32 %i.abz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i54.i.i.i.i.i, ptr align 1 %i.acc, i64 %i.acd, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i: ; preds = %bb.bc, %bb.ba
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i60.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i54.i.i.i.i.i, %bb.bc ], [ %i.abw, %bb.ba ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i61.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i60.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i54.i.i.i.i.i)
  %i.ace = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i61.i.i.i.i.i)
  %i.acf = zext i32 %i.ace to i64
  %i.acg = or disjoint i32 %i.abs, 32
  %i.ach = sub nuw nsw i32 32, %i.abs
  %i.aci = zext nneg i32 %i.ach to i64
  %i.acj = shl nuw i64 %i.acf, %i.aci
  %i.ack = or i64 %i.acj, %i.abq
  store i32 %i.abu, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i, %bb.ay
  %i.acl = phi i32 [ %i.abo, %bb.ay ], [ %i.abu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ] ; 2 uses
  %i.acm = phi i32 [ %i.abp, %bb.ay ], [ %i.abu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ] ; 7 uses
  %i.acn = phi i64 [ %i.abq, %bb.ay ], [ %i.ack, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ] ; 2 uses
  %i.aco = phi i32 [ %i.abr, %bb.ay ], [ %i.abu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ]
  %i.acp = phi i32 [ %i.abs, %bb.ay ], [ %i.acg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ]
  %i.acq = lshr i64 %i.acn, 32                    ; 2 uses
  %i.acr = trunc nuw i64 %i.acq to i32
  %i.acs = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acr, i1 false) ; 2 uses
  %i.act = add nuw nsw i32 %i.acs, %.014.i.i.i.i.i.i ; 3 uses
  %i.acu = icmp eq i64 %i.acq, 0                  ; 2 uses
  %i.acv = add nuw nsw i32 %i.acs, 1
  %spec.select.i57.i.i.i.i.i = select i1 %i.acu, i32 32, i32 %i.acv ; 3 uses
  %i.acw = icmp samesign ult i32 %spec.select.i57.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.acw)
  %i.acx = sub nuw nsw i32 %i.acp, %spec.select.i57.i.i.i.i.i ; 6 uses
  store i32 %i.acx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.acy = zext nneg i32 %spec.select.i57.i.i.i.i.i to i64
  %i.acz = shl i64 %i.acn, %i.acy                 ; 4 uses
  store i64 %i.acz, ptr %i.eq, align 8, !tbaa !270
  br i1 %i.acu, label %bb.ay, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i
  %i.ada = load i32, ptr %i.om, align 4, !tbaa !218
  %i.adb = load i32, ptr %i.on, align 4, !tbaa !217 ; 2 uses
  %i.adc = xor i32 %i.adb, -1
  %i.add = add i32 %i.ada, %i.adc
  %i.ade = icmp slt i32 %i.act, %i.add
  br i1 %i.ade, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i
  %i.adf = zext nneg i32 %i.abn to i64
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.adf ; 2 uses
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !261 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !262 ; 3 uses
  %i.adk = icmp sgt i32 %i.adh, -1
  call void @llvm.assume(i1 %i.adk)
  %i.adl = icmp sgt i32 %i.adj, 0
  call void @llvm.assume(i1 %i.adl)
  %i.adm = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adh, i1 false)
  %i.adn = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.adj, i1 true)
  %i.ado = sub nsw i32 %i.adn, %i.adm
  %.sroa.speculated11.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ado, i32 0) ; 2 uses
  %i.adp = shl i32 %i.adj, %.sroa.speculated11.i.i.i.i.i.i
  %i.adq = icmp slt i32 %i.adp, %i.adh
  %i.adr = zext i1 %i.adq to i32
  %spec.select.i64.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i.i.i.i, %i.adr
  %.sroa.speculated.i65.i.i.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i64.i.i.i.i.i, i32 15) ; 2 uses
  %i.ads = shl i32 %i.act, %.sroa.speculated.i65.i.i.i.i.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i
  %.033.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.i65.i.i.i.i.i, %bb.bd ], [ %i.adb, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i ] ; 5 uses
  %.032.i.i.i.i.i.i = phi i32 [ %i.ads, %bb.bd ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i ]
  %i.adt = icmp sgt i32 %i.acm, -1
  call void @llvm.assume(i1 %i.adt)
  %.not.i66.i.i.i.i.i = icmp samesign ult i32 %i.acx, 32
  br i1 %.not.i66.i.i.i.i.i, label %bb.bf, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  %i.adu = add nuw nsw i32 %i.acm, 4              ; 4 uses
  %.not.i.i67.i.i.i.i.i = icmp samesign ugt i32 %i.adu, %i.pz
  br i1 %.not.i.i67.i.i.i.i.i, label %bb.bh, label %bb.bg, !prof !134

bb.bg:                                            ; preds = %bb.bf
  %i.adv = zext nneg i32 %i.acm to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.adv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.adx = icmp samesign ugt i32 %i.acm, %i.qb
  br i1 %i.adx, label %.invoke.i.i12, label %bb.bi, !prof !134

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.pz, i32 %i.acm) ; 3 uses
  %i.ady = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.pz, i32 %i.ady)
  %i.adz = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i ; 2 uses
  %i.aea = icmp samesign ult i32 %i.adz, 5
  call void @llvm.assume(i1 %i.aea)
  %i.aeb = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i to i64
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.aeb
  %i.aed = zext nneg i32 %i.adz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i.i, ptr align 1 %i.aec, i64 %i.aed, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bg
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i, %bb.bi ], [ %i.adw, %bb.bg ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  %i.aee = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i)
  %i.aef = zext i32 %i.aee to i64
  %i.aeg = or disjoint i32 %i.acx, 32             ; 2 uses
  %i.aeh = sub nuw nsw i32 32, %i.acx
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = shl nuw i64 %i.aef, %i.aei
  %i.aek = or i64 %i.aej, %i.acz                  ; 2 uses
  store i64 %i.aek, ptr %i.eq, align 8, !tbaa !270
  store i32 %i.aeg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.adu, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i, %bb.be
  %i.ael = phi i64 [ %i.acz, %bb.be ], [ %i.aek, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.aem = phi i32 [ %i.acl, %bb.be ], [ %i.adu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i ] ; 3 uses
  %i.aen = phi i32 [ %i.acm, %bb.be ], [ %i.adu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i ]
  %i.aeo = phi i32 [ %i.acx, %bb.be ], [ %i.aeg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i30.i.i = icmp eq i32 %.033.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i30.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i
  %i.aep = icmp sgt i32 %i.aem, -1
  call void @llvm.assume(i1 %i.aep)
  %i.aeq = icmp samesign ult i32 %.033.i.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.aeq)
  %i.aer = sub nuw nsw i32 64, %.033.i.i.i.i.i.i
  %i.aes = zext nneg i32 %i.aer to i64
  %i.aet = lshr i64 %i.ael, %i.aes
  %i.aeu = trunc nuw i64 %i.aet to i32
  %i.aev = sub nuw nsw i32 %i.aeo, %.033.i.i.i.i.i.i ; 2 uses
  store i32 %i.aev, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.aew = zext nneg i32 %.033.i.i.i.i.i.i to i64
  %i.aex = shl i64 %i.ael, %i.aew
  store i64 %i.aex, ptr %i.eq, align 8, !tbaa !270
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i
  %i.aey = phi i32 [ %i.aem, %bb.bj ], [ %i.aen, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i ]
  %.promoted.i163.i.i.i.i.i = phi i32 [ %i.aev, %bb.bj ], [ %i.aeo, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = phi i32 [ %i.aeu, %bb.bj ], [ 0, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i ]
  %i.aez = add nsw i32 %.0.i.i.i.i.i.i, %.032.i.i.i.i.i.i ; 4 uses
  %i.afa = icmp slt i32 %i.aez, 0
  br i1 %i.afa, label %.invoke191.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.afb = load i32, ptr %i.oo, align 8, !tbaa !216 ; 3 uses
  %.not39.i.i.i.i.i.i = icmp slt i32 %i.aez, %i.afb
  br i1 %.not39.i.i.i.i.i.i, label %bb.bm, label %.invoke191.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.afc = lshr i32 %i.aez, 1
  %i.afd = and i32 %i.aez, 1
  %sext.i.i.i.i.i = sub nsw i32 0, %i.afd
  %.1.i.i.i.i.i.i = xor i32 %i.afc, %sext.i.i.i.i.i ; 3 uses
  %i.afe = call i32 @llvm.abs.i32(i32 %.1.i.i.i.i.i.i, i1 true)
  %i.aff = zext nneg i32 %i.abn to i64
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.aff ; 4 uses
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !261
  %i.afi = add nsw i32 %i.afh, %i.afe             ; 2 uses
  store i32 %i.afi, ptr %i.afg, align 8, !tbaa !261
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 4 ; 2 uses
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !262 ; 3 uses
  %i.afl = load i32, ptr %i.op, align 8, !tbaa !213
  %i.afm = icmp eq i32 %i.afk, %i.afl
  br i1 %i.afm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.afn = ashr i32 %i.afi, 1
  store i32 %i.afn, ptr %i.afg, align 8, !tbaa !261
  %i.afo = ashr i32 %i.afk, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.afp = phi i32 [ %i.afo, %bb.bn ], [ %i.afk, %bb.bm ]
  %i.afq = add nsw i32 %i.afp, 1
  store i32 %i.afq, ptr %i.afj, align 4, !tbaa !262
  %i.afr = icmp slt i32 %.sroa.082.0.extract.trunc.i.i.i.i.i, 0
  %i.afs = sub nsw i32 0, %.1.i.i.i.i.i.i
  %storemerge.i.p.i.i.i.i.i = select i1 %i.afr, i32 %i.afs, i32 %.1.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i = add i32 %storemerge.i.p.i.i.i.i.i, %i.aay ; 5 uses
  %i.aft = icmp slt i32 %storemerge.i.i.i.i.i.i, 0
  br i1 %i.aft, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.afu = add nsw i32 %i.afb, %storemerge.i.i.i.i.i.i
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.afv = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.afw = icmp sgt i32 %storemerge.i.i.i.i.i.i, %i.afv
  br i1 %i.afw, label %bb.br, label %.thread.i.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.afx = sub nsw i32 %storemerge.i.i.i.i.i.i, %i.afb
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %.0132.i.i.i.i.i = phi i32 [ %i.afu, %bb.bp ], [ %i.afx, %bb.br ] ; 2 uses
  %i.afy = icmp slt i32 %.0132.i.i.i.i.i, 0
  br i1 %i.afy, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i, label %..thread_crit_edge.i.i.i.i.i

..thread_crit_edge.i.i.i.i.i:                     ; preds = %bb.bs
  %.pre.i.i.i.i.i = load i32, ptr %i.ol, align 8, !tbaa !94
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %..thread_crit_edge.i.i.i.i.i, %bb.bq
  %i.afz = phi i32 [ %.pre.i.i.i.i.i, %..thread_crit_edge.i.i.i.i.i ], [ %i.afv, %bb.bq ]
  %.0132134.i.i.i.i.i = phi i32 [ %.0132.i.i.i.i.i, %..thread_crit_edge.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.bq ]
  %.sroa.speculated.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.afz, i32 %.0132134.i.i.i.i.i)
  %i.aga = trunc i32 %.sroa.speculated.i.i.i.i.i to i16
  br label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.bs
  %.034.i.i.i.i.i.i = phi i16 [ %i.aga, %.thread.i.i.i.i.i ], [ 0, %bb.bs ]
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr %i.zo, i64 %i.aac
  store i16 %.034.i.i.i.i.i.i, ptr %i.agb, align 2, !tbaa !92
  %i.agc = add nsw i32 %i.ze, 1
  store i32 %i.agc, ptr %i.zd, align 4, !tbaa !94
  br i1 %.not31.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i, !llvm.loop !182

.loopexit.i.i.i.i.i:                              ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i, %.loopexit141.i.i.i.i.i
  %i.agd = add nuw nsw i32 %.0151.i.i.i.i.i, 1
  %.not.i9.i.i.i.i = icmp eq i32 %.0151.i.i.i.i.i, %i.oq
  br i1 %.not.i9.i.i.i.i, label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_19xtrans_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i", label %bb.u, !llvm.loop !183

"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_19xtrans_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.assume(i1 %i.pr)
  %i.age = icmp sgt i32 %i.pu, -1
  call void @llvm.assume(i1 %i.age)
  call void @llvm.assume(i1 %i.pw)
  call void @llvm.assume(i1 %i.py)
  %i.agf = icmp samesign ugt i32 %i.ps, 1
  call void @llvm.assume(i1 %i.agf)
  %i.agg = zext i32 %i.ps to i64                  ; 60 uses
  %i.agh = zext i32 %i.pv to i64                  ; 24 uses
  %i.agi = zext nneg i32 %i.pq to i64             ; 44 uses
  %i.agj = sext i32 %i.pv to i64                  ; 26 uses
  %i.agk = sext i32 %i.ps to i64                  ; 24 uses
  switch i8 %i.ov, label %bb.bw [
    i8 0, label %bb.bt
    i8 1, label %bb.bu
    i8 2, label %bb.bv
  ]

bb.bt:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_19xtrans_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i"
  %i.agl = add nuw nsw i64 %i.agj, %i.agk
  %i.agm = icmp samesign ule i64 %i.agl, %i.agi
  call void @llvm.assume(i1 %i.agm)
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.agj ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 2
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !92
  %i.agq = icmp samesign ugt i32 %i.pu, 2
  call void @llvm.assume(i1 %i.agq)
  %i.agr = shl nuw nsw i64 %i.agh, 1              ; 2 uses
  %i.ags = add nuw nsw i64 %i.agr, %i.agg
  %i.agt = icmp samesign ule i64 %i.ags, %i.agi
  call void @llvm.assume(i1 %i.agt)
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.agr ; 2 uses
  store i16 %i.agp, ptr %i.agu, align 2, !tbaa !92
  %i.agv = getelementptr [2 x i8], ptr %i.agn, i64 %i.agg
  %i.agw = getelementptr i8, ptr %i.agv, i64 -4
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !92
  %i.agy = getelementptr [2 x i8], ptr %i.agu, i64 %i.agg
  %i.agz = getelementptr i8, ptr %i.agy, i64 -2
  store i16 %i.agx, ptr %i.agz, align 2, !tbaa !92
  %i.aha = shl nuw nsw i64 %i.agj, 1              ; 2 uses
  %i.ahb = add nuw nsw i64 %i.aha, %i.agk
  %i.ahc = icmp samesign ule i64 %i.ahb, %i.agi
  call void @llvm.assume(i1 %i.ahc)
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.aha ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 2
  %i.ahf = load i16, ptr %i.ahe, align 2, !tbaa !92
  %i.ahg = icmp samesign ugt i32 %i.pu, 3
  call void @llvm.assume(i1 %i.ahg)
  %i.ahh = mul nuw nsw i64 %i.agh, 3              ; 2 uses
  %i.ahi = add nuw nsw i64 %i.ahh, %i.agg
  %i.ahj = icmp samesign ule i64 %i.ahi, %i.agi
  call void @llvm.assume(i1 %i.ahj)
  %i.ahk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ahh ; 2 uses
  store i16 %i.ahf, ptr %i.ahk, align 2, !tbaa !92
  %i.ahl = getelementptr [2 x i8], ptr %i.ahd, i64 %i.agg
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 -4
  %i.ahn = load i16, ptr %i.ahm, align 2, !tbaa !92
  %i.aho = getelementptr [2 x i8], ptr %i.ahk, i64 %i.agg
  %i.ahp = getelementptr i8, ptr %i.aho, i64 -2
  store i16 %i.ahn, ptr %i.ahp, align 2, !tbaa !92
  %i.ahq = mul nuw nsw i64 %i.agj, 3              ; 2 uses
  %i.ahr = add nuw nsw i64 %i.ahq, %i.agk
  %i.ahs = icmp samesign ule i64 %i.ahr, %i.agi
  call void @llvm.assume(i1 %i.ahs)
  %i.aht = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ahq ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 2
  %i.ahv = icmp samesign ugt i32 %i.pu, 4
  call void @llvm.assume(i1 %i.ahv)
  %i.ahw = shl nuw nsw i64 %i.agh, 2
  br label %bb.bx

bb.bu:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_19xtrans_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i"
  %i.ahx = mul nuw nsw i64 %i.agj, 6              ; 2 uses
  %i.ahy = add nuw nsw i64 %i.ahx, %i.agk
  %i.ahz = icmp samesign ule i64 %i.ahy, %i.agi
  call void @llvm.assume(i1 %i.ahz)
  %i.aia = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ahx ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 2
  %i.aic = load i16, ptr %i.aib, align 2, !tbaa !92
  %i.aid = icmp samesign ugt i32 %i.pu, 7
  call void @llvm.assume(i1 %i.aid)
  %i.aie = mul nuw nsw i64 %i.agh, 7              ; 2 uses
  %i.aif = add nuw nsw i64 %i.aie, %i.agg
  %i.aig = icmp samesign ule i64 %i.aif, %i.agi
  call void @llvm.assume(i1 %i.aig)
  %i.aih = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.aie ; 2 uses
  store i16 %i.aic, ptr %i.aih, align 2, !tbaa !92
  %i.aii = getelementptr [2 x i8], ptr %i.aia, i64 %i.agg
  %i.aij = getelementptr i8, ptr %i.aii, i64 -4
  %i.aik = load i16, ptr %i.aij, align 2, !tbaa !92
  %i.ail = getelementptr [2 x i8], ptr %i.aih, i64 %i.agg
  %i.aim = getelementptr i8, ptr %i.ail, i64 -2
  store i16 %i.aik, ptr %i.aim, align 2, !tbaa !92
  %i.ain = mul nuw nsw i64 %i.agj, 7              ; 2 uses
  %i.aio = add nuw nsw i64 %i.ain, %i.agk
  %i.aip = icmp samesign ule i64 %i.aio, %i.agi
  call void @llvm.assume(i1 %i.aip)
  %i.aiq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ain ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 2
  %i.ais = load i16, ptr %i.air, align 2, !tbaa !92
  %i.ait = icmp samesign ugt i32 %i.pu, 8
  call void @llvm.assume(i1 %i.ait)
  %i.aiu = shl nuw nsw i64 %i.agh, 3              ; 2 uses
  %i.aiv = add nuw nsw i64 %i.aiu, %i.agg
  %i.aiw = icmp samesign ule i64 %i.aiv, %i.agi
  call void @llvm.assume(i1 %i.aiw)
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.aiu ; 2 uses
  store i16 %i.ais, ptr %i.aix, align 2, !tbaa !92
  %i.aiy = getelementptr [2 x i8], ptr %i.aiq, i64 %i.agg
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 -4
  %i.aja = load i16, ptr %i.aiz, align 2, !tbaa !92
  %i.ajb = getelementptr [2 x i8], ptr %i.aix, i64 %i.agg
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 -2
  store i16 %i.aja, ptr %i.ajc, align 2, !tbaa !92
  %i.ajd = shl nuw nsw i64 %i.agj, 3              ; 2 uses
  %i.aje = add nuw nsw i64 %i.ajd, %i.agk
  %i.ajf = icmp samesign ule i64 %i.aje, %i.agi
  call void @llvm.assume(i1 %i.ajf)
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ajd ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 2
  %i.aji = load i16, ptr %i.ajh, align 2, !tbaa !92
  %i.ajj = icmp samesign ugt i32 %i.pu, 9
  call void @llvm.assume(i1 %i.ajj)
  %i.ajk = mul nuw nsw i64 %i.agh, 9              ; 2 uses
  %i.ajl = add nuw nsw i64 %i.ajk, %i.agg
  %i.ajm = icmp samesign ule i64 %i.ajl, %i.agi
  call void @llvm.assume(i1 %i.ajm)
  %i.ajn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ajk ; 2 uses
  store i16 %i.aji, ptr %i.ajn, align 2, !tbaa !92
  %i.ajo = getelementptr [2 x i8], ptr %i.ajg, i64 %i.agg
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 -4
  %i.ajq = load i16, ptr %i.ajp, align 2, !tbaa !92
  %i.ajr = getelementptr [2 x i8], ptr %i.ajn, i64 %i.agg
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 -2
  store i16 %i.ajq, ptr %i.ajs, align 2, !tbaa !92
  %i.ajt = mul nuw nsw i64 %i.agj, 9              ; 2 uses
  %i.aju = add nuw nsw i64 %i.ajt, %i.agk
  %i.ajv = icmp samesign ule i64 %i.aju, %i.agi
  call void @llvm.assume(i1 %i.ajv)
  %i.ajw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ajt ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 2
  %i.ajy = load i16, ptr %i.ajx, align 2, !tbaa !92
  %i.ajz = icmp samesign ugt i32 %i.pu, 10
  call void @llvm.assume(i1 %i.ajz)
  %i.aka = mul nuw nsw i64 %i.agh, 10             ; 2 uses
  %i.akb = add nuw nsw i64 %i.aka, %i.agg
  %i.akc = icmp samesign ule i64 %i.akb, %i.agi
  call void @llvm.assume(i1 %i.akc)
  %i.akd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.aka ; 2 uses
  store i16 %i.ajy, ptr %i.akd, align 2, !tbaa !92
  %i.ake = getelementptr [2 x i8], ptr %i.ajw, i64 %i.agg
  %i.akf = getelementptr i8, ptr %i.ake, i64 -4
  %i.akg = load i16, ptr %i.akf, align 2, !tbaa !92
  %i.akh = getelementptr [2 x i8], ptr %i.akd, i64 %i.agg
  %i.aki = getelementptr i8, ptr %i.akh, i64 -2
  store i16 %i.akg, ptr %i.aki, align 2, !tbaa !92
  %i.akj = mul nuw nsw i64 %i.agj, 10             ; 2 uses
  %i.akk = add nuw nsw i64 %i.akj, %i.agk
  %i.akl = icmp samesign ule i64 %i.akk, %i.agi
  call void @llvm.assume(i1 %i.akl)
  %i.akm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.akj ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 2
  %i.ako = load i16, ptr %i.akn, align 2, !tbaa !92
  %i.akp = icmp samesign ugt i32 %i.pu, 11
  call void @llvm.assume(i1 %i.akp)
  %i.akq = mul nuw nsw i64 %i.agh, 11             ; 2 uses
  %i.akr = add nuw nsw i64 %i.akq, %i.agg
  %i.aks = icmp samesign ule i64 %i.akr, %i.agi
  call void @llvm.assume(i1 %i.aks)
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.akq ; 2 uses
  store i16 %i.ako, ptr %i.akt, align 2, !tbaa !92
  %i.aku = getelementptr [2 x i8], ptr %i.akm, i64 %i.agg
  %i.akv = getelementptr i8, ptr %i.aku, i64 -4
  %i.akw = load i16, ptr %i.akv, align 2, !tbaa !92
  %i.akx = getelementptr [2 x i8], ptr %i.akt, i64 %i.agg
  %i.aky = getelementptr i8, ptr %i.akx, i64 -2
  store i16 %i.akw, ptr %i.aky, align 2, !tbaa !92
  %i.akz = mul nuw nsw i64 %i.agj, 11             ; 2 uses
  %i.ala = add nuw nsw i64 %i.akz, %i.agk
  %i.alb = icmp samesign ule i64 %i.ala, %i.agi
  call void @llvm.assume(i1 %i.alb)
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.akz ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 2
  %i.ale = icmp samesign ugt i32 %i.pu, 12
  call void @llvm.assume(i1 %i.ale)
  %i.alf = mul nuw nsw i64 %i.agh, 12
  br label %bb.bx

bb.bv:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_19xtrans_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i"
  %i.alg = mul nuw nsw i64 %i.agj, 14             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  %i.aqv = getelementptr [2 x i8], ptr %i.aqn, i64 %i.agg
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 -4
  %i.aqx = load i16, ptr %i.aqw, align 2, !tbaa !92
  %i.aqy = getelementptr [2 x i8], ptr %i.aqu, i64 %i.agg
  %i.aqz = getelementptr i8, ptr %i.aqy, i64 -2
  store i16 %i.aqx, ptr %i.aqz, align 2, !tbaa !92
  %i.ara = mul nuw nsw i64 %i.agj, 10             ; 2 uses
  %i.arb = add nuw nsw i64 %i.ara, %i.agk
  %i.arc = icmp samesign ule i64 %i.arb, %i.agi
  call void @llvm.assume(i1 %i.arc)
  %i.ard = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ara ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 2
  %i.arf = load i16, ptr %i.are, align 2, !tbaa !92
  %i.arg = icmp samesign ugt i32 %i.pu, 11
  call void @llvm.assume(i1 %i.arg)
  %i.arh = mul nuw nsw i64 %i.agh, 11             ; 2 uses
  %i.ari = add nuw nsw i64 %i.arh, %i.agg
  %i.arj = icmp samesign ule i64 %i.ari, %i.agi
  call void @llvm.assume(i1 %i.arj)
  %i.ark = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.arh ; 2 uses
  store i16 %i.arf, ptr %i.ark, align 2, !tbaa !92
  %i.arl = getelementptr [2 x i8], ptr %i.ard, i64 %i.agg
  %i.arm = getelementptr i8, ptr %i.arl, i64 -4
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !92
  %i.aro = getelementptr [2 x i8], ptr %i.ark, i64 %i.agg
  %i.arp = getelementptr i8, ptr %i.aro, i64 -2
  store i16 %i.arn, ptr %i.arp, align 2, !tbaa !92
  %i.arq = mul nuw nsw i64 %i.agj, 11             ; 2 uses
  %i.arr = add nuw nsw i64 %i.arq, %i.agk
  %i.ars = icmp samesign ule i64 %i.arr, %i.agi
  call void @llvm.assume(i1 %i.ars)
  %i.art = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.arq ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 2
  %i.arv = icmp samesign ugt i32 %i.pu, 12
  call void @llvm.assume(i1 %i.arv)
  %i.arw = mul nuw nsw i64 %i.agh, 12
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.arx = add nuw nsw i64 %i.agj, %i.agk
  %i.ary = icmp samesign ule i64 %i.arx, %i.agi
  call void @llvm.assume(i1 %i.ary)
  %i.arz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.agj ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 2
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !92
  %i.asc = icmp samesign ugt i32 %i.pu, 2
  call void @llvm.assume(i1 %i.asc)
  %i.asd = shl nuw nsw i64 %i.agh, 1              ; 2 uses
  %i.ase = add nuw nsw i64 %i.asd, %i.agg
  %i.asf = icmp samesign ule i64 %i.ase, %i.agi
  call void @llvm.assume(i1 %i.asf)
  %i.asg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.asd ; 2 uses
  store i16 %i.asb, ptr %i.asg, align 2, !tbaa !92
  %i.ash = getelementptr [2 x i8], ptr %i.arz, i64 %i.agg
  %i.asi = getelementptr i8, ptr %i.ash, i64 -4
  %i.asj = load i16, ptr %i.asi, align 2, !tbaa !92
  %i.ask = getelementptr [2 x i8], ptr %i.asg, i64 %i.agg
  %i.asl = getelementptr i8, ptr %i.ask, i64 -2
  store i16 %i.asj, ptr %i.asl, align 2, !tbaa !92
  %i.asm = shl nuw nsw i64 %i.agj, 1              ; 2 uses
  %i.asn = add nuw nsw i64 %i.asm, %i.agk
  %i.aso = icmp samesign ule i64 %i.asn, %i.agi
  call void @llvm.assume(i1 %i.aso)
  %i.asp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.asm ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 2
  %i.asr = load i16, ptr %i.asq, align 2, !tbaa !92
  %i.ass = icmp samesign ugt i32 %i.pu, 3
  call void @llvm.assume(i1 %i.ass)
  %i.ast = mul nuw nsw i64 %i.agh, 3              ; 2 uses
  %i.asu = add nuw nsw i64 %i.ast, %i.agg
  %i.asv = icmp samesign ule i64 %i.asu, %i.agi
  call void @llvm.assume(i1 %i.asv)
  %i.asw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ast ; 2 uses
  store i16 %i.asr, ptr %i.asw, align 2, !tbaa !92
  %i.asx = getelementptr [2 x i8], ptr %i.asp, i64 %i.agg
  %i.asy = getelementptr i8, ptr %i.asx, i64 -4
  %i.asz = load i16, ptr %i.asy, align 2, !tbaa !92
  %i.ata = getelementptr [2 x i8], ptr %i.asw, i64 %i.agg
  %i.atb = getelementptr i8, ptr %i.ata, i64 -2
  store i16 %i.asz, ptr %i.atb, align 2, !tbaa !92
  %i.atc = mul nuw nsw i64 %i.agj, 3              ; 2 uses
  %i.atd = add nuw nsw i64 %i.atc, %i.agk
  %i.ate = icmp samesign ule i64 %i.atd, %i.agi
  call void @llvm.assume(i1 %i.ate)
  %i.atf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.atc ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 2
  %i.ath = icmp samesign ugt i32 %i.pu, 4
  call void @llvm.assume(i1 %i.ath)
  %i.ati = shl nuw nsw i64 %i.agh, 2
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i:           ; preds = %bb.ca, %bb.bz, %bb.by
  %.sink163.i.i.i.i = phi i64 [ %i.ati, %bb.ca ], [ %i.arw, %bb.bz ], [ %i.aon, %bb.by ] ; 2 uses
  %.sink158.in.i.i.i.i = phi ptr [ %i.atg, %bb.ca ], [ %i.aru, %bb.bz ], [ %i.aol, %bb.by ]
  %.sink157.i.i.i.i = phi ptr [ %i.atf, %bb.ca ], [ %i.art, %bb.bz ], [ %i.aok, %bb.by ]
  %.sink158.i.i.i.i = load i16, ptr %.sink158.in.i.i.i.i, align 2, !tbaa !92
  %i.atj = add nuw nsw i64 %.sink163.i.i.i.i, %i.agg
  %i.atk = icmp samesign ule i64 %i.atj, %i.agi
  call void @llvm.assume(i1 %i.atk)
  %i.atl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %.sink163.i.i.i.i ; 2 uses
  store i16 %.sink158.i.i.i.i, ptr %i.atl, align 2, !tbaa !92
  %i.atm = getelementptr [2 x i8], ptr %.sink157.i.i.i.i, i64 %i.agg
  %i.atn = getelementptr i8, ptr %i.atm, i64 -4
  %i.ato = load i16, ptr %i.atn, align 2, !tbaa !92
  %i.atp = getelementptr [2 x i8], ptr %i.atl, i64 %i.agg
  %i.atq = getelementptr i8, ptr %i.atp, i64 -2
  store i16 %i.ato, ptr %i.atq, align 2, !tbaa !92
  %i.atr = add nuw nsw i32 %.017.i97.i.i.i.i, 1   ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq i32 %i.atr, 6
  br i1 %.not.i.i.i.i.i14, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEi.exit.i.i.i, label %switch.lookup, !llvm.loop !184

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEi.exit.i.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ec

bb.cb:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 33620224, ptr %2, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false), !tbaa !94
  br label %switch.lookup227

switch.lookup227:                                 ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i, %bb.cb
  %.017.i97.i49.i.i.i = phi i32 [ 0, %bb.cb ], [ %i.bwr, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i ] ; 3 uses
  %i.ats = shl nuw nsw i32 %.017.i97.i49.i.i.i, 1
  %i.att = and i32 %i.ats, 2
  %i.atu = zext nneg i32 %i.att to i64
  %i.atv = getelementptr inbounds nuw i8, ptr %2, i64 %i.atu ; 2 uses
  %i.atw = load i8, ptr %i.atv, align 2, !tbaa !120 ; 3 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atv, i64 1
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !120 ; 3 uses
  %i.atz = zext nneg i8 %i.atw to i64
  %switch.gep228 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8rawspeed16FujiDecompressor10decompressEv.30, i64 %i.atz
  %switch.load229 = load i8, ptr %switch.gep228, align 1
  %switch.ext230 = zext i8 %switch.load229 to i32
  %i.aua = zext nneg i8 %i.atw to i64
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aua ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !94 ; 2 uses
  %i.aud = add nsw i32 %i.auc, %switch.ext230     ; 2 uses
  %i.aue = add nsw i32 %i.auc, 1
  store i32 %i.aue, ptr %i.aub, align 4, !tbaa !94
  %i.auf = zext nneg i8 %i.aty to i64
  %switch.gep236 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8rawspeed16FujiDecompressor10decompressEv.30, i64 %i.auf
  %switch.load237 = load i8, ptr %switch.gep236, align 1
  %switch.ext238 = zext i8 %switch.load237 to i32
  %i.aug = zext nneg i8 %i.aty to i64
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aug ; 2 uses
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !94 ; 2 uses
  %i.auj = add nsw i32 %i.aui, %switch.ext238     ; 2 uses
  %i.auk = add nsw i32 %i.aui, 1
  store i32 %i.auk, ptr %i.auh, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !tbaa !94
  %i.aul = urem i32 %.017.i97.i49.i.i.i, 3
  %i.aum = zext nneg i32 %i.aul to i64            ; 2 uses
  %i.aun = getelementptr inbounds nuw [328 x i8], ptr %i.eo, i64 %i.aum ; 2 uses
  %i.auo = getelementptr inbounds nuw [328 x i8], ptr %i.ep, i64 %i.aum ; 2 uses
  %i.aup = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 8 uses
  %i.auq = icmp sgt i32 %i.aup, -1                ; 3 uses
  %i.aur = load i32, ptr %i.ej, align 4           ; 16 uses
  %i.aus = icmp sgt i32 %i.aur, -1                ; 2 uses
  %i.aut = load i32, ptr %i.ek, align 8           ; 31 uses
  %i.auu = icmp sgt i32 %i.aut, -1                ; 2 uses
  %i.auv = load i32, ptr %i.ei, align 8           ; 9 uses
  %i.auw = icmp sge i32 %i.auv, %i.aur            ; 3 uses
  %i.aux = mul nuw nsw i32 %i.auv, %i.aut
  %i.auy = icmp eq i32 %i.aup, %i.aux             ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i = load ptr, ptr %i.eb, align 8 ; 49 uses
  %i.auz = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8 ; 14 uses
  %i.ava = icmp sgt i32 %i.auz, 3                 ; 2 uses
  %i.avb = add nuw nsw i32 %i.auz, 8              ; 4 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i.i53.i.i.i, %switch.lookup227
  %.0150.i.i.i.i.i = phi i32 [ 0, %switch.lookup227 ], [ %i.bje, %.loopexit.i.i53.i.i.i ] ; 4 uses
  %i.avc = icmp samesign ult i32 %.0150.i.i.i.i.i, %i.ok
  br i1 %i.avc, label %.preheader139.i.i.i.i.i, label %.loopexit140.i.i.i.i.i

.preheader139.i.i.i.i.i:                          ; preds = %bb.cc
  call void @llvm.assume(i1 %i.auq)
  call void @llvm.assume(i1 %i.aus)
  call void @llvm.assume(i1 %i.auu)
  call void @llvm.assume(i1 %i.auw)
  call void @llvm.assume(i1 %i.auy)
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !136 ; 2 uses
  call void @llvm.assume(i1 %i.ava)
  %.promoted.i.i.pre.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.i.pre.i.i.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %bb.cd

bb.cd:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %.preheader139.i.i.i.i.i
  %.promoted16.i.i.i.i103.i.i.i = phi i32 [ %.promoted16.i.i.pre.i.i.i.i.i, %.preheader139.i.i.i.i.i ], [ %.promoted16.i.i164.i.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ] ; 2 uses
  %.promoted.i.i.i.i104.i.i.i = phi i32 [ %.promoted.i.i.pre.i.i.i.i.i, %.preheader139.i.i.i.i.i ], [ %.promoted.i.i162.i.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %.not30.i.i105.i.i.i = phi i1 [ false, %.preheader139.i.i.i.i.i ], [ true, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %indvars.iv.i.sroa.phi.i106.i.i.i = phi ptr [ %1, %.preheader139.i.i.i.i.i ], [ %indvars.iv158.i.sroa.gep73.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ] ; 2 uses
  %indvars.iv.i.sroa.phi78.sroa.speculated.i.i.i.i = phi i32 [ %i.aud, %.preheader139.i.i.i.i.i ], [ %i.auj, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %i.avd = load i32, ptr %indvars.iv.i.sroa.phi.i106.i.i.i, align 4, !tbaa !94 ; 2 uses
  %i.ave = and i32 %indvars.iv.i.sroa.phi78.sroa.speculated.i.i.i.i, 255 ; 4 uses
  %i.avf = add nsw i32 %i.ave, -1                 ; 2 uses
  %i.avg = shl nsw i32 %i.avd, 1                  ; 4 uses
  %i.avh = or disjoint i32 %i.avg, 1              ; 2 uses
  %i.avi = icmp samesign ult i32 %i.avh, %i.aur
  call void @llvm.assume(i1 %i.avi)
  %i.avj = icmp samesign ult i32 %i.avf, %i.aut
  call void @llvm.assume(i1 %i.avj)
  %i.avk = mul nuw nsw i32 %i.avf, %i.auv         ; 2 uses
  %i.avl = add nuw nsw i32 %i.avk, %i.aur
  %i.avm = icmp samesign ule i32 %i.avl, %i.aup
  call void @llvm.assume(i1 %i.avm)
  %i.avn = zext nneg i32 %i.avk to i64
  %i.avo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.avn ; 3 uses
  %i.avp = zext nneg i32 %i.avh to i64            ; 3 uses
  %i.avq = getelementptr inbounds nuw [2 x i8], ptr %i.avo, i64 %i.avp
  %i.avr = load i16, ptr %i.avq, align 2, !tbaa !92
  %i.avs = zext i16 %i.avr to i32                 ; 5 uses
  %i.avt = icmp samesign ule i32 %i.avg, %i.aur
  call void @llvm.assume(i1 %i.avt)
  %i.avu = zext nneg i32 %i.avg to i64
  %i.avv = getelementptr inbounds nuw [2 x i8], ptr %i.avo, i64 %i.avu
  %i.avw = load i16, ptr %i.avv, align 2, !tbaa !92
  %i.avx = zext i16 %i.avw to i32                 ; 2 uses
  %i.avy = add nuw nsw i32 %i.avg, 2              ; 2 uses
  %i.avz = icmp samesign ult i32 %i.avy, %i.aur
  call void @llvm.assume(i1 %i.avz)
  %i.awa = zext nneg i32 %i.avy to i64
  %i.awb = getelementptr inbounds nuw [2 x i8], ptr %i.avo, i64 %i.awa
  %i.awc = load i16, ptr %i.awb, align 2, !tbaa !92
  %i.awd = zext i16 %i.awc to i32                 ; 3 uses
  %i.awe = add nsw i32 %i.ave, -2                 ; 2 uses
  %i.awf = icmp samesign ult i32 %i.awe, %i.aut
  call void @llvm.assume(i1 %i.awf)
  %i.awg = mul nuw nsw i32 %i.awe, %i.auv         ; 2 uses
  %i.awh = add nuw nsw i32 %i.awg, %i.aur
  %i.awi = icmp samesign ule i32 %i.awh, %i.aup
  call void @llvm.assume(i1 %i.awi)
  %i.awj = zext nneg i32 %i.awg to i64
  %i.awk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.awj
  %i.awl = getelementptr inbounds nuw [2 x i8], ptr %i.awk, i64 %i.avp
  %i.awm = load i16, ptr %i.awl, align 2, !tbaa !92
  %i.awn = zext i16 %i.awm to i32                 ; 3 uses
  %i.awo = sub nsw i32 %i.avx, %i.avs             ; 2 uses
  %i.awp = call i32 @llvm.abs.i32(i32 %i.awo, i1 true) ; 2 uses
  %i.awq = sub nsw i32 %i.awn, %i.avs
  %i.awr = call i32 @llvm.abs.i32(i32 %i.awq, i1 true) ; 2 uses
  %i.aws = sub nsw i32 %i.awd, %i.avs
  %i.awt = call i32 @llvm.abs.i32(i32 %i.aws, i1 true) ; 2 uses
  %.sroa.speculated.i.i.i107.i.i.i = call i32 @llvm.umax.i32(i32 %i.awr, i32 %i.awt)
  %i.awu = icmp samesign ugt i32 %i.awp, %.sroa.speculated.i.i.i107.i.i.i ; 2 uses
  %.sroa.speculated8.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.awp, i32 %i.awr)
  %i.awv = icmp samesign ugt i32 %i.awt, %.sroa.speculated8.i.i.i.i.i.i
  %i.aww = select i1 %i.awu, i1 true, i1 %i.awv
  %.1.i.i.i.i108.i.i.i = select i1 %i.aww, i32 %i.awn, i32 %i.awd
  %.0.i.i.i.i109.i.i.i = select i1 %i.awu, i32 %i.awd, i32 %i.avx
  %i.awx = shl nuw nsw i32 %i.avs, 1
  %i.awy = add nuw nsw i32 %.0.i.i.i.i109.i.i.i, %i.awx
  %i.awz = add nuw nsw i32 %i.awy, %.1.i.i.i.i108.i.i.i
  %i.axa = lshr i32 %i.awz, 2
  %i.axb = sub nsw i32 %i.avs, %i.awn
  %i.axc = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.axd = add nsw i32 %i.axb, %i.axc
  %i.axe = sext i32 %i.axd to i64
  %i.axf = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i, i64 %i.axe
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !93
  %i.axh = sext i8 %i.axg to i32
  %i.axi = mul nsw i32 %i.axh, 9
  %i.axj = add nsw i32 %i.axc, %i.awo
  %i.axk = sext i32 %i.axj to i64
  %i.axl = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i, i64 %i.axk
  %i.axm = load i8, ptr %i.axl, align 1, !tbaa !93
  %i.axn = sext i8 %i.axm to i32
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = add nsw i32 %i.axi, %i.axn ; 2 uses
  %i.axo = call i32 @llvm.abs.i32(i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, i1 true) ; 2 uses
  %.promoted17.i.i.i.i110.i.i.i = load i64, ptr %i.eq, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i, %bb.cd
  %.promoted16.i.i166.i.i.i.i.i = phi i32 [ %.promoted16.i.i.i.i103.i.i.i, %bb.cd ], [ %.promoted16.i.i165.i.i.i.i.i, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ]
  %i.axp = phi i64 [ %.promoted17.i.i.i.i110.i.i.i, %bb.cd ], [ %i.ayw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 2 uses
  %i.axq = phi i32 [ %.promoted16.i.i.i.i103.i.i.i, %bb.cd ], [ %i.ayl, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 5 uses
  %i.axr = phi i32 [ %.promoted.i.i.i.i104.i.i.i, %bb.cd ], [ %i.ayu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 5 uses
  %.014.i.i.i.i112.i.i.i = phi i32 [ 0, %bb.cd ], [ %i.ayq, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ]
  %i.axs = icmp samesign ult i32 %i.axr, 65
  call void @llvm.assume(i1 %i.axs)
  %.not.i.i.i.i.i113.i.i.i = icmp samesign ult i32 %i.axr, 32
  br i1 %.not.i.i.i.i.i113.i.i.i, label %bb.cf, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i48.i.i.i)
  %i.axt = add nuw nsw i32 %i.axq, 4              ; 4 uses
  %.not.i.i.i.i.i.i135.i.i.i = icmp samesign ugt i32 %i.axt, %i.auz
  br i1 %.not.i.i.i.i.i.i135.i.i.i, label %bb.ch, label %bb.cg, !prof !134

bb.cg:                                            ; preds = %bb.cf
  %i.axu = zext nneg i32 %i.axq to i64
  %i.axv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.axu
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.axw = icmp samesign ugt i32 %i.axq, %i.avb
  br i1 %i.axw, label %.invoke.i.i12, label %bb.ci, !prof !134

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i48.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i139.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.axq) ; 3 uses
  %i.axx = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i139.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i140.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.axx)
  %i.axy = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i140.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i139.i.i.i ; 2 uses
  %i.axz = icmp samesign ult i32 %i.axy, 5
  call void @llvm.assume(i1 %i.axz)
  %i.aya = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i139.i.i.i to i64
  %i.ayb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.aya
  %i.ayc = zext nneg i32 %i.axy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i48.i.i.i, ptr align 1 %i.ayb, i64 %i.ayc, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i: ; preds = %bb.ci, %bb.cg
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i137.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i48.i.i.i, %bb.ci ], [ %i.axv, %bb.cg ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i138.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i137.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i48.i.i.i)
  %i.ayd = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i138.i.i.i)
  %i.aye = zext i32 %i.ayd to i64
  %i.ayf = or disjoint i32 %i.axr, 32
  %i.ayg = sub nuw nsw i32 32, %i.axr
  %i.ayh = zext nneg i32 %i.ayg to i64
  %i.ayi = shl nuw i64 %i.aye, %i.ayh
  %i.ayj = or i64 %i.ayi, %i.axp
  store i32 %i.axt, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i, %bb.ce
  %.promoted16.i.i165.i.i.i.i.i = phi i32 [ %.promoted16.i.i166.i.i.i.i.i, %bb.ce ], [ %i.axt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 2 uses
  %i.ayk = phi i64 [ %i.axp, %bb.ce ], [ %i.ayj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 2 uses
  %i.ayl = phi i32 [ %i.axq, %bb.ce ], [ %i.axt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 6 uses
  %i.aym = phi i32 [ %i.axr, %bb.ce ], [ %i.ayf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ]
  %i.ayn = lshr i64 %i.ayk, 32                    ; 2 uses
  %i.ayo = trunc nuw i64 %i.ayn to i32
  %i.ayp = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ayo, i1 false) ; 2 uses
  %i.ayq = add nuw nsw i32 %i.ayp, %.014.i.i.i.i112.i.i.i ; 3 uses
  %i.ayr = icmp eq i64 %i.ayn, 0                  ; 2 uses
  %i.ays = add nuw nsw i32 %i.ayp, 1
  %spec.select.i.i.i.i115.i.i.i = select i1 %i.ayr, i32 32, i32 %i.ays ; 3 uses
  %i.ayt = icmp samesign ult i32 %spec.select.i.i.i.i115.i.i.i, 33
  call void @llvm.assume(i1 %i.ayt)
  %i.ayu = sub nuw nsw i32 %i.aym, %spec.select.i.i.i.i115.i.i.i ; 6 uses
  store i32 %i.ayu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.ayv = zext nneg i32 %spec.select.i.i.i.i115.i.i.i to i64
  %i.ayw = shl i64 %i.ayk, %i.ayv                 ; 4 uses
  store i64 %i.ayw, ptr %i.eq, align 8, !tbaa !270
  br i1 %i.ayr, label %bb.ce, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i
  %i.ayx = load i32, ptr %i.om, align 4, !tbaa !218
  %i.ayy = load i32, ptr %i.on, align 4, !tbaa !217 ; 2 uses
  %i.ayz = xor i32 %i.ayy, -1
  %i.aza = add i32 %i.ayx, %i.ayz
  %i.azb = icmp slt i32 %i.ayq, %i.aza
  br i1 %i.azb, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i
  %i.azc = zext nneg i32 %i.axo to i64
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %i.aun, i64 %i.azc ; 2 uses
  %i.aze = load i32, ptr %i.azd, align 8, !tbaa !261 ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azd, i64 4
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !262 ; 3 uses
  %i.azh = icmp sgt i32 %i.aze, -1
  call void @llvm.assume(i1 %i.azh)
  %i.azi = icmp sgt i32 %i.azg, 0
  call void @llvm.assume(i1 %i.azi)
  %i.azj = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aze, i1 false)
  %i.azk = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.azg, i1 true)
  %i.azl = sub nsw i32 %i.azk, %i.azj
  %.sroa.speculated11.i.i.i.i133.i.i.i = call i32 @llvm.smax.i32(i32 %i.azl, i32 0) ; 2 uses
  %i.azm = shl i32 %i.azg, %.sroa.speculated11.i.i.i.i133.i.i.i
  %i.azn = icmp slt i32 %i.azm, %i.aze
  %i.azo = zext i1 %i.azn to i32
  %spec.select.i17.i.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i.i133.i.i.i, %i.azo
  %.sroa.speculated.i.i.i.i134.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i17.i.i.i.i.i.i, i32 15) ; 2 uses
  %i.azp = shl i32 %i.ayq, %.sroa.speculated.i.i.i.i134.i.i.i
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i
  %.033.i.i.i.i117.i.i.i = phi i32 [ %.sroa.speculated.i.i.i.i134.i.i.i, %bb.cj ], [ %i.ayy, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i ] ; 5 uses
  %.032.i.i.i.i118.i.i.i = phi i32 [ %i.azp, %bb.cj ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i ]
  %i.azq = icmp sgt i32 %i.ayl, -1
  call void @llvm.assume(i1 %i.azq)
  %.not.i18.i.i.i.i.i.i = icmp samesign ult i32 %i.ayu, 32
  br i1 %.not.i18.i.i.i.i.i.i, label %bb.cl, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i47.i.i.i)
  %i.azr = add nuw nsw i32 %i.ayl, 4              ; 3 uses
  %.not.i.i19.i.i.i.i.i.i = icmp samesign ugt i32 %i.azr, %i.auz
  br i1 %.not.i.i19.i.i.i.i.i.i, label %bb.cn, label %bb.cm, !prof !134

bb.cm:                                            ; preds = %bb.cl
  %i.azs = zext nneg i32 %i.ayl to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.azs
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.azu = icmp samesign ugt i32 %i.ayl, %i.avb
  br i1 %i.azu, label %.invoke.i.i12, label %bb.co, !prof !134

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %.sroa.0.i.i.i.i.i47.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i131.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.ayl) ; 3 uses
  %i.azv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i131.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i132.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.azv)
  %i.azw = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i132.i.i.i, %.sroa.speculated27.i.i.i.i.i.i131.i.i.i ; 2 uses
  %i.azx = icmp samesign ult i32 %i.azw, 5
  call void @llvm.assume(i1 %i.azx)
  %i.azy = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i131.i.i.i to i64
  %i.azz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.azy
  %i.baa = zext nneg i32 %i.azw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i47.i.i.i, ptr align 1 %i.azz, i64 %i.baa, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i: ; preds = %bb.co, %bb.cm
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i129.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i47.i.i.i, %bb.co ], [ %i.azt, %bb.cm ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i130.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i129.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i47.i.i.i)
  %i.bab = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i130.i.i.i)
  %i.bac = zext i32 %i.bab to i64
  %i.bad = or disjoint i32 %i.ayu, 32             ; 2 uses
  %i.bae = sub nuw nsw i32 32, %i.ayu
  %i.baf = zext nneg i32 %i.bae to i64
  %i.bag = shl nuw i64 %i.bac, %i.baf
  %i.bah = or i64 %i.bag, %i.ayw                  ; 2 uses
  store i64 %i.bah, ptr %i.eq, align 8, !tbaa !270
  store i32 %i.bad, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.azr, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i, %bb.ck
  %.promoted16.i.i164.i.i.i.i.i = phi i32 [ %.promoted16.i.i165.i.i.i.i.i, %bb.ck ], [ %i.azr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ]
  %.promoted.i.i163.i.i.i.i.i = phi i32 [ %i.ayu, %bb.ck ], [ %i.bad, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ] ; 2 uses
  %i.bai = phi i64 [ %i.ayw, %bb.ck ], [ %i.bah, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ] ; 2 uses
  %.not.i.i.i10.i120.i.i.i = icmp eq i32 %.033.i.i.i.i117.i.i.i, 0
  br i1 %.not.i.i.i10.i120.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i
  %i.baj = icmp samesign ult i32 %.033.i.i.i.i117.i.i.i, 33
  call void @llvm.assume(i1 %i.baj)
  %i.bak = sub nuw nsw i32 64, %.033.i.i.i.i117.i.i.i
  %i.bal = zext nneg i32 %i.bak to i64
  %i.bam = lshr i64 %i.bai, %i.bal
  %i.ban = trunc nuw i64 %i.bam to i32
  %i.bao = sub nuw nsw i32 %.promoted.i.i163.i.i.i.i.i, %.033.i.i.i.i117.i.i.i ; 2 uses
  store i32 %i.bao, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.bap = zext nneg i32 %.033.i.i.i.i117.i.i.i to i64
  %i.baq = shl i64 %i.bai, %i.bap
  store i64 %i.baq, ptr %i.eq, align 8, !tbaa !270
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i
  %.promoted.i.i162.i.i.i.i.i = phi i32 [ %i.bao, %bb.cp ], [ %.promoted.i.i163.i.i.i.i.i, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i ]
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.ban, %bb.cp ], [ 0, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i ]
  %i.bar = add nsw i32 %.0.i3.i.i.i.i.i.i, %.032.i.i.i.i118.i.i.i ; 4 uses
  %i.bas = icmp slt i32 %i.bar, 0
  br i1 %i.bas, label %.invoke191.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bat = load i32, ptr %i.oo, align 8, !tbaa !216 ; 3 uses
  %.not39.i.i.i.i121.i.i.i = icmp slt i32 %i.bar, %i.bat
  br i1 %.not39.i.i.i.i121.i.i.i, label %bb.cs, label %.invoke191.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.bau = lshr i32 %i.bar, 1
  %i.bav = and i32 %i.bar, 1
  %sext.i.i.i122.i.i.i = sub nsw i32 0, %i.bav
  %.1.i4.i.i.i.i.i.i = xor i32 %i.bau, %sext.i.i.i122.i.i.i ; 3 uses
  %i.baw = call i32 @llvm.abs.i32(i32 %.1.i4.i.i.i.i.i.i, i1 true)
  %i.bax = zext nneg i32 %i.axo to i64
  %i.bay = getelementptr inbounds nuw [8 x i8], ptr %i.aun, i64 %i.bax ; 4 uses
  %i.baz = load i32, ptr %i.bay, align 8, !tbaa !261
  %i.bba = add nsw i32 %i.baz, %i.baw             ; 2 uses
  store i32 %i.bba, ptr %i.bay, align 8, !tbaa !261
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bay, i64 4 ; 2 uses
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !262 ; 3 uses
  %i.bbd = load i32, ptr %i.op, align 8, !tbaa !213
  %i.bbe = icmp eq i32 %i.bbc, %i.bbd
  br i1 %i.bbe, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.bbf = ashr i32 %i.bba, 1
  store i32 %i.bbf, ptr %i.bay, align 8, !tbaa !261
  %i.bbg = ashr i32 %i.bbc, 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.bbh = phi i32 [ %i.bbg, %bb.ct ], [ %i.bbc, %bb.cs ]
  %i.bbi = add nsw i32 %i.bbh, 1
  store i32 %i.bbi, ptr %i.bbb, align 4, !tbaa !262
  %i.bbj = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, 0
  %i.bbk = sub nsw i32 0, %.1.i4.i.i.i.i.i.i
  %storemerge.i.p.i.i.i123.i.i.i = select i1 %i.bbj, i32 %i.bbk, i32 %.1.i4.i.i.i.i.i.i
  %storemerge.i.i.i.i124.i.i.i = add i32 %storemerge.i.p.i.i.i123.i.i.i, %i.axa ; 5 uses
  %i.bbl = icmp slt i32 %storemerge.i.i.i.i124.i.i.i, 0
  br i1 %i.bbl, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.bbm = add nsw i32 %i.bat, %storemerge.i.i.i.i124.i.i.i
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  %i.bbn = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.bbo = icmp sgt i32 %storemerge.i.i.i.i124.i.i.i, %i.bbn
  br i1 %i.bbo, label %bb.cx, label %.thread.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.bbp = sub nsw i32 %storemerge.i.i.i.i124.i.i.i, %i.bat
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  %.0.i37.i.i126.i.i.i = phi i32 [ %i.bbm, %bb.cv ], [ %i.bbp, %bb.cx ] ; 2 uses
  %i.bbq = icmp slt i32 %.0.i37.i.i126.i.i.i, 0
  br i1 %i.bbq, label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", label %..thread_crit_edge.i.i.i.i.i.i

..thread_crit_edge.i.i.i.i.i.i:                   ; preds = %bb.cy
  %.pre.i.i.i127.i.i.i = load i32, ptr %i.ol, align 8, !tbaa !94
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %..thread_crit_edge.i.i.i.i.i.i, %bb.cw
  %i.bbr = phi i32 [ %.pre.i.i.i127.i.i.i, %..thread_crit_edge.i.i.i.i.i.i ], [ %i.bbn, %bb.cw ]
  %.053.i.i.i.i.i.i = phi i32 [ %.0.i37.i.i126.i.i.i, %..thread_crit_edge.i.i.i.i.i.i ], [ %storemerge.i.i.i.i124.i.i.i, %bb.cw ]
  %.sroa.speculated45.i.i.i125.i.i.i = call i32 @llvm.smin.i32(i32 %i.bbr, i32 %.053.i.i.i.i.i.i)
  %i.bbs = trunc i32 %.sroa.speculated45.i.i.i125.i.i.i to i16
  br label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i"

"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i": ; preds = %.thread.i.i.i.i.i.i, %bb.cy
  %.034.i.i.i.i.i.i.i = phi i16 [ %i.bbs, %.thread.i.i.i.i.i.i ], [ 0, %bb.cy ]
  %i.bbt = icmp samesign ugt i32 %i.aut, %i.ave
  call void @llvm.assume(i1 %i.bbt)
  %i.bbu = mul nuw nsw i32 %i.ave, %i.auv         ; 2 uses
  %i.bbv = add nuw nsw i32 %i.bbu, %i.aur
  %i.bbw = icmp samesign ule i32 %i.bbv, %i.aup
  call void @llvm.assume(i1 %i.bbw)
  %i.bbx = zext nneg i32 %i.bbu to i64
  %i.bby = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bbx
  %i.bbz = getelementptr inbounds nuw [2 x i8], ptr %i.bby, i64 %i.avp
  store i16 %.034.i.i.i.i.i.i.i, ptr %i.bbz, align 2, !tbaa !92
  %i.bca = add nsw i32 %i.avd, 1
  store i32 %i.bca, ptr %indvars.iv.i.sroa.phi.i106.i.i.i, align 4, !tbaa !94
  br i1 %.not30.i.i105.i.i.i, label %.loopexit140.i.i.i.i.i, label %bb.cd, !llvm.loop !185

.loopexit140.i.i.i.i.i:                           ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %bb.cc
  %i.bcb = icmp samesign ugt i32 %.0150.i.i.i.i.i, 3
  br i1 %i.bcb, label %.preheader.i.i67.i.i.i, label %.loopexit.i.i53.i.i.i

.preheader.i.i67.i.i.i:                           ; preds = %.loopexit140.i.i.i.i.i
  call void @llvm.assume(i1 %i.auq)
  call void @llvm.assume(i1 %i.aus)
  call void @llvm.assume(i1 %i.auw)
  call void @llvm.assume(i1 %i.auy)
  %.val35.i.i68.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !136 ; 2 uses
  call void @llvm.assume(i1 %i.ava)
  %.promoted.i.pre.i.i69.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.pre.i.i70.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269 ; 2 uses
  br label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i: ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i, %.preheader.i.i67.i.i.i
  %i.bcc = phi i32 [ %.promoted16.i.pre.i.i70.i.i.i, %.preheader.i.i67.i.i.i ], [ %i.bhn, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %i.bcd = phi i32 [ %.promoted16.i.pre.i.i70.i.i.i, %.preheader.i.i67.i.i.i ], [ %i.bhz, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ] ; 2 uses
  %.promoted.i.i.i72.i.i.i = phi i32 [ %.promoted.i.pre.i.i69.i.i.i, %.preheader.i.i67.i.i.i ], [ %.promoted.i169.i.i.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %.not31.i.i73.i.i.i = phi i1 [ false, %.preheader.i.i67.i.i.i ], [ true, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %indvars.iv158.i.sroa.phi.i.i.i.i = phi ptr [ %1, %.preheader.i.i67.i.i.i ], [ %indvars.iv158.i.sroa.gep73.i.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %indvars.iv158.i.sroa.phi75.sroa.speculated.in.i.i.i.i = phi i32 [ %i.aud, %.preheader.i.i67.i.i.i ], [ %i.auj, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %i.bce = getelementptr inbounds nuw i8, ptr %indvars.iv158.i.sroa.phi.i.i.i.i, i64 4 ; 2 uses
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !94 ; 2 uses
  %i.bcg = and i32 %indvars.iv158.i.sroa.phi75.sroa.speculated.in.i.i.i.i, 255 ; 3 uses
  %i.bch = shl nsw i32 %i.bcf, 1                  ; 3 uses
  %i.bci = or disjoint i32 %i.bch, 1              ; 2 uses
  %i.bcj = icmp samesign ult i32 %i.bci, %i.aur
  call void @llvm.assume(i1 %i.bcj)
  %i.bck = icmp samesign ugt i32 %i.aut, %i.bcg
  call void @llvm.assume(i1 %i.bck)
  %i.bcl = mul nuw nsw i32 %i.bcg, %i.auv         ; 2 uses
  %i.bcm = add nuw nsw i32 %i.bcl, %i.aur
  %i.bcn = icmp samesign ule i32 %i.bcm, %i.aup
  call void @llvm.assume(i1 %i.bcn)
  %i.bco = zext nneg i32 %i.bcl to i64
  %i.bcp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bco ; 3 uses
  %i.bcq = zext nneg i32 %i.bci to i64            ; 2 uses
  %i.bcr = getelementptr inbounds nuw [2 x i8], ptr %i.bcp, i64 %i.bcq
  %i.bcs = load i16, ptr %i.bcr, align 2, !tbaa !92
  %i.bct = zext i16 %i.bcs to i32                 ; 2 uses
  %i.bcu = add nsw i32 %i.bcg, -1                 ; 2 uses
  %i.bcv = add nsw i32 %i.bch, 2                  ; 2 uses
  %i.bcw = icmp samesign ult i32 %i.bcv, %i.aur
  call void @llvm.assume(i1 %i.bcw)
  %i.bcx = icmp samesign ult i32 %i.bcu, %i.aut
  call void @llvm.assume(i1 %i.bcx)
  %i.bcy = mul nuw nsw i32 %i.bcu, %i.auv         ; 2 uses
  %i.bcz = add nuw nsw i32 %i.bcy, %i.aur
  %i.bda = icmp samesign ule i32 %i.bcz, %i.aup
  call void @llvm.assume(i1 %i.bda)
  %i.bdb = zext nneg i32 %i.bcy to i64
  %i.bdc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bdb ; 3 uses
  %i.bdd = zext nneg i32 %i.bcv to i64            ; 2 uses
  %i.bde = getelementptr inbounds nuw [2 x i8], ptr %i.bdc, i64 %i.bdd
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !92 ; 3 uses
  %i.bdg = zext i16 %i.bdf to i32                 ; 2 uses
  %i.bdh = getelementptr inbounds nuw [2 x i8], ptr %i.bdc, i64 %i.bcq
  %i.bdi = load i16, ptr %i.bdh, align 2, !tbaa !92 ; 3 uses
  %i.bdj = zext i16 %i.bdi to i32                 ; 2 uses
  %i.bdk = add nsw i32 %i.bch, 3                  ; 2 uses
  %i.bdl = icmp samesign ult i32 %i.bdk, %i.aur
  call void @llvm.assume(i1 %i.bdl)
  %i.bdm = zext nneg i32 %i.bdk to i64            ; 2 uses
  %i.bdn = getelementptr inbounds nuw [2 x i8], ptr %i.bdc, i64 %i.bdm
  %i.bdo = load i16, ptr %i.bdn, align 2, !tbaa !92 ; 2 uses
  %i.bdp = getelementptr inbounds nuw [2 x i8], ptr %i.bcp, i64 %i.bdm
  %i.bdq = load i16, ptr %i.bdp, align 2, !tbaa !92
  %i.bdr = zext i16 %i.bdq to i32
  %i.bds = add nuw nsw i32 %i.bdr, %i.bct         ; 2 uses
  %i.bdt = call i16 @llvm.umin.i16(i16 %i.bdo, i16 %i.bdi)
  %i.bdu = icmp ugt i16 %i.bdt, %i.bdf
  %i.bdv = call i16 @llvm.umax.i16(i16 %i.bdo, i16 %i.bdi)
  %i.bdw = icmp ult i16 %i.bdv, %i.bdf
  %or.cond.i.i.i74.i.i.i = or i1 %i.bdu, %i.bdw
  %i.bdx = lshr i32 %i.bds, 1
  %i.bdy = add nuw nsw i32 %i.bdx, %i.bdg
  %.0130.i.i.i.i.i = select i1 %or.cond.i.i.i74.i.i.i, i32 %i.bdy, i32 %i.bds
  %i.bdz = lshr i32 %.0130.i.i.i.i.i, 1
  %i.bea = sub nsw i32 %i.bdg, %i.bdj
  %i.beb = sub nsw i32 %i.bdj, %i.bct
  %i.bec = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.bed = add nsw i32 %i.bea, %i.bec
  %i.bee = sext i32 %i.bed to i64
  %i.bef = getelementptr inbounds nuw i8, ptr %.val35.i.i68.i.i.i, i64 %i.bee
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !93
  %i.beh = sext i8 %i.beg to i32
  %i.bei = mul nsw i32 %i.beh, 9
  %i.bej = add nsw i32 %i.beb, %i.bec
  %i.bek = sext i32 %i.bej to i64
  %i.bel = getelementptr inbounds nuw i8, ptr %.val35.i.i68.i.i.i, i64 %i.bek
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !93
  %i.ben = sext i8 %i.bem to i32
  %.sroa.081.0.extract.trunc.i.i.i.i.i = add nsw i32 %i.bei, %i.ben ; 2 uses
  %i.beo = call i32 @llvm.abs.i32(i32 %.sroa.081.0.extract.trunc.i.i.i.i.i, i1 true) ; 2 uses
  %.promoted17.i.i.i75.i.i.i = load i64, ptr %i.eq, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i
  %i.bep = phi i32 [ %i.bcc, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfm, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ]
  %i.beq = phi i32 [ %i.bcd, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfn, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ]
  %i.ber = phi i64 [ %.promoted17.i.i.i75.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bga, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ] ; 2 uses
  %i.bes = phi i32 [ %i.bcd, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfp, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ] ; 5 uses
  %i.bet = phi i32 [ %.promoted.i.i.i72.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfy, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ] ; 5 uses
  %.014.i.i.i77.i.i.i = phi i32 [ 0, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ]
  %i.beu = icmp samesign ult i32 %i.bet, 65
  call void @llvm.assume(i1 %i.beu)
  %.not.i.i54.i.i.i.i.i = icmp samesign ult i32 %i.bet, 32
  br i1 %.not.i.i54.i.i.i.i.i, label %bb.da, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i53.i.i.i.i.i)
  %i.bev = add nuw nsw i32 %i.bes, 4              ; 5 uses
  %.not.i.i.i57.i.i.i.i.i = icmp samesign ugt i32 %i.bev, %i.auz
  br i1 %.not.i.i.i57.i.i.i.i.i, label %bb.dc, label %bb.db, !prof !134

bb.db:                                            ; preds = %bb.da
  %i.bew = zext nneg i32 %i.bes to i64
  %i.bex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i, i64 %i.bew
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.bey = icmp samesign ugt i32 %i.bes, %i.avb
  br i1 %i.bey, label %.invoke.i.i12, label %bb.dd, !prof !134

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %.sroa.0.i.i.i53.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i61.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.bes) ; 3 uses
  %i.bez = add nuw nsw i32 %.sroa.speculated27.i.i.i.i61.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i62.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.bez)
  %i.bfa = sub nsw i32 %.sroa.speculated.i.i.i.i62.i.i.i.i.i, %.sroa.speculated27.i.i.i.i61.i.i.i.i.i ; 2 uses
  %i.bfb = icmp samesign ult i32 %i.bfa, 5
  call void @llvm.assume(i1 %i.bfb)
  %i.bfc = zext nneg i32 %.sroa.speculated27.i.i.i.i61.i.i.i.i.i to i64
  %i.bfd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i, i64 %i.bfc
  %i.bfe = zext nneg i32 %i.bfa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i53.i.i.i.i.i, ptr align 1 %i.bfd, i64 %i.bfe, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i: ; preds = %bb.dd, %bb.db
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i59.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i53.i.i.i.i.i, %bb.dd ], [ %i.bex, %bb.db ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i60.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i59.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i53.i.i.i.i.i)
  %i.bff = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i60.i.i.i.i.i)
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = or disjoint i32 %i.bet, 32
  %i.bfi = sub nuw nsw i32 32, %i.bet
  %i.bfj = zext nneg i32 %i.bfi to i64
  %i.bfk = shl nuw i64 %i.bfg, %i.bfj
  %i.bfl = or i64 %i.bfk, %i.ber
  store i32 %i.bev, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i, %bb.cz
  %i.bfm = phi i32 [ %i.bep, %bb.cz ], [ %i.bev, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ] ; 2 uses
  %i.bfn = phi i32 [ %i.beq, %bb.cz ], [ %i.bev, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ] ; 7 uses
  %i.bfo = phi i64 [ %i.ber, %bb.cz ], [ %i.bfl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ] ; 2 uses
  %i.bfp = phi i32 [ %i.bes, %bb.cz ], [ %i.bev, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ]
  %i.bfq = phi i32 [ %i.bet, %bb.cz ], [ %i.bfh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ]
  %i.bfr = lshr i64 %i.bfo, 32                    ; 2 uses
  %i.bfs = trunc nuw i64 %i.bfr to i32
  %i.bft = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bfs, i1 false) ; 2 uses
  %i.bfu = add nuw nsw i32 %i.bft, %.014.i.i.i77.i.i.i ; 3 uses
  %i.bfv = icmp eq i64 %i.bfr, 0                  ; 2 uses
  %i.bfw = add nuw nsw i32 %i.bft, 1
  %spec.select.i56.i.i.i.i.i = select i1 %i.bfv, i32 32, i32 %i.bfw ; 3 uses
  %i.bfx = icmp samesign ult i32 %spec.select.i56.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.bfx)
  %i.bfy = sub nuw nsw i32 %i.bfq, %spec.select.i56.i.i.i.i.i ; 6 uses
  store i32 %i.bfy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.bfz = zext nneg i32 %spec.select.i56.i.i.i.i.i to i64
  %i.bga = shl i64 %i.bfo, %i.bfz                 ; 4 uses
  store i64 %i.bga, ptr %i.eq, align 8, !tbaa !270
  br i1 %i.bfv, label %bb.cz, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i
  %i.bgb = load i32, ptr %i.om, align 4, !tbaa !218
  %i.bgc = load i32, ptr %i.on, align 4, !tbaa !217 ; 2 uses
  %i.bgd = xor i32 %i.bgc, -1
  %i.bge = add i32 %i.bgb, %i.bgd
  %i.bgf = icmp slt i32 %i.bfu, %i.bge
  br i1 %i.bgf, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i
  %i.bgg = zext nneg i32 %i.beo to i64
  %i.bgh = getelementptr inbounds nuw [8 x i8], ptr %i.auo, i64 %i.bgg ; 2 uses
  %i.bgi = load i32, ptr %i.bgh, align 8, !tbaa !261 ; 3 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgh, i64 4
  %i.bgk = load i32, ptr %i.bgj, align 4, !tbaa !262 ; 3 uses
  %i.bgl = icmp sgt i32 %i.bgi, -1
  call void @llvm.assume(i1 %i.bgl)
  %i.bgm = icmp sgt i32 %i.bgk, 0
  call void @llvm.assume(i1 %i.bgm)
  %i.bgn = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bgi, i1 false)
  %i.bgo = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bgk, i1 true)
  %i.bgp = sub nsw i32 %i.bgo, %i.bgn
  %.sroa.speculated11.i.i.i101.i.i.i = call i32 @llvm.smax.i32(i32 %i.bgp, i32 0) ; 2 uses
  %i.bgq = shl i32 %i.bgk, %.sroa.speculated11.i.i.i101.i.i.i
  %i.bgr = icmp slt i32 %i.bgq, %i.bgi
  %i.bgs = zext i1 %i.bgr to i32
  %spec.select.i63.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i101.i.i.i, %i.bgs
  %.sroa.speculated.i64.i.i.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i63.i.i.i.i.i, i32 15) ; 2 uses
  %i.bgt = shl i32 %i.bfu, %.sroa.speculated.i64.i.i.i.i.i
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i
  %.033.i.i.i79.i.i.i = phi i32 [ %.sroa.speculated.i64.i.i.i.i.i, %bb.de ], [ %i.bgc, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i ] ; 5 uses
  %.032.i.i.i80.i.i.i = phi i32 [ %i.bgt, %bb.de ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i ]
  %i.bgu = icmp sgt i32 %i.bfn, -1
  call void @llvm.assume(i1 %i.bgu)
  %.not.i65.i.i.i.i.i = icmp samesign ult i32 %i.bfy, 32
  br i1 %.not.i65.i.i.i.i.i, label %bb.dg, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i46.i.i.i)
  %i.bgv = add nuw nsw i32 %i.bfn, 4              ; 4 uses
  %.not.i.i66.i.i.i.i.i = icmp samesign ugt i32 %i.bgv, %i.auz
  br i1 %.not.i.i66.i.i.i.i.i, label %bb.di, label %bb.dh, !prof !134

bb.dh:                                            ; preds = %bb.dg
  %i.bgw = zext nneg i32 %i.bfn to i64
  %i.bgx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i, i64 %i.bgw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.bgy = icmp samesign ugt i32 %i.bfn, %i.avb
  br i1 %i.bgy, label %.invoke.i.i12, label %bb.dj, !prof !134

bb.dj:                                            ; preds = %bb.di
  store i32 0, ptr %.sroa.0.i.i.i.i46.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i99.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.bfn) ; 3 uses
  %i.bgz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i99.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i100.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.bgz)
  %i.bha = sub nsw i32 %.sroa.speculated.i.i.i.i.i100.i.i.i, %.sroa.speculated27.i.i.i.i.i99.i.i.i ; 2 uses
  %i.bhb = icmp samesign ult i32 %i.bha, 5
  call void @llvm.assume(i1 %i.bhb)
  %i.bhc = zext nneg i32 %.sroa.speculated27.i.i.i.i.i99.i.i.i to i64
  %i.bhd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i, i64 %i.bhc
  %i.bhe = zext nneg i32 %i.bha to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i46.i.i.i, ptr align 1 %i.bhd, i64 %i.bhe, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i: ; preds = %bb.dj, %bb.dh
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i97.i.i.i = phi ptr [ %.sroa.0.i.i.i.i46.i.i.i, %bb.dj ], [ %i.bgx, %bb.dh ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i98.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i97.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i46.i.i.i)
  %i.bhf = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i98.i.i.i)
  %i.bhg = zext i32 %i.bhf to i64
  %i.bhh = or disjoint i32 %i.bfy, 32             ; 2 uses
  %i.bhi = sub nuw nsw i32 32, %i.bfy
  %i.bhj = zext nneg i32 %i.bhi to i64
  %i.bhk = shl nuw i64 %i.bhg, %i.bhj
  %i.bhl = or i64 %i.bhk, %i.bga                  ; 2 uses
  store i64 %i.bhl, ptr %i.eq, align 8, !tbaa !270
  store i32 %i.bhh, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.bgv, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i, %bb.df
  %i.bhm = phi i64 [ %i.bga, %bb.df ], [ %i.bhl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i ] ; 2 uses
  %i.bhn = phi i32 [ %i.bfm, %bb.df ], [ %i.bgv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i ] ; 3 uses
  %i.bho = phi i32 [ %i.bfn, %bb.df ], [ %i.bgv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i ]
  %i.bhp = phi i32 [ %i.bfy, %bb.df ], [ %i.bhh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i ] ; 2 uses
  %.not.i.i.i82.i.i.i = icmp eq i32 %.033.i.i.i79.i.i.i, 0
  br i1 %.not.i.i.i82.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i
  %i.bhq = icmp sgt i32 %i.bhn, -1
  call void @llvm.assume(i1 %i.bhq)
  %i.bhr = icmp samesign ult i32 %.033.i.i.i79.i.i.i, 33
  call void @llvm.assume(i1 %i.bhr)
  %i.bhs = sub nuw nsw i32 64, %.033.i.i.i79.i.i.i
  %i.bht = zext nneg i32 %i.bhs to i64
  %i.bhu = lshr i64 %i.bhm, %i.bht
  %i.bhv = trunc nuw i64 %i.bhu to i32
  %i.bhw = sub nuw nsw i32 %i.bhp, %.033.i.i.i79.i.i.i ; 2 uses
  store i32 %i.bhw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.bhx = zext nneg i32 %.033.i.i.i79.i.i.i to i64
  %i.bhy = shl i64 %i.bhm, %i.bhx
  store i64 %i.bhy, ptr %i.eq, align 8, !tbaa !270
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i
  %i.bhz = phi i32 [ %i.bhn, %bb.dk ], [ %i.bho, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i ]
  %.promoted.i169.i.i.i.i.i = phi i32 [ %i.bhw, %bb.dk ], [ %i.bhp, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i ]
  %.0.i.i.i83.i.i.i = phi i32 [ %i.bhv, %bb.dk ], [ 0, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i ]
  %i.bia = add nsw i32 %.0.i.i.i83.i.i.i, %.032.i.i.i80.i.i.i ; 4 uses
  %i.bib = icmp slt i32 %i.bia, 0
  br i1 %i.bib, label %.invoke191.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bic = load i32, ptr %i.oo, align 8, !tbaa !216 ; 3 uses
  %.not39.i.i.i84.i.i.i = icmp slt i32 %i.bia, %i.bic
  br i1 %.not39.i.i.i84.i.i.i, label %bb.dn, label %.invoke191.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.bid = lshr i32 %i.bia, 1
  %i.bie = and i32 %i.bia, 1
  %sext.i.i85.i.i.i = sub nsw i32 0, %i.bie
  %.1.i.i.i86.i.i.i = xor i32 %i.bid, %sext.i.i85.i.i.i ; 3 uses
  %i.bif = call i32 @llvm.abs.i32(i32 %.1.i.i.i86.i.i.i, i1 true)
  %i.big = zext nneg i32 %i.beo to i64
  %i.bih = getelementptr inbounds nuw [8 x i8], ptr %i.auo, i64 %i.big ; 4 uses
  %i.bii = load i32, ptr %i.bih, align 8, !tbaa !261
  %i.bij = add nsw i32 %i.bii, %i.bif             ; 2 uses
  store i32 %i.bij, ptr %i.bih, align 8, !tbaa !261
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bih, i64 4 ; 2 uses
  %i.bil = load i32, ptr %i.bik, align 4, !tbaa !262 ; 3 uses
  %i.bim = load i32, ptr %i.op, align 8, !tbaa !213
  %i.bin = icmp eq i32 %i.bil, %i.bim
  br i1 %i.bin, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.bio = ashr i32 %i.bij, 1
  store i32 %i.bio, ptr %i.bih, align 8, !tbaa !261
  %i.bip = ashr i32 %i.bil, 1
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.biq = phi i32 [ %i.bip, %bb.do ], [ %i.bil, %bb.dn ]
  %i.bir = add nsw i32 %i.biq, 1
  store i32 %i.bir, ptr %i.bik, align 4, !tbaa !262
  %i.bis = icmp slt i32 %.sroa.081.0.extract.trunc.i.i.i.i.i, 0
  %i.bit = sub nsw i32 0, %.1.i.i.i86.i.i.i
  %storemerge.i.p.i.i87.i.i.i = select i1 %i.bis, i32 %i.bit, i32 %.1.i.i.i86.i.i.i
  %storemerge.i.i.i88.i.i.i = add i32 %storemerge.i.p.i.i87.i.i.i, %i.bdz ; 5 uses
  %i.biu = icmp slt i32 %storemerge.i.i.i88.i.i.i, 0
  br i1 %i.biu, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.biv = add nsw i32 %i.bic, %storemerge.i.i.i88.i.i.i
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dp
  %i.biw = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.bix = icmp sgt i32 %storemerge.i.i.i88.i.i.i, %i.biw
  br i1 %i.bix, label %bb.ds, label %.thread.i.i89.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.biy = sub nsw i32 %storemerge.i.i.i88.i.i.i, %i.bic
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dq
  %.0131.i.i93.i.i.i = phi i32 [ %i.biv, %bb.dq ], [ %i.biy, %bb.ds ] ; 2 uses
  %i.biz = icmp slt i32 %.0131.i.i93.i.i.i, 0
  br i1 %i.biz, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i, label %..thread_crit_edge.i.i94.i.i.i

..thread_crit_edge.i.i94.i.i.i:                   ; preds = %bb.dt
  %.pre.i.i95.i.i.i = load i32, ptr %i.ol, align 8, !tbaa !94
  br label %.thread.i.i89.i.i.i

.thread.i.i89.i.i.i:                              ; preds = %..thread_crit_edge.i.i94.i.i.i, %bb.dr
  %i.bja = phi i32 [ %.pre.i.i95.i.i.i, %..thread_crit_edge.i.i94.i.i.i ], [ %i.biw, %bb.dr ]
  %.0131133.i.i.i.i.i = phi i32 [ %.0131.i.i93.i.i.i, %..thread_crit_edge.i.i94.i.i.i ], [ %storemerge.i.i.i88.i.i.i, %bb.dr ]
  %.sroa.speculated.i.i90.i.i.i = call i32 @llvm.smin.i32(i32 %i.bja, i32 %.0131133.i.i.i.i.i)
  %i.bjb = trunc i32 %.sroa.speculated.i.i90.i.i.i to i16
  br label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i: ; preds = %.thread.i.i89.i.i.i, %bb.dt
  %.034.i.i.i92.i.i.i = phi i16 [ %i.bjb, %.thread.i.i89.i.i.i ], [ 0, %bb.dt ]
  %i.bjc = getelementptr inbounds nuw [2 x i8], ptr %i.bcp, i64 %i.bdd
  store i16 %.034.i.i.i92.i.i.i, ptr %i.bjc, align 2, !tbaa !92
  %i.bjd = add nsw i32 %i.bcf, 1
  store i32 %i.bjd, ptr %i.bce, align 4, !tbaa !94
  br i1 %.not31.i.i73.i.i.i, label %.loopexit.i.i53.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i, !llvm.loop !186

.loopexit.i.i53.i.i.i:                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i, %.loopexit140.i.i.i.i.i
  %i.bje = add nuw nsw i32 %.0150.i.i.i.i.i, 1
  %.not.i9.i54.i.i.i = icmp eq i32 %.0150.i.i.i.i.i, %i.oq
  br i1 %.not.i9.i54.i.i.i, label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_23fuji_bayer_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i", label %bb.cc, !llvm.loop !187

"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_23fuji_bayer_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i": ; preds = %.loopexit.i.i53.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.assume(i1 %i.auq)
  call void @llvm.assume(i1 %i.auu)
  call void @llvm.assume(i1 %i.auw)
  call void @llvm.assume(i1 %i.auy)
  %i.bjf = icmp samesign ugt i32 %i.aur, 1
  call void @llvm.assume(i1 %i.bjf)
  %i.bjg = zext i32 %i.aur to i64                 ; 60 uses
  %i.bjh = zext i32 %i.auv to i64                 ; 24 uses
  %i.bji = zext nneg i32 %i.aup to i64            ; 44 uses
  %i.bjj = sext i32 %i.auv to i64                 ; 26 uses
  %i.bjk = sext i32 %i.aur to i64                 ; 24 uses
  switch i8 %i.atw, label %bb.dx [
    i8 0, label %bb.du
    i8 1, label %bb.dv
    i8 2, label %bb.dw
  ]

bb.du:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_23fuji_bayer_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i"
  %i.bjl = add nuw nsw i64 %i.bjj, %i.bjk
  %i.bjm = icmp samesign ule i64 %i.bjl, %i.bji
  call void @llvm.assume(i1 %i.bjm)
  %i.bjn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bjj ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 2
  %i.bjp = load i16, ptr %i.bjo, align 2, !tbaa !92
  %i.bjq = icmp samesign ugt i32 %i.aut, 2
  call void @llvm.assume(i1 %i.bjq)
  %i.bjr = shl nuw nsw i64 %i.bjh, 1              ; 2 uses
  %i.bjs = add nuw nsw i64 %i.bjr, %i.bjg
  %i.bjt = icmp samesign ule i64 %i.bjs, %i.bji
  call void @llvm.assume(i1 %i.bjt)
  %i.bju = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bjr ; 2 uses
  store i16 %i.bjp, ptr %i.bju, align 2, !tbaa !92
  %i.bjv = getelementptr [2 x i8], ptr %i.bjn, i64 %i.bjg
  %i.bjw = getelementptr i8, ptr %i.bjv, i64 -4
  %i.bjx = load i16, ptr %i.bjw, align 2, !tbaa !92
  %i.bjy = getelementptr [2 x i8], ptr %i.bju, i64 %i.bjg
  %i.bjz = getelementptr i8, ptr %i.bjy, i64 -2
  store i16 %i.bjx, ptr %i.bjz, align 2, !tbaa !92
  %i.bka = shl nuw nsw i64 %i.bjj, 1              ; 2 uses
  %i.bkb = add nuw nsw i64 %i.bka, %i.bjk
  %i.bkc = icmp samesign ule i64 %i.bkb, %i.bji
  call void @llvm.assume(i1 %i.bkc)
  %i.bkd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bka ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 2
  %i.bkf = load i16, ptr %i.bke, align 2, !tbaa !92
  %i.bkg = icmp samesign ugt i32 %i.aut, 3
  call void @llvm.assume(i1 %i.bkg)
  %i.bkh = mul nuw nsw i64 %i.bjh, 3              ; 2 uses
  %i.bki = add nuw nsw i64 %i.bkh, %i.bjg
  %i.bkj = icmp samesign ule i64 %i.bki, %i.bji
  call void @llvm.assume(i1 %i.bkj)
  %i.bkk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bkh ; 2 uses
  store i16 %i.bkf, ptr %i.bkk, align 2, !tbaa !92
  %i.bkl = getelementptr [2 x i8], ptr %i.bkd, i64 %i.bjg
  %i.bkm = getelementptr i8, ptr %i.bkl, i64 -4
  %i.bkn = load i16, ptr %i.bkm, align 2, !tbaa !92
  %i.bko = getelementptr [2 x i8], ptr %i.bkk, i64 %i.bjg
  %i.bkp = getelementptr i8, ptr %i.bko, i64 -2
  store i16 %i.bkn, ptr %i.bkp, align 2, !tbaa !92
  %i.bkq = mul nuw nsw i64 %i.bjj, 3              ; 2 uses
  %i.bkr = add nuw nsw i64 %i.bkq, %i.bjk
  %i.bks = icmp samesign ule i64 %i.bkr, %i.bji
  call void @llvm.assume(i1 %i.bks)
  %i.bkt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bkq ; 2 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 2
  %i.bkv = icmp samesign ugt i32 %i.aut, 4
  call void @llvm.assume(i1 %i.bkv)
  %i.bkw = shl nuw nsw i64 %i.bjh, 2
  br label %bb.dy

bb.dv:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_23fuji_bayer_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i"
  %i.bkx = mul nuw nsw i64 %i.bjj, 6              ; 2 uses
  %i.bky = add nuw nsw i64 %i.bkx, %i.bjk
  %i.bkz = icmp samesign ule i64 %i.bky, %i.bji
  call void @llvm.assume(i1 %i.bkz)
  %i.bla = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bkx ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 2
  %i.blc = load i16, ptr %i.blb, align 2, !tbaa !92
  %i.bld = icmp samesign ugt i32 %i.aut, 7
  call void @llvm.assume(i1 %i.bld)
  %i.ble = mul nuw nsw i64 %i.bjh, 7              ; 2 uses
  %i.blf = add nuw nsw i64 %i.ble, %i.bjg
  %i.blg = icmp samesign ule i64 %i.blf, %i.bji
  call void @llvm.assume(i1 %i.blg)
  %i.blh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.ble ; 2 uses
  store i16 %i.blc, ptr %i.blh, align 2, !tbaa !92
  %i.bli = getelementptr [2 x i8], ptr %i.bla, i64 %i.bjg
  %i.blj = getelementptr i8, ptr %i.bli, i64 -4
  %i.blk = load i16, ptr %i.blj, align 2, !tbaa !92
  %i.bll = getelementptr [2 x i8], ptr %i.blh, i64 %i.bjg
  %i.blm = getelementptr i8, ptr %i.bll, i64 -2
  store i16 %i.blk, ptr %i.blm, align 2, !tbaa !92
  %i.bln = mul nuw nsw i64 %i.bjj, 7              ; 2 uses
  %i.blo = add nuw nsw i64 %i.bln, %i.bjk
  %i.blp = icmp samesign ule i64 %i.blo, %i.bji
  call void @llvm.assume(i1 %i.blp)
  %i.blq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bln ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 2
  %i.bls = load i16, ptr %i.blr, align 2, !tbaa !92
  %i.blt = icmp samesign ugt i32 %i.aut, 8
  call void @llvm.assume(i1 %i.blt)
  %i.blu = shl nuw nsw i64 %i.bjh, 3              ; 2 uses
  %i.blv = add nuw nsw i64 %i.blu, %i.bjg
  %i.blw = icmp samesign ule i64 %i.blv, %i.bji
  call void @llvm.assume(i1 %i.blw)
  %i.blx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.blu ; 2 uses
  store i16 %i.bls, ptr %i.blx, align 2, !tbaa !92
  %i.bly = getelementptr [2 x i8], ptr %i.blq, i64 %i.bjg
  %i.blz = getelementptr i8, ptr %i.bly, i64 -4
  %i.bma = load i16, ptr %i.blz, align 2, !tbaa !92
  %i.bmb = getelementptr [2 x i8], ptr %i.blx, i64 %i.bjg
  %i.bmc = getelementptr i8, ptr %i.bmb, i64 -2
  store i16 %i.bma, ptr %i.bmc, align 2, !tbaa !92
  %i.bmd = shl nuw nsw i64 %i.bjj, 3              ; 2 uses
  %i.bme = add nuw nsw i64 %i.bmd, %i.bjk
  %i.bmf = icmp samesign ule i64 %i.bme, %i.bji
  call void @llvm.assume(i1 %i.bmf)
  %i.bmg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bmd ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 2
  %i.bmi = load i16, ptr %i.bmh, align 2, !tbaa !92
  %i.bmj = icmp samesign ugt i32 %i.aut, 9
  call void @llvm.assume(i1 %i.bmj)
  %i.bmk = mul nuw nsw i64 %i.bjh, 9              ; 2 uses
  %i.bml = add nuw nsw i64 %i.bmk, %i.bjg
  %i.bmm = icmp samesign ule i64 %i.bml, %i.bji
  call void @llvm.assume(i1 %i.bmm)
  %i.bmn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bmk ; 2 uses
  store i16 %i.bmi, ptr %i.bmn, align 2, !tbaa !92
  %i.bmo = getelementptr [2 x i8], ptr %i.bmg, i64 %i.bjg
  %i.bmp = getelementptr i8, ptr %i.bmo, i64 -4
  %i.bmq = load i16, ptr %i.bmp, align 2, !tbaa !92
  %i.bmr = getelementptr [2 x i8], ptr %i.bmn, i64 %i.bjg
  %i.bms = getelementptr i8, ptr %i.bmr, i64 -2
  store i16 %i.bmq, ptr %i.bms, align 2, !tbaa !92
  %i.bmt = mul nuw nsw i64 %i.bjj, 9              ; 2 uses
  %i.bmu = add nuw nsw i64 %i.bmt, %i.bjk
  %i.bmv = icmp samesign ule i64 %i.bmu, %i.bji
  call void @llvm.assume(i1 %i.bmv)
  %i.bmw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bmt ; 2 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 2
  %i.bmy = load i16, ptr %i.bmx, align 2, !tbaa !92
  %i.bmz = icmp samesign ugt i32 %i.aut, 10
  call void @llvm.assume(i1 %i.bmz)
  %i.bna = mul nuw nsw i64 %i.bjh, 10             ; 2 uses
  %i.bnb = add nuw nsw i64 %i.bna, %i.bjg
  %i.bnc = icmp samesign ule i64 %i.bnb, %i.bji
  call void @llvm.assume(i1 %i.bnc)
  %i.bnd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bna ; 2 uses
  store i16 %i.bmy, ptr %i.bnd, align 2, !tbaa !92
  %i.bne = getelementptr [2 x i8], ptr %i.bmw, i64 %i.bjg
  %i.bnf = getelementptr i8, ptr %i.bne, i64 -4
  %i.bng = load i16, ptr %i.bnf, align 2, !tbaa !92
  %i.bnh = getelementptr [2 x i8], ptr %i.bnd, i64 %i.bjg
  %i.bni = getelementptr i8, ptr %i.bnh, i64 -2
  store i16 %i.bng, ptr %i.bni, align 2, !tbaa !92
  %i.bnj = mul nuw nsw i64 %i.bjj, 10             ; 2 uses
  %i.bnk = add nuw nsw i64 %i.bnj, %i.bjk
  %i.bnl = icmp samesign ule i64 %i.bnk, %i.bji
  call void @llvm.assume(i1 %i.bnl)
  %i.bnm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bnj ; 2 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 2
  %i.bno = load i16, ptr %i.bnn, align 2, !tbaa !92
  %i.bnp = icmp samesign ugt i32 %i.aut, 11
  call void @llvm.assume(i1 %i.bnp)
  %i.bnq = mul nuw nsw i64 %i.bjh, 11             ; 2 uses
  %i.bnr = add nuw nsw i64 %i.bnq, %i.bjg
  %i.bns = icmp samesign ule i64 %i.bnr, %i.bji
  call void @llvm.assume(i1 %i.bns)
  %i.bnt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bnq ; 2 uses
  store i16 %i.bno, ptr %i.bnt, align 2, !tbaa !92
  %i.bnu = getelementptr [2 x i8], ptr %i.bnm, i64 %i.bjg
  %i.bnv = getelementptr i8, ptr %i.bnu, i64 -4
  %i.bnw = load i16, ptr %i.bnv, align 2, !tbaa !92
  %i.bnx = getelementptr [2 x i8], ptr %i.bnt, i64 %i.bjg
  %i.bny = getelementptr i8, ptr %i.bnx, i64 -2
  store i16 %i.bnw, ptr %i.bny, align 2, !tbaa !92
  %i.bnz = mul nuw nsw i64 %i.bjj, 11             ; 2 uses
  %i.boa = add nuw nsw i64 %i.bnz, %i.bjk
  %i.bob = icmp samesign ule i64 %i.boa, %i.bji
  call void @llvm.assume(i1 %i.bob)
  %i.boc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bnz ; 2 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 2
  %i.boe = icmp samesign ugt i32 %i.aut, 12
  call void @llvm.assume(i1 %i.boe)
  %i.bof = mul nuw nsw i64 %i.bjh, 12
  br label %bb.dy

bb.dw:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_blockIZNS1_23fuji_bayer_decode_blockEiE3$_0EEvT_iENKUlSt5arrayINS0_8xt_linesELm2EEiE_clES7_i.exit.i.i.i.i"
  %i.bog = mul nuw nsw i64 %i.bjj, 14             ; 2 uses
  %i.boh = add nuw nsw i64 %i.bog, %i.bjk
end_hunk_1
