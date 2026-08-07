inline.NumInlined: 110
inline.NumDeleted: 40
begin_hunk_0_@_RNvNtCsfxDLtZq386g_6semver5parse10comparator:bb.a
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i
  %i.bl = add nuw nsw i64 %.reass6.i.i, 2
  %i.bm = icmp samesign ne i64 %i.bl, %.sink.i
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 3 ; 2 uses
  %i.bo = load i8, ptr %i.bd, align 1, !alias.scope !106, !noalias !109, !noundef !13
  %i.bp = shl nuw nsw i32 %i.bh, 6
  %i.bq = and i8 %i.bo, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br            ; 2 uses
  %i.bt = shl nuw nsw i32 %i.ba, 12
  %i.bu = or disjoint i32 %i.bs, %i.bt
  %i.bv = icmp samesign ugt i8 %i.ax, -17
  br i1 %i.bv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i
  %i.bw = add nuw nsw i64 %.reass6.i.i, 3
  %i.bx = icmp samesign ne i64 %i.bw, %.sink.i
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bz = load i8, ptr %i.bn, align 1, !alias.scope !106, !noalias !109, !noundef !13
  %i.ca = shl nuw nsw i32 %i.ba, 18
  %i.cb = and i32 %i.ca, 1835008
  %i.cc = shl nuw nsw i32 %i.bs, 6
  %i.cd = and i8 %i.bz, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = or disjoint i32 %i.cf, %i.cb
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i, %bb.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i
  %.sroa.0.0.ph.i.i.i = phi ptr [ %i.bd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i ], [ %i.bn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i ], [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i ], [ %i.aw, %bb.ab ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.bi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i ], [ %i.bu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i ], [ %i.cg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i ], [ %i.bk, %bb.ab ] ; 2 uses
  %i.ch = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = ptrtoint ptr %.sroa.0.0.ph.i.i.i to i64
  %.reass.i.i = add i64 %invariant.op.i.i, %i.ci
  %.not.i.i = icmp eq i32 %.sroa.4.0.i.ph.i.i.i, 32
  br i1 %.not.i.i, label %bb.z, label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver.exit

_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver.exit: ; preds = %bb.z, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i
  %.sroa.0.0.i = phi i64 [ %.reass6.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i ], [ %.sink.i, %bb.z ] ; 2 uses
  %i.cj = sub nuw i64 %.sink.i, %.sroa.0.0.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink136.i, i64 %.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtCsfxDLtZq386g_6semver5parse18numeric_identifier(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cj, i8 noundef 0)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noundef !13 ; 6 uses
  %i.cn = icmp eq ptr %i.cm, null
  %.sroa.081.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.081.0.copyload, ptr %i.co, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.ad:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver.exit
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.580.0.copyload = load i64, ptr %.sroa.580.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not.i161 = icmp eq i64 %.sroa.580.0.copyload, 0
  br i1 %.not.i161, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit: ; preds = %bb.ad
  %rhsc = load i8, ptr %i.cm, align 1
  %i.cp = icmp eq i8 %rhsc, 46
  br i1 %i.cp, label %bb.ae, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167

bb.ae:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit
  %i.cq = add i64 %.sroa.580.0.copyload, -1       ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  %.not.i.i163 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i163, label %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i: ; preds = %bb.ae
  %rhsc.i = load i8, ptr %i.cr, align 1, !alias.scope !118, !noalias !121
  switch i8 %rhsc.i, label %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit [
    i8 42, label %bb.af
    i8 120, label %bb.af
    i8 88, label %bb.af
  ]

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread: ; preds = %bb.af, %bb.ah
  %.sroa.4.0 = phi i64 [ %.sroa.088.0.copyload, %bb.ah ], [ undef, %bb.af ] ; 2 uses
  %.sroa.019.0 = phi i64 [ 1, %bb.ah ], [ 0, %bb.af ] ; 2 uses
  %.sroa.011.0 = phi i1 [ false, %bb.ah ], [ true, %bb.af ]
  %.sroa.0123.0 = phi ptr [ %i.cu, %bb.ah ], [ %.sroa.8208.0.ph, %bb.af ] ; 2 uses
  %.sroa.20.0 = phi i64 [ %.sroa.587.0.copyload, %bb.ah ], [ %.sroa.12.0.ph, %bb.af ] ; 2 uses
  %.sroa.0.0 = phi i8 [ %.sink138.i, %bb.ah ], [ %spec.select, %bb.af ] ; 2 uses
  %.not.i164 = icmp eq i64 %.sroa.20.0, 0
  br i1 %.not.i164, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread
  %.sroa.0.0316 = phi i8 [ %.sroa.0.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ %.sink138.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit ] ; 6 uses
  %.sroa.01.0315 = phi i8 [ 1, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit ]
  %.sroa.20.0314 = phi i64 [ %.sroa.20.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ %.sroa.580.0.copyload, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit ] ; 3 uses
  %.sroa.0123.0313 = phi ptr [ %.sroa.0123.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ %i.cm, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit ] ; 4 uses
  %.sroa.011.0312 = phi i1 [ %.sroa.011.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ false, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit ]
  %.sroa.019.0311 = phi i64 [ %.sroa.019.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit ] ; 6 uses
  %.sroa.4.0310 = phi i64 [ %.sroa.4.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ undef, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit ] ; 6 uses
  %rhsc263 = load i8, ptr %.sroa.0123.0313, align 1
  %i.cs = icmp eq i8 %rhsc263, 46
  br i1 %i.cs, label %bb.ai, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread

bb.af:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i
  %.sroa.12.0.ph = add i64 %.sroa.580.0.copyload, -2
  %.sroa.8208.0.ph = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %spec.select = select i1 %i.ar, i8 7, i8 %.sink138.i
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread

_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit:  ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCsfxDLtZq386g_6semver5parse18numeric_identifier(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cq, i8 noundef 1)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noundef !13 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %.sroa.088.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  br i1 %i.cv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.088.0.copyload, ptr %i.cw, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.ah:                                            ; preds = %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.587.0.copyload = load i64, ptr %.sroa.587.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread

bb.ai:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167
  %i.cx = add i64 %.sroa.20.0314, -1              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0123.0313, i64 1 ; 2 uses
  %.not.i.i168 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i168, label %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit178, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i169

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i169: ; preds = %bb.ai
  %rhsc.i170 = load i8, ptr %i.cy, align 1, !alias.scope !123, !noalias !126
  switch i8 %rhsc.i170, label %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit178 [
    i8 42, label %bb.aj
    i8 120, label %bb.aj
    i8 88, label %bb.aj
  ]

bb.aj:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i169, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i169, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i169
  %.sroa.13.0.ph = add i64 %.sroa.20.0314, -2
  %.sroa.9210.0.ph = getelementptr inbounds nuw i8, ptr %.sroa.0123.0313, i64 2
  %spec.select156 = select i1 %i.ar, i8 7, i8 %.sroa.0.0316
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread

_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit178: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i169, %bb.ai
  br i1 %.sroa.011.0312, label %bb.bk, label %bb.ak

bb.ak:                                            ; preds = %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCsfxDLtZq386g_6semver5parse18numeric_identifier(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, i8 noundef 2)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !noundef !13 ; 7 uses
  %i.db = icmp eq ptr %i.da, null
  %.sroa.095.0.copyload = load i64, ptr %i.c, align 8 ; 5 uses
  br i1 %i.db, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bk

bb.am:                                            ; preds = %bb.ak
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.594.0.copyload = load i64, ptr %.sroa.594.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i179 = icmp eq i64 %.sroa.594.0.copyload, 0
  br i1 %.not.i179, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182: ; preds = %bb.am
  %rhsc265 = load i8, ptr %i.da, align 1          ; 2 uses
  %i.dc = icmp eq i8 %rhsc265, 45
  br i1 %i.dc, label %bb.an, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188

bb.an:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182
  %.not.i183.not = icmp eq i64 %.sroa.594.0.copyload, 1
  br i1 %.not.i183.not, label %.split.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !alias.scope !128, !noundef !13
  %i.df = icmp sgt i8 %i.de, -65
  br i1 %i.df, label %.split.i, label %bb.ap

.split.i:                                         ; preds = %bb.an, %bb.ao
  %i.dg = add i64 %.sroa.594.0.copyload, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsfxDLtZq386g_6semver5parse21prerelease_identifier(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dg)
  %i.di = load ptr, ptr %i.b, align 8, !noundef !13 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.dj, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %.sroa.594.0.copyload, i64 noundef 1, i64 noundef %.sroa.594.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
  unreachable

bb.aq:                                            ; preds = %.split.i
  %.sroa.0106.0.copyload = load i64, ptr %i.dk, align 8
  %i.dl = inttoptr i64 %.sroa.0106.0.copyload to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.dm, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.ar:                                            ; preds = %.split.i
  %.sroa.4104.0.copyload = load ptr, ptr %i.dk, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5105.0.copyload = load i64, ptr %.sroa.5105.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dn = icmp eq ptr %i.di, inttoptr (i64 -1 to ptr)
  br i1 %i.dn, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 775, ptr %i.do, align 8
  store i64 2, ptr %0, align 8
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfxDLtZq386g_6semver10PrereleaseEBD_(ptr nonnull inttoptr (i64 -1 to ptr))
  br label %bb.bi

bb.at:                                            ; preds = %bb.ba, %.split.i190
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = inttoptr i64 %.sroa.046.0249 to ptr
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfxDLtZq386g_6semver10PrereleaseEBD_(ptr %i.dq) #24
  resume { ptr, i32 } %i.dp

bb.au:                                            ; preds = %bb.ar
  %i.dr = ptrtoint ptr %i.di to i64               ; 2 uses
  %.not.i185 = icmp eq i64 %.sroa.5105.0.copyload, 0
  br i1 %.not.i185, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread, label %._RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188_crit_edge

._RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188_crit_edge: ; preds = %bb.au
  %rhsc267.pre = load i8, ptr %.sroa.4104.0.copyload, align 1
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182, %._RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188_crit_edge
  %rhsc267 = phi i8 [ %rhsc267.pre, %._RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188_crit_edge ], [ %rhsc265, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182 ]
  %.sroa.01.3252 = phi i8 [ 3, %._RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188_crit_edge ], [ 2, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182 ]
  %.sroa.20.4251 = phi i64 [ %.sroa.5105.0.copyload, %._RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188_crit_edge ], [ %.sroa.594.0.copyload, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182 ] ; 5 uses
  %.sroa.0123.4250 = phi ptr [ %.sroa.4104.0.copyload, %._RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188_crit_edge ], [ %i.da, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182 ] ; 4 uses
  %.sroa.046.0249 = phi i64 [ %i.dr, %._RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188_crit_edge ], [ -1, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit182 ] ; 4 uses
  %i.ds = icmp eq i8 %rhsc267, 43
  br i1 %i.ds, label %bb.av, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread

bb.av:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188
  %.not.i189 = icmp ugt i64 %.sroa.20.4251, 1
  br i1 %.not.i189, label %bb.aw, label %.split.i190

bb.aw:                                            ; preds = %bb.av
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0123.4250, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !131, !noundef !13
  %i.dv = icmp sgt i8 %i.du, -65
  br i1 %i.dv, label %.split.i190, label %bb.ba

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread: ; preds = %bb.ad, %bb.au, %bb.am, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread, %bb.bf, %bb.aj, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188
  %.sroa.019.0295 = phi i64 [ %.sroa.019.0311, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ %.sroa.019.0311, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ %.sroa.019.0311, %bb.bf ], [ %.sroa.019.0311, %bb.aj ], [ %.sroa.019.0311, %bb.au ], [ %.sroa.019.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ %.sroa.019.0311, %bb.am ], [ 0, %bb.ad ]
  %.sroa.4.0293 = phi i64 [ %.sroa.4.0310, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ %.sroa.4.0310, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ %.sroa.4.0310, %bb.bf ], [ %.sroa.4.0310, %bb.aj ], [ %.sroa.4.0310, %bb.au ], [ %.sroa.4.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ %.sroa.4.0310, %bb.am ], [ undef, %bb.ad ]
  %.sroa.0211.0 = phi i64 [ -1, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ %.sroa.046.0249, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ %.sroa.046.0249, %bb.bf ], [ -1, %bb.aj ], [ %i.dr, %bb.au ], [ -1, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ -1, %bb.am ], [ -1, %bb.ad ]
  %.sroa.031.2 = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ 1, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ 1, %bb.bf ], [ 0, %bb.aj ], [ 1, %bb.au ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ 1, %bb.am ], [ 0, %bb.ad ]
  %.sroa.533.2 = phi i64 [ undef, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ %.sroa.095.0.copyload, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ %.sroa.095.0.copyload, %bb.bf ], [ undef, %bb.aj ], [ %.sroa.095.0.copyload, %bb.au ], [ undef, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ %.sroa.095.0.copyload, %bb.am ], [ undef, %bb.ad ]
  %.sroa.0123.5 = phi ptr [ %.sroa.0123.0313, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ %.sroa.0123.4250, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ %.sroa.4116.0.copyload, %bb.bf ], [ %.sroa.9210.0.ph, %bb.aj ], [ %.sroa.4104.0.copyload, %bb.au ], [ %.sroa.0123.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ %i.da, %bb.am ], [ %i.cm, %bb.ad ] ; 3 uses
  %.sroa.20.5 = phi i64 [ %.sroa.20.0314, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ %.sroa.20.4251, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ %.sroa.5117.0.copyload, %bb.bf ], [ %.sroa.13.0.ph, %bb.aj ], [ 0, %bb.au ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ 0, %bb.am ], [ 0, %bb.ad ] ; 8 uses
  %.sroa.01.4 = phi i8 [ %.sroa.01.0315, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ %.sroa.01.3252, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ 4, %bb.bf ], [ 2, %bb.aj ], [ 3, %bb.au ], [ 1, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ 2, %bb.am ], [ 0, %bb.ad ]
  %.sroa.0.6 = phi i8 [ %.sroa.0.0316, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167 ], [ %.sroa.0.0316, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit188 ], [ %.sroa.0.0316, %bb.bf ], [ %spec.select156, %bb.aj ], [ %.sroa.0.0316, %bb.au ], [ %.sroa.0.0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread ], [ %.sroa.0.0316, %bb.am ], [ %.sink138.i, %bb.ad ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0123.5, i64 %.sroa.20.5
  %i.dx = ptrtoint ptr %i.dw to i64
  %invariant.op.i.i194 = sub i64 %.sroa.20.5, %i.dx
  br label %bb.ax

bb.ax:                                            ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread
  %.reass6.i.i195 = phi i64 [ %.reass.i.i200, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197 ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0123.5, i64 %.reass6.i.i195 ; 5 uses
  %i.dz = icmp samesign eq i64 %.reass6.i.i195, %.sroa.20.5
  br i1 %i.dz, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.dy, align 1, !alias.scope !134, !noalias !137, !noundef !13 ; 5 uses
  %i.ec = icmp sgt i8 %i.eb, -1
  br i1 %i.ec, label %bb.az, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i196

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i196: ; preds = %bb.ay
  %i.ed = and i8 %i.eb, 31
  %i.ee = zext nneg i8 %i.ed to i32               ; 3 uses
  %i.ef = add nuw nsw i64 %.reass6.i.i195, 1
  %i.eg = icmp samesign ne i64 %i.ef, %.sroa.20.5
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 2 ; 2 uses
  %i.ei = load i8, ptr %i.ea, align 1, !alias.scope !134, !noalias !137, !noundef !13
  %i.ej = shl nuw nsw i32 %i.ee, 6
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i32               ; 2 uses
  %i.em = or disjoint i32 %i.ej, %i.el
  %i.en = icmp samesign ugt i8 %i.eb, -33
  br i1 %i.en, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i203, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197

bb.az:                                            ; preds = %bb.ay
  %i.eo = zext nneg i8 %i.eb to i32
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i203: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i196
  %i.ep = add nuw nsw i64 %.reass6.i.i195, 2
  %i.eq = icmp samesign ne i64 %i.ep, %.sroa.20.5
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 3 ; 2 uses
  %i.es = load i8, ptr %i.eh, align 1, !alias.scope !134, !noalias !137, !noundef !13
  %i.et = shl nuw nsw i32 %i.el, 6
  %i.eu = and i8 %i.es, 63
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = or disjoint i32 %i.et, %i.ev            ; 2 uses
  %i.ex = shl nuw nsw i32 %i.ee, 12
  %i.ey = or disjoint i32 %i.ew, %i.ex
  %i.ez = icmp samesign ugt i8 %i.eb, -17
  br i1 %i.ez, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i204, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i204: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i203
  %i.fa = add nuw nsw i64 %.reass6.i.i195, 3
  %i.fb = icmp samesign ne i64 %i.fa, %.sroa.20.5
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.fd = load i8, ptr %i.er, align 1, !alias.scope !134, !noalias !137, !noundef !13
  %i.fe = shl nuw nsw i32 %i.ee, 18
  %i.ff = and i32 %i.fe, 1835008
  %i.fg = shl nuw nsw i32 %i.ew, 6
  %i.fh = and i8 %i.fd, 63
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi
  %i.fk = or disjoint i32 %i.fj, %i.ff
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i204, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i203, %bb.az, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i196
  %.sroa.0.0.ph.i.i.i198 = phi ptr [ %i.eh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i196 ], [ %i.er, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i203 ], [ %i.fc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i204 ], [ %i.ea, %bb.az ]
  %.sroa.4.0.i.ph.i.i.i199 = phi i32 [ %i.em, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i196 ], [ %i.ey, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i203 ], [ %i.fk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i204 ], [ %i.eo, %bb.az ] ; 2 uses
  %i.fl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i199, 1114112
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = ptrtoint ptr %.sroa.0.0.ph.i.i.i198 to i64
  %.reass.i.i200 = add i64 %invariant.op.i.i194, %i.fm
  %.not.i.i201 = icmp eq i32 %.sroa.4.0.i.ph.i.i.i199, 32
  br i1 %.not.i.i201, label %bb.ax, label %bb.bh

.split.i190:                                      ; preds = %bb.av, %bb.aw
  %i.fn = add i64 %.sroa.20.4251, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0123.4250, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtCsfxDLtZq386g_6semver5parse16build_identifier(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef %i.fn)
          to label %bb.bc unwind label %bb.at

bb.ba:                                            ; preds = %bb.aw
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0123.4250, i64 noundef %.sroa.20.4251, i64 noundef 1, i64 noundef %.sroa.20.4251, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
          to label %bb.bb unwind label %bb.at

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %.split.i190
  %i.fp = load ptr, ptr %i.a, align 8, !noundef !13 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.fq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.sroa.0118.0.copyload = load i64, ptr %i.fr, align 8
  %i.fs = inttoptr i64 %.sroa.0118.0.copyload to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fs, ptr %i.ft, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %.sroa.4116.0.copyload = load ptr, ptr %i.fr, align 8, !nonnull !13, !noundef !13
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5117.0.copyload = load i64, ptr %.sroa.5117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fu = icmp eq ptr %i.fp, inttoptr (i64 -1 to ptr)
  br i1 %i.fu, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfxDLtZq386g_6semver13BuildMetadataEBD_(ptr nonnull %i.fp)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit167.thread

bb.bg:                                            ; preds = %bb.be
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1031, ptr %i.fv, align 8
  store i64 2, ptr %0, align 8
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfxDLtZq386g_6semver13BuildMetadataEBD_(ptr nonnull inttoptr (i64 -1 to ptr))
  br label %bb.bj

bb.bh:                                            ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197, %bb.ax
  %.sroa.0.0.i202 = phi i64 [ %.reass6.i.i195, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i197 ], [ %.sroa.20.5, %bb.ax ] ; 2 uses
  %i.fw = sub nuw i64 %.sroa.20.5, %.sroa.0.0.i202
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0123.5, i64 %.sroa.0.0.i202
  store i64 %.sroa.019.0295, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0293, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.031.2, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.533.2, ptr %.sroa.672.0..sroa_idx, align 8
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0211.0, ptr %.sroa.773.0..sroa_idx, align 8
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.081.0.copyload, ptr %.sroa.874.0..sroa_idx, align 8
  %.sroa.975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.0.6, ptr %.sroa.975.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.01.4, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.fx, ptr %.sroa.1277.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.fw, ptr %.sroa.13.0..sroa_idx, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ac, %bb.bk, %bb.bj, %bb.as, %bb.aq, %bb.ag, %bb.bh
  ret void

bb.bj:                                            ; preds = %bb.bg, %bb.bd
  %i.fy = inttoptr i64 %.sroa.046.0249 to ptr
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfxDLtZq386g_6semver10PrereleaseEBD_(ptr %i.fy)
  br label %bb.bi

bb.bk:                                            ; preds = %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit178, %bb.al
  %.sroa.095.0.copyload.sink = phi i64 [ %.sroa.095.0.copyload, %bb.al ], [ 10, %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit178 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.095.0.copyload.sink, ptr %i.fz, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsfxDLtZq386g_6semver5parse10identifier(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 3, 5) %3) unnamed_addr #1 {
bb.a:
  %.not97 = icmp eq i8 %3, 3
  br i1 %.not97, label %.split.outer.outer, label %.split.us.preheader

.split.outer.outer:                               ; preds = %bb.a, %bb.ac
  %.sroa.0.0.ph.ph = phi i64 [ %i.at, %bb.ac ], [ 0, %bb.a ] ; 9 uses
  br label %.split.outer

.split.us.preheader:                              ; preds = %bb.a
  %.not.us178.not = icmp eq i64 %2, 0
  br i1 %.not.us178.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us.preheader, %.split.us
  %i.a = phi ptr [ %i.p, %.split.us ], [ %1, %.split.us.preheader ] ; 4 uses
  %i.b = phi i64 [ %i.o, %.split.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %.sroa.0.0.us180 = phi i64 [ %.sroa.0.1.us, %.split.us ], [ 0, %.split.us.preheader ] ; 3 uses
  %.sroa.08.0.us179 = phi i64 [ %.sroa.08.1.us, %.split.us ], [ 0, %.split.us.preheader ] ; 3 uses
  %i.c = load i8, ptr %i.a, align 1, !noundef !13 ; 4 uses
  %i.d = add i8 %i.c, -65
  %or.cond50.us = icmp ult i8 %i.d, 26
  br i1 %or.cond50.us, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i8 %i.c, -97
  %or.cond51.us = icmp ult i8 %i.e, 26
  %i.f = icmp eq i8 %i.c, 45
  %or.cond75.us = or i1 %i.f, %or.cond51.us
  br i1 %or.cond75.us, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.c, -48
  %or.cond52.us = icmp ult i8 %i.g, 10
  br i1 %or.cond52.us, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %.sroa.08.0.us179, 0
  br i1 %i.h, label %.split91.us, label %bb.e

.split.us..thread_crit_edge:                      ; preds = %.split.us
  %i.i = icmp eq i64 %.sroa.08.1.us, 0
  br label %.thread

.thread:                                          ; preds = %.split.us..thread_crit_edge, %.split.us.preheader
  %.sroa.08.0.us.lcssa = phi i1 [ %i.i, %.split.us..thread_crit_edge ], [ true, %.split.us.preheader ]
  %.sroa.0.0.us.lcssa = phi i64 [ %.sroa.0.1.us, %.split.us..thread_crit_edge ], [ 0, %.split.us.preheader ]
  %.lcssa171 = phi i64 [ %i.o, %.split.us..thread_crit_edge ], [ 0, %.split.us.preheader ]
  %.lcssa168 = phi ptr [ %i.p, %.split.us..thread_crit_edge ], [ %1, %.split.us.preheader ] ; 2 uses
  br i1 %.sroa.08.0.us.lcssa, label %.split91.us, label %.critedge56

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.a, align 1, !noundef !13
  %i.k = icmp eq i8 %i.j, 46
  br i1 %i.k, label %bb.f, label %.critedge56

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i64 %i.b, 1
  br label %.split.us

bb.g:                                             ; preds = %bb.c
  %i.m = add i64 %.sroa.08.0.us179, 1
  br label %.split.us

bb.h:                                             ; preds = %bb.b, %.lr.ph
  %i.n = add i64 %.sroa.08.0.us179, 1
  br label %.split.us

.split.us:                                        ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.08.1.us = phi i64 [ %i.n, %bb.h ], [ %i.m, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %.sroa.0.1.us = phi i64 [ %.sroa.0.0.us180, %bb.h ], [ %.sroa.0.0.us180, %bb.g ], [ %i.l, %bb.f ] ; 3 uses
  %i.o = add i64 %.sroa.0.1.us, %.sroa.08.1.us    ; 4 uses
  %.not.us = icmp ult i64 %i.o, %2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  br i1 %.not.us, label %.lr.ph, label %.split.us..thread_crit_edge

.split:                                           ; preds = %.split.outer, %bb.n
  %.sroa.08.0 = phi i64 [ %i.z, %bb.n ], [ %.sroa.08.0.ph, %.split.outer ] ; 5 uses
  %i.q = add i64 %.sroa.0.0.ph.ph, %.sroa.08.0    ; 5 uses
  %.not = icmp ult i64 %i.q, %2                   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 5 uses
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split
  %i.s = load i8, ptr %i.r, align 1, !noundef !13 ; 4 uses
  %i.t = add i8 %i.s, -65
  %or.cond50 = icmp ult i8 %i.t, 26
  br i1 %or.cond50, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.m, %.split
  %i.u = icmp eq i64 %.sroa.08.0, 0
  br i1 %i.u, label %.split91.us, label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.v = add i8 %i.s, -97
  %or.cond51 = icmp ult i8 %i.v, 26
  %i.w = icmp eq i8 %i.s, 45
  %or.cond75 = or i1 %i.w, %or.cond51
  br i1 %or.cond75, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.x = add i64 %.sroa.08.0, 1
  br label %.split.outer

.split.outer:                                     ; preds = %.split.outer.outer, %bb.l
  %.sroa.014.0.ph = phi i1 [ true, %bb.l ], [ false, %.split.outer.outer ]
  %.sroa.08.0.ph = phi i64 [ %i.x, %bb.l ], [ 0, %.split.outer.outer ]
  br label %.split

bb.m:                                             ; preds = %bb.k
  %i.y = add i8 %i.s, -48
  %or.cond52 = icmp ult i8 %i.y, 10
  br i1 %or.cond52, label %bb.n, label %bb.j

bb.n:                                             ; preds = %bb.m
  %i.z = add i64 %.sroa.08.0, 1
  br label %.split

.split91.us:                                      ; preds = %bb.d, %bb.j, %.thread
  %.us-phi = phi i64 [ %.sroa.0.0.ph.ph, %bb.j ], [ %.sroa.0.0.us.lcssa, %.thread ], [ %.sroa.0.0.us180, %bb.d ]
  %.us-phi92 = phi i1 [ %.not, %bb.j ], [ false, %.thread ], [ true, %bb.d ]
  %.us-phi93 = phi ptr [ %i.r, %bb.j ], [ %.lcssa168, %.thread ], [ %i.a, %bb.d ]
  %i.aa = icmp eq i64 %.us-phi, 0
  br i1 %i.aa, label %bb.p, label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.ab = icmp eq i64 %.sroa.08.0, 1
  %or.cond54 = or i1 %i.ab, %.sroa.014.0.ph
  br i1 %or.cond54, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread, label %bb.t

bb.p:                                             ; preds = %.split91.us
  br i1 %.us-phi92, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ac = load i8, ptr %.us-phi93, align 1, !noundef !13
  %.not76 = icmp eq i8 %i.ac, 46
  br i1 %.not76, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.q
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %.split91.us, %bb.q
  %.sroa.431.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.431.0.insert.shift = shl nuw nsw i64 %.sroa.431.0.insert.ext, 8
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.431.0.insert.shift, 7
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.0.insert.insert, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

end_hunk_0
