Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.02?download=true
inline.NumInlined: 1218
inline.NumDeleted: 634
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXNtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMsd_NtCskEUeM34gmJU_6ty_ide10completionNtBT_22CompletionTargetTokens3ast0INtB4_2FnTNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEE4callBV_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.e = extractvalue { i32, i32 } %i.d, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.g = load i32, ptr %i.f, align 8, !noundef !9
  %i.h = icmp ule i32 %i.e, %i.g
  br label %_RNCNvMsd_NtCskEUeM34gmJU_6ty_ide10completionNtB7_22CompletionTargetTokens3ast0B9_.exit

bb.c:                                             ; preds = %bb.a
  br label %_RNCNvMsd_NtCskEUeM34gmJU_6ty_ide10completionNtB7_22CompletionTargetTokens3ast0B9_.exit

_RNCNvMsd_NtCskEUeM34gmJU_6ty_ide10completionNtB7_22CompletionTargetTokens3ast0B9_.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.c ], [ %i.h, %bb.b ], [ true, %bb.a ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 16
  br i1 %i.a, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1)
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = icmp eq i64 %i.c, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.h, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.i
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !3109, !noundef !9
  %i.g = icmp eq i8 %i.f, 46                      ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  %or.cond = select i1 %i.g, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit, label %.lr.ph.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  %.merged.i = phi i1 [ %i.d, %bb.b ], [ false, %.preheader.i ], [ %i.g, %.lr.ph.i ]
  ret i1 %.merged.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_NtCskEUeM34gmJU_6ty_ide10completionNtB5_16CompletionRankerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  %i.c = load i8, ptr %i.a, align 8, !range !1290, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.d = load i8, ptr %i.b, align 8, !range !1290, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.e = icmp eq i8 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.g = load i8, ptr %i.f, align 1, !range !1290, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.i = load i8, ptr %i.h, align 1, !range !1290, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.l = load i8, ptr %i.k, align 2, !range !1290, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.n = load i8, ptr %i.m, align 2, !range !1290, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.q = load i8, ptr %i.p, align 1, !range !1290, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.s = load i8, ptr %i.r, align 1, !range !1290, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.v = load i8, ptr %i.u, align 4, !range !1290, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.x = load i8, ptr %i.w, align 4, !range !1290, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.y = icmp eq i8 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.aa = load i8, ptr %i.z, align 1, !range !1290, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 181
  %i.ac = load i8, ptr %i.ab, align 1, !range !1290, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.af = load i8, ptr %i.ae, align 2, !range !1290, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 182
  %i.ah = load i8, ptr %i.ag, align 2, !range !1290, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 183
  %i.ak = load i8, ptr %i.aj, align 1, !range !1290, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 183
  %i.am = load i8, ptr %i.al, align 1, !range !1290, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.an = icmp eq i8 %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.ap = load i8, ptr %i.ao, align 1, !range !3117, !alias.scope !3112, !noalias !3115, !noundef !9 ; 2 uses
  %.not.i = icmp eq i8 %i.ap, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.ar = load i8, ptr %i.aq, align 1, !range !3117, !alias.scope !3115, !noalias !3112, !noundef !9 ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = icmp eq i8 %i.ap, %i.ar
  br i1 %i.as, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.at = icmp eq i8 %i.ar, -1
  br i1 %i.at, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.j, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.av = load i8, ptr %i.au, align 8, !range !3118, !alias.scope !3112, !noalias !3115, !noundef !9
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ax = load i8, ptr %i.aw, align 8, !range !3118, !alias.scope !3115, !noalias !3112, !noundef !9
  %i.ay = icmp eq i8 %i.av, %i.ax
  br i1 %i.ay, label %bb.l, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bb = tail call noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
  br i1 %i.bb, label %bb.m, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.bd = load i8, ptr %i.bc, align 1, !range !1389, !noundef !9 ; 2 uses
  %.not = icmp eq i8 %i.bd, -1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 191
  %i.bf = load i8, ptr %i.be, align 1, !range !1389, !noundef !9 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %bb.p, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.bh = icmp eq i8 %i.bf, -1
  br i1 %i.bh, label %bb.p, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bj = load ptr, ptr %i.bi, align 8, !align !294, !noundef !9 ; 2 uses
  %.not3 = icmp eq ptr %i.bj, null                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bl = load ptr, ptr %i.bk, align 8, !align !294, !noundef !9 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null                 ; 2 uses
  %brmerge = or i1 %.not3, %i.bm
  %.mux = and i1 %.not3, %i.bm
  br i1 %brmerge, label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.q

_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.p, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.k, %bb.j, %bb.o, %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.l, %bb.n, %bb.q
  %.sroa.0.0.shrunk = phi i1 [ %i.bn, %bb.q ], [ false, %bb.o ], [ false, %bb.b ], [ false, %bb.n ], [ false, %bb.l ], [ false, %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ %.mux, %bb.p ], [ false, %bb.a ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk

bb.q:                                             ; preds = %bb.p
  %i.bn = tail call noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
  br label %_RNvXs14_NtCskEUeM34gmJU_6ty_ide10completionNtB6_9RelevanceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsh_NtCskEUeM34gmJU_6ty_ide10completionNtB5_16CompletionRankerNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.d = load i8, ptr %i.c, align 1, !range !1389, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 191
  %i.i = load i8, ptr %i.h, align 1, !range !1389, !noundef !9 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.k = load i8, ptr %i.a, align 8, !range !1290, !alias.scope !3119, !noalias !3124, !noundef !9 ; 2 uses
  %i.l = load i8, ptr %i.f, align 8, !range !1290, !alias.scope !3122, !noalias !3128, !noundef !9 ; 2 uses
  %i.m = tail call i8 @llvm.ucmp.i8.i8(i8 %i.k, i8 %i.l)
  %i.n = icmp eq i8 %i.k, %i.l
  br i1 %i.n, label %bb.b, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.p = load i8, ptr %i.o, align 1, !range !1290, !alias.scope !3119, !noalias !3124, !noundef !9 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.r = load i8, ptr %i.q, align 1, !range !1290, !alias.scope !3122, !noalias !3128, !noundef !9 ; 2 uses
  %i.s = tail call i8 @llvm.ucmp.i8.i8(i8 %i.p, i8 %i.r)
  %i.t = icmp eq i8 %i.p, %i.r
  br i1 %i.t, label %bb.c, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.v = load i8, ptr %i.u, align 2, !range !1290, !alias.scope !3119, !noalias !3124, !noundef !9 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.x = load i8, ptr %i.w, align 2, !range !1290, !alias.scope !3122, !noalias !3128, !noundef !9 ; 2 uses
  %i.y = tail call i8 @llvm.ucmp.i8.i8(i8 %i.v, i8 %i.x)
  %i.z = icmp eq i8 %i.v, %i.x
  br i1 %i.z, label %bb.d, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.ab = load i8, ptr %i.aa, align 1, !range !1290, !alias.scope !3119, !noalias !3124, !noundef !9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.ad = load i8, ptr %i.ac, align 1, !range !1290, !alias.scope !3122, !noalias !3128, !noundef !9 ; 2 uses
  %i.ae = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ab, i8 %i.ad)
  %i.af = icmp eq i8 %i.ab, %i.ad
  br i1 %i.af, label %bb.e, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ah = load i8, ptr %i.ag, align 4, !range !1290, !alias.scope !3119, !noalias !3124, !noundef !9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.aj = load i8, ptr %i.ai, align 4, !range !1290, !alias.scope !3122, !noalias !3128, !noundef !9 ; 2 uses
  %i.ak = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ah, i8 %i.aj)
  %i.al = icmp eq i8 %i.ah, %i.aj
  br i1 %i.al, label %bb.f, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.an = load i8, ptr %i.am, align 1, !range !1290, !alias.scope !3119, !noalias !3124, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 181
  %i.ap = load i8, ptr %i.ao, align 1, !range !1290, !alias.scope !3122, !noalias !3128, !noundef !9 ; 2 uses
  %i.aq = tail call i8 @llvm.ucmp.i8.i8(i8 %i.an, i8 %i.ap)
  %i.ar = icmp eq i8 %i.an, %i.ap
  br i1 %i.ar, label %bb.g, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.at = load i8, ptr %i.as, align 2, !range !1290, !alias.scope !3119, !noalias !3124, !noundef !9 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 182
  %i.av = load i8, ptr %i.au, align 2, !range !1290, !alias.scope !3122, !noalias !3128, !noundef !9 ; 2 uses
  %i.aw = tail call i8 @llvm.ucmp.i8.i8(i8 %i.at, i8 %i.av)
  %i.ax = icmp eq i8 %i.at, %i.av
  br i1 %i.ax, label %bb.h, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 183
  %i.az = load i8, ptr %i.ay, align 1, !range !1290, !alias.scope !3119, !noalias !3124, !noundef !9 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 183
  %i.bb = load i8, ptr %i.ba, align 1, !range !1290, !alias.scope !3122, !noalias !3128, !noundef !9 ; 2 uses
  %i.bc = tail call i8 @llvm.ucmp.i8.i8(i8 %i.az, i8 %i.bb)
  %i.bd = icmp eq i8 %i.az, %i.bb
  br i1 %i.bd, label %bb.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.bf = load i8, ptr %i.be, align 1, !range !3117, !alias.scope !3119, !noalias !3124, !noundef !9 ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.bf, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.bh = load i8, ptr %i.bg, align 1, !range !3117, !alias.scope !3122, !noalias !3128, !noundef !9 ; 3 uses
  %.not18.i.i.i = icmp eq i8 %i.bh, -1            ; 2 uses
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not18.i.i.i, label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit, label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %.not18.i.i.i, label %bb.l, label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bj = load i8, ptr %i.bi, align 8, !range !3118, !alias.scope !3119, !noalias !3124, !noundef !9
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bl = load i8, ptr %i.bk, align 8, !range !3118, !alias.scope !3122, !noalias !3128, !noundef !9
  %i.bm = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bj, i8 %i.bl)
  br label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

bb.m:                                             ; preds = %bb.j
  %i.bn = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bf, i8 %i.bh)
  %i.bo = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bo, label %bb.l, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i: ; preds = %bb.m, %bb.l, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i.i.i = phi i8 [ %i.bm, %bb.l ], [ %i.bn, %bb.m ], [ %i.s, %bb.b ], [ %i.m, %bb.a ], [ %i.bc, %bb.h ], [ %i.aw, %bb.g ], [ %i.aq, %bb.f ], [ %i.ak, %bb.e ], [ %i.ae, %bb.d ], [ %i.y, %bb.c ] ; 2 uses
  %i.bp = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.bp, label %bb.n, label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit

bb.n:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i
  %i.bq = tail call noundef range(i8 -1, 2) i8 @_RNvXsm_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g), !noalias !3129 ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.o, label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i8 %i.d, -1
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not2.i.i = icmp eq i8 %i.i, -1
  br i1 %.not2.i.i, label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit, label %bb.r

bb.q:                                             ; preds = %bb.o
  %.not1.i.i = icmp ne i8 %i.i, -1
  %..i.i = sext i1 %.not1.i.i to i8
  br label %_RNvXsh_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCskEUeM34gmJU_6ty_ide10completion20ModuleDependencyKindENtNtB7_3cmp3Ord3cmpBO_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bs = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.i)
  br label %_RNvXsh_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCskEUeM34gmJU_6ty_ide10completion20ModuleDependencyKindENtNtB7_3cmp3Ord3cmpBO_.exit.i

_RNvXsh_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCskEUeM34gmJU_6ty_ide10completion20ModuleDependencyKindENtNtB7_3cmp3Ord3cmpBO_.exit.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i = phi i8 [ %i.bs, %bb.r ], [ %..i.i, %bb.q ] ; 2 uses
  %i.bt = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.bt, label %bb.s, label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit

bb.s:                                             ; preds = %_RNvXsh_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCskEUeM34gmJU_6ty_ide10completion20ModuleDependencyKindENtNtB7_3cmp3Ord3cmpBO_.exit.i
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !3129, !align !294, !noundef !9 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.j, align 8, !noalias !3129 ; 3 uses
  %.not.i.i13.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i13.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not2.i.i.i = icmp eq ptr %.val1.i.i, null
  br i1 %.not2.i.i.i, label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit, label %bb.v

bb.u:                                             ; preds = %bb.s
  %.not1.i.i.i = icmp ne ptr %.val1.i.i, null
  %..i.i.i = sext i1 %.not1.i.i.i to i8
  br label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit

bb.v:                                             ; preds = %bb.t
  %i.bu = tail call noundef range(i8 -1, 2) i8 @_RNvXsm_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1.i.i), !noalias !3129
  br label %_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit

_RNvXsx_NtCs4NRVxsYgnAr_4core5tupleTRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceRNtCsg7m2K3K1Fzf_11compact_str13CompactStringINtNtB7_6option6OptionNtBA_20ModuleDependencyKindERIB23_RNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEENtNtB7_3cmp3Ord3cmpBC_.exit: ; preds = %bb.j, %bb.k, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i, %bb.n, %bb.p, %_RNvXsh_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCskEUeM34gmJU_6ty_ide10completion20ModuleDependencyKindENtNtB7_3cmp3Ord3cmpBO_.exit.i, %bb.t, %bb.u, %bb.v
  %.sroa.0.0.i = phi i8 [ -1, %bb.k ], [ %.sroa.0.0.i.i, %_RNvXsh_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCskEUeM34gmJU_6ty_ide10completion20ModuleDependencyKindENtNtB7_3cmp3Ord3cmpBO_.exit.i ], [ %i.bq, %bb.n ], [ %.sroa.0.0.i.i.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskEUeM34gmJU_6ty_ide10completion9RelevanceNtB7_3Ord3cmpBH_.exit.i ], [ 1, %bb.t ], [ %i.bu, %bb.v ], [ %..i.i.i, %bb.u ], [ 1, %bb.j ], [ 1, %bb.p ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsi_NtCskEUeM34gmJU_6ty_ide10completionNtB5_16CompletionRankerNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i8 @_RNvXsh_NtCskEUeM34gmJU_6ty_ide10completionNtB5_16CompletionRankerNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1)
  ret i8 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvYNCNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtBa_13ContextCursor12exception_ty0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEE9call_onceBc_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = load i32, ptr %1, align 8, !range !752, !noundef !9 ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYNCNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtBa_13ContextCursor12exception_ty0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEE9call_onceBc_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %.sroa.0.0.i.i = load i32, ptr %i.c, align 4, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i32, ptr %i.d, align 8, !noundef !9
  %.not.i = icmp ugt i32 %.sroa.0.0.i.i, %i.e
  br i1 %.not.i, label %_RNCNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB7_13ContextCursor12exception_ty0B9_.exit, label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.f = zext nneg i32 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYNCNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtBa_13ContextCursor12exception_ty0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEE9call_onceBc_.307, i64 %i.f
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext4 = zext i8 %switch.load3 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext4
  %.sroa.34.0.i.i = load i32, ptr %i.g, align 4, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load i32, ptr %i.h, align 4, !noundef !9
  %i.j = icmp ule i32 %i.i, %.sroa.34.0.i.i
  br label %_RNCNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB7_13ContextCursor12exception_ty0B9_.exit

_RNCNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB7_13ContextCursor12exception_ty0B9_.exit: ; preds = %switch.lookup, %bb.a
  %.sroa.0.0.i = phi i1 [ %i.j, %bb.a ], [ false, %switch.lookup ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_20ToCompactStringErrorECsoTR8nlGN3X_18ty_python_semantic(i1 noundef zeroext, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtCskEUeM34gmJU_6ty_ide10completion14CompletionKindNtB7_4TypeINtNtCs4NRVxsYgnAr_4core6option6OptionB1e_EKj3_E11begin_visitB1i_(ptr dead_on_unwind noalias noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 25) i8 @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtCskEUeM34gmJU_6ty_ide10completion14CompletionKindNtB7_4TypeINtNtCs4NRVxsYgnAr_4core6option6OptionB1e_EKj3_E12finish_visitB1i_(ptr noundef nonnull align 8, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), i8 noundef range(i8 -1, 25)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexIBv_INtNtB7_5boxed3BoxNtNtNtBN_4meta5regex5CacheEEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskEUeM34gmJU_6ty_ide10completion10ImportEditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskEUeM34gmJU_6ty_ide14signature_help16SignatureDetailsENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskEUeM34gmJU_6ty_ide8importer9AstImportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBU_4meta5regex5CacheEEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskEUeM34gmJU_6ty_ide10completion10ImportEditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskEUeM34gmJU_6ty_ide14signature_help16SignatureDetailsENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskEUeM34gmJU_6ty_ide8importer9AstImportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB4_7PeekMutNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB4_7PeekMutNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide11all_symbols13AllSymbolInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12program_fileNtB4_11ProgramFile4file(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6source11source_text(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB2_7Stylist11from_tokens(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCskEUeM34gmJU_6ty_ide8importerNtB2_8Importer3new(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296), ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCskEUeM34gmJU_6ty_ide8importerNtB2_8Importer19members_in_scope_at(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), i64 noundef range(i64 0, 94), ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12program_fileNtB4_11ProgramFile20resolver_environment(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskEUeM34gmJU_6ty_ide11all_symbols11all_symbols(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296), i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module8is_known(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), i8 noundef range(i8 0, 39)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module4name(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtCskEUeM34gmJU_6ty_ide8importerNtB4_14MembersInScope9satisfies(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCskEUeM34gmJU_6ty_ide8importerNtB2_8Importer6import(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCskEUeM34gmJU_6ty_ide11all_symbolsNtB2_13AllSymbolInfo9qualified(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessh_1__NtB8_17ModuleLiteralType6moduleDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_ECskEUeM34gmJU_6ty_ide(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB7_10take_whileINtB3z_9TakeWhileppEB2G_8try_fold5checkB1I_uINtNtNtBb_3ops12control_flow11ControlFlowuENCNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5n_13ContextCursor20is_in_decorator_name0NCINvNvB2G_3any5checkB1I_NCB5h_s_0E0E0IB4z_B4y_EEB5p_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull, ptr noalias noundef dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetNtCsg7m2K3K1Fzf_11compact_str13CompactStringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2l_8adapters3map3MapINtNtB3n_10filter_map9FilterMapINtNtNtB2n_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvMsv_NtB4K_4nameNtB5B_15UnqualifiedName9from_exprENCNvNtCskEUeM34gmJU_6ty_ide10completion24extract_base_class_names0EEB6q_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetReNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendABO_j1_ECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetReNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendABO_j3_ECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetReNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendABO_je_ECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetReNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1F_8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENCNCNvNtCskEUeM34gmJU_6ty_ide10completion24detect_set_function_argss_00EEB4F_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCskEUeM34gmJU_6ty_ide(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel24is_class_name_reassigned(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtCsg7m2K3K1Fzf_11compact_str13CompactStringuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2c_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Identifier8is_valid(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters4iter(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs2_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_8DictItemNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel24is_type_alias_annotation(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral13is_typed_dict(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvMst_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasType10value_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: cold noinline nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17is_notimplemented(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCskEUeM34gmJU_6ty_ide4gotoNtB2_11Definitions7from_ty(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCskEUeM34gmJU_6ty_ide4gotoNtB2_11Definitions9docstring(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18is_type_check_only(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type16is_assignable_to(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13is_deprecated(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMs2_NtCs56aZGHL6Dc6_7ruff_db5filesNtB5_4File11source_type(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsI_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14to_subclass_of(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i8 noundef range(i8 0, 108), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i8 noundef range(i8 0, 108), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType13from_elementsANtB8_4Typej2_B1x_ECskEUeM34gmJU_6ty_ide(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type4none(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type17homogeneous_tuple(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef range(i64 0, 94), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCskLngH8kgpZI_15ruff_python_ast5tokenNtB2_5Token18string_quote_style(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens6before(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens9at_offset(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 4 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCskEUeM34gmJU_6ty_ide7symbolsNtB2_12QueryPattern5fuzzy(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCskEUeM34gmJU_6ty_ide7symbolsNtB2_12QueryPattern7exactly(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskEUeM34gmJU_6ty_ide7symbolsNtB2_12QueryPattern20is_match_symbol_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE15into_sorted_vecB1e_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1a_3map3MapINtNtB4_9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2R_NtB2R_11Completions12into_imports0ENCB3L_s_0ENtB2R_10ImportEditEB2T_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_7PeekMutNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE3popB1a_(ptr dead_on_unwind noalias noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200), ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE4pushB1e_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2m_NtB2m_11Completions16into_completions0ENtB2m_10CompletionEB2o_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1a_3map3MapINtNtB4_9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2R_NtB2R_11Completions19into_qualifications0ENCB3L_s_0ENtB2R_10ImportEditEB2T_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapReuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyeECskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtCsg7m2K3K1Fzf_11compact_str13CompactStringuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyBO_ECskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMs_NtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB4_8NameKind8classify(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module11search_path(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB3_12CoveringNode9find_lastNCNvMsd_NtCskEUeM34gmJU_6ty_ide10completionNtB1l_22CompletionTargetTokens3ast0EB1n_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB2_12CoveringNode4node(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel18import_completions(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel37import_submodule_completions_for_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel14resolve_module(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance), i64, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel23from_import_completions(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName21from_identifier_parts(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias noundef readonly captures(address, read_provenance), i64, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName21from_import_statement(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile11python_fileDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_ECskEUeM34gmJU_6ty_ide(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6parsed13parsed_module(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs56aZGHL6Dc6_7ruff_db6parsedNtB2_12ParsedModule4load(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel21attribute_completions(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel18scoped_completions(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecNtNtCskEUeM34gmJU_6ty_ide10completion10ImportEditEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendBX_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB3_12CoveringNode10find_firstNCNvNtCskEUeM34gmJU_6ty_ide10completion19find_ast_for_import0EB1l_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvNtCskEUeM34gmJU_6ty_ide10completion19tokens_start_before0EB1D_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 768614336404564651), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12bool_literal(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB3_12CoveringNode10find_firstNCNvNtCskEUeM34gmJU_6ty_ide10completion24find_ast_for_from_import0EB1l_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core14semantic_index(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefECskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types12binding_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtCskEUeM34gmJU_6ty_ide10completion14CompletionKindNtB7_4TypeINtNtCs4NRVxsYgnAr_4core6option6OptionB1e_EKj3_E3newB1i_(ptr dead_on_unwind noalias noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), i8 noundef range(i8 -1, 25)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module18is_type_check_only(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName15first_component(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_11KnownModule4name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef range(i8 0, 39)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfDzkztWVnn_18ty_module_resolver7resolve30resolve_real_shadowable_module(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskEUeM34gmJU_6ty_ide14signature_help14signature_help(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296), i32 noundef range(i32 1, 0), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapReuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel35expected_string_literal_completions(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_ECskEUeM34gmJU_6ty_ide(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType13iter_positive(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_13UnicodeEscape11repr_layout(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskEUeM34gmJU_6ty_ide(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr7memrchr(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtB6_9ArgumentsNtB6_7Display3fmtCskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs11_Csg7m2K3K1Fzf_11compact_strNtB6_13CompactStringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmt(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull, i64 noundef) unnamed_addr #19

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvXsm_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db6source15SourceTextInnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex6RegexIE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs3_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5RegexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noreturn }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { nounwind }
attributes #28 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i8 0, i8 -45}
!4 = !{!5, !7}
!5 = distinct !{!5, !6, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!6 = distinct !{!6, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7 = distinct !{!7, !8, !"_RNvXs0_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref: argument 0"}
!8 = distinct !{!8, !"_RNvXs0_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref"}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECskEUeM34gmJU_6ty_ide: argument 0"}
!13 = distinct !{!13, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECskEUeM34gmJU_6ty_ide"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECskEUeM34gmJU_6ty_ide: argument 0"}
!16 = distinct !{!16, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECskEUeM34gmJU_6ty_ide"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNvXs0_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!19 = distinct !{!19, !"_RNvXs0_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr16release_for_drop: argument 0"}
!22 = distinct !{!22, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr16release_for_drop"}
!23 = !{!21, !18, !15, !12}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release: argument 0"}
!26 = distinct !{!26, !"_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release"}
!27 = !{!25, !21, !18, !15, !12}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 1"}
!31 = distinct !{!31, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new"}
!32 = distinct !{!32, !33, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 1"}
!33 = distinct !{!33, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic"}
!34 = !{!35, !36, !37}
!35 = distinct !{!35, !31, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 0"}
!36 = distinct !{!36, !33, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 0"}
!37 = distinct !{!37, !33, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 2"}
!38 = !{!39, !41, !43, !45}
!39 = distinct !{!39, !40, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr16release_for_drop: argument 0"}
!40 = distinct !{!40, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr16release_for_drop"}
!41 = distinct !{!41, !42, !"_RNvXs0_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!42 = distinct !{!42, !"_RNvXs0_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!43 = distinct !{!43, !44, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECskEUeM34gmJU_6ty_ide: argument 0"}
!44 = distinct !{!44, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECskEUeM34gmJU_6ty_ide"}
!45 = distinct !{!45, !46, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECskEUeM34gmJU_6ty_ide: argument 0"}
!46 = distinct !{!46, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECskEUeM34gmJU_6ty_ide"}
!47 = !{!45}
!48 = !{!43}
!49 = !{!41}
!50 = !{!39}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release: argument 0"}
!53 = distinct !{!53, !"_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release"}
!54 = !{!52, !39, !41, !43, !45}
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 0"}
!57 = distinct !{!57, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic"}
!58 = distinct !{!58, !57, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 2"}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 1"}
!61 = distinct !{!61, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new"}
!62 = distinct !{!62, !57, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 1"}
!63 = !{!64, !56, !58}
!64 = distinct !{!64, !61, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 0"}
!65 = !{!56}
!66 = !{!67, !69}
!67 = distinct !{!67, !68, !"_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!68 = distinct !{!68, !"_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!69 = distinct !{!69, !68, !"_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!70 = !{!71, !73, !74, !76, !77, !79, !80, !82}
!71 = distinct !{!71, !72, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 0"}
!72 = distinct !{!72, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic"}
!73 = distinct !{!73, !72, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 2"}
!74 = distinct !{!74, !75, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 0"}
!75 = distinct !{!75, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide"}
!76 = distinct !{!76, !75, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 2"}
!77 = distinct !{!77, !78, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 0"}
!78 = distinct !{!78, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from"}
!79 = distinct !{!79, !78, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 2"}
!80 = distinct !{!80, !81, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 0"}
!81 = distinct !{!81, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide"}
!82 = distinct !{!82, !81, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 2"}
!83 = !{!84, !86, !87, !88, !89}
!84 = distinct !{!84, !85, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 1"}
!85 = distinct !{!85, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new"}
!86 = distinct !{!86, !72, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 1"}
!87 = distinct !{!87, !75, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 1"}
!88 = distinct !{!88, !78, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 1"}
!89 = distinct !{!89, !81, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 1"}
!90 = !{!91, !71, !73, !74, !76, !77, !79, !80, !82}
!91 = distinct !{!91, !85, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 0"}
!92 = !{!71, !74, !77, !80}
!93 = !{!94, !96, !98, !100, !102}
!94 = distinct !{!94, !95, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 1"}
!95 = distinct !{!95, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new"}
!96 = distinct !{!96, !97, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 1"}
!97 = distinct !{!97, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic"}
!98 = distinct !{!98, !99, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 1"}
!99 = distinct !{!99, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide"}
!100 = distinct !{!100, !101, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 1"}
!101 = distinct !{!101, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from"}
!102 = distinct !{!102, !103, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 1"}
!103 = distinct !{!103, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide"}
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113}
!105 = distinct !{!105, !95, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 0"}
!106 = distinct !{!106, !97, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 0"}
!107 = distinct !{!107, !97, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 2"}
!108 = distinct !{!108, !99, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 0"}
!109 = distinct !{!109, !99, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 2"}
!110 = distinct !{!110, !101, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 0"}
!111 = distinct !{!111, !101, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 2"}
!112 = distinct !{!112, !103, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 0"}
!113 = distinct !{!113, !103, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 2"}
!114 = !{i8 -1, i8 -38}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsg7m2K3K1Fzf_11compact_str13CompactStringEECskEUeM34gmJU_6ty_ide: argument 0"}
!117 = distinct !{!117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsg7m2K3K1Fzf_11compact_str13CompactStringEECskEUeM34gmJU_6ty_ide"}
!118 = !{!"branch_weights", i32 1, i32 4001}
!119 = !{!120, !122, !124, !116}
!120 = distinct !{!120, !121, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!121 = distinct !{!121, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!122 = distinct !{!122, !123, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprECskEUeM34gmJU_6ty_ide: argument 0"}
!123 = distinct !{!123, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprECskEUeM34gmJU_6ty_ide"}
!124 = distinct !{!124, !125, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECskEUeM34gmJU_6ty_ide: argument 0"}
!125 = distinct !{!125, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECskEUeM34gmJU_6ty_ide"}
!126 = !{!127, !129, !130, !132, !133, !135, !136, !138}
!127 = distinct !{!127, !128, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 0"}
!128 = distinct !{!128, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic"}
!129 = distinct !{!129, !128, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 2"}
!130 = distinct !{!130, !131, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 0"}
!131 = distinct !{!131, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide"}
!132 = distinct !{!132, !131, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 2"}
!133 = distinct !{!133, !134, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 0"}
!134 = distinct !{!134, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from"}
!135 = distinct !{!135, !134, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 2"}
!136 = distinct !{!136, !137, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 0"}
!137 = distinct !{!137, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide"}
!138 = distinct !{!138, !137, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 2"}
!139 = !{!140, !142, !143, !144, !145}
!140 = distinct !{!140, !141, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 1"}
!141 = distinct !{!141, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new"}
!142 = distinct !{!142, !128, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 1"}
!143 = distinct !{!143, !131, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide: argument 1"}
!144 = distinct !{!144, !134, !"_RNvXsp_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 1"}
!145 = distinct !{!145, !137, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtCsg7m2K3K1Fzf_11compact_str13CompactStringE4intoCskEUeM34gmJU_6ty_ide: argument 1"}
!146 = !{!147, !127, !129, !130, !132, !133, !135, !136, !138}
!147 = distinct !{!147, !141, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 0"}
!148 = !{!127, !130, !133, !136}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"_RINvMs3_NtCskEUeM34gmJU_6ty_ide10completionNtB6_17CompletionBuilder4kindNtB6_14CompletionKindEB8_: argument 0"}
!151 = distinct !{!151, !"_RINvMs3_NtCskEUeM34gmJU_6ty_ide10completionNtB6_17CompletionBuilder4kindNtB6_14CompletionKindEB8_"}
!152 = distinct !{!152, !151, !"_RINvMs3_NtCskEUeM34gmJU_6ty_ide10completionNtB6_17CompletionBuilder4kindNtB6_14CompletionKindEB8_: argument 1"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE4intoCskEUeM34gmJU_6ty_ide: argument 0"}
!155 = distinct !{!155, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE4intoCskEUeM34gmJU_6ty_ide"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_RNvXs3_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 0"}
!158 = distinct !{!158, !"_RNvXs3_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECskEUeM34gmJU_6ty_ide: argument 0"}
!161 = distinct !{!161, !"_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECskEUeM34gmJU_6ty_ide"}
!162 = !{!163, !165, !160, !166, !157, !167, !154, !168}
!163 = distinct !{!163, !164, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str: argument 0"}
!164 = distinct !{!164, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str"}
!165 = distinct !{!165, !164, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str: argument 1"}
!166 = distinct !{!166, !161, !"_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECskEUeM34gmJU_6ty_ide: argument 1"}
!167 = distinct !{!167, !158, !"_RNvXs3_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from: argument 1"}
!168 = distinct !{!168, !155, !"_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE4intoCskEUeM34gmJU_6ty_ide: argument 1"}
!169 = !{!163, !160, !157, !154}
!170 = !{!165, !160, !166, !157, !167, !154, !168}
!171 = !{!160, !166, !157, !167, !154, !168}
!172 = !{!160, !157, !154}
!173 = !{!166, !167, !168}
!174 = !{!175, !177}
!175 = distinct !{!175, !176, !"_RNvXs1_NtCsg7m2K3K1Fzf_11compact_str6traitsNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_15ToCompactString21try_to_compact_stringCskEUeM34gmJU_6ty_ide: argument 0"}
!176 = distinct !{!176, !"_RNvXs1_NtCsg7m2K3K1Fzf_11compact_str6traitsNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_15ToCompactString21try_to_compact_stringCskEUeM34gmJU_6ty_ide"}
!177 = distinct !{!177, !176, !"_RNvXs1_NtCsg7m2K3K1Fzf_11compact_str6traitsNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_15ToCompactString21try_to_compact_stringCskEUeM34gmJU_6ty_ide: argument 1"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString9const_new: argument 0"}
!180 = distinct !{!180, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString9const_new"}
!181 = !{!175}
!182 = !{i8 0, i8 -38}
!183 = !{!184, !186, !188}
!184 = distinct !{!184, !185, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!185 = distinct !{!185, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
end_hunk_1
