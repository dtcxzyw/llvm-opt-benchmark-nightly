Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.09?download=true
inline.NumInlined: 569
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt:bb.a
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSReNtB5_5Debug3fmtCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRReINtNtNtBa_5slice4iter4IterB14_EECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !15, !alias.scope !920, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !920, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !920, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !922, !noalias !923, !noundef !5 ; 5 uses
  %.not.i.i.i.i = icmp ugt i64 %i.j, %.val1.i.i.i
  %.promoted.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !922, !noalias !923 ; 2 uses
  %i.k = icmp ult i64 %i.j, %.promoted.i.i.i.i
  %or.cond20.i.i.i.i = or i1 %.not.i.i.i.i, %i.k
  br i1 %or.cond20.i.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i8, ptr %i.m, align 8, !alias.scope !922, !noalias !923, !noundef !5 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 4 uses
  %i.p = icmp ult i8 %i.n, 5
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr i8, ptr %i.l, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %.pre.i.i.i.i = load i8, ptr %i.r, align 1, !alias.scope !922, !noalias !923 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i
  %i.s = phi i64 [ %i.ah, %bb.f ], [ %.promoted.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i ] ; 3 uses
  %i.t = sub nuw i64 %i.j, %i.s                   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.s ; 2 uses
  %i.v = icmp samesign ult i64 %i.t, 16
  br i1 %i.v, label %.preheader.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.w = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.t), !noalias !924
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.t, %bb.d ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ac, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.05.i.i.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !925, !noalias !924, !noundef !5
  %i.ab = icmp eq i8 %i.aa, %.pre.i.i.i.i
  br i1 %i.ab, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ac, %i.t
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.y, %._crit_edge.i.i.i.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.ad = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %.split.us.i.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.af = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.ag = add i64 %i.s, 1
  %i.ah = add i64 %i.ag, %i.af                    ; 8 uses
  store i64 %i.ah, ptr %i.h, align 8, !alias.scope !922, !noalias !923
  %.not11.i.i.i.i = icmp ult i64 %i.ah, %i.o
  %.not12.i.i.i.i = icmp ugt i64 %i.ah, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i.i:                                ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !922, !noalias !923
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ai = icmp ult i64 %i.j, %i.ah
  br i1 %i.ai, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aj = sub nuw i64 %i.ah, %i.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.l, i64 %i.o), !noalias !923
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.f

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.g
  %i.am = load i64, ptr %0, align 8, !alias.scope !920, !noundef !5 ; 2 uses
  %i.an = sub nuw i64 %i.ah, %i.am
  store i64 %i.ah, ptr %0, align 8, !alias.scope !920
  br label %select.unfold.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %bb.f, %.split.us.i.i.i.i, %bb.b
  store i8 1, ptr %i.c, align 1, !alias.scope !926
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load i8, ptr %i.ao, align 8, !range !15, !alias.scope !926, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  %.pre.i2.i.i.i = load i64, ptr %0, align 8, !alias.scope !926 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !926 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i3.i.i.i
  %i.ar = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.ar, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i ] ; 4 uses
  %.pn.i = phi i64 [ %i.am, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre.i2.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i ; 4 uses
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.4.1.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !927
  store i32 10, ptr %i.b, align 4, !noalias !927
  %i.au = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 5) 1), !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !927
  br i1 %i.au, label %bb.h, label %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i

bb.h:                                             ; preds = %select.unfold.i
  %i.av = add i64 %.sroa.4.1.i.i.i, -1            ; 2 uses
  %i.aw = insertvalue { ptr, i64 } %i.at, i64 %i.av, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !927
  store i32 13, ptr %i.a, align 4, !noalias !927
  %i.ax = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 5) 1), !noalias !917 ; 2 uses
  %i.ay = add i64 %.sroa.4.1.i.i.i, -2
  %.sroa.0.0.i15.i.i.i = select i1 %i.ax, ptr %.sroa.0.1.i.i.i, ptr null
  %i.az = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i, 0
  %i.ba = insertvalue { ptr, i64 } %i.az, i64 %i.ay, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !927
  %..i.i.i = select i1 %i.ax, { ptr, i64 } %i.ba, { ptr, i64 } %i.aw
  br label %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i

_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i: ; preds = %bb.h, %select.unfold.i
  %.merged.i.i.i = phi { ptr, i64 } [ %..i.i.i, %bb.h ], [ %i.at, %select.unfold.i ] ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %.merged.i.i.i, 0
  %i.bc = extractvalue { ptr, i64 } %.merged.i.i.i, 1
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit: ; preds = %bb.a, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i, %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i
  %.sroa.3.0.i = phi i64 [ %i.bc, %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i ], [ undef, %bb.a ], [ undef, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i ]
  %.sroa.0.0.i = phi ptr [ %i.bb, %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i ], [ null, %bb.a ], [ null, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i ]
  %i.bd = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.be = insertvalue { ptr, i64 } %i.bd, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.be
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 5, 17) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph, label %bb.b

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i, %.split.us.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.l, %bb.b, %bb.n, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dm, %bb.n ], [ %i.dk, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit ], [ 1, %.lr.ph.split.us.i.i ], [ %.sroa.014.5.i, %bb.l ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader ], [ 1, %.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.n, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.g = load i8, ptr %0, align 1, !alias.scope !947, !noalias !948, !noundef !5 ; 5 uses
  %i.h = add nsw i64 %1, -1                       ; 4 uses
  %i.i = add nsw i64 %1, -4                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !947, !noalias !949, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.k, %i.g
  br i1 %.not.i.not.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1, label %bb.c

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph
  %i.l = add nsw i64 %1, -2                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !947, !noalias !949, !noundef !5 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.n, %i.g
  br i1 %.not.i.not.i.i.1, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.2, label %bb.c

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.2: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1
  %i.o = add nsw i64 %1, -3                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !947, !noalias !949, !noundef !5 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.g
  br i1 %.not.i.not.i.i.2, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.3, label %bb.c

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.3: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !947, !noalias !949, !noundef !5 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.s, %i.g
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.3, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph
  %4 = phi i8 [ %i.k, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph ], [ %i.n, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1 ], [ %i.q, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.2 ], [ %i.s, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.3 ]
  %.lcssa108.i = phi i64 [ %i.h, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph ], [ %i.l, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1 ], [ %i.o, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.2 ], [ %i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.3 ] ; 6 uses
  %i.t = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.u = icmp ult i64 %3, %i.t
  br i1 %i.u, label %.lr.ph.split.us.i.i, label %bb.d

.lr.ph.split.us.i.i:                              ; preds = %bb.c
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 5, 17) %1), !alias.scope !950, !noalias !951
  %i.v = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.v, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.w = add nsw i64 %3, -1                       ; 2 uses
  %.not27.i.i30 = icmp ugt i64 %1, %i.w
  br i1 %.not27.i.i30, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i
  %i.x = phi i64 [ %i.aa, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ], [ %i.w, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader ]
  %.pn.i31 = phi ptr [ %i.y, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.pn.i31, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.y, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 5, 17) %1), !alias.scope !950, !noalias !951
  %i.z = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.z, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.aa
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ad = insertelement <16 x i8> poison, i8 %4, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !950
  store ptr %2, ptr %i.a, align 8, !noalias !950
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ag, align 8, !noalias !950
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !noalias !950
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ai, align 8, !noalias !950
  %i.aj = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.aj, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.d
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.d ], [ %.sroa.014.2.3.i, %bb.h ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.ce, %bb.h ] ; 2 uses
  %i.ak = add i64 %.sroa.06.0.lcssa.i, %i.t
  %i.al = icmp uge i64 %i.ak, %3
  %i.am = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond399.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond399.i, label %._crit_edge.i, label %.lr.ph101.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.sroa.06.097.i = phi i64 [ %i.ce, %bb.h ], [ 0, %bb.d ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.097.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !948, !noalias !952
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !948, !noalias !952
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ac
  %i.aq = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.ae
  %i.ar = and <16 x i1> %i.ap, %i.aq
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !948, !noalias !952
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !948, !noalias !952
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ac
  %i.aw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.ae
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !948, !noalias !952
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !948, !noalias !952
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ac
  %i.bc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.ae
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !948, !noalias !952
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !948, !noalias !952
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ac
  %i.bi = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.ae
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = icmp eq i16 %i.as, 0
  br i1 %i.bl, label %.preheader90.1.i, label %bb.i

.preheader90.1.i:                                 ; preds = %bb.i, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cj, %bb.i ] ; 3 uses
  %i.bm = icmp eq i16 %i.ay, 0
  br i1 %i.bm, label %.preheader90.2.i, label %bb.e

bb.e:                                             ; preds = %.preheader90.1.i
  %i.bn = or disjoint i64 %.sroa.06.097.i, 16
  %i.bo = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bp = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bn, i16 noundef %i.ay, i1 noundef zeroext %i.bo) #30
  %i.bq = zext i1 %i.bp to i8
  %i.br = or i8 %.sroa.014.2.i, %i.bq
  br label %.preheader90.2.i

.preheader90.2.i:                                 ; preds = %bb.e, %.preheader90.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader90.1.i ], [ %i.br, %bb.e ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %.preheader90.3.i, label %bb.f

bb.f:                                             ; preds = %.preheader90.2.i
  %i.bt = or disjoint i64 %.sroa.06.097.i, 32
  %i.bu = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bv = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu) #30
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.014.2.1.i, %i.bw
  br label %.preheader90.3.i

.preheader90.3.i:                                 ; preds = %bb.f, %.preheader90.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader90.2.i ], [ %i.bx, %bb.f ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader90.3.i
  %i.bz = or disjoint i64 %.sroa.06.097.i, 48
  %i.ca = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca) #30
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.2.i, %i.cc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader90.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader90.3.i ], [ %i.cd, %bb.g ] ; 2 uses
  %i.ce = add i64 %.sroa.06.097.i, 64             ; 3 uses
  %i.cf = add i64 %i.ce, %i.aj
  %i.cg = icmp uge i64 %i.cf, %3
  %i.ch = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ci = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.097.i, i16 noundef %i.as, i1 noundef zeroext false) #30
  %i.cj = zext i1 %i.ci to i8
  br label %.preheader90.1.i

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.j ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.am, %.preheader.i ], [ %i.dd, %bb.j ]
  %i.ck = sub nuw i64 %3, %i.h
  %i.cl = add i64 %i.ck, -16                      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cl ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.cm, align 1, !alias.scope !948, !noalias !953
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !948, !noalias !953
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.ac
  %i.cp = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.ae
  %i.cq = and <16 x i1> %i.co, %i.cp
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.l, label %bb.m

.lr.ph101.i:                                      ; preds = %.preheader.i, %bb.j
  %.sroa.06.1100.i = phi i64 [ %i.da, %bb.j ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1100.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !948, !noalias !954
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.cu, align 1, !alias.scope !948, !noalias !954
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.ac
  %i.cw = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.ae
  %i.cx = and <16 x i1> %i.cv, %i.cw
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %.lr.ph101.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph101.i ], [ %i.df, %bb.k ] ; 2 uses
  %i.da = add i64 %.sroa.06.1100.i, 16            ; 2 uses
  %i.db = add i64 %i.da, %i.t
  %i.dc = icmp uge i64 %i.db, %3
  %i.dd = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dc, %i.dd
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph101.i

bb.k:                                             ; preds = %.lr.ph101.i
  %i.de = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1100.i, i16 noundef %i.cy, i1 noundef zeroext false) #30
  %i.df = zext i1 %i.de to i8
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.di, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !950
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.m:                                             ; preds = %._crit_edge.i
  %i.dg = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cl, i16 noundef %i.cr, i1 noundef zeroext %.lcssa.i) #30
  %i.dh = zext i1 %i.dg to i8
  %i.di = or i8 %.sroa.014.3.lcssa.i, %i.dh
  br label %bb.l

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #30
  %i.dj = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.dk = trunc nuw nsw i64 %i.dj to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.n:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dl = icmp eq i32 %bcmp, 0
  %i.dm = zext i1 %i.dl to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !8, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !15, !alias.scope !977, !noalias !978, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !977, !noalias !978, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !977, !noalias !978, !noundef !5 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !977, !noalias !978 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.l = trunc nuw i8 %.promoted52 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit199

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !980, !noalias !981, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !982, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !982, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !982, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !982, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !979, !noalias !978
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !980, !noalias !983, !noundef !5
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !984, !noundef !5 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !984, !noundef !5
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
end_hunk_0
