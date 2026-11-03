Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/num_cpus-0f996eeb6ef20eb1.num_cpus.ae1e036e6b5c8b27-cgu.0?download=true
inline.NumInlined: 306
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseWOXHlIdeJf_8num_cpus:bb.a
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !123
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !124
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !123
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !124
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !128
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !129
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !128
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !129
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !122
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i64 0, 4) i64 @_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECseWOXHlIdeJf_8num_cpus(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef range(i64 1, 4) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 4 uses
  %.promoted = load i8, ptr %i.a, align 1, !alias.scope !145 ; 3 uses
  %.promoted14 = load i64, ptr %0, align 8        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.c, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8              ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %.val1.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8               ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !15
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.fr = freeze i1 %.not.i.i.i
  br i1 %.not.i.i.i.fr, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.promoted17 = load i64, ptr %i.d, align 8
  br label %.split

.split.us:                                        ; preds = %bb.a
  %.not.i3.i.i.us = icmp ne i64 %.pre2.i.i.i, %.promoted14
  %or.cond.not.i.i.i.us = select i1 %i.p, i1 true, i1 %.not.i3.i.i.us
  %or.cond.not.i.i.i.us.fr = freeze i1 %or.cond.not.i.i.i.us
  br i1 %or.cond.not.i.i.i.us.fr, label %.split.us.split.us.preheader, label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %i.q = trunc nuw i8 %.promoted to i1
  br i1 %i.q, label %.split21.us, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us.us.peel

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us.us.peel: ; preds = %.split.us.split.us.preheader
  store i8 1, ptr %i.a, align 1, !alias.scope !146
  %i.r = add nsw i64 %1, -1                       ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.split21.us, label %.split21.us.loopexit.loopexit

.split.us.split:                                  ; preds = %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.t = trunc nuw i8 %.promoted to i1
  br i1 %i.t, label %.split21.us, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us: ; preds = %.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  store i8 1, ptr %i.a, align 1, !alias.scope !150
  br label %.split21.us

.split:                                           ; preds = %.split.preheader, %select.unfold
  %i.u = phi i64 [ %i.at, %select.unfold ], [ %.promoted17, %.split.preheader ] ; 3 uses
  %.lcssa16 = phi i64 [ %.lcssa15, %select.unfold ], [ %.promoted14, %.split.preheader ] ; 2 uses
  %i.v = phi i8 [ %i.au, %select.unfold ], [ %.promoted, %.split.preheader ]
  %.sroa.01.0 = phi i64 [ %i.av, %select.unfold ], [ %1, %.split.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.split21.us, label %bb.b

bb.b:                                             ; preds = %.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.x = icmp ult i64 %i.f, %i.u
  br i1 %i.x, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !151 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.y = phi i64 [ %i.an, %bb.f ], [ %i.u, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.z = sub nuw i64 %i.f, %i.y                   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ac = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !152
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.ad = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.ae = insertvalue { i64, i64 } %i.ad, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ai, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.05.i.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !153, !noalias !152, !noundef !4
  %i.ah = icmp eq i8 %i.ag, %.pre.i.i.i
  br i1 %i.ah, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ai, %i.z
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.ae, %._crit_edge.i.i.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.aj = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  %i.al = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.am = add i64 %i.y, 1
  %i.an = add i64 %i.am, %i.al                    ; 10 uses
  store i64 %i.an, ptr %i.d, align 8, !alias.scope !151
  %.not11.i.i.i = icmp ult i64 %i.an, %i.j
  %.not12.i.i.i = icmp ugt i64 %i.an, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !151
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ao = icmp ult i64 %i.f, %i.an
  br i1 %i.ao, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ap = sub nuw i64 %i.an, %i.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ap
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.g, i64 %i.j), !noalias !154
  %i.ar = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ar, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  store i64 %i.an, ptr %0, align 8, !alias.scope !145
  br label %select.unfold

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  %i.as = phi i64 [ %i.u, %bb.b ], [ %i.f, %.split.us.i.i.i ], [ %i.an, %bb.f ]
  store i8 1, ptr %i.a, align 1, !alias.scope !150
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.lcssa16
  %or.cond.not.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %.split21.us

select.unfold:                                    ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %i.at = phi i64 [ %i.as, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ], [ %i.an, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ]
  %.lcssa15 = phi i64 [ %.lcssa16, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ], [ %i.an, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ]
  %i.au = phi i8 [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ], [ 0, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ]
  %i.av = add nsw i64 %.sroa.01.0, -1             ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.split21.us, label %.split

.split21.us.loopexit.loopexit:                    ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us.us.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  br label %.split21.us

.split21.us:                                      ; preds = %.split, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i, %select.unfold, %.split.us.split.us.preheader, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us.us.peel, %.split21.us.loopexit.loopexit, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us, %.split.us.split
  %.us-phi = phi i64 [ %1, %.split.us.split ], [ %1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us ], [ %i.r, %.split21.us.loopexit.loopexit ], [ %1, %.split.us.split.us.preheader ], [ 0, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.us.us.peel ], [ %.sroa.01.0, %.split ], [ 0, %select.unfold ], [ %.sroa.01.0, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ]
  ret i64 %.us-phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBK_3any5checkReNCNvMs_NtCseWOXHlIdeJf_8num_cpus5linuxNtB22_9MountInfo10parse_lines_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB24_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %.promoted = load i8, ptr %i.a, align 1, !alias.scope !166
  %.promoted15 = load i64, ptr %0, align 8        ; 3 uses
  %i.b = trunc nuw i8 %.promoted to i1
  br i1 %i.b, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !166, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !166, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !167, !noundef !4 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.g, %.val1.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %i.k = zext nneg i8 %i.j to i64                 ; 4 uses
  %i.l = icmp ult i8 %i.j, 5
  %i.m = getelementptr i8, ptr %i.h, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i8, ptr %i.o, align 8, !range !15
  %i.q = trunc nuw i8 %i.p to i1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 3 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.promoted21 = load i64, ptr %i.e, align 8, !alias.scope !167
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.a, align 1, !alias.scope !168
  %1 = sub nuw i64 %.pre2.i.i.i, %.promoted15
  %2 = icmp eq i64 %1, 3
  br i1 %2, label %.lr.ph.split.us.split.us.split.us, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge.sink.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us
  %.sroa.0.1.i.i.ph.us = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted15 ; 2 uses
  %i.r = load i16, ptr %.sroa.0.1.i.i.ph.us, align 1
  %i.s = xor i16 %i.r, 28771
  %i.t = getelementptr i8, ptr %.sroa.0.1.i.i.ph.us, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16
  %i.w = xor i16 %i.v, 117
  %i.x = or i16 %i.s, %i.w
  %i.y = icmp ne i16 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.backedge, %.lr.ph.split.preheader
  %i.ab = phi i64 [ %.promoted21, %.lr.ph.split.preheader ], [ %i.ay, %.lr.ph.split.backedge ] ; 3 uses
  %.lcssa131718 = phi i64 [ %.promoted15, %.lr.ph.split.preheader ], [ %.lcssa1316, %.lr.ph.split.backedge ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.ac = icmp ult i64 %i.g, %i.ab
  br i1 %i.ac, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.split
  tail call void @llvm.assume(i1 %i.l)
  %.pre.i.i.i = load i8, ptr %i.n, align 1, !alias.scope !167 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i
  %i.ad = phi i64 [ %i.as, %bb.e ], [ %i.ab, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.ae = sub nuw i64 %i.g, %i.ad                 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ad ; 2 uses
  %i.ag = icmp samesign ult i64 %i.ae, 16
  br i1 %i.ag, label %.preheader.i.i.i.i, label %bb.b

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ah = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.ae), !noalias !172
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.c ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %i.ai = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.aj = insertvalue { i64, i64 } %i.ai, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.an, %bb.c ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.01.05.i.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !173, !noalias !172, !noundef !4
  %i.am = icmp eq i8 %i.al, %.pre.i.i.i
  br i1 %i.am, label %._crit_edge.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.an, %i.ae
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.b
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.aj, %._crit_edge.i.i.i.i ], [ %i.ah, %bb.b ] ; 2 uses
  %i.ao = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %.split.us.i.i.i

bb.d:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  %i.aq = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.ar = add i64 %i.ad, 1
  %i.as = add i64 %i.ar, %i.aq                    ; 10 uses
  store i64 %i.as, ptr %i.e, align 8, !alias.scope !167
  %.not11.i.i.i = icmp ult i64 %i.as, %i.k
  %.not12.i.i.i = icmp ugt i64 %i.as, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !167
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.at = icmp ult i64 %i.g, %i.as
  br i1 %i.at, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i, label %.lr.ph.split.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.au = sub nuw i64 %i.as, %i.k                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.au
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.av, ptr nonnull %i.h, i64 %i.k), !noalias !174
  %i.aw = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.aw, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
  store i64 %i.as, ptr %0, align 8, !alias.scope !166
  br label %select.unfold

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i: ; preds = %bb.e, %.split.us.i.i.i, %.lr.ph.split
  %i.ax = phi i64 [ %i.ab, %.lr.ph.split ], [ %i.g, %.split.us.i.i.i ], [ %i.as, %bb.e ]
  store i8 1, ptr %i.a, align 1, !alias.scope !168
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.lcssa131718
  %or.cond.not.i.i.i = select i1 %i.q, i1 true, i1 %.not.i3.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge

select.unfold:                                    ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %i.ay = phi i64 [ %i.as, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ax, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ]
  %.lcssa1316 = phi i64 [ %i.as, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.lcssa131718, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ]
  %i.az = phi i1 [ false, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ] ; 2 uses
  %.pn = phi i64 [ %i.au, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre2.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ]
  %.sroa.4.1.i.i.ph = sub nuw i64 %.pn, %.lcssa131718
  %i.ba = icmp eq i64 %.sroa.4.1.i.i.ph, 3
  br i1 %i.ba, label %.split, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCseWOXHlIdeJf_8num_cpus5linuxNtB1k_9MountInfo10parse_lines_0E0B1m_.exit.backedge

.split:                                           ; preds = %select.unfold
  %.sroa.0.1.i.i.ph = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.lcssa131718 ; 2 uses
  %i.bb = load i16, ptr %.sroa.0.1.i.i.ph, align 1
  %i.bc = xor i16 %i.bb, 28771
  %i.bd = getelementptr i8, ptr %.sroa.0.1.i.i.ph, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = xor i16 %i.bf, 117
  %i.bh = or i16 %i.bc, %i.bg
  %i.bi = icmp ne i16 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  %brmerge = or i1 %i.bk, %i.az
  br i1 %brmerge, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge, label %.lr.ph.split.backedge

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCseWOXHlIdeJf_8num_cpus5linuxNtB1k_9MountInfo10parse_lines_0E0B1m_.exit.backedge: ; preds = %select.unfold
  br i1 %i.az, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCseWOXHlIdeJf_8num_cpus5linuxNtB1k_9MountInfo10parse_lines_0E0B1m_.exit.backedge, %.split
  br label %.lr.ph.split

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge.sink.split: ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.us.split.us
  %.not11.ph = phi i1 [ false, %.lr.ph.split.us ], [ %i.aa, %.lr.ph.split.us.split.us.split.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCseWOXHlIdeJf_8num_cpus5linuxNtB1k_9MountInfo10parse_lines_0E0B1m_.exit.backedge, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i, %.split, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge.sink.split, %bb.a
  %.not11 = phi i1 [ false, %bb.a ], [ %.not11.ph, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i._crit_edge.sink.split ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCseWOXHlIdeJf_8num_cpus5linuxNtB1k_9MountInfo10parse_lines_0E0B1m_.exit.backedge ], [ false, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i ], [ %i.bk, %.split ]
  ret i1 %.not11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once9call_onceNvNtCseWOXHlIdeJf_8num_cpus5linux12init_cgroupsE0B12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 14 uses
  %i.g = alloca [72 x i8], align 8                ; 20 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [72 x i8], align 8                ; 17 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.8.sroa.8.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.10.sroa.8.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !15, !noundef !4
  %i.w = trunc nuw i8 %i.v to i1
  store i8 0, ptr %i.u, align 1
  br i1 %i.w, label %bb.b, label %bb.em, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !415
  call void @_RINvMs2_NtCscAsMj0W7j8b_3std2fsNtB6_4File4openReECseWOXHlIdeJf_8num_cpus(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 17), !noalias !415
  %i.x = load i32, ptr %i.t, align 8, !range !5, !noalias !415, !noundef !4
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !416, !noalias !415, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !417
  %i.aa = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.ab = and i64 %i.aa, 3
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %_RINvMs0_NtCseWOXHlIdeJf_8num_cpus5linuxNtB6_6Subsys8load_cpuReEB8_.exit.thread.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvMs0_NtCseWOXHlIdeJf_8num_cpus5linuxNtB6_6Subsys8load_cpuReEB8_.exit.thread.i.i.i
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.j, %bb.aw, %bb.ar, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp ult ptr %.val.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ad = and i64 %i.aa, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.assume(i1 %i.ae)
  br label %_RINvMs0_NtCseWOXHlIdeJf_8num_cpus5linuxNtB6_6Subsys8load_cpuReEB8_.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !418, !noalias !417
  store i8 3, ptr %i.r, align 8, !alias.scope !418, !noalias !417
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag), !noalias !417
  br label %_RINvMs0_NtCseWOXHlIdeJf_8num_cpus5linuxNtB6_6Subsys8load_cpuReEB8_.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !range !6, !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !415
  call void @_RNvMNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileE13with_capacityCseWOXHlIdeJf_8num_cpus(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, i64 noundef 8192, i32 noundef %i.ai), !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !420
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i.i.i.i.i.i)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.57.sroa.6.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %.sroa.57.sroa.7.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 5 uses
  %.sroa.57.sroa.8.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.sroa.57.sroa.9.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 3 uses
  %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 65 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtBa_2io5error5ErrorEB1w_INtNtBa_6option6OptionNtNtCseWOXHlIdeJf_8num_cpus5linux6SubsysENCINvMs0_B2Z_B2X_8load_cpuReE0NCIB2_B1w_B2X_B2B_NvB3H_10parse_lineNCB3E_s_0E0E0B31_.exit.i.i.i.i.i.i, %bb.f
  %.sroa.8.sroa.0.0.i.i.i.i.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.10.sroa.0.3.i.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtBa_2io5error5ErrorEB1w_INtNtBa_6option6OptionNtNtCseWOXHlIdeJf_8num_cpus5linux6SubsysENCINvMs0_B2Z_B2X_8load_cpuReE0NCIB2_B1w_B2X_B2B_NvB3H_10parse_lineNCB3E_s_0E0E0B31_.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.8.sroa.6.0.i.i.i.i.i.i = phi i8 [ undef, %bb.f ], [ %.sroa.10.sroa.7.3.i.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtBa_2io5error5ErrorEB1w_INtNtBa_6option6OptionNtNtCseWOXHlIdeJf_8num_cpus5linux6SubsysENCINvMs0_B2Z_B2X_8load_cpuReE0NCIB2_B1w_B2X_B2B_NvB3H_10parse_lineNCB3E_s_0E0E0B31_.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.i.i.i.i.i.i = phi ptr [ undef, %bb.f ], [ %.sroa.717.3.i.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtBa_2io5error5ErrorEB1w_INtNtBa_6option6OptionNtNtCseWOXHlIdeJf_8num_cpus5linux6SubsysENCINvMs0_B2Z_B2X_8load_cpuReE0NCIB2_B1w_B2X_B2B_NvB3H_10parse_lineNCB3E_s_0E0E0B31_.exit.i.i.i.i.i.i ] ; 16 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ -1, %bb.f ], [ %.sroa.015.3.i.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtBa_2io5error5ErrorEB1w_INtNtBa_6option6OptionNtNtCseWOXHlIdeJf_8num_cpus5linux6SubsysENCINvMs0_B2Z_B2X_8load_cpuReE0NCIB2_B1w_B2X_B2B_NvB3H_10parse_lineNCB3E_s_0E0E0B31_.exit.i.i.i.i.i.i ] ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !422
  invoke void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCseWOXHlIdeJf_8num_cpus(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %bb.h unwind label %bb.ap, !noalias !423

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.p, align 8, !range !16, !noalias !422, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, -2
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !422 ; 8 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !422 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.8.i.i.i.i.i.i)
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.j, label %_RNCINvMs0_NtCseWOXHlIdeJf_8num_cpus5linuxNtB8_6Subsys8load_cpuReE0Ba_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !424
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i) ]
  %i.am = ptrtoint ptr %.sroa.4.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.an = and i64 %i.am, 3
  switch i64 %i.an, label %default.unreachable [
    i64 2, label %bb.am
    i64 3, label %bb.k
    i64 0, label %bb.am
    i64 1, label %bb.l
  ], !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ap = and i64 %i.am, 1095216660480
  %i.aq = icmp ne i64 %i.ap, 1095216660480
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.assume(i1 %i.aq)
  br label %bb.am

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  store ptr %i.ar, ptr %i.aj, align 8, !alias.scope !425, !noalias !424
  store i8 3, ptr %i.o, align 8, !alias.scope !425, !noalias !424
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.am unwind label %bb.an, !noalias !426

_RNCINvMs0_NtCseWOXHlIdeJf_8num_cpus5linuxNtB8_6Subsys8load_cpuReE0Ba_.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !427
  store i64 0, ptr %i.n, align 8, !noalias !427
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !427
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !427
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !427
  store i64 0, ptr %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !427
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.sroa.6.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !427
  store i32 58, ptr %.sroa.57.sroa.7.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !427
  store i32 58, ptr %.sroa.57.sroa.8.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !427
  store i8 1, ptr %.sroa.57.sroa.9.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !427
  store i8 1, ptr %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !427
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !427
  %i.as = invoke fastcc noundef i64 @_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECseWOXHlIdeJf_8num_cpus(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n, i64 noundef 1)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !428

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.v, %bb.aa, %_RNCINvMs0_NtCseWOXHlIdeJf_8num_cpus5linuxNtB8_6Subsys8load_cpuReE0Ba_.exit.i.i.i.i.i.i.i, %bb.ag
  %lpad.loopexit.split-lp827 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = icmp eq i64 %i.ak, 0
  br i1 %i.at, label %bb.al, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !429
  br label %bb.al

bb.m:                                             ; preds = %_RNCINvMs0_NtCseWOXHlIdeJf_8num_cpus5linuxNtB8_6Subsys8load_cpuReE0Ba_.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %.thread.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.au = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 1, !range !15, !alias.scope !430, !noalias !427, !noundef !4
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.thread.i.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !430, !noalias !427, !nonnull !4, !noundef !4 ; 6 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !430, !noalias !427, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.aw = load i64, ptr %.sroa.57.sroa.6.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !432, !noalias !427, !noundef !4 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.aw, %.val1.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !432, !noalias !427 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.promoted.i.i.i.i.i.i.i.i.i.i.i.i
  %or.cond20.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, %i.ax
  br i1 %or.cond20.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCseWOXHlIdeJf_8num_cpus.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.o
  %i.ay = load i8, ptr %.sroa.57.sroa.9.0..sroa.57.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !432, !noalias !427, !noundef !4 ; 2 uses
  %i.az = zext nneg i8 %i.ay to i64               ; 4 uses
end_hunk_0
