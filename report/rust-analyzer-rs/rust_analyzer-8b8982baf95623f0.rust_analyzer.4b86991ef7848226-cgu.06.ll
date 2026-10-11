Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash:bb.a

_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit: ; preds = %switch.lookup, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sroa.02.0.i = phi ptr [ @157, %bb.i ], [ %switch.load, %switch.lookup ], [ @162, %bb.o ], [ @161, %bb.n ], [ @160, %bb.m ], [ @159, %bb.l ], [ @158, %bb.k ], [ @163, %bb.p ]
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 2)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef 2)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !range !26, !noundef !7 ; 2 uses
  %i.ar = icmp samesign ugt i8 %i.aq, 23
  %i.as = zext nneg i8 %i.aq to i64               ; 2 uses
  %i.at = add nsw i64 %i.as, -23
  %i.au = select i1 %i.ar, i64 %i.at, i64 0
  switch i64 %i.au, label %bb.b [
    i64 0, label %bb.s
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.q:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aw = load i64, ptr %i.av, align 8, !noundef !7
  br label %bb.s

bb.r:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !7
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit, %bb.r, %bb.q
  %.sroa.09.0 = phi i64 [ %i.ay, %bb.r ], [ %i.aw, %bb.q ], [ %i.as, %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit ]
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sroa.09.0)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !noundef !7
  %i.bb = icmp ne i64 %i.ba, -1                   ; 2 uses
  %i.bc = zext i1 %i.bb to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.bc)
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.be = load i64, ptr %i.bd, align 8, !noundef !7 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bf)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.be)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.experimental.noalias.scope.decl(metadata !10634)
  %i.bh = load i16, ptr %i.bg, align 8, !alias.scope !10634, !noalias !10635
  %i.bi = zext i16 %i.bh to i40
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.bk = load i8, ptr %i.bj, align 1, !range !34, !alias.scope !10634, !noalias !10635, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.bm = load i8, ptr %i.bl, align 4, !range !34, !alias.scope !10634, !noalias !10635, !noundef !7
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.bo = load i8, ptr %i.bn, align 1, !range !34, !alias.scope !10634, !noalias !10635, !noundef !7
  %.sroa.014.2.insert.ext.i = zext nneg i8 %i.bk to i40
  %.sroa.014.2.insert.shift.i = shl nuw nsw i40 %.sroa.014.2.insert.ext.i, 16
  %.sroa.014.2.insert.insert.i = or disjoint i40 %.sroa.014.2.insert.shift.i, %i.bi
  %.sroa.014.3.insert.ext.i = zext nneg i8 %i.bm to i40
  %.sroa.014.3.insert.shift.i = shl nuw nsw i40 %.sroa.014.3.insert.ext.i, 24
  %.sroa.014.3.insert.insert.i = or disjoint i40 %.sroa.014.2.insert.insert.i, %.sroa.014.3.insert.shift.i
  %.sroa.014.4.insert.ext.i = zext nneg i8 %i.bo to i40
  %.sroa.014.4.insert.shift.i = shl nuw nsw i40 %.sroa.014.4.insert.ext.i, 32
  %.sroa.014.4.insert.insert.i = or disjoint i40 %.sroa.014.3.insert.insert.i, %.sroa.014.4.insert.shift.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj5_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i40 %.sroa.014.4.insert.insert.i), !noalias !10634
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.bq = load i8, ptr %i.bp, align 1, !range !14, !alias.scope !10634, !noalias !10635, !noundef !7 ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.bq, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i8 1, i8 2
  %switch.selectcmp31.i = icmp eq i8 %i.bq, 2
  %switch.select32.i = select i1 %switch.selectcmp31.i, i8 0, i8 %switch.select.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %switch.select32.i), !noalias !10634
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 162
  %i.bs = load i8, ptr %i.br, align 2, !range !14, !alias.scope !10634, !noalias !10635, !noundef !7 ; 2 uses
  %i.bt = icmp ne i8 %i.bs, 2                     ; 2 uses
  %i.bu = zext i1 %i.bt to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.bu), !noalias !10634
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 163
  %i.bw = load i8, ptr %i.bv, align 1, !range !34, !alias.scope !10634, !noalias !10635, !noundef !7
  %.sroa.420.0.insert.ext.i = zext nneg i8 %i.bs to i16
  %.sroa.420.0.insert.shift.i = shl nuw nsw i16 %.sroa.420.0.insert.ext.i, 8
  %.sroa.019.0.insert.ext.i = zext nneg i8 %i.bw to i16
  %.sroa.019.0.insert.insert.i = or disjoint i16 %.sroa.420.0.insert.shift.i, %.sroa.019.0.insert.ext.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj2_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i16 noundef %.sroa.019.0.insert.insert.i), !noalias !10634
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.by = load i8, ptr %i.bx, align 4, !range !14, !alias.scope !10634, !noalias !10635, !noundef !7 ; 2 uses
  %switch.selectcmp33.i = icmp eq i8 %i.by, 0
  %switch.select34.i = select i1 %switch.selectcmp33.i, i8 1, i8 2
  %switch.selectcmp35.i = icmp eq i8 %i.by, 2
  %switch.select36.i = select i1 %switch.selectcmp35.i, i8 0, i8 %switch.select34.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %switch.select36.i), !noalias !10634
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 165
  %i.ca = load i8, ptr %i.bz, align 1, !range !14, !alias.scope !10634, !noalias !10635, !noundef !7 ; 2 uses
  %i.cb = icmp ne i8 %i.ca, 2                     ; 2 uses
  %i.cc = zext i1 %i.cb to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.cc), !noalias !10634
  br i1 %i.cb, label %bb.x, label %_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 166
  %i.ce = load i8, ptr %i.cd, align 2, !range !34, !alias.scope !10634, !noalias !10635, !noundef !7
  %.sroa.426.0.insert.ext.i = zext nneg i8 %i.ce to i16
  %.sroa.426.0.insert.shift.i = shl nuw nsw i16 %.sroa.426.0.insert.ext.i, 8
  %.sroa.025.0.insert.ext.i = zext nneg i8 %i.ca to i16
  %.sroa.025.0.insert.insert.i = or disjoint i16 %.sroa.426.0.insert.shift.i, %.sroa.025.0.insert.ext.i
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj2_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i16 noundef %.sroa.025.0.insert.insert.i), !noalias !10634
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 167
  %i.cg = load i8, ptr %i.cf, align 1, !range !47, !alias.scope !10634, !noalias !10635, !noundef !7
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.cg), !noalias !10634
  br label %_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit

_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit: ; preds = %bb.w, %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ci = load i8, ptr %i.ch, align 8, !range !20, !noundef !7 ; 2 uses
  %i.cj = icmp ne i8 %i.ci, -1                    ; 2 uses
  %i.ck = zext i1 %i.cj to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.ck)
  br i1 %i.cj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit, %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !10636, !noalias !10637, !noundef !7 ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 1                   ; 2 uses
  %i.cp = load ptr, ptr %i.cl, align 8, !alias.scope !10636, !noalias !10637, !nonnull !7
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !10636, !noalias !10637
  %.sink10.i = select i1 %i.co, i64 %i.cr, i64 %i.cn ; 3 uses
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sink10.i)
  %.sink11.i.i = select i1 %i.co, ptr %i.cp, ptr %i.cl ; 2 uses
  %.idx = shl nuw nsw i64 %.sink10.i, 5
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 %.idx
  %i.ct = icmp eq i64 %.sink10.i, 0
  br i1 %i.ct, label %._crit_edge, label %.lr.ph

bb.z:                                             ; preds = %_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash25hash_completion_relevance.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 172
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.ci)
  %i.cv = load i32, ptr %i.cu, align 4, !noundef !7
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj4_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.cv)
  br label %bb.y

.lr.ph:                                           ; preds = %bb.y, %.lr.ph
  %.sroa.017.047 = phi ptr [ %i.cw, %.lr.ph ], [ %.sink11.i.i, %bb.y ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.017.047, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.017.047, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !7 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  call void @llvm.assume(i1 %i.cz)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.cy)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.017.047)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.017.047, i64 24
  %i.db = load i8, ptr %i.da, align 8, !range !34, !noundef !7
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.db)
  %i.dc = icmp eq ptr %i.cw, %i.cs
  br i1 %i.dc, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @_RNvMCsdI2EeOV5l2N_8tenthashNtB2_8TentHash8finalize(ptr noalias nofree noundef nonnull sret([20 x i8]) align 1 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBN_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBK_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !noalias !10646 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val6.i = load ptr, ptr %i.i, align 8, !noalias !10646, !nonnull !7, !noundef !7
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val7.i = load i64, ptr %i.j, align 8, !noalias !10646, !noundef !7 ; 3 uses
  %i.k = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6.i, i64 noundef %.val7.i), !noalias !10647
  br i1 %i.k, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit, label %bb.b

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit: ; preds = %bb.c
  %6 = extractvalue { ptr, ptr } %i.g, 1          ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread, label %.split

.split:                                           ; preds = %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 %.val7.i
  %i.l = sub nuw i64 %5, %.val7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %6, ptr %i.d, align 8, !captures !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %7, ptr %i.c, align 8, !captures !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.l, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.47.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.n, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @176, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread: ; preds = %bb.b, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit
  call void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %.split, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.712.i.i.i.i.i.i = alloca [12 x i8], align 4 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i.i = alloca [12 x i8], align 4 ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 8 uses
  %i.p = alloca [88 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [208 x i8], align 8               ; 12 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i17.i.i.i.i = alloca [40 x i8], align 8 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.4.i.i.i.i = alloca [224 x i8], align 8   ; 5 uses
  %.sroa.028.i.i.i.i = alloca [56 x i8], align 8  ; 5 uses
  %.sroa.0.i.i.i.i = alloca [72 x i8], align 8    ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.15.i.i.i.i = alloca [16 x i8], align 8   ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [104 x i8], align 8              ; 8 uses
  %i.ae = alloca [96 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.0.i.i.i = alloca [144 x i8], align 8     ; 6 uses
  %i.aj = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.11.i.i = alloca [47 x i8], align 1       ; 4 uses
  %i.ak = alloca [4 x i8], align 4                ; 4 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [4 x i8], align 4                ; 4 uses
  %i.an = alloca [4 x i8], align 4                ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 14 uses
  %i.ap = alloca [152 x i8], align 8              ; 7 uses
  %i.aq = alloca [40 x i8], align 8               ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [88 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [40 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 9 uses
  %i.ay = alloca [88 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 10 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 8 uses
  %i.be = alloca [104 x i8], align 8              ; 8 uses
  %i.bf = alloca [16 x i8], align 4               ; 4 uses
  %i.bg = alloca [104 x i8], align 8              ; 8 uses
  %i.bh = alloca [16 x i8], align 4               ; 4 uses
  %i.bi = alloca [16 x i8], align 4               ; 4 uses
  %i.bj = alloca [16 x i8], align 4               ; 4 uses
  %i.bk = alloca [40 x i8], align 8               ; 14 uses
  %i.bl = alloca [112 x i8], align 8              ; 10 uses
  %i.bm = alloca [24 x i8], align 8               ; 11 uses
  %i.bn = alloca [104 x i8], align 8              ; 10 uses
  %i.bo = alloca [104 x i8], align 8              ; 6 uses
  %.sroa.5983 = alloca [96 x i8], align 8         ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 4 uses
  %i.bq = alloca [40 x i8], align 8               ; 5 uses
  %i.br = alloca [560 x i8], align 8              ; 14 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 9 uses
  %i.bu = alloca [24 x i8], align 8               ; 10 uses
  %i.bv = alloca [40 x i8], align 8               ; 5 uses
  %i.bw = alloca [88 x i8], align 8               ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 4 uses
  %i.by = alloca [16 x i8], align 4               ; 4 uses
  %i.bz = alloca [40 x i8], align 8               ; 11 uses
  %i.ca = alloca [104 x i8], align 8              ; 10 uses
  %i.cb = alloca [24 x i8], align 8               ; 11 uses
  %i.cc = alloca [32 x i8], align 8               ; 8 uses
  %i.cd = alloca [24 x i8], align 8               ; 4 uses
  %i.ce = alloca [24 x i8], align 8               ; 10 uses
  %i.cf = alloca [104 x i8], align 8              ; 9 uses
  %i.cg = alloca [152 x i8], align 8              ; 8 uses
  %i.ch = alloca [152 x i8], align 8              ; 7 uses
  %.sroa.0.i = alloca [144 x i8], align 8         ; 4 uses
  %.sroa.7.i = alloca [7 x i8], align 1           ; 5 uses
  %i.ci = alloca [32 x i8], align 8               ; 7 uses
  %i.cj = alloca [160 x i8], align 8              ; 8 uses
  %i.ck = alloca [160 x i8], align 8              ; 8 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [8 x i8], align 8                ; 4 uses
  %i.cn = alloca [88 x i8], align 8               ; 13 uses
  %i.co = alloca [80 x i8], align 8               ; 4 uses
  %i.cp = alloca [88 x i8], align 8               ; 13 uses
  %i.cq = alloca [80 x i8], align 8               ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 4 uses
  %i.cs = alloca [24 x i8], align 8               ; 4 uses
  %i.ct = alloca [88 x i8], align 8               ; 13 uses
  %i.cu = alloca [88 x i8], align 8               ; 13 uses
  %i.cv = alloca [88 x i8], align 8               ; 13 uses
  %i.cw = alloca [104 x i8], align 8              ; 4 uses
  %i.cx = alloca [128 x i8], align 8              ; 5 uses
  %i.cy = alloca [24 x i8], align 8               ; 4 uses
  %i.cz = alloca [32 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 7 uses
  %i.db = alloca [88 x i8], align 8               ; 11 uses
  %i.dc = alloca [24 x i8], align 8               ; 11 uses
  %i.dd = alloca [16 x i8], align 4               ; 4 uses
  %.sroa.058.sroa.0.sroa.0 = alloca [144 x i8], align 8 ; 6 uses
  %i.de = alloca [88 x i8], align 8               ; 18 uses
  %i.df = alloca [408 x i8], align 8              ; 15 uses
  %i.dg = alloca [104 x i8], align 8              ; 5 uses
  %i.dh = alloca [128 x i8], align 8              ; 19 uses
  %i.di = alloca [72 x i8], align 8               ; 6 uses
  %i.dj = alloca [72 x i8], align 8               ; 4 uses
  %i.dk = alloca [24 x i8], align 8               ; 7 uses
  %i.dl = alloca [72 x i8], align 8               ; 5 uses
  %i.dm = alloca [72 x i8], align 8               ; 11 uses
  %i.dn = alloca [24 x i8], align 8               ; 8 uses
  %i.do = alloca [32 x i8], align 8               ; 7 uses
  %i.dp = alloca [24 x i8], align 8               ; 9 uses
  %i.dq = alloca [24 x i8], align 8               ; 6 uses
  %i.dr = alloca [32 x i8], align 8               ; 5 uses
  %i.ds = alloca [24 x i8], align 8               ; 7 uses
  %i.dt = alloca [88 x i8], align 8               ; 6 uses
  %i.du = alloca [24 x i8], align 8               ; 8 uses
  %i.dv = alloca [16 x i8], align 4               ; 4 uses
  %.sroa.046 = alloca [304 x i8], align 8         ; 11 uses
  %i.dw = alloca [88 x i8], align 8               ; 14 uses
  %i.dx = alloca [408 x i8], align 8              ; 8 uses
  %i.dy = alloca [408 x i8], align 8              ; 8 uses
  %i.dz = alloca [72 x i8], align 8               ; 6 uses
  %i.ea = alloca [72 x i8], align 8               ; 4 uses
  %i.eb = alloca [24 x i8], align 8               ; 7 uses
  %i.ec = alloca [72 x i8], align 8               ; 5 uses
  %i.ed = alloca [72 x i8], align 8               ; 11 uses
  %i.ee = alloca [24 x i8], align 8               ; 11 uses
  %i.ef = alloca [24 x i8], align 8               ; 10 uses
  %i.eg = alloca [32 x i8], align 8               ; 12 uses
  %i.eh = alloca [24 x i8], align 8               ; 10 uses
  %i.ei = alloca [88 x i8], align 8               ; 11 uses
  %i.ej = alloca [24 x i8], align 8               ; 11 uses
  %i.ek = alloca [16 x i8], align 4               ; 4 uses
  %.sroa.039 = alloca [304 x i8], align 8         ; 11 uses
  %i.el = alloca [104 x i8], align 8              ; 10 uses
  %i.em = alloca [24 x i8], align 8               ; 9 uses
  %i.en = alloca [104 x i8], align 8              ; 10 uses
  %i.eo = alloca [128 x i8], align 8              ; 8 uses
  %i.ep = alloca [104 x i8], align 8              ; 26 uses
  %i.eq = alloca [24 x i8], align 8               ; 13 uses
  %i.er = alloca [16 x i8], align 8               ; 5 uses
  %i.es = alloca [8 x i8], align 8                ; 4 uses
  %i.et = alloca [24 x i8], align 8               ; 6 uses
  %i.eu = alloca [32 x i8], align 8               ; 13 uses
  %i.ev = alloca [104 x i8], align 8              ; 25 uses
  %i.ew = alloca [152 x i8], align 8              ; 9 uses
  %i.ex = alloca [152 x i8], align 8              ; 6 uses
  %i.ey = alloca [176 x i8], align 8              ; 13 uses
  %i.ez = alloca [24 x i8], align 8               ; 15 uses
  %i.fa = alloca [88 x i8], align 8               ; 36 uses
  %i.fb = alloca [24 x i8], align 8               ; 14 uses
  %i.fc = alloca [16 x i8], align 8               ; 5 uses
  %i.fd = alloca [24 x i8], align 8               ; 9 uses
  %i.fe = alloca [136 x i8], align 8              ; 8 uses
  %.sroa.6861 = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.8863 = alloca [96 x i8], align 8         ; 4 uses
  %i.ff = alloca [136 x i8], align 8              ; 9 uses
  %.sroa.6852 = alloca [96 x i8], align 8         ; 4 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  %i.fg = alloca [152 x i8], align 8              ; 18 uses
  %i.fh = alloca [152 x i8], align 8              ; 7 uses
  %i.fi = alloca [176 x i8], align 8              ; 11 uses
  %i.fj = alloca [24 x i8], align 8               ; 15 uses
  %i.fk = alloca [128 x i8], align 8              ; 8 uses
  %i.fl = alloca [32 x i8], align 8               ; 7 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsp:bb.a
  %.sroa.4207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.5208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.aia = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aib = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.aic = getelementptr inbounds nuw i8, ptr %i.dh, i64 42
  %i.aid = getelementptr inbounds nuw i8, ptr %i.dh, i64 60
  %i.aie = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.aif = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.aig = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.aih = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.aii = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.aij = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.aik = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  %i.ail = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.aim = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ain = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aio = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aip = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.air = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.ais = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %.sroa.058.sroa.0.sroa.0.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.058.sroa.0.sroa.0, i64 88
  %.sroa.058.sroa.0.sroa.0.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.058.sroa.0.sroa.0, i64 112
  %i.ait = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  %.sroa.058.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 232
  %.sroa.058.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 256
  %.sroa.058.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 264
  %.sroa.058.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 272
  %.sroa.058.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 280
  %.sroa.058.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 304
  %.sroa.058.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 376
  %.sroa.1159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 392
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.df, i64 400
  br label %bb.jg

.body388:                                         ; preds = %bb.yd, %bb.yc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto20MappedRustDiagnosticEEB1e_.exit, %bb.xa, %bb.xb, %bb.ia, %bb.hz, %.body.i.i381, %bb.iv, %.body.i.i392, %bb.il, %bb.im
  %.sroa.080.4 = phi i1 [ false, %bb.xa ], [ true, %.body.i.i381 ], [ true, %bb.ia ], [ true, %bb.hz ], [ true, %.body.i.i392 ], [ true, %bb.im ], [ true, %bb.il ], [ true, %bb.iv ], [ false, %bb.xb ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto20MappedRustDiagnosticEEB1e_.exit ], [ false, %bb.yc ], [ false, %bb.yd ] ; 2 uses
  %.pn288 = phi { ptr, i32 } [ %i.bdr, %bb.xa ], [ %i.aaz, %.body.i.i381 ], [ %i.abc, %bb.ia ], [ %i.abc, %bb.hz ], [ %i.abx, %.body.i.i392 ], [ %i.aca, %bb.im ], [ %i.aca, %bb.il ], [ %i.aja, %bb.iv ], [ %i.bdr, %bb.xb ], [ %.pn286, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto20MappedRustDiagnosticEEB1e_.exit ], [ %.pn286, %bb.yc ], [ %.pn286, %bb.yd ] ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %bb.it unwind label %bb.ir

bb.ir:                                            ; preds = %.body388
  %i.aiv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i408 = load i64, ptr %i.fb, align 8, !alias.scope !11758 ; 2 uses
  %i.aiw = icmp eq i64 %.val2.i.i408, 0
  br i1 %i.aiw, label %.body313, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aix = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.val3.i.i409 = load ptr, ptr %i.aix, align 8, !alias.scope !11759, !nonnull !7, !noundef !7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i409, i64 noundef %.val2.i.i408, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11760
  br label %.body313

bb.it:                                            ; preds = %.body388
  %.val.i.i411 = load i64, ptr %i.fb, align 8, !alias.scope !11758 ; 2 uses
  %i.aiy = icmp eq i64 %.val.i.i411, 0
  br i1 %i.aiy, label %.body323, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.val1.i.i412 = load ptr, ptr %i.aiz, align 8, !alias.scope !11759, !nonnull !7, !noundef !7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i412, i64 noundef %.val.i.i411, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11761
  br label %.body323

bb.iv:                                            ; preds = %bb.ih, %bb.hv, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeQNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1o_3all5checkcNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto22rustc_code_description00E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2C_.exit.i.i.i
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %.body388

.body434:                                         ; preds = %.loopexit.i444, %bb.ja
  %.pn286 = phi { ptr, i32 } [ %.pn280.pn.pn.pn.pn, %.loopexit.i444 ], [ %i.ajg, %bb.ja ] ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto20MappedRustDiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %bb.iy unwind label %bb.iw

bb.iw:                                            ; preds = %.body434
  %i.ajb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i416 = load i64, ptr %i.ez, align 8, !alias.scope !11762 ; 2 uses
  %i.ajc = icmp eq i64 %.val2.i416, 0
  br i1 %i.ajc, label %.body313, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.val3.i417 = load ptr, ptr %i.ace, align 8, !alias.scope !11763, !nonnull !7, !noundef !7
  %i.ajd = mul nuw i64 %.val2.i416, 408
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i417, i64 noundef %i.ajd, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !11764
  br label %.body313

bb.iy:                                            ; preds = %.body434
  %.val.i418 = load i64, ptr %i.ez, align 8, !alias.scope !11762 ; 2 uses
  %i.aje = icmp eq i64 %.val.i418, 0
  br i1 %i.aje, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto20MappedRustDiagnosticEEB1e_.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %.val1.i419 = load ptr, ptr %i.ace, align 8, !alias.scope !11763, !nonnull !7, !noundef !7
  %i.ajf = mul nuw i64 %.val.i418, 408
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i419, i64 noundef %i.ajf, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !11765
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto20MappedRustDiagnosticEEB1e_.exit

bb.ja:                                            ; preds = %.loopexit.i432
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  br label %.body434

.loopexit.i432:                                   ; preds = %bb.rv, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto22rustc_code_description.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.ey)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer.exit436 unwind label %bb.ja

bb.jb:                                            ; preds = %.body463, %bb.jf
  %.pn280.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn280.pn.pn.pn, %.body463 ], [ %i.ajs, %bb.jf ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11766)
  call void @llvm.experimental.noalias.scope.decl(metadata !11767)
  %i.ajh = load i64, ptr %.sroa.5868.0..sroa_idx, align 8, !alias.scope !11768, !noundef !7 ; 2 uses
  %.promoted.i.i437 = load i64, ptr %.sroa.4867.0..sroa_idx, align 8, !alias.scope !11768 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !11768
  %i.aji = icmp eq i64 %.promoted.i.i437, %i.ajh
  br i1 %i.aji, label %.loopexit.i444, label %.lr.ph.i.i438

.lr.ph.i.i438:                                    ; preds = %bb.jb
  %i.ajj = load i64, ptr %i.ey, align 8, !alias.scope !11769, !noalias !11770, !noundef !7
  %i.ajk = icmp ugt i64 %i.ajj, 1
  %i.ajl = load ptr, ptr %.sroa.0866.sroa.4.0..sroa_idx, align 8, !alias.scope !11769, !noalias !11770, !nonnull !7
  %.sink11.i.i.i439 = select i1 %i.ajk, ptr %i.ajl, ptr %.sroa.0866.sroa.4.0..sroa_idx
  br label %bb.jc

bb.jc:                                            ; preds = %.noexc.i443, %.lr.ph.i.i438
  %i.ajm = phi i64 [ %.promoted.i.i437, %.lr.ph.i.i438 ], [ %i.ajn, %.noexc.i443 ] ; 2 uses
  %i.ajn = add i64 %i.ajm, 1                      ; 3 uses
  store i64 %i.ajn, ptr %.sroa.4867.0..sroa_idx, align 8, !alias.scope !11768
  %i.ajo = getelementptr inbounds nuw [152 x i8], ptr %.sink11.i.i.i439, i64 %i.ajm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ap, ptr noundef nonnull align 8 dereferenceable(152) %i.ajo, i64 152, i1 false)
  %.pr.i.i440 = load i64, ptr %i.ap, align 8, !noalias !11768
  %.not.i.i441 = icmp eq i64 %.pr.i.i440, -1
  br i1 %.not.i.i441, label %.loopexit.i444, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i442

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i442: ; preds = %bb.jc
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ap)
          to label %.noexc.i443 unwind label %bb.jd, !noalias !11766

.noexc.i443:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !11768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !11768
  %i.ajp = icmp eq i64 %i.ajn, %i.ajh
  br i1 %i.ajp, label %.loopexit.i444, label %bb.jc

bb.jd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i442
  %i.ajq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.ey) #44
          to label %.body313 unwind label %bb.je

.loopexit.i444:                                   ; preds = %.noexc.i443, %bb.jc, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !11768
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.ey)
          to label %.body434 unwind label %bb.cv

bb.je:                                            ; preds = %bb.jd
  %i.ajr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.jf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit570
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.jg:                                            ; preds = %.lr.ph1577, %bb.rv
  %i.ajt = phi i64 [ 0, %.lr.ph1577 ], [ %i.awn, %bb.rv ] ; 2 uses
  %i.aju = add i64 %i.ajt, 1
  store i64 %i.aju, ptr %.sroa.4867.0..sroa_idx, align 8
  %i.ajv = load i64, ptr %i.ey, align 8, !alias.scope !11771, !noalias !11772, !noundef !7
  %i.ajw = icmp ugt i64 %i.ajv, 1
  %i.ajx = load ptr, ptr %.sroa.0866.sroa.4.0..sroa_idx, align 8, !alias.scope !11771, !noalias !11772, !nonnull !7
  %.sink11.i422 = select i1 %i.ajw, ptr %i.ajx, ptr %.sroa.0866.sroa.4.0..sroa_idx
  %i.ajy = getelementptr inbounds nuw [152 x i8], ptr %.sink11.i422, i64 %i.ajt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ex, ptr noundef nonnull align 8 dereferenceable(152) %i.ajy, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ew, ptr noundef nonnull align 8 dereferenceable(152) %i.ex, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  br label %bb.jh

bb.jh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.jg
  %.sroa.013.019.i = phi ptr [ %i.ew, %bb.jg ], [ %i.aka, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i ] ; 4 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 128
  %i.aka = load ptr, ptr %i.ajz, align 8, !noalias !11773, !align !13, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !11774
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %i.akc = load ptr, ptr %i.akb, align 8, !noalias !11775, !nonnull !7, !noundef !7 ; 3 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 16 ; 2 uses
  %i.ake = load i64, ptr %i.akd, align 8, !noalias !11775, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11776
  invoke void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBN_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.acj)
          to label %.noexc829.a unwind label %.loopexit.split-lp.loopexit

.noexc829.a:                                      ; preds = %bb.jh, %.noexc831
  %i.akf = invoke { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBK_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.noexc830.a unwind label %.loopexit1157 ; 2 uses

.noexc830.a:                                      ; preds = %.noexc829.a
  %i.akg = extractvalue { ptr, ptr } %i.akf, 0    ; 3 uses
  %.not.i.i827 = icmp eq ptr %i.akg, null
  br i1 %.not.i.i827, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread.i, label %bb.ji

bb.ji:                                            ; preds = %.noexc830.a
  %i.akh = getelementptr i8, ptr %i.akg, i64 8
  %.val6.i.i = load ptr, ptr %i.akh, align 8, !noalias !11777, !nonnull !7, !noundef !7
  %i.aki = getelementptr i8, ptr %i.akg, i64 16
  %.val7.i.i = load i64, ptr %i.aki, align 8, !noalias !11777, !noundef !7 ; 3 uses
  %i.akj = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akc, i64 noundef %i.ake, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6.i.i, i64 noundef %.val7.i.i)
          to label %.noexc831 unwind label %.loopexit1157

.noexc831:                                        ; preds = %bb.ji
  br i1 %i.akj, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.i, label %.noexc829.a

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.i: ; preds = %.noexc831
  %6 = extractvalue { ptr, ptr } %i.akf, 1        ; 2 uses
  %.not.i828 = icmp eq ptr %6, null
  br i1 %.not.i828, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread.i, label %.split.i

.split.i:                                         ; preds = %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.i
  %7 = getelementptr inbounds nuw i8, ptr %i.akc, i64 %.val7.i.i
  %i.akk = sub nuw i64 %i.ake, %.val7.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11776
  store ptr %6, ptr %i.d, align 8, !noalias !11776, !captures !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11776
  store ptr %7, ptr %i.c, align 8, !noalias !11776, !captures !53
  store i64 %i.akk, ptr %i.ack, align 8, !noalias !11776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11776
  store ptr %i.d, ptr %i.a, align 8, !noalias !11776
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !11776
  store ptr %i.c, ptr %i.acl, align 8, !noalias !11776
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !11776
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @176, ptr noundef nonnull %i.a)
          to label %.noexc832.a unwind label %.loopexit.split-lp.loopexit

.noexc832.a:                                      ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11776
  invoke void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc833 unwind label %.loopexit.split-lp.loopexit

.noexc833:                                        ; preds = %.noexc832.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11776
  br label %.noexc461

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread.i: ; preds = %.noexc830.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.i
  invoke void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akc, i64 noundef %i.ake)
          to label %.noexc461 unwind label %.loopexit.split-lp.loopexit

.noexc461:                                        ; preds = %.noexc833, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.akl = load ptr, ptr %i.akb, align 8, !noalias !11775, !nonnull !7, !noundef !7 ; 2 uses
  %i.akm = load i64, ptr %i.akd, align 8, !noalias !11775, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !11778
  store i32 60, ptr %i.an, align 4, !noalias !11778
  %i.akn = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akl, i64 noundef %i.akm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 1)
          to label %.noexc.i454 unwind label %.loopexit.i449, !noalias !11779

.noexc.i454:                                      ; preds = %.noexc461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !11778
  br i1 %i.akn, label %bb.jj, label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i

bb.jj:                                            ; preds = %.noexc.i454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !11778
  store i32 62, ptr %i.am, align 4, !noalias !11778
  %i.ako = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akl, i64 noundef %i.akm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 1)
          to label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.i unwind label %.loopexit.i449, !noalias !11779

.preheader.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i, %.preheader.i
  %.sroa.0.013.i.i = phi ptr [ %i.akq, %.preheader.i ], [ %i.ew, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i ] ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i, i64 128
  %i.akq = load ptr, ptr %i.akp, align 8, !noalias !11780, !align !13, !noundef !7 ; 2 uses
  %.not.i.i.i458 = icmp eq ptr %i.akq, null
  br i1 %.not.i.i.i458, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB3y_4last4someB16_EEB2f_.exit.i, label %.preheader.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB3y_4last4someB16_EEB2f_.exit.i: ; preds = %.preheader.i
  invoke fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto8location(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.0.013.i.i, ptr noundef nonnull readonly align 8 %5)
          to label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.i449:                                   ; preds = %bb.jl, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i, %bb.jj, %.noexc461
  %lpad.loopexit.i450 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

.loopexit.split-lp.i459:                          ; preds = %bb.jn
  %lpad.loopexit.split-lp.i460 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jk:                                            ; preds = %.loopexit.split-lp.i459, %.loopexit.i449
  %lpad.phi.i451 = phi { ptr, i32 } [ %lpad.loopexit.i450, %.loopexit.i449 ], [ %lpad.loopexit.split-lp.i460, %.loopexit.split-lp.i459 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #44
          to label %.body463 unwind label %bb.jw, !noalias !11779

_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.i: ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !11778
  br i1 %i.ako, label %bb.jo, label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i

_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i: ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.i, %.noexc.i454
  %i.akr = invoke { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %bb.jl unwind label %.loopexit.i449, !noalias !11779 ; 2 uses

bb.jl:                                            ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i
  %i.aks = extractvalue { ptr, i64 } %i.akr, 0
  %i.akt = extractvalue { ptr, i64 } %i.akr, 1
  %i.aku = invoke noundef zeroext i1 @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath11starts_with(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aks, i64 noundef %i.akt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.jm unwind label %.loopexit.i449, !noalias !11779

bb.jm:                                            ; preds = %bb.jl
  br i1 %i.aku, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  invoke fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto8location(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.013.019.i, ptr noundef nonnull readonly align 8 %5)
          to label %bb.js unwind label %.loopexit.split-lp.i459

bb.jo:                                            ; preds = %bb.jm, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.jq unwind label %bb.jp, !noalias !11779

bb.jp:                                            ; preds = %bb.jo
  %i.akv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !11781, !noalias !11774 ; 2 uses
  %i.akw = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.akw, label %.body463, label %common.resume.sink.split.i455

bb.jq:                                            ; preds = %bb.jo
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !11781, !noalias !11774 ; 2 uses
  %i.akx = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.akx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.aci, align 8, !alias.scope !11782, !noalias !11774, !nonnull !7, !noundef !7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11783
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i

common.resume.sink.split.i455:                    ; preds = %bb.jt, %bb.jp
  %.val2.i.i.i.i.i.i7.sink.i = phi i64 [ %.val2.i.i.i.i.i.i7.i, %bb.jt ], [ %.val2.i.i.i.i.i.i.i, %bb.jp ]
  %common.resume.op.ph.i456 = phi { ptr, i32 } [ %i.aky, %bb.jt ], [ %i.akv, %bb.jp ]
  %.val3.i.i.i.i.i.i8.i = load ptr, ptr %i.aci, align 8, !noalias !11774, !nonnull !7, !noundef !7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i8.i, i64 noundef %.val2.i.i.i.i.i.i7.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11779
  br label %.body463

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.jr, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !11774
  %.not.i.i457 = icmp eq ptr %i.aka, null
  br i1 %.not.i.i457, label %.preheader.i, label %bb.jh

bb.js:                                            ; preds = %bb.jn
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.ju unwind label %bb.jt, !noalias !11779

bb.jt:                                            ; preds = %bb.js
  %i.aky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i7.i = load i64, ptr %i.ao, align 8, !alias.scope !11784, !noalias !11774 ; 2 uses
  %i.akz = icmp eq i64 %.val2.i.i.i.i.i.i7.i, 0
  br i1 %i.akz, label %.body463, label %common.resume.sink.split.i455

bb.ju:                                            ; preds = %bb.js
  %.val.i.i.i.i.i.i10.i = load i64, ptr %i.ao, align 8, !alias.scope !11784, !noalias !11774 ; 2 uses
  %i.ala = icmp eq i64 %.val.i.i.i.i.i.i10.i, 0
  br i1 %i.ala, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit12.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %.val1.i.i.i.i.i.i11.i = load ptr, ptr %i.aci, align 8, !alias.scope !11785, !noalias !11774, !nonnull !7, !noundef !7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i11.i, i64 noundef %.val.i.i.i.i.i.i10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11786
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit12.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit12.i: ; preds = %bb.jv, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !11774
  br label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit

bb.jw:                                            ; preds = %bb.jk
  %i.alb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !11779
  unreachable

.body463:                                         ; preds = %.loopexit1157, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.rr, %bb.rs, %bb.wy, %bb.wx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors7MessageECs6u1mgJOKDyY_13rust_analyzer.exit729, %bb.jt, %common.resume.sink.split.i455, %bb.jp, %bb.jk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit.thread
  %.pn280.pn.pn.pn = phi { ptr, i32 } [ %.pn280, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors7MessageECs6u1mgJOKDyY_13rust_analyzer.exit729 ], [ %.pn280, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit.thread ], [ %i.awi, %bb.rs ], [ %i.aky, %bb.jt ], [ %i.akv, %bb.jp ], [ %lpad.phi.i451, %bb.jk ], [ %common.resume.op.ph.i456, %common.resume.sink.split.i455 ], [ %.pn280.pn.pn1004, %bb.wx ], [ %.pn280.pn.pn1004, %bb.wy ], [ %i.awi, %bb.rr ], [ %lpad.loopexit, %.loopexit1157 ], [ %lpad.loopexit1174, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1175, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(152) %i.ew) #44
          to label %bb.jb unwind label %bb.cv

.loopexit1157:                                    ; preds = %.noexc829.a, %bb.ji
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body463

.loopexit.split-lp.loopexit:                      ; preds = %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread.i, %.noexc832.a, %.split.i, %bb.jh
  %lpad.loopexit1174 = landingpad { ptr, i32 }
          cleanup
  br label %.body463

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB3y_4last4someB16_EEB2f_.exit.i
  %lpad.loopexit.split-lp1175 = landingpad { ptr, i32 }
          cleanup
  br label %.body463

_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit12.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB3y_4last4someB16_EEB2f_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.et, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.jy unwind label %bb.jx

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit
  br i1 %.sroa.078.1, label %.thread1001, label %.body463

bb.jx:                                            ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit
  %i.alc = landingpad { ptr, i32 }
          cleanup
  br label %.thread1001

bb.jy:                                            ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit
  %i.ald = load i64, ptr %i.acm, align 8, !range !16
  %.not226 = icmp ne i64 %i.ald, -1
  %or.cond.not = select i1 %.sroa.028.0.lcssa, i1 %.not226, i1 false
  br i1 %or.cond.not, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.kc, %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink1.i713.sroa.gep, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  store i64 -1, ptr %i.eu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i64 0, ptr %i.eq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.acn, align 8
  store i64 0, ptr %i.aco, align 8
  br label %.backedge

bb.ka:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store ptr %i.acm, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store ptr %i.es, ptr %i.er, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.4106.0..sroa_idx, align 8
  %i.ale = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @182, ptr noundef nonnull @181, ptr noundef nonnull %i.er)
          to label %bb.kc unwind label %bb.kb     ; 0 uses

bb.kb:                                            ; preds = %bb.ka
  %i.alf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et) #44
          to label %.thread1001 unwind label %bb.cv

bb.kc:                                            ; preds = %bb.ka
end_hunk_1
