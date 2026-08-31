Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_pnet-9e8f96501f3d8b53.libp2p_pnet.d6094ad294552f14-cgu.1?download=true
inline.NumInlined: 280
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5LinesENtNtNtB8_6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet:bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !66, !noalias !67 ; 2 uses
  %i.m = icmp ult i64 %i.l, %.promoted.i.i.i.i.i
  %or.cond27.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.m
  br i1 %or.cond27.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i8, ptr %i.o, align 8, !alias.scope !66, !noalias !67, !noundef !18 ; 2 uses
  %i.q = zext nneg i8 %i.p to i64                 ; 4 uses
  %i.r = icmp ult i8 %i.p, 5
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr i8, ptr %i.n, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %.pre.i.i.i.i.i = load i8, ptr %i.t, align 1, !alias.scope !66, !noalias !67 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i.i
  %i.u = phi i64 [ %i.ai, %bb.f ], [ %.promoted.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.v = sub nuw i64 %i.l, %i.u                   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.u ; 2 uses
  %i.x = icmp samesign ult i64 %i.v, 16
  br i1 %i.x, label %.preheader.i.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.l, %i.u
  br i1 %.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.y = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.v), !noalias !69 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %.loopexit.i.i.i.i.i, label %.loopexit15.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.e
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.af, %bb.e ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !70, !noalias !69, !noundef !18
  %i.ae = icmp eq i8 %i.ad, %.pre.i.i.i.i.i
  br i1 %i.ae, label %.loopexit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.af = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.af, %i.v
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.d ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ag = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.v
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i64 %i.u, 1
  %i.ai = add i64 %i.ah, %.sroa.5.0.i.i.i.i.i.i   ; 8 uses
  store i64 %i.ai, ptr %i.j, align 8, !alias.scope !66, !noalias !67
  %.not11.i.i.i.i.i = icmp ult i64 %i.ai, %i.q
  %.not12.i.i.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %bb.g

.loopexit15.i.i.i.i.i:                            ; preds = %bb.d, %.preheader.i.i.i.i.i.i, %bb.e
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !66, !noalias !67
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i

bb.f:                                             ; preds = %bb.g, %.loopexit.i.i.i.i.i
  %i.aj = icmp ult i64 %i.l, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.ak = sub nuw i64 %i.ai, %i.q
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ak
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.n, i64 %i.q), !noalias !67
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.f

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !62, !noundef !18 ; 2 uses
  %i.ao = sub nuw i64 %i.ai, %i.an
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !62
  br label %select.unfold.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i: ; preds = %bb.f, %.loopexit15.i.i.i.i.i, %bb.c
  store i8 1, ptr %i.e, align 1, !alias.scope !73
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load i8, ptr %i.ap, align 8, !range !61, !alias.scope !73, !noundef !18
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre.i2.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !73 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !73 ; 2 uses
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.ar, i1 true, i1 %.not.i3.i.i.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %.sroa.4.1.i.i.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.as, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre.i2.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.pn.i.i ; 4 uses
  %i.at = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %.sroa.4.1.i.i.i.i, 1 ; 3 uses
  %.not.i.i.i.i4.i.i = icmp eq i64 %.sroa.4.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i4.i.i, label %_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i.i: ; preds = %select.unfold.i.i
  %i.av = getelementptr i8, ptr %.sroa.0.1.i.i.i.i, i64 %.sroa.4.1.i.i.i.i
  %i.aw = getelementptr i8, ptr %i.av, i64 -1
  %rhsc.i.i.i.i.i.i = load i8, ptr %i.aw, align 1, !alias.scope !76, !noalias !85
  %rhsc.i.i.fr.i.i.i.i = freeze i8 %rhsc.i.i.i.i.i.i
  %i.ax = icmp eq i8 %rhsc.i.i.fr.i.i.i.i, 10
  %i.ay = add i64 %.sroa.4.1.i.i.i.i, -1          ; 3 uses
  br i1 %i.ax, label %bb.h, label %_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i.i
  %i.az = insertvalue { ptr, i64 } %i.au, i64 %i.ay, 1
  %.not.i.i15.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i15.i.i.i.i, label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i16.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i16.i.i.i.i: ; preds = %bb.h
  %i.ba = getelementptr i8, ptr %.sroa.0.1.i.i.i.i, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %rhsc.i.i18.i.i.i.i = load i8, ptr %i.bb, align 1, !alias.scope !88, !noalias !93
  %rhsc.i.i18.fr.i.i.i.i = freeze i8 %rhsc.i.i18.i.i.i.i
  %i.bc = icmp eq i8 %rhsc.i.i18.fr.i.i.i.i, 13
  %i.bd = add i64 %.sroa.4.1.i.i.i.i, -2
  %spec.select.i20.i.i.i.i = select i1 %i.bc, ptr %.sroa.0.1.i.i.i.i, ptr null
  br label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i

_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i16.i.i.i.i, %bb.h
  %i.be = phi i64 [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i16.i.i.i.i ], [ -1, %bb.h ]
  %i.bf = phi ptr [ %spec.select.i20.i.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i16.i.i.i.i ], [ null, %bb.h ] ; 2 uses
  %i.bg = insertvalue { ptr, i64 } poison, ptr %i.bf, 0
  %i.bh = insertvalue { ptr, i64 } %i.bg, i64 %i.be, 1
  %.not14.i.i.i.i = icmp eq ptr %i.bf, null
  %..i.i.i.i = select i1 %.not14.i.i.i.i, { ptr, i64 } %i.az, { ptr, i64 } %i.bh
  br label %_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i

_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i: ; preds = %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i.i, %select.unfold.i.i
  %.merged.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i, %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i ], [ %i.au, %_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i.i ], [ %i.au, %select.unfold.i.i ] ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %.merged.i.i.i.i, 0
  %i.bj = extractvalue { ptr, i64 } %.merged.i.i.i.i, 1
  br label %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit

_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit: ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i, %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %i.bj, %_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i ], [ undef, %bb.b ], [ undef, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.bi, %_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i ], [ null, %bb.b ], [ null, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i ]
  %i.bk = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bl = insertvalue { ptr, i64 } %i.bk, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs4WSCZBoZJWV_6cipher6stream7wrapper23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1H_IB1H_IB1H_NtB1J_5UTermNtNtB1L_3bit2B1ENtB2K_2B0EB2I_EB2Y_EEENtB7_12StreamCipher25try_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef align 4 dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !18 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 13 uses
  %i.e = load i8, ptr %i.d, align 4, !alias.scope !96, !noundef !18 ; 5 uses
  %i.f = icmp ne i8 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ult i8 %i.e, 65
  tail call void @llvm.assume(i1 %i.g)
  %narrow.i = sub nuw nsw i8 64, %i.e
  %i.h = zext nneg i8 %narrow.i to i64            ; 3 uses
  %i.i = icmp ult i64 %i.c, %i.h
  br i1 %i.i, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit.thread, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !99
  %i.l = xor i64 %i.k, -1
  %i.m = sub nuw i64 %i.c, %i.h                   ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = and i64 %i.m, 63
  %.not.i = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not.i to i64
  %.sroa.04.0.i = add nuw nsw i64 %i.n, %i.p
  %i.q = icmp ugt i64 %.sroa.04.0.i, %i.l
  br i1 %i.q, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit.thread

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit.thread: ; preds = %bb.a, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.h) ; 15 uses
  %i.r = trunc nuw nsw i64 %..i.i to i8
  %i.s = add nuw nsw i8 %i.e, %i.r
  store i8 %i.s, ptr %i.d, align 4, !alias.scope !107, !noalias !105
  %i.t = zext nneg i8 %i.e to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !105, !noalias !102, !noundef !18 ; 14 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !alias.scope !105, !noalias !102, !noundef !18 ; 14 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %..i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %..i.i ; 2 uses
  %i.ac = sub i64 %i.c, %..i.i                    ; 7 uses
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = and i64 %i.ac, -64                      ; 2 uses
  %i.af = and i64 %i.ac, 63                       ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %.not.i1 = icmp eq i64 %..i.i, 0
  br i1 %.not.i1, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit.thread
  %min.iters.check = icmp samesign ult i64 %..i.i, 4
  %i.ai = sub i64 %i.z, %i.x
  %diff.check = icmp ugt i64 %i.ai, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp samesign ult i64 %..i.i, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %..i.i, 12
  %n.vec = and i64 %..i.i, 112                    ; 5 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %wide.load = load <8 x i8>, ptr %i.y, align 1, !noalias !113
  %wide.load8 = load <8 x i8>, ptr %2, align 1, !noalias !113
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load9 = load <8 x i8>, ptr %i.u, align 1, !alias.scope !115, !noalias !116
  %wide.load10 = load <8 x i8>, ptr %3, align 1, !alias.scope !115, !noalias !116
  %4 = xor <8 x i8> %wide.load9, %wide.load
  %5 = xor <8 x i8> %wide.load10, %wide.load8
  %6 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <8 x i8> %4, ptr %i.w, align 1, !noalias !113
  store <8 x i8> %5, ptr %6, align 1, !noalias !113
  %7 = icmp eq i64 %n.vec, 16
  br i1 %7, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.ak, align 1, !noalias !113
  %wide.load8.1 = load <8 x i8>, ptr %i.al, align 1, !noalias !113
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %wide.load9.1 = load <8 x i8>, ptr %i.an, align 1, !alias.scope !115, !noalias !116
  %wide.load10.1 = load <8 x i8>, ptr %i.ao, align 1, !alias.scope !115, !noalias !116
  %8 = xor <8 x i8> %wide.load9.1, %wide.load.1
  %9 = xor <8 x i8> %wide.load10.1, %wide.load8.1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store <8 x i8> %8, ptr %i.am, align 1, !noalias !113
  store <8 x i8> %9, ptr %i.ap, align 1, !noalias !113
  %i.aq = icmp eq i64 %n.vec, 32
  br i1 %i.aq, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %10 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %wide.load.2 = load <8 x i8>, ptr %10, align 1, !noalias !113
  %wide.load8.2 = load <8 x i8>, ptr %11, align 1, !noalias !113
  %12 = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %wide.load9.2 = load <8 x i8>, ptr %13, align 1, !alias.scope !115, !noalias !116
  %wide.load10.2 = load <8 x i8>, ptr %14, align 1, !alias.scope !115, !noalias !116
  %15 = xor <8 x i8> %wide.load9.2, %wide.load.2
  %16 = xor <8 x i8> %wide.load10.2, %wide.load8.2
  %17 = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store <8 x i8> %15, ptr %12, align 1, !noalias !113
  store <8 x i8> %16, ptr %17, align 1, !noalias !113
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %..i.i, %n.vec
  br i1 %cmp.n, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %..i.i, 124                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %index12
  %wide.load13 = load <4 x i8>, ptr %i.ar, align 1, !noalias !113
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 %index12
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %index12
  %wide.load14 = load <4 x i8>, ptr %i.at, align 1, !alias.scope !115, !noalias !116
  %i.au = xor <4 x i8> %wide.load14, %wide.load13
  store <4 x i8> %i.au, ptr %i.as, align 1, !noalias !113
  %index.next15 = add nuw i64 %index12, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %..i.i, %n.vec11
  br i1 %cmp.n16, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.0.i11.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %..i.i, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.01.0.i11.i.prol = phi i64 [ %i.az, %.lr.ph.i.prol ], [ %.sroa.01.0.i11.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i11.i.prol
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !113, !noundef !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i11.i.prol
  %i.az = add nuw nsw i64 %.sroa.01.0.i11.i.prol, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i11.i.prol
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !115, !noalias !116, !noundef !18
  %i.bc = xor i8 %i.bb, %i.ax
  store i8 %i.bc, ptr %i.ay, align 1, !noalias !113
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !121

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.01.0.i11.i.unr = phi i64 [ %.sroa.01.0.i11.i.ph, %.lr.ph.i.preheader ], [ %i.az, %.lr.ph.i.prol ]
  %i.bd = sub nsw i64 %.sroa.01.0.i11.i.ph, %..i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.01.0.i11.i = phi i64 [ %i.cd, %.lr.ph.i ], [ %.sroa.01.0.i11.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i11.i
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !113, !noundef !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i11.i
  %i.bi = add nuw nsw i64 %.sroa.01.0.i11.i, 1    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i11.i
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !115, !noalias !116, !noundef !18
  %i.bl = xor i8 %i.bk, %i.bg
  store i8 %i.bl, ptr %i.bh, align 1, !noalias !113
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bi
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !113, !noundef !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bi
  %i.bp = add nuw nsw i64 %.sroa.01.0.i11.i, 2    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !115, !noalias !116, !noundef !18
  %i.bs = xor i8 %i.br, %i.bn
  store i8 %i.bs, ptr %i.bo, align 1, !noalias !113
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !113, !noundef !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bp
  %i.bw = add nuw nsw i64 %.sroa.01.0.i11.i, 3    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !115, !noalias !116, !noundef !18
  %i.bz = xor i8 %i.by, %i.bu
  store i8 %i.bz, ptr %i.bv, align 1, !noalias !113
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bw
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !113, !noundef !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bw
  %i.cd = add nuw nsw i64 %.sroa.01.0.i11.i, 4    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bw
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !115, !noalias !116, !noundef !18
  %i.cg = xor i8 %i.cf, %i.cb
  store i8 %i.cg, ptr %i.cc, align 1, !noalias !113
  %exitcond.not.i.3 = icmp eq i64 %i.cd, %..i.i
  br i1 %exitcond.not.i.3, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i, !llvm.loop !123

_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  store ptr %i.aa, ptr %i.a, align 8, !noalias !128
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !128
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !128
  call void @_RINvXs3_Cs5sEvUJpJda_7salsa20INtB6_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBI_IBI_IBI_NtBK_5UTermNtNtBM_3bit2B1ENtB1H_2B0EB1F_EB1U_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore20process_with_backendINtB2h_14ApplyBlocksCtxIBI_IBI_IBI_IBI_IBI_B1m_B1U_EB1U_EB1U_EB1U_EB1U_EEECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  %i.ch = icmp eq i64 %i.af, 0
  br i1 %i.ch, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i
  invoke void @_RINvXs3_Cs5sEvUJpJda_7salsa20INtB6_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBI_IBI_IBI_NtBK_5UTermNtNtBM_3bit2B1ENtB1H_2B0EB1F_EB1U_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore20process_with_backendINtB2h_13WriteBlockCtxIBI_IBI_IBI_IBI_IBI_B1m_B1U_EB1U_EB1U_EB1U_EB1U_EEECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %0, ptr noalias nofree noundef nonnull dereferenceable(64) %i.d)
          to label %iter.check34 unwind label %bb.c, !noalias !105

iter.check34:                                     ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %min.iters.check19 = icmp samesign ult i64 %i.af, 4
  %i.ci = sub i64 %i.z, %i.x
  %diff.check18 = icmp ugt i64 %i.ci, -16
  %or.cond48 = or i1 %min.iters.check19, %diff.check18
  br i1 %or.cond48, label %vec.epilog.scalar.ph35.preheader, label %vector.main.loop.iter.check20

vector.main.loop.iter.check20:                    ; preds = %iter.check34
  %min.iters.check21 = icmp samesign ult i64 %i.af, 16
  br i1 %min.iters.check21, label %vec.epilog.ph38, label %vector.ph22

vector.ph22:                                      ; preds = %vector.main.loop.iter.check20
  %i.cj = and i64 %i.ac, 12
  %n.vec23 = and i64 %i.ac, 48                    ; 4 uses
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index25 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %wide.load26 = load <8 x i8>, ptr %i.ck, align 1, !noalias !136
  %wide.load27 = load <8 x i8>, ptr %i.cl, align 1, !noalias !136
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index25 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %index25 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %wide.load28 = load <8 x i8>, ptr %i.cn, align 4, !alias.scope !139, !noalias !140
  %wide.load29 = load <8 x i8>, ptr %i.co, align 4, !alias.scope !139, !noalias !140
  %i.cp = xor <8 x i8> %wide.load28, %wide.load26
  %i.cq = xor <8 x i8> %wide.load29, %wide.load27
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store <8 x i8> %i.cp, ptr %i.cm, align 1, !noalias !136
  store <8 x i8> %i.cq, ptr %i.cr, align 1, !noalias !136
  %index.next30 = add nuw i64 %index25, 16        ; 2 uses
  %i.cs = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.cs, label %middle.block31, label %vector.body24, !llvm.loop !141

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %i.af, %n.vec23
  br i1 %cmp.n32, label %.loopexit, label %vec.epilog.iter.check36

vec.epilog.iter.check36:                          ; preds = %middle.block31
  %min.epilog.iters.check37 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check37, label %vec.epilog.scalar.ph35.preheader, label %vec.epilog.ph38, !prof !117

vec.epilog.ph38:                                  ; preds = %vector.main.loop.iter.check20, %vec.epilog.iter.check36
  %vec.epilog.resume.val33 = phi i64 [ %n.vec23, %vec.epilog.iter.check36 ], [ 0, %vector.main.loop.iter.check20 ]
  %n.vec39 = and i64 %i.ac, 60                    ; 3 uses
  br label %vec.epilog.vector.body40

vec.epilog.vector.body40:                         ; preds = %vec.epilog.vector.body40, %vec.epilog.ph38
  %index41 = phi i64 [ %vec.epilog.resume.val33, %vec.epilog.ph38 ], [ %index.next44, %vec.epilog.vector.body40 ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index41
  %wide.load42 = load <4 x i8>, ptr %i.ct, align 1, !noalias !136
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index41
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 %index41
  %wide.load43 = load <4 x i8>, ptr %i.cv, align 4, !alias.scope !139, !noalias !140
  %i.cw = xor <4 x i8> %wide.load43, %wide.load42
  store <4 x i8> %i.cw, ptr %i.cu, align 1, !noalias !136
  %index.next44 = add nuw i64 %index41, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.cx, label %vec.epilog.middle.block45, label %vec.epilog.vector.body40, !llvm.loop !142

vec.epilog.middle.block45:                        ; preds = %vec.epilog.vector.body40
  %cmp.n46 = icmp eq i64 %i.af, %n.vec39
  br i1 %cmp.n46, label %.loopexit, label %vec.epilog.scalar.ph35.preheader

vec.epilog.scalar.ph35.preheader:                 ; preds = %iter.check34, %vec.epilog.iter.check36, %vec.epilog.middle.block45
  %.sroa.01.0.i1.i.i.ph = phi i64 [ 0, %iter.check34 ], [ %n.vec23, %vec.epilog.iter.check36 ], [ %n.vec39, %vec.epilog.middle.block45 ] ; 3 uses
  %xtraiter49 = and i64 %i.ac, 3                  ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %vec.epilog.scalar.ph35.prol.loopexit, label %vec.epilog.scalar.ph35.prol

vec.epilog.scalar.ph35.prol:                      ; preds = %vec.epilog.scalar.ph35.preheader, %vec.epilog.scalar.ph35.prol
  %.sroa.01.0.i1.i.i.prol = phi i64 [ %i.db, %vec.epilog.scalar.ph35.prol ], [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph35.preheader ] ; 4 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %vec.epilog.scalar.ph35.prol ], [ 0, %vec.epilog.scalar.ph35.preheader ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i1.i.i.prol
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !136, !noundef !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.0.i1.i.i.prol
  %i.db = add nuw nsw i64 %.sroa.01.0.i1.i.i.prol, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.01.0.i1.i.i.prol
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !139, !noalias !140, !noundef !18
  %i.de = xor i8 %i.dd, %i.cz
  store i8 %i.de, ptr %i.da, align 1, !noalias !136
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %vec.epilog.scalar.ph35.prol.loopexit, label %vec.epilog.scalar.ph35.prol, !llvm.loop !143

vec.epilog.scalar.ph35.prol.loopexit:             ; preds = %vec.epilog.scalar.ph35.prol, %vec.epilog.scalar.ph35.preheader
  %.sroa.01.0.i1.i.i.unr = phi i64 [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph35.preheader ], [ %i.db, %vec.epilog.scalar.ph35.prol ]
  %i.df = sub nsw i64 %.sroa.01.0.i1.i.i.ph, %i.af
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %.loopexit, label %vec.epilog.scalar.ph35

vec.epilog.scalar.ph35:                           ; preds = %vec.epilog.scalar.ph35.prol.loopexit, %vec.epilog.scalar.ph35
  %.sroa.01.0.i1.i.i = phi i64 [ %i.ef, %vec.epilog.scalar.ph35 ], [ %.sroa.01.0.i1.i.i.unr, %vec.epilog.scalar.ph35.prol.loopexit ] ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i1.i.i
  %i.di = load i8, ptr %i.dh, align 1, !noalias !136, !noundef !18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.0.i1.i.i
  %i.dk = add nuw nsw i64 %.sroa.01.0.i1.i.i, 1   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.01.0.i1.i.i
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !139, !noalias !140, !noundef !18
  %i.dn = xor i8 %i.dm, %i.di
  store i8 %i.dn, ptr %i.dj, align 1, !noalias !136
  %i.do = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dk
  %i.dp = load i8, ptr %i.do, align 1, !noalias !136, !noundef !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dk
  %i.dr = add nuw nsw i64 %.sroa.01.0.i1.i.i, 2   ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dk
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !139, !noalias !140, !noundef !18
  %i.du = xor i8 %i.dt, %i.dp
  store i8 %i.du, ptr %i.dq, align 1, !noalias !136
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dr
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !136, !noundef !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dr
  %i.dy = add nuw nsw i64 %.sroa.01.0.i1.i.i, 3   ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dr
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !139, !noalias !140, !noundef !18
  %i.eb = xor i8 %i.ea, %i.dw
  store i8 %i.eb, ptr %i.dx, align 1, !noalias !136
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dy
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !136, !noundef !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dy
  %i.ef = add nuw nsw i64 %.sroa.01.0.i1.i.i, 4   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dy
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !139, !noalias !140, !noundef !18
  %i.ei = xor i8 %i.eh, %i.ed
  store i8 %i.ei, ptr %i.ee, align 1, !noalias !136
  %exitcond.not.i.i.3 = icmp eq i64 %i.ef, %i.af
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %vec.epilog.scalar.ph35, !llvm.loop !144

.loopexit:                                        ; preds = %vec.epilog.scalar.ph35.prol.loopexit, %vec.epilog.scalar.ph35, %vec.epilog.middle.block45, %middle.block31
  %i.ej = trunc nuw nsw i64 %i.af to i8
  store i8 %i.ej, ptr %i.d, align 4, !alias.scope !145, !noalias !148
  br label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit

bb.c:                                             ; preds = %bb.b
  %i.ek = landingpad { ptr, i32 }
          cleanup
  store i8 64, ptr %i.d, align 4, !alias.scope !102, !noalias !105
  resume { ptr, i32 } %i.ek

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit: ; preds = %.loopexit, %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit
  %.sroa.0.0.i4 = phi i1 [ true, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit ], [ false, %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i ], [ false, %.loopexit ]
  ret i1 %.sroa.0.0.i4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9Bqz0CSWZZv_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsinjenlOLFM6_11libp2p_pnet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @24, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsinjenlOLFM6_11libp2p_pnet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3_Cs5sEvUJpJda_7salsa20INtB6_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBI_IBI_IBI_NtBK_5UTermNtNtBM_3bit2B1ENtB1H_2B0EB1F_EB1U_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore20process_with_backendINtB2h_13WriteBlockCtxIBI_IBI_IBI_IBI_IBI_B1m_B1U_EB1U_EB1U_EB1U_EB1U_EEECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef align 4 dereferenceable(64), ptr noalias nofree noundef dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3_Cs5sEvUJpJda_7salsa20INtB6_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBI_IBI_IBI_NtBK_5UTermNtNtBM_3bit2B1ENtB1H_2B0EB1F_EB1U_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore20process_with_backendINtB2h_14ApplyBlocksCtxIBI_IBI_IBI_IBI_IBI_B1m_B1U_EB1U_EB1U_EB1U_EB1U_EEECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef align 4 dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { noinline noreturn }
attributes #22 = { inlinehint }
attributes #23 = { noreturn }
attributes #24 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!5, !7, !9, !11, !12, !14, !15, !17}
!5 = distinct !{!5, !6, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsinjenlOLFM6_11libp2p_pnet: argument 0"}
!6 = distinct !{!6, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsinjenlOLFM6_11libp2p_pnet"}
!7 = distinct !{!7, !8, !"_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!8 = distinct !{!8, !"_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!9 = distinct !{!9, !10, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!10 = distinct !{!10, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsinjenlOLFM6_11libp2p_pnet"}
!11 = distinct !{!11, !10, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!12 = distinct !{!12, !13, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!13 = distinct !{!13, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet"}
!14 = distinct !{!14, !13, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!15 = distinct !{!15, !16, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!16 = distinct !{!16, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet"}
!17 = distinct !{!17, !16, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!18 = !{}
!19 = !{!9, !11, !12, !14, !15, !17}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninityEE4nextCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!23 = distinct !{!23, !"_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninityEE4nextCsinjenlOLFM6_11libp2p_pnet"}
!24 = !{i64 0, i64 -9223372036854775808}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{i64 0, i64 2}
!27 = !{i64 0, i64 -9223372036854775807}
!28 = !{!"address", !"read_provenance"}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1a_3str4iter5LinesEECsinjenlOLFM6_11libp2p_pnet: argument 0"}
!31 = distinct !{!31, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1a_3str4iter5LinesEECsinjenlOLFM6_11libp2p_pnet"}
!32 = distinct !{!32, !33, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1o_3str4iter5LinesEE11spec_extendCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!33 = distinct !{!33, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1o_3str4iter5LinesEE11spec_extendCsinjenlOLFM6_11libp2p_pnet"}
!34 = !{!35, !36}
!35 = distinct !{!35, !31, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1a_3str4iter5LinesEECsinjenlOLFM6_11libp2p_pnet: argument 1"}
!36 = distinct !{!36, !33, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1o_3str4iter5LinesEE11spec_extendCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!37 = !{i8 0, i8 6}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt: argument 0"}
!40 = distinct !{!40, !"_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt"}
!41 = distinct !{!41, !40, !"_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt: argument 1"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!44 = distinct !{!44, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsinjenlOLFM6_11libp2p_pnet"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!47 = distinct !{!47, !"_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsinjenlOLFM6_11libp2p_pnet"}
!48 = !{i64 8}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!51 = distinct !{!51, !"_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!54 = distinct !{!54, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvXsH_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!57 = distinct !{!57, !"_RNvXsH_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!60 = distinct !{!60, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCsinjenlOLFM6_11libp2p_pnet"}
!61 = !{i8 0, i8 2}
!62 = !{!59, !56, !53, !50}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!65 = distinct !{!65, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!66 = !{!64, !59, !56, !53, !50}
!67 = !{!68}
!68 = distinct !{!68, !65, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!69 = !{!68, !64, !59, !56, !53, !50}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!72 = distinct !{!72, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!73 = !{!74, !59, !56, !53, !50}
!74 = distinct !{!74, !75, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!75 = distinct !{!75, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet"}
!76 = !{!77, !79, !81, !83}
!77 = distinct !{!77, !78, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!78 = distinct !{!78, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet"}
!79 = distinct !{!79, !80, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of: argument 1"}
!80 = distinct !{!80, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of"}
!81 = distinct !{!81, !82, !"_RNvXs3_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call: argument 0"}
!82 = distinct !{!82, !"_RNvXs3_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call"}
!83 = distinct !{!83, !84, !"_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut: argument 0"}
!84 = distinct !{!84, !"_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut"}
!85 = !{!86, !87, !53, !50}
!86 = distinct !{!86, !78, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!87 = distinct !{!87, !80, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of: argument 0"}
!88 = !{!89, !91, !81, !83}
!89 = distinct !{!89, !90, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!90 = distinct !{!90, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet"}
!91 = distinct !{!91, !92, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of: argument 1"}
!92 = distinct !{!92, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of"}
!93 = !{!94, !95, !53, !50}
!94 = distinct !{!94, !90, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!95 = distinct !{!95, !92, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of: argument 0"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!98 = distinct !{!98, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet"}
!99 = !{!100, !97}
!100 = distinct !{!100, !101, !"_RNvXs3_Cs5sEvUJpJda_7salsa20INtB5_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBH_IBH_IBH_NtBJ_5UTermNtNtBL_3bit2B1ENtB1G_2B0EB1E_EB1T_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore16remaining_blocksCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!101 = distinct !{!101, !"_RNvXs3_Cs5sEvUJpJda_7salsa20INtB5_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBH_IBH_IBH_NtBJ_5UTermNtNtBL_3bit2B1ENtB1G_2B0EB1E_EB1T_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore16remaining_blocksCsinjenlOLFM6_11libp2p_pnet"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!104 = distinct !{!104, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!107 = !{!108, !103}
!108 = distinct !{!108, !109, !"_RNvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB5_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBX_IBX_IBX_IBX_IBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB28_2B0EB2m_EB2m_EB2m_EB2m_EB2m_EE11read_cachedCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!109 = distinct !{!109, !"_RNvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB5_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBX_IBX_IBX_IBX_IBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB28_2B0EB2m_EB2m_EB2m_EB2m_EB2m_EE11read_cachedCsinjenlOLFM6_11libp2p_pnet"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out: argument 1"}
!112 = distinct !{!112, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out"}
!113 = !{!114, !111, !103, !106}
!114 = distinct !{!114, !112, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out: argument 0"}
!115 = !{!111, !103}
!116 = !{!114, !106}
!117 = !{!"branch_weights", i32 4, i32 12}
!118 = distinct !{!118, !119, !120}
!119 = !{!"llvm.loop.isvectorized", i32 1}
!120 = !{!"llvm.loop.unroll.runtime.disable"}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = distinct !{!123, !119}
!124 = !{!125, !127, !103, !106}
!125 = distinct !{!125, !126, !"_RNvYINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBB_IBB_IBB_NtBD_5UTermNtNtBF_3bit2B1ENtB1A_2B0EB1y_EB1N_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!126 = distinct !{!126, !"_RNvYINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBB_IBB_IBB_NtBD_5UTermNtNtBF_3bit2B1ENtB1A_2B0EB1y_EB1N_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCsinjenlOLFM6_11libp2p_pnet"}
!127 = distinct !{!127, !126, !"_RNvYINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBB_IBB_IBB_NtBD_5UTermNtNtBF_3bit2B1ENtB1A_2B0EB1y_EB1N_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!128 = !{!125, !103, !106}
!129 = !{!127, !106}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB7_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1P_IB1P_IB1P_NtB1R_5UTermNtNtB1T_3bit2B1ENtB2S_2B0EB2Q_EB36_EEENtB9_12StreamCipher31unchecked_apply_keystream_inouts_0CsinjenlOLFM6_11libp2p_pnet: argument 1"}
!132 = distinct !{!132, !"_RNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB7_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1P_IB1P_IB1P_NtB1R_5UTermNtNtB1T_3bit2B1ENtB2S_2B0EB2Q_EB36_EEENtB9_12StreamCipher31unchecked_apply_keystream_inouts_0CsinjenlOLFM6_11libp2p_pnet"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out: argument 1"}
!135 = distinct !{!135, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out"}
!136 = !{!137, !134, !138, !131, !106}
!137 = distinct !{!137, !135, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out: argument 0"}
!138 = distinct !{!138, !132, !"_RNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB7_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1P_IB1P_IB1P_NtB1R_5UTermNtNtB1T_3bit2B1ENtB2S_2B0EB2Q_EB36_EEENtB9_12StreamCipher31unchecked_apply_keystream_inouts_0CsinjenlOLFM6_11libp2p_pnet: argument 0"}
!139 = !{!134, !131, !103}
!140 = !{!137, !138, !106}
!141 = distinct !{!141, !119, !120}
!142 = distinct !{!142, !119, !120}
!143 = distinct !{!143, !122}
!144 = distinct !{!144, !119}
!145 = !{!146, !103}
!146 = distinct !{!146, !147, !"_RINvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB6_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBY_IBY_IBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB2a_2B0EB2o_EB2o_EB2o_EB2o_EB2o_EE11write_blockNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB3j_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreIBY_IBY_B1O_B28_EB2o_EEENtB3l_12StreamCipher31unchecked_apply_keystream_inout0NCB3d_s_0ECsinjenlOLFM6_11libp2p_pnet: argument 0"}
!147 = distinct !{!147, !"_RINvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB6_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBY_IBY_IBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB2a_2B0EB2o_EB2o_EB2o_EB2o_EB2o_EE11write_blockNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB3j_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreIBY_IBY_B1O_B28_EB2o_EEENtB3l_12StreamCipher31unchecked_apply_keystream_inout0NCB3d_s_0ECsinjenlOLFM6_11libp2p_pnet"}
!148 = !{!149, !150, !106}
!149 = distinct !{!149, !147, !"_RINvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB6_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBY_IBY_IBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB2a_2B0EB2o_EB2o_EB2o_EB2o_EB2o_EE11write_blockNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB3j_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreIBY_IBY_B1O_B28_EB2o_EEENtB3l_12StreamCipher31unchecked_apply_keystream_inout0NCB3d_s_0ECsinjenlOLFM6_11libp2p_pnet: argument 1"}
!150 = distinct !{!150, !147, !"_RINvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB6_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBY_IBY_IBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB2a_2B0EB2o_EB2o_EB2o_EB2o_EB2o_EE11write_blockNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB3j_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreIBY_IBY_B1O_B28_EB2o_EEENtB3l_12StreamCipher31unchecked_apply_keystream_inout0NCB3d_s_0ECsinjenlOLFM6_11libp2p_pnet: argument 2"}
end_hunk_0
