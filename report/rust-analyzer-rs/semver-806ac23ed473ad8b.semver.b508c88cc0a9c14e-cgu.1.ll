Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/semver-806ac23ed473ad8b.semver.b508c88cc0a9c14e-cgu.1?download=true
inline.NumInlined: 84
inline.NumDeleted: 33
begin_hunk_0_@_RNvXs5_NtCsfxDLtZq386g_6semver5implsNtB7_10PrereleaseNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp:bb.a
  %i.ar = insertvalue { i64, i64 } %i.aq, i64 %.sroa.01.0.lcssa.i.i.i71, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i47

.lr.ph.i.i.i67:                                   ; preds = %.preheader.i.i.i65, %bb.n
  %.sroa.01.05.i.i.i68 = phi i64 [ %i.av, %bb.n ], [ 0, %.preheader.i.i.i65 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.01.05.i.i.i68
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !61, !noalias !55, !noundef !7
  %i.au = icmp eq i8 %i.at, 46
  br i1 %i.au, label %._crit_edge.i.i.i70, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i67
  %i.av = add nuw nsw i64 %.sroa.01.05.i.i.i68, 1 ; 2 uses
  %exitcond.not.i.i.i69 = icmp eq i64 %i.av, %i.am
  br i1 %exitcond.not.i.i.i69, label %._crit_edge.i.i.i70, label %.lr.ph.i.i.i67

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i47: ; preds = %._crit_edge.i.i.i70, %bb.m
  %.merged.i.i.i48 = phi { i64, i64 } [ %i.ar, %._crit_edge.i.i.i70 ], [ %i.ap, %bb.m ] ; 2 uses
  %i.aw = extractvalue { i64, i64 } %.merged.i.i.i48, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.o, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73

bb.o:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i47
  %i.ay = extractvalue { i64, i64 } %.merged.i.i.i48, 1 ; 3 uses
  %i.az = add i64 %i.al, 1
  %i.ba = add i64 %i.az, %i.ay                    ; 5 uses
  %.not12.i.i61 = icmp ugt i64 %i.ba, %i.k
  %i.bb = add i64 %i.al, %i.ay
  %or.cond.i.i62.not = icmp ult i64 %i.bb, %i.k
  br i1 %or.cond.i.i62.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  br i1 %.not12.i.i61, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73, label %.lr.ph.split.i.i46

bb.q:                                             ; preds = %bb.o
  %i.bc = add i64 %i.al, %i.ay                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bc
  %lhsc205 = load i8, ptr %i.bd, align 1
  %i.be = icmp eq i8 %lhsc205, 46
  br i1 %i.be, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73.thread220, label %bb.p

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73: ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i47, %bb.p, %bb.l
  %.lcssa152167 = phi i64 [ %.lcssa152168, %bb.l ], [ %i.k, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i47 ], [ %i.ba, %bb.p ]
  br i1 %.not36, label %.sink.split, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73.thread220

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread: ; preds = %bb.e, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit
  %.promoted.i.i77 = phi i64 [ %.lcssa152168, %bb.e ], [ 0, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit ] ; 2 uses
  %.pre.i2.i86 = phi i64 [ %.lcssa144159, %bb.e ], [ 0, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit ] ; 2 uses
  %i.bf = trunc nuw i8 %i.l to i1
  br i1 %i.bf, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit108, label %bb.r

bb.r:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread
  %i.bg = icmp ult i64 %i.k, %.promoted.i.i77
  br i1 %i.bg, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i85, label %.lr.ph.split.i.i81

.lr.ph.split.i.i81:                               ; preds = %bb.r, %bb.v
  %i.bh = phi i64 [ %i.bw, %bb.v ], [ %.promoted.i.i77, %bb.r ] ; 5 uses
  %i.bi = sub nuw i64 %i.k, %i.bh                 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bh ; 2 uses
  %i.bk = icmp samesign ult i64 %i.bi, 16
  br i1 %i.bk, label %.preheader.i.i.i100, label %bb.s

.preheader.i.i.i100:                              ; preds = %.lr.ph.split.i.i81
  %.not.i.i.i101 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i101, label %._crit_edge.i.i.i105, label %.lr.ph.i.i.i102

bb.s:                                             ; preds = %.lr.ph.split.i.i81
  %i.bl = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef range(i64 0, -9223372036854775808) %i.bi), !noalias !64
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i82

._crit_edge.i.i.i105:                             ; preds = %bb.t, %.lr.ph.i.i.i102, %.preheader.i.i.i100
  %.sroa.01.0.lcssa.i.i.i106 = phi i64 [ 0, %.preheader.i.i.i100 ], [ %i.bi, %bb.t ], [ %.sroa.01.05.i.i.i103, %.lr.ph.i.i.i102 ]
  %.sroa.0.1.i.i.i107 = phi i64 [ 0, %.preheader.i.i.i100 ], [ 0, %bb.t ], [ 1, %.lr.ph.i.i.i102 ]
  %i.bm = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i107, 0
  %i.bn = insertvalue { i64, i64 } %i.bm, i64 %.sroa.01.0.lcssa.i.i.i106, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i82

.lr.ph.i.i.i102:                                  ; preds = %.preheader.i.i.i100, %bb.t
  %.sroa.01.05.i.i.i103 = phi i64 [ %i.br, %bb.t ], [ 0, %.preheader.i.i.i100 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.01.05.i.i.i103
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !70, !noalias !64, !noundef !7
  %i.bq = icmp eq i8 %i.bp, 46
  br i1 %i.bq, label %._crit_edge.i.i.i105, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i102
  %i.br = add nuw nsw i64 %.sroa.01.05.i.i.i103, 1 ; 2 uses
  %exitcond.not.i.i.i104 = icmp eq i64 %i.br, %i.bi
  br i1 %exitcond.not.i.i.i104, label %._crit_edge.i.i.i105, label %.lr.ph.i.i.i102

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i82: ; preds = %._crit_edge.i.i.i105, %bb.s
  %.merged.i.i.i83 = phi { i64, i64 } [ %i.bn, %._crit_edge.i.i.i105 ], [ %i.bl, %bb.s ] ; 2 uses
  %i.bs = extractvalue { i64, i64 } %.merged.i.i.i83, 0
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.u, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i85

bb.u:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i82
  %i.bu = extractvalue { i64, i64 } %.merged.i.i.i83, 1 ; 3 uses
  %i.bv = add i64 %i.bh, 1
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %.not12.i.i96 = icmp ugt i64 %i.bw, %i.k
  %i.bx = add i64 %i.bh, %i.bu
  %or.cond.i.i97.not = icmp ult i64 %i.bx, %i.k
  br i1 %or.cond.i.i97.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  br i1 %.not12.i.i96, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i85, label %.lr.ph.split.i.i81

bb.w:                                             ; preds = %bb.u
  %i.by = getelementptr i8, ptr %i.j, i64 %i.bh
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bu
  %lhsc207 = load i8, ptr %i.bz, align 1
  %i.ca = icmp eq i8 %lhsc207, 46
  br i1 %i.ca, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i99, label %bb.v

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i99: ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pre.i2.i86
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit108

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i85: ; preds = %bb.v, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i82, %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pre.i2.i86
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit108

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit108: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i99, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i85
  %.sroa.0.1.i94 = phi ptr [ null, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread ], [ %i.cb, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i99 ], [ %i.cc, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i85 ]
  %.not35 = icmp ne ptr %.sroa.0.1.i94, null
  %. = sext i1 %.not35 to i8
  br label %.sink.split

.sink.split:                                      ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit108, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114.thread, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread209, %bb.z, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73, %bb.c, %bb.b, %bb.a
  %.sroa.0.1 = phi i8 [ -1, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ], [ %., %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit108 ], [ -1, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114.thread ], [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73 ], [ 1, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114 ], [ %.sroa.0.2, %bb.z ], [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread209 ]
  ret i8 %.sroa.0.1

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73.thread220: ; preds = %bb.q, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73
  %.pn174228 = phi i64 [ %i.k, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73 ], [ %i.bc, %bb.q ] ; 3 uses
  %i.cd = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73 ], [ false, %bb.q ]
  %.lcssa144158227 = phi i64 [ %.lcssa144159, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73 ], [ %i.ba, %bb.q ]
  %.lcssa152166226 = phi i64 [ %.lcssa152167, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73 ], [ %i.ba, %bb.q ]
  %i.ce = phi i8 [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73 ], [ %i.l, %bb.q ]
  %.sroa.4.1.i58229 = sub nuw i64 %.pn174228, %.lcssa144159 ; 4 uses
  %.sroa.0.1.i59230 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.lcssa144159 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 %.pn217
  %.not.not.not.i.not242 = icmp samesign eq i64 %.lcssa141155, %.pn217
  br i1 %.not.not.not.i.not242, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73.thread220
  %i.cg = phi ptr [ %i.ci, %.lr.ph ], [ %.sroa.0.1.i219, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73.thread220 ] ; 2 uses
  %.val.i109 = load i8, ptr %i.cg, align 1, !noalias !73, !noundef !7
  %i.ch = add i8 %.val.i109, -48
  %.sroa.0.0.i.i.i.i = icmp ult i8 %i.ch, 10      ; 2 uses
  %.sroa.0.0.i.i.i.i.not = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ci, %i.cf
  %or.cond = select i1 %.sroa.0.0.i.i.i.i.not, i1 true, i1 %.not.not.not.i.not
  br i1 %or.cond, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit, label %.lr.ph

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit: ; preds = %.lr.ph, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73.thread220
  %.not.not.not.i.not.lcssa = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit73.thread220 ], [ %.sroa.0.0.i.i.i.i, %.lr.ph ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pn174228
  %.not.not.not.i111.not246 = icmp samesign eq i64 %.lcssa144159, %.pn174228
  br i1 %.not.not.not.i111.not246, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114, label %.lr.ph247

bb.x:                                             ; preds = %.lr.ph247
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  %.not.not.not.i111.not = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.not.not.i111.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114, label %.lr.ph247

.lr.ph247:                                        ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit, %bb.x
  %i.cl = phi ptr [ %i.ck, %bb.x ], [ %.sroa.0.1.i59230, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit ] ; 2 uses
  %.val.i112 = load i8, ptr %i.cl, align 1, !noalias !76, !noundef !7
  %i.cm = add i8 %.val.i112, -58
  %.sroa.0.0.i.i.i.i113 = icmp ult i8 %i.cm, -10
  br i1 %.sroa.0.0.i.i.i.i113, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114.thread, label %bb.x

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114: ; preds = %bb.x, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit
  br i1 %.not.not.not.i.not.lcssa, label %bb.aa, label %.sink.split

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114.thread: ; preds = %.lr.ph247
  br i1 %.not.not.not.i.not.lcssa, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114.thread
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %.sroa.4.1.i218, i64 %.sroa.4.1.i58229)
  %i.cn = tail call i32 @memcmp(ptr nonnull %.sroa.0.1.i219, ptr nonnull %.sroa.0.1.i59230, i64 %spec.store.select) ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp eq i32 %i.cn, 0
  %i.cq = sub i64 %.sroa.4.1.i218, %.sroa.4.1.i58229
  %spec.select = select i1 %i.cp, i64 %i.cq, i64 %i.co
  %i.cr = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.0.2 = phi i8 [ %i.cv, %bb.ab ], [ %i.cs, %bb.aa ], [ %i.cr, %bb.y ] ; 2 uses
  %.not37 = icmp eq i8 %.sroa.0.2, 0
  br i1 %.not37, label %bb.e, label %.sink.split

bb.aa:                                            ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_.exit114
  %i.cs = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.1.i218, i64 %.sroa.4.1.i58229)
  %i.ct = icmp eq i64 %.sroa.4.1.i218, %.sroa.4.1.i58229
  br i1 %i.ct, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.cu = tail call i32 @memcmp(ptr nonnull %.sroa.0.1.i219, ptr nonnull %.sroa.0.1.i59230, i64 %.sroa.4.1.i218), !noalias !79
  %2 = sext i32 %i.cu to i64
  %i.cv = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 0)
  br label %bb.z
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCsfxDLtZq386g_6semver7displayNtB7_13BuildMetadataNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCsfxDLtZq386g_6semver13BuildMetadataNtB6_7Display3fmtBy_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !align !38, !noundef !7
  %i.f = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @21, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs6_NtCsfxDLtZq386g_6semver5implsNtB7_13BuildMetadataNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 5 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 6 uses
  %i.g = tail call { ptr, i64 } @_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 9 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 10 uses
  %.not = icmp eq ptr %i.e, null
  %.not41 = icmp eq ptr %i.h, null
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %bb.b
  %i.j = phi i8 [ %i.cc, %bb.x ], [ 0, %bb.b ]    ; 2 uses
  %.lcssa154170 = phi i64 [ %.lcssa154168227, %bb.x ], [ 0, %bb.b ] ; 4 uses
  %.lcssa150166 = phi i64 [ %.lcssa150164216, %bb.x ], [ 0, %bb.b ] ; 3 uses
  %.lcssa146161 = phi i64 [ %.lcssa146160228, %bb.x ], [ 0, %bb.b ] ; 5 uses
  %i.k = phi i1 [ %i.cb, %bb.x ], [ false, %bb.b ]
  %.lcssa143157 = phi i64 [ %.lcssa143156217, %bb.x ], [ 0, %bb.b ] ; 4 uses
  %i.l = phi i1 [ %i.ah, %bb.x ], [ false, %bb.b ]
  br i1 %i.l, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.f, %.lcssa150166
  br i1 %i.m, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.d, %bb.h
  %i.n = phi i64 [ %i.ac, %bb.h ], [ %.lcssa150166, %bb.d ] ; 5 uses
  %i.o = sub nuw i64 %i.f, %i.n                   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %i.q = icmp samesign ult i64 %i.o, 16
  br i1 %i.q, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %i.r = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.o), !noalias !84
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.o, %bb.f ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.f ], [ 1, %.lr.ph.i.i.i ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.f
  %.sroa.01.05.i.i.i = phi i64 [ %i.x, %bb.f ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.05.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !90, !noalias !84, !noundef !7
  %i.w = icmp eq i8 %i.v, 46
  br i1 %i.w, label %._crit_edge.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.x = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %i.o
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.e
  %.merged.i.i.i = phi { i64, i64 } [ %i.t, %._crit_edge.i.i.i ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.g, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit

bb.g:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.aa = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.ab = add i64 %i.n, 1
  %i.ac = add i64 %i.ab, %i.aa                    ; 5 uses
  %.not12.i.i = icmp ugt i64 %i.ac, %i.f
  %i.ad = add i64 %i.n, %i.aa
  %or.cond.i.i.not = icmp ult i64 %i.ad, %i.f
  br i1 %or.cond.i.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  br i1 %.not12.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit, label %.lr.ph.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = add i64 %i.n, %i.aa                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ae
  %lhsc = load i8, ptr %i.af, align 1
  %i.ag = icmp eq i8 %lhsc, 46
  br i1 %i.ag, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread210, label %bb.h

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit: ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.h, %bb.d
  %.lcssa150165 = phi i64 [ %.lcssa150166, %bb.d ], [ %i.f, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.ac, %bb.h ]
  br i1 %.not, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread210

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread210: ; preds = %bb.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit
  %.pn218 = phi i64 [ %i.f, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ah = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit ], [ false, %bb.i ]
  %.lcssa143156217 = phi i64 [ %.lcssa143157, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit ], [ %i.ac, %bb.i ]
  %.lcssa150164216 = phi i64 [ %.lcssa150165, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit ], [ %i.ac, %bb.i ]
  %.sroa.4.1.i219 = sub nuw i64 %.pn218, %.lcssa143157 ; 4 uses
  %.sroa.0.1.i220 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.lcssa143157 ; 3 uses
  br i1 %i.k, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread210
  %i.ai = icmp ult i64 %i.i, %.lcssa154170
  br i1 %i.ai, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79, label %.lr.ph.split.i.i52

.lr.ph.split.i.i52:                               ; preds = %bb.j, %bb.n
  %i.aj = phi i64 [ %i.ay, %bb.n ], [ %.lcssa154170, %bb.j ] ; 5 uses
  %i.ak = sub nuw i64 %i.i, %i.aj                 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aj ; 2 uses
  %i.am = icmp samesign ult i64 %i.ak, 16
  br i1 %i.am, label %.preheader.i.i.i71, label %bb.k

.preheader.i.i.i71:                               ; preds = %.lr.ph.split.i.i52
  %.not.i.i.i72 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i72, label %._crit_edge.i.i.i76, label %.lr.ph.i.i.i73

bb.k:                                             ; preds = %.lr.ph.split.i.i52
  %i.an = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef range(i64 0, -9223372036854775808) %i.ak), !noalias !93
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i53

._crit_edge.i.i.i76:                              ; preds = %bb.l, %.lr.ph.i.i.i73, %.preheader.i.i.i71
  %.sroa.01.0.lcssa.i.i.i77 = phi i64 [ 0, %.preheader.i.i.i71 ], [ %i.ak, %bb.l ], [ %.sroa.01.05.i.i.i74, %.lr.ph.i.i.i73 ]
  %.sroa.0.1.i.i.i78 = phi i64 [ 0, %.preheader.i.i.i71 ], [ 0, %bb.l ], [ 1, %.lr.ph.i.i.i73 ]
  %i.ao = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i78, 0
  %i.ap = insertvalue { i64, i64 } %i.ao, i64 %.sroa.01.0.lcssa.i.i.i77, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i53

.lr.ph.i.i.i73:                                   ; preds = %.preheader.i.i.i71, %bb.l
  %.sroa.01.05.i.i.i74 = phi i64 [ %i.at, %bb.l ], [ 0, %.preheader.i.i.i71 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.01.05.i.i.i74
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !99, !noalias !93, !noundef !7
  %i.as = icmp eq i8 %i.ar, 46
  br i1 %i.as, label %._crit_edge.i.i.i76, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i73
  %i.at = add nuw nsw i64 %.sroa.01.05.i.i.i74, 1 ; 2 uses
  %exitcond.not.i.i.i75 = icmp eq i64 %i.at, %i.ak
  br i1 %exitcond.not.i.i.i75, label %._crit_edge.i.i.i76, label %.lr.ph.i.i.i73

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i53: ; preds = %._crit_edge.i.i.i76, %bb.k
  %.merged.i.i.i54 = phi { i64, i64 } [ %i.ap, %._crit_edge.i.i.i76 ], [ %i.an, %bb.k ] ; 2 uses
  %i.au = extractvalue { i64, i64 } %.merged.i.i.i54, 0
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.m, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79

bb.m:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i53
  %i.aw = extractvalue { i64, i64 } %.merged.i.i.i54, 1 ; 3 uses
  %i.ax = add i64 %i.aj, 1
  %i.ay = add i64 %i.ax, %i.aw                    ; 5 uses
  %.not12.i.i67 = icmp ugt i64 %i.ay, %i.i
  %i.az = add i64 %i.aj, %i.aw
  %or.cond.i.i68.not = icmp ult i64 %i.az, %i.i
  br i1 %or.cond.i.i68.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  br i1 %.not12.i.i67, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79, label %.lr.ph.split.i.i52

bb.o:                                             ; preds = %bb.m
  %i.ba = add i64 %i.aj, %i.aw                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ba
  %lhsc206 = load i8, ptr %i.bb, align 1
  %i.bc = icmp eq i8 %lhsc206, 46
  br i1 %i.bc, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79.thread221, label %bb.n

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79: ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i53, %bb.n, %bb.j
  %.lcssa154169 = phi i64 [ %.lcssa154170, %bb.j ], [ %i.i, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i53 ], [ %i.ay, %bb.n ]
  br i1 %.not41, label %.sink.split, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79.thread221

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread: ; preds = %bb.c, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit
  %.promoted.i.i83 = phi i64 [ %.lcssa154170, %bb.c ], [ 0, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit ] ; 2 uses
  %.pre.i2.i92 = phi i64 [ %.lcssa146161, %bb.c ], [ 0, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit ] ; 2 uses
  %i.bd = trunc nuw i8 %i.j to i1
  br i1 %i.bd, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit114, label %bb.p

bb.p:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread
  %i.be = icmp ult i64 %i.i, %.promoted.i.i83
  br i1 %i.be, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i91, label %.lr.ph.split.i.i87

.lr.ph.split.i.i87:                               ; preds = %bb.p, %bb.t
  %i.bf = phi i64 [ %i.bu, %bb.t ], [ %.promoted.i.i83, %bb.p ] ; 5 uses
  %i.bg = sub nuw i64 %i.i, %i.bf                 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bf ; 2 uses
  %i.bi = icmp samesign ult i64 %i.bg, 16
  br i1 %i.bi, label %.preheader.i.i.i106, label %bb.q

.preheader.i.i.i106:                              ; preds = %.lr.ph.split.i.i87
  %.not.i.i.i107 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i107, label %._crit_edge.i.i.i111, label %.lr.ph.i.i.i108

bb.q:                                             ; preds = %.lr.ph.split.i.i87
  %i.bj = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef range(i64 0, -9223372036854775808) %i.bg), !noalias !102
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i88

._crit_edge.i.i.i111:                             ; preds = %bb.r, %.lr.ph.i.i.i108, %.preheader.i.i.i106
  %.sroa.01.0.lcssa.i.i.i112 = phi i64 [ 0, %.preheader.i.i.i106 ], [ %i.bg, %bb.r ], [ %.sroa.01.05.i.i.i109, %.lr.ph.i.i.i108 ]
  %.sroa.0.1.i.i.i113 = phi i64 [ 0, %.preheader.i.i.i106 ], [ 0, %bb.r ], [ 1, %.lr.ph.i.i.i108 ]
  %i.bk = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i113, 0
  %i.bl = insertvalue { i64, i64 } %i.bk, i64 %.sroa.01.0.lcssa.i.i.i112, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i88

.lr.ph.i.i.i108:                                  ; preds = %.preheader.i.i.i106, %bb.r
  %.sroa.01.05.i.i.i109 = phi i64 [ %i.bp, %bb.r ], [ 0, %.preheader.i.i.i106 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.01.05.i.i.i109
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !108, !noalias !102, !noundef !7
  %i.bo = icmp eq i8 %i.bn, 46
  br i1 %i.bo, label %._crit_edge.i.i.i111, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i108
  %i.bp = add nuw nsw i64 %.sroa.01.05.i.i.i109, 1 ; 2 uses
  %exitcond.not.i.i.i110 = icmp eq i64 %i.bp, %i.bg
  br i1 %exitcond.not.i.i.i110, label %._crit_edge.i.i.i111, label %.lr.ph.i.i.i108

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i88: ; preds = %._crit_edge.i.i.i111, %bb.q
  %.merged.i.i.i89 = phi { i64, i64 } [ %i.bl, %._crit_edge.i.i.i111 ], [ %i.bj, %bb.q ] ; 2 uses
  %i.bq = extractvalue { i64, i64 } %.merged.i.i.i89, 0
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.s, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i91

bb.s:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i88
  %i.bs = extractvalue { i64, i64 } %.merged.i.i.i89, 1 ; 3 uses
  %i.bt = add i64 %i.bf, 1
  %i.bu = add i64 %i.bt, %i.bs                    ; 2 uses
  %.not12.i.i102 = icmp ugt i64 %i.bu, %i.i
  %i.bv = add i64 %i.bf, %i.bs
  %or.cond.i.i103.not = icmp ult i64 %i.bv, %i.i
  br i1 %or.cond.i.i103.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  br i1 %.not12.i.i102, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i91, label %.lr.ph.split.i.i87

bb.u:                                             ; preds = %bb.s
  %i.bw = getelementptr i8, ptr %i.h, i64 %i.bf
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bs
  %lhsc208 = load i8, ptr %i.bx, align 1
  %i.by = icmp eq i8 %lhsc208, 46
  br i1 %i.by, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i105, label %bb.t

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i105: ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre.i2.i92
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit114

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i91: ; preds = %bb.t, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i88, %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre.i2.i92
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit114

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit114: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i105, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i91
  %.sroa.0.1.i100 = phi ptr [ null, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread ], [ %i.bz, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i105 ], [ %i.ca, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsfxDLtZq386g_6semver.exit.i91 ]
  %.not40 = icmp ne ptr %.sroa.0.1.i100, null
  %. = sext i1 %.not40 to i8
  br label %.sink.split

.sink.split:                                      ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit114, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120.thread, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread210, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79, %bb.x, %bb.a
  %.sroa.0.1 = phi i8 [ 0, %bb.a ], [ %., %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit114 ], [ -1, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120.thread ], [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79 ], [ 1, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120 ], [ %.sroa.0.2, %bb.x ], [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit.thread210 ]
  ret i8 %.sroa.0.1

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79.thread221: ; preds = %bb.o, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79
  %.pn176229 = phi i64 [ %i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79 ], [ %i.ba, %bb.o ] ; 3 uses
  %i.cb = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79 ], [ false, %bb.o ]
  %.lcssa146160228 = phi i64 [ %.lcssa146161, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79 ], [ %i.ay, %bb.o ]
  %.lcssa154168227 = phi i64 [ %.lcssa154169, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79 ], [ %i.ay, %bb.o ]
  %i.cc = phi i8 [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79 ], [ %i.j, %bb.o ]
  %.sroa.4.1.i64230 = sub nuw i64 %.pn176229, %.lcssa146161 ; 4 uses
  %.sroa.0.1.i65231 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.lcssa146161 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pn218
  %.not.not.not.i.not243 = icmp samesign eq i64 %.lcssa143157, %.pn218
  br i1 %.not.not.not.i.not243, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79.thread221
  %i.ce = phi ptr [ %i.cg, %.lr.ph ], [ %.sroa.0.1.i220, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79.thread221 ] ; 2 uses
  %.val.i115 = load i8, ptr %i.ce, align 1, !noalias !111, !noundef !7
  %i.cf = add i8 %.val.i115, -48
  %.sroa.0.0.i.i.i.i = icmp ult i8 %i.cf, 10      ; 2 uses
  %.sroa.0.0.i.i.i.i.not = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.cg, %i.cd
  %or.cond = select i1 %.sroa.0.0.i.i.i.i.not, i1 true, i1 %.not.not.not.i.not
  br i1 %or.cond, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit, label %.lr.ph

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit: ; preds = %.lr.ph, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79.thread221
  %.not.not.not.i.not.lcssa = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver.exit79.thread221 ], [ %.sroa.0.0.i.i.i.i, %.lr.ph ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn176229
  %.not.not.not.i117.not247 = icmp samesign eq i64 %.lcssa146161, %.pn176229
  br i1 %.not.not.not.i117.not247, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120, label %.lr.ph248

bb.v:                                             ; preds = %.lr.ph248
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  %.not.not.not.i117.not = icmp eq ptr %i.ci, %i.ch
  br i1 %.not.not.not.i117.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120, label %.lr.ph248

.lr.ph248:                                        ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit, %bb.v
  %i.cj = phi ptr [ %i.ci, %bb.v ], [ %.sroa.0.1.i65231, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit ] ; 2 uses
  %.val.i118 = load i8, ptr %i.cj, align 1, !noalias !114, !noundef !7
  %i.ck = add i8 %.val.i118, -58
  %.sroa.0.0.i.i.i.i119 = icmp ult i8 %i.ck, -10
  br i1 %.sroa.0.0.i.i.i.i119, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120.thread, label %bb.v

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120: ; preds = %bb.v, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit
  br i1 %.not.not.not.i.not.lcssa, label %bb.y, label %.sink.split

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120.thread: ; preds = %.lr.ph248
  br i1 %.not.not.not.i.not.lcssa, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120.thread
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %.sroa.4.1.i219, i64 %.sroa.4.1.i64230)
  %i.cl = tail call i32 @memcmp(ptr nonnull %.sroa.0.1.i220, ptr nonnull %.sroa.0.1.i65231, i64 %spec.store.select) ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = sub i64 %.sroa.4.1.i219, %.sroa.4.1.i64230
  %spec.select = select i1 %i.cn, i64 %i.co, i64 %i.cm
  %i.cp = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.aa, %bb.w
  %.sroa.0.2 = phi i8 [ %i.db, %bb.ab ], [ %.sroa.0.4, %bb.aa ], [ %i.cp, %bb.w ] ; 2 uses
  %.not42 = icmp eq i8 %.sroa.0.2, 0
  br i1 %.not42, label %bb.c, label %.sink.split

bb.y:                                             ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_.exit120
  %i.cq = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i220, i64 noundef %.sroa.4.1.i219, i32 noundef 48) ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.cq, 1      ; 3 uses
  %i.cs = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i65231, i64 noundef %.sroa.4.1.i64230, i32 noundef 48) ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 1      ; 2 uses
  %i.cu = tail call i8 @llvm.ucmp.i8.i64(i64 %i.cr, i64 %i.ct)
  %i.cv = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = extractvalue { ptr, i64 } %i.cs, 0
  %i.cx = extractvalue { ptr, i64 } %i.cq, 0
  %i.cy = tail call i32 @memcmp(ptr %i.cx, ptr %i.cw, i64 %i.cr)
  %2 = sext i32 %i.cy to i64
  %i.cz = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sroa.0.4 = phi i8 [ %i.cz, %bb.z ], [ %i.cu, %bb.y ] ; 2 uses
  %i.da = icmp eq i8 %.sroa.0.4, 0
  br i1 %i.da, label %bb.ab, label %bb.x

bb.ab:                                            ; preds = %bb.aa
  %i.db = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.1.i219, i64 %.sroa.4.1.i64230)
  br label %bb.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsfxDLtZq386g_6semver5parseNtB6_10VersionReqNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 32) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCsfxDLtZq386g_6semver5parse8wildcard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g)
  %i.h = load i32, ptr %i.d, align 8, !range !117, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  %i.m = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i32 noundef 32) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtCsfxDLtZq386g_6semver5parse11version_req(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %bb.j unwind label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = extractvalue { ptr, i64 } %i.m, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 44, ptr %i.a, align 4
  %i.s = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @22, i64 24, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.sroa.43.0.insert.ext = zext nneg i32 %i.h to i64
  %.sroa.43.0.insert.shift = shl nuw nsw i64 %.sroa.43.0.insert.ext, 32
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.43.0.insert.shift, 9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.insert.insert, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsfxDLtZq386g_6semver10ComparatorEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #12
          to label %common.resume unwind label %bb.p

bb.j:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.b, align 8, !range !118, !noundef !7
  %i.x = trunc nuw i32 %i.w to i1
  br i1 %i.x, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.016.0.copyload = load i64, ptr %i.y, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.016.0.copyload, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsfxDLtZq386g_6semver10ComparatorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsfxDLtZq386g_6semver10ComparatorEEB1a_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsfxDLtZq386g_6semver10ComparatorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.v, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsfxDLtZq386g_6semver10ComparatorEEB1a_.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsfxDLtZq386g_6semver10ComparatorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.ad, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsfxDLtZq386g_6semver10ComparatorEEB1a_.exit, %bb.n
  ret void

bb.p:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsfxDLtZq386g_6semver7displayNtB6_10VersionReqNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.e = icmp ult i64 %i.d, 164703072086692426
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %.idx = mul nuw nsw i64 %i.d, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8, !captures !119
  %.pre32 = load ptr, ptr %i.j, align 8
  %.pre = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCsfxDLtZq386g_6semver10ComparatorNtB6_7Display3fmtBy_, ptr %.sroa.48.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.pre32, ptr noundef nonnull @7, ptr noundef nonnull %i.a)
  br i1 %i.k, label %.loopexit31, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = icmp eq i64 %i.d, 1
  br i1 %i.l, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  br label %.peel.next

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.c, %.loopexit27, %bb.d
  %.sroa.0.0 = phi i1 [ %i.n, %bb.d ], [ true, %.loopexit27 ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCsfxDLtZq386g_6semver10ComparatorNtB6_7Display3fmtBy_, ptr %.sroa.48.0..sroa_idx, align 8
  %i.o = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !7, !align !38, !noundef !7
  %i.q = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @7, ptr noundef nonnull %i.a)
  br i1 %i.q, label %.loopexit31, label %bb.f

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.f
  %.sroa.0.02129 = phi ptr [ %i.r, %bb.f ], [ %i.m, %.peel.next.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.02129, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.02129, ptr %i.b, align 8, !captures !119
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 2)
  br i1 %i.s, label %.loopexit27, label %bb.e

.loopexit31:                                      ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit27

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = icmp eq ptr %i.r, %i.i
  br i1 %i.t, label %.loopexit, label %.peel.next, !llvm.loop !120

.loopexit27:                                      ; preds = %.peel.next, %.loopexit31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsfxDLtZq386g_6semver10ComparatorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsfxDLtZq386g_6semver10ComparatorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsfxDLtZq386g_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtCsfxDLtZq386g_6semver4eval18matches_comparator(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier6as_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtCsfxDLtZq386g_6semver4eval11matches_req(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsfxDLtZq386g_6semver5parse18numeric_identifier(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 5)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsfxDLtZq386g_6semver5parse3dot(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 5)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsfxDLtZq386g_6semver5parse21prerelease_identifier(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsfxDLtZq386g_6semver5parse16build_identifier(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCsfxDLtZq386g_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsfxDLtZq386g_6semver5parse10comparator(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRyNtB6_7Display3fmtCsfxDLtZq386g_6semver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsfxDLtZq386g_6semver5parse8wildcard(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsfxDLtZq386g_6semver5parse11version_req(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver: argument 0"}
!6 = distinct !{!6, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver"}
!7 = !{}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver: argument 0"}
!10 = distinct !{!10, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver: argument 0"}
!13 = distinct !{!13, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver: argument 0"}
!16 = distinct !{!16, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver"}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"_RNvXsx_NtCshzWfHUSfYae_4core5tupleTyyyRNtCsfxDLtZq386g_6semver10PrereleaseENtNtB7_3cmp3Ord3cmpBD_: argument 0"}
!19 = distinct !{!19, !"_RNvXsx_NtCshzWfHUSfYae_4core5tupleTyyyRNtCsfxDLtZq386g_6semver10PrereleaseENtNtB7_3cmp3Ord3cmpBD_"}
!20 = distinct !{!20, !19, !"_RNvXsx_NtCshzWfHUSfYae_4core5tupleTyyyRNtCsfxDLtZq386g_6semver10PrereleaseENtNtB7_3cmp3Ord3cmpBD_: argument 1"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RNvXs1_NtCsfxDLtZq386g_6semver5parseNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str: argument 0"}
!23 = distinct !{!23, !"_RNvXs1_NtCsfxDLtZq386g_6semver5parseNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str"}
!24 = !{!22, !25}
!25 = distinct !{!25, !23, !"_RNvXs1_NtCsfxDLtZq386g_6semver5parseNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str: argument 1"}
!26 = !{!25}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNvXs2_NtCsfxDLtZq386g_6semver5parseNtB7_13BuildMetadataNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str: argument 0"}
!29 = distinct !{!29, !"_RNvXs2_NtCsfxDLtZq386g_6semver5parseNtB7_13BuildMetadataNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str"}
!30 = !{!28, !31}
!31 = distinct !{!31, !29, !"_RNvXs2_NtCsfxDLtZq386g_6semver5parseNtB7_13BuildMetadataNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str: argument 1"}
!32 = !{!31}
!33 = !{i64 0, i64 3}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfxDLtZq386g_6semver: argument 0"}
!36 = distinct !{!36, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfxDLtZq386g_6semver"}
!37 = !{i8 0, i8 8}
!38 = !{i64 8}
!39 = !{i64 0, i64 2}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvXs1_NtCsfxDLtZq386g_6semver7displayNtB7_10PrereleaseNtNtCshzWfHUSfYae_4core3fmt7Display3fmt: argument 1"}
!42 = distinct !{!42, !"_RNvXs1_NtCsfxDLtZq386g_6semver7displayNtB7_10PrereleaseNtNtCshzWfHUSfYae_4core3fmt7Display3fmt"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_RNvXs2_NtCsfxDLtZq386g_6semver7displayNtB7_13BuildMetadataNtNtCshzWfHUSfYae_4core3fmt7Display3fmt: argument 1"}
!45 = distinct !{!45, !"_RNvXs2_NtCsfxDLtZq386g_6semver7displayNtB7_13BuildMetadataNtNtCshzWfHUSfYae_4core3fmt7Display3fmt"}
!46 = !{!47, !49, !50}
!47 = distinct !{!47, !48, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!48 = distinct !{!48, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!49 = distinct !{!49, !48, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!50 = distinct !{!50, !51, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver: argument 0"}
!51 = distinct !{!51, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!54 = distinct !{!54, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!55 = !{!56, !58, !59}
!56 = distinct !{!56, !57, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!57 = distinct !{!57, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!58 = distinct !{!58, !57, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!59 = distinct !{!59, !60, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver: argument 0"}
!60 = distinct !{!60, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!63 = distinct !{!63, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!64 = !{!65, !67, !68}
!65 = distinct !{!65, !66, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!66 = distinct !{!66, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!67 = distinct !{!67, !66, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!68 = distinct !{!68, !69, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver: argument 0"}
!69 = distinct !{!69, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!72 = distinct !{!72, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_: argument 0"}
!75 = distinct !{!75, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_: argument 0"}
!78 = distinct !{!78, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB3v_10PrereleaseNtNtBa_3cmp3Ord3cmps_0E0E0B2j_EB3v_"}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_RNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB9_10PrereleaseNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp0B9_: argument 0"}
!81 = distinct !{!81, !"_RNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtB9_10PrereleaseNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp0B9_"}
!82 = distinct !{!82, !83, !"_RNvYNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtBc_10PrereleaseNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp0INtNtNtBY_3ops8function6FnOnceuE9call_onceBc_: argument 0"}
!83 = distinct !{!83, !"_RNvYNCNvXs5_NtCsfxDLtZq386g_6semver5implsNtBc_10PrereleaseNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp0INtNtNtBY_3ops8function6FnOnceuE9call_onceBc_"}
!84 = !{!85, !87, !88}
!85 = distinct !{!85, !86, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!86 = distinct !{!86, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!87 = distinct !{!87, !86, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!88 = distinct !{!88, !89, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver: argument 0"}
!89 = distinct !{!89, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!92 = distinct !{!92, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!93 = !{!94, !96, !97}
!94 = distinct !{!94, !95, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!95 = distinct !{!95, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!96 = distinct !{!96, !95, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!97 = distinct !{!97, !98, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver: argument 0"}
!98 = distinct !{!98, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!101 = distinct !{!101, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!102 = !{!103, !105, !106}
!103 = distinct !{!103, !104, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!104 = distinct !{!104, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!105 = distinct !{!105, !104, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!106 = distinct !{!106, !107, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver: argument 0"}
!107 = distinct !{!107, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCsfxDLtZq386g_6semver"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!110 = distinct !{!110, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_: argument 0"}
!113 = distinct !{!113, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_: argument 0"}
!116 = distinct !{!116, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvXs6_NtCsfxDLtZq386g_6semver5implsNtB3v_13BuildMetadataNtNtBa_3cmp3Ord3cmp0E0E0B2j_EB3v_"}
!117 = !{i32 -1, i32 1114112}
!118 = !{i32 0, i32 2}
!119 = !{!"address", !"read_provenance"}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
