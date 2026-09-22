Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.09?download=true
inline.NumInlined: 1699
inline.NumDeleted: 847
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvYINtNtNtCs4WSCZBoZJWV_6cipher6stream7wrapper23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1S_IB1S_IB1S_NtB1U_5UTermNtNtB1W_3bit2B1ENtB2V_2B0EB2T_EB39_EEENtB7_12StreamCipher25try_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example:bb.a
  %i.ol = add i32 %i.ok, %i.oh                    ; 2 uses
  %i.om = call noundef i32 @llvm.fshl.i32(i32 %i.ol, i32 %i.ol, i32 13)
  %i.on = xor i32 %i.om, %i.nh                    ; 2 uses
  %i.oo = add i32 %i.on, %i.ok                    ; 2 uses
  %i.op = call noundef i32 @llvm.fshl.i32(i32 %i.oo, i32 %i.oo, i32 18)
  %i.oq = xor i32 %i.op, %i.ng                    ; 3 uses
  %i.or = add i32 %i.nl, %i.nk                    ; 2 uses
  %i.os = call noundef i32 @llvm.fshl.i32(i32 %i.or, i32 %i.or, i32 7)
  %i.ot = xor i32 %i.os, %i.nm                    ; 4 uses
  %i.ou = add i32 %i.ot, %i.nk                    ; 2 uses
  %i.ov = call noundef i32 @llvm.fshl.i32(i32 %i.ou, i32 %i.ou, i32 9)
  %i.ow = xor i32 %i.ov, %i.nn                    ; 3 uses
  %i.ox = add i32 %i.ow, %i.ot                    ; 2 uses
  %i.oy = call noundef i32 @llvm.fshl.i32(i32 %i.ox, i32 %i.ox, i32 13)
  %i.oz = xor i32 %i.oy, %i.nl                    ; 2 uses
  %i.pa = add i32 %i.oz, %i.ow                    ; 2 uses
  %i.pb = call noundef i32 @llvm.fshl.i32(i32 %i.pa, i32 %i.pa, i32 18)
  %i.pc = xor i32 %i.pb, %i.nk                    ; 3 uses
  %i.pd = add i32 %i.np, %i.no                    ; 2 uses
  %i.pe = call noundef i32 @llvm.fshl.i32(i32 %i.pd, i32 %i.pd, i32 7)
  %i.pf = xor i32 %i.pe, %i.nq                    ; 4 uses
  %i.pg = add i32 %i.pf, %i.no                    ; 2 uses
  %i.ph = call noundef i32 @llvm.fshl.i32(i32 %i.pg, i32 %i.pg, i32 9)
  %i.pi = xor i32 %i.ph, %i.nr                    ; 3 uses
  %i.pj = add i32 %i.pi, %i.pf                    ; 2 uses
  %i.pk = call noundef i32 @llvm.fshl.i32(i32 %i.pj, i32 %i.pj, i32 13)
  %i.pl = xor i32 %i.pk, %i.np                    ; 2 uses
  %i.pm = add i32 %i.pl, %i.pi                    ; 2 uses
  %i.pn = call noundef i32 @llvm.fshl.i32(i32 %i.pm, i32 %i.pm, i32 18)
  %i.po = xor i32 %i.pn, %i.no                    ; 3 uses
  %i.pp = add i32 %i.pf, %i.oe                    ; 2 uses
  %i.pq = call noundef i32 @llvm.fshl.i32(i32 %i.pp, i32 %i.pp, i32 7)
  %i.pr = xor i32 %i.pq, %i.on                    ; 4 uses
  %i.ps = add i32 %i.pr, %i.oe                    ; 2 uses
  %i.pt = call noundef i32 @llvm.fshl.i32(i32 %i.ps, i32 %i.ps, i32 9)
  %i.pu = xor i32 %i.pt, %i.ow                    ; 4 uses
  %i.pv = add i32 %i.pu, %i.pr                    ; 2 uses
  %i.pw = call noundef i32 @llvm.fshl.i32(i32 %i.pv, i32 %i.pv, i32 13)
  %i.px = xor i32 %i.pw, %i.pf                    ; 3 uses
  %i.py = add i32 %i.px, %i.pu                    ; 2 uses
  %i.pz = call noundef i32 @llvm.fshl.i32(i32 %i.py, i32 %i.py, i32 18)
  %i.qa = xor i32 %i.pz, %i.oe                    ; 2 uses
  %i.qb = add i32 %i.oq, %i.nv                    ; 2 uses
  %i.qc = call noundef i32 @llvm.fshl.i32(i32 %i.qb, i32 %i.qb, i32 7)
  %i.qd = xor i32 %i.qc, %i.oz                    ; 4 uses
  %i.qe = add i32 %i.qd, %i.oq                    ; 2 uses
  %i.qf = call noundef i32 @llvm.fshl.i32(i32 %i.qe, i32 %i.qe, i32 9)
  %i.qg = xor i32 %i.qf, %i.pi                    ; 4 uses
  %i.qh = add i32 %i.qg, %i.qd                    ; 2 uses
  %i.qi = call noundef i32 @llvm.fshl.i32(i32 %i.qh, i32 %i.qh, i32 13)
  %i.qj = xor i32 %i.qi, %i.nv                    ; 3 uses
  %i.qk = add i32 %i.qj, %i.qg                    ; 2 uses
  %i.ql = call noundef i32 @llvm.fshl.i32(i32 %i.qk, i32 %i.qk, i32 18)
  %i.qm = xor i32 %i.ql, %i.oq                    ; 2 uses
  %i.qn = add i32 %i.pc, %i.oh                    ; 2 uses
  %i.qo = call noundef i32 @llvm.fshl.i32(i32 %i.qn, i32 %i.qn, i32 7)
  %i.qp = xor i32 %i.qo, %i.pl                    ; 4 uses
  %i.qq = add i32 %i.qp, %i.pc                    ; 2 uses
  %i.qr = call noundef i32 @llvm.fshl.i32(i32 %i.qq, i32 %i.qq, i32 9)
  %i.qs = xor i32 %i.qr, %i.ny                    ; 4 uses
  %i.qt = add i32 %i.qs, %i.qp                    ; 2 uses
  %i.qu = call noundef i32 @llvm.fshl.i32(i32 %i.qt, i32 %i.qt, i32 13)
  %i.qv = xor i32 %i.qu, %i.oh                    ; 3 uses
  %i.qw = add i32 %i.qv, %i.qs                    ; 2 uses
  %i.qx = call noundef i32 @llvm.fshl.i32(i32 %i.qw, i32 %i.qw, i32 18)
  %i.qy = xor i32 %i.qx, %i.pc                    ; 2 uses
  %i.qz = add i32 %i.po, %i.ot                    ; 2 uses
  %i.ra = call noundef i32 @llvm.fshl.i32(i32 %i.qz, i32 %i.qz, i32 7)
  %i.rb = xor i32 %i.ra, %i.ob                    ; 4 uses
  %i.rc = add i32 %i.rb, %i.po                    ; 2 uses
  %i.rd = call noundef i32 @llvm.fshl.i32(i32 %i.rc, i32 %i.rc, i32 9)
  %i.re = xor i32 %i.rd, %i.ok                    ; 4 uses
  %i.rf = add i32 %i.re, %i.rb                    ; 2 uses
  %i.rg = call noundef i32 @llvm.fshl.i32(i32 %i.rf, i32 %i.rf, i32 13)
  %i.rh = xor i32 %i.rg, %i.ot                    ; 3 uses
  %i.ri = add i32 %i.rh, %i.re                    ; 2 uses
  %i.rj = call noundef i32 @llvm.fshl.i32(i32 %i.ri, i32 %i.ri, i32 18)
  %i.rk = xor i32 %i.rj, %i.po                    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ns, 10
  br i1 %exitcond.not.i.i.i, label %bb.g, label %bb.h

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %.sroa.510.051.i.i.i = phi i64 [ %i.sf, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i ], [ %.sroa.510.051.i.i.i.unr, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %.sroa.510.051.i.i.i ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %.sroa.510.051.i.i.i
  %i.rn = add nuw i64 %.sroa.510.051.i.i.i, 1     ; 2 uses
  %i.ro = load i32, ptr %i.rl, align 4, !noalias !4320, !noundef !7
  %i.rp = load i32, ptr %i.rm, align 4, !noalias !4320, !noundef !7
  %i.rq = add i32 %i.rp, %i.ro
  store i32 %i.rq, ptr %i.rl, align 4, !noalias !4320
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.rn ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.rn
  %i.rt = add nuw i64 %.sroa.510.051.i.i.i, 2     ; 2 uses
  %i.ru = load i32, ptr %i.rr, align 4, !noalias !4320, !noundef !7
  %i.rv = load i32, ptr %i.rs, align 4, !noalias !4320, !noundef !7
  %i.rw = add i32 %i.rv, %i.ru
  store i32 %i.rw, ptr %i.rr, align 4, !noalias !4320
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.rt ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.rt
  %i.rz = add nuw i64 %.sroa.510.051.i.i.i, 3     ; 2 uses
  %i.sa = load i32, ptr %i.rx, align 4, !noalias !4320, !noundef !7
  %i.sb = load i32, ptr %i.ry, align 4, !noalias !4320, !noundef !7
  %i.sc = add i32 %i.sb, %i.sa
  store i32 %i.sc, ptr %i.rx, align 4, !noalias !4320
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.rz ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.rz
  %i.sf = add nuw i64 %.sroa.510.051.i.i.i, 4     ; 2 uses
  %i.sg = load i32, ptr %i.sd, align 4, !noalias !4320, !noundef !7
  %i.sh = load i32, ptr %i.se, align 4, !noalias !4320, !noundef !7
  %i.si = add i32 %i.sh, %i.sg
  store i32 %i.si, ptr %i.sd, align 4, !noalias !4320
  %exitcond67.not.i.i.i.3 = icmp eq i64 %i.sf, %.sroa.711.0.copyload.i.i.i
  br i1 %exitcond67.not.i.i.i.3, label %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, !llvm.loop !4260

_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, %middle.block194, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !4324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4318
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 4, !alias.scope !4325, !noalias !4326
  %i.sl = add i64 %i.sk, 1
  store i64 %i.sl, ptr %i.sj, align 4, !alias.scope !4325, !noalias !4326
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.sn = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4327
  store ptr %i.sm, ptr %i.b, align 8, !noalias !4328
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !4328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4318
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull %i.sn)
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !noalias !4282

.noexc5.i:                                        ; preds = %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4327
  %i.so = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.sq = load i64, ptr %i.so, align 8, !alias.scope !4329, !noalias !4330, !noundef !7 ; 2 uses
  %i.sr = load i64, ptr %i.sp, align 8, !alias.scope !4329, !noalias !4330, !noundef !7
  %i.ss = icmp ult i64 %i.sq, %i.sr
  br i1 %i.ss, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i, label %iter.check213

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i: ; preds = %.noexc5.i
  %i.st = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %.noexc7.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i
  %i.su = phi i64 [ %i.sq, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i ], [ %i.tb, %.noexc7.i ] ; 3 uses
  %i.sv = add nuw i64 %i.su, 1
  store i64 %i.sv, ptr %i.so, align 8, !alias.scope !4329, !noalias !4330
  %i.sw = invoke { ptr, i64 } @_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %i.su)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !4282 ; 2 uses

.noexc6.i:                                        ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %i.sx = extractvalue { ptr, i64 } %i.sw, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i.i, label %iter.check213, label %bb.i

bb.i:                                             ; preds = %.noexc6.i
  %.val.i1.i.i.i = load ptr, ptr %i.st, align 8, !alias.scope !4329, !noalias !4330, !nonnull !7, !noundef !7
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.val.i1.i.i.i, i64 %i.su
  %i.sz = extractvalue { ptr, i64 } %i.sw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4318
  %i.ta = load i32, ptr %i.sy, align 4, !noalias !4331, !noundef !7
  store i32 %i.ta, ptr %i.e, align 4, !noalias !4318
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull %i.sx, i64 noundef %i.sz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !4282

.noexc7.i:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4318
  %i.tb = load i64, ptr %i.so, align 8, !alias.scope !4329, !noalias !4330, !noundef !7 ; 2 uses
  %i.tc = load i64, ptr %i.sp, align 8, !alias.scope !4329, !noalias !4330, !noundef !7
  %i.td = icmp ult i64 %i.tb, %i.tc
  br i1 %i.td, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, label %iter.check213

iter.check213:                                    ; preds = %.noexc7.i, %.noexc6.i, %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4318
  call void @llvm.experimental.noalias.scope.decl(metadata !4332)
  call void @llvm.experimental.noalias.scope.decl(metadata !4333)
  %min.iters.check200 = icmp samesign ult i64 %i.au, 4
  %i.te = sub i64 %i.ao, %i.am
  %diff.check198 = icmp ugt i64 %i.te, -16
  %or.cond227 = or i1 %min.iters.check200, %diff.check198
  br i1 %or.cond227, label %vec.epilog.scalar.ph214.preheader, label %vector.main.loop.iter.check201

vector.main.loop.iter.check201:                   ; preds = %iter.check213
  %min.iters.check202 = icmp samesign ult i64 %i.au, 16
  br i1 %min.iters.check202, label %vec.epilog.ph217, label %vector.ph203

vector.ph203:                                     ; preds = %vector.main.loop.iter.check201
  %i.tf = and i64 %i.ar, 12
  %n.vec204 = and i64 %i.ar, 48                   ; 4 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.ph203, %vector.body205
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next209, %vector.body205 ] ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.av, i64 %index206
  %wide.load207 = load <16 x i8>, ptr %i.tg, align 1, !noalias !4334
  %i.th = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index206
  %i.ti = getelementptr inbounds nuw i8, ptr %i.s, i64 %index206
  %wide.load208 = load <16 x i8>, ptr %i.ti, align 4, !alias.scope !4335, !noalias !4336
  %i.tj = xor <16 x i8> %wide.load208, %wide.load207
  store <16 x i8> %i.tj, ptr %i.th, align 1, !noalias !4334
  %index.next209 = add nuw i64 %index206, 16      ; 2 uses
  %i.tk = icmp eq i64 %index.next209, %n.vec204
  br i1 %i.tk, label %middle.block210, label %vector.body205, !llvm.loop !4273

middle.block210:                                  ; preds = %vector.body205
  %cmp.n211 = icmp eq i64 %i.au, %n.vec204
  br i1 %cmp.n211, label %.loopexit, label %vec.epilog.iter.check215

vec.epilog.iter.check215:                         ; preds = %middle.block210
  %min.epilog.iters.check216 = icmp eq i64 %i.tf, 0
  br i1 %min.epilog.iters.check216, label %vec.epilog.scalar.ph214.preheader, label %vec.epilog.ph217, !prof !4288

vec.epilog.ph217:                                 ; preds = %vector.main.loop.iter.check201, %vec.epilog.iter.check215
  %vec.epilog.resume.val212 = phi i64 [ %n.vec204, %vec.epilog.iter.check215 ], [ 0, %vector.main.loop.iter.check201 ]
  %n.vec218 = and i64 %i.ar, 60                   ; 3 uses
  br label %vec.epilog.vector.body219

vec.epilog.vector.body219:                        ; preds = %vec.epilog.vector.body219, %vec.epilog.ph217
  %index220 = phi i64 [ %vec.epilog.resume.val212, %vec.epilog.ph217 ], [ %index.next223, %vec.epilog.vector.body219 ] ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.av, i64 %index220
  %wide.load221 = load <4 x i8>, ptr %i.tl, align 1, !noalias !4334
  %i.tm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index220
  %i.tn = getelementptr inbounds nuw i8, ptr %i.s, i64 %index220
  %wide.load222 = load <4 x i8>, ptr %i.tn, align 4, !alias.scope !4335, !noalias !4336
  %i.to = xor <4 x i8> %wide.load222, %wide.load221
  store <4 x i8> %i.to, ptr %i.tm, align 1, !noalias !4334
  %index.next223 = add nuw i64 %index220, 4       ; 2 uses
  %i.tp = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.tp, label %vec.epilog.middle.block224, label %vec.epilog.vector.body219, !llvm.loop !4274

vec.epilog.middle.block224:                       ; preds = %vec.epilog.vector.body219
  %cmp.n225 = icmp eq i64 %i.au, %n.vec218
  br i1 %cmp.n225, label %.loopexit, label %vec.epilog.scalar.ph214.preheader

vec.epilog.scalar.ph214.preheader:                ; preds = %iter.check213, %vec.epilog.iter.check215, %vec.epilog.middle.block224
  %.sroa.01.0.i1.i.i.ph = phi i64 [ 0, %iter.check213 ], [ %n.vec204, %vec.epilog.iter.check215 ], [ %n.vec218, %vec.epilog.middle.block224 ] ; 3 uses
  %xtraiter265 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %vec.epilog.scalar.ph214.prol.loopexit, label %vec.epilog.scalar.ph214.prol

vec.epilog.scalar.ph214.prol:                     ; preds = %vec.epilog.scalar.ph214.preheader, %vec.epilog.scalar.ph214.prol
  %.sroa.01.0.i1.i.i.prol = phi i64 [ %i.tt, %vec.epilog.scalar.ph214.prol ], [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph214.preheader ] ; 4 uses
  %prol.iter267 = phi i64 [ %prol.iter267.next, %vec.epilog.scalar.ph214.prol ], [ 0, %vec.epilog.scalar.ph214.preheader ]
  %i.tq = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.01.0.i1.i.i.prol
  %i.tr = load i8, ptr %i.tq, align 1, !noalias !4334, !noundef !7
  %i.ts = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i1.i.i.prol
  %i.tt = add nuw nsw i64 %.sroa.01.0.i1.i.i.prol, 1 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i1.i.i.prol
  %i.tv = load i8, ptr %i.tu, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.tw = xor i8 %i.tv, %i.tr
  store i8 %i.tw, ptr %i.ts, align 1, !noalias !4334
  %prol.iter267.next = add i64 %prol.iter267, 1   ; 2 uses
  %prol.iter267.cmp.not = icmp eq i64 %prol.iter267.next, %xtraiter265
  br i1 %prol.iter267.cmp.not, label %vec.epilog.scalar.ph214.prol.loopexit, label %vec.epilog.scalar.ph214.prol, !llvm.loop !4275

vec.epilog.scalar.ph214.prol.loopexit:            ; preds = %vec.epilog.scalar.ph214.prol, %vec.epilog.scalar.ph214.preheader
  %.sroa.01.0.i1.i.i.unr = phi i64 [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph214.preheader ], [ %i.tt, %vec.epilog.scalar.ph214.prol ]
  %i.tx = sub nsw i64 %.sroa.01.0.i1.i.i.ph, %i.au
  %i.ty = icmp ugt i64 %i.tx, -4
  br i1 %i.ty, label %.loopexit, label %vec.epilog.scalar.ph214

vec.epilog.scalar.ph214:                          ; preds = %vec.epilog.scalar.ph214.prol.loopexit, %vec.epilog.scalar.ph214
  %.sroa.01.0.i1.i.i = phi i64 [ %i.ux, %vec.epilog.scalar.ph214 ], [ %.sroa.01.0.i1.i.i.unr, %vec.epilog.scalar.ph214.prol.loopexit ] ; 7 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.01.0.i1.i.i
  %i.ua = load i8, ptr %i.tz, align 1, !noalias !4334, !noundef !7
  %i.ub = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i1.i.i
  %i.uc = add nuw nsw i64 %.sroa.01.0.i1.i.i, 1   ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i1.i.i
  %i.ue = load i8, ptr %i.ud, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.uf = xor i8 %i.ue, %i.ua
  store i8 %i.uf, ptr %i.ub, align 1, !noalias !4334
  %i.ug = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.uc
  %i.uh = load i8, ptr %i.ug, align 1, !noalias !4334, !noundef !7
  %i.ui = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.uc
  %i.uj = add nuw nsw i64 %.sroa.01.0.i1.i.i, 2   ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.uc
  %i.ul = load i8, ptr %i.uk, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.um = xor i8 %i.ul, %i.uh
  store i8 %i.um, ptr %i.ui, align 1, !noalias !4334
  %i.un = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.uj
  %i.uo = load i8, ptr %i.un, align 1, !noalias !4334, !noundef !7
  %i.up = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.uj
  %i.uq = add nuw nsw i64 %.sroa.01.0.i1.i.i, 3   ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.uj
  %i.us = load i8, ptr %i.ur, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.ut = xor i8 %i.us, %i.uo
  store i8 %i.ut, ptr %i.up, align 1, !noalias !4334
  %i.uu = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.uq
  %i.uv = load i8, ptr %i.uu, align 1, !noalias !4334, !noundef !7
  %i.uw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.uq
  %i.ux = add nuw nsw i64 %.sroa.01.0.i1.i.i, 4   ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.uq
  %i.uz = load i8, ptr %i.uy, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.va = xor i8 %i.uz, %i.uv
  store i8 %i.va, ptr %i.uw, align 1, !noalias !4334
  %exitcond.not.i8.i.3 = icmp eq i64 %i.ux, %i.au
  br i1 %exitcond.not.i8.i.3, label %.loopexit, label %vec.epilog.scalar.ph214, !llvm.loop !4276

.loopexit:                                        ; preds = %vec.epilog.scalar.ph214.prol.loopexit, %vec.epilog.scalar.ph214, %vec.epilog.middle.block224, %middle.block210
  %i.vb = trunc nuw nsw i64 %i.au to i8
  store i8 %i.vb, ptr %i.s, align 4, !alias.scope !4337, !noalias !4338
  br label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example.exit

.loopexit.i:                                      ; preds = %bb.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i, %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i8 64, ptr %i.s, align 4, !alias.scope !4281, !noalias !4282
  resume { ptr, i32 } %lpad.phi.i

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.loopexit, %_RNvYINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBM_IBM_IBM_NtBO_5UTermNtNtBQ_3bit2B1ENtB1L_2B0EB1J_EB1Y_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCshke30g4Hb4g_20ipfs_private_example.exit.i, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0.i4 = phi i1 [ true, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit ], [ false, %_RNvYINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBM_IBM_IBM_NtBO_5UTermNtNtBQ_3bit2B1ENtB1L_2B0EB1J_EB1Y_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCshke30g4Hb4g_20ipfs_private_example.exit.i ], [ false, %.loopexit ]
  ret i1 %.sroa.0.0.i4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBJ_3ops8function6FnOnceTlQNtNtBJ_3fmt9FormatterEE9call_onceCshke30g4Hb4g_20ipfs_private_example(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4341
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0), !noalias !4341
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !4341, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !4341, !noundef !7
  %i.f = invoke noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4341
  ret i1 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskmxkG8Vp81z_12hybrid_array7from_fnINtB5_5ArrayhINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB24_2B0EB2h_EB2h_EB2h_EB2h_EB2h_EE11try_from_fnzNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtCskKLDkoKarTP_4core7default7Default7default0E0ECshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 1 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull) unnamed_addr #0

end_hunk_0
