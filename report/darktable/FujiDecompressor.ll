Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
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
  %.017.i97.i.i.i.i = phi i32 [ 0, %bb.t ], [ %i.atp, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i ] ; 8 uses
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
  %.0151.i.i.i.i.i = phi i32 [ 0, %switch.lookup ], [ %i.agb, %.loopexit.i.i.i.i.i ] ; 5 uses
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
  %12 = icmp samesign ule i32 %i.qp, %i.qe
  call void @llvm.assume(i1 %12)
  %i.ra = zext nneg i32 %i.qp to i64
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.ra
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !92
  %i.rd = zext i16 %i.rc to i32                   ; 2 uses
  %i.re = add nuw nsw i32 %i.qp, 2                ; 2 uses
  %i.rf = icmp samesign ult i32 %i.re, %i.qe
  call void @llvm.assume(i1 %i.rf)
  %i.rg = zext nneg i32 %i.re to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.rg
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !92
  %i.rj = zext i16 %i.ri to i32                   ; 3 uses
  %i.rk = add nsw i32 %i.qn, -2                   ; 2 uses
  %i.rl = icmp samesign ult i32 %i.rk, %i.qf
  call void @llvm.assume(i1 %i.rl)
  %i.rm = mul nuw nsw i32 %i.rk, %i.qg
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.rn
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.ro, i64 %i.qw
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !92
  %i.rr = zext i16 %i.rq to i32                   ; 2 uses
  %i.rs = sub nsw i32 %i.rd, %i.qz
  %i.rt = call i32 @llvm.abs.i32(i32 %i.rs, i1 true) ; 2 uses
  %i.ru = sub nsw i32 %i.rr, %i.qz
  %i.rv = call i32 @llvm.abs.i32(i32 %i.ru, i1 true) ; 2 uses
  %i.rw = sub nsw i32 %i.rj, %i.qz
  %i.rx = call i32 @llvm.abs.i32(i32 %i.rw, i1 true) ; 2 uses
  %.sroa.speculated45.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.rv, i32 %i.rx)
  %i.ry = icmp samesign ugt i32 %i.rt, %.sroa.speculated45.i.i.i.i.i.i ; 2 uses
  %.sroa.speculated51.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.rt, i32 %i.rv)
  %i.rz = icmp samesign ugt i32 %i.rx, %.sroa.speculated51.i.i.i.i.i.i
  %i.sa = select i1 %i.ry, i1 true, i1 %i.rz
  %.1.i67.i.i.i.i.i.i = select i1 %i.sa, i32 %i.rr, i32 %i.rj
  %.0.i68.i.i.i.i.i.i = select i1 %i.ry, i32 %i.rj, i32 %i.rd
  %i.sb = shl nuw nsw i32 %i.qz, 1
  %i.sc = add nuw nsw i32 %.0.i68.i.i.i.i.i.i, %i.sb
  %i.sd = add nuw nsw i32 %i.sc, %.1.i67.i.i.i.i.i.i
  %i.se = lshr i32 %i.sd, 2
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
  %i.sf = and i32 %indvars.iv.i.sroa.phi78.sroa.speculated.in.i.i.i.i, 255 ; 4 uses
  %i.sg = add nsw i32 %i.sf, -1                   ; 2 uses
  %i.sh = shl nsw i32 %i.qm, 1                    ; 4 uses
  %i.si = or disjoint i32 %i.sh, 1                ; 2 uses
  call void @llvm.assume(i1 %i.qh)
  %i.sj = icmp samesign ult i32 %i.si, %i.qe
  call void @llvm.assume(i1 %i.sj)
  %i.sk = icmp samesign ult i32 %i.sg, %i.qf
  call void @llvm.assume(i1 %i.sk)
  %i.sl = mul nuw nsw i32 %i.sg, %i.qg
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.sm ; 3 uses
  %i.so = zext nneg i32 %i.si to i64              ; 4 uses
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.sn, i64 %i.so
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !92
  %i.sr = zext i16 %i.sq to i32                   ; 5 uses
  %13 = icmp samesign ule i32 %i.sh, %i.qe
  call void @llvm.assume(i1 %13)
  %i.ss = zext nneg i32 %i.sh to i64
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.sn, i64 %i.ss
  %i.su = load i16, ptr %i.st, align 2, !tbaa !92
  %i.sv = zext i16 %i.su to i32                   ; 2 uses
  %i.sw = add nuw nsw i32 %i.sh, 2                ; 2 uses
  %i.sx = icmp samesign ult i32 %i.sw, %i.qe
  call void @llvm.assume(i1 %i.sx)
  %i.sy = zext nneg i32 %i.sw to i64
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.sn, i64 %i.sy
  %i.ta = load i16, ptr %i.sz, align 2, !tbaa !92
  %i.tb = zext i16 %i.ta to i32                   ; 3 uses
  %i.tc = add nsw i32 %i.sf, -2                   ; 2 uses
  %i.td = icmp samesign ult i32 %i.tc, %i.qf
  call void @llvm.assume(i1 %i.td)
  %i.te = mul nuw nsw i32 %i.tc, %i.qg
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.tf
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.so
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !92
  %i.tj = zext i16 %i.ti to i32                   ; 3 uses
  %i.tk = sub nsw i32 %i.sv, %i.sr                ; 2 uses
  %i.tl = call i32 @llvm.abs.i32(i32 %i.tk, i1 true) ; 2 uses
  %i.tm = sub nsw i32 %i.tj, %i.sr
  %i.tn = call i32 @llvm.abs.i32(i32 %i.tm, i1 true) ; 2 uses
  %i.to = sub nsw i32 %i.tb, %i.sr
  %i.tp = call i32 @llvm.abs.i32(i32 %i.to, i1 true) ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.tn, i32 %i.tp)
  %i.tq = icmp samesign ugt i32 %i.tl, %.sroa.speculated.i.i.i.i.i.i ; 2 uses
  %.sroa.speculated9.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.tl, i32 %i.tn)
  %i.tr = icmp samesign ugt i32 %i.tp, %.sroa.speculated9.i.i.i.i.i.i
  %i.ts = select i1 %i.tq, i1 true, i1 %i.tr
  %.1.i.i.i.i.i.i.i = select i1 %i.ts, i32 %i.tj, i32 %i.tb
  %.0.i.i.i.i.i.i.i = select i1 %i.tq, i32 %i.tb, i32 %i.sv
  %i.tt = shl nuw nsw i32 %i.sr, 1
  %i.tu = add nuw nsw i32 %.0.i.i.i.i.i.i.i, %i.tt
  %i.tv = add nuw nsw i32 %i.tu, %.1.i.i.i.i.i.i.i
  %i.tw = lshr i32 %i.tv, 2
  %i.tx = sub nsw i32 %i.sr, %i.tj
  %i.ty = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.tz = add nsw i32 %i.tx, %i.ty
  %.val72.i.i.i.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !136 ; 2 uses
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %.val72.i.i.i.i.i.i, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !93
  %i.ud = sext i8 %i.uc to i32
  %i.ue = mul nsw i32 %i.ud, 9
  %i.uf = add nsw i32 %i.ty, %i.tk
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %.val72.i.i.i.i.i.i, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !93
  %i.uj = sext i8 %i.ui to i32
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i = add nsw i32 %i.ue, %i.uj ; 2 uses
  %i.uk = call i32 @llvm.abs.i32(i32 %.sroa.01.0.extract.trunc.i.i.i.i.i.i, i1 true) ; 2 uses
  call void @llvm.assume(i1 %i.qj)
  %.promoted.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.i.i.i.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  %.promoted17.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
  %i.ul = phi i64 [ %.promoted17.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.um = phi i32 [ %.promoted16.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vj, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.un = phi i32 [ %.promoted.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vs, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.014.i.i.i.i.i.i.i = phi i32 [ 0, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vo, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ]
  %i.uo = icmp samesign ult i32 %i.un, 65
  call void @llvm.assume(i1 %i.uo)
  %.not.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.un, 32
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %i.up = add nuw nsw i32 %i.um, 4                ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %i.up, %i.qi
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af, !prof !134

bb.af:                                            ; preds = %bb.ae
  %i.uq = zext nneg i32 %i.um to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.uq
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.us = icmp samesign ugt i32 %i.um, %i.qk
  br i1 %i.us, label %.invoke.i.i12, label %bb.ah, !prof !134

.invoke.i.i12:                                    ; preds = %bb.cn, %bb.di, %bb.am, %bb.bh, %bb.ch, %bb.dc, %bb.ag, %bb.bb, %bb.q
  %i.ut = phi ptr [ @.str.20, %bb.q ], [ @.str.23, %bb.di ], [ @.str.23, %bb.ch ], [ @.str.23, %bb.bh ], [ @.str.23, %bb.dc ], [ @.str.23, %bb.ag ], [ @.str.23, %bb.am ], [ @.str.23, %bb.bb ], [ @.str.23, %bb.cn ]
  %i.uu = phi ptr [ @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE, %bb.q ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.di ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.ch ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.bh ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.dc ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.ag ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.am ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.bb ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.cn ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.ut, ptr noundef nonnull %i.uu) #17
          to label %.cont.i.i13 unwind label %bb.ej

.cont.i.i13:                                      ; preds = %.invoke.i.i12
  unreachable

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.um) ; 3 uses
  %i.uv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.uv)
  %i.uw = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ux = icmp samesign ult i32 %i.uw, 5
  call void @llvm.assume(i1 %i.ux)
  %i.uy = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i to i64
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.uy
  %i.va = zext nneg i32 %i.uw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i.i.i.i, ptr align 1 %i.uz, i64 %i.va, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %i.ur, %bb.af ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %i.vb = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i.i)
  %i.vc = zext i32 %i.vb to i64
  %i.vd = or disjoint i32 %i.un, 32
  %i.ve = sub nuw nsw i32 32, %i.un
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = shl nuw i64 %i.vc, %i.vf
  %i.vh = or i64 %i.vg, %i.ul
  store i32 %i.up, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i, %bb.ad
  %i.vi = phi i64 [ %i.ul, %bb.ad ], [ %i.vh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.vj = phi i32 [ %i.um, %bb.ad ], [ %i.up, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.vk = phi i32 [ %i.un, %bb.ad ], [ %i.vd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ]
  %i.vl = lshr i64 %i.vi, 32                      ; 2 uses
  %i.vm = trunc nuw i64 %i.vl to i32
  %i.vn = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vm, i1 false) ; 2 uses
  %i.vo = add nuw nsw i32 %i.vn, %.014.i.i.i.i.i.i.i ; 3 uses
  %i.vp = icmp eq i64 %i.vl, 0                    ; 2 uses
  %i.vq = add nuw nsw i32 %i.vn, 1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.vp, i32 32, i32 %i.vq ; 3 uses
  %i.vr = icmp samesign ult i32 %spec.select.i.i.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.vr)
  %i.vs = sub nuw nsw i32 %i.vk, %spec.select.i.i.i.i.i.i.i ; 6 uses
  store i32 %i.vs, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.vt = zext nneg i32 %spec.select.i.i.i.i.i.i.i to i64
  %i.vu = shl i64 %i.vi, %i.vt                    ; 4 uses
  store i64 %i.vu, ptr %i.eq, align 8, !tbaa !270
  br i1 %i.vp, label %bb.ad, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i
  %i.vv = load i32, ptr %i.om, align 4, !tbaa !218
  %i.vw = load i32, ptr %i.on, align 4, !tbaa !217 ; 2 uses
  %i.vx = xor i32 %i.vw, -1
  %i.vy = add i32 %i.vv, %i.vx
  %i.vz = icmp slt i32 %i.vo, %i.vy
  br i1 %i.vz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i
  %i.wa = zext nneg i32 %i.uk to i64
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.wa ; 2 uses
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !261 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !262 ; 3 uses
  %i.wf = icmp sgt i32 %i.wc, -1
  call void @llvm.assume(i1 %i.wf)
  %i.wg = icmp sgt i32 %i.we, 0
  call void @llvm.assume(i1 %i.wg)
  %i.wh = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.wc, i1 false)
  %i.wi = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.we, i1 true)
  %i.wj = sub nsw i32 %i.wi, %i.wh
  %.sroa.speculated11.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.wj, i32 0) ; 2 uses
  %i.wk = shl i32 %i.we, %.sroa.speculated11.i.i.i.i.i.i.i
  %i.wl = icmp slt i32 %i.wk, %i.wc
  %i.wm = zext i1 %i.wl to i32
  %spec.select.i100.i.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i.i.i.i.i, %i.wm
  %.sroa.speculated.i.i.i.i.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i100.i.i.i.i.i.i, i32 15) ; 2 uses
  %i.wn = shl i32 %i.vo, %.sroa.speculated.i.i.i.i.i.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i
  %.033.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.i.i.i.i.i.i.i, %bb.ai ], [ %i.vw, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i ] ; 5 uses
  %.032.i.i.i.i.i.i.i = phi i32 [ %i.wn, %bb.ai ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i ]
  %i.wo = icmp sgt i32 %i.vj, -1
  call void @llvm.assume(i1 %i.wo)
  %.not.i101.i.i.i.i.i.i = icmp samesign ult i32 %i.vs, 32
  br i1 %.not.i101.i.i.i.i.i.i, label %bb.ak, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  %i.wp = add nuw nsw i32 %i.vj, 4                ; 2 uses
  %.not.i.i102.i.i.i.i.i.i = icmp samesign ugt i32 %i.wp, %i.qi
  br i1 %.not.i.i102.i.i.i.i.i.i, label %bb.am, label %bb.al, !prof !134

bb.al:                                            ; preds = %bb.ak
  %i.wq = zext nneg i32 %i.vj to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.wq
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ws = icmp samesign ugt i32 %i.vj, %i.qk
  br i1 %i.ws, label %.invoke.i.i12, label %bb.an, !prof !134

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.vj) ; 3 uses
  %i.wt = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.wt)
  %i.wu = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wv = icmp samesign ult i32 %i.wu, 5
  call void @llvm.assume(i1 %i.wv)
  %i.ww = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.ww
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  %i.arg = add nuw nsw i64 %i.arf, %i.age
  %i.arh = icmp samesign ule i64 %i.arg, %i.agg
  call void @llvm.assume(i1 %i.arh)
  %i.ari = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.arf ; 2 uses
  store i16 %i.ard, ptr %i.ari, align 2, !tbaa !92
  %i.arj = getelementptr [2 x i8], ptr %i.arb, i64 %i.age
  %i.ark = getelementptr i8, ptr %i.arj, i64 -4
  %i.arl = load i16, ptr %i.ark, align 2, !tbaa !92
  %i.arm = getelementptr [2 x i8], ptr %i.ari, i64 %i.age
  %i.arn = getelementptr i8, ptr %i.arm, i64 -2
  store i16 %i.arl, ptr %i.arn, align 2, !tbaa !92
  %i.aro = mul nuw nsw i64 %i.agh, 11             ; 2 uses
  %i.arp = add nuw nsw i64 %i.aro, %i.agi
  %i.arq = icmp samesign ule i64 %i.arp, %i.agg
  call void @llvm.assume(i1 %i.arq)
  %i.arr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.aro ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 2
  %i.art = icmp samesign ugt i32 %i.pu, 12
  call void @llvm.assume(i1 %i.art)
  %i.aru = mul nuw nsw i64 %i.agf, 12
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.arv = add nuw nsw i64 %i.agh, %i.agi
  %i.arw = icmp samesign ule i64 %i.arv, %i.agg
  call void @llvm.assume(i1 %i.arw)
  %i.arx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.agh ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 2
  %i.arz = load i16, ptr %i.ary, align 2, !tbaa !92
  %i.asa = icmp samesign ugt i32 %i.pu, 2
  call void @llvm.assume(i1 %i.asa)
  %i.asb = shl nuw nsw i64 %i.agf, 1              ; 2 uses
  %i.asc = add nuw nsw i64 %i.asb, %i.age
  %i.asd = icmp samesign ule i64 %i.asc, %i.agg
  call void @llvm.assume(i1 %i.asd)
  %i.ase = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.asb ; 2 uses
  store i16 %i.arz, ptr %i.ase, align 2, !tbaa !92
  %i.asf = getelementptr [2 x i8], ptr %i.arx, i64 %i.age
  %i.asg = getelementptr i8, ptr %i.asf, i64 -4
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !92
  %i.asi = getelementptr [2 x i8], ptr %i.ase, i64 %i.age
  %i.asj = getelementptr i8, ptr %i.asi, i64 -2
  store i16 %i.ash, ptr %i.asj, align 2, !tbaa !92
  %i.ask = shl nuw nsw i64 %i.agh, 1              ; 2 uses
  %i.asl = add nuw nsw i64 %i.ask, %i.agi
  %i.asm = icmp samesign ule i64 %i.asl, %i.agg
  call void @llvm.assume(i1 %i.asm)
  %i.asn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ask ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 2
  %i.asp = load i16, ptr %i.aso, align 2, !tbaa !92
  %i.asq = icmp samesign ugt i32 %i.pu, 3
  call void @llvm.assume(i1 %i.asq)
  %i.asr = mul nuw nsw i64 %i.agf, 3              ; 2 uses
  %i.ass = add nuw nsw i64 %i.asr, %i.age
  %i.ast = icmp samesign ule i64 %i.ass, %i.agg
  call void @llvm.assume(i1 %i.ast)
  %i.asu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.asr ; 2 uses
  store i16 %i.asp, ptr %i.asu, align 2, !tbaa !92
  %i.asv = getelementptr [2 x i8], ptr %i.asn, i64 %i.age
  %i.asw = getelementptr i8, ptr %i.asv, i64 -4
  %i.asx = load i16, ptr %i.asw, align 2, !tbaa !92
  %i.asy = getelementptr [2 x i8], ptr %i.asu, i64 %i.age
  %i.asz = getelementptr i8, ptr %i.asy, i64 -2
  store i16 %i.asx, ptr %i.asz, align 2, !tbaa !92
  %i.ata = mul nuw nsw i64 %i.agh, 3              ; 2 uses
  %i.atb = add nuw nsw i64 %i.ata, %i.agi
  %i.atc = icmp samesign ule i64 %i.atb, %i.agg
  call void @llvm.assume(i1 %i.atc)
  %i.atd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.ata ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 2
  %i.atf = icmp samesign ugt i32 %i.pu, 4
  call void @llvm.assume(i1 %i.atf)
  %i.atg = shl nuw nsw i64 %i.agf, 2
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i:           ; preds = %bb.ca, %bb.bz, %bb.by
  %.sink163.i.i.i.i = phi i64 [ %i.atg, %bb.ca ], [ %i.aru, %bb.bz ], [ %i.aol, %bb.by ] ; 2 uses
  %.sink158.in.i.i.i.i = phi ptr [ %i.ate, %bb.ca ], [ %i.ars, %bb.bz ], [ %i.aoj, %bb.by ]
  %.sink157.i.i.i.i = phi ptr [ %i.atd, %bb.ca ], [ %i.arr, %bb.bz ], [ %i.aoi, %bb.by ]
  %.sink158.i.i.i.i = load i16, ptr %.sink158.in.i.i.i.i, align 2, !tbaa !92
  %i.ath = add nuw nsw i64 %.sink163.i.i.i.i, %i.age
  %i.ati = icmp samesign ule i64 %i.ath, %i.agg
  call void @llvm.assume(i1 %i.ati)
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %.sink163.i.i.i.i ; 2 uses
  store i16 %.sink158.i.i.i.i, ptr %i.atj, align 2, !tbaa !92
  %i.atk = getelementptr [2 x i8], ptr %.sink157.i.i.i.i, i64 %i.age
  %i.atl = getelementptr i8, ptr %i.atk, i64 -4
  %i.atm = load i16, ptr %i.atl, align 2, !tbaa !92
  %i.atn = getelementptr [2 x i8], ptr %i.atj, i64 %i.age
  %i.ato = getelementptr i8, ptr %i.atn, i64 -2
  store i16 %i.atm, ptr %i.ato, align 2, !tbaa !92
  %i.atp = add nuw nsw i32 %.017.i97.i.i.i.i, 1   ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq i32 %i.atp, 6
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
  %.017.i97.i49.i.i.i = phi i32 [ 0, %bb.cb ], [ %i.bwo, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i ] ; 3 uses
  %i.atq = shl nuw nsw i32 %.017.i97.i49.i.i.i, 1
  %i.atr = and i32 %i.atq, 2
  %i.ats = zext nneg i32 %i.atr to i64
  %i.att = getelementptr inbounds nuw i8, ptr %2, i64 %i.ats ; 2 uses
  %i.atu = load i8, ptr %i.att, align 2, !tbaa !120 ; 3 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.att, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !120 ; 3 uses
  %i.atx = zext nneg i8 %i.atu to i64
  %switch.gep228 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8rawspeed16FujiDecompressor10decompressEv.30, i64 %i.atx
  %switch.load229 = load i8, ptr %switch.gep228, align 1
  %switch.ext230 = zext i8 %switch.load229 to i32
  %i.aty = zext nneg i8 %i.atu to i64
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aty ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !94 ; 2 uses
  %i.aub = add nsw i32 %i.aua, %switch.ext230     ; 2 uses
  %i.auc = add nsw i32 %i.aua, 1
  store i32 %i.auc, ptr %i.atz, align 4, !tbaa !94
  %i.aud = zext nneg i8 %i.atw to i64
  %switch.gep236 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8rawspeed16FujiDecompressor10decompressEv.30, i64 %i.aud
  %switch.load237 = load i8, ptr %switch.gep236, align 1
  %switch.ext238 = zext i8 %switch.load237 to i32
  %i.aue = zext nneg i8 %i.atw to i64
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aue ; 2 uses
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !94 ; 2 uses
  %i.auh = add nsw i32 %i.aug, %switch.ext238     ; 2 uses
  %i.aui = add nsw i32 %i.aug, 1
  store i32 %i.aui, ptr %i.auf, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !tbaa !94
  %i.auj = urem i32 %.017.i97.i49.i.i.i, 3
  %i.auk = zext nneg i32 %i.auj to i64            ; 2 uses
  %i.aul = getelementptr inbounds nuw [328 x i8], ptr %i.eo, i64 %i.auk ; 2 uses
  %i.aum = getelementptr inbounds nuw [328 x i8], ptr %i.ep, i64 %i.auk ; 2 uses
  %i.aun = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 8 uses
  %i.auo = icmp sgt i32 %i.aun, -1                ; 3 uses
  %i.aup = load i32, ptr %i.ej, align 4           ; 16 uses
  %i.auq = icmp sgt i32 %i.aup, -1                ; 2 uses
  %i.aur = load i32, ptr %i.ek, align 8           ; 31 uses
  %i.aus = icmp sgt i32 %i.aur, -1                ; 2 uses
  %i.aut = load i32, ptr %i.ei, align 8           ; 9 uses
  %i.auu = icmp sge i32 %i.aut, %i.aup            ; 3 uses
  %i.auv = mul nuw nsw i32 %i.aut, %i.aur
  %i.auw = icmp eq i32 %i.aun, %i.auv             ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i = load ptr, ptr %i.eb, align 8 ; 49 uses
  %i.aux = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8 ; 14 uses
  %i.auy = icmp sgt i32 %i.aux, 3                 ; 2 uses
  %i.auz = add nuw nsw i32 %i.aux, 8              ; 4 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i.i53.i.i.i, %switch.lookup227
  %.0150.i.i.i.i.i = phi i32 [ 0, %switch.lookup227 ], [ %i.bjb, %.loopexit.i.i53.i.i.i ] ; 4 uses
  %i.ava = icmp samesign ult i32 %.0150.i.i.i.i.i, %i.ok
  br i1 %i.ava, label %.preheader139.i.i.i.i.i, label %.loopexit140.i.i.i.i.i

.preheader139.i.i.i.i.i:                          ; preds = %bb.cc
  call void @llvm.assume(i1 %i.auo)
  call void @llvm.assume(i1 %i.auq)
  call void @llvm.assume(i1 %i.aus)
  call void @llvm.assume(i1 %i.auu)
  call void @llvm.assume(i1 %i.auw)
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !136 ; 2 uses
  call void @llvm.assume(i1 %i.auy)
  %.promoted.i.i.pre.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.i.pre.i.i.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %bb.cd

bb.cd:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %.preheader139.i.i.i.i.i
  %.promoted16.i.i.i.i103.i.i.i = phi i32 [ %.promoted16.i.i.pre.i.i.i.i.i, %.preheader139.i.i.i.i.i ], [ %.promoted16.i.i164.i.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ] ; 2 uses
  %.promoted.i.i.i.i104.i.i.i = phi i32 [ %.promoted.i.i.pre.i.i.i.i.i, %.preheader139.i.i.i.i.i ], [ %.promoted.i.i162.i.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %.not30.i.i105.i.i.i = phi i1 [ false, %.preheader139.i.i.i.i.i ], [ true, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %indvars.iv.i.sroa.phi.i106.i.i.i = phi ptr [ %1, %.preheader139.i.i.i.i.i ], [ %indvars.iv158.i.sroa.gep73.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ] ; 2 uses
  %indvars.iv.i.sroa.phi78.sroa.speculated.i.i.i.i = phi i32 [ %i.aub, %.preheader139.i.i.i.i.i ], [ %i.auh, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %i.avb = load i32, ptr %indvars.iv.i.sroa.phi.i106.i.i.i, align 4, !tbaa !94 ; 2 uses
  %i.avc = and i32 %indvars.iv.i.sroa.phi78.sroa.speculated.i.i.i.i, 255 ; 4 uses
  %i.avd = add nsw i32 %i.avc, -1                 ; 2 uses
  %i.ave = shl nsw i32 %i.avb, 1                  ; 4 uses
  %i.avf = or disjoint i32 %i.ave, 1              ; 2 uses
  %i.avg = icmp samesign ult i32 %i.avf, %i.aup
  call void @llvm.assume(i1 %i.avg)
  %i.avh = icmp samesign ult i32 %i.avd, %i.aur
  call void @llvm.assume(i1 %i.avh)
  %i.avi = mul nuw nsw i32 %i.avd, %i.aut         ; 2 uses
  %i.avj = add nuw nsw i32 %i.avi, %i.aup
  %i.avk = icmp samesign ule i32 %i.avj, %i.aun
  call void @llvm.assume(i1 %i.avk)
  %i.avl = zext nneg i32 %i.avi to i64
  %i.avm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.avl ; 3 uses
  %i.avn = zext nneg i32 %i.avf to i64            ; 3 uses
  %i.avo = getelementptr inbounds nuw [2 x i8], ptr %i.avm, i64 %i.avn
  %i.avp = load i16, ptr %i.avo, align 2, !tbaa !92
  %i.avq = zext i16 %i.avp to i32                 ; 5 uses
  %14 = icmp samesign ule i32 %i.ave, %i.aup
  call void @llvm.assume(i1 %14)
  %i.avr = zext nneg i32 %i.ave to i64
  %i.avs = getelementptr inbounds nuw [2 x i8], ptr %i.avm, i64 %i.avr
  %i.avt = load i16, ptr %i.avs, align 2, !tbaa !92
  %i.avu = zext i16 %i.avt to i32                 ; 2 uses
  %i.avv = add nuw nsw i32 %i.ave, 2              ; 2 uses
  %i.avw = icmp samesign ult i32 %i.avv, %i.aup
  call void @llvm.assume(i1 %i.avw)
  %i.avx = zext nneg i32 %i.avv to i64
  %i.avy = getelementptr inbounds nuw [2 x i8], ptr %i.avm, i64 %i.avx
  %i.avz = load i16, ptr %i.avy, align 2, !tbaa !92
  %i.awa = zext i16 %i.avz to i32                 ; 3 uses
  %i.awb = add nsw i32 %i.avc, -2                 ; 2 uses
  %i.awc = icmp samesign ult i32 %i.awb, %i.aur
  call void @llvm.assume(i1 %i.awc)
  %i.awd = mul nuw nsw i32 %i.awb, %i.aut         ; 2 uses
  %i.awe = add nuw nsw i32 %i.awd, %i.aup
  %i.awf = icmp samesign ule i32 %i.awe, %i.aun
  call void @llvm.assume(i1 %i.awf)
  %i.awg = zext nneg i32 %i.awd to i64
  %i.awh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.awg
  %i.awi = getelementptr inbounds nuw [2 x i8], ptr %i.awh, i64 %i.avn
  %i.awj = load i16, ptr %i.awi, align 2, !tbaa !92
  %i.awk = zext i16 %i.awj to i32                 ; 3 uses
  %i.awl = sub nsw i32 %i.avu, %i.avq             ; 2 uses
  %i.awm = call i32 @llvm.abs.i32(i32 %i.awl, i1 true) ; 2 uses
  %i.awn = sub nsw i32 %i.awk, %i.avq
  %i.awo = call i32 @llvm.abs.i32(i32 %i.awn, i1 true) ; 2 uses
  %i.awp = sub nsw i32 %i.awa, %i.avq
  %i.awq = call i32 @llvm.abs.i32(i32 %i.awp, i1 true) ; 2 uses
  %.sroa.speculated.i.i.i107.i.i.i = call i32 @llvm.umax.i32(i32 %i.awo, i32 %i.awq)
  %i.awr = icmp samesign ugt i32 %i.awm, %.sroa.speculated.i.i.i107.i.i.i ; 2 uses
  %.sroa.speculated8.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.awm, i32 %i.awo)
  %i.aws = icmp samesign ugt i32 %i.awq, %.sroa.speculated8.i.i.i.i.i.i
  %i.awt = select i1 %i.awr, i1 true, i1 %i.aws
  %.1.i.i.i.i108.i.i.i = select i1 %i.awt, i32 %i.awk, i32 %i.awa
  %.0.i.i.i.i109.i.i.i = select i1 %i.awr, i32 %i.awa, i32 %i.avu
  %i.awu = shl nuw nsw i32 %i.avq, 1
  %i.awv = add nuw nsw i32 %.0.i.i.i.i109.i.i.i, %i.awu
  %i.aww = add nuw nsw i32 %i.awv, %.1.i.i.i.i108.i.i.i
  %i.awx = lshr i32 %i.aww, 2
  %i.awy = sub nsw i32 %i.avq, %i.awk
  %i.awz = load i32, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %i.axa = add nsw i32 %i.awy, %i.awz
  %i.axb = sext i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i, i64 %i.axb
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !93
  %i.axe = sext i8 %i.axd to i32
  %i.axf = mul nsw i32 %i.axe, 9
  %i.axg = add nsw i32 %i.awz, %i.awl
  %i.axh = sext i32 %i.axg to i64
  %i.axi = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i, i64 %i.axh
  %i.axj = load i8, ptr %i.axi, align 1, !tbaa !93
  %i.axk = sext i8 %i.axj to i32
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = add nsw i32 %i.axf, %i.axk ; 2 uses
  %i.axl = call i32 @llvm.abs.i32(i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, i1 true) ; 2 uses
  %.promoted17.i.i.i.i110.i.i.i = load i64, ptr %i.eq, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i, %bb.cd
  %.promoted16.i.i166.i.i.i.i.i = phi i32 [ %.promoted16.i.i.i.i103.i.i.i, %bb.cd ], [ %.promoted16.i.i165.i.i.i.i.i, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ]
  %i.axm = phi i64 [ %.promoted17.i.i.i.i110.i.i.i, %bb.cd ], [ %i.ayt, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 2 uses
  %i.axn = phi i32 [ %.promoted16.i.i.i.i103.i.i.i, %bb.cd ], [ %i.ayi, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 5 uses
  %i.axo = phi i32 [ %.promoted.i.i.i.i104.i.i.i, %bb.cd ], [ %i.ayr, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 5 uses
  %.014.i.i.i.i112.i.i.i = phi i32 [ 0, %bb.cd ], [ %i.ayn, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ]
  %i.axp = icmp samesign ult i32 %i.axo, 65
  call void @llvm.assume(i1 %i.axp)
  %.not.i.i.i.i.i113.i.i.i = icmp samesign ult i32 %i.axo, 32
  br i1 %.not.i.i.i.i.i113.i.i.i, label %bb.cf, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i48.i.i.i)
  %i.axq = add nuw nsw i32 %i.axn, 4              ; 4 uses
  %.not.i.i.i.i.i.i135.i.i.i = icmp samesign ugt i32 %i.axq, %i.aux
  br i1 %.not.i.i.i.i.i.i135.i.i.i, label %bb.ch, label %bb.cg, !prof !134

bb.cg:                                            ; preds = %bb.cf
  %i.axr = zext nneg i32 %i.axn to i64
  %i.axs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.axr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.axt = icmp samesign ugt i32 %i.axn, %i.auz
  br i1 %i.axt, label %.invoke.i.i12, label %bb.ci, !prof !134

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i48.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i139.i.i.i = call i32 @llvm.umin.i32(i32 %i.aux, i32 %i.axn) ; 3 uses
  %i.axu = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i139.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i140.i.i.i = call i32 @llvm.umin.i32(i32 %i.aux, i32 %i.axu)
  %i.axv = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i140.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i139.i.i.i ; 2 uses
  %i.axw = icmp samesign ult i32 %i.axv, 5
  call void @llvm.assume(i1 %i.axw)
  %i.axx = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i139.i.i.i to i64
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.axx
  %i.axz = zext nneg i32 %i.axv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i48.i.i.i, ptr align 1 %i.axy, i64 %i.axz, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i: ; preds = %bb.ci, %bb.cg
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i137.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i48.i.i.i, %bb.ci ], [ %i.axs, %bb.cg ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i138.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i137.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i48.i.i.i)
  %i.aya = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i138.i.i.i)
  %i.ayb = zext i32 %i.aya to i64
  %i.ayc = or disjoint i32 %i.axo, 32
  %i.ayd = sub nuw nsw i32 32, %i.axo
  %i.aye = zext nneg i32 %i.ayd to i64
  %i.ayf = shl nuw i64 %i.ayb, %i.aye
  %i.ayg = or i64 %i.ayf, %i.axm
  store i32 %i.axq, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i, %bb.ce
  %.promoted16.i.i165.i.i.i.i.i = phi i32 [ %.promoted16.i.i166.i.i.i.i.i, %bb.ce ], [ %i.axq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 2 uses
  %i.ayh = phi i64 [ %i.axm, %bb.ce ], [ %i.ayg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 2 uses
  %i.ayi = phi i32 [ %i.axn, %bb.ce ], [ %i.axq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 6 uses
  %i.ayj = phi i32 [ %i.axo, %bb.ce ], [ %i.ayc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ]
  %i.ayk = lshr i64 %i.ayh, 32                    ; 2 uses
  %i.ayl = trunc nuw i64 %i.ayk to i32
  %i.aym = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ayl, i1 false) ; 2 uses
  %i.ayn = add nuw nsw i32 %i.aym, %.014.i.i.i.i112.i.i.i ; 3 uses
  %i.ayo = icmp eq i64 %i.ayk, 0                  ; 2 uses
  %i.ayp = add nuw nsw i32 %i.aym, 1
  %spec.select.i.i.i.i115.i.i.i = select i1 %i.ayo, i32 32, i32 %i.ayp ; 3 uses
  %i.ayq = icmp samesign ult i32 %spec.select.i.i.i.i115.i.i.i, 33
  call void @llvm.assume(i1 %i.ayq)
  %i.ayr = sub nuw nsw i32 %i.ayj, %spec.select.i.i.i.i115.i.i.i ; 6 uses
  store i32 %i.ayr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.ays = zext nneg i32 %spec.select.i.i.i.i115.i.i.i to i64
  %i.ayt = shl i64 %i.ayh, %i.ays                 ; 4 uses
  store i64 %i.ayt, ptr %i.eq, align 8, !tbaa !270
  br i1 %i.ayo, label %bb.ce, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i
  %i.ayu = load i32, ptr %i.om, align 4, !tbaa !218
  %i.ayv = load i32, ptr %i.on, align 4, !tbaa !217 ; 2 uses
  %i.ayw = xor i32 %i.ayv, -1
  %i.ayx = add i32 %i.ayu, %i.ayw
  %i.ayy = icmp slt i32 %i.ayn, %i.ayx
  br i1 %i.ayy, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i
  %i.ayz = zext nneg i32 %i.axl to i64
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.aul, i64 %i.ayz ; 2 uses
  %i.azb = load i32, ptr %i.aza, align 8, !tbaa !261 ; 3 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.aza, i64 4
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !262 ; 3 uses
  %i.aze = icmp sgt i32 %i.azb, -1
  call void @llvm.assume(i1 %i.aze)
  %i.azf = icmp sgt i32 %i.azd, 0
  call void @llvm.assume(i1 %i.azf)
  %i.azg = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.azb, i1 false)
  %i.azh = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.azd, i1 true)
  %i.azi = sub nsw i32 %i.azh, %i.azg
  %.sroa.speculated11.i.i.i.i133.i.i.i = call i32 @llvm.smax.i32(i32 %i.azi, i32 0) ; 2 uses
  %i.azj = shl i32 %i.azd, %.sroa.speculated11.i.i.i.i133.i.i.i
  %i.azk = icmp slt i32 %i.azj, %i.azb
  %i.azl = zext i1 %i.azk to i32
  %spec.select.i17.i.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i.i133.i.i.i, %i.azl
  %.sroa.speculated.i.i.i.i134.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i17.i.i.i.i.i.i, i32 15) ; 2 uses
  %i.azm = shl i32 %i.ayn, %.sroa.speculated.i.i.i.i134.i.i.i
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i
  %.033.i.i.i.i117.i.i.i = phi i32 [ %.sroa.speculated.i.i.i.i134.i.i.i, %bb.cj ], [ %i.ayv, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i ] ; 5 uses
  %.032.i.i.i.i118.i.i.i = phi i32 [ %i.azm, %bb.cj ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i ]
  %i.azn = icmp sgt i32 %i.ayi, -1
  call void @llvm.assume(i1 %i.azn)
  %.not.i18.i.i.i.i.i.i = icmp samesign ult i32 %i.ayr, 32
  br i1 %.not.i18.i.i.i.i.i.i, label %bb.cl, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i47.i.i.i)
  %i.azo = add nuw nsw i32 %i.ayi, 4              ; 3 uses
  %.not.i.i19.i.i.i.i.i.i = icmp samesign ugt i32 %i.azo, %i.aux
  br i1 %.not.i.i19.i.i.i.i.i.i, label %bb.cn, label %bb.cm, !prof !134

bb.cm:                                            ; preds = %bb.cl
  %i.azp = zext nneg i32 %i.ayi to i64
  %i.azq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.azp
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.azr = icmp samesign ugt i32 %i.ayi, %i.auz
  br i1 %i.azr, label %.invoke.i.i12, label %bb.co, !prof !134

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %.sroa.0.i.i.i.i.i47.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i131.i.i.i = call i32 @llvm.umin.i32(i32 %i.aux, i32 %i.ayi) ; 3 uses
  %i.azs = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i131.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i132.i.i.i = call i32 @llvm.umin.i32(i32 %i.aux, i32 %i.azs)
  %i.azt = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i132.i.i.i, %.sroa.speculated27.i.i.i.i.i.i131.i.i.i ; 2 uses
  %i.azu = icmp samesign ult i32 %i.azt, 5
  call void @llvm.assume(i1 %i.azu)
  %i.azv = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i131.i.i.i to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.azv
  %i.azx = zext nneg i32 %i.azt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i47.i.i.i, ptr align 1 %i.azw, i64 %i.azx, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i: ; preds = %bb.co, %bb.cm
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i129.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i47.i.i.i, %bb.co ], [ %i.azq, %bb.cm ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i130.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i129.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i47.i.i.i)
end_hunk_1
