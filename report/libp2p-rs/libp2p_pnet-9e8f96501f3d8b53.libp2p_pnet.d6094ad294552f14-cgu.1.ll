Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_pnet-9e8f96501f3d8b53.libp2p_pnet.d6094ad294552f14-cgu.1?download=true
inline.NumInlined: 280
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5LinesENtNtNtB8_6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -1
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !80, !alias.scope !81, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !81, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !81, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !83, !noundef !4 ; 6 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !83 ; 2 uses
  %i.m = icmp ult i64 %i.l, %.promoted.i.i.i.i.i
  %or.cond27.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.m
  br i1 %or.cond27.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i8, ptr %i.o, align 8, !alias.scope !83, !noundef !4 ; 2 uses
  %i.q = zext nneg i8 %i.p to i64                 ; 4 uses
  %i.r = icmp ult i8 %i.p, 5
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr i8, ptr %i.n, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %.pre.i.i.i.i.i = load i8, ptr %i.t, align 1, !alias.scope !83 ; 2 uses
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
  %i.y = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.v), !noalias !84 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %.loopexit.i.i.i.i.i, label %.loopexit15.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.e
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.af, %bb.e ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !85, !noalias !84, !noundef !4
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
  store i64 %i.ai, ptr %i.j, align 8, !alias.scope !83
  %.not11.i.i.i.i.i = icmp ult i64 %i.ai, %i.q
  %.not12.i.i.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %bb.g

.loopexit15.i.i.i.i.i:                            ; preds = %bb.d, %.preheader.i.i.i.i.i.i, %bb.e
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !83
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i

bb.f:                                             ; preds = %bb.g, %.loopexit.i.i.i.i.i
  %i.aj = icmp ult i64 %i.l, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.ak = sub nuw i64 %i.ai, %i.q
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ak
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.n, i64 %i.q), !noalias !86
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.f

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !81, !noundef !4 ; 2 uses
  %i.ao = sub nuw i64 %i.ai, %i.an
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !81
  br label %select.unfold.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet.exit.i.i.i.i: ; preds = %bb.f, %.loopexit15.i.i.i.i.i, %bb.c
  store i8 1, ptr %i.e, align 1, !alias.scope !87
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load i8, ptr %i.ap, align 8, !range !80, !alias.scope !87, !noundef !4
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre.i2.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !87 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !87 ; 2 uses
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
  %rhsc.i.i.i.i.i.i = load i8, ptr %i.aw, align 1, !alias.scope !88, !noalias !89
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
  %rhsc.i.i18.i.i.i.i = load i8, ptr %i.bb, align 1, !alias.scope !90, !noalias !89
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
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 13 uses
  %i.e = load i8, ptr %i.d, align 4, !alias.scope !121, !noundef !4 ; 5 uses
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
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !122
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.h) ; 15 uses
  %i.r = trunc nuw nsw i64 %..i.i to i8
  %i.s = add nuw nsw i8 %i.e, %i.r
  store i8 %i.s, ptr %i.d, align 4, !alias.scope !125
  %i.t = zext nneg i8 %i.e to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !124, !noundef !4 ; 14 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !alias.scope !124, !noundef !4 ; 14 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %..i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %..i.i ; 2 uses
  %i.ac = sub i64 %i.c, %..i.i                    ; 7 uses
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = and i64 %i.ac, -64                      ; 2 uses
  %i.af = and i64 %i.ac, 63                       ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
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
  %wide.load = load <8 x i8>, ptr %i.y, align 1, !noalias !127
  %wide.load8 = load <8 x i8>, ptr %2, align 1, !noalias !127
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load9 = load <8 x i8>, ptr %i.u, align 1, !alias.scope !128
  %wide.load10 = load <8 x i8>, ptr %3, align 1, !alias.scope !128
  %4 = xor <8 x i8> %wide.load9, %wide.load
  %5 = xor <8 x i8> %wide.load10, %wide.load8
  %6 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <8 x i8> %4, ptr %i.w, align 1, !noalias !127
  store <8 x i8> %5, ptr %6, align 1, !noalias !127
  %7 = icmp eq i64 %n.vec, 16
  br i1 %7, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.ak, align 1, !noalias !127
  %wide.load8.1 = load <8 x i8>, ptr %i.al, align 1, !noalias !127
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %wide.load9.1 = load <8 x i8>, ptr %i.an, align 1, !alias.scope !128
  %wide.load10.1 = load <8 x i8>, ptr %i.ao, align 1, !alias.scope !128
  %i.ap = xor <8 x i8> %wide.load9.1, %wide.load.1
  %i.aq = xor <8 x i8> %wide.load10.1, %wide.load8.1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store <8 x i8> %i.ap, ptr %i.am, align 1, !noalias !127
  store <8 x i8> %i.aq, ptr %i.ar, align 1, !noalias !127
  %i.as = icmp eq i64 %n.vec, 32
  br i1 %i.as, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %8 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %wide.load.2 = load <8 x i8>, ptr %8, align 1, !noalias !127
  %wide.load8.2 = load <8 x i8>, ptr %9, align 1, !noalias !127
  %10 = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %wide.load9.2 = load <8 x i8>, ptr %11, align 1, !alias.scope !128
  %wide.load10.2 = load <8 x i8>, ptr %12, align 1, !alias.scope !128
  %13 = xor <8 x i8> %wide.load9.2, %wide.load.2
  %14 = xor <8 x i8> %wide.load10.2, %wide.load8.2
  %15 = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store <8 x i8> %13, ptr %10, align 1, !noalias !127
  store <8 x i8> %14, ptr %15, align 1, !noalias !127
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %..i.i, %n.vec
  br i1 %cmp.n, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %..i.i, 124                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %index12
  %wide.load13 = load <4 x i8>, ptr %i.at, align 1, !noalias !127
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %index12
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %index12
  %wide.load14 = load <4 x i8>, ptr %i.av, align 1, !alias.scope !128
  %i.aw = xor <4 x i8> %wide.load14, %wide.load13
  store <4 x i8> %i.aw, ptr %i.au, align 1, !noalias !127
  %index.next15 = add nuw i64 %index12, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %..i.i, %n.vec11
  br i1 %cmp.n16, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.0.i11.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %..i.i, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.01.0.i11.i.prol = phi i64 [ %i.bb, %.lr.ph.i.prol ], [ %.sroa.01.0.i11.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i11.i.prol
  %i.az = load i8, ptr %i.ay, align 1, !noalias !127, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i11.i.prol
  %i.bb = add nuw nsw i64 %.sroa.01.0.i11.i.prol, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i11.i.prol
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !128, !noundef !4
  %i.be = xor i8 %i.bd, %i.az
  store i8 %i.be, ptr %i.ba, align 1, !noalias !127
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.01.0.i11.i.unr = phi i64 [ %.sroa.01.0.i11.i.ph, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i.prol ]
  %i.bf = sub nsw i64 %.sroa.01.0.i11.i.ph, %..i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.01.0.i11.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %.sroa.01.0.i11.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i11.i
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !127, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i11.i
  %i.bk = add nuw nsw i64 %.sroa.01.0.i11.i, 1    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i11.i
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !128, !noundef !4
  %i.bn = xor i8 %i.bm, %i.bi
  store i8 %i.bn, ptr %i.bj, align 1, !noalias !127
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !127, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bk
  %i.br = add nuw nsw i64 %.sroa.01.0.i11.i, 2    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bk
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !128, !noundef !4
  %i.bu = xor i8 %i.bt, %i.bp
  store i8 %i.bu, ptr %i.bq, align 1, !noalias !127
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.br
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !127, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.br
  %i.by = add nuw nsw i64 %.sroa.01.0.i11.i, 3    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.br
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !128, !noundef !4
  %i.cb = xor i8 %i.ca, %i.bw
  store i8 %i.cb, ptr %i.bx, align 1, !noalias !127
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !127, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.by
  %i.cf = add nuw nsw i64 %.sroa.01.0.i11.i, 4    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.by
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !128, !noundef !4
  %i.ci = xor i8 %i.ch, %i.cd
  store i8 %i.ci, ptr %i.ce, align 1, !noalias !127
  %exitcond.not.i.3 = icmp eq i64 %i.cf, %..i.i
  br i1 %exitcond.not.i.3, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i, !llvm.loop !105

_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  store ptr %i.aa, ptr %i.a, align 8, !noalias !134
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !134
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !134
  call void @_RINvXs3_Cs5sEvUJpJda_7salsa20INtB6_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBI_IBI_IBI_NtBK_5UTermNtNtBM_3bit2B1ENtB1H_2B0EB1F_EB1U_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore20process_with_backendINtB2h_14ApplyBlocksCtxIBI_IBI_IBI_IBI_IBI_B1m_B1U_EB1U_EB1U_EB1U_EB1U_EEECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  %i.cj = icmp eq i64 %i.af, 0
  br i1 %i.cj, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i
  invoke void @_RINvXs3_Cs5sEvUJpJda_7salsa20INtB6_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBI_IBI_IBI_NtBK_5UTermNtNtBM_3bit2B1ENtB1H_2B0EB1F_EB1U_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore20process_with_backendINtB2h_13WriteBlockCtxIBI_IBI_IBI_IBI_IBI_B1m_B1U_EB1U_EB1U_EB1U_EB1U_EEECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %0, ptr noalias nofree noundef nonnull dereferenceable(64) %i.d)
          to label %iter.check35 unwind label %bb.c, !noalias !124

iter.check35:                                     ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %min.iters.check19 = icmp samesign ult i64 %i.af, 4
  %i.ck = sub i64 %i.z, %i.x
  %diff.check21 = icmp ugt i64 %i.ck, -16
  %or.cond50 = or i1 %min.iters.check19, %diff.check21
  br i1 %or.cond50, label %vec.epilog.scalar.ph37.preheader, label %vector.main.loop.iter.check22

vector.main.loop.iter.check22:                    ; preds = %iter.check35
  %min.iters.check23 = icmp samesign ult i64 %i.af, 16
  br i1 %min.iters.check23, label %vec.epilog.ph39, label %vector.ph24

vector.ph24:                                      ; preds = %vector.main.loop.iter.check22
  %i.cl = and i64 %i.ac, 12
  %n.vec25 = and i64 %i.ac, 48                    ; 4 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.ph24, %vector.body26
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next32, %vector.body26 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index27 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %wide.load28 = load <8 x i8>, ptr %i.cm, align 1, !noalias !138
  %wide.load29 = load <8 x i8>, ptr %i.cn, align 1, !noalias !138
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index27 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 %index27 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %wide.load30 = load <8 x i8>, ptr %i.cp, align 4, !alias.scope !139
  %wide.load31 = load <8 x i8>, ptr %i.cq, align 4, !alias.scope !139
  %i.cr = xor <8 x i8> %wide.load30, %wide.load28
  %i.cs = xor <8 x i8> %wide.load31, %wide.load29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store <8 x i8> %i.cr, ptr %i.co, align 1, !noalias !138
  store <8 x i8> %i.cs, ptr %i.ct, align 1, !noalias !138
  %index.next32 = add nuw i64 %index27, 16        ; 2 uses
  %i.cu = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.cu, label %middle.block33, label %vector.body26, !llvm.loop !115

middle.block33:                                   ; preds = %vector.body26
  %cmp.n34 = icmp eq i64 %i.af, %n.vec25
  br i1 %cmp.n34, label %.loopexit, label %vec.epilog.iter.check36

vec.epilog.iter.check36:                          ; preds = %middle.block33
  %min.epilog.iters.check38 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check38, label %vec.epilog.scalar.ph37.preheader, label %vec.epilog.ph39, !prof !129

vec.epilog.ph39:                                  ; preds = %vector.main.loop.iter.check22, %vec.epilog.iter.check36
  %vec.epilog.resume.val40 = phi i64 [ %n.vec25, %vec.epilog.iter.check36 ], [ 0, %vector.main.loop.iter.check22 ]
  %n.vec41 = and i64 %i.ac, 60                    ; 3 uses
  br label %vec.epilog.vector.body42

vec.epilog.vector.body42:                         ; preds = %vec.epilog.vector.body42, %vec.epilog.ph39
  %index43 = phi i64 [ %vec.epilog.resume.val40, %vec.epilog.ph39 ], [ %index.next46, %vec.epilog.vector.body42 ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.cv, align 1, !noalias !138
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 %index43
  %wide.load45 = load <4 x i8>, ptr %i.cx, align 4, !alias.scope !139
  %i.cy = xor <4 x i8> %wide.load45, %wide.load44
  store <4 x i8> %i.cy, ptr %i.cw, align 1, !noalias !138
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.cz = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.cz, label %vec.epilog.middle.block47, label %vec.epilog.vector.body42, !llvm.loop !116

vec.epilog.middle.block47:                        ; preds = %vec.epilog.vector.body42
  %cmp.n48 = icmp eq i64 %i.af, %n.vec41
  br i1 %cmp.n48, label %.loopexit, label %vec.epilog.scalar.ph37.preheader

vec.epilog.scalar.ph37.preheader:                 ; preds = %iter.check35, %vec.epilog.iter.check36, %vec.epilog.middle.block47
  %.sroa.01.0.i1.i.i.ph = phi i64 [ 0, %iter.check35 ], [ %n.vec25, %vec.epilog.iter.check36 ], [ %n.vec41, %vec.epilog.middle.block47 ] ; 3 uses
  %xtraiter51 = and i64 %i.ac, 3                  ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %vec.epilog.scalar.ph37.prol.loopexit, label %vec.epilog.scalar.ph37.prol

vec.epilog.scalar.ph37.prol:                      ; preds = %vec.epilog.scalar.ph37.preheader, %vec.epilog.scalar.ph37.prol
  %.sroa.01.0.i1.i.i.prol = phi i64 [ %i.dd, %vec.epilog.scalar.ph37.prol ], [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph37.preheader ] ; 4 uses
  %prol.iter53 = phi i64 [ %prol.iter53.next, %vec.epilog.scalar.ph37.prol ], [ 0, %vec.epilog.scalar.ph37.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i1.i.i.prol
  %i.db = load i8, ptr %i.da, align 1, !noalias !138, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.0.i1.i.i.prol
  %i.dd = add nuw nsw i64 %.sroa.01.0.i1.i.i.prol, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.01.0.i1.i.i.prol
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !139, !noundef !4
  %i.dg = xor i8 %i.df, %i.db
  store i8 %i.dg, ptr %i.dc, align 1, !noalias !138
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %vec.epilog.scalar.ph37.prol.loopexit, label %vec.epilog.scalar.ph37.prol, !llvm.loop !117

vec.epilog.scalar.ph37.prol.loopexit:             ; preds = %vec.epilog.scalar.ph37.prol, %vec.epilog.scalar.ph37.preheader
  %.sroa.01.0.i1.i.i.unr = phi i64 [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph37.preheader ], [ %i.dd, %vec.epilog.scalar.ph37.prol ]
  %i.dh = sub nsw i64 %.sroa.01.0.i1.i.i.ph, %i.af
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %.loopexit, label %vec.epilog.scalar.ph37

vec.epilog.scalar.ph37:                           ; preds = %vec.epilog.scalar.ph37.prol.loopexit, %vec.epilog.scalar.ph37
  %.sroa.01.0.i1.i.i = phi i64 [ %i.eh, %vec.epilog.scalar.ph37 ], [ %.sroa.01.0.i1.i.i.unr, %vec.epilog.scalar.ph37.prol.loopexit ] ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i1.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !138, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.0.i1.i.i
  %i.dm = add nuw nsw i64 %.sroa.01.0.i1.i.i, 1   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.01.0.i1.i.i
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !139, !noundef !4
  %i.dp = xor i8 %i.do, %i.dk
  store i8 %i.dp, ptr %i.dl, align 1, !noalias !138
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !138, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dm
  %i.dt = add nuw nsw i64 %.sroa.01.0.i1.i.i, 2   ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dm
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !139, !noundef !4
  %i.dw = xor i8 %i.dv, %i.dr
  store i8 %i.dw, ptr %i.ds, align 1, !noalias !138
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dt
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !138, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dt
  %i.ea = add nuw nsw i64 %.sroa.01.0.i1.i.i, 3   ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dt
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !139, !noundef !4
  %i.ed = xor i8 %i.ec, %i.dy
  store i8 %i.ed, ptr %i.dz, align 1, !noalias !138
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ea
  %i.ef = load i8, ptr %i.ee, align 1, !noalias !138, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ea
  %i.eh = add nuw nsw i64 %.sroa.01.0.i1.i.i, 4   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ea
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !139, !noundef !4
  %i.ek = xor i8 %i.ej, %i.ef
  store i8 %i.ek, ptr %i.eg, align 1, !noalias !138
  %exitcond.not.i.i.3 = icmp eq i64 %i.eh, %i.af
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %vec.epilog.scalar.ph37, !llvm.loop !118

.loopexit:                                        ; preds = %vec.epilog.scalar.ph37.prol.loopexit, %vec.epilog.scalar.ph37, %vec.epilog.middle.block47, %middle.block33
  %i.el = trunc nuw nsw i64 %i.af to i8
  store i8 %i.el, ptr %i.d, align 4, !alias.scope !140
  br label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit

bb.c:                                             ; preds = %bb.b
  %i.em = landingpad { ptr, i32 }
          cleanup
  store i8 64, ptr %i.d, align 4, !alias.scope !123
  resume { ptr, i32 } %i.em

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
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, i1 true, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet"}
!9 = distinct !{!9, !8, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!10 = distinct !{!10, !8, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!11 = distinct !{!11, i1 true, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet"}
!12 = distinct !{!12, !11, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!13 = distinct !{!13, !11, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!14 = distinct !{!14, i1 true, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsinjenlOLFM6_11libp2p_pnet"}
!15 = distinct !{!15, !14, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!16 = distinct !{!16, !14, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!17 = distinct !{!17, i1 true, !"_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!18 = distinct !{!18, !17, !"_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!19 = distinct !{!19, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsinjenlOLFM6_11libp2p_pnet"}
!20 = distinct !{!20, !19, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsinjenlOLFM6_11libp2p_pnet: argument 0"}
!21 = !{!20, !18, !16, !15, !13, !12, !10, !9}
!22 = !{!16, !15, !13, !12, !10, !9}
!23 = distinct !{!23, i1 true, !"_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninityEE4nextCsinjenlOLFM6_11libp2p_pnet"}
!24 = distinct !{!24, !23, !"_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninityEE4nextCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!25 = !{!24}
!26 = distinct !{!26, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1o_3str4iter5LinesEE11spec_extendCsinjenlOLFM6_11libp2p_pnet"}
!27 = distinct !{!27, !26, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1o_3str4iter5LinesEE11spec_extendCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1a_3str4iter5LinesEECsinjenlOLFM6_11libp2p_pnet"}
!29 = distinct !{!29, !28, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1a_3str4iter5LinesEECsinjenlOLFM6_11libp2p_pnet: argument 0"}
!30 = distinct !{!30, !26, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1o_3str4iter5LinesEE11spec_extendCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!31 = distinct !{!31, !28, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeNtNtNtB1a_3str4iter5LinesEECsinjenlOLFM6_11libp2p_pnet: argument 1"}
!32 = !{i64 0, i64 2}
!33 = !{i64 0, i64 -9223372036854775807}
!34 = !{!"address", !"read_provenance"}
!35 = !{!29, !27}
!36 = !{!31, !30}
!37 = !{i8 0, i8 6}
!38 = distinct !{!38, i1 true, !"_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt"}
!39 = distinct !{!39, !38, !"_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt: argument 1"}
!40 = distinct !{!40, !38, !"_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt: argument 0"}
!41 = !{!40, !39}
!42 = distinct !{!42, i1 true, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsinjenlOLFM6_11libp2p_pnet"}
!43 = distinct !{!43, !42, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!44 = !{!43}
!45 = distinct !{!45, i1 true, !"_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsinjenlOLFM6_11libp2p_pnet"}
!46 = distinct !{!46, !45, !"_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!47 = !{!46}
!48 = !{i64 8}
!49 = distinct !{!49, i1 true, !"_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!50 = distinct !{!50, !49, !"_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!51 = distinct !{!51, i1 true, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet"}
!52 = distinct !{!52, !51, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!53 = distinct !{!53, i1 true, !"_RNvXsH_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet"}
!54 = distinct !{!54, !53, !"_RNvXsH_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCsinjenlOLFM6_11libp2p_pnet"}
!56 = distinct !{!56, !55, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!57 = distinct !{!57, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!58 = distinct !{!58, !57, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!59 = distinct !{!59, !57, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!60 = distinct !{!60, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!61 = distinct !{!61, !60, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!62 = distinct !{!62, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet"}
!63 = distinct !{!63, !62, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!64 = distinct !{!64, i1 true, !"_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut"}
!65 = distinct !{!65, !64, !"_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut: argument 0"}
!66 = distinct !{!66, i1 true, !"_RNvXs3_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call"}
!67 = distinct !{!67, !66, !"_RNvXs3_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call: argument 0"}
!68 = distinct !{!68, i1 true, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of"}
!69 = distinct !{!69, !68, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of: argument 1"}
!70 = distinct !{!70, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet"}
!71 = distinct !{!71, !70, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!72 = distinct !{!72, i1 true, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of"}
!73 = distinct !{!73, !72, !"_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_of: argument 1"}
!74 = distinct !{!74, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet"}
!75 = distinct !{!75, !74, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!76 = !{!50}
!77 = !{!52}
!78 = !{!54}
!79 = !{!56}
!80 = !{i8 0, i8 2}
!81 = !{!56, !54, !52, !50}
!82 = !{!58}
!83 = !{!58, !56, !54, !52, !50}
!84 = !{!59, !58, !56, !54, !52, !50}
!85 = !{!61}
!86 = !{!59}
!87 = !{!63, !56, !54, !52, !50}
!88 = !{!71, !69, !67, !65}
!89 = !{!52, !50}
!90 = !{!75, !73, !67, !65}
!91 = distinct !{!91, i1 true, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet"}
!92 = distinct !{!92, !91, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!93 = distinct !{!93, i1 true, !"_RNvXs3_Cs5sEvUJpJda_7salsa20INtB5_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBH_IBH_IBH_NtBJ_5UTermNtNtBL_3bit2B1ENtB1G_2B0EB1E_EB1T_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore16remaining_blocksCsinjenlOLFM6_11libp2p_pnet"}
!94 = distinct !{!94, !93, !"_RNvXs3_Cs5sEvUJpJda_7salsa20INtB5_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBH_IBH_IBH_NtBJ_5UTermNtNtBL_3bit2B1ENtB1G_2B0EB1E_EB1T_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore16remaining_blocksCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!95 = distinct !{!95, i1 true, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet"}
!96 = distinct !{!96, !95, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!97 = distinct !{!97, !95, !"_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!98 = distinct !{!98, i1 true, !"_RNvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB5_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBX_IBX_IBX_IBX_IBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB28_2B0EB2m_EB2m_EB2m_EB2m_EB2m_EE11read_cachedCsinjenlOLFM6_11libp2p_pnet"}
!99 = distinct !{!99, !98, !"_RNvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB5_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBX_IBX_IBX_IBX_IBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB28_2B0EB2m_EB2m_EB2m_EB2m_EB2m_EE11read_cachedCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!100 = distinct !{!100, i1 true, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out"}
!101 = distinct !{!101, !100, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out: argument 1"}
!102 = distinct !{!102, !100, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out: argument 0"}
!103 = distinct !{!103, !130, !131}
!104 = distinct !{!104, !132}
!105 = distinct !{!105, !130}
!106 = distinct !{!106, i1 true, !"_RNvYINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBB_IBB_IBB_NtBD_5UTermNtNtBF_3bit2B1ENtB1A_2B0EB1y_EB1N_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCsinjenlOLFM6_11libp2p_pnet"}
!107 = distinct !{!107, !106, !"_RNvYINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBB_IBB_IBB_NtBD_5UTermNtNtBF_3bit2B1ENtB1A_2B0EB1y_EB1N_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCsinjenlOLFM6_11libp2p_pnet: argument 1"}
!108 = distinct !{!108, !106, !"_RNvYINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBB_IBB_IBB_NtBD_5UTermNtNtBF_3bit2B1ENtB1A_2B0EB1y_EB1N_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCsinjenlOLFM6_11libp2p_pnet: argument 0"}
!109 = distinct !{!109, i1 true, !"_RNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB7_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1P_IB1P_IB1P_NtB1R_5UTermNtNtB1T_3bit2B1ENtB2S_2B0EB2Q_EB36_EEENtB9_12StreamCipher31unchecked_apply_keystream_inouts_0CsinjenlOLFM6_11libp2p_pnet"}
!110 = distinct !{!110, !109, !"_RNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB7_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1P_IB1P_IB1P_NtB1R_5UTermNtNtB1T_3bit2B1ENtB2S_2B0EB2Q_EB36_EEENtB9_12StreamCipher31unchecked_apply_keystream_inouts_0CsinjenlOLFM6_11libp2p_pnet: argument 1"}
!111 = distinct !{!111, i1 true, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out"}
!112 = distinct !{!112, !111, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out: argument 1"}
!113 = distinct !{!113, !109, !"_RNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB7_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1P_IB1P_IB1P_NtB1R_5UTermNtNtB1T_3bit2B1ENtB2S_2B0EB2Q_EB36_EEENtB9_12StreamCipher31unchecked_apply_keystream_inouts_0CsinjenlOLFM6_11libp2p_pnet: argument 0"}
!114 = distinct !{!114, !111, !"_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out: argument 0"}
!115 = distinct !{!115, !130, !131}
!116 = distinct !{!116, !130, !131}
!117 = distinct !{!117, !132}
!118 = distinct !{!118, !130}
!119 = distinct !{!119, i1 true, !"_RINvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB6_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBY_IBY_IBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB2a_2B0EB2o_EB2o_EB2o_EB2o_EB2o_EE11write_blockNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB3j_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreIBY_IBY_B1O_B28_EB2o_EEENtB3l_12StreamCipher31unchecked_apply_keystream_inout0NCB3d_s_0ECsinjenlOLFM6_11libp2p_pnet"}
!120 = distinct !{!120, !119, !"_RINvMs1_NtCs6rzsz56FN1o_12block_buffer4readINtB6_10ReadBufferINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBY_IBY_IBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB2a_2B0EB2o_EB2o_EB2o_EB2o_EB2o_EE11write_blockNCNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB3j_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreIBY_IBY_B1O_B28_EB2o_EEENtB3l_12StreamCipher31unchecked_apply_keystream_inout0NCB3d_s_0ECsinjenlOLFM6_11libp2p_pnet: argument 0"}
!121 = !{!92}
!122 = !{!94, !92}
!123 = !{!96}
!124 = !{!97}
!125 = !{!99, !96}
!126 = !{!101}
!127 = !{!102, !101, !96, !97}
!128 = !{!101, !96}
!129 = !{!"branch_weights", i32 4, i32 12}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!108, !107, !96, !97}
!134 = !{!108, !96, !97}
!135 = !{!107, !97}
!136 = !{!110}
!137 = !{!112}
!138 = !{!114, !112, !113, !110, !97}
!139 = !{!112, !110, !96}
!140 = !{!120, !96}
end_hunk_0
