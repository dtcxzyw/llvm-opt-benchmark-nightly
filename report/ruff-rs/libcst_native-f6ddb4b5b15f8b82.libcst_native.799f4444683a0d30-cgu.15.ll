Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.15?download=true
inline.NumInlined: 407
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECsarohYtwVpE2_13libcst_native:._crit_edge.i.i.i.i.i
  %i.ak = xor i64 %i.ae, 576460752303423488
  %i.al = xor i64 %i.aj, 255
  %i.am = add i64 %i.ak, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ai, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 17)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32)
  %i.bo = add i64 %i.bk, %i.bi
  %i.bp = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13)
  %i.br = xor i64 %i.bq, %i.bo                    ; 3 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bt = xor i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17)
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 21)
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = xor i64 %i.bw, %i.bv
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = xor i64 %i.bz, %i.bu
  ret i64 %i.ca
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvCsarohYtwVpE2_13libcst_native10bol_offset(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, -2                       ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.lr.ph.split.i.preheader, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %i.b to i64
  br label %.split.i

.split.i:                                         ; preds = %_RNvXs1r_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit.i, %.split.preheader.i
  %.lcssa3336 = phi i64 [ %i.t, %_RNvXs1r_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit.i ], [ 0, %.split.preheader.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.x, %_RNvXs1r_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit.i ], [ %i.c, %.split.preheader.i ]
  %i.d = icmp ult i64 %1, %.lcssa3336
  br i1 %i.d, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i, %bb.f
  %i.e = phi i64 [ %i.t, %bb.f ], [ %.lcssa3336, %.split.i ] ; 4 uses
  %i.f = sub nuw i64 %1, %i.e                     ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.e       ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 16
  br i1 %i.h, label %.preheader.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.f), !noalias !206
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.f, %bb.d ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.o, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.05.i.i.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !218, !noalias !206, !noundef !3
  %i.n = icmp eq i8 %i.m, 10
  br i1 %i.n, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.k, %._crit_edge.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.p = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit

bb.e:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.r = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1 ; 3 uses
  %i.s = add i64 %i.e, 1
  %i.t = add i64 %i.s, %i.r                       ; 5 uses
  %.not13.i.i.i.i = icmp ugt i64 %i.t, %1
  %i.u = add i64 %i.r, %i.e
  %or.cond.i.i.i.i.not = icmp ult i64 %i.u, %1
  br i1 %or.cond.i.i.i.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %.not13.i.i.i.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.g, i64 %i.r
  %lhsc = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %lhsc, 10
  br i1 %i.w, label %_RNvXs1r_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit.i, label %bb.f

_RNvXs1r_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit.i: ; preds = %bb.g
  %i.x = add nsw i64 %.sroa.01.0.i, -1            ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit.thread, label %.split.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit.thread: ; preds = %_RNvXs1r_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit.i
  %i.z = icmp ult i64 %1, %i.t
  br i1 %i.z, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.b, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit.thread
  %.ph = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit.thread ]
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.k
  %i.aa = phi i64 [ %i.ap, %bb.k ], [ %.ph, %.lr.ph.split.i.preheader ] ; 4 uses
  %i.ab = sub nuw i64 %1, %i.aa                   ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ab, 16
  br i1 %i.ad, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %.lr.ph.split.i
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ae = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ab), !noalias !221
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i

._crit_edge.i.i:                                  ; preds = %bb.i, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.i ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.i ]
  %i.af = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.i
  %.sroa.01.05.i.i = phi i64 [ %i.ak, %bb.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.05.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !225, !noalias !221, !noundef !3
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ak = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i: ; preds = %._crit_edge.i.i, %bb.h
  %.merged.i.i = phi { i64, i64 } [ %i.ag, %._crit_edge.i.i ], [ %i.ae, %bb.h ] ; 2 uses
  %i.al = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.j, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit

bb.j:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i
  %i.an = extractvalue { i64, i64 } %.merged.i.i, 1 ; 2 uses
  %i.ao = add i64 %i.aa, 1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %.not13.i = icmp ugt i64 %i.ap, %1
  %i.aq = add i64 %i.an, %i.aa                    ; 3 uses
  %or.cond.i.not = icmp ult i64 %i.aq, %1
  br i1 %or.cond.i.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  br i1 %.not13.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit, label %.lr.ph.split.i

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %lhsc23 = load i8, ptr %i.ar, align 1
  %i.as = icmp eq i8 %lhsc23, 10
  br i1 %i.as, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit, label %bb.k

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit: ; preds = %bb.l
  %i.at = add nuw i64 %i.aq, 1
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit: ; preds = %.split.i, %bb.f, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i, %bb.k, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit.thread, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %i.at, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit ], [ %1, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i ], [ %1, %bb.f ], [ %1, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECsarohYtwVpE2_13libcst_native.exit.thread ], [ %1, %bb.k ], [ %1, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %1, %.split.i ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsarohYtwVpE2_13libcst_native12parse_module(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly captures(address, read_provenance) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  %.sroa.52.sroa.7.i = alloca [72 x i8], align 8  ; 6 uses
  %.sroa.5.sroa.7.i = alloca [72 x i8], align 8   ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [288 x i8], align 8               ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.619 = alloca [24 x i8], align 8          ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.889 = alloca [72 x i8], align 8          ; 7 uses
  %.sroa.516.sroa.7 = alloca [72 x i8], align 8   ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 21 uses
  %i.h = alloca [72 x i8], align 8                ; 21 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 12565487, ptr %i.d, align 4
  %.not.i = icmp samesign ult i64 %2, 3
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit.thread, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit: ; preds = %bb.a
  %i.j = load i16, ptr %i.d, align 4
  %i.k = load i16, ptr %1, align 1
  %i.l = xor i16 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.d, i64 2
  %i.n = getelementptr i8, ptr %1, i64 2
  %i.o = load i8, ptr %i.m, align 2
  %i.p = load i8, ptr %i.n, align 1
  %i.q = zext i8 %i.o to i16
  %i.r = zext i8 %i.p to i16
  %i.s = xor i16 %i.q, %i.r
  %i.t = or i16 %i.l, %i.s
  %i.u = icmp ne i16 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit.thread

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit
  %i.x = add i64 %2, -3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit.thread

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit.thread: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit, %bb.a, %bb.b
  %.sroa.6.0 = phi i64 [ %i.x, %bb.b ], [ %2, %bb.a ], [ %2, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.y, %bb.b ], [ %1, %bb.a ], [ %1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !228
  call void @_RNvMs3_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_13TokenIterator3new(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) @16), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !228
  call void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core13TokenIteratorNtBS_5TokenINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtBS_8TokErrorENCINvXso_B27_IB25_INtNtCscdodAO9FK5_5alloc3vec3VecB1T_EB2R_EINtNtNtB4_6traits7collect12FromIteratorIB25_B1T_B2R_EE9from_iterBQ_E0B3o_EBW_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(288) %i.c), !noalias !232
  %i.z = load i64, ptr %i.b, align 8, !range !183, !noalias !228, !noundef !3
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.11.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit.thread
  %.sroa.11.sroa.0.0.copyload = load i64, ptr %i.ab, align 8, !noalias !233
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !228
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ac, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11.sroa.0.0.copyload, ptr %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.d:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native.exit.thread
  %.sroa.6.8.copyload81 = load ptr, ptr %i.ab, align 8, !noalias !233
  %.sroa.10.8.copyload84 = load i64, ptr %.sroa.11.sroa.7.0..sroa_idx, align 8, !noalias !233 ; 2 uses
  %.sroa.11.8..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.11.sroa.0.0.copyload100 = load i64, ptr %.sroa.11.8..sroa_idx85, align 8, !noalias !233 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !228
  store ptr %.sroa.6.8.copyload81, ptr %i.i, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.10.8.copyload84, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.11.sroa.0.0.copyload100, ptr %.sroa.5109.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.cast = inttoptr i64 %.sroa.10.8.copyload84 to ptr
  invoke void @_RNvMs_NtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parserNtB4_6Config3new(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.cast, i64 noundef %.sroa.11.sroa.0.0.copyload100)
          to label %bb.e unwind label %bb.aj

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXNtNtCsarohYtwVpE2_13libcst_native6parser7grammarNtB2_6TokVecINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtB6_9tokenizer4core5TokenEE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.j, %bb.k, %bb.f, %bb.h
  %.pn39 = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ad, %bb.f ], [ %i.aj, %bb.k ], [ %i.aj, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser6ConfigEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.h) #26
          to label %common.resume unwind label %bb.ae

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.889)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  invoke void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python4file(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0, ptr noalias noundef readonly captures(address, read_provenance) %3, i64 %4)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  %i.ae = load i64, ptr %i.a, align 8, !range !240, !noalias !234, !noundef !3 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.52.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !noalias !234
  br i1 %i.af, label %bb.i, label %bb.n

bb.h:                                             ; preds = %bb.g, %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6TokVecEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #26
          to label %.body unwind label %bb.ae

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.52.sroa.7.i, i64 72, i1 false), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.889, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.i, i64 72, i1 false), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.516.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.889, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.889)
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4139.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.516.sroa.7, i64 72, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ai, align 8
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.0.0, ptr %.sroa.5140.0..sroa_idx, align 8
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.6.0, ptr %.sroa.6141.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.sroa.7)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core5TokenEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBY_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.g, align 8, !range !72, !alias.scope !242, !noundef !3 ; 2 uses
  %i.ak = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ak, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val3.i.i = load ptr, ptr %i.al, align 8, !alias.scope !242, !nonnull !3, !noundef !3
  %i.am = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %.body

bb.l:                                             ; preds = %bb.i
  %.val.i.i = load i64, ptr %i.g, align 8, !range !72, !alias.scope !242, !noundef !3 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i, 0
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6TokVecEBH_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !242, !nonnull !3, !noundef !3
  %i.ap = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6TokVecEBH_.exit

bb.n:                                             ; preds = %.noexc
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.520.0.copyload.i = load ptr, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !234
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.621.0.copyload.i = load i64, ptr %.sroa.621.0..sroa_idx.i, align 8, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.52.sroa.7.i, i64 72, i1 false), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.889, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.i, i64 72, i1 false), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.516.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.889, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.889)
  store i64 %i.ae, ptr %i.f, align 8
  %.sroa.516.sroa.7.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.516.sroa.7.0..sroa_idx117, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.516.sroa.7, i64 72, i1 false)
  %.sroa.516.sroa.8.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %.sroa.520.0.copyload.i, ptr %.sroa.516.sroa.8.0..sroa_idx120, align 8
  %.sroa.516.sroa.9.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 %.sroa.621.0.copyload.i, ptr %.sroa.516.sroa.9.0..sroa_idx124, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.sroa.7)
end_hunk_0
