Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection16union_projection:bb.a
  %i.ag = or disjoint i64 %i.af, 288230376151711744
  %i.ah = xor i64 %.val7.i.i.i.i.i.i.i.i.i, %i.af
  %i.ai = xor i64 %i.ah, 8098989879002948979      ; 3 uses
  %i.aj = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.ak = add i64 %i.ai, %i.ae                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 13)
  %i.am = xor i64 %i.al, %i.aj                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 17)
  %i.at = xor i64 %i.aq, %i.as                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 21)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = xor i64 %i.ar, %i.ag
  %i.ay = xor i64 %i.aw, 255
  %i.az = add i64 %i.ax, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ay, %i.av                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 13)
  %i.bc = xor i64 %i.az, %i.bb                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.be = xor i64 %i.ba, %i.bd                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bj = xor i64 %i.bg, %i.bi                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bs = xor i64 %i.br, %i.bo                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.bu = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bv = add i64 %i.bs, %i.bt                    ; 2 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bx = xor i64 %i.bw, %i.bu                    ; 3 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bz = xor i64 %i.by, %i.bv                    ; 3 uses
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.cb = add i64 %i.bx, %i.bv
  %i.cc = add i64 %i.bz, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 13)
  %i.ce = xor i64 %i.cd, %i.cb                    ; 3 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 16)
  %i.cg = xor i64 %i.cf, %i.cc                    ; 2 uses
  %i.ch = add i64 %i.ce, %i.cc                    ; 3 uses
  %i.ci = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 17)
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 21)
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 32)
  %i.cl = xor i64 %i.ci, %i.cj
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = xor i64 %i.cm, %i.ch                    ; 2 uses
  %i.co = load i64, ptr %i.n, align 8, !alias.scope !19696, !noalias !19695, !noundef !23
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.c, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE7reserveNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i, !prof !26

bb.c:                                             ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i
  %i.cq = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE14reserve_rehashNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE7reserveNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE7reserveNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i
  %.val.i.i1.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !19697, !noalias !19695, !nonnull !23, !noundef !23 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !19697, !noalias !19695, !noundef !23 ; 4 uses
  %i.cr = lshr i64 %i.cn, 57
  %i.cs = trunc nuw nsw i64 %i.cr to i8           ; 3 uses
  %i.ct = insertelement <16 x i8> poison, i8 %i.cs, i64 0
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE7reserveNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE7reserveNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.dt, %bb.g ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE7reserveNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i, %bb.g ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE7reserveNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i, %bb.g ]
  %i.cv = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTluEE7reserveNCINvNtB8_3map11make_hasherluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ds, %bb.g ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !19698 ; 3 uses
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i, %i.cu
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.d, %bb.e
  %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.di, %bb.e ], [ %i.cy, %bb.d ] ; 3 uses
  %i.cz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i, %i.da
  %i.dc = and i64 %i.db, %.val7.i.i.i.i.i.i.i.i.i.i
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [4 x i8], ptr %.val.i.i1.i.i.i.i.i.i.i.i, i64 %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -4
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.df, align 4, !noalias !19699, !noundef !23
  %i.dg = icmp eq i32 %.val14.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dg, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i, label %bb.e, !prof !28

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.e, %bb.d
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !26

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.di = and i16 %i.dh, %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.di, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.dj = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %.thread24.i.i.i.i.i.i.i.i.i.i.i, !prof !26

.thread24.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.f
  %i.dl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dk, i1 true)
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i, %i.dm
  %i.do = and i64 %i.dn, %.val7.i.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.thread24.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.do, %.thread24.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dp = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dq = bitcast <16 x i1> %i.dp to i16
  %i.dr = icmp eq i16 %i.dq, 0
  br i1 %i.dr, label %bb.g, label %bb.h, !prof !26

bb.g:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.f ]
  %i.ds = add i64 %i.cv, 16                       ; 2 uses
  %i.dt = add i64 %i.ds, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i
  %i.dv = load i8, ptr %i.du, align 1, !noalias !19700, !noundef !23 ; 2 uses
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i1.i.i.i.i.i.i.i.i, align 16, !noalias !19700
  %i.dx = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not.i24.i.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.dy, 0
  %i.dz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dy, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i.i.i.i.i.i.i.i.i.i), !noalias !19701
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i, i64 %i.ea
  %.pre.i2.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 1, !noalias !19702
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eb = phi i8 [ %.pre.i2.i.i.i.i.i.i.i.i, %bb.i ], [ %i.dv, %bb.h ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ea, %bb.i ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19703), !noalias !19701
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i
  %i.ed = and i8 %i.eb, 1
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i, -16
  %i.eg = and i64 %i.ef, %.val7.i.i.i.i.i.i.i.i.i.i
  store i8 %i.cs, ptr %i.ec, align 1, !noalias !19702
  %i.eh = getelementptr i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  store i8 %i.cs, ptr %i.ei, align 1, !noalias !19702
  %i.ej = load <2 x i64>, ptr %i.n, align 8, !alias.scope !19704, !noalias !19695
  %i.ek = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ee, i64 0
  %i.el = sub <2 x i64> %i.ej, %i.ek
  store <2 x i64> %i.el, ptr %i.n, align 8, !alias.scope !19704, !noalias !19695
  %i.em = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i
  %i.en = getelementptr inbounds [4 x i8], ptr %.val.i.i1.i.i.i.i.i.i.i.i, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  store i32 %.val14.i.i.i.i.i.i.i.i.i, ptr %i.eo, align 4, !noalias !19702
  br label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %i.ep = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i
  %i.eq = phi ptr [ %i.eu, %.lr.ph.split.i.i.i.i.i.i.i.i.i ], [ %.lcssa2530.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.er = phi ptr [ %i.et, %.lr.ph.split.i.i.i.i.i.i.i.i.i ], [ %.lcssa2428.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.val17.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.eq, align 16, !noalias !19693
  %i.es = icmp sgt <16 x i8> %.val17.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -64 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.es to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i

_RINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB6_7HashSetlNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendlE6extendINtNtNtB1K_8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3set4IterlEEECs63DIHKhvmTb_10lance_core.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ex = load <4 x i8>, ptr %i.ev, align 8
  %i.ey = trunc <4 x i8> %i.ex to <4 x i1>
  %i.ez = load <4 x i8>, ptr %i.ew, align 8
  %i.fa = select <4 x i1> %i.ey, <4 x i8> splat (i8 1), <4 x i8> %i.ez
  store <4 x i8> %i.fa, ptr %i.ev, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  ret void

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp31
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection17contains_field_id(ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) unnamed_addr #27 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.a, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19718)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !19718, !noundef !23
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keylECs63DIHKhvmTb_10lance_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !19718, !noundef !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val5.i = load i64, ptr %i.g, align 8, !alias.scope !19718, !noundef !23
  %i.h = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECs63DIHKhvmTb_10lance_core(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !19718 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19720)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !19721, !noundef !23 ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !alias.scope !19721, !nonnull !23, !noundef !23 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.l    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !19722 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %.val2.i.i.i = load i32, ptr %i.y, align 4, !noalias !19723, !noundef !23
  %i.z = icmp eq i32 %1, %.val2.i.i.i
  br i1 %i.z, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keylECs63DIHKhvmTb_10lance_core.exit, label %bb.d, !prof !28

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keylECs63DIHKhvmTb_10lance_core.exit, !prof !26

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  br label %bb.c

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keylECs63DIHKhvmTb_10lance_core.exit: ; preds = %._crit_edge.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i.i ], [ false, %._crit_edge.i.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection18add_field_children(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i64, ptr %i.c, align 8, !noundef !23 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 192
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 176
  %i.i = load i32, ptr %i.h, align 8, !noundef !23
  %i.j = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(48) %0, i32 noundef %i.i) ; 0 uses
  tail call void @_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection18add_field_children(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.0.02)
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection18union_arrow_schema(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(128) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = load ptr, ptr %2, align 8, !nonnull !23, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 4 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schemas1_0EB33_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schema0Bb_.exit.backedge.i
  %i.j = phi ptr [ %i.k, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schema0Bb_.exit.backedge.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !19736, !nonnull !23, !noundef !23 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noalias !19736, !noundef !23
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %.split.i, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schema0Bb_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !19736, !nonnull !23, !noundef !23 ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 2003792479
  %i.s = getelementptr i8, ptr %i.p, i64 4
  %i.t = load i16, ptr %i.s, align 1
  %i.u = zext i16 %i.t to i32
  %i.v = xor i32 %i.u, 25705
  %i.w = or i32 %i.r, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schema0EB33_.exit, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schema0Bb_.exit.backedge.i

_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schema0Bb_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not6.i = icmp eq ptr %i.k, %i.i
  br i1 %.not6.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schema0EB33_.exit, label %.lr.ph.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEB1l_.exit.i: ; preds = %.body.i, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.aa)
  br label %.thread

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schema0EB33_.exit: ; preds = %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schema0Bb_.exit.backedge.i, %.split.i
  %.lcssa.i = phi i8 [ 0, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schema0Bb_.exit.backedge.i ], [ 1, %.split.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !29, !noundef !23
  %i.ad = or i8 %i.ac, %.lcssa.i
  store i8 %i.ad, ptr %i.ab, align 8
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schema0EB33_.exit, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schemas_0Bb_.exit.backedge.i
  %i.ae = phi ptr [ %i.af, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schemas_0Bb_.exit.backedge.i ], [ %i.h, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schema0EB33_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.val.i16 = load ptr, ptr %i.ae, align 8, !noalias !19737, !nonnull !23, !noundef !23 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i16, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !19737, !noundef !23
  %i.ai = icmp eq i64 %i.ah, 8
  br i1 %i.ai, label %.split.i21, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schemas_0Bb_.exit.backedge.i

.split.i21:                                       ; preds = %.lr.ph.i15
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i16, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !19737, !nonnull !23, !noundef !23
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = icmp ne i64 %i.al, 8242823587773248095
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schemas_0EB33_.exit, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schemas_0Bb_.exit.backedge.i

_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schemas_0Bb_.exit.backedge.i: ; preds = %.split.i21, %.lr.ph.i15
  %.not6.i17 = icmp eq ptr %i.af, %i.i
  br i1 %.not6.i17, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schemas_0EB33_.exit, label %.lr.ph.i15

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection18union_arrow_schemas_0EB33_.exit: ; preds = %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schemas_0Bb_.exit.backedge.i, %.split.i21
  %.lcssa.i20 = phi i8 [ 1, %.split.i21 ], [ 0, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection18union_arrow_schemas_0Bb_.exit.backedge.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection19subtract_projection:bb.a
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.m, align 8, !noalias !19814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false), !noalias !19812
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.v, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !19812
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi20.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !19812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19816)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load i64, ptr %i.x, align 8, !alias.scope !19816, !noalias !19817
  %.fr2.i.i.i.i.i.i.i.i = freeze i64 %i.ab
  %i.ac = icmp eq i64 %.fr2.i.i.i.i.i.i.i.i, 0
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19816, !noalias !19817
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19816, !noalias !19817
  %i.ad = load i64, ptr %i.aa, align 8, !alias.scope !19816, !noalias !19817 ; 2 uses
  %i.ae = load ptr, ptr %i.l, align 8, !alias.scope !19816, !noalias !19817, !nonnull !23 ; 2 uses
  br i1 %i.ac, label %.outer.i.i.us.i.i.i.i.i.i.i.i, label %.outer.i.i.i.i.i.i.i.i.i.i

.outer.i.i.us.i.i.i.i.i.i.i.i:                    ; preds = %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i, %.noexc.i
  %i.af = phi i16 [ %i.at, %.noexc.i ], [ %i.k, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.lcssa2429.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2428.i.i.us.i.i.i.i.i.i.i.i, %.noexc.i ], [ %i.h, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.lcssa2327.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2326.i.i.us.i.i.i.i.i.i.i.i, %.noexc.i ], [ %i.d, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %.noexc.i ], [ %i.j, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.not20.i.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not20.i.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i.i.i.i:                    ; preds = %.outer.i.i.us.i.i.i.i.i.i.i.i
  %i.ag = icmp eq i64 %.sroa.0.0.ph.i.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.loopexit, label %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i ], [ %.lcssa2429.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i ], [ %.lcssa2327.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.i.i.i ]
  %.val16.i.i.us.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !19818
  %i.aj = icmp sgt <16 x i8> %.val16.i.i.us.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.us.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.us.i.i.i.i.i.i.i.i

._crit_edge.i.i.us.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i, %.outer.i.i.us.i.i.i.i.i.i.i.i
  %.lcssa2428.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2429.i.i.us.i.i.i.i.i.i.i.i, %.outer.i.i.us.i.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i ]
  %.lcssa2326.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2327.i.i.us.i.i.i.i.i.i.i.i, %.outer.i.i.us.i.i.i.i.i.i.i.i ], [ %i.ak, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.us.i.i.i.i.i.i.i.i = phi i16 [ %i.af, %.outer.i.i.us.i.i.i.i.i.i.i.i ], [ %.cast.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.am = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.us.i.i.i.i.i.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %.lcssa2326.i.i.us.i.i.i.i.i.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  call void @llvm.experimental.noalias.scope.decl(metadata !19819)
  call void @llvm.experimental.noalias.scope.decl(metadata !19820)
  call void @llvm.experimental.noalias.scope.decl(metadata !19821)
  %.val2.pre.i.i.i.i.i.us.i.i.i.i.i.i.i.i = load i32, ptr %i.aq, align 4, !alias.scope !19822, !noalias !19818
  %i.ar = invoke fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %.val2.pre.i.i.i.i.i.us.i.i.i.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19812 ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.us.i.i.i.i.i.i.i.i
  %i.as = add i16 %.lcssa.i.i.us.i.i.i.i.i.i.i.i, -1
  %i.at = and i16 %i.as, %.lcssa.i.i.us.i.i.i.i.i.i.i.i
  %i.au = add i64 %.sroa.0.0.ph.i.i.us.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.us.i.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_10DifferencelNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4t_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5D_7HashSetlB3D_EINtNtBU_7collect6ExtendlE6extendINtB4r_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5p_NCINvXs1i_B8_INtB8_7HashMapluB3D_EIB68_B5p_E6extendINtB55_3MapB6D_B5u_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i
  %i.av = phi i16 [ %i.ba, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_10DifferencelNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4t_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5D_7HashSetlB3D_EINtNtBU_7collect6ExtendlE6extendINtB4r_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5p_NCINvXs1i_B8_INtB8_7HashMapluB3D_EIB68_B5p_E6extendINtB55_3MapB6D_B5u_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.k, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.lcssa2429.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2428.i.i.i.i.i.i.i.i.i.i, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_10DifferencelNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4t_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5D_7HashSetlB3D_EINtNtBU_7collect6ExtendlE6extendINtB4r_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5p_NCINvXs1i_B8_INtB8_7HashMapluB3D_EIB68_B5p_E6extendINtB55_3MapB6D_B5u_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.h, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.lcssa2327.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2326.i.i.i.i.i.i.i.i.i.i, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_10DifferencelNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4t_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5D_7HashSetlB3D_EINtNtBU_7collect6ExtendlE6extendINtB4r_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5p_NCINvXs1i_B8_INtB8_7HashMapluB3D_EIB68_B5p_E6extendINtB55_3MapB6D_B5u_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_10DifferencelNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4t_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5D_7HashSetlB3D_EINtNtBU_7collect6ExtendlE6extendINtB4r_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5p_NCINvXs1i_B8_INtB8_7HashMapluB3D_EIB68_B5p_E6extendINtB55_3MapB6D_B5u_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.not20.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not20.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.outer.i.i.i.i.i.i.i.i.i.i
  %i.aw = icmp eq i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i
  %.lcssa2428.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2429.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %i.ch, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa2326.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2327.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %i.cg, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.av, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ax = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ay = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = and i16 %i.ax, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.bb = sub nsw i64 0, %i.az
  %i.bc = getelementptr inbounds [4 x i8], ptr %.lcssa2326.i.i.i.i.i.i.i.i.i.i, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19819)
  call void @llvm.experimental.noalias.scope.decl(metadata !19820)
  call void @llvm.experimental.noalias.scope.decl(metadata !19821)
  %i.be = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECs63DIHKhvmTb_10lance_core(i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bd), !noalias !19823 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19824)
  %i.bf = lshr i64 %i.be, 57
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  %i.bh = insertelement <16 x i8> poison, i8 %i.bg, i64 0
  %i.bi = shufflevector <16 x i8> %i.bh, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bd, align 4, !alias.scope !19825, !noalias !19818 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.e ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ad ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bj, align 1, !noalias !19826 ; 2 uses
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bi
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i.not32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.by, %bb.d ], [ %i.bl, %bb.c ] ; 3 uses
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bn
  %i.bp = and i64 %i.bo, %i.ad
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bs, align 4, !noalias !19827, !noundef !23
  %i.bt = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bt, label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_10DifferencelNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4t_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5D_7HashSetlB3D_EINtNtBU_7collect6ExtendlE6extendINtB4r_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5p_NCINvXs1i_B8_INtB8_7HashMapluB3D_EIB68_B5p_E6extendINtB55_3MapB6D_B5u_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i, label %bb.d, !prof !28

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.d, %bb.c
  %i.bu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = icmp eq i16 %i.bv, 0
  br i1 %i.bw, label %bb.e, label %.loopexit.i.i.i.i.i.loopexit.i.i.i.i.i.i.i.i, !prof !26

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = add i16 %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.by = and i16 %i.bx, %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.by, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.ca = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bz
  br label %bb.c

.loopexit.i.i.i.i.i.loopexit.i.i.i.i.i.i.i.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = invoke fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_10DifferencelNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4t_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5D_7HashSetlB3D_EINtNtBU_7collect6ExtendlE6extendINtB4r_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5p_NCINvXs1i_B8_INtB8_7HashMapluB3D_EIB68_B5p_E6extendINtB55_3MapB6D_B5u_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19812 ; 0 uses

_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_10DifferencelNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4t_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5D_7HashSetlB3D_EINtNtBU_7collect6ExtendlE6extendINtB4r_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5p_NCINvXs1i_B8_INtB8_7HashMapluB3D_EIB68_B5p_E6extendINtB55_3MapB6D_B5u_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.loopexit.i.i.i.i.i.i.i.i
  %i.cc = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.ch, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2429.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ce = phi ptr [ %i.cg, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2327.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.val16.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cd, align 16, !noalias !19818
  %i.cf = icmp sgt <16 x i8> %.val16.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cf to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i.i.us.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.loopexit.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp46 = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #69, !noalias !19812
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !19828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19812
  %i.ci = icmp eq i64 %i.f, 0
  br i1 %i.ci, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %.loopexit
  %i.cj = shl i64 %i.f, 2
  %i.ck = icmp slt i64 %i.f, 4611686018427387900
  call void @llvm.assume(i1 %i.ck)
  %i.cl = and i64 %i.cj, -16                      ; 2 uses
  %i.cm = add i64 %i.cl, 16                       ; 2 uses
  %i.cn = add nsw i64 %i.f, 17
  %i.co = add i64 %i.cn, %i.cm                    ; 4 uses
  %i.cp = icmp uge i64 %i.co, %i.cm
  %i.cq = icmp ult i64 %i.co, 9223372036854775793
  call void @llvm.assume(i1 %i.cp)
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.cs = sub nuw nsw i64 -16, %i.cl
  %i.ct = getelementptr inbounds i8, ptr %i.d, i64 %i.cs
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !19829
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.f, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cw = load <4 x i8>, ptr %i.cu, align 8
  %i.cx = trunc <4 x i8> %i.cw to <4 x i1>
  %i.cy = load <4 x i8>, ptr %i.cv, align 8
  %i.cz = xor <4 x i8> %i.cy, splat (i8 1)
  %i.da = select <4 x i1> %i.cx, <4 x i8> %i.cz, <4 x i8> zeroinitializer
  store <4 x i8> %i.da, ptr %i.cu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  ret void

bb.g:                                             ; preds = %.body
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection21subtract_arrow_schema(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(128) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = load ptr, ptr %2, align 8, !nonnull !23, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 4 uses
  %.not.i = icmp eq i64 %i.g, 0                   ; 4 uses
  br i1 %.not.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schema0EB33_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schema0Bb_.exit.backedge.i
  %i.j = phi ptr [ %i.k, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schema0Bb_.exit.backedge.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !19842, !nonnull !23, !noundef !23 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noalias !19842, !noundef !23
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %.split.i, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schema0Bb_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !19842, !nonnull !23, !noundef !23 ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 2003792479
  %i.s = getelementptr i8, ptr %i.p, i64 4
  %i.t = load i16, ptr %i.s, align 1
  %i.u = zext i16 %i.t to i32
  %i.v = xor i32 %i.u, 25705
  %i.w = or i32 %i.r, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schema0Bb_.exit.backedge.i

_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schema0Bb_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not6.i = icmp eq ptr %i.k, %i.i
  br i1 %.not6.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schema0EB33_.exit.thread, label %.lr.ph.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEB1l_.exit.i: ; preds = %.body.i, %bb.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.aa)
  br label %.thread

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schema0EB33_.exit.thread: ; preds = %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schema0Bb_.exit.backedge.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !29, !noundef !23
  br label %bb.c

bb.b:                                             ; preds = %.split.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %bb.c

bb.c:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schema0EB33_.exit.thread, %bb.b
  %i.ae = phi ptr [ %i.ad, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schema0EB33_.exit.thread ]
  %i.af = phi i8 [ 0, %bb.b ], [ %i.ac, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schema0EB33_.exit.thread ]
  store i8 %i.af, ptr %i.ae, align 8
  br i1 %.not.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas_0EB33_.exit.thread, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.c, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas_0Bb_.exit.backedge.i
  %i.ag = phi ptr [ %i.ah, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas_0Bb_.exit.backedge.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.val.i16 = load ptr, ptr %i.ag, align 8, !noalias !19843, !nonnull !23, !noundef !23 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i16, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !19843, !noundef !23
  %i.ak = icmp eq i64 %i.aj, 8
  br i1 %i.ak, label %.split.i21, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas_0Bb_.exit.backedge.i

.split.i21:                                       ; preds = %.lr.ph.i15
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i16, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !19843, !nonnull !23, !noundef !23
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = icmp ne i64 %i.an, 8242823587773248095
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas_0Bb_.exit.backedge.i

_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas_0Bb_.exit.backedge.i: ; preds = %.split.i21, %.lr.ph.i15
  %.not6.i17 = icmp eq ptr %i.ah, %i.i
  br i1 %.not6.i17, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas_0EB33_.exit.thread, label %.lr.ph.i15

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas_0EB33_.exit.thread: ; preds = %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas_0Bb_.exit.backedge.i, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !range !29, !noundef !23
  br label %bb.e

bb.d:                                             ; preds = %.split.i21
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 121
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas_0EB33_.exit.thread, %bb.d
  %i.au = phi ptr [ %i.at, %bb.d ], [ %i.ar, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas_0EB33_.exit.thread ]
  %i.av = phi i8 [ 0, %bb.d ], [ %i.as, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas_0EB33_.exit.thread ]
  store i8 %i.av, ptr %i.au, align 1
  br i1 %.not.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas0_0EB33_.exit.thread, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.e, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas0_0Bb_.exit.backedge.i
  %i.aw = phi ptr [ %i.ax, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas0_0Bb_.exit.backedge.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %.val.i26 = load ptr, ptr %i.aw, align 8, !noalias !19844, !nonnull !23, !noundef !23 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i26, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noalias !19844, !noundef !23
  %i.ba = icmp eq i64 %i.az, 28
  br i1 %i.ba, label %.split.i31, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas0_0Bb_.exit.backedge.i

.split.i31:                                       ; preds = %.lr.ph.i25
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i26, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !19844, !nonnull !23, !noundef !23 ; 2 uses
  %i.bd = load i128, ptr %i.bc, align 1
  %i.be = xor i128 %i.bd, 134856309361218565000496722921877631583
  %i.bf = getelementptr i8, ptr %i.bc, i64 12
  %i.bg = load i128, ptr %i.bf, align 1
  %i.bh = xor i128 %i.bg, 146793563287289136079465169310077706596
  %i.bi = or i128 %i.be, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas0_0Bb_.exit.backedge.i

_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas0_0Bb_.exit.backedge.i: ; preds = %.split.i31, %.lr.ph.i25
  %.not6.i27 = icmp eq ptr %i.ax, %i.i
  br i1 %.not6.i27, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas0_0EB33_.exit.thread, label %.lr.ph.i25

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas0_0EB33_.exit.thread: ; preds = %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas0_0Bb_.exit.backedge.i, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 122 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 2, !range !29, !noundef !23
  br label %bb.g

bb.f:                                             ; preds = %.split.i31
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 122
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas0_0EB33_.exit.thread, %bb.f
  %i.bp = phi ptr [ %i.bo, %bb.f ], [ %i.bm, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas0_0EB33_.exit.thread ]
  %i.bq = phi i8 [ 0, %bb.f ], [ %i.bn, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas0_0EB33_.exit.thread ]
  store i8 %i.bq, ptr %i.bp, align 2
  br i1 %.not.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas1_0EB33_.exit.thread, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.g, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas1_0Bb_.exit.backedge.i
  %i.br = phi ptr [ %i.bs, %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas1_0Bb_.exit.backedge.i ], [ %i.h, %bb.g ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %.val.i36 = load ptr, ptr %i.br, align 8, !noalias !19845, !nonnull !23, !noundef !23 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i36, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !19845, !noundef !23
  %i.bv = icmp eq i64 %i.bu, 23
  br i1 %i.bv, label %.split.i41, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas1_0Bb_.exit.backedge.i

.split.i41:                                       ; preds = %.lr.ph.i35
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i36, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !19845, !nonnull !23, !noundef !23 ; 2 uses
  %i.by = load i128, ptr %i.bx, align 1
  %i.bz = xor i128 %i.by, 126880940986635193078986189425519587935
  %i.ca = getelementptr i8, ptr %i.bx, i64 7
  %i.cb = load i128, ptr %i.ca, align 1
  %i.cc = xor i128 %i.cb, 146793563287289136079465169310077706597
  %i.cd = or i128 %i.bz, %i.cc
  %i.ce = icmp ne i128 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.h, label %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas1_0Bb_.exit.backedge.i

_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas1_0Bb_.exit.backedge.i: ; preds = %.split.i41, %.lr.ph.i35
  %.not6.i37 = icmp eq ptr %i.bs, %i.i
  br i1 %.not6.i37, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas1_0EB33_.exit.thread, label %.lr.ph.i35

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas1_0EB33_.exit.thread: ; preds = %_RNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_10Projection21subtract_arrow_schemas1_0Bb_.exit.backedge.i, %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 123 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !range !29, !noundef !23
  br label %bb.i

bb.h:                                             ; preds = %.split.i41
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 123
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas1_0EB33_.exit.thread, %bb.h
  %i.ck = phi ptr [ %i.cj, %bb.h ], [ %i.ch, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas1_0EB33_.exit.thread ]
  %i.cl = phi i8 [ 0, %bb.h ], [ %i.ci, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB2Z_10Projection21subtract_arrow_schemas1_0EB33_.exit.thread ]
end_hunk_1
begin_hunk_2_@_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection9intersect:bb.a
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !19977
  store i8 1, ptr %i.l, align 8, !noalias !19977
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i

_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i: ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i.i
  %.pre-phi16.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i.i ], [ %i.r, %.noexc ]
  %i.t = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i.i ], [ %i.q, %.noexc ] ; 2 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.k, align 8, !noalias !19976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false), !noalias !19974
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.t, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !19974
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi16.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !19974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19978)
  %i.v = getelementptr inbounds nuw i8, ptr %.sink.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.sink.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.sink.i, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.z = load i64, ptr %i.v, align 8, !alias.scope !19978, !noalias !19979
  %.fr2.i.i.i.i.i.i.i.i = freeze i64 %i.z
  %i.aa = icmp eq i64 %.fr2.i.i.i.i.i.i.i.i, 0
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !19978, !noalias !19979
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !19978, !noalias !19979
  %i.ab = load i64, ptr %i.y, align 8, !alias.scope !19978, !noalias !19979 ; 2 uses
  %i.ac = load ptr, ptr %.sink.i, align 8, !alias.scope !19978, !noalias !19979, !nonnull !23 ; 2 uses
  br i1 %i.aa, label %.outer.i.i.us.i.i.i.i.i.i.i.i, label %.outer.i.i.i.i.i.i.i.i.i.i

.outer.i.i.us.i.i.i.i.i.i.i.i:                    ; preds = %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i, %._crit_edge.i.i.us.i.i.i.i.i.i.i.i
  %i.ad = phi i16 [ %i.aj, %._crit_edge.i.i.us.i.i.i.i.i.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.lcssa2429.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2428.i.i.us.i.i.i.i.i.i.i.i, %._crit_edge.i.i.us.i.i.i.i.i.i.i.i ], [ %.sink39.i, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.ak, %._crit_edge.i.i.us.i.i.i.i.i.i.i.i ], [ %.sink36.i, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.not20.i.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not20.i.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i.i.i.i:                    ; preds = %.outer.i.i.us.i.i.i.i.i.i.i.i
  %i.ae = icmp eq i64 %.sroa.0.0.ph.i.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i
  %i.af = phi ptr [ %i.ah, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i ], [ %.lcssa2429.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val16.i.i.us.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !19980
  %i.ag = icmp sgt <16 x i8> %.val16.i.i.us.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.us.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ag to i16 ; 2 uses
  %.not.i.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.us.i.i.i.i.i.i.i.i

._crit_edge.i.i.us.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i, %.outer.i.i.us.i.i.i.i.i.i.i.i
  %.lcssa2428.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2429.i.i.us.i.i.i.i.i.i.i.i, %.outer.i.i.us.i.i.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.us.i.i.i.i.i.i.i.i = phi i16 [ %i.ad, %.outer.i.i.us.i.i.i.i.i.i.i.i ], [ %.cast.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ai = add i16 %.lcssa.i.i.us.i.i.i.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.lcssa.i.i.us.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19983)
  %i.ak = add i64 %.sroa.0.0.ph.i.i.us.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.us.i.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsB_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_12IntersectionlNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4v_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5F_7HashSetlB3F_EINtNtBU_7collect6ExtendlE6extendINtB4t_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5r_NCINvXs1i_B8_INtB8_7HashMapluB3F_EIB6a_B5r_E6extendINtB57_3MapB6F_B5w_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i
  %i.al = phi i16 [ %i.ao, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsB_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_12IntersectionlNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4v_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5F_7HashSetlB3F_EINtNtBU_7collect6ExtendlE6extendINtB4t_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5r_NCINvXs1i_B8_INtB8_7HashMapluB3F_EIB6a_B5r_E6extendINtB57_3MapB6F_B5w_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.lcssa2429.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2428.i.i.i.i.i.i.i.i.i.i, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsB_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_12IntersectionlNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4v_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5F_7HashSetlB3F_EINtNtBU_7collect6ExtendlE6extendINtB4t_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5r_NCINvXs1i_B8_INtB8_7HashMapluB3F_EIB6a_B5r_E6extendINtB57_3MapB6F_B5w_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sink39.i, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.lcssa2327.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2326.i.i.i.i.i.i.i.i.i.i, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsB_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_12IntersectionlNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4v_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5F_7HashSetlB3F_EINtNtBU_7collect6ExtendlE6extendINtB4t_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5r_NCINvXs1i_B8_INtB8_7HashMapluB3F_EIB6a_B5r_E6extendINtB57_3MapB6F_B5w_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.i, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bs, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsB_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_12IntersectionlNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4v_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5F_7HashSetlB3F_EINtNtBU_7collect6ExtendlE6extendINtB4t_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5r_NCINvXs1i_B8_INtB8_7HashMapluB3F_EIB6a_B5r_E6extendINtB57_3MapB6F_B5w_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sink36.i, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i ] ; 2 uses
  %.not20.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not20.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.outer.i.i.i.i.i.i.i.i.i.i
  %i.am = icmp eq i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %.loopexit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i
  %.lcssa2428.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2429.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %i.bx, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa2326.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2327.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %i.bw, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.al, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ao = and i16 %i.an, %.lcssa.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19981)
  call void @llvm.experimental.noalias.scope.decl(metadata !19982)
  call void @llvm.experimental.noalias.scope.decl(metadata !19983)
  %i.ap = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [4 x i8], ptr %.lcssa2326.i.i.i.i.i.i.i.i.i.i, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 2 uses
  %i.au = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECs63DIHKhvmTb_10lance_core(i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.at), !noalias !19984 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19985)
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.at, align 4, !alias.scope !19986, !noalias !19987 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.e ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ab ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.az, align 1, !noalias !19988 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bo, %bb.d ], [ %i.bb, %bb.c ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bd
  %i.bf = and i64 %i.be, %i.ab
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bi, align 4, !noalias !19989, !noundef !23
  %i.bj = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bj, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keylECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, !prof !28

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.d, %bb.c
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.e, label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsB_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_12IntersectionlNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4v_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5F_7HashSetlB3F_EINtNtBU_7collect6ExtendlE6extendINtB4t_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5r_NCINvXs1i_B8_INtB8_7HashMapluB3F_EIB6a_B5r_E6extendINtB57_3MapB6F_B5w_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i, !prof !26

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = add i16 %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bo = and i16 %i.bn, %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bp
  br label %bb.c

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keylECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = invoke fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsB_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_12IntersectionlNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4v_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5F_7HashSetlB3F_EINtNtBU_7collect6ExtendlE6extendINtB4t_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5r_NCINvXs1i_B8_INtB8_7HashMapluB3F_EIB6a_B5r_E6extendINtB57_3MapB6F_B5w_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.f, !noalias !19974 ; 0 uses

_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterluENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysluEBQ_4folduNCINvXsB_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB2z_12IntersectionlNtNtNtB2F_4hash6random11RandomStateEBQ_4folduNCINvNtNtBW_8adapters6copied9copy_foldluNCINvNtB4v_3map8map_foldlTluEuNCINvXs8_NtBa_3setINtB5F_7HashSetlB3F_EINtNtBU_7collect6ExtendlE6extendINtB4t_6CopiedB3j_EE0NCINvNvBQ_8for_each4callB5r_NCINvXs1i_B8_INtB8_7HashMapluB3F_EIB6a_B5r_E6extendINtB57_3MapB6F_B5w_EE0E0E0E0E0E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keylECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bs = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %i.bt = phi ptr [ %i.bx, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2429.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bu = phi ptr [ %i.bw, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2327.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.val16.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bt, align 16, !noalias !19987
  %i.bv = icmp sgt <16 x i8> %.val16.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bv to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapluNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keylECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #69, !noalias !19974
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !19990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19974
  call void @llvm.experimental.noalias.scope.decl(metadata !19991)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val1.i = load i64, ptr %i.bz, align 8, !alias.scope !19991, !noundef !23 ; 4 uses
  %i.ca = icmp eq i64 %.val1.i, 0
  br i1 %i.ca, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %.loopexit
  %i.cb = shl i64 %.val1.i, 2
  %i.cc = icmp slt i64 %.val1.i, 4611686018427387900
  call void @llvm.assume(i1 %i.cc)
  %i.cd = and i64 %i.cb, -16                      ; 2 uses
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add nsw i64 %.val1.i, 17
  %i.cg = add i64 %i.cf, %i.ce                    ; 4 uses
  %i.ch = icmp uge i64 %i.cg, %i.ce
  %i.ci = icmp ult i64 %i.cg, 9223372036854775793
  call void @llvm.assume(i1 %i.ch)
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.ck = sub nuw nsw i64 -16, %i.cd
  %i.cl = getelementptr inbounds i8, ptr %.val11, i64 %i.ck
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !19991
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetlEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.g, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.co = load <4 x i8>, ptr %i.cm, align 8
  %i.cp = trunc <4 x i8> %i.co to <4 x i1>
  %i.cq = load <4 x i8>, ptr %i.cn, align 8
  %i.cr = select <4 x i1> %i.cp, <4 x i8> %i.cq, <4 x i8> zeroinitializer
  store <4 x i8> %i.cr, ptr %i.cm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  ret void

bb.h:                                             ; preds = %.body
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection9to_schema(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [56 x i8], align 8                ; 4 uses
  %i.v = alloca [56 x i8], align 8                ; 5 uses
  %i.w = alloca [112 x i8], align 8               ; 10 uses
  %i.x = alloca [112 x i8], align 8               ; 10 uses
  %i.y = alloca [112 x i8], align 8               ; 10 uses
  %i.z = alloca [112 x i8], align 8               ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 15 uses
  %i.ab = alloca [72 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMsd_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_10Projection14to_bare_schema(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 9 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load i8, ptr %i.ae, align 8, !range !29, !noundef !23
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.ah = phi i64 [ %i.bj, %bb.p ], [ 0, %bb.a ]
  %i.ai = phi ptr [ %i.bh, %bb.p ], [ inttoptr (i64 8 to ptr), %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.ak = load i8, ptr %i.aj, align 1, !range !29, !noundef !23
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.am = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD, i64 112) acquire, align 8
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE5force0ECs63DIHKhvmTb_10lance_core.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.t, ptr %i.s, align 8
  invoke void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD, i64 112), i1 noundef zeroext true, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE5force0ECs63DIHKhvmTb_10lance_core.exit

bb.e:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE5force0ECs63DIHKhvmTb_10lance_core.exit35, %bb.au, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE5force0ECs63DIHKhvmTb_10lance_core.exit22, %bb.ag, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE5force0ECs63DIHKhvmTb_10lance_core.exit9, %bb.s, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE5force0ECs63DIHKhvmTb_10lance_core.exit, %bb.d, %bb.as
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bi, %bb.bd, %bb.av, %bb.aw, %bb.ap, %bb.ah, %bb.ai, %bb.ab, %bb.t, %bb.u, %bb.n, %bb.f, %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ei, %bb.bd ], [ %.pn.i36, %bb.av ], [ %.pn.i, %bb.f ], [ %i.bf, %bb.n ], [ %.pn.i10, %bb.t ], [ %i.ch, %bb.ab ], [ %.pn.i23, %bb.ah ], [ %i.dj, %bb.ap ], [ %i.ao, %bb.e ], [ %.pn.i, %bb.g ], [ %.pn.i10, %bb.u ], [ %.pn.i23, %bb.ai ], [ %.pn.i36, %bb.aw ], [ %i.eo, %bb.bi ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #69
          to label %bb.bn unwind label %bb.bl

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE5force0ECs63DIHKhvmTb_10lance_core.exit: ; preds = %.noexc, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !20026)
  call void @llvm.experimental.noalias.scope.decl(metadata !20027)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20028
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD)
          to label %.noexc3 unwind label %bb.e

.noexc3:                                          ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE5force0ECs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20028
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD, i64 24))
          to label %bb.i unwind label %bb.h, !noalias !20026

bb.f:                                             ; preds = %bb.j, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.j ], [ %i.ar, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20029)
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !20029, !noalias !20028 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i, 0
  br i1 %i.ap, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !20029, !noalias !20028, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !20030
  br label %.body

bb.h:                                             ; preds = %.noexc3
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %.noexc3
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD, i64 104), align 8, !range !29, !alias.scope !20027, !noundef !23
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD, i64 96), align 8, !alias.scope !20027, !noundef !23
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD, i64 105), align 1, !range !29, !alias.scope !20027, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20028
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvCs63DIHKhvmTb_10lance_core12ROW_ID_FIELD, i64 48))
          to label %bb.l unwind label %bb.j, !noalias !20026

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.q) #69
          to label %bb.f unwind label %bb.k, !noalias !20026

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !20026
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !20027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !20027
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !20027
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store i8 %i.as, ptr %i.az, align 8, !alias.scope !20026
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i64 %i.at, ptr %i.ba, align 8, !alias.scope !20026
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 105
  store i8 %i.au, ptr %i.bb, align 1, !alias.scope !20026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !20028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !20028
  %i.bc = load i64, ptr %i.ad, align 8, !alias.scope !20031, !noundef !23 ; 3 uses
  %i.bd = load i64, ptr %i.aa, align 8, !range !38, !alias.scope !20031, !noundef !23
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.p unwind label %bb.n, !noalias !20032

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.z) #69
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.bh = load ptr, ptr %i.ac, align 8, !alias.scope !20031, !nonnull !23, !noundef !23 ; 2 uses
  %i.bi = getelementptr inbounds nuw [112 x i8], ptr %i.bh, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false)
  %i.bj = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bj, ptr %i.ad, align 8, !alias.scope !20031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.b

bb.q:                                             ; preds = %bb.ad, %bb.b
  %i.bk = phi i64 [ %i.cl, %bb.ad ], [ %i.ah, %bb.b ]
  %i.bl = phi ptr [ %i.cj, %bb.ad ], [ %i.ai, %bb.b ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.bn = load i8, ptr %i.bm, align 2, !range !29, !noundef !23
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.af, label %bb.ae

end_hunk_2
