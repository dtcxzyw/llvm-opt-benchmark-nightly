Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within:bb.a
  %i.pd = xor i64 %i.pc, %i.pa                    ; 2 uses
  %i.pe = lshr i64 %i.pd, 8
  %i.pf = xor i64 %i.pe, %i.pc
  %i.pg = and i64 %i.pf, 280375465148160
  %i.ph = mul nuw nsw i64 %i.pg, 257
  %i.pi = xor i64 %i.ph, %i.pd                    ; 3 uses
  %i.pj = lshr i64 %i.pi, 4
  %i.pk = xor i64 %i.pj, %i.pi
  %i.pl = and i64 %i.pk, 67555025218437360
  %i.pm = mul nuw nsw i64 %i.pl, 17
  %i.pn = xor i64 %i.pm, %i.pi
  store i64 %i.pn, ptr %i.bl, align 8
  br i1 %i.dk, label %.lr.ph, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.1.i.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.1.i.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMs0_BS_BQ_7encrypt0EBY_.exit.i
  %i.po = shl nuw i64 %i.nw, 2
  %i.pp = xor i64 %i.po, %i.nb                    ; 3 uses
  %i.pq = shl nuw i64 %i.no, 2
  %i.pr = xor i64 %i.pq, %i.mp                    ; 3 uses
  %i.ps = and i64 %i.pr, 4294967295
  %i.pt = shl i64 %i.pp, 32                       ; 2 uses
  %i.pu = or disjoint i64 %i.pt, %i.ps
  %i.pv = lshr exact i64 %i.pt, 16
  %i.pw = xor i64 %i.pv, %i.pr
  %i.px = and i64 %i.pw, 4294901760               ; 2 uses
  %i.py = shl nuw nsw i64 %i.px, 16
  %i.pz = xor i64 %i.py, %i.pu                    ; 2 uses
  %i.qa = xor i64 %i.pz, %i.px                    ; 2 uses
  %i.qb = lshr i64 %i.qa, 8
  %i.qc = xor i64 %i.qb, %i.pz
  %i.qd = and i64 %i.qc, 280375465148160
  %i.qe = mul nuw nsw i64 %i.qd, 257
  %i.qf = xor i64 %i.qe, %i.qa                    ; 3 uses
  %i.qg = lshr i64 %i.qf, 4
  %i.qh = xor i64 %i.qg, %i.qf
  %i.qi = and i64 %i.qh, 67555025218437360
  %i.qj = mul nuw nsw i64 %i.qi, 17
  %i.qk = xor i64 %i.qj, %i.qf
  store i64 %i.qk, ptr %i.bm, align 16
  %i.ql = and i64 %i.pp, -4294967296
  %i.qm = lshr i64 %i.pr, 32                      ; 2 uses
  %i.qn = or disjoint i64 %i.ql, %i.qm
  %i.qo = lshr i64 %i.pp, 16
  %i.qp = xor i64 %i.qo, %i.qm
  %i.qq = and i64 %i.qp, 4294901760               ; 2 uses
  %i.qr = shl nuw nsw i64 %i.qq, 16
  %i.qs = xor i64 %i.qr, %i.qn                    ; 2 uses
  %i.qt = xor i64 %i.qs, %i.qq                    ; 2 uses
  %i.qu = lshr i64 %i.qt, 8
  %i.qv = xor i64 %i.qu, %i.qs
  %i.qw = and i64 %i.qv, 280375465148160
  %i.qx = mul nuw nsw i64 %i.qw, 257
  %i.qy = xor i64 %i.qx, %i.qt                    ; 3 uses
  %i.qz = lshr i64 %i.qy, 4
  %i.ra = xor i64 %i.qz, %i.qy
  %i.rb = and i64 %i.ra, 67555025218437360
  %i.rc = mul nuw nsw i64 %i.rb, 17
  %i.rd = xor i64 %i.rc, %i.qy
  store i64 %i.rd, ptr %i.bn, align 8
  %i.re = icmp eq i64 %.sroa.07.0, 2
  br i1 %i.re, label %.lr.ph, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.2.i.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.2.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.1.i.i.i
  %i.rf = and i64 %i.nl, 4294967295
  %i.rg = shl i64 %i.nt, 32                       ; 2 uses
  %i.rh = or disjoint i64 %i.rg, %i.rf
  %i.ri = lshr exact i64 %i.rg, 16
  %i.rj = xor i64 %i.ri, %i.nl
  %i.rk = and i64 %i.rj, 4294901760               ; 2 uses
  %i.rl = shl nuw nsw i64 %i.rk, 16
  %i.rm = xor i64 %i.rl, %i.rh                    ; 2 uses
  %i.rn = xor i64 %i.rm, %i.rk                    ; 2 uses
  %i.ro = lshr i64 %i.rn, 8
  %i.rp = xor i64 %i.ro, %i.rm
  %i.rq = and i64 %i.rp, 280375465148160
  %i.rr = mul nuw nsw i64 %i.rq, 257
  %i.rs = xor i64 %i.rr, %i.rn                    ; 3 uses
  %i.rt = lshr i64 %i.rs, 4
  %i.ru = xor i64 %i.rt, %i.rs
  %i.rv = and i64 %i.ru, 67555025218437360
  %i.rw = mul nuw nsw i64 %i.rv, 17
  %i.rx = xor i64 %i.rw, %i.rs
  store i64 %i.rx, ptr %i.bo, align 16
  %i.ry = and i64 %i.nt, -4294967296
  %i.rz = lshr i64 %i.nl, 32                      ; 2 uses
  %i.sa = or disjoint i64 %i.ry, %i.rz
  %i.sb = lshr i64 %i.nt, 16
  %i.sc = xor i64 %i.sb, %i.rz
  %i.sd = and i64 %i.sc, 4294901760               ; 2 uses
  %i.se = shl nuw nsw i64 %i.sd, 16
  %i.sf = xor i64 %i.se, %i.sa                    ; 2 uses
  %i.sg = xor i64 %i.sf, %i.sd                    ; 2 uses
  %i.sh = lshr i64 %i.sg, 8
  %i.si = xor i64 %i.sh, %i.sf
  %i.sj = and i64 %i.si, 280375465148160
  %i.sk = mul nuw nsw i64 %i.sj, 257
  %i.sl = xor i64 %i.sk, %i.sg                    ; 3 uses
  %i.sm = lshr i64 %i.sl, 4
  %i.sn = xor i64 %i.sm, %i.sl
  %i.so = and i64 %i.sn, 67555025218437360
  %i.sp = mul nuw nsw i64 %i.so, 17
  %i.sq = xor i64 %i.sp, %i.sl
  store i64 %i.sq, ptr %i.bp, align 8
  %i.sr = icmp eq i64 %.sroa.07.0, 3
  br i1 %i.sr, label %.lr.ph, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.3.i.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.3.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.2.i.i.i
  %i.ss = and i64 %i.np, 4294967295
  %i.st = shl i64 %i.nx, 32                       ; 2 uses
  %i.su = or disjoint i64 %i.st, %i.ss
  %i.sv = lshr exact i64 %i.st, 16
  %i.sw = xor i64 %i.sv, %i.np
  %i.sx = and i64 %i.sw, 4294901760               ; 2 uses
  %i.sy = shl nuw nsw i64 %i.sx, 16
  %i.sz = xor i64 %i.sy, %i.su                    ; 2 uses
  %i.ta = xor i64 %i.sz, %i.sx                    ; 2 uses
  %i.tb = lshr i64 %i.ta, 8
  %i.tc = xor i64 %i.tb, %i.sz
  %i.td = and i64 %i.tc, 280375465148160
  %i.te = mul nuw nsw i64 %i.td, 257
  %i.tf = xor i64 %i.te, %i.ta                    ; 3 uses
  %i.tg = lshr i64 %i.tf, 4
  %i.th = xor i64 %i.tg, %i.tf
  %i.ti = and i64 %i.th, 67555025218437360
  %i.tj = mul nuw nsw i64 %i.ti, 17
  %i.tk = xor i64 %i.tj, %i.tf
  store i64 %i.tk, ptr %i.bq, align 16
  %i.tl = and i64 %i.nx, -4294967296
  %i.tm = lshr i64 %i.np, 32                      ; 2 uses
  %i.tn = or disjoint i64 %i.tl, %i.tm
  %i.to = lshr i64 %i.nx, 16
  %i.tp = xor i64 %i.to, %i.tm
  %i.tq = and i64 %i.tp, 4294901760               ; 2 uses
  %i.tr = shl nuw nsw i64 %i.tq, 16
  %i.ts = xor i64 %i.tr, %i.tn                    ; 2 uses
  %i.tt = xor i64 %i.ts, %i.tq                    ; 2 uses
  %i.tu = lshr i64 %i.tt, 8
  %i.tv = xor i64 %i.tu, %i.ts
  %i.tw = and i64 %i.tv, 280375465148160
  %i.tx = mul nuw nsw i64 %i.tw, 257
  %i.ty = xor i64 %i.tx, %i.tt                    ; 3 uses
  %i.tz = lshr i64 %i.ty, 4
  %i.ua = xor i64 %i.tz, %i.ty
  %i.ub = and i64 %i.ua, 67555025218437360
  %i.uc = mul nuw nsw i64 %i.ub, 17
  %i.ud = xor i64 %i.uc, %i.ty
  store i64 %i.ud, ptr %i.br, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.3.i.i.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.2.i.i.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateQAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2N_5Batch10into_bytes0E0E0B2T_.exit.1.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMs0_BS_BQ_7encrypt0EBY_.exit.i
  %.idx = shl nuw nsw i64 %..i35, 4               ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  br i1 %i.cj, label %.split, label %.lr.ph.split.preheader, !prof !29

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.uf = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ug = and i64 %i.uf, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ug, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.split.prol, label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader
  %.not.i.prol = icmp ugt i64 %i.ck, %.promoted4956
  br i1 %.not.i.prol, label %.split, label %.lr.ph.split.prol.loopexit.unr-lcssa, !prof !29

.lr.ph.split.prol.loopexit.unr-lcssa:             ; preds = %.lr.ph.split.prol
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.promoted54) ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.promoted54, i64 %.sroa.543.0.copyload.fr
  %i.ui = load <16 x i8>, ptr %i.uh, align 1, !noalias !6529
  %i.uj = load <16 x i8>, ptr %i.d, align 16
  %i.uk = xor <16 x i8> %i.uj, %i.ui
  store <16 x i8> %i.uk, ptr %i.d, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.promoted54, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.ul = add i64 %.promoted4956, -16             ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.promoted54, i64 16 ; 2 uses
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %.lcssa85.unr = phi i64 [ poison, %.lr.ph.split.preheader ], [ %i.ul, %.lr.ph.split.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.split.preheader ], [ %i.um, %.lr.ph.split.prol.loopexit.unr-lcssa ]
  %.sroa.013.051.unr = phi ptr [ %i.d, %.lr.ph.split.preheader ], [ %i.cl, %.lr.ph.split.prol.loopexit.unr-lcssa ]
  %.sroa.041.0.copyload4850.unr = phi ptr [ %.promoted54, %.lr.ph.split.preheader ], [ %i.um, %.lr.ph.split.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %.promoted4956, %.lr.ph.split.preheader ], [ %i.ul, %.lr.ph.split.prol.loopexit.unr-lcssa ]
  %i.un = icmp eq i64 %i.uf, 0
  br i1 %i.un, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %bb.i
  %.sroa.013.051 = phi ptr [ %i.vc, %bb.i ], [ %.sroa.013.051.unr, %.lr.ph.split.prol.loopexit ] ; 5 uses
  %.sroa.041.0.copyload4850 = phi ptr [ %i.vb, %bb.i ], [ %.sroa.041.0.copyload4850.unr, %.lr.ph.split.prol.loopexit ] ; 5 uses
  %i.uo = phi i64 [ %i.va, %bb.i ], [ %.unr, %.lr.ph.split.prol.loopexit ] ; 3 uses
  %.not.i = icmp ugt i64 %i.ck, %i.uo
  br i1 %.not.i, label %.split, label %.lr.ph.split.1, !prof !29

.split:                                           ; preds = %.lr.ph, %.lr.ph.split.1, %.lr.ph.split, %.lr.ph.split.prol
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #41
  unreachable

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.0.copyload4850) ]
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.041.0.copyload4850, i64 %.sroa.543.0.copyload.fr
  %i.uq = load <16 x i8>, ptr %i.up, align 1, !noalias !6529
  %i.ur = load <16 x i8>, ptr %.sroa.013.051, align 1
  %i.us = xor <16 x i8> %i.ur, %i.uq
  store <16 x i8> %i.us, ptr %.sroa.013.051, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.041.0.copyload4850, ptr noundef nonnull readonly align 1 dereferenceable(16) %.sroa.013.051, i64 16, i1 false)
  %i.ut = add i64 %i.uo, -16
  %.not.i.1 = icmp ugt i64 %i.ck, %i.ut
  br i1 %.not.i.1, label %.split, label %bb.i, !prof !29

bb.i:                                             ; preds = %.lr.ph.split.1
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.013.051, i64 16 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.041.0.copyload4850, i64 16 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %.sroa.543.0.copyload.fr
  %i.ux = load <16 x i8>, ptr %i.uw, align 1, !noalias !6529
  %i.uy = load <16 x i8>, ptr %i.uu, align 1
  %i.uz = xor <16 x i8> %i.uy, %i.ux
  store <16 x i8> %i.uz, ptr %i.uu, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.uv, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.uu, i64 16, i1 false)
  %i.va = add i64 %i.uo, -32                      ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.041.0.copyload4850, i64 32 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.013.051, i64 32 ; 2 uses
  %i.vd = icmp eq ptr %i.vc, %i.ue
  br i1 %i.vd, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.i, %.lr.ph.split.prol.loopexit
  %.lcssa85 = phi i64 [ %.lcssa85.unr, %.lr.ph.split.prol.loopexit ], [ %i.va, %bb.i ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.split.prol.loopexit ], [ %i.vb, %bb.i ]
  %i.ve = sub nuw nsw i64 %.sroa.07.0, %..i35     ; 2 uses
  %i.vf = icmp eq i64 %i.ve, 0
  br i1 %i.vf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.vg = add i32 %.sroa.04.0, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i

bb.l:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB5_9PublicKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6532
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6532
  store ptr %0, ptr %i.a, align 8, !noalias !6532
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 32, ptr %i.c, align 8, !noalias !6532
  %i.d = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  %i.e = call noundef zeroext i1 @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6532
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs5_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6535)
  %i.a = load i64, ptr %0, align 8, !alias.scope !6535, !noundef !15 ; 3 uses
  %i.b = icmp ult i64 %i.a, 98
  br i1 %i.b, label %_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.a, i64 noundef 97, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41, !noalias !6535
  unreachable

_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.a, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @325, i64 noundef 9)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @327, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @326)
  %i.c = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtCs5yxAJGbRKSL_4ring9agreementNtB5_19EphemeralPrivateKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 19)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs_NtCs5yxAJGbRKSL_4ring9signatureNtB4_9SignatureINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !15  ; 3 uses
  %i.b = icmp ult i64 %i.a, 106
  br i1 %i.b, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.a, i64 noundef 105, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.a, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs5yxAJGbRKSL_4ring4aead11unbound_keyNtB4_10UnboundKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(456) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6541
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @331, i64 noundef 10), !noalias !6540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6541
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !6540, !nonnull !15, !align !17, !noundef !15
  store ptr %i.d, ptr %i.a, align 8, !noalias !6541, !captures !33
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111), !noalias !6540
  %i.f = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !6540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6541
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs5yxAJGbRKSL_4ring4aead13less_safe_keyNtB4_11LessSafeKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(456) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6547
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @332, i64 noundef 11), !noalias !6546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6547
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !6546, !nonnull !15, !align !17, !noundef !15
  store ptr %i.d, ptr %i.a, align 8, !noalias !6547, !captures !33
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111), !noalias !6546
  %i.f = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !6546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6547
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXs_NtNtCs5yxAJGbRKSL_4ring5error16into_unspecifiedNtNtB6_11unspecified11UnspecifiedINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB1r_5array17TryFromSliceErrorE4from() unnamed_addr #20 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs5yxAJGbRKSL_4ring8testutil4randNtB4_16FixedSliceRandomNtNtNtB8_4rand6sealed12SecureRandom9fill_impl(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6552)
  %.not.i = icmp eq i64 %2, %i.c
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #41, !noalias !6553
  unreachable

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.a, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !6553
  ret i1 false
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !15  ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not.i.i.i = icmp eq i64 %1, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !34, !alias.scope !6604
  %i.c = trunc nuw i8 %.pre.i to i1               ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit, label %bb.d

end_hunk_0
