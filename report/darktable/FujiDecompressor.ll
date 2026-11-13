Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
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
  %i.qp = shl nuw nsw i32 %i.qm, 1                ; 4 uses
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
  %i.si = shl nuw nsw i32 %i.qm, 1                ; 4 uses
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
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
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
  %i.avg = shl nuw nsw i32 %i.avd, 1              ; 4 uses
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
end_hunk_1
