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

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i, %.split.us.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.m, %bb.b, %bb.o, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.df, %bb.o ], [ %i.dd, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit ], [ 1, %.lr.ph.split.us.i.i ], [ %.sroa.014.5.i, %bb.m ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader ], [ 1, %.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.g = load i8, ptr %0, align 1, !alias.scope !947, !noalias !948, !noundef !5 ; 5 uses
  %i.h = add nsw i64 %1, -1                       ; 4 uses
  %i.i = add nsw i64 %1, -4                       ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %5 = load i8, ptr %4, align 1, !alias.scope !947, !noalias !949, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %5, %i.g
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph
  %6 = add nsw i64 %1, -2                         ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !alias.scope !947, !noalias !949, !noundef !5 ; 2 uses
  %.not.i.not.i.1.i = icmp eq i8 %8, %i.g
  br i1 %.not.i.not.i.1.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, label %bb.d

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.c
  %i.j = add nsw i64 %1, -3                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !947, !noalias !949, !noundef !5 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.l, %i.g
  br i1 %.not.i.not.i.i.a, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.3.i, label %bb.d

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.3.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %10 = load i8, ptr %9, align 1, !alias.scope !947, !noalias !949, !noundef !5 ; 2 uses
  %.not.i.not.i.3.i = icmp eq i8 %10, %i.g
  br i1 %.not.i.not.i.3.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit, label %bb.d

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.3.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, %bb.c, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph
  %11 = phi i8 [ %5, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph ], [ %8, %bb.c ], [ %i.l, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i ], [ %10, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.3.i ]
  %.lcssa108.i = phi i64 [ %i.h, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.lr.ph ], [ %6, %bb.c ], [ %i.j, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i ], [ %i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.3.i ] ; 6 uses
  %i.m = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.n = icmp ult i64 %3, %i.m
  br i1 %i.n, label %.lr.ph.split.us.i.i, label %bb.e

.lr.ph.split.us.i.i:                              ; preds = %bb.d
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 5, 17) %1), !alias.scope !950, !noalias !951
  %i.o = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.p = add nsw i64 %3, -1                       ; 2 uses
  %.not27.i.i30 = icmp ugt i64 %1, %i.p
  br i1 %.not27.i.i30, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i
  %i.q = phi i64 [ %i.t, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ], [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader ]
  %.pn.i31 = phi ptr [ %i.r, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.pn.i31, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 5, 17) %1), !alias.scope !950, !noalias !951
  %i.s = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.s, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.t = add nsw i64 %i.q, -1                     ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.t
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.w = insertelement <16 x i8> poison, i8 %11, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !950
  store ptr %2, ptr %i.a, align 8, !noalias !950
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.z, align 8, !noalias !950
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !950
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ab, align 8, !noalias !950
  %i.ac = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ac, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %bb.e
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.e ], [ %.sroa.014.2.3.i, %bb.i ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.bx, %bb.i ] ; 2 uses
  %i.ad = add i64 %.sroa.06.0.lcssa.i, %i.m
  %i.ae = icmp uge i64 %i.ad, %3
  %i.af = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond399.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond399.i, label %._crit_edge.i, label %.lr.ph101.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.06.097.i = phi i64 [ %i.bx, %bb.i ], [ 0, %bb.e ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.097.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !948, !noalias !952
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !948, !noalias !952
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.v
  %i.aj = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.x
  %i.ak = and <16 x i1> %i.ai, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.am, align 1, !alias.scope !948, !noalias !952
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !948, !noalias !952
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.v
  %i.ap = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.x
  %i.aq = and <16 x i1> %i.ao, %i.ap
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.as, align 1, !alias.scope !948, !noalias !952
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !948, !noalias !952
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.v
  %i.av = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.x
  %i.aw = and <16 x i1> %i.au, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.ay, align 1, !alias.scope !948, !noalias !952
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !948, !noalias !952
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.v
  %i.bb = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.x
  %i.bc = and <16 x i1> %i.ba, %i.bb
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = icmp eq i16 %i.al, 0
  br i1 %i.be, label %.preheader90.1.i, label %bb.j

.preheader90.1.i:                                 ; preds = %bb.j, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cc, %bb.j ] ; 3 uses
  %i.bf = icmp eq i16 %i.ar, 0
  br i1 %i.bf, label %.preheader90.2.i, label %bb.f

bb.f:                                             ; preds = %.preheader90.1.i
  %i.bg = or disjoint i64 %.sroa.06.097.i, 16
  %i.bh = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bi = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bg, i16 noundef %i.ar, i1 noundef zeroext %i.bh) #30
  %i.bj = zext i1 %i.bi to i8
  %i.bk = or i8 %.sroa.014.2.i, %i.bj
  br label %.preheader90.2.i

.preheader90.2.i:                                 ; preds = %bb.f, %.preheader90.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader90.1.i ], [ %i.bk, %bb.f ] ; 3 uses
  %i.bl = icmp eq i16 %i.ax, 0
  br i1 %i.bl, label %.preheader90.3.i, label %bb.g

bb.g:                                             ; preds = %.preheader90.2.i
  %i.bm = or disjoint i64 %.sroa.06.097.i, 32
  %i.bn = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bo = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bm, i16 noundef %i.ax, i1 noundef zeroext %i.bn) #30
  %i.bp = zext i1 %i.bo to i8
  %i.bq = or i8 %.sroa.014.2.1.i, %i.bp
  br label %.preheader90.3.i

.preheader90.3.i:                                 ; preds = %bb.g, %.preheader90.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader90.2.i ], [ %i.bq, %bb.g ] ; 3 uses
  %i.br = icmp eq i16 %i.bd, 0
  br i1 %i.br, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader90.3.i
  %i.bs = or disjoint i64 %.sroa.06.097.i, 48
  %i.bt = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.bu = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bs, i16 noundef %i.bd, i1 noundef zeroext %i.bt) #30
  %i.bv = zext i1 %i.bu to i8
  %i.bw = or i8 %.sroa.014.2.2.i, %i.bv
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader90.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader90.3.i ], [ %i.bw, %bb.h ] ; 2 uses
  %i.bx = add i64 %.sroa.06.097.i, 64             ; 3 uses
  %i.by = add i64 %i.bx, %i.ac
  %i.bz = icmp uge i64 %i.by, %3
  %i.ca = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.097.i, i16 noundef %i.al, i1 noundef zeroext false) #30
  %i.cc = zext i1 %i.cb to i8
  br label %.preheader90.1.i

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.k ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.af, %.preheader.i ], [ %i.cw, %bb.k ]
  %i.cd = sub nuw i64 %3, %i.h
  %i.ce = add i64 %i.cd, -16                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.cf, align 1, !alias.scope !948, !noalias !953
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !948, !noalias !953
  %i.ch = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.v
  %i.ci = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.x
  %i.cj = and <16 x i1> %i.ch, %i.ci
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %bb.n

.lr.ph101.i:                                      ; preds = %.preheader.i, %bb.k
  %.sroa.06.1100.i = phi i64 [ %i.ct, %bb.k ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1100.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.cm, align 1, !alias.scope !948, !noalias !954
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.lcssa108.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !948, !noalias !954
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.v
  %i.cp = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.x
  %i.cq = and <16 x i1> %i.co, %i.cp
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.lr.ph101.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph101.i ], [ %i.cy, %bb.l ] ; 2 uses
  %i.ct = add i64 %.sroa.06.1100.i, 16            ; 2 uses
  %i.cu = add i64 %i.ct, %i.m
  %i.cv = icmp uge i64 %i.cu, %3
  %i.cw = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cv, %i.cw
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph101.i

bb.l:                                             ; preds = %.lr.ph101.i
  %i.cx = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1100.i, i16 noundef %i.cr, i1 noundef zeroext false) #30
  %i.cy = zext i1 %i.cx to i8
  br label %bb.k

bb.m:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.db, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !950
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.n:                                             ; preds = %._crit_edge.i
  %i.cz = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ce, i16 noundef %i.ck, i1 noundef zeroext %.lcssa.i) #30
  %i.da = zext i1 %i.cz to i8
  %i.db = or i8 %.sroa.014.3.lcssa.i, %i.da
  br label %bb.m

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #30
  %i.dc = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.dd = trunc nuw nsw i64 %i.dc to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.o:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.de = icmp eq i32 %bcmp, 0
  %i.df = zext i1 %i.de to i8
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
