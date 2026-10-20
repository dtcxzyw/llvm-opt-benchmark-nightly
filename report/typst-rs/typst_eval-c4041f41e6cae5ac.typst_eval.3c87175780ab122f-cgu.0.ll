Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvXs14_NtCsdaEETE4DqmE_13typst_library4diagNtB7_12HintedStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval:bb.a

.lr.ph.i.i:                                       ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi ptr [ %.0.val, %.lr.ph.i.i ], [ %i.ar, %_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6317)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 15
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !6318, !noalias !6311, !noundef !35 ; 2 uses
  %.not.i.i.i1.i = icmp sgt i8 %i.at, -1          ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = load ptr, ptr %.sroa.0.03.i.i, align 8, !alias.scope !6318, !noalias !6311, !nonnull !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !6318, !noalias !6311
  %.sroa.3.0.i.i.i.i = select i1 %.not.i.i.i1.i, i64 %i.ay, i64 %i.av
  %.sroa.0.0.i.i.i2.i = select i1 %.not.i.i.i1.i, ptr %i.aw, ptr %.sroa.0.03.i.i
  tail call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i2.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i) #48
  %i.az = load i64, ptr %i.a, align 8, !alias.scope !6319, !noundef !35
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.a, align 8, !alias.scope !6319
  %i.bb = load i64, ptr %i.d, align 8, !alias.scope !6319, !noundef !35 ; 4 uses
  %i.bc = sub i64 8, %i.bb                        ; 2 uses
  %i.bd = shl i64 %i.bb, 3
  %i.be = and i64 %i.bd, 56
  %i.bf = shl nuw i64 255, %i.be
  %i.bg = load i64, ptr %i.i, align 8, !alias.scope !6319, !noundef !35
  %i.bh = or i64 %i.bf, %i.bg                     ; 3 uses
  store i64 %i.bh, ptr %i.i, align 8, !alias.scope !6319
  %i.bi = icmp ugt i64 %i.bc, 1
  br i1 %i.bi, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = load i64, ptr %i.ao, align 8, !alias.scope !6319, !noundef !35
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = load i64, ptr %0, align 8, !alias.scope !6320, !noundef !35
  %i.bm = load i64, ptr %i.ap, align 8, !alias.scope !6320, !noundef !35 ; 3 uses
  %i.bn = add i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 13)
  %i.bp = xor i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.br = load i64, ptr %i.aq, align 8, !alias.scope !6320, !noundef !35
  %i.bs = add i64 %i.br, %i.bk                    ; 2 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 16)
  %i.bu = xor i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = add i64 %i.bu, %i.bq                    ; 2 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 21)
  %i.bx = xor i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %i.ao, align 8, !alias.scope !6320
  %i.by = add i64 %i.bs, %i.bp                    ; 3 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 17)
  %i.ca = xor i64 %i.by, %i.bz
  store i64 %i.ca, ptr %i.ap, align 8, !alias.scope !6320
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 32)
  store i64 %i.cb, ptr %i.aq, align 8, !alias.scope !6320
  %i.cc = xor i64 %i.bv, %i.bh
  store i64 %i.cc, ptr %0, align 8, !alias.scope !6319
  %i.cd = add i64 %i.bb, -7
  %i.ce = shl nuw nsw i64 %i.bc, 3
  %i.cf = lshr i64 255, %i.ce
  store i64 %i.cf, ptr %i.i, align 8, !alias.scope !6319
  br label %_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.cg = add i64 %i.bb, 1
  br label %_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.f ], [ %i.cd, %bb.e ]
  store i64 %.sink.i.i.i.i.i.i, ptr %i.d, align 8, !alias.scope !6319
  %i.ch = icmp eq ptr %i.ar, %i.am
  br i1 %i.ch, label %_RINvXsd_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit, label %bb.d

_RINvXsd_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs1a_NtCsdaEETE4DqmE_13typst_library4diagNtB7_9FileErrorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !78, !noundef !35 ; 5 uses
  %i.b = icmp ne i32 %i.a, 11
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -5
  %i.d = icmp samesign ugt i32 %i.a, 4
  %narrow = select i1 %i.d, i32 %i.c, i32 6       ; 2 uses
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 21 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6450, !noundef !35 ; 6 uses
  %i.h = add i64 %i.g, 8
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !6450
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 21 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6450, !noundef !35 ; 5 uses
  %i.k = shl i64 %i.j, 3                          ; 2 uses
  %i.l = and i64 %i.k, 56
  %i.m = shl nuw nsw i64 %i.e, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 34 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !6450, !noundef !35
  %i.p = or i64 %i.m, %i.o                        ; 4 uses
  store i64 %i.p, ptr %i.n, align 8, !alias.scope !6450
  %i.q = icmp ugt i64 %i.j, 8
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !6450, !noundef !35
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = load i64, ptr %1, align 8, !alias.scope !6451, !noundef !35
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6451, !noundef !35 ; 3 uses
  %i.x = add i64 %i.w, %i.u                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.z = xor i64 %i.y, %i.x                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !6451, !noundef !35
  %i.ad = add i64 %i.ac, %i.t                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.af = xor i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = add i64 %i.af, %i.aa                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 21)
  %i.ai = xor i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.r, align 8, !alias.scope !6451
  %i.aj = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.al = xor i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.v, align 8, !alias.scope !6451
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  store i64 %i.am, ptr %i.ab, align 8, !alias.scope !6451
  %i.an = xor i64 %i.ag, %i.p
  store i64 %i.an, ptr %1, align 8, !alias.scope !6450
  %.not.i.i.i = icmp eq i64 %i.j, 0
  %i.ao = sub nuw nsw i64 64, %i.k
  %i.ap = lshr i64 %i.e, %i.ao
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ap ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.n, align 8, !alias.scope !6450
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit

bb.c:                                             ; preds = %bb.a
  %i.aq = add i64 %i.j, 8                         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !6450
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.b, %bb.c
  %i.ar = phi i64 [ %.sroa.0.0.i.i.i, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %i.j, %bb.b ], [ %i.aq, %bb.c ] ; 9 uses
  switch i32 %narrow, label %_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit [
    i32 0, label %bb.d
    i32 5, label %bb.ag
    i32 6, label %bb.aj
    i32 7, label %bb.bm
  ]

_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs5cbCQMMIObr_10typst_eval.exit23.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs5cbCQMMIObr_10typst_eval.exit18.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs5cbCQMMIObr_10typst_eval.exit.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit13.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit10.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit7.i, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit4.i, %bb.am, %bb.v, %bb.u, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit8, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs5cbCQMMIObr_10typst_eval.exit13, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs5cbCQMMIObr_10typst_eval.exit, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit
  ret void

bb.d:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !35, !noundef !35 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !noundef !35 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6453)
  switch i64 %i.aw, label %.lr.ph.preheader.split.i.split [
    i64 0, label %._crit_edge.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread
  ]

.lr.ph.preheader.split.i.split:                   ; preds = %bb.d
  %i.ax = add i64 %i.aw, -3
  br label %.lr.ph.i

._crit_edge.loopexit.peel.begin.i.peel.begin:     ; preds = %bb.x
  %i.ay = add nuw i64 %.sroa.019.030.i, 2         ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cw
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !6452, !noundef !35
  %i.bb = icmp eq i8 %i.ba, 47
  br i1 %i.bb, label %bb.e, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge

._crit_edge.loopexit.peel.begin.i.peel.begin.thread: ; preds = %bb.d
  %i.bc = load i8, ptr %i.au, align 1, !alias.scope !6452, !noundef !35
  %i.bd = icmp eq i8 %i.bc, 47
  br i1 %i.bd, label %.thread, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread, %._crit_edge.loopexit.peel.begin.i.peel.begin
  %i.be = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ], [ %i.ay, %._crit_edge.loopexit.peel.begin.i.peel.begin ] ; 2 uses
  %i.bf = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ], [ %i.cw, %._crit_edge.loopexit.peel.begin.i.peel.begin ]
  %i.bg = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ], [ %.sroa.012.2.i, %._crit_edge.loopexit.peel.begin.i.peel.begin ]
  %i.bh = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ], [ %.sroa.0.1.i, %._crit_edge.loopexit.peel.begin.i.peel.begin ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.be
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !alias.scope !6452
  br label %._crit_edge.loopexit.peel.begin.i.peel.next

bb.e:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin
  %2 = icmp ugt i64 %i.cw, %.sroa.0.1.i
  br i1 %2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bi = sub nuw i64 %i.cw, %.sroa.0.1.i         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.1.i
  %i.bk = add i64 %i.bi, %.sroa.012.2.i           ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 62)
  tail call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef range(i64 0, -9223372036854775808) %i.bi) #48
  br label %.thread

.thread:                                          ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread, %bb.f, %bb.e
  %i.bm = phi i64 [ %i.cw, %bb.f ], [ %i.cw, %bb.e ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ]
  %i.bn = phi i64 [ %i.ay, %bb.f ], [ %i.ay, %bb.e ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ] ; 4 uses
  %.sroa.012.3.i.peel = phi i64 [ %i.bl, %bb.f ], [ %.sroa.012.2.i, %bb.e ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread ]
  %i.bo = sub nuw i64 %i.aw, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bn ; 2 uses
  %i.bq = icmp eq i64 %i.bo, 1
  %i.br = load i8, ptr %i.bp, align 1, !alias.scope !6452, !noundef !35 ; 2 uses
  %i.bs = icmp eq i8 %i.br, 46                    ; 2 uses
  br i1 %i.bq, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread
  br i1 %i.bs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !6452, !noundef !35
  %i.bv = icmp eq i8 %i.bu, 47
  br i1 %i.bv, label %bb.k, label %bb.j

bb.i:                                             ; preds = %.thread
  br i1 %i.bs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.024.0.i.peel = phi i64 [ 1, %bb.i ], [ 0, %bb.j ], [ 1, %bb.h ]
  %i.bw = add i64 %.sroa.024.0.i.peel, %i.bn
  br label %._crit_edge.loopexit.peel.begin.i.peel.next

._crit_edge.loopexit.peel.begin.i.peel.next:      ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge, %bb.k
  %i.bx = phi i64 [ %i.bn, %bb.k ], [ %i.be, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge ] ; 2 uses
  %i.by = phi i64 [ %i.bm, %bb.k ], [ %i.bf, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge ]
  %i.bz = phi i8 [ %i.br, %bb.k ], [ %.pre, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge ]
  %.sroa.012.2.i.peel = phi i64 [ %.sroa.012.3.i.peel, %bb.k ], [ %i.bg, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge ] ; 3 uses
  %.sroa.0.1.i.peel = phi i64 [ %i.bw, %bb.k ], [ %i.bh, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge ] ; 4 uses
  %i.ca = add nuw i64 %i.by, 2                    ; 8 uses
  %i.cb = icmp eq i8 %i.bz, 47
  br i1 %i.cb, label %bb.l, label %._crit_edge.i

._crit_edge.loopexit.peel.begin.thread.i:         ; preds = %bb.d
  %i.cc = load i8, ptr %i.au, align 1, !alias.scope !6452, !noundef !35
  %i.cd = icmp eq i8 %i.cc, 47
  br i1 %i.cd, label %.thread50.i, label %._crit_edge.i

bb.l:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.next
  %3 = icmp ugt i64 %i.bx, %.sroa.0.1.i.peel
  br i1 %3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = sub nuw i64 %i.bx, %.sroa.0.1.i.peel    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.1.i.peel
  %i.cg = add i64 %i.ce, %.sroa.012.2.i.peel      ; 2 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 62)
  tail call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef range(i64 0, -9223372036854775808) %i.ce) #48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.012.3.peel.i = phi i64 [ %i.ch, %bb.m ], [ %.sroa.012.2.i.peel, %bb.l ] ; 6 uses
  %i.ci = sub nuw i64 %i.aw, %i.ca
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ca ; 3 uses
  %i.ck = icmp eq i64 %i.ci, 1
  br i1 %i.ck, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not27.peel.i = icmp eq i64 %i.aw, %i.ca
  br i1 %.not27.peel.i, label %.thread50.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = load i8, ptr %i.cj, align 1, !alias.scope !6452, !noundef !35
  %i.cm = icmp eq i8 %i.cl, 46
  br i1 %i.cm, label %bb.q, label %.thread50.i

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !6452, !noundef !35
  %i.cp = icmp eq i8 %i.co, 47
  br i1 %i.cp, label %bb.s, label %.thread50.i

bb.r:                                             ; preds = %bb.n
  %i.cq = load i8, ptr %i.cj, align 1, !alias.scope !6452, !noundef !35
  %i.cr = icmp eq i8 %i.cq, 46
  br i1 %i.cr, label %bb.s, label %.thread50.i

.thread50.i:                                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %._crit_edge.loopexit.peel.begin.thread.i
  %.sroa.012.3.peel47.i = phi i64 [ %.sroa.012.3.peel.i, %bb.r ], [ %.sroa.012.3.peel.i, %bb.q ], [ %.sroa.012.3.peel.i, %bb.p ], [ %.sroa.012.3.peel.i, %bb.o ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i ]
  %i.cs = phi i64 [ %i.ca, %bb.r ], [ %i.ca, %bb.q ], [ %i.ca, %bb.p ], [ %i.aw, %bb.o ], [ 1, %._crit_edge.loopexit.peel.begin.thread.i ]
  br label %bb.s

bb.s:                                             ; preds = %.thread50.i, %bb.r, %bb.q
  %.sroa.012.3.peel46.i = phi i64 [ %.sroa.012.3.peel.i, %bb.r ], [ %.sroa.012.3.peel47.i, %.thread50.i ], [ %.sroa.012.3.peel.i, %bb.q ]
  %i.ct = phi i64 [ %i.ca, %bb.r ], [ %i.cs, %.thread50.i ], [ %i.ca, %bb.q ]
  %.sroa.024.0.peel.i = phi i64 [ 1, %bb.r ], [ 0, %.thread50.i ], [ 1, %bb.q ]
  %i.cu = add i64 %.sroa.024.0.peel.i, %i.ct
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.s, %._crit_edge.loopexit.peel.begin.thread.i, %._crit_edge.loopexit.peel.begin.i.peel.next
  %.sroa.012.0.lcssa.i = phi i64 [ %i.aw, %bb.d ], [ %.sroa.012.3.peel46.i, %bb.s ], [ %.sroa.012.2.i.peel, %._crit_edge.loopexit.peel.begin.i.peel.next ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %i.aw, %bb.d ], [ %i.cu, %bb.s ], [ %.sroa.0.1.i.peel, %._crit_edge.loopexit.peel.begin.i.peel.next ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i ] ; 3 uses
  %i.cv = icmp ult i64 %.sroa.0.0.lcssa.i, %i.aw
  br i1 %i.cv, label %bb.w, label %bb.t

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.split.i.split
  %.sroa.0.032.i = phi i64 [ %.sroa.0.1.i, %bb.x ], [ 0, %.lr.ph.preheader.split.i.split ] ; 4 uses
  %.sroa.012.031.i = phi i64 [ %.sroa.012.2.i, %bb.x ], [ 0, %.lr.ph.preheader.split.i.split ] ; 3 uses
  %.sroa.019.030.i = phi i64 [ %i.cw, %bb.x ], [ 0, %.lr.ph.preheader.split.i.split ] ; 6 uses
  %i.cw = add nuw i64 %.sroa.019.030.i, 1         ; 10 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.019.030.i
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !6452, !noundef !35
  %i.cz = icmp eq i8 %i.cy, 47
  br i1 %i.cz, label %bb.y, label %bb.x

bb.t:                                             ; preds = %bb.w, %._crit_edge.i
  %.sroa.012.1.i = phi i64 [ %i.em, %bb.w ], [ %.sroa.012.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.da = load i64, ptr %i.f, align 8, !alias.scope !6454, !noundef !35
  %i.db = add i64 %i.da, 8
  store i64 %i.db, ptr %i.f, align 8, !alias.scope !6454
  %i.dc = load i64, ptr %i.i, align 8, !alias.scope !6454, !noundef !35 ; 4 uses
  %i.dd = shl i64 %i.dc, 3                        ; 2 uses
  %i.de = and i64 %i.dd, 56
  %i.df = shl i64 %.sroa.012.1.i, %i.de
  %i.dg = load i64, ptr %i.n, align 8, !alias.scope !6454, !noundef !35
  %i.dh = or i64 %i.df, %i.dg                     ; 3 uses
  store i64 %i.dh, ptr %i.n, align 8, !alias.scope !6454
  %i.di = icmp ugt i64 %i.dc, 8
  br i1 %i.di, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !6454, !noundef !35
  %i.dl = xor i64 %i.dk, %i.dh                    ; 3 uses
  %i.dm = load i64, ptr %1, align 8, !alias.scope !6455, !noundef !35
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !6455, !noundef !35 ; 3 uses
  %i.dp = add i64 %i.do, %i.dm                    ; 3 uses
  %i.dq = tail call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 13)
  %i.dr = xor i64 %i.dq, %i.dp                    ; 3 uses
  %i.ds = tail call noundef i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 32)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !6455, !noundef !35
  %i.dv = add i64 %i.du, %i.dl                    ; 2 uses
  %i.dw = tail call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 16)
  %i.dx = xor i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = add i64 %i.dx, %i.ds                    ; 2 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 21)
  %i.ea = xor i64 %i.dz, %i.dy
  store i64 %i.ea, ptr %i.dj, align 8, !alias.scope !6455
  %i.eb = add i64 %i.dv, %i.dr                    ; 3 uses
  %i.ec = tail call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 17)
  %i.ed = xor i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.dn, align 8, !alias.scope !6455
  %i.ee = tail call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 32)
  store i64 %i.ee, ptr %i.dt, align 8, !alias.scope !6455
  %i.ef = xor i64 %i.dy, %i.dh
  store i64 %i.ef, ptr %1, align 8, !alias.scope !6454
  %.not.i.i.i2 = icmp eq i64 %i.dc, 0
  %i.eg = sub nuw nsw i64 64, %i.dd
  %i.eh = lshr i64 %.sroa.012.1.i, %i.eg
  %.sroa.0.0.i.i.i3 = select i1 %.not.i.i.i2, i64 0, i64 %i.eh
  store i64 %.sroa.0.0.i.i.i3, ptr %i.n, align 8, !alias.scope !6454
  br label %_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit

bb.v:                                             ; preds = %bb.t
  %i.ei = add i64 %i.dc, 8
  store i64 %i.ei, ptr %i.i, align 8, !alias.scope !6454
  br label %_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.ej = sub nuw i64 %i.aw, %.sroa.0.0.lcssa.i   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.0.lcssa.i
  %i.el = add i64 %i.ej, %.sroa.012.0.lcssa.i     ; 2 uses
  %i.em = tail call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 62)
  tail call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.ej) #48
  br label %bb.t

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i
  %.sroa.012.2.i = phi i64 [ %.sroa.012.3.i, %bb.ad ], [ %.sroa.012.031.i, %.lr.ph.i ] ; 4 uses
  %.sroa.0.1.i = phi i64 [ %i.ex, %bb.ad ], [ %.sroa.0.032.i, %.lr.ph.i ] ; 5 uses
  %exitcond.not.i = icmp eq i64 %.sroa.019.030.i, %i.ax
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin, label %.lr.ph.i, !llvm.loop !6338

bb.y:                                             ; preds = %.lr.ph.i
  %i.en = icmp ugt i64 %.sroa.019.030.i, %.sroa.0.032.i
  br i1 %i.en, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.sroa.012.3.i = phi i64 [ %i.ew, %bb.aa ], [ %.sroa.012.031.i, %bb.y ]
  %i.eo = sub nuw i64 %i.aw, %i.cw
  %i.ep = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cw ; 2 uses
  %i.eq = icmp eq i64 %i.eo, 1
  %i.er = load i8, ptr %i.ep, align 1, !alias.scope !6452, !noundef !35
  %i.es = icmp eq i8 %i.er, 46                    ; 2 uses
  br i1 %i.eq, label %bb.ab, label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.et = sub nuw i64 %.sroa.019.030.i, %.sroa.0.032.i ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.032.i
  %i.ev = add i64 %i.et, %.sroa.012.031.i         ; 2 uses
  %i.ew = tail call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 62)
  tail call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef range(i64 0, -9223372036854775808) %i.et) #48
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  br i1 %i.es, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac, %bb.ab
  %.sroa.024.0.i = phi i64 [ 1, %bb.ab ], [ 0, %bb.ac ], [ 1, %bb.af ]
  %i.ex = add i64 %.sroa.024.0.i, %i.cw
  br label %bb.x

bb.ae:                                            ; preds = %bb.z
  br i1 %i.es, label %bb.af, label %bb.ac

bb.af:                                            ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !6452, !noundef !35
  %i.fa = icmp eq i8 %i.ez, 47
  br i1 %i.fa, label %bb.ad, label %bb.ac

bb.ag:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !6457, !noundef !35 ; 2 uses
  %.not.i4 = icmp sgt i8 %i.fd, -1                ; 2 uses
  %i.fe = and i8 %i.fd, 127
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = load ptr, ptr %i.fb, align 8, !alias.scope !6457, !nonnull !35
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !6457
  %.sroa.3.0.i = select i1 %.not.i4, i64 %i.fi, i64 %i.ff
  %.sroa.0.0.i = select i1 %.not.i4, ptr %i.fg, ptr %i.fb
  tail call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i) #48
  %i.fj = load i64, ptr %i.f, align 8, !alias.scope !6458, !noundef !35
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.f, align 8, !alias.scope !6458
  %i.fl = load i64, ptr %i.i, align 8, !alias.scope !6458, !noundef !35 ; 4 uses
  %i.fm = sub i64 8, %i.fl                        ; 2 uses
  %i.fn = shl i64 %i.fl, 3
  %i.fo = and i64 %i.fn, 56
  %i.fp = shl nuw i64 255, %i.fo
  %i.fq = load i64, ptr %i.n, align 8, !alias.scope !6458, !noundef !35
  %i.fr = or i64 %i.fp, %i.fq                     ; 3 uses
  store i64 %i.fr, ptr %i.n, align 8, !alias.scope !6458
  %i.fs = icmp ugt i64 %i.fm, 1
  br i1 %i.fs, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !6458, !noundef !35
  %i.fv = xor i64 %i.fu, %i.fr                    ; 3 uses
  %i.fw = load i64, ptr %1, align 8, !alias.scope !6459, !noundef !35
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !6459, !noundef !35 ; 3 uses
  %i.fz = add i64 %i.fy, %i.fw                    ; 3 uses
  %i.ga = tail call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 13)
  %i.gb = xor i64 %i.ga, %i.fz                    ; 3 uses
  %i.gc = tail call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 32)
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !6459, !noundef !35
  %i.gf = add i64 %i.ge, %i.fv                    ; 2 uses
  %i.gg = tail call noundef i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 16)
  %i.gh = xor i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = add i64 %i.gh, %i.gc                    ; 2 uses
  %i.gj = tail call noundef i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 21)
  %i.gk = xor i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.ft, align 8, !alias.scope !6459
  %i.gl = add i64 %i.gf, %i.gb                    ; 3 uses
  %i.gm = tail call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 17)
  %i.gn = xor i64 %i.gl, %i.gm
  store i64 %i.gn, ptr %i.fx, align 8, !alias.scope !6459
  %i.go = tail call noundef i64 @llvm.fshl.i64(i64 %i.gl, i64 %i.gl, i64 32)
  store i64 %i.go, ptr %i.gd, align 8, !alias.scope !6459
  %i.gp = xor i64 %i.gi, %i.fr
  store i64 %i.gp, ptr %1, align 8, !alias.scope !6458
  %i.gq = add i64 %i.fl, -7
  %i.gr = shl nuw nsw i64 %i.fm, 3
  %i.gs = lshr i64 255, %i.gr
  store i64 %i.gs, ptr %i.n, align 8, !alias.scope !6458
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs5cbCQMMIObr_10typst_eval.exit

bb.ai:                                            ; preds = %bb.ag
  %i.gt = add i64 %i.fl, 1
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs5cbCQMMIObr_10typst_eval.exit

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.ah, %bb.ai
  %.sink.i.i.i = phi i64 [ %i.gt, %bb.ai ], [ %i.gq, %bb.ah ]
  store i64 %.sink.i.i.i, ptr %i.i, align 8, !alias.scope !6458
  br label %_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit

bb.aj:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6461)
  %i.gu = zext nneg i32 %i.a to i64               ; 2 uses
  %i.gv = add i64 %i.g, 16
  store i64 %i.gv, ptr %i.f, align 8, !alias.scope !6462
  %i.gw = shl i64 %i.as, 3                        ; 2 uses
  %i.gx = and i64 %i.gw, 56
  %i.gy = shl nuw nsw i64 %i.gu, %i.gx
  %i.gz = or i64 %i.gy, %i.ar                     ; 4 uses
  store i64 %i.gz, ptr %i.n, align 8, !alias.scope !6462
  %i.ha = icmp ugt i64 %i.as, 8
  br i1 %i.ha, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
end_hunk_0
begin_hunk_1_@_RINvXs6_NtNtCs4OFxtfStbbg_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs89doag9UmMt_9toml_edit2de5ErrorENtNtCs7PiwjADO7TO_10serde_core2de12Deserializer15deserialize_mapINtNvXs3d_NtB1K_5implsINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapppENtB1K_11Deserialize11deserialize10MapVisitorNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB3f_6string6StringNtNtB5z_5value5ValueEEECs5cbCQMMIObr_10typst_eval:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.i, i64 40, i1 false), !noalias !8601
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16.i, i64 40, i1 false), !noalias !8601
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !8600
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBK_6string6StringNtNtB2j_5value5ValueEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !8602
  br label %_RINvXNvXs3d_NtNtCs7PiwjADO7TO_10serde_core2de5implsINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBW_6string6StringNtNtB3l_5value5ValueEENtBc_7Visitor9visit_mapINtNtNtCs4OFxtfStbbg_5serde7private2de13FlatMapAccessNtNtCs89doag9UmMt_9toml_edit2de5ErrorEECs5cbCQMMIObr_10typst_eval.exit

bb.ae:                                            ; preds = %_RINvXs7_NtNtCs4OFxtfStbbg_5serde7private2deINtB6_13FlatMapAccessNtNtCs89doag9UmMt_9toml_edit2de5ErrorENtNtCs7PiwjADO7TO_10serde_core2de9MapAccess15next_value_seedINtNtCs3oUPovFnLWP_4core6marker11PhantomDataINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtB3n_5value5ValueEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !8606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !8606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !8602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !8602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i, i64 16, i1 false), !noalias !8602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8602
  call void @llvm.experimental.noalias.scope.decl(metadata !8641)
  call void @llvm.experimental.noalias.scope.decl(metadata !8642)
  call void @llvm.experimental.noalias.scope.decl(metadata !8643)
  call void @llvm.experimental.noalias.scope.decl(metadata !8644)
  call void @llvm.experimental.noalias.scope.decl(metadata !8645)
  call void @llvm.experimental.noalias.scope.decl(metadata !8646)
  %i.cp = load ptr, ptr %i.ad, align 8, !alias.scope !8647, !noalias !8602, !noundef !35 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i4.i, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = load i64, ptr %i.an, align 8, !alias.scope !8647, !noalias !8602, !noundef !35
  call void @llvm.experimental.noalias.scope.decl(metadata !8648)
  %i.cr = load i8, ptr %i.ao, align 1, !alias.scope !8649, !noalias !8602 ; 2 uses
  %.not.i.i.i.i.i.i5.i = icmp sgt i8 %i.cr, -1    ; 3 uses
  %i.cs = and i8 %i.cr, 127
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = load ptr, ptr %i.ac, align 8, !alias.scope !8649, !noalias !8602 ; 6 uses
  %i.cv = load i64, ptr %i.ap, align 8, !alias.scope !8649, !noalias !8602 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i5.i, i64 %i.cv, i64 %i.ct ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i5.i, ptr %i.cu, ptr %i.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %bb.af
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.cq, %bb.af ], [ %i.dv, %bb.aj ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.cp, %bb.af ], [ %i.du, %bb.aj ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8650)
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 450
  %i.cx = load i16, ptr %i.cw, align 2, !noalias !8651, !noundef !35 ; 2 uses
  %i.cy = zext i16 %i.cx to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.cy, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.idx
  %i.da = icmp eq i16 %i.cx, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i621, i64 16 ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i620, 1
  %i.dd = icmp eq ptr %i.db, %i.cz
  br i1 %i.dd, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.ag, %bb.ah
  %.sroa.0.01.i.i.i.i.i621 = phi ptr [ %i.db, %bb.ah ], [ %.sroa.0.0.i.i.i.i, %bb.ag ] ; 5 uses
  %.sroa.8.0.i.i.i.i.i620 = phi i64 [ %i.dc, %bb.ah ], [ 0, %bb.ag ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i621, i64 15
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !8652, !noalias !8651, !noundef !35 ; 2 uses
  %.not.i5.i.i.i.i.i.i = icmp sgt i8 %i.df, -1    ; 2 uses
  %i.dg = and i8 %i.df, 127
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = load ptr, ptr %.sroa.0.01.i.i.i.i.i621, align 8, !alias.scope !8652, !noalias !8651, !nonnull !35
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i621, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !8652, !noalias !8651
  %.sroa.3.0.i6.i.i.i.i.i.i = select i1 %.not.i5.i.i.i.i.i.i, i64 %i.dk, i64 %i.dh ; 2 uses
  %.sroa.0.0.i7.i.i.i.i.i.i = select i1 %.not.i5.i.i.i.i.i.i, ptr %i.di, ptr %.sroa.0.01.i.i.i.i.i621
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i6.i.i.i.i.i.i)
  %i.dl = call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !noalias !8653 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp eq i32 %i.dl, 0
  %i.do = sub i64 %.sroa.3.0.i.i.i.i.i.i.i, %.sroa.3.0.i6.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.dn, i64 %i.do, i64 %i.dm
  %i.dp = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.dp, label %bb.ai [
    i8 -1, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2h_5value5ValueENtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
    i8 1, label %bb.ah
  ]

bb.ai:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  unreachable

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge: ; preds = %bb.ah, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %bb.ag
  %.sroa.4.0.i.ph.i.i.i.i = phi i64 [ %i.cy, %bb.ag ], [ %i.cy, %bb.ah ], [ %.sroa.8.0.i.i.i.i.i620, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ] ; 3 uses
  %i.dq = icmp eq i64 %.sroa.3.0.i.i.i.i, 0
  br i1 %i.dq, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 456
  %i.ds = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, 12
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.4.0.i.ph.i.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !8654, !nonnull !35, !noundef !35
  %i.dv = add i64 %.sroa.3.0.i.i.i.i, -1
  br label %bb.ag

bb.ak:                                            ; preds = %bb.ae
  %.sroa.7.8.copyload12.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !8655, !noalias !8602
  %.sroa.11.8.copyload16.i.i = load i64, ptr %i.ap, align 8, !alias.scope !8655, !noalias !8602
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB1Q_5value5ValueEE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2h_5value5ValueENtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i5.i, label %bb.al, label %bb.dv

bb.al:                                            ; preds = %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2h_5value5ValueENtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  %.not.i.i.i.i.i.i.i6.i = icmp eq ptr %i.cu, inttoptr (i64 16 to ptr)
  %i.dw = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i6.i, label %bb.dv, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i7.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i7.i: ; preds = %bb.al
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !8656
  %.not.i.i.i.i11.i.i.i = icmp eq i64 %i.dx, 1
  br i1 %.not.i.i.i.i11.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i8.i, label %bb.dv

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i8.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i7.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8657
  %i.dy = getelementptr i8, ptr %i.cu, i64 -8
  %.val.i.i.i.i.i.i.i9.i = load i64, ptr %i.dy, align 8, !noalias !8656, !noundef !35 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i10.i = icmp ult i64 %.val.i.i.i.i.i.i.i9.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i10.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i11.i, label %bb.am, !prof !37

bb.am:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i8.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
          to label %.noexc.i.i unwind label %.loopexit.split-lp55.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8658

.noexc.i.i:                                       ; preds = %bb.am
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i11.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i8.i
  %i.dz = add nuw nsw i64 %.val.i.i.i.i.i.i.i9.i, 16
  store ptr %i.dw, ptr %i.aq, align 8, !noalias !8657
  store i64 8, ptr %i.m, align 8, !noalias !8657
  store i64 %i.dz, ptr %i.ar, align 8, !noalias !8657
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp55.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8658

.noexc6.i.i:                                      ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8657
  br label %bb.dv

bb.an:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge
  %i.ea = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB1Q_5value5ValueEE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB1Q_5value5ValueEE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.an, %bb.ak
  %.sroa.17.0.i.i = phi i64 [ undef, %bb.ak ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.an ] ; 12 uses
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.ak ], [ %i.ea, %bb.an ] ; 3 uses
  %.sroa.11.0.i.i = phi i64 [ %.sroa.11.8.copyload16.i.i, %bb.ak ], [ %i.cv, %bb.an ]
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.8.copyload12.i.i, %bb.ak ], [ %i.cu, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8659
  store ptr %i.ad, ptr %i.n, align 8, !noalias !8659
  store ptr %.sroa.7.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !8659
  store i64 %.sroa.11.0.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !8659
  store i64 %.sroa.12.0.i.i, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !8659
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !8659
  store i64 %.sroa.17.0.i.i, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !noalias !8659
  %.cast.i.i = inttoptr i64 %.sroa.12.0.i.i to ptr ; 12 uses
  %.not.i7.i.i = icmp eq i64 %.sroa.12.0.i.i, 0
  br i1 %.not.i7.i.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB1Q_5value5ValueEE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8660
  %i.eb = call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 456, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !8660 ; 6 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ap, label %bb.aq, !prof !40

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 456) #42
          to label %.noexc.i.i14.i unwind label %bb.dr, !noalias !8660

.noexc.i.i14.i:                                   ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 176
  store ptr null, ptr %i.ed, align 8, !noalias !8660
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 450
  store ptr %i.eb, ptr %i.ad, align 8, !alias.scope !8642, !noalias !8661
  store i64 0, ptr %i.an, align 8, !alias.scope !8642, !noalias !8661
  store i16 1, ptr %i.ee, align 2, !noalias !8662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8663
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.32..sroa_idx48.i, i64 24, i1 false), !noalias !8602
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB1Q_5value5ValueEE6insertCs5cbCQMMIObr_10typst_eval.exit.thread.i

bb.ar:                                            ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB1Q_5value5ValueEE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.39.i.i.i.i), !noalias !8664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.eg = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 450 ; 4 uses
  %i.eh = load i16, ptr %i.eg, align 2, !noalias !8665, !noundef !35 ; 2 uses
  %i.ei = icmp ugt i16 %i.eh, 10
  br i1 %i.ei, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ej = icmp ult i64 %.sroa.17.0.i.i, 5
  br i1 %i.ej, label %bb.az, label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.ek = zext nneg i16 %i.eh to i64              ; 2 uses
  %1 = add nuw nsw i64 %i.ek, 1                   ; 2 uses
  %i.el = add i64 %.sroa.17.0.i.i, 1              ; 3 uses
  %.not.i.i.i.i.i12.i = icmp ugt i64 %1, %i.el
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.cast.i.i, i64 %.sroa.17.0.i.i ; 3 uses
  br i1 %.not.i.i.i.i.i12.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.32..sroa_idx48.i, i64 24, i1 false), !noalias !8602
  call void @llvm.experimental.noalias.scope.decl(metadata !8666)
  br label %bb.bn

bb.av:                                            ; preds = %bb.at
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.cast.i.i, i64 %i.el
  %i.eo = sub nsw i64 %i.ek, %.sroa.17.0.i.i      ; 2 uses
  %i.ep = shl nuw nsw i64 %i.eo, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr nonnull align 8 %i.em, i64 %i.ep, i1 false), !alias.scope !8667, !noalias !8668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8663
  %i.eq = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 184 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.32..sroa_idx48.i, i64 24, i1 false), !noalias !8602
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %.sroa.17.0.i.i
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.el
  %i.et = mul nuw nsw i64 %i.eo, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr nonnull align 8 %i.er, i64 %i.et, i1 false), !alias.scope !8669, !noalias !8668
  br label %bb.bn

bb.aw:                                            ; preds = %bb.as
  switch i64 %.sroa.17.0.i.i, label %bb.ax [
    i64 5, label %bb.az
    i64 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.eu = add i64 %.sroa.17.0.i.i, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.as
  %.sroa.09.0.i.i.i.i.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.as ], [ false, %bb.aw ]
  %.sroa.510.0.i.i.i.i.i = phi i64 [ 0, %bb.ay ], [ %i.eu, %bb.ax ], [ %.sroa.17.0.i.i, %bb.as ], [ %.sroa.17.0.i.i, %bb.aw ] ; 6 uses
  %.sroa.013.0.i.i.i.i.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.as ], [ %.sroa.17.0.i.i, %bb.aw ] ; 5 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8670
  %i.ev = call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 456, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !8670 ; 9 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ba, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB28_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, !prof !40

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 456) #42
          to label %.noexc.i.i.i.i.i unwind label %bb.bf, !noalias !8665

.noexc.i.i.i.i.i:                                 ; preds = %bb.ba
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB28_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.az
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 176
  store ptr null, ptr %i.ex, align 8, !noalias !8670
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 450
  call void @llvm.experimental.noalias.scope.decl(metadata !8671)
  %i.ez = load i16, ptr %i.eg, align 2, !noalias !8672, !noundef !35
  %i.fa = zext i16 %i.ez to i64
  %i.fb = xor i64 %.sroa.013.0.i.i.i.i.i, -1
  %i.fc = add nsw i64 %i.fa, %i.fb                ; 5 uses
  %i.fd = trunc i64 %i.fc to i16
  store i16 %i.fd, ptr %i.ey, align 2, !alias.scope !8671, !noalias !8670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8673
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.cast.i.i, i64 %.sroa.013.0.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !noalias !8672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8673
  %i.ff = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 184 ; 2 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %.sroa.013.0.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false), !noalias !8672
  %i.fh = icmp ult i64 %i.fc, 12
  br i1 %i.fh, label %bb.bg, label %bb.bb, !prof !105

bb.bb:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB28_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fc, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
          to label %bb.bd unwind label %bb.bc, !noalias !8672

bb.bc:                                            ; preds = %bb.bb
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtBG_5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i unwind label %bb.be, !noalias !8672, !inline_history !19

bb.bd:                                            ; preds = %bb.bb
  unreachable

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtBG_5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, %bb.bc
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8672
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtBG_5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i: ; preds = %bb.bc
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #44
          to label %.thread.i.i.i.i.i.i unwind label %bb.be, !noalias !8672

.thread.i.i.i.i.i.i:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtBG_5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 456, i64 noundef 8) #45, !noalias !8670
  br label %bb.bk

bb.bf:                                            ; preds = %bb.ba
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bg:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB28_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %i.fl = add nuw nsw i64 %.sroa.013.0.i.i.i.i.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %.cast.i.i, i64 %i.fl
  %i.fn = shl nuw nsw i64 %i.fc, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.ev, ptr nonnull readonly align 8 %i.fm, i64 %i.fn, i1 false), !alias.scope !8674, !noalias !8675
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.fl
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ev, i64 184
  %i.fq = mul nuw nsw i64 %i.fc, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull readonly align 8 %i.fo, i64 %i.fq, i1 false), !alias.scope !8676, !noalias !8675
  %i.fr = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i.i to i16
  store i16 %i.fr, ptr %i.eg, align 2, !noalias !8672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !noalias !8665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false), !noalias !8665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8673
  %spec.select32.i.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i.i, ptr %i.ev, ptr %.cast.i.i ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i.i.i, i64 450 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !noalias !8677, !noundef !35 ; 2 uses
  %i.fu = zext i16 %i.ft to i64                   ; 2 uses
  %2 = add i16 %i.ft, 1
  %.not.i16.not.i.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i.i, %i.fu
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %spec.select32.i.i.i.i.i, i64 %.sroa.510.0.i.i.i.i.i ; 3 uses
  br i1 %.not.i16.not.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.32..sroa_idx48.i, i64 24, i1 false), !noalias !8602
  call void @llvm.experimental.noalias.scope.decl(metadata !8678)
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  %i.fw = add nuw nsw i64 %.sroa.510.0.i.i.i.i.i, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %spec.select32.i.i.i.i.i, i64 %i.fw
  %i.fy = sub nuw nsw i64 %i.fu, %.sroa.510.0.i.i.i.i.i ; 2 uses
  %i.fz = shl nuw nsw i64 %i.fy, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr nonnull align 8 %i.fv, i64 %i.fz, i1 false), !alias.scope !8679, !noalias !8677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8663
  %i.ga = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i.i.i, i64 184 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.32..sroa_idx48.i, i64 24, i1 false), !noalias !8602
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %.sroa.510.0.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.fw
  %i.gd = mul nuw nsw i64 %i.fy, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.gb, i64 %i.gd, i1 false), !alias.scope !8680, !noalias !8677
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bl, %bb.bk
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8665
  unreachable

bb.bk:                                            ; preds = %bb.bf, %.thread.i.i.i.i.i.i
  %.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.fi, %.thread.i.i.i.i.i.i ], [ %i.fk, %bb.bf ]
  invoke fastcc void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %.sroa.13.32..sroa_idx48.i)
          to label %bb.bl unwind label %bb.bj, !noalias !8602

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i) #44
          to label %.body.i unwind label %bb.bj, !noalias !8663

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %i.gf = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i.i.i, i64 184
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %.sroa.510.0.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !alias.scope !8681, !noalias !8677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i16 %2, ptr %i.fs, align 2, !noalias !8677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !8682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gh = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 176
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !8683, !noundef !35 ; 2 uses
  %.not.i132.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i132.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.bn:                                            ; preds = %bb.av, %bb.au
  %i.gj = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 184
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.17.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !8684, !noalias !8668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %3 = trunc nuw nsw i64 %1 to i16
  store i16 %3, ptr %i.eg, align 2, !noalias !8668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.dp

._crit_edge.i.i.i.i:                              ; preds = %.loopexit39.i.i.i.i, %bb.bm
  %.lcssa125.i.i.i.i = phi i64 [ 0, %bb.bm ], [ %i.hi, %.loopexit39.i.i.i.i ] ; 3 uses
  %.lcssa118.i.i.i.i = phi ptr [ %i.ev, %bb.bm ], [ %i.jy, %.loopexit39.i.i.i.i ] ; 4 uses
  %.lcssa.i.i.i.i = phi ptr [ %.cast.i.i, %bb.bm ], [ %i.he, %.loopexit39.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.76.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.i.i.i.i, i64 40, i1 false), !noalias !8682
  store ptr %.lcssa.i.i.i.i, ptr %i.l, align 8, !noalias !8682
  store i64 %.lcssa125.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i13.i, align 8, !noalias !8682
  store ptr %.lcssa118.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 8, !noalias !8682
  store i64 %.lcssa125.i.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i, align 8, !noalias !8682
  %i.gl = load ptr, ptr %i.ad, align 8, !alias.scope !8642, !noalias !8685, !noundef !35 ; 4 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i23.i.i.i.i, label %bb.bo, label %bb.bq, !prof !40

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #42
          to label %bb.bp unwind label %bb.ca, !noalias !8686

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8687)
  %i.gm = load i64, ptr %i.an, align 8, !alias.scope !8688, !noalias !8685, !noundef !35 ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8689
  %i.gn = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 552, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !8689 ; 11 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.br, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB2d_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, !prof !40

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #42
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bv, !noalias !8689

.noexc.i.i.i.i.i.i:                               ; preds = %bb.br
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB2d_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 176
  store ptr null, ptr %i.gp, align 8, !noalias !8689
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 450 ; 2 uses
  store i16 0, ptr %i.gq, align 2, !noalias !8689
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 456
  store ptr %i.gl, ptr %i.gr, align 8, !noalias !8689
  %i.gs = add i64 %i.gm, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bs, label %bb.bw, !prof !40

bb.bs:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB2d_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #42
          to label %bb.bt unwind label %bb.bu, !noalias !8689

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef 552, i64 noundef 8) #45, !noalias !8689
  br label %.body.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.br
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.bv, %bb.bu
  call void @llvm.trap()
  unreachable

bb.bw:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB2d_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 176
  store ptr %i.gn, ptr %i.gv, align 8, !noalias !8690
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 448
  store i16 0, ptr %i.gw, align 8, !noalias !8691
  store ptr %i.gn, ptr %i.ad, align 8, !alias.scope !8688, !noalias !8685
  store i64 %i.gs, ptr %i.an, align 8, !alias.scope !8688, !noalias !8685
  %i.gx = icmp eq i64 %.lcssa125.i.i.i.i, %i.gm
  br i1 %i.gx, label %bb.do, label %.invoke.i.i.i.i.i.i, !prof !37

.invoke.i.i.i.i.i.i:                              ; preds = %bb.bw
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 48, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #42
          to label %.cont.i.i.i.i.i.i unwind label %bb.bx, !noalias !8692

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

bb.bx:                                            ; preds = %.invoke.i.i.i.i.i.i
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  invoke fastcc void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.gz)
          to label %bb.bz unwind label %bb.by, !noalias !8693

bb.by:                                            ; preds = %bb.bz, %bb.bx
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8692
  unreachable

bb.bz:                                            ; preds = %bb.bx
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.76.0..sroa_idx.i.i.i.i) #44
          to label %.body.i unwind label %bb.by, !noalias !8693

bb.ca:                                            ; preds = %bb.bo
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.76.0..sroa_idx.i.i.i.i) #44
          to label %bb.cc unwind label %bb.cb, !noalias !8693

bb.cb:                                            ; preds = %bb.cc, %bb.ca
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8686
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.hd = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  invoke fastcc void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.hd)
          to label %.body.i unwind label %bb.cb, !noalias !8693, !inline_history !19

.lr.ph.i.i.i.i:                                   ; preds = %bb.bm, %.loopexit39.i.i.i.i
  %i.he = phi ptr [ %i.pn, %.loopexit39.i.i.i.i ], [ %i.gi, %bb.bm ] ; 20 uses
  %i.hf = phi ptr [ %i.he, %.loopexit39.i.i.i.i ], [ %.cast.i.i, %bb.bm ]
  %i.hg = phi i64 [ %i.hi, %.loopexit39.i.i.i.i ], [ 0, %bb.bm ]
  %i.hh = phi ptr [ %i.jy, %.loopexit39.i.i.i.i ], [ %i.ev, %bb.bm ] ; 2 uses
  %i.hi = add i64 %i.hg, 1                        ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 448
  %i.hk = load i16, ptr %i.hj, align 8, !noalias !8683 ; 4 uses
  %i.hl = zext i16 %i.hk to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 450 ; 4 uses
  %i.hn = load i16, ptr %i.hm, align 2, !noalias !8694, !noundef !35 ; 5 uses
  %i.ho = icmp ult i16 %i.hn, 11
  br i1 %i.ho, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %bb.cn
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hq = icmp ult i16 %i.hk, 5
  br i1 %i.hq, label %bb.cm, label %bb.cj

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hr = zext nneg i16 %i.hn to i64              ; 4 uses
  %i.hs = add nuw nsw i16 %i.hn, 1
  %i.ht = add nuw nsw i64 %i.hl, 1                ; 7 uses
  %4 = icmp ugt i16 %i.hn, %i.hk
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %i.hl ; 3 uses
  br i1 %4, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.39.i.i.i.i, i64 16, i1 false), !noalias !8693
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 184
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %i.hl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.48..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !8693
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %i.ht
  %i.hy = sub nuw nsw i64 %i.hr, %i.hl            ; 3 uses
  %i.hz = shl nuw nsw i64 %i.hy, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %i.hu, i64 %i.hz, i1 false), !alias.scope !8695, !noalias !8696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.39.i.i.i.i, i64 16, i1 false), !noalias !8693
  %i.ia = getelementptr inbounds nuw i8, ptr %i.he, i64 184 ; 2 uses
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.ia, i64 %i.hl ; 2 uses
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ia, i64 %i.ht
  %i.id = mul nuw nsw i64 %i.hy, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ic, ptr nonnull align 8 %i.ib, i64 %i.id, i1 false), !alias.scope !8697, !noalias !8696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.48..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !8693
  %i.ie = getelementptr inbounds nuw i8, ptr %i.he, i64 456 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ht
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.hl
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = shl nuw nsw i64 %i.hy, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr nonnull align 8 %i.if, i64 %i.ii, i1 false), !alias.scope !8698, !noalias !8696
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ij = getelementptr inbounds nuw i8, ptr %i.he, i64 456 ; 6 uses
  %i.ik = add nuw nsw i64 %i.hr, 2                ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ht
  store ptr %i.hh, ptr %i.il, align 8, !alias.scope !8698, !noalias !8696
  store i16 %i.hs, ptr %i.hm, align 2, !noalias !8696
  %i.im = icmp samesign ult i64 %i.ht, %i.ik
  br i1 %i.im, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.ci
  %i.in = add nuw nsw i64 %i.hr, 1
  %i.io = sub nsw i64 %i.in, %i.hl
  %i.ip = sub nsw i64 %i.hr, %i.hl
  %xtraiter795 = and i64 %i.io, 3                 ; 2 uses
  %lcmp.mod796.not = icmp eq i64 %xtraiter795, 0
  br i1 %lcmp.mod796.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ht, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter797 = phi i64 [ %prol.iter797.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.iq = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ir = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.ir)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.sroa.0.06.i.i.i.i.i.i.i.prol
  %i.it = load ptr, ptr %i.is, align 8, !noalias !8696, !nonnull !35, !noundef !35 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 176
  store ptr %i.he, ptr %i.iu, align 8, !noalias !8696
  %i.iv = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol to i16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 448
  store i16 %i.iv, ptr %i.iw, align 8, !noalias !8696
  %prol.iter797.next = add i64 %prol.iter797, 1   ; 2 uses
  %prol.iter797.cmp.not = icmp eq i64 %prol.iter797.next, %xtraiter795
  br i1 %prol.iter797.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !8562

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.ht, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ix = icmp ult i64 %i.ip, 3
  br i1 %i.ix, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.jq, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.iy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.sroa.0.06.i.i.i.i.i.i.i
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !8696, !nonnull !35, !noundef !35 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 176
  store ptr %i.he, ptr %i.jb, align 8, !noalias !8696
  %i.jc = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 448
  store i16 %i.jc, ptr %i.jd, align 8, !noalias !8696
  %i.je = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.iy
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !8696, !nonnull !35, !noundef !35 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 176
  store ptr %i.he, ptr %i.jh, align 8, !noalias !8696
  %i.ji = trunc nuw nsw i64 %i.iy to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 448
  store i16 %i.ji, ptr %i.jj, align 8, !noalias !8696
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.je
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !8696, !nonnull !35, !noundef !35 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 176
  store ptr %i.he, ptr %i.jn, align 8, !noalias !8696
  %i.jo = trunc nuw nsw i64 %i.je to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 448
  store i16 %i.jo, ptr %i.jp, align 8, !noalias !8696
  %i.jq = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jr = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.jr)
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jk
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !8696, !nonnull !35, !noundef !35 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 176
  store ptr %i.he, ptr %i.ju, align 8, !noalias !8696
  %i.jv = trunc nuw nsw i64 %i.jk to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 448
  store i16 %i.jv, ptr %i.jw, align 8, !noalias !8696
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.jq, %i.ik
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ce
  switch i16 %i.hk, label %bb.ck [
    i16 5, label %bb.cm
    i16 6, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.jx = add nsw i64 %i.hl, -7
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ce
  %.sroa.06.0.i.i.i.i.i = phi i64 [ 5, %bb.cl ], [ 6, %bb.ck ], [ 4, %bb.ce ], [ 5, %bb.cj ] ; 7 uses
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %bb.cl ], [ %i.jx, %bb.ck ], [ %i.hl, %bb.ce ], [ 5, %bb.cj ] ; 9 uses
  %.sroa.03.0.i.i.i.i.i = phi i1 [ true, %bb.cl ], [ true, %bb.ck ], [ false, %bb.ce ], [ false, %bb.cj ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8699
  %i.jy = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 552, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !8699 ; 15 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.cn, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB2d_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, !prof !40

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #42
          to label %.noexc.i32.i.i.i.i unwind label %bb.cd, !noalias !8694

.noexc.i32.i.i.i.i:                               ; preds = %bb.cn
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB2d_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.cm
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 176
  store ptr null, ptr %i.ka, align 8, !noalias !8699
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 450 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8700
  call void @llvm.experimental.noalias.scope.decl(metadata !8701)
  %i.kc = load i16, ptr %i.hm, align 2, !noalias !8702, !noundef !35
  %i.kd = zext i16 %i.kc to i64
  %i.ke = xor i64 %.sroa.06.0.i.i.i.i.i, -1
  %i.kf = add nsw i64 %i.kd, %i.ke                ; 5 uses
  %i.kg = trunc i64 %i.kf to i16
  store i16 %i.kg, ptr %i.kb, align 2, !alias.scope !8701, !noalias !8699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8703
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %.sroa.06.0.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.kh, i64 16, i1 false), !noalias !8702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8703
  %i.ki = getelementptr inbounds nuw i8, ptr %i.he, i64 184 ; 2 uses
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.ki, i64 %.sroa.06.0.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.kj, i64 24, i1 false), !noalias !8702
  %i.kk = icmp ult i64 %i.kf, 12
  br i1 %i.kk, label %bb.cs, label %bb.co, !prof !105

bb.co:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB2d_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kf, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
          to label %bb.cq unwind label %bb.cp, !noalias !8702

bb.cp:                                            ; preds = %bb.co
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtBG_5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.i.i.i29.i.i.i.i unwind label %bb.cr, !noalias !8702, !inline_history !19

bb.cq:                                            ; preds = %bb.co
  unreachable

bb.cr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtBG_5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.i.i.i29.i.i.i.i, %bb.cp
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8702
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtBG_5value5ValueEECs5cbCQMMIObr_10typst_eval.exit.i.i.i29.i.i.i.i: ; preds = %bb.cp
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtB1l_5value5ValueEEECs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.cr, !noalias !8702

bb.cs:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtB6_6string6StringNtNtB2d_5value5ValueEEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %i.kn = add nuw nsw i64 %.sroa.06.0.i.i.i.i.i, 1 ; 2 uses
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %i.kn
  %i.kp = shl nuw nsw i64 %i.kf, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.jy, ptr nonnull readonly align 8 %i.ko, i64 %i.kp, i1 false), !alias.scope !8704, !noalias !8705
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.ki, i64 %i.kn
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jy, i64 184
  %i.ks = mul nuw nsw i64 %i.kf, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kr, ptr nonnull readonly align 8 %i.kq, i64 %i.ks, i1 false), !alias.scope !8706, !noalias !8705
  %i.kt = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i.i to i16
  store i16 %i.kt, ptr %i.hm, align 2, !noalias !8702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.kh, i64 16, i1 false), !noalias !8694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.kj, i64 24, i1 false), !noalias !8694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8703
  %i.ku = load i16, ptr %i.kb, align 2, !noalias !8699, !noundef !35 ; 3 uses
  %i.kv = zext i16 %i.ku to i64
  %i.kw = add nuw nsw i64 %i.kv, 1                ; 5 uses
  %i.kx = icmp ult i16 %i.ku, 12
  br i1 %i.kx, label %bb.ct, label %bb.cv, !prof !105
end_hunk_1
begin_hunk_2_@_RINvXs6_NtNtCs4OFxtfStbbg_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs89doag9UmMt_9toml_edit2de5ErrorENtNtCs7PiwjADO7TO_10serde_core2de12Deserializer15deserialize_mapINtNvXs3d_NtB1K_5implsINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapppENtB1K_11Deserialize11deserialize10MapVisitorNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtB1K_11ignored_any10IgnoredAnyEECs5cbCQMMIObr_10typst_eval:bb.a

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ck, %.noexc22.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %bb.cg, %bb.cf, %bb.bc, %bb.ba, %bb.ao, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn.ph.i24.i.i.i.i, %.noexc22.i ], [ %i.ma, %bb.ck ], [ %i.ef, %bb.bc ], [ %i.ed, %bb.ba ], [ %.pn.ph.i.i.i.i.i, %bb.ao ], [ %.pn.ph.i24.i.i.i.i, %bb.cf ], [ %.pn.ph.i24.i.i.i.i, %bb.cg ], [ %.pn.ph.i24.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp599, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #44
          to label %bb.cn unwind label %bb.cm, !noalias !8866

bb.l:                                             ; preds = %.noexc3.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, %bb.j, %bb.i, %bb.c
  %.sroa.19.0.ph.i = phi ptr [ %.sroa.19.0.copyload45.i, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.i ], [ inttoptr (i64 8 to ptr), %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.noexc3.i ], [ inttoptr (i64 8 to ptr), %bb.j ]
  %.sroa.16.0.ph.i = phi ptr [ %.sroa.16.0.copyload39.i, %bb.c ], [ %i.aa, %bb.i ], [ %i.aa, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ %i.aa, %.noexc3.i ], [ %i.aa, %bb.j ]
  %.sroa.10.0.ph.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.c ], [ undef, %bb.i ], [ undef, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ undef, %.noexc3.i ], [ undef, %bb.j ]
  %.sroa.0.0.ph.i = phi i64 [ %i.u, %bb.c ], [ 0, %bb.i ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ 0, %.noexc3.i ], [ 0, %bb.j ]
  %i.ak = phi <2 x i64> [ %i.v, %bb.c ], [ <i64 undef, i64 16>, %bb.i ], [ <i64 undef, i64 16>, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ <i64 undef, i64 16>, %.noexc3.i ], [ <i64 undef, i64 16>, %bb.j ]
  %i.al = phi <2 x i64> [ %i.w, %bb.c ], [ <i64 16, i64 0>, %bb.i ], [ <i64 16, i64 0>, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ <i64 16, i64 0>, %.noexc3.i ], [ <i64 16, i64 0>, %bb.j ]
  %i.am = phi <2 x i64> [ %i.x, %bb.c ], [ <i64 0, i64 -1>, %bb.i ], [ <i64 0, i64 -1>, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ <i64 0, i64 -1>, %.noexc3.i ], [ <i64 0, i64 -1>, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8869
  store i64 %.sroa.0.0.ph.i, ptr %0, align 8, !alias.scope !8864
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8864
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8864
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.16.0.ph.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !8864
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.al, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !8864
  %.sroa.1052.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.19.0.ph.i, ptr %.sroa.1052.0..sroa_idx.i, align 8, !alias.scope !8864
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.am, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !8864
  %.sroa.1353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1353.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.i, i64 16, i1 false), !noalias !8865
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k), !noalias !8866
  br label %_RINvXNvXs3d_NtNtCs7PiwjADO7TO_10serde_core2de5implsINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtBc_11ignored_any10IgnoredAnyENtBc_7Visitor9visit_mapINtNtNtCs4OFxtfStbbg_5serde7private2de13FlatMapAccessNtNtCs89doag9UmMt_9toml_edit2de5ErrorEECs5cbCQMMIObr_10typst_eval.exit

bb.m:                                             ; preds = %bb.e
  %i.an = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %.sroa.15.16.copyload37.i = load i64, ptr %.sroa.15.16..sroa.2.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !8871 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8866
  store i64 %i.an, ptr %i.j, align 8, !noalias !8866
  store i64 %.sroa.15.16.copyload37.i, ptr %.sroa.2.sroa.2.0..sroa_idx.i, align 8, !noalias !8866
  call void @llvm.experimental.noalias.scope.decl(metadata !8877)
  call void @llvm.experimental.noalias.scope.decl(metadata !8878)
  %i.ao = load ptr, ptr %i.k, align 8, !alias.scope !8879, !noalias !8866, !noundef !35 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i4.i, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = lshr i64 %.sroa.15.16.copyload37.i, 56
  %i.aq = load i64, ptr %i.r, align 8, !alias.scope !8879, !noalias !8866, !noundef !35
  %.not.i.i.i.i.i.i5.i = icmp sgt i64 %.sroa.15.16.copyload37.i, -1 ; 3 uses
  %i.ar = and i64 %i.ap, 127
  %.sroa.3.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i5.i, i64 %.sroa.15.16.copyload37.i, i64 %i.ar ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i5.i, ptr %.sroa.0.0.copyload.i.i, ptr %i.j
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.aq, %bb.n ], [ %i.br, %bb.r ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.n ], [ %i.bq, %bb.r ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 186
  %i.at = load i16, ptr %i.as, align 2, !noalias !8880, !noundef !35 ; 2 uses
  %i.au = zext i16 %i.at to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.au, 4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.idx
  %i.aw = icmp eq i16 %i.at, 0
  br i1 %i.aw, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

bb.p:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i597, i64 16 ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i596, 1
  %i.az = icmp eq ptr %i.ax, %i.av
  br i1 %i.az, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.o, %bb.p
  %.sroa.0.01.i.i.i.i.i597 = phi ptr [ %i.ax, %bb.p ], [ %.sroa.0.0.i.i.i.i, %bb.o ] ; 5 uses
  %.sroa.8.0.i.i.i.i.i596 = phi i64 [ %i.ay, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i597, i64 15
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !8881, !noalias !8880, !noundef !35 ; 2 uses
  %.not.i5.i.i.i.i.i.i = icmp sgt i8 %i.bb, -1    ; 2 uses
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = load ptr, ptr %.sroa.0.01.i.i.i.i.i597, align 8, !alias.scope !8881, !noalias !8880, !nonnull !35
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i597, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !8881, !noalias !8880
  %.sroa.3.0.i6.i.i.i.i.i.i = select i1 %.not.i5.i.i.i.i.i.i, i64 %i.bg, i64 %i.bd ; 2 uses
  %.sroa.0.0.i7.i.i.i.i.i.i = select i1 %.not.i5.i.i.i.i.i.i, ptr %i.be, ptr %.sroa.0.01.i.i.i.i.i597
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i6.i.i.i.i.i.i)
  %i.bh = call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !noalias !8882 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %i.bk = sub i64 %.sroa.3.0.i.i.i.i.i.i.i, %.sroa.3.0.i6.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.bj, i64 %i.bk, i64 %i.bi
  %i.bl = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.bl, label %bb.q [
    i8 -1, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyNtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
    i8 1, label %bb.p
  ]

bb.q:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  unreachable

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge: ; preds = %bb.p, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %bb.o
  %.sroa.4.0.i.ph.i.i.i.i = phi i64 [ %i.au, %bb.o ], [ %i.au, %bb.p ], [ %.sroa.8.0.i.i.i.i.i596, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.3.0.i.i.i.i, 0
  br i1 %i.bm, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 192
  %i.bo = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, 12
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.4.0.i.ph.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !8883, !nonnull !35, !noundef !35
  %i.br = add i64 %.sroa.3.0.i.i.i.i, -1
  br label %bb.o

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyNtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i5.i, label %bb.s, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE6insertCs5cbCQMMIObr_10typst_eval.exit.i

bb.s:                                             ; preds = %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyNtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %.not.i.i.i.i.i.i.i6.i = icmp eq ptr %.sroa.0.0.copyload.i.i, inttoptr (i64 16 to ptr)
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i6.i, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE6insertCs5cbCQMMIObr_10typst_eval.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i7.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i7.i: ; preds = %bb.s
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !8884
  %.not.i.i.i.i11.i.i.i = icmp eq i64 %i.bt, 1
  br i1 %.not.i.i.i.i11.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i8.i, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE6insertCs5cbCQMMIObr_10typst_eval.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i8.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i7.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8885
  %i.bu = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 -8
  %.val.i.i.i.i.i.i.i9.i = load i64, ptr %i.bu, align 8, !noalias !8884, !noundef !35 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i10.i = icmp ult i64 %.val.i.i.i.i.i.i.i9.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i10.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i11.i, label %.invoke.i, !prof !37

.invoke.i:                                        ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i8.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8866

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i11.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i8.i
  %i.bv = add nuw nsw i64 %.val.i.i.i.i.i.i.i9.i, 16
  store ptr %i.bs, ptr %i.s, align 8, !noalias !8885
  store i64 8, ptr %i.f, align 8, !noalias !8885
  store i64 %i.bv, ptr %i.t, align 8, !noalias !8885
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8866

.noexc15.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8885
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE6insertCs5cbCQMMIObr_10typst_eval.exit.i

bb.t:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtB8_6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i._crit_edge
  %i.bw = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.t, %bb.m
  %.sroa.17.0.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i, %bb.t ], [ undef, %bb.m ] ; 11 uses
  %.sroa.12.0.i.i = phi i64 [ %i.bw, %bb.t ], [ 0, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8886
  store ptr %i.k, ptr %i.g, align 8, !noalias !8886
  store ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !8886
  store i64 %.sroa.15.16.copyload37.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !8886
  store i64 %.sroa.12.0.i.i, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !8886
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !8886
  store i64 %.sroa.17.0.i.i, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !noalias !8886
  %.cast.i.i = inttoptr i64 %.sroa.12.0.i.i to ptr ; 9 uses
  %.not.i4.i.i = icmp eq i64 %.sroa.12.0.i.i, 0
  br i1 %.not.i4.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8887
  %i.bx = call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !8887 ; 5 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.v, label %bb.w, !prof !40

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #42
          to label %.noexc.i.i13.i unwind label %bb.ck, !noalias !8887

.noexc.i.i13.i:                                   ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 176
  store ptr null, ptr %i.bz, align 8, !noalias !8887
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 186
  store ptr %i.bx, ptr %i.k, align 8, !alias.scope !8877, !noalias !8888
  store i64 0, ptr %i.r, align 8, !alias.scope !8877, !noalias !8888
  store i16 1, ptr %i.ca, align 2, !noalias !8889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8890
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE12insert_entryCs5cbCQMMIObr_10typst_eval.exit.i.i

bb.x:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE5entryCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i.i.i.i)
  %i.cb = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 186 ; 4 uses
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !8891, !noundef !35 ; 2 uses
  %i.cd = icmp ugt i16 %i.cc, 10
  br i1 %i.cd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ce = icmp ult i64 %.sroa.17.0.i.i, 5
  br i1 %i.ce, label %bb.ae, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cf = zext nneg i16 %i.cc to i64              ; 2 uses
  %1 = add nuw nsw i64 %i.cf, 1                   ; 2 uses
  %i.cg = add i64 %.sroa.17.0.i.i, 1              ; 2 uses
  %.not.i.i.i.i.i12.i = icmp ugt i64 %1, %i.cg
  br i1 %.not.i.i.i.i.i12.i, label %bb.aa, label %bb.aq

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.cast.i.i, i64 %.sroa.17.0.i.i
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.cast.i.i, i64 %i.cg
  %i.cj = sub nsw i64 %i.cf, %.sroa.17.0.i.i
  %i.ck = shl nuw nsw i64 %i.cj, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.ch, i64 %i.ck, i1 false), !alias.scope !8892, !noalias !8893
  br label %bb.aq

bb.ab:                                            ; preds = %bb.y
  switch i64 %.sroa.17.0.i.i, label %bb.ac [
    i64 5, label %bb.ae
    i64 6, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cl = add i64 %.sroa.17.0.i.i, -7
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.09.0.i.i.i.i.i = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.y ], [ false, %bb.ab ]
  %.sroa.510.0.i.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.cl, %bb.ac ], [ %.sroa.17.0.i.i, %bb.y ], [ %.sroa.17.0.i.i, %bb.ab ] ; 4 uses
  %.sroa.013.0.i.i.i.i.i = phi i64 [ 5, %bb.ad ], [ 6, %bb.ac ], [ 4, %bb.y ], [ %.sroa.17.0.i.i, %bb.ab ] ; 3 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8894
  %i.cm = call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !8894 ; 8 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.af, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, !prof !40

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #42
          to label %.noexc.i.i.i.i.i unwind label %bb.ak, !noalias !8891

.noexc.i.i.i.i.i:                                 ; preds = %bb.af
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 176
  store ptr null, ptr %i.co, align 8, !noalias !8894
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 186
  call void @llvm.experimental.noalias.scope.decl(metadata !8895)
  %i.cq = load i16, ptr %i.cb, align 2, !noalias !8896, !noundef !35
  %i.cr = zext i16 %i.cq to i64
  %i.cs = xor i64 %.sroa.013.0.i.i.i.i.i, -1
  %i.ct = add nsw i64 %i.cr, %i.cs                ; 4 uses
  %i.cu = trunc i64 %i.ct to i16
  store i16 %i.cu, ptr %i.cp, align 2, !alias.scope !8895, !noalias !8894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8897
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.cast.i.i, i64 %.sroa.013.0.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !noalias !8896
  %i.cw = icmp ult i64 %i.ct, 12
  br i1 %i.cw, label %bb.al, label %bb.ag, !prof !105

bb.ag:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ct, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
          to label %bb.ai unwind label %bb.ah, !noalias !8896

bb.ah:                                            ; preds = %bb.ag
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #44
          to label %.thread.i.i.i.i.i.i unwind label %bb.aj, !noalias !8896

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8896
  unreachable

.thread.i.i.i.i.i.i:                              ; preds = %bb.ah
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 192, i64 noundef 8) #45, !noalias !8894
  br label %bb.ao

bb.ak:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %i.da = getelementptr i8, ptr %i.cv, i64 16
  %i.db = shl nuw nsw i64 %i.ct, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(192) %i.cm, ptr nonnull readonly align 8 %i.da, i64 %i.db, i1 false), !alias.scope !8898, !noalias !8899
  %i.dc = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i.i to i16
  store i16 %i.dc, ptr %i.cb, align 2, !noalias !8896
  %.sroa.07.0.copyload8.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !8900 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.13.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %i.dd, i64 7, i1 false), !noalias !8891
  %.sroa.510.0.copyload12.i.i.i.i.i.i = load i8, ptr %.sroa.510.0..sroa_idx11.i.i.i.i.i.i, align 1, !noalias !8900 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8897
  %spec.select46.i.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i.i, ptr %i.cm, ptr %.cast.i.i ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %spec.select46.i.i.i.i.i, i64 186 ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !noalias !8901, !noundef !35 ; 2 uses
  %i.dg = zext i16 %i.df to i64                   ; 2 uses
  %2 = add i16 %i.df, 1
  %.not.i17.not.i.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i.i, %i.dg
  br i1 %.not.i17.not.i.i.i.i.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %spec.select46.i.i.i.i.i, i64 %.sroa.510.0.i.i.i.i.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = sub nuw nsw i64 %i.dg, %.sroa.510.0.i.i.i.i.i
  %i.dk = shl nuw nsw i64 %i.dj, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 8 %i.dh, i64 %i.dk, i1 false), !alias.scope !8902, !noalias !8901
  br label %bb.ap

bb.an:                                            ; preds = %bb.ao
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8891
  unreachable

bb.ao:                                            ; preds = %bb.ak, %.thread.i.i.i.i.i.i
  %.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.cx, %.thread.i.i.i.i.i.i ], [ %i.cz, %bb.ak ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i) #44
          to label %.body.i unwind label %bb.an, !noalias !8890

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %spec.select46.i.i.i.i.i, i64 %.sroa.510.0.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8890
  store i16 %2, ptr %i.de, align 2, !noalias !8901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.43.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.13.i.i.i.i.i, i64 7, i1 false), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i.i)
  %i.dn = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 176
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !8903, !noundef !35 ; 2 uses
  %.not.i146.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i146.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.aq:                                            ; preds = %bb.aa, %bb.z
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %.cast.i.i, i64 %.sroa.17.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8890
  %3 = trunc nuw nsw i64 %1 to i16
  store i16 %3, ptr %i.cb, align 2, !noalias !8893
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE12insert_entryCs5cbCQMMIObr_10typst_eval.exit.i.i

._crit_edge.i.i.i.i:                              ; preds = %.loopexit49.i.i.i.i, %bb.ap
  %.sroa.45.0.i.i.i.i = phi i8 [ %.sroa.510.0.copyload12.i.i.i.i.i.i, %bb.ap ], [ %.sroa.513.0.copyload15.i.i.i.i.i.i, %.loopexit49.i.i.i.i ]
  %.sroa.39.0.i.i.i.i = phi ptr [ %.sroa.07.0.copyload8.i.i.i.i.i.i, %bb.ap ], [ %.sroa.010.0.copyload11.i.i.i.i.i.i, %.loopexit49.i.i.i.i ]
  %.lcssa139.i.i.i.i = phi i64 [ 0, %bb.ap ], [ %i.el, %.loopexit49.i.i.i.i ] ; 3 uses
  %.lcssa132.i.i.i.i = phi ptr [ %i.cm, %bb.ap ], [ %i.gv, %.loopexit49.i.i.i.i ] ; 4 uses
  %.lcssa.i.i.i.i = phi ptr [ %.cast.i.i, %bb.ap ], [ %i.eh, %.loopexit49.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.76.sroa.4.0..sroa.76.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.43.i.i.i.i, i64 7, i1 false), !noalias !8866
  store ptr %.lcssa.i.i.i.i, ptr %i.e, align 8, !noalias !8904
  store i64 %.lcssa139.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !8904
  store ptr %.lcssa132.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 8, !noalias !8904
  store i64 %.lcssa139.i.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i, align 8, !noalias !8904
  store ptr %.sroa.39.0.i.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i.i, align 8, !noalias !8904
  store i8 %.sroa.45.0.i.i.i.i, ptr %.sroa.76.sroa.5.0..sroa.76.0..sroa_idx.sroa_idx.i.i.i.i, align 1, !noalias !8904
  %i.dq = load ptr, ptr %i.k, align 8, !alias.scope !8877, !noalias !8905, !noundef !35 ; 4 uses
  %.not.i19.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i19.i.i.i.i, label %bb.ar, label %bb.at, !prof !40

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #42
          to label %bb.as unwind label %bb.bc, !noalias !8906

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8907)
  %i.dr = load i64, ptr %i.r, align 8, !alias.scope !8908, !noalias !8905, !noundef !35 ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8909
  %i.ds = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !8909 ; 10 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.au, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, !prof !40

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #42
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ay, !noalias !8909

.noexc.i.i.i.i.i.i:                               ; preds = %bb.au
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 176
  store ptr null, ptr %i.du, align 8, !noalias !8909
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 186 ; 2 uses
  store i16 0, ptr %i.dv, align 2, !noalias !8909
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 192
  store ptr %i.dq, ptr %i.dw, align 8, !noalias !8909
  %i.dx = add i64 %i.dr, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.av, label %bb.az, !prof !40

bb.av:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #42
          to label %bb.aw unwind label %bb.ax, !noalias !8909

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 288, i64 noundef 8) #45, !noalias !8909
  br label %.body.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.au
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ay, %bb.ax
  call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 176
  store ptr %i.ds, ptr %i.ea, align 8, !noalias !8910
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 184
  store i16 0, ptr %i.eb, align 8, !noalias !8911
  store ptr %i.ds, ptr %i.k, align 8, !alias.scope !8908, !noalias !8905
  store i64 %i.dx, ptr %i.r, align 8, !alias.scope !8908, !noalias !8905
  %i.ec = icmp eq i64 %.lcssa139.i.i.i.i, %i.dr
  br i1 %i.ec, label %bb.ci, label %.invoke.i.i.i.i.i.i, !prof !37

.invoke.i.i.i.i.i.i:                              ; preds = %bb.az
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 48, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #42
          to label %.cont.i.i.i.i.i.i unwind label %bb.ba, !noalias !8912

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

bb.ba:                                            ; preds = %.invoke.i.i.i.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.76.0..sroa_idx.i.i.i.i) #44
          to label %.body.i unwind label %bb.bb, !noalias !8913

bb.bb:                                            ; preds = %bb.ba
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8912
  unreachable

bb.bc:                                            ; preds = %bb.ar
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.76.0..sroa_idx.i.i.i.i) #44
          to label %.body.i unwind label %bb.bd, !noalias !8913

bb.bd:                                            ; preds = %bb.bc
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8906
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap, %.loopexit49.i.i.i.i
  %.sroa.45.1.i.i.i.i = phi i8 [ %.sroa.513.0.copyload15.i.i.i.i.i.i, %.loopexit49.i.i.i.i ], [ %.sroa.510.0.copyload12.i.i.i.i.i.i, %bb.ap ] ; 5 uses
  %.sroa.39.1.i.i.i.i = phi ptr [ %.sroa.010.0.copyload11.i.i.i.i.i.i, %.loopexit49.i.i.i.i ], [ %.sroa.07.0.copyload8.i.i.i.i.i.i, %bb.ap ] ; 8 uses
  %i.eh = phi ptr [ %i.lv, %.loopexit49.i.i.i.i ], [ %i.do, %bb.ap ] ; 16 uses
  %i.ei = phi ptr [ %i.eh, %.loopexit49.i.i.i.i ], [ %.cast.i.i, %bb.ap ]
  %i.ej = phi i64 [ %i.el, %.loopexit49.i.i.i.i ], [ 0, %bb.ap ]
  %i.ek = phi ptr [ %i.gv, %.loopexit49.i.i.i.i ], [ %i.cm, %bb.ap ] ; 2 uses
  %i.el = add i64 %i.ej, 1                        ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 184
  %i.en = load i16, ptr %i.em, align 8, !noalias !8903 ; 4 uses
  %i.eo = zext i16 %i.en to i64                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i23.i.i.i.i)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 186 ; 4 uses
  %i.eq = load i16, ptr %i.ep, align 2, !noalias !8914, !noundef !35 ; 5 uses
  %i.er = icmp ult i16 %i.eq, 11
  br i1 %i.er, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bm
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = icmp ult i16 %i.en, 5
  br i1 %i.et, label %bb.bl, label %bb.bi

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eu = zext nneg i16 %i.eq to i64              ; 4 uses
  %i.ev = add nuw nsw i16 %i.eq, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !8915)
  %i.ew = add nuw nsw i64 %i.eo, 1                ; 6 uses
  %4 = icmp ugt i16 %i.eq, %i.en
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.eo ; 7 uses
  br i1 %4, label %bb.bh, label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.bg
  store ptr %.sroa.39.1.i.i.i.i, ptr %i.ex, align 8, !alias.scope !8916, !noalias !8917
  %.sroa.958.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.958.0..sroa_idx60.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.43.i.i.i.i, i64 7, i1 false), !noalias !8866
  %.sroa.1062.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 15
  store i8 %.sroa.45.1.i.i.i.i, ptr %.sroa.1062.0..sroa_idx65.i, align 1, !alias.scope !8916, !noalias !8917
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.ew
  %i.ez = sub nuw nsw i64 %i.eu, %i.eo            ; 2 uses
  %i.fa = shl nuw nsw i64 %i.ez, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr nonnull align 8 %i.ex, i64 %i.fa, i1 false), !alias.scope !8918, !noalias !8919
  store ptr %.sroa.39.1.i.i.i.i, ptr %i.ex, align 8, !alias.scope !8916, !noalias !8917
  %.sroa.958.0..sroa_idx61.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.958.0..sroa_idx61.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.43.i.i.i.i, i64 7, i1 false), !noalias !8866
  %.sroa.1062.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 15
  store i8 %.sroa.45.1.i.i.i.i, ptr %.sroa.1062.0..sroa_idx67.i, align 1, !alias.scope !8916, !noalias !8917
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 192 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ew
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.eo
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr nonnull align 8 %i.fc, i64 %i.ff, i1 false), !alias.scope !8920, !noalias !8919
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.bh, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eh, i64 192 ; 6 uses
  %i.fh = add nuw nsw i64 %i.eu, 2                ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ew
  store ptr %i.ek, ptr %i.fi, align 8, !alias.scope !8920, !noalias !8919
  store i16 %i.ev, ptr %i.ep, align 2, !noalias !8919
  %i.fj = icmp samesign ult i64 %i.ew, %i.fh
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %i.fk = add nuw nsw i64 %i.eu, 1
  %i.fl = sub nsw i64 %i.fk, %i.eo
  %i.fm = sub nsw i64 %i.eu, %i.eo
  %xtraiter759 = and i64 %i.fl, 3                 ; 2 uses
  %lcmp.mod760.not = icmp eq i64 %xtraiter759, 0
  br i1 %lcmp.mod760.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter761 = phi i64 [ %prol.iter761.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fo = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.sroa.0.06.i.i.i.i.i.i.i.prol
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !8919, !nonnull !35, !noundef !35 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 176
  store ptr %i.eh, ptr %i.fr, align 8, !noalias !8919
  %i.fs = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 184
  store i16 %i.fs, ptr %i.ft, align 8, !noalias !8919
  %prol.iter761.next = add i64 %prol.iter761, 1   ; 2 uses
  %prol.iter761.cmp.not = icmp eq i64 %prol.iter761.next, %xtraiter759
  br i1 %prol.iter761.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !8833

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.fu = icmp ult i64 %i.fm, 3
  br i1 %i.fu, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.fv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.sroa.0.06.i.i.i.i.i.i.i
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !8919, !nonnull !35, !noundef !35 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 176
  store ptr %i.eh, ptr %i.fy, align 8, !noalias !8919
  %i.fz = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 184
  store i16 %i.fz, ptr %i.ga, align 8, !noalias !8919
  %i.gb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fv
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !8919, !nonnull !35, !noundef !35 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 176
  store ptr %i.eh, ptr %i.ge, align 8, !noalias !8919
  %i.gf = trunc nuw nsw i64 %i.fv to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 184
  store i16 %i.gf, ptr %i.gg, align 8, !noalias !8919
  %i.gh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gb
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !8919, !nonnull !35, !noundef !35 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 176
  store ptr %i.eh, ptr %i.gk, align 8, !noalias !8919
  %i.gl = trunc nuw nsw i64 %i.gb to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 184
  store i16 %i.gl, ptr %i.gm, align 8, !noalias !8919
  %i.gn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.go = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gh
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !8919, !nonnull !35, !noundef !35 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 176
  store ptr %i.eh, ptr %i.gr, align 8, !noalias !8919
  %i.gs = trunc nuw nsw i64 %i.gh to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 184
  store i16 %i.gs, ptr %i.gt, align 8, !noalias !8919
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gn, %i.fh
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bf
  switch i16 %i.en, label %bb.bj [
    i16 5, label %bb.bl
    i16 6, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.gu = add nsw i64 %i.eo, -7
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bf
  %.sroa.06.0.i.i.i.i.i = phi i64 [ 5, %bb.bk ], [ 6, %bb.bj ], [ 4, %bb.bf ], [ 5, %bb.bi ] ; 5 uses
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.gu, %bb.bj ], [ %i.eo, %bb.bf ], [ 5, %bb.bi ] ; 7 uses
  %.sroa.03.0.i.i.i.i.i = phi i1 [ true, %bb.bk ], [ true, %bb.bj ], [ false, %bb.bf ], [ false, %bb.bi ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8921
  %i.gv = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !8921 ; 14 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bm, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, !prof !40

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #42
          to label %.noexc.i28.i.i.i.i unwind label %bb.be, !noalias !8914

.noexc.i28.i.i.i.i:                               ; preds = %bb.bm
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.bl
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 176
  store ptr null, ptr %i.gx, align 8, !noalias !8921
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 186 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8922)
  %i.gz = load i16, ptr %i.ep, align 2, !noalias !8923, !noundef !35
  %i.ha = zext i16 %i.gz to i64
  %i.hb = xor i64 %.sroa.06.0.i.i.i.i.i, -1
  %i.hc = add nsw i64 %i.ha, %i.hb                ; 4 uses
  %i.hd = trunc i64 %i.hc to i16
  store i16 %i.hd, ptr %i.gy, align 2, !alias.scope !8922, !noalias !8921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8924
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.sroa.06.0.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !noalias !8923
  %i.hf = icmp ult i64 %i.hc, 12
  br i1 %i.hf, label %bb.br, label %bb.bn, !prof !105

bb.bn:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hc, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
          to label %bb.bp unwind label %bb.bo, !noalias !8923

bb.bo:                                            ; preds = %bb.bn
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEECs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.bq, !noalias !8923

bb.bp:                                            ; preds = %bb.bn
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !8923
  unreachable

bb.br:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %i.hi = getelementptr i8, ptr %i.he, i64 16
  %i.hj = shl nuw nsw i64 %i.hc, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(192) %i.gv, ptr nonnull readonly align 8 %i.hi, i64 %i.hj, i1 false), !alias.scope !8925, !noalias !8926
  %i.hk = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i.i to i16
  store i16 %i.hk, ptr %i.ep, align 2, !noalias !8923
  %.sroa.010.0.copyload11.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !8927 ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %i.hl, i64 7, i1 false), !noalias !8914
  %.sroa.513.0.copyload15.i.i.i.i.i.i = load i8, ptr %.sroa.513.0..sroa_idx14.i.i.i.i.i.i, align 1, !noalias !8927 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8924
  %i.hm = load i16, ptr %i.gy, align 2, !noalias !8921, !noundef !35 ; 3 uses
  %i.hn = zext i16 %i.hm to i64
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 5 uses
  %i.hp = icmp ult i16 %i.hm, 12
  br i1 %i.hp, label %bb.bs, label %bb.bu, !prof !105

bb.bs:                                            ; preds = %bb.br
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gv, i64 192 ; 6 uses
  %i.hr = zext i16 %i.eq to i64
  %i.hs = sub nuw nsw i64 %i.hr, %.sroa.06.0.i.i.i.i.i
  %i.ht = icmp eq i64 %i.hs, %i.ho
  br i1 %i.ht, label %bb.by, label %bb.bt, !prof !37

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #47
          to label %.noexc.i.i26.i.i.i.i unwind label %bb.bv, !noalias !8921

.noexc.i.i26.i.i.i.i:                             ; preds = %bb.bt
end_hunk_2
begin_hunk_3_@_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant:bb.a
  %i.bs = select i1 %i.br, i64 %i.bn, i64 %i.bo, !unpredictable !35 ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 6                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.bt ; 2 uses
  %.val12.5.i = load i32, ptr %i.bu, align 4, !range !97, !noalias !14348, !noundef !35
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %.val13.5.i = load i32, ptr %i.bv, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.5.i = icmp samesign ugt i32 %.val12.5.i, %.sroa.4.1.i.ph
  %.not1.i18.5.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.5.i
  %i.bw = select i1 %.not1.i18.5.i, i1 %.not.i17.5.i, i1 false
  %i.bx = select i1 %i.bw, i64 %i.bs, i64 %i.bt, !unpredictable !35 ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 3                ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.by ; 2 uses
  %.val12.6.i = load i32, ptr %i.bz, align 4, !range !97, !noalias !14348, !noundef !35
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %.val13.6.i = load i32, ptr %i.ca, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.6.i = icmp samesign ugt i32 %.val12.6.i, %.sroa.4.1.i.ph
  %.not1.i18.6.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.6.i
  %i.cb = select i1 %.not1.i18.6.i, i1 %.not.i17.6.i, i1 false
  %i.cc = select i1 %i.cb, i64 %i.bx, i64 %i.by, !unpredictable !35 ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.cd ; 2 uses
  %.val12.7.i = load i32, ptr %i.ce, align 4, !range !97, !noalias !14348, !noundef !35
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %.val13.7.i = load i32, ptr %i.cf, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.7.i = icmp samesign ugt i32 %.val12.7.i, %.sroa.4.1.i.ph
  %.not1.i18.7.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.7.i
  %i.cg = select i1 %.not1.i18.7.i, i1 %.not.i17.7.i, i1 false
  %i.ch = select i1 %i.cg, i64 %i.cc, i64 %i.cd, !unpredictable !35 ; 2 uses
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.ci ; 2 uses
  %.val12.8.i = load i32, ptr %i.cj, align 4, !range !97, !noalias !14348, !noundef !35
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %.val13.8.i = load i32, ptr %i.ck, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.8.i = icmp samesign ugt i32 %.val12.8.i, %.sroa.4.1.i.ph
  %.not1.i18.8.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.8.i
  %i.cl = select i1 %.not1.i18.8.i, i1 %.not.i17.8.i, i1 false
  %i.cm = select i1 %i.cl, i64 %i.ch, i64 %i.ci, !unpredictable !35
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.cm ; 2 uses
  %.val15.i = load i32, ptr %i.cn, align 4, !range !97, !noalias !14348, !noundef !35
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %.val16.i = load i32, ptr %i.co, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i.i = icmp samesign ule i32 %.val15.i, %.sroa.4.1.i.ph
  %.not1.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val16.i
  %.not.i.not = select i1 %.not1.i.i, i1 %.not.i.i, i1 false
  br i1 %.not.i.not, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.cp = add i64 %.sroa.0.125, 1                 ; 3 uses
  store i64 1, ptr %i.d, align 8
  store i64 %i.cp, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cq = phi i64 [ %i.l, %bb.g ], [ %i.cp, %bb.h ]
  %i.cr = phi i64 [ %i.m, %bb.g ], [ 1, %bb.h ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.125, %bb.g ], [ %i.cp, %bb.h ]
  %i.cs = icmp eq ptr %1, %.sroa.5.3.ph
  br i1 %i.cs, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %i.ct = trunc nuw i64 %i.m to i1
  %i.cu = icmp ne i64 %i.l, 0
  %.sroa.08.0.not = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %.sroa.08.0.not, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.cv = tail call noundef i8 @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph)
  %.not = icmp eq i8 %i.cv, 5
  %spec.select = select i1 %.not, i8 1, i8 2
  br label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE12insert_entryCs5cbCQMMIObr_10typst_eval(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4.sroa.6.i = alloca [32 x i8], align 8 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [32 x i8], align 8        ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 10 uses
  %.sroa.19.i = alloca [32 x i8], align 8         ; 11 uses
  %.sroa.737.sroa.6.i = alloca [32 x i8], align 8 ; 5 uses
  %.sroa.9.i = alloca [32 x i8], align 8          ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noundef !35 ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !35, !noundef !35 ; 3 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.k = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 632, i64 noundef range(i64 1, -9223372036854775807) 8) #45 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #42
          to label %.noexc unwind label %bb.cv

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 626 ; 3 uses
  store i16 0, ptr %i.n, align 2
  store ptr %i.k, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.o, align 8
  %.sroa.018.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx20, align 8 ; 3 uses
  %i.p = load i16, ptr %i.n, align 2, !noalias !14475, !noundef !35 ; 3 uses
  %i.q = icmp ult i16 %i.p, 11
  br i1 %i.q, label %bb.k, label %bb.e, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #42
          to label %bb.g unwind label %bb.f, !noalias !14475

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs52A7LXK8cJh_4toml5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %2) #44
          to label %bb.i unwind label %bb.h, !noalias !14476

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14475
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.t = icmp eq i64 %.sroa.018.0.copyload, 0
  br i1 %i.t, label %.critedge9, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.018.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14477
  br label %.critedge9

bb.k:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.u = zext nneg i16 %i.p to i64                ; 3 uses
  %i.v = add nuw nsw i16 %i.p, 1
  store i16 %i.v, ptr %i.n, align 2, !noalias !14475
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u ; 3 uses
  store i64 %.sroa.018.0.copyload, ptr %i.x, align 8, !noalias !14478
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx21, align 8, !noalias !14478
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx23, align 8, !noalias !14478
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !14476
  br label %bb.l

bb.l:                                             ; preds = %bb.ct, %bb.k
  %i.z = phi ptr [ %i.j, %bb.k ], [ %.val11, %bb.ct ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %i.u, %bb.k ], [ %.sroa.12.1, %bb.ct ]
  %.sroa.7.0 = phi i64 [ 0, %bb.k ], [ %.sroa.7.1, %bb.ct ]
  %.sroa.0.0 = phi ptr [ %i.k, %bb.k ], [ %.sroa.0.1, %bb.ct ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !35
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.ad, align 8
  ret void

bb.m:                                             ; preds = %bb.a
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.426.0.copyload = load i64, ptr %.sroa.426.0..sroa_idx, align 8 ; 5 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.628.0.copyload = load i64, ptr %.sroa.628.0..sroa_idx, align 8 ; 12 uses
  %.sroa.030.0.copyload = load i64, ptr %1, align 8 ; 6 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.531.0.copyload = load ptr, ptr %.sroa.531.0..sroa_idx, align 8 ; 6 uses
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.732.0.copyload = load i64, ptr %.sroa.732.0..sroa_idx, align 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load ptr, ptr %i.ae, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 626 ; 4 uses
  %i.ag = load i16, ptr %i.af, align 2, !noalias !14479, !noundef !35 ; 2 uses
  %i.ah = icmp ugt i16 %i.ag, 10
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = icmp ult i64 %.sroa.628.0.copyload, 5
  br i1 %i.ai, label %bb.u, label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.aj = zext nneg i16 %i.ag to i64              ; 2 uses
  %3 = add nuw nsw i64 %i.aj, 1                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14480)
  %i.al = add i64 %.sroa.628.0.copyload, 1        ; 3 uses
  %.not.i.i.i = icmp ugt i64 %3, %i.al
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.628.0.copyload ; 7 uses
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.030.0.copyload, ptr %i.am, align 8, !alias.scope !14481, !noalias !14482
  %.sroa.912.0..sroa_idx15.i.a = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.531.0.copyload, ptr %.sroa.912.0..sroa_idx15.i.a, align 8, !alias.scope !14481, !noalias !14482
  %.sroa.11.0..sroa_idx23.i.a = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.732.0.copyload, ptr %.sroa.11.0..sroa_idx23.i.a, align 8, !alias.scope !14481, !noalias !14482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !14483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14484)
  br label %.thread.i

bb.q:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.al
  %i.ao = sub nsw i64 %i.aj, %.sroa.628.0.copyload ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.am, i64 %i.ap, i1 false), !alias.scope !14485, !noalias !14486
  store i64 %.sroa.030.0.copyload, ptr %i.am, align 8, !alias.scope !14481, !noalias !14482
  %.sroa.912.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.531.0.copyload, ptr %.sroa.912.0..sroa_idx13.i, align 8, !alias.scope !14481, !noalias !14482
  %.sroa.11.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.732.0.copyload, ptr %.sroa.11.0..sroa_idx21.i, align 8, !alias.scope !14481, !noalias !14482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !14483
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.628.0.copyload
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.al
  %i.as = shl nuw nsw i64 %i.ao, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.aq, i64 %i.as, i1 false), !alias.scope !14487, !noalias !14486
  br label %.thread.i

bb.r:                                             ; preds = %bb.n
  switch i64 %.sroa.628.0.copyload, label %bb.s [
    i64 5, label %bb.u
    i64 6, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.at = add i64 %.sroa.628.0.copyload, -7
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.n
  %.sroa.09.0.i.i = phi i1 [ true, %bb.t ], [ true, %bb.s ], [ false, %bb.n ], [ false, %bb.r ] ; 2 uses
  %.sroa.510.0.i.i = phi i64 [ 0, %bb.t ], [ %i.at, %bb.s ], [ %.sroa.628.0.copyload, %bb.n ], [ %.sroa.628.0.copyload, %bb.r ] ; 9 uses
  %.sroa.013.0.i.i = phi i64 [ 5, %bb.t ], [ 6, %bb.s ], [ 4, %bb.n ], [ %.sroa.628.0.copyload, %bb.r ] ; 5 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14488
  %i.au = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 632, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !14488 ; 9 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.v, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i, !prof !40

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #42
          to label %.noexc.i.i unwind label %bb.ac, !noalias !14479

.noexc.i.i:                                       ; preds = %bb.v
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 352
  store ptr null, ptr %i.aw, align 8, !noalias !14488
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14489)
  %i.ay = load i16, ptr %i.af, align 2, !noalias !14490, !noundef !35
  %i.az = zext i16 %i.ay to i64
  %i.ba = xor i64 %.sroa.013.0.i.i, -1
  %i.bb = add nsw i64 %i.az, %i.ba                ; 5 uses
  %i.bc = trunc i64 %i.bb to i16
  store i16 %i.bc, ptr %i.ax, align 2, !alias.scope !14489, !noalias !14488
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.sroa.013.0.i.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !14490 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !14490 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14490 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14490
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.013.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !14490
  %i.bg = icmp ult i64 %i.bb, 12
  br i1 %i.bg, label %bb.ad, label %bb.w, !prof !105

bb.w:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bb, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
          to label %bb.y unwind label %bb.x, !noalias !14490

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs52A7LXK8cJh_4toml5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #44
          to label %bb.aa unwind label %bb.z, !noalias !14490

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14490
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bj = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.bj, label %.thread.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14491
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ab, %bb.aa
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef 632, i64 noundef 8) #45, !noalias !14488
  br label %bb.ah

bb.ac:                                            ; preds = %bb.v
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %i.bl = add nuw nsw i64 %.sroa.013.0.i.i, 1     ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 360
  %i.bo = mul nuw nsw i64 %i.bb, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr nonnull readonly align 8 %i.bm, i64 %i.bo, i1 false), !alias.scope !14492, !noalias !14493
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.bl
  %i.bq = shl nuw nsw i64 %i.bb, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.au, ptr nonnull readonly align 8 %i.bp, i64 %i.bq, i1 false), !alias.scope !14494, !noalias !14493
  %i.br = trunc nuw nsw i64 %.sroa.013.0.i.i to i16
  store i16 %i.br, ptr %i.af, align 2, !noalias !14490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14490
  %spec.select.i.i = select i1 %.sroa.09.0.i.i, i64 0, i64 %.sroa.426.0.copyload ; 3 uses
  %spec.select32.i.i = select i1 %.sroa.09.0.i.i, ptr %i.au, ptr %i.h ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select32.i.i, i64 626 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !14495, !noundef !35 ; 2 uses
  %i.bu = zext i16 %i.bt to i64                   ; 2 uses
  %4 = add i16 %i.bt, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select32.i.i, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14496)
  %.not.i16.not.i.i = icmp ult i64 %.sroa.510.0.i.i, %i.bu
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.sroa.510.0.i.i ; 7 uses
  br i1 %.not.i16.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 %.sroa.030.0.copyload, ptr %i.bw, align 8, !alias.scope !14497, !noalias !14498
  %.sroa.912.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sroa.531.0.copyload, ptr %.sroa.912.0..sroa_idx17.i, align 8, !alias.scope !14497, !noalias !14498
  %.sroa.11.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.732.0.copyload, ptr %.sroa.11.0..sroa_idx25.i, align 8, !alias.scope !14497, !noalias !14498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !14499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14500)
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.bx = add nuw nsw i64 %.sroa.510.0.i.i, 1     ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = sub nuw nsw i64 %i.bu, %.sroa.510.0.i.i ; 2 uses
  %i.ca = mul nuw nsw i64 %i.bz, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr nonnull align 8 %i.bw, i64 %i.ca, i1 false), !alias.scope !14501, !noalias !14495
  store i64 %.sroa.030.0.copyload, ptr %i.bw, align 8, !alias.scope !14497, !noalias !14498
  %.sroa.912.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sroa.531.0.copyload, ptr %.sroa.912.0..sroa_idx19.i, align 8, !alias.scope !14497, !noalias !14498
  %.sroa.11.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.732.0.copyload, ptr %.sroa.11.0..sroa_idx27.i, align 8, !alias.scope !14497, !noalias !14498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !14499
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i.i, i64 %.sroa.510.0.i.i
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i.i, i64 %i.bx
  %i.cd = shl nuw nsw i64 %i.bz, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr nonnull align 8 %i.cb, i64 %i.cd, i1 false), !alias.scope !14502, !noalias !14495
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ah
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14479
  unreachable

.thread.i:                                        ; preds = %bb.q, %bb.p
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.628.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !alias.scope !14503, !noalias !14486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %5 = trunc nuw nsw i64 %3 to i16
  store i16 %5, ptr %i.af, align 2, !noalias !14486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.am

bb.ah:                                            ; preds = %bb.ac, %.thread.i.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.bh, %.thread.i.i.i ], [ %i.bk, %bb.ac ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs52A7LXK8cJh_4toml5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %2) #44
          to label %bb.ai unwind label %bb.ag, !noalias !14504

bb.ai:                                            ; preds = %bb.ah
  %i.cg = icmp eq i64 %.sroa.030.0.copyload, 0
  br i1 %i.cg, label %.critedge9, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.531.0.copyload) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.531.0.copyload, i64 noundef %.sroa.030.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14505
  br label %.critedge9

bb.ak:                                            ; preds = %bb.af, %bb.ae
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i.i, i64 %.sroa.510.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !alias.scope !14506, !noalias !14495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i16 %4, ptr %i.bs, align 2, !noalias !14495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !14507
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -1
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, i64 32, i1 false), !noalias !14508
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !14509, !noundef !35 ; 2 uses
  %.not.i238.i = icmp eq ptr %i.cj, null
  br i1 %.not.i238.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cl = icmp eq i64 %.sroa.426.0.copyload, 0
  br label %bb.be

bb.am:                                            ; preds = %bb.ak, %.thread.i
  %.sink.i78.i = phi i64 [ %.sroa.628.0.copyload, %.thread.i ], [ %.sroa.510.0.i.i, %bb.ak ]
  %.sink57.i77.i = phi i64 [ %.sroa.426.0.copyload, %.thread.i ], [ %spec.select.i.i, %bb.ak ]
  %.sink58.i76.i = phi ptr [ %i.h, %.thread.i ], [ %spec.select32.i.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.ct

._crit_edge.i:                                    ; preds = %bb.cr, %bb.al
  %.sroa.17.0.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i, %bb.al ], [ %.sroa.6.0.copyload.i.i.i37.i, %bb.cr ] ; 2 uses
  %.sroa.14.0.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i, %bb.al ], [ %.sroa.5.0.copyload.i.i.i35.i, %bb.cr ] ; 5 uses
  %.lcssa222.i = phi ptr [ %i.au, %bb.al ], [ %i.ga, %bb.cr ] ; 4 uses
  %.lcssa214.i = phi i64 [ %.sroa.426.0.copyload, %bb.al ], [ %i.dl, %bb.cr ]
  %.lcssa.i = phi ptr [ %i.h, %bb.al ], [ %i.dg, %bb.cr ]
  %.sroa.0.0.copyload.i.i.i33199.lcssa.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.al ], [ %.sroa.0.0.copyload.i.i.i33.i, %bb.cr ] ; 6 uses
  %.lcssa121.i = phi i64 [ 0, %bb.al ], [ %i.dl, %bb.cr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14508
  %.sroa.02.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i, i64 32, i1 false), !noalias !14508
  store i64 %.sroa.0.0.copyload.i.i.i33199.lcssa.i, ptr %i.f, align 8, !noalias !14508
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.14.0.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !noalias !14508
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.17.0.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i, align 8, !noalias !14508
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %.lcssa.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !14508
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %.lcssa214.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !14508
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %.lcssa222.i, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !14508
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 %.lcssa121.i, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !14508
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.cm = load ptr, ptr %.val11, align 8, !noalias !14510, !noundef !35 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val11, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.cm, null
  br i1 %.not.i23.i, label %bb.an, label %bb.ap, !prof !40

bb.an:                                            ; preds = %._crit_edge.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #42
          to label %bb.ao unwind label %bb.ba, !noalias !14510

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14511)
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !14511, !noalias !14510, !noundef !35 ; 2 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14512
  %i.cp = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 728, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !14512 ; 13 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.aq, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i, !prof !40

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #42
          to label %.noexc.i.i.i unwind label %bb.au, !noalias !14512

.noexc.i.i.i:                                     ; preds = %bb.aq
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i: ; preds = %bb.ap
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 352
  store ptr null, ptr %i.cr, align 8, !noalias !14512
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 626 ; 2 uses
  store i16 0, ptr %i.cs, align 2, !noalias !14512
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 632
  store ptr %i.cm, ptr %i.ct, align 8, !noalias !14512
  %i.cu = add i64 %i.co, 1                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ar, label %bb.av, !prof !40

bb.ar:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #42
          to label %bb.as unwind label %bb.at, !noalias !14512

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 728, i64 noundef 8) #45, !noalias !14512
  br label %.body.i.i.i

bb.au:                                            ; preds = %bb.aq
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.au, %bb.at
  tail call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 352
  store ptr %i.cp, ptr %i.cx, align 8, !noalias !14513
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 624
  store i16 0, ptr %i.cy, align 8, !noalias !14514
  store ptr %i.cp, ptr %.val11, align 8, !alias.scope !14511, !noalias !14510
  store i64 %i.cu, ptr %i.cn, align 8, !alias.scope !14511, !noalias !14510
  %i.cz = icmp eq i64 %.lcssa121.i, %i.co
  br i1 %i.cz, label %bb.cs, label %.invoke.i.i.i, !prof !37

.invoke.i.i.i:                                    ; preds = %bb.av
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 48, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #42
          to label %.cont.i.i.i unwind label %bb.aw, !noalias !14515

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.aw:                                            ; preds = %.invoke.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs52A7LXK8cJh_4toml5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.sroa.02.sroa.6.0..sroa_idx.i) #44
          to label %bb.ay unwind label %bb.ax, !noalias !14508

bb.ax:                                            ; preds = %bb.aw
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14515
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.dc = icmp eq i64 %.sroa.0.0.copyload.i.i.i33199.lcssa.i, 0
  br i1 %i.dc, label %.critedge9, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0.i, i64 noundef %.sroa.0.0.copyload.i.i.i33199.lcssa.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14516
  br label %.critedge9

bb.ba:                                            ; preds = %bb.an
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = icmp eq i64 %.sroa.0.0.copyload.i.i.i33199.lcssa.i, 0
  br i1 %i.de, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0.i, i64 noundef %.sroa.0.0.copyload.i.i.i33199.lcssa.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14517
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bd
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14510
  unreachable

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs52A7LXK8cJh_4toml5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %.sroa.02.sroa.6.0..sroa_idx.i) #44
          to label %.critedge9 unwind label %bb.bc, !noalias !14508

bb.be:                                            ; preds = %bb.cr, %.lr.ph.i
  %.sroa.17.1.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.6.0.copyload.i.i.i37.i, %bb.cr ] ; 4 uses
  %.sroa.14.1.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.5.0.copyload.i.i.i35.i, %bb.cr ] ; 6 uses
  %i.dg = phi ptr [ %i.cj, %.lr.ph.i ], [ %i.la, %bb.cr ] ; 20 uses
  %i.dh = phi ptr [ %i.h, %.lr.ph.i ], [ %i.dg, %bb.cr ]
  %i.di = phi i64 [ %.sroa.426.0.copyload, %.lr.ph.i ], [ %i.dl, %bb.cr ]
  %i.dj = phi ptr [ %i.au, %.lr.ph.i ], [ %i.ga, %bb.cr ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i33199239.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i33.i, %bb.cr ] ; 6 uses
  %i.dk = phi i1 [ %i.cl, %.lr.ph.i ], [ true, %bb.cr ]
  %i.dl = add i64 %i.di, 1                        ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 624
  %i.dn = load i16, ptr %i.dm, align 8, !noalias !14509 ; 4 uses
  %i.do = zext i16 %i.dn to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.737.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.sroa.6.i)
  br i1 %i.dk, label %bb.bg, label %bb.bf, !prof !37

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #42
          to label %bb.bi unwind label %bb.bh, !noalias !14518

bb.bg:                                            ; preds = %bb.be
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 626 ; 4 uses
  %i.dq = load i16, ptr %i.dp, align 2, !noalias !14518, !noundef !35 ; 5 uses
  %i.dr = icmp ult i16 %i.dq, 11
  br i1 %i.dr, label %bb.bk, label %bb.bj

bb.bh:                                            ; preds = %bb.bs, %bb.bf
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bi:                                            ; preds = %bb.bf
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.dt = icmp ult i16 %i.dn, 5
  br i1 %i.dt, label %bb.br, label %bb.bo

bb.bk:                                            ; preds = %bb.bg
  %i.du = zext nneg i16 %i.dq to i64              ; 4 uses
  %i.dv = add nuw nsw i16 %i.dq, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14519)
  %i.dx = add nuw nsw i64 %i.do, 1                ; 7 uses
  %6 = icmp ugt i16 %i.dq, %i.dn
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.do ; 7 uses
  br i1 %6, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i64 %.sroa.0.0.copyload.i.i.i33199239.i, ptr %i.dy, align 8, !alias.scope !14520, !noalias !14521
  %.sroa.946.0..sroa_idx53.i.a = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.14.1.i, ptr %.sroa.946.0..sroa_idx53.i.a, align 8, !alias.scope !14520, !noalias !14521
  %.sroa.1155.0..sroa_idx62.i.a = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.17.1.i, ptr %.sroa.1155.0..sroa_idx62.i.a, align 8, !alias.scope !14520, !noalias !14521
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i, i64 32, i1 false), !noalias !14508
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dx
  %i.eb = sub nuw nsw i64 %i.du, %i.do            ; 3 uses
  %i.ec = mul nuw nsw i64 %i.eb, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.dy, i64 %i.ec, i1 false), !alias.scope !14522, !noalias !14523
  store i64 %.sroa.0.0.copyload.i.i.i33199239.i, ptr %i.dy, align 8, !alias.scope !14520, !noalias !14521
  %.sroa.946.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.14.1.i, ptr %.sroa.946.0..sroa_idx51.i, align 8, !alias.scope !14520, !noalias !14521
  %.sroa.1155.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.17.1.i, ptr %.sroa.1155.0..sroa_idx60.i, align 8, !alias.scope !14520, !noalias !14521
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.do ; 2 uses
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.dx
  %i.ef = shl nuw nsw i64 %i.eb, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ed, i64 %i.ef, i1 false), !alias.scope !14524, !noalias !14523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i, i64 32, i1 false), !noalias !14508
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dg, i64 632 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.dx
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.do
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = shl nuw nsw i64 %i.eb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.eh, i64 %i.ek, i1 false), !alias.scope !14525, !noalias !14523
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.el = getelementptr inbounds nuw i8, ptr %i.dg, i64 632 ; 6 uses
  %i.em = add nuw nsw i64 %i.du, 2                ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.dx
  store ptr %i.dj, ptr %i.en, align 8, !alias.scope !14525, !noalias !14523
  store i16 %i.dv, ptr %i.dp, align 2, !noalias !14523
  %i.eo = icmp samesign ult i64 %i.dx, %i.em
  br i1 %i.eo, label %.lr.ph.i.i.i.i.preheader, label %.thread83.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bn
  %i.ep = add nuw nsw i64 %i.du, 1
  %i.eq = sub nsw i64 %i.ep, %i.do
  %i.er = sub nsw i64 %i.du, %i.do
  %xtraiter614 = and i64 %i.eq, 3                 ; 2 uses
  %lcmp.mod615.not = icmp eq i64 %xtraiter614, 0
  br i1 %lcmp.mod615.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.i.prol ], [ %i.dx, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %prol.iter616 = phi i64 [ %prol.iter616.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.es = add nuw nsw i64 %.sroa.0.06.i.i.i.i.prol, 1 ; 2 uses
  %i.et = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.sroa.0.06.i.i.i.i.prol
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !14523, !nonnull !35, !noundef !35 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 352
  store ptr %i.dg, ptr %i.ew, align 8, !noalias !14523
  %i.ex = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.prol to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 624
  store i16 %i.ex, ptr %i.ey, align 8, !noalias !14523
  %prol.iter616.next = add i64 %prol.iter616, 1   ; 2 uses
  %prol.iter616.cmp.not = icmp eq i64 %prol.iter616.next, %xtraiter614
  br i1 %prol.iter616.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !14436

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.preheader ], [ %i.es, %.lr.ph.i.i.i.i.prol ]
  %i.ez = icmp ult i64 %i.er, 3
  br i1 %i.ez, label %.thread83.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.fa = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 1  ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.sroa.0.06.i.i.i.i
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !14523, !nonnull !35, !noundef !35 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 352
  store ptr %i.dg, ptr %i.fd, align 8, !noalias !14523
  %i.fe = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 624
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !14523
  %i.fg = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 2  ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.fa
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !14523, !nonnull !35, !noundef !35 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 352
  store ptr %i.dg, ptr %i.fj, align 8, !noalias !14523
  %i.fk = trunc nuw nsw i64 %i.fa to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 624
  store i16 %i.fk, ptr %i.fl, align 8, !noalias !14523
  %i.fm = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 3  ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.fg
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !14523, !nonnull !35, !noundef !35 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 352
  store ptr %i.dg, ptr %i.fp, align 8, !noalias !14523
  %i.fq = trunc nuw nsw i64 %i.fg to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 624
  store i16 %i.fq, ptr %i.fr, align 8, !noalias !14523
  %i.fs = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 4  ; 2 uses
  %i.ft = icmp ult i64 %.sroa.0.06.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.fm
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !14523, !nonnull !35, !noundef !35 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 352
  store ptr %i.dg, ptr %i.fw, align 8, !noalias !14523
  %i.fx = trunc nuw nsw i64 %i.fm to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 624
  store i16 %i.fx, ptr %i.fy, align 8, !noalias !14523
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fs, %i.em
  br i1 %exitcond.not.i.i.i.i.3, label %.thread83.i, label %.lr.ph.i.i.i.i

bb.bo:                                            ; preds = %bb.bj
  switch i16 %i.dn, label %bb.bp [
    i16 5, label %bb.br
    i16 6, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.fz = add nsw i64 %i.do, -7
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bj
  %.sroa.06.0.i.i = phi i64 [ 5, %bb.bq ], [ 6, %bb.bp ], [ 4, %bb.bj ], [ 5, %bb.bo ] ; 7 uses
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.bq ], [ %i.fz, %bb.bp ], [ %i.do, %bb.bj ], [ 5, %bb.bo ] ; 9 uses
  %.sroa.03.0.i.i = phi i1 [ true, %bb.bq ], [ true, %bb.bp ], [ false, %bb.bj ], [ false, %bb.bo ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14526
  %i.ga = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 728, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !14526 ; 15 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.bs, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i, !prof !40

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #42
          to label %.noexc.i40.i unwind label %bb.bh, !noalias !14518

.noexc.i40.i:                                     ; preds = %bb.bs
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %bb.br
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !14526
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 626 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14528)
  %i.ge = load i16, ptr %i.dp, align 2, !noalias !14529, !noundef !35
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !14528, !noalias !14526
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dg, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i33.i = load i64, ptr %i.gk, align 8, !noalias !14529 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i34.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.sroa.5.0.copyload.i.i.i35.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i34.i, align 8, !noalias !14529 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i.i36.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %.sroa.6.0.copyload.i.i.i37.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i36.i, align 8, !noalias !14529 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14529
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !14529
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bz, label %bb.bt, !prof !105

bb.bt:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #42
          to label %bb.bv unwind label %bb.bu, !noalias !14529

bb.bu:                                            ; preds = %bb.bt
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs52A7LXK8cJh_4toml5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #44
          to label %bb.bx unwind label %bb.bw, !noalias !14529

bb.bv:                                            ; preds = %bb.bt
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14529
  unreachable

bb.bx:                                            ; preds = %bb.bu
  %i.gp = icmp eq i64 %.sroa.0.0.copyload.i.i.i33.i, 0
  br i1 %i.gp, label %bb.ci, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i35.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i35.i, i64 noundef %.sroa.0.0.copyload.i.i.i33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14530
  br label %bb.ci

bb.bz:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueEE13new_uninit_inCs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %i.gq = add nuw nsw i64 %.sroa.06.0.i.i, 1      ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ga, i64 360
  %i.gt = mul nuw nsw i64 %i.gh, 24
end_hunk_3
