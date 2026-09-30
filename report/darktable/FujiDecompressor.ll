Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  %i.nt = load i16, ptr %i.ns, align 8, !tbaa !212
  %i.nu = zext i16 %i.nt to i64
  %i.nv = shl nuw nsw i64 %i.nu, 2
  %i.nw = add nuw nsw i64 %i.nv, 8                ; 3 uses
  %i.nx = getelementptr i8, ptr %i.ey, i64 16     ; 7 uses
  %.val41.val73.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %.not75.i.i.i = icmp eq i16 %.val41.val73.i.i.i, 0
  br i1 %.not75.i.i.i, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_stripERKNS0_9FujiStripE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8rawspeed8OptionalINS_14BitStreamerMSBEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit.i.i
  %i.ny = add nuw nsw i64 %indvars.iv.i.i9, 1
  %i.nz = add nuw nsw i32 %indvars110.i.i, 1      ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ey, i64 12 ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ey, i64 10 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.preheader50.preheader.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i20.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i21.i.i, %.preheader50.preheader.i.i.i ] ; 7 uses
  %i.oc = load ptr, ptr %i.dp, align 8, !tbaa !264, !nonnull !250, !align !255
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 3
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !118
  %i.of = icmp eq i8 %i.oe, 16
  %i.og = load ptr, ptr %i.dq, align 8, !tbaa !249, !nonnull !250, !align !251 ; 10 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 64
  %i.oi = load i16, ptr %i.oh, align 8, !tbaa !212 ; 2 uses
  %i.oj = and i16 %i.oi, 1
  %i.ok = icmp eq i16 %i.oj, 0
  call void @llvm.assume(i1 %i.ok)
  %i.ol = lshr exact i16 %i.oi, 1
  %i.om = zext nneg i16 %i.ol to i32              ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 40 ; 12 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 44 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 52 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 56 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 48 ; 4 uses
  %i.os = add nuw nsw i32 %i.om, 3                ; 2 uses
  br i1 %i.of, label %bb.y, label %bb.cg

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 33620224, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false), !tbaa !94
  br label %switch.lookup

switch.lookup:                                    ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i, %bb.y
  %.017.i97.i.i.i.i = phi i32 [ 0, %bb.y ], [ %i.atr, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i ] ; 8 uses
  %i.ot = shl nuw nsw i32 %.017.i97.i.i.i.i, 1
  %i.ou = and i32 %i.ot, 2
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %5, i64 %i.ov ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 2, !tbaa !120 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !120 ; 3 uses
  %i.pa = zext nneg i8 %i.ox to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8rawspeed16FujiDecompressor10decompressEv.30, i64 %i.pa
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.pb = zext nneg i8 %i.ox to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.pb ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !94 ; 2 uses
  %i.pe = add nsw i32 %i.pd, %switch.ext          ; 2 uses
  %i.pf = add nsw i32 %i.pd, 1
  store i32 %i.pf, ptr %i.pc, align 4, !tbaa !94
  %i.pg = zext nneg i8 %i.oz to i64
  %switch.gep232 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8rawspeed16FujiDecompressor10decompressEv.30, i64 %i.pg
  %switch.load233 = load i8, ptr %switch.gep232, align 1
  %switch.ext234 = zext i8 %switch.load233 to i32
  %i.ph = zext nneg i8 %i.oz to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ph ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !94 ; 2 uses
  %i.pk = add nsw i32 %i.pj, %switch.ext234       ; 2 uses
  %i.pl = add nsw i32 %i.pj, 1
  store i32 %i.pl, ptr %i.pi, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false), !tbaa !94
  %i.pm = urem i32 %.017.i97.i.i.i.i, 3
  %i.pn = zext nneg i32 %i.pm to i64              ; 2 uses
  %i.po = getelementptr inbounds nuw [328 x i8], ptr %i.ep, i64 %i.pn ; 2 uses
  %i.pp = add nsw i32 %.017.i97.i.i.i.i, -1
  %or.cond4.i.i.i.i.i.i = icmp ult i32 %i.pp, 2
  %i.pq = icmp eq i32 %.017.i97.i.i.i.i, 5
  %i.pr = getelementptr inbounds nuw [328 x i8], ptr %i.eq, i64 %i.pn ; 2 uses
  %i.ps = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 5 uses
  %i.pt = icmp sgt i32 %i.ps, -1                  ; 2 uses
  %i.pu = load i32, ptr %i.ek, align 4            ; 10 uses
  %i.pv = icmp sgt i32 %i.pu, -1
  %i.pw = load i32, ptr %i.el, align 8            ; 28 uses
  %i.px = icmp sgt i32 %i.pw, -1                  ; 2 uses
  %i.py = load i32, ptr %i.ej, align 8            ; 6 uses
  %i.pz = icmp sge i32 %i.py, %i.pu               ; 2 uses
  %i.qa = mul nuw nsw i32 %i.py, %i.pw
  %i.qb = icmp eq i32 %i.ps, %i.qa                ; 2 uses
  %.sroa.0.0.copyload.i.i39.i.i.i.i.i = load ptr, ptr %i.ec, align 8 ; 46 uses
  %i.qc = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8 ; 8 uses
  %i.qd = icmp sgt i32 %i.qc, 3
  %i.qe = add nuw nsw i32 %i.qc, 8                ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.i.i.i.i.i, %switch.lookup
  %.0151.i.i.i.i.i = phi i32 [ 0, %switch.lookup ], [ %i.age, %.loopexit.i.i.i.i.i ] ; 5 uses
  %i.qf = icmp samesign ult i32 %.0151.i.i.i.i.i, %i.om
  br i1 %i.qf, label %.preheader140.i.i.i.i.i, label %.loopexit141.i.i.i.i.i

.preheader140.i.i.i.i.i:                          ; preds = %bb.z
  %i.qg = and i32 %.0151.i.i.i.i.i, 1
  %.not48.i.i.i.i.i.i = icmp eq i32 %i.qg, 0      ; 4 uses
  %or.cond106.v.i.i.i.i.i.i = select i1 %.not48.i.i.i.i.i.i, i32 5, i32 3
  %or.cond106.i.i.i.i.i.i = icmp eq i32 %.017.i97.i.i.i.i, %or.cond106.v.i.i.i.i.i.i
  %brmerge.i.i.i.i.i = or i1 %or.cond4.i.i.i.i.i.i, %or.cond106.i.i.i.i.i.i
  %i.qh = load i32, ptr %i.ek, align 4            ; 7 uses
  %i.qi = load i32, ptr %i.el, align 8            ; 5 uses
  %i.qj = load i32, ptr %i.ej, align 8            ; 6 uses
  %i.qk = icmp sge i32 %i.qj, %i.qh               ; 3 uses
  %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i = load ptr, ptr %i.ec, align 8 ; 5 uses
  %i.ql = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8 ; 8 uses
  %i.qm = icmp sgt i32 %i.ql, 3
  %i.qn = add nuw nsw i32 %i.ql, 8                ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %.preheader140.i.i.i.i.i
  %i.qo = phi i1 [ true, %.preheader140.i.i.i.i.i ], [ false, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %.not30.i.i.i.i.i = phi i1 [ false, %.preheader140.i.i.i.i.i ], [ true, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ]
  %indvars.iv.i.sroa.phi.i.i.i.i = phi ptr [ %4, %.preheader140.i.i.i.i.i ], [ %indvars.iv159.i.sroa.gep73.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ] ; 2 uses
  %indvars.iv.i.sroa.phi78.sroa.speculated.in.i.i.i.i = phi i32 [ %i.pe, %.preheader140.i.i.i.i.i ], [ %i.pk, %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i" ] ; 2 uses
  %i.qp = load i32, ptr %indvars.iv.i.sroa.phi.i.i.i.i, align 4, !tbaa !94 ; 3 uses
  br i1 %i.qo, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  switch i32 %.017.i97.i.i.i.i, label %unreachable.i.i.i.i.i.i [
    i32 0, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i
    i32 2, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i
    i32 1, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
    i32 3, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
  ]

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not48.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not48.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.aa
  br i1 %brmerge.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i, label %bb.af

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.ab
  %i.qq = and i32 %indvars.iv.i.sroa.phi78.sroa.speculated.in.i.i.i.i, 255 ; 3 uses
  %i.qr = add nsw i32 %i.qq, -1                   ; 2 uses
  %i.qs = shl nsw i32 %i.qp, 1                    ; 4 uses
  %i.qt = or disjoint i32 %i.qs, 1                ; 2 uses
  call void @llvm.assume(i1 %i.qk)
  %i.qu = icmp samesign ult i32 %i.qt, %i.qh
  call void @llvm.assume(i1 %i.qu)
  %i.qv = icmp samesign ult i32 %i.qr, %i.qi
  call void @llvm.assume(i1 %i.qv)
  %i.qw = mul nuw nsw i32 %i.qr, %i.qj
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.qx ; 3 uses
  %i.qz = zext nneg i32 %i.qt to i64              ; 3 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qy, i64 %i.qz
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !92
  %i.rc = zext i16 %i.rb to i32                   ; 4 uses
  %i.rd = icmp samesign ule i32 %i.qs, %i.qh
  call void @llvm.assume(i1 %i.rd)
  %i.re = zext nneg i32 %i.qs to i64
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.qy, i64 %i.re
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !92
  %i.rh = zext i16 %i.rg to i32                   ; 2 uses
  %i.ri = add nuw nsw i32 %i.qs, 2                ; 2 uses
  %i.rj = icmp samesign ult i32 %i.ri, %i.qh
  call void @llvm.assume(i1 %i.rj)
  %i.rk = zext nneg i32 %i.ri to i64
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.qy, i64 %i.rk
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !92
  %i.rn = zext i16 %i.rm to i32                   ; 3 uses
  %i.ro = add nsw i32 %i.qq, -2                   ; 2 uses
  %i.rp = icmp samesign ult i32 %i.ro, %i.qi
  call void @llvm.assume(i1 %i.rp)
  %i.rq = mul nuw nsw i32 %i.ro, %i.qj
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.rr
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.qz
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !92
  %i.rv = zext i16 %i.ru to i32                   ; 2 uses
  %i.rw = sub nsw i32 %i.rh, %i.rc
  %i.rx = call i32 @llvm.abs.i32(i32 %i.rw, i1 true) ; 2 uses
  %i.ry = sub nsw i32 %i.rv, %i.rc
  %i.rz = call i32 @llvm.abs.i32(i32 %i.ry, i1 true) ; 2 uses
  %i.sa = sub nsw i32 %i.rn, %i.rc
  %i.sb = call i32 @llvm.abs.i32(i32 %i.sa, i1 true) ; 2 uses
  %.sroa.speculated45.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.rz, i32 %i.sb)
  %i.sc = icmp samesign ugt i32 %i.rx, %.sroa.speculated45.i.i.i.i.i.i ; 2 uses
  %.sroa.speculated51.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.rx, i32 %i.rz)
  %i.sd = icmp samesign ugt i32 %i.sb, %.sroa.speculated51.i.i.i.i.i.i
  %i.se = select i1 %i.sc, i1 true, i1 %i.sd
  %.1.i67.i.i.i.i.i.i = select i1 %i.se, i32 %i.rv, i32 %i.rn
  %.0.i68.i.i.i.i.i.i = select i1 %i.sc, i32 %i.rn, i32 %i.rh
  %i.sf = shl nuw nsw i32 %i.rc, 1
  %i.sg = add nuw nsw i32 %.0.i68.i.i.i.i.i.i, %.1.i67.i.i.i.i.i.i
  %i.sh = add nuw nsw i32 %i.sg, %i.sf
  %i.si = lshr i32 %i.sh, 2
  br label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i"

unreachable.i.i.i.i.i.i:                          ; preds = %bb.ab
  unreachable

bb.af:                                            ; preds = %bb.ae
  switch i32 %.017.i97.i.i.i.i, label %.unreachabledefault.i.i.i.i.i.i [
    i32 0, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
    i32 3, label %bb.ag
    i32 4, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
    i32 5, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  br i1 %.not48.i.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i, label %bb.ah

.unreachabledefault.i.i.i.i.i.i:                  ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.assume(i1 %i.pq)
  br label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.ab
  %i.sj = and i32 %indvars.iv.i.sroa.phi78.sroa.speculated.in.i.i.i.i, 255 ; 4 uses
  %i.sk = add nsw i32 %i.sj, -1                   ; 2 uses
  %i.sl = shl nsw i32 %i.qp, 1                    ; 4 uses
  %i.sm = or disjoint i32 %i.sl, 1                ; 2 uses
  call void @llvm.assume(i1 %i.qk)
  %i.sn = icmp samesign ult i32 %i.sm, %i.qh
  call void @llvm.assume(i1 %i.sn)
  %i.so = icmp samesign ult i32 %i.sk, %i.qi
  call void @llvm.assume(i1 %i.so)
  %i.sp = mul nuw nsw i32 %i.sk, %i.qj
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.sq ; 3 uses
  %i.ss = zext nneg i32 %i.sm to i64              ; 4 uses
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.sr, i64 %i.ss
  %i.su = load i16, ptr %i.st, align 2, !tbaa !92
  %i.sv = zext i16 %i.su to i32                   ; 5 uses
  %i.sw = icmp samesign ule i32 %i.sl, %i.qh
  call void @llvm.assume(i1 %i.sw)
  %i.sx = zext nneg i32 %i.sl to i64
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %i.sr, i64 %i.sx
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !92
  %i.ta = zext i16 %i.sz to i32                   ; 2 uses
  %i.tb = add nuw nsw i32 %i.sl, 2                ; 2 uses
  %i.tc = icmp samesign ult i32 %i.tb, %i.qh
  call void @llvm.assume(i1 %i.tc)
  %i.td = zext nneg i32 %i.tb to i64
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %i.sr, i64 %i.td
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !92
  %i.tg = zext i16 %i.tf to i32                   ; 3 uses
  %i.th = add nsw i32 %i.sj, -2                   ; 2 uses
  %i.ti = icmp samesign ult i32 %i.th, %i.qi
  call void @llvm.assume(i1 %i.ti)
  %i.tj = mul nuw nsw i32 %i.th, %i.qj
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.tk
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %i.ss
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !92
  %i.to = zext i16 %i.tn to i32                   ; 3 uses
  %i.tp = sub nsw i32 %i.ta, %i.sv                ; 2 uses
  %i.tq = call i32 @llvm.abs.i32(i32 %i.tp, i1 true) ; 2 uses
  %i.tr = sub nsw i32 %i.to, %i.sv
  %i.ts = call i32 @llvm.abs.i32(i32 %i.tr, i1 true) ; 2 uses
  %i.tt = sub nsw i32 %i.tg, %i.sv
  %i.tu = call i32 @llvm.abs.i32(i32 %i.tt, i1 true) ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.ts, i32 %i.tu)
  %i.tv = icmp samesign ugt i32 %i.tq, %.sroa.speculated.i.i.i.i.i.i ; 2 uses
  %.sroa.speculated9.i.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.tq, i32 %i.ts)
  %i.tw = icmp samesign ugt i32 %i.tu, %.sroa.speculated9.i.i.i.i.i.i
  %i.tx = select i1 %i.tv, i1 true, i1 %i.tw
  %.1.i.i.i.i.i.i.i = select i1 %i.tx, i32 %i.to, i32 %i.tg
  %.0.i.i.i.i.i.i.i = select i1 %i.tv, i32 %i.tg, i32 %i.ta
  %i.ty = shl nuw nsw i32 %i.sv, 1
  %i.tz = add nuw nsw i32 %.0.i.i.i.i.i.i.i, %.1.i.i.i.i.i.i.i
  %i.ua = add nuw nsw i32 %i.tz, %i.ty
  %i.ub = lshr i32 %i.ua, 2
  %i.uc = sub nsw i32 %i.sv, %i.to
  %i.ud = load i32, ptr %i.on, align 8, !tbaa !94 ; 2 uses
  %i.ue = add nsw i32 %i.uc, %i.ud
  %.val72.i.i.i.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !136 ; 2 uses
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %.val72.i.i.i.i.i.i, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !93
  %i.ui = sext i8 %i.uh to i32
  %i.uj = mul nsw i32 %i.ui, 9
  %i.uk = add nsw i32 %i.ud, %i.tp
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr %.val72.i.i.i.i.i.i, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !93
  %i.uo = sext i8 %i.un to i32
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i = add nsw i32 %i.uj, %i.uo ; 2 uses
  %i.up = call i32 @llvm.abs.i32(i32 %.sroa.01.0.extract.trunc.i.i.i.i.i.i, i1 true) ; 2 uses
  call void @llvm.assume(i1 %i.qm)
  %.promoted.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.i.i.i.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  %.promoted17.i.i.i.i.i.i.i = load i64, ptr %i.er, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i
  %i.uq = phi i64 [ %.promoted17.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vx, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ur = phi i32 [ %.promoted16.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vm, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.us = phi i32 [ %.promoted.i.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vv, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.014.i.i.i.i.i.i.i = phi i32 [ 0, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit.i.i.i.i.i.i ], [ %i.vr, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i ]
  %i.ut = icmp samesign ult i32 %i.us, 65
  call void @llvm.assume(i1 %i.ut)
  %.not.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.us, 32
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aj, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %i.uu = add nuw nsw i32 %i.ur, 4                ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %i.uu, %i.ql
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak, !prof !134

bb.ak:                                            ; preds = %bb.aj
  %i.uv = zext nneg i32 %i.ur to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.uv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ux = icmp samesign ugt i32 %i.ur, %i.qn
  br i1 %i.ux, label %.invoke191.i.i, label %bb.am, !prof !134

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ql, i32 %i.ur) ; 3 uses
  %i.uy = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ql, i32 %i.uy)
  %i.uz = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.va = icmp samesign ult i32 %i.uz, 5
  call void @llvm.assume(i1 %i.va)
  %i.vb = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i.i to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.vb
  %i.vd = zext nneg i32 %i.uz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i.i.i.i, ptr align 1 %i.vc, i64 %i.vd, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.ak
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i.i.i, %bb.am ], [ %i.uw, %bb.ak ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %i.ve = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i.i)
  %i.vf = zext i32 %i.ve to i64
  %i.vg = or disjoint i32 %i.us, 32
  %i.vh = sub nuw nsw i32 32, %i.us
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = shl nuw i64 %i.vf, %i.vi
  %i.vk = or i64 %i.vj, %i.uq
  store i32 %i.uu, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i, %bb.ai
  %i.vl = phi i64 [ %i.uq, %bb.ai ], [ %i.vk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.vm = phi i32 [ %i.ur, %bb.ai ], [ %i.uu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.vn = phi i32 [ %i.us, %bb.ai ], [ %i.vg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i.i ]
  %i.vo = lshr i64 %i.vl, 32                      ; 2 uses
  %i.vp = trunc nuw i64 %i.vo to i32
  %i.vq = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vp, i1 false) ; 2 uses
  %i.vr = add nuw nsw i32 %i.vq, %.014.i.i.i.i.i.i.i ; 3 uses
  %i.vs = icmp eq i64 %i.vo, 0                    ; 2 uses
  %i.vt = add nuw nsw i32 %i.vq, 1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.vs, i32 32, i32 %i.vt ; 3 uses
  %i.vu = icmp samesign ult i32 %spec.select.i.i.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.vu)
  %i.vv = sub nuw nsw i32 %i.vn, %spec.select.i.i.i.i.i.i.i ; 6 uses
  store i32 %i.vv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.vw = zext nneg i32 %spec.select.i.i.i.i.i.i.i to i64
  %i.vx = shl i64 %i.vl, %i.vw                    ; 4 uses
  store i64 %i.vx, ptr %i.er, align 8, !tbaa !270
  br i1 %i.vs, label %bb.ai, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i.i
  %i.vy = load i32, ptr %i.oo, align 4, !tbaa !218
  %i.vz = load i32, ptr %i.op, align 4, !tbaa !217 ; 2 uses
  %i.wa = xor i32 %i.vz, -1
  %i.wb = add i32 %i.vy, %i.wa
  %i.wc = icmp slt i32 %i.vr, %i.wb
  br i1 %i.wc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i
  %i.wd = zext nneg i32 %i.up to i64
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.wd ; 2 uses
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !261 ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !262 ; 3 uses
  %i.wi = icmp sgt i32 %i.wf, -1
  call void @llvm.assume(i1 %i.wi)
  %i.wj = icmp sgt i32 %i.wh, 0
  call void @llvm.assume(i1 %i.wj)
  %i.wk = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.wf, i1 false)
  %i.wl = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.wh, i1 true)
  %i.wm = sub nsw i32 %i.wl, %i.wk
  %.sroa.speculated11.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.wm, i32 0) ; 2 uses
  %i.wn = shl i32 %i.wh, %.sroa.speculated11.i.i.i.i.i.i.i
  %i.wo = icmp slt i32 %i.wn, %i.wf
  %i.wp = zext i1 %i.wo to i32
  %spec.select.i100.i.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i.i.i.i.i, %i.wp
  %.sroa.speculated.i.i.i.i.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i100.i.i.i.i.i.i, i32 15) ; 2 uses
  %i.wq = shl i32 %i.vr, %.sroa.speculated.i.i.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i
  %.033.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.i.i.i.i.i.i.i, %bb.an ], [ %i.vz, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i ] ; 5 uses
  %.032.i.i.i.i.i.i.i = phi i32 [ %i.wq, %bb.an ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i.i ]
  %i.wr = icmp sgt i32 %i.vm, -1
  call void @llvm.assume(i1 %i.wr)
  %.not.i101.i.i.i.i.i.i = icmp samesign ult i32 %i.vv, 32
  br i1 %.not.i101.i.i.i.i.i.i, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  %i.ws = add nuw nsw i32 %i.vm, 4                ; 2 uses
  %.not.i.i102.i.i.i.i.i.i = icmp samesign ugt i32 %i.ws, %i.ql
  br i1 %.not.i.i102.i.i.i.i.i.i, label %bb.ar, label %bb.aq, !prof !134

bb.aq:                                            ; preds = %bb.ap
  %i.wt = zext nneg i32 %i.vm to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.wt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.wv = icmp samesign ugt i32 %i.vm, %i.qn
  br i1 %i.wv, label %.invoke191.i.i, label %bb.as, !prof !134

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ql, i32 %i.vm) ; 3 uses
  %i.ww = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ql, i32 %i.ww)
  %i.wx = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wy = icmp samesign ult i32 %i.wx, 5
  call void @llvm.assume(i1 %i.wy)
  %i.wz = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.wz
  %i.xb = zext nneg i32 %i.wx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i.i.i, ptr align 1 %i.xa, i64 %i.xb, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i: ; preds = %bb.as, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i.i, %bb.as ], [ %i.wu, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  %i.xc = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i)
  %i.xd = zext i32 %i.xc to i64
  %i.xe = or disjoint i32 %i.vv, 32               ; 2 uses
  %i.xf = sub nuw nsw i32 32, %i.vv
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = shl nuw i64 %i.xd, %i.xg
  %i.xi = or i64 %i.xh, %i.vx                     ; 2 uses
  store i64 %i.xi, ptr %i.er, align 8, !tbaa !270
  store i32 %i.xe, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.ws, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i, %bb.ao
  %i.xj = phi i64 [ %i.vx, %bb.ao ], [ %i.xi, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.xk = phi i32 [ %i.vv, %bb.ao ], [ %i.xe, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i ]
  %.not.i.i.i10.i.i.i.i = icmp eq i32 %.033.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i10.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i
  %i.xl = icmp samesign ult i32 %.033.i.i.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.xl)
  %i.xm = sub nuw nsw i32 64, %.033.i.i.i.i.i.i.i
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = lshr i64 %i.xj, %i.xn
  %i.xp = trunc nuw i64 %i.xo to i32
  %i.xq = sub nuw nsw i32 %i.xk, %.033.i.i.i.i.i.i.i
  store i32 %i.xq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.xr = zext nneg i32 %.033.i.i.i.i.i.i.i to i64
  %i.xs = shl i64 %i.xj, %i.xr
  store i64 %i.xs, ptr %i.er, align 8, !tbaa !270
  br label %bb.au

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
  %i.ass = icmp samesign ugt i32 %i.pw, 3
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
  %i.ath = icmp samesign ugt i32 %i.pw, 4
  call void @llvm.assume(i1 %i.ath)
  %i.ati = shl nuw nsw i64 %i.agh, 2
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i:           ; preds = %bb.cf, %bb.ce, %bb.cd
  %.sink163.i.i.i.i = phi i64 [ %i.ati, %bb.cf ], [ %i.arw, %bb.ce ], [ %i.aon, %bb.cd ] ; 2 uses
  %.sink158.in.i.i.i.i = phi ptr [ %i.atg, %bb.cf ], [ %i.aru, %bb.ce ], [ %i.aol, %bb.cd ]
  %.sink157.i.i.i.i = phi ptr [ %i.atf, %bb.cf ], [ %i.art, %bb.ce ], [ %i.aok, %bb.cd ]
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
  %.not.i.i.i.i.i15 = icmp eq i32 %i.atr, 6
  br i1 %.not.i.i.i.i.i15, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEi.exit.i.i.i, label %switch.lookup, !llvm.loop !184

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEi.exit.i.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.eh

bb.cg:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 33620224, ptr %2, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false), !tbaa !94
  br label %switch.lookup227

switch.lookup227:                                 ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i, %bb.cg
  %.017.i97.i49.i.i.i = phi i32 [ 0, %bb.cg ], [ %i.bwr, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i ] ; 3 uses
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
  %i.aun = getelementptr inbounds nuw [328 x i8], ptr %i.ep, i64 %i.aum ; 2 uses
  %i.auo = getelementptr inbounds nuw [328 x i8], ptr %i.eq, i64 %i.aum ; 2 uses
  %i.aup = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 8 uses
  %i.auq = icmp sgt i32 %i.aup, -1                ; 3 uses
  %i.aur = load i32, ptr %i.ek, align 4           ; 16 uses
  %i.aus = icmp sgt i32 %i.aur, -1                ; 2 uses
  %i.aut = load i32, ptr %i.el, align 8           ; 31 uses
  %i.auu = icmp sgt i32 %i.aut, -1                ; 3 uses
  %i.auv = load i32, ptr %i.ej, align 8           ; 9 uses
  %i.auw = icmp sge i32 %i.auv, %i.aur            ; 3 uses
  %i.aux = mul nuw nsw i32 %i.auv, %i.aut
  %i.auy = icmp eq i32 %i.aup, %i.aux             ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i = load ptr, ptr %i.ec, align 8 ; 49 uses
  %i.auz = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8 ; 14 uses
  %i.ava = icmp sgt i32 %i.auz, 3                 ; 2 uses
  %i.avb = add nuw nsw i32 %i.auz, 8              ; 4 uses
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i.i53.i.i.i, %switch.lookup227
  %.0150.i.i.i.i.i = phi i32 [ 0, %switch.lookup227 ], [ %i.bje, %.loopexit.i.i53.i.i.i ] ; 4 uses
  %i.avc = icmp samesign ult i32 %.0150.i.i.i.i.i, %i.om
  br i1 %i.avc, label %.preheader139.i.i.i.i.i, label %.loopexit140.i.i.i.i.i

.preheader139.i.i.i.i.i:                          ; preds = %bb.ch
  call void @llvm.assume(i1 %i.auq)
  call void @llvm.assume(i1 %i.aus)
  call void @llvm.assume(i1 %i.auu)
  call void @llvm.assume(i1 %i.auw)
  call void @llvm.assume(i1 %i.auy)
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !136 ; 2 uses
  call void @llvm.assume(i1 %i.ava)
  %.promoted.i.i.pre.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.i.pre.i.i.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %bb.ci

bb.ci:                                            ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %.preheader139.i.i.i.i.i
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
  %i.awy = add nuw nsw i32 %.0.i.i.i.i109.i.i.i, %.1.i.i.i.i108.i.i.i
  %i.awz = add nuw nsw i32 %i.awy, %i.awx
  %i.axa = lshr i32 %i.awz, 2
  %i.axb = sub nsw i32 %i.avs, %i.awn
  %i.axc = load i32, ptr %i.on, align 8, !tbaa !94 ; 2 uses
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
  %.promoted17.i.i.i.i110.i.i.i = load i64, ptr %i.er, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i, %bb.ci
  %.promoted16.i.i166.i.i.i.i.i = phi i32 [ %.promoted16.i.i.i.i103.i.i.i, %bb.ci ], [ %.promoted16.i.i165.i.i.i.i.i, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ]
  %i.axp = phi i64 [ %.promoted17.i.i.i.i110.i.i.i, %bb.ci ], [ %i.ayw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 2 uses
  %i.axq = phi i32 [ %.promoted16.i.i.i.i103.i.i.i, %bb.ci ], [ %i.ayl, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 5 uses
  %i.axr = phi i32 [ %.promoted.i.i.i.i104.i.i.i, %bb.ci ], [ %i.ayu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ] ; 5 uses
  %.014.i.i.i.i112.i.i.i = phi i32 [ 0, %bb.ci ], [ %i.ayq, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i ]
  %i.axs = icmp samesign ult i32 %i.axr, 65
  call void @llvm.assume(i1 %i.axs)
  %.not.i.i.i.i.i113.i.i.i = icmp samesign ult i32 %i.axr, 32
  br i1 %.not.i.i.i.i.i113.i.i.i, label %bb.ck, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i48.i.i.i)
  %i.axt = add nuw nsw i32 %i.axq, 4              ; 4 uses
  %.not.i.i.i.i.i.i135.i.i.i = icmp samesign ugt i32 %i.axt, %i.auz
  br i1 %.not.i.i.i.i.i.i135.i.i.i, label %bb.cm, label %bb.cl, !prof !134

bb.cl:                                            ; preds = %bb.ck
  %i.axu = zext nneg i32 %i.axq to i64
  %i.axv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.axu
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.axw = icmp samesign ugt i32 %i.axq, %i.avb
  br i1 %i.axw, label %.invoke191.i.i, label %bb.cn, !prof !134

bb.cn:                                            ; preds = %bb.cm
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

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i: ; preds = %bb.cn, %bb.cl
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i137.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i48.i.i.i, %bb.cn ], [ %i.axv, %bb.cl ]
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

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i, %bb.cj
  %.promoted16.i.i165.i.i.i.i.i = phi i32 [ %.promoted16.i.i166.i.i.i.i.i, %bb.cj ], [ %i.axt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 2 uses
  %i.ayk = phi i64 [ %i.axp, %bb.cj ], [ %i.ayj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 2 uses
  %i.ayl = phi i32 [ %i.axq, %bb.cj ], [ %i.axt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ] ; 6 uses
  %i.aym = phi i32 [ %i.axr, %bb.cj ], [ %i.ayf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i136.i.i.i ]
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
  store i64 %i.ayw, ptr %i.er, align 8, !tbaa !270
  br i1 %i.ayr, label %bb.cj, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i114.i.i.i
  %i.ayx = load i32, ptr %i.oo, align 4, !tbaa !218
  %i.ayy = load i32, ptr %i.op, align 4, !tbaa !217 ; 2 uses
  %i.ayz = xor i32 %i.ayy, -1
  %i.aza = add i32 %i.ayx, %i.ayz
  %i.azb = icmp slt i32 %i.ayq, %i.aza
  br i1 %i.azb, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i
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
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i
  %.033.i.i.i.i117.i.i.i = phi i32 [ %.sroa.speculated.i.i.i.i134.i.i.i, %bb.co ], [ %i.ayy, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i ] ; 5 uses
  %.032.i.i.i.i118.i.i.i = phi i32 [ %i.azp, %bb.co ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i116.i.i.i ]
  %i.azq = icmp sgt i32 %i.ayl, -1
  call void @llvm.assume(i1 %i.azq)
  %.not.i18.i.i.i.i.i.i = icmp samesign ult i32 %i.ayu, 32
  br i1 %.not.i18.i.i.i.i.i.i, label %bb.cq, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i47.i.i.i)
  %i.azr = add nuw nsw i32 %i.ayl, 4              ; 3 uses
  %.not.i.i19.i.i.i.i.i.i = icmp samesign ugt i32 %i.azr, %i.auz
  br i1 %.not.i.i19.i.i.i.i.i.i, label %bb.cs, label %bb.cr, !prof !134

bb.cr:                                            ; preds = %bb.cq
  %i.azs = zext nneg i32 %i.ayl to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.azs
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.azu = icmp samesign ugt i32 %i.ayl, %i.avb
  br i1 %i.azu, label %.invoke191.i.i, label %bb.ct, !prof !134

bb.ct:                                            ; preds = %bb.cs
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

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i: ; preds = %bb.ct, %bb.cr
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i129.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i47.i.i.i, %bb.ct ], [ %i.azt, %bb.cr ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i130.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i129.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i47.i.i.i)
  %i.bab = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i130.i.i.i)
  %i.bac = zext i32 %i.bab to i64
  %i.bad = or disjoint i32 %i.ayu, 32             ; 2 uses
  %i.bae = sub nuw nsw i32 32, %i.ayu
  %i.baf = zext nneg i32 %i.bae to i64
  %i.bag = shl nuw i64 %i.bac, %i.baf
  %i.bah = or i64 %i.bag, %i.ayw                  ; 2 uses
  store i64 %i.bah, ptr %i.er, align 8, !tbaa !270
  store i32 %i.bad, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.azr, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i, %bb.cp
  %.promoted16.i.i164.i.i.i.i.i = phi i32 [ %.promoted16.i.i165.i.i.i.i.i, %bb.cp ], [ %i.azr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ]
  %.promoted.i.i163.i.i.i.i.i = phi i32 [ %i.ayu, %bb.cp ], [ %i.bad, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ] ; 2 uses
  %i.bai = phi i64 [ %i.ayw, %bb.cp ], [ %i.bah, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ] ; 2 uses
  %.not.i.i.i10.i120.i.i.i = icmp eq i32 %.033.i.i.i.i117.i.i.i, 0
  br i1 %.not.i.i.i10.i120.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i
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
  store i64 %i.baq, ptr %i.er, align 8, !tbaa !270
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i
end_hunk_1
