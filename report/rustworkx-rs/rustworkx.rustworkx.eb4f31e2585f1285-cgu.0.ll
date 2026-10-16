Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_:bb.a
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit
  %.sroa.011.0.i.i.i.i7 = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit ], [ %i.bp, %bb.h ]
  %.pn.i.i.i8 = phi i64 [ %i.au, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit ], [ %i.bq, %bb.h ]
  %.sroa.01.0.i.i.i.i9 = and i64 %.pn.i.i.i8, %i.q ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i9
  %.sroa.0.0.copyload.i24.i.i.i10 = load <16 x i8>, ptr %i.az, align 1, !noalias !53768 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not30.i.i.i11 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not30.i.i.i11, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.f, %bb.g
  %.sroa.05.0.i31.i.i.i13 = phi i16 [ %i.bo, %bb.g ], [ %i.bb, %bb.f ] ; 3 uses
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i.i9, %i.bd
  %i.bf = and i64 %i.be, %i.q
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %.val2.i.i.i.i14 = load i32, ptr %i.bi, align 4, !noalias !53769, !noundef !56
  %i.bj = icmp eq i32 %.0.val3, %.val2.i.i.i.i14
  br i1 %i.bj, label %bb.i, label %bb.g, !prof !66

._crit_edge.i.i.i16:                              ; preds = %bb.g, %bb.f
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_RNvXs_NtCslwFuT2d6ECx_4core3cmpINtB4_7ReverseINtNtB6_6option6OptionRjEENtB4_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit, !prof !60

bb.g:                                             ; preds = %.lr.ph.i.i.i12
  %i.bn = add i16 %.sroa.05.0.i31.i.i.i13, -1
  %i.bo = and i16 %i.bn, %.sroa.05.0.i31.i.i.i13  ; 2 uses
  %.not.i.not.i.i.i15 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not.i.i.i15, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

bb.h:                                             ; preds = %._crit_edge.i.i.i16
  %i.bp = add i64 %.sroa.011.0.i.i.i.i7, 16       ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i9, %i.bp
  br label %bb.f

bb.i:                                             ; preds = %.lr.ph.i.i.i12
  br i1 %.not.i.i, label %bb.j, label %_RNvXs_NtCslwFuT2d6ECx_4core3cmpINtB4_7ReverseINtNtB6_6option6OptionRjEENtB4_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.br, align 8, !noundef !56
  %.val1.i.i.i.i = load i64, ptr %i.an, align 8, !noundef !56
  %i.bs = icmp ult i64 %.val.i.i.i.i, %.val1.i.i.i.i
  br label %_RNvXs_NtCslwFuT2d6ECx_4core3cmpINtB4_7ReverseINtNtB6_6option6OptionRjEENtB4_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

_RNvXs_NtCslwFuT2d6ECx_4core3cmpINtB4_7ReverseINtNtB6_6option6OptionRjEENtB4_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i.i16, %bb.a, %bb.i, %bb.j
  %.sroa.0.0.i.i.i = phi i1 [ %i.bs, %bb.j ], [ false, %bb.i ], [ false, %bb.a ], [ %.not.i.i, %._crit_edge.i.i.i16 ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx(ptr nofree readonly captures(none) %.0.val, i32 %.0.val1, i32 %.0.val3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val4 = load ptr, ptr %.0.val, align 8, !nonnull !56, !align !82, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53797)
  %i.a = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !53797, !noundef !56
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !53798, !noundef !56 ; 2 uses
  %i.e = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !53799, !noundef !56
  %i.f = zext i32 %.0.val1 to i64
  %i.g = xor i64 %.val.i.i, %i.f
  %i.h = zext i64 %i.g to i128
  %i.i = zext i64 %i.e to i128                    ; 2 uses
  %i.j = mul nuw i128 %i.i, %i.h                  ; 2 uses
  %i.k = lshr i128 %i.j, 64
  %i.l = xor i128 %i.k, %i.j
  %i.m = trunc i128 %i.l to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53801)
  %i.n = lshr i64 %i.m, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !53802, !noundef !56 ; 4 uses
  %i.r = load ptr, ptr %.val4, align 8, !alias.scope !53802, !nonnull !56, !noundef !56 ; 4 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.m, %bb.b ], [ %i.al, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.q  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !53803 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.q
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %.val2.i.i.i.i = load i32, ptr %i.ad, align 4, !noalias !53804, !noundef !56
  %i.ae = icmp eq i32 %.0.val1, %.val2.i.i.i.i
  br i1 %i.ae, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit, label %bb.d, !prof !66

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit, !prof !60

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  br label %bb.c

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i
  %i.am = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = zext i32 %.0.val3 to i64
  %i.ap = xor i64 %.val.i.i, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = mul nuw i128 %i.i, %i.aq                ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit
  %.sroa.011.0.i.i.i.i7 = phi i64 [ 0, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit ], [ %i.bp, %bb.h ]
  %.pn.i.i.i8 = phi i64 [ %i.au, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit ], [ %i.bq, %bb.h ]
  %.sroa.01.0.i.i.i.i9 = and i64 %.pn.i.i.i8, %i.q ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i9
  %.sroa.0.0.copyload.i24.i.i.i10 = load <16 x i8>, ptr %i.az, align 1, !noalias !53805 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not30.i.i.i11 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not30.i.i.i11, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.f, %bb.g
  %.sroa.05.0.i31.i.i.i13 = phi i16 [ %i.bo, %bb.g ], [ %i.bb, %bb.f ] ; 3 uses
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i.i9, %i.bd
  %i.bf = and i64 %i.be, %i.q
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %.val2.i.i.i.i14 = load i32, ptr %i.bi, align 4, !noalias !53806, !noundef !56
  %i.bj = icmp eq i32 %.0.val3, %.val2.i.i.i.i14
  br i1 %i.bj, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17, label %bb.g, !prof !66

._crit_edge.i.i.i16:                              ; preds = %bb.g, %bb.f
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17, !prof !60

bb.g:                                             ; preds = %.lr.ph.i.i.i12
  %i.bn = add i16 %.sroa.05.0.i31.i.i.i13, -1
  %i.bo = and i16 %i.bn, %.sroa.05.0.i31.i.i.i13  ; 2 uses
  %.not.i.not.i.i.i15 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not.i.i.i15, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

bb.h:                                             ; preds = %._crit_edge.i.i.i16
  %i.bp = add i64 %.sroa.011.0.i.i.i.i7, 16       ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i9, %i.bp
  br label %bb.f

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17: ; preds = %._crit_edge.i.i.i16, %.lr.ph.i.i.i12
  %i.br = phi ptr [ %i.bh, %.lr.ph.i.i.i12 ], [ null, %._crit_edge.i.i.i16 ] ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.br, null           ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  %.sroa.0.0.i2217 = select i1 %.not.i.i18, ptr null, ptr %i.bs
  br i1 %.not.i.i, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread, label %bb.i

bb.i:                                             ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17
  br i1 %.not.i.i18, label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit, label %bb.j

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread: ; preds = %bb.a, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17
  %.sroa.0.0.i2216 = phi ptr [ %.sroa.0.0.i2217, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17 ], [ null, %bb.a ]
  %.not1.i.i = icmp ne ptr %.sroa.0.0.i2216, null
  br label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %.val.i.i.i = load i64, ptr %i.an, align 8, !noundef !56
  %.val1.i.i.i = load i64, ptr %i.bs, align 8, !noundef !56
  %i.bt = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  br label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread, %bb.j
  %.sroa.0.0.i.i25 = phi i1 [ %i.bt, %bb.j ], [ %.not1.i.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread ], [ false, %bb.i ]
  ret i1 %.sroa.0.0.i.i25
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx(ptr nofree readonly captures(none) %.0.val, i32 %.0.val1, i32 %.0.val3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val4 = load ptr, ptr %.0.val, align 8, !nonnull !56, !align !82, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53834)
  %i.a = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !53834, !noundef !56
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !53835, !noundef !56 ; 2 uses
  %i.e = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !53836, !noundef !56
  %i.f = zext i32 %.0.val1 to i64
  %i.g = xor i64 %.val.i.i, %i.f
  %i.h = zext i64 %i.g to i128
  %i.i = zext i64 %i.e to i128                    ; 2 uses
  %i.j = mul nuw i128 %i.i, %i.h                  ; 2 uses
  %i.k = lshr i128 %i.j, 64
  %i.l = xor i128 %i.k, %i.j
  %i.m = trunc i128 %i.l to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53838)
  %i.n = lshr i64 %i.m, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !53839, !noundef !56 ; 4 uses
  %i.r = load ptr, ptr %.val4, align 8, !alias.scope !53839, !nonnull !56, !noundef !56 ; 4 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.m, %bb.b ], [ %i.al, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.q  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !53840 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.q
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %.val2.i.i.i.i = load i32, ptr %i.ad, align 4, !noalias !53841, !noundef !56
  %i.ae = icmp eq i32 %.0.val1, %.val2.i.i.i.i
  br i1 %i.ae, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit, label %bb.d, !prof !66

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit, !prof !60

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  br label %bb.c

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i
  %i.am = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = zext i32 %.0.val3 to i64
  %i.ap = xor i64 %.val.i.i, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = mul nuw i128 %i.i, %i.aq                ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit
  %.sroa.011.0.i.i.i.i7 = phi i64 [ 0, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit ], [ %i.bp, %bb.h ]
  %.pn.i.i.i8 = phi i64 [ %i.au, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit ], [ %i.bq, %bb.h ]
  %.sroa.01.0.i.i.i.i9 = and i64 %.pn.i.i.i8, %i.q ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i9
  %.sroa.0.0.copyload.i24.i.i.i10 = load <16 x i8>, ptr %i.az, align 1, !noalias !53842 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not30.i.i.i11 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not30.i.i.i11, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.f, %bb.g
  %.sroa.05.0.i31.i.i.i13 = phi i16 [ %i.bo, %bb.g ], [ %i.bb, %bb.f ] ; 3 uses
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i.i9, %i.bd
  %i.bf = and i64 %i.be, %i.q
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %.val2.i.i.i.i14 = load i32, ptr %i.bi, align 4, !noalias !53843, !noundef !56
  %i.bj = icmp eq i32 %.0.val3, %.val2.i.i.i.i14
  br i1 %i.bj, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17, label %bb.g, !prof !66

._crit_edge.i.i.i16:                              ; preds = %bb.g, %bb.f
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17, !prof !60

bb.g:                                             ; preds = %.lr.ph.i.i.i12
  %i.bn = add i16 %.sroa.05.0.i31.i.i.i13, -1
  %i.bo = and i16 %i.bn, %.sroa.05.0.i31.i.i.i13  ; 2 uses
  %.not.i.not.i.i.i15 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not.i.i.i15, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

bb.h:                                             ; preds = %._crit_edge.i.i.i16
  %i.bp = add i64 %.sroa.011.0.i.i.i.i7, 16       ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i9, %i.bp
  br label %bb.f

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17: ; preds = %._crit_edge.i.i.i16, %.lr.ph.i.i.i12
  %i.br = phi ptr [ %i.bh, %.lr.ph.i.i.i12 ], [ null, %._crit_edge.i.i.i16 ] ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.br, null           ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  %.sroa.0.0.i2217 = select i1 %.not.i.i18, ptr null, ptr %i.bs
  br i1 %.not.i.i, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread, label %bb.i

bb.i:                                             ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17
  br i1 %.not.i.i18, label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit, label %bb.j

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread: ; preds = %bb.a, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17
  %.sroa.0.0.i2216 = phi ptr [ %.sroa.0.0.i2217, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17 ], [ null, %bb.a ]
  %.not1.i.i = icmp ne ptr %.sroa.0.0.i2216, null
  br label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %.val.i.i.i = load i64, ptr %i.an, align 8, !noundef !56
  %.val1.i.i.i = load i64, ptr %i.bs, align 8, !noundef !56
  %i.bt = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  br label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread, %bb.j
  %.sroa.0.0.i.i25 = phi i1 [ %i.bt, %bb.j ], [ %.not1.i.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread ], [ false, %bb.i ]
  ret i1 %.sroa.0.0.i.i25
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBp_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBp_4RuleE5parse5rules7visible9stmt_list000s_0000Br_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.012.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !53878
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !53878
  %.sroa.513.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !53878 ; 2 uses
  %.not.i = icmp ult i64 %.sroa.513.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible9stmt_list000s_00000EB12_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %.sroa.513.0.copyload.i, 1
  store i64 %i.e, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !53878
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !53878, !noundef !56 ; 3 uses
  %i.h = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.j = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible9edge_stmt(ptr noalias noundef nonnull align 8 %0) #64, !inline_history !53846 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.m = trunc nuw i64 %i.k to i1
  br i1 %i.m, label %bb.e, label %.thread1

bb.e:                                             ; preds = %bb.d
  %i.n = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible9node_stmt(ptr noalias noundef nonnull align 8 %i.l) #64 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %bb.f, label %.thread1

bb.f:                                             ; preds = %bb.e
  %i.r = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible9attr_stmt(ptr noalias noundef nonnull align 8 %i.p) #64 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  %i.u = trunc nuw i64 %i.s to i1
  br i1 %i.u, label %bb.g, label %.thread1

bb.g:                                             ; preds = %bb.f
  %i.v = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible10assignment(ptr noalias noundef nonnull align 8 %i.t) #64 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.h, label %.thread1

.thread1:                                         ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %.sroa.5.0.i.i = phi ptr [ %i.x, %bb.g ], [ %i.t, %bb.f ], [ %i.p, %bb.e ], [ %i.l, %bb.d ]
  %i.z = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.5.0.i.i, 1
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible8subgraph0EB12_(ptr noalias noundef nonnull align 8 %i.x) #64
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i

_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i: ; preds = %bb.h, %.thread1
  %.merged.i.i = phi { i64, ptr } [ %i.aa, %bb.h ], [ %i.z, %.thread1 ] ; 2 uses
  %i.ab = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.ac = extractvalue { i64, ptr } %.merged.i.i, 1 ; 4 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 289
  %i.af = load i8, ptr %i.ae, align 1, !range !67, !alias.scope !53879, !noundef !56
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ac, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ai = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %i.ac) #64, !inline_history !53849
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.merged.i7.i = phi { i64, ptr } [ %i.ai, %bb.k ], [ %i.ah, %bb.j ] ; 2 uses
  %i.aj = extractvalue { i64, ptr } %.merged.i7.i, 0
  %i.ak = extractvalue { i64, ptr } %.merged.i7.i, 1 ; 7 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.012.0.copyload.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !53880
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.am = trunc nuw i64 %.sroa.012.0.copyload.i.i.i to i1
  br i1 %i.am, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !53880 ; 2 uses
  %.sroa.513.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !alias.scope !53880 ; 3 uses
  %.not.i.i.i = icmp ult i64 %.sroa.513.0.copyload.i.i.i, %.sroa.6.0.copyload.i.i.i
  br i1 %.not.i.i.i, label %bb.o, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit

bb.o:                                             ; preds = %bb.n
  %i.an = add nuw i64 %.sroa.513.0.copyload.i.i.i, 1 ; 2 uses
  store i64 %i.an, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !alias.scope !53880
  %.not.i.i.i.i.i = icmp ult i64 %i.an, %.sroa.6.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit

bb.p:                                             ; preds = %bb.o
  %i.ao = add nuw i64 %.sroa.513.0.copyload.i.i.i, 2
  store i64 %i.ao, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !alias.scope !53881
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.ap = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1290, i64 noundef 1) #64, !inline_history !53849 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1      ; 2 uses
  %i.as = trunc nuw i64 %i.aq to i1
  br i1 %i.as, label %bb.r, label %.thread.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.at = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1291, i64 noundef 1) #64, !inline_history !53849 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1      ; 2 uses
  %i.aw = trunc nuw i64 %i.au to i1
  br i1 %i.aw, label %bb.s, label %.thread.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1292, i64 noundef 2) #64, !inline_history !53849 ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = extractvalue { i64, ptr } %i.ax, 1      ; 2 uses
  %i.ba = trunc nuw i64 %i.ay to i1
  br i1 %i.ba, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.6.013.i.i.i.i.i.i = phi ptr [ %i.az, %bb.s ], [ %i.ar, %bb.q ], [ %i.av, %bb.r ] ; 10 uses
  %.sroa.09.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.013.i.i.i.i.i.i, align 8, !alias.scope !53882
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.bb = trunc nuw i64 %.sroa.09.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.bb, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.thread.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !53882 ; 2 uses
  %.sroa.510.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !53882 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i, %.sroa.6.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bc = add nuw i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.bc, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !53882
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bc, %.sroa.6.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bd = add nuw i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i, 2
  store i64 %i.bd, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !53883
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !53883, !noundef !56 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 230584300921369396
  tail call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 289
  %i.bj = load i8, ptr %i.bi, align 1, !range !67, !alias.scope !53884, !noundef !56
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %bb.x, label %bb.y

end_hunk_0
