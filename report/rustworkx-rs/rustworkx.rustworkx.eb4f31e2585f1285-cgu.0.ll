Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67646
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvMs3_NtNtCs68Jln09rRqb_8petgraph5visit9traversalINtB6_3BfsNtNtBa_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE4nextRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2R_5types3any5PyAnyEB2M_EECskcxRuJ53GpR_9rustworkx:bb.a
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1762, !noalias !1763, !nonnull !67, !noundef !67
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.v ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1764, !noundef !67
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.aa, align 8, !noalias !1764
  %i.ab = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  br label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit

_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b, %bb.c, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.ab, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 4294967295, %bb.b ], [ 4294967295, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = icmp ugt i64 %i.t, %.sroa.0.0.i.i.i
  br i1 %i.ae, label %.loopexit, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx.exit

.loopexit:                                        ; preds = %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit, %bb.g
  %i.af = phi i64 [ %i.bk, %bb.g ], [ %.sroa.0.0.i.i.i, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !noalias !1765, !noundef !67
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !1765, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.al = zext i32 %i.ak to i64                   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1766
  store i64 %i.al, ptr %i.b, align 8, !noalias !1768
  %i.am = load i64, ptr %i.ac, align 8, !alias.scope !1768, !noundef !67
  %i.an = icmp ugt i64 %i.am, %i.al
  br i1 %i.an, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1768
  store ptr %i.b, ptr %i.a, align 8, !noalias !1768
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1768
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ac, ptr %i.ao, align 8, !noalias !1768
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1768
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
  unreachable

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit
  %i.ap = lshr i64 %i.al, 6
  %i.aq = and i64 %i.al, 63
  %i.ar = load ptr, ptr %i.ad, align 8, !alias.scope !1768, !nonnull !67, !noundef !67
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noalias !1768, !noundef !67 ; 2 uses
  %i.au = shl nuw i64 1, %i.aq                    ; 2 uses
  %i.av = and i64 %i.at, %i.au
  %.not.i7 = icmp eq i64 %i.av, 0
  %i.aw = or i64 %i.at, %i.au
  store i64 %i.aw, ptr %i.as, align 8, !noalias !1768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1766
  br i1 %.not.i7, label %bb.e, label %bb.g

_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.g, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit, %bb.a
  %.sroa.3.0.i15 = phi i32 [ undef, %bb.a ], [ %i.p, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit ], [ %i.p, %bb.g ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 1, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit ], [ 1, %bb.g ]
  %i.ax = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ay = insertvalue { i32, i32 } %i.ax, i32 %.sroa.3.0.i15, 1
  ret { i32, i32 } %i.ay

bb.e:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit
  %i.az = load i64, ptr %i.c, align 8, !alias.scope !1769, !noundef !67 ; 2 uses
  %i.ba = load i64, ptr %0, align 8, !range !70, !alias.scope !1769, !noundef !67 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.f, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE4growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #62
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1769
  %.pre5.i = load i64, ptr %0, align 8, !range !70, !alias.scope !1769
  br label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.e, %bb.f
  %i.bc = phi i64 [ %.pre5.i, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bd = phi i64 [ %.pre.i, %bb.f ], [ %i.az, %bb.e ] ; 2 uses
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.c, align 8, !alias.scope !1769
  %i.bf = load i64, ptr %i.f, align 8, !alias.scope !1769, !noundef !67
  %i.bg = add i64 %i.bf, %i.bd                    ; 2 uses
  %.not.i8 = icmp ult i64 %i.bg, %i.bc
  %i.bh = select i1 %.not.i8, i64 0, i64 %i.bc
  %.sroa.03.0.i = sub nuw i64 %i.bg, %i.bh
  %i.bi = load ptr, ptr %i.m, align 8, !alias.scope !1769, !nonnull !67, !noundef !67
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.03.0.i
  store i32 %i.ak, ptr %i.bj, align 4
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.bk = zext i32 %i.ai to i64                   ; 2 uses
  %i.bl = icmp ugt i64 %i.t, %i.bk
  br i1 %i.bl, label %.loopexit, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCscnlsAxKLLci_4pest5errorINtB6_5ErrorNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9enumerateNCNvMs5_B6_INtB6_12ErrorVariantBJ_E7message0EBN_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %.sink78.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink78.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  switch i64 %2, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2y_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i [
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2y_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.u = add nsw i64 %2, -1                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.v, ptr %i.l, align 8, !noalias !1867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1867
  store ptr %i.l, ptr %i.k, align 8, !noalias !1867
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1867
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @6, ptr noundef nonnull %i.k), !noalias !1868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1869
  %i.w = call i64 @llvm.umin.i64(i64 %2, i64 %i.u) ; 6 uses
  %i.x = mul i64 %i.w, 24                         ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %i.w, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.b, !prof !96

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2y_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1870
  %i.z = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1870 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2y_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i
  %.sroa.46.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2y_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.46.0.ph.i.i, i64 %i.x) #61
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.d, %bb.b
  %.sroa.10.0.ph.i.i = phi i64 [ 8, %bb.b ], [ %i.ab, %bb.d ]
  %.sroa.46.0.ph24.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.d ] ; 2 uses
  %i.ac = inttoptr i64 %.sroa.10.0.ph.i.i to ptr  ; 2 uses
  %i.ad = icmp samesign ule i64 %i.w, %.sroa.46.0.ph24.i.i
  call void @llvm.assume(i1 %i.ad)
  store i64 %.sroa.46.0.ph24.i.i, ptr %i.j, align 8, !noalias !1869
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !1869
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val8.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ah, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.val8.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1872
  store ptr %i.ag, ptr %i.h, align 8, !noalias !1873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1873
  store ptr %i.h, ptr %i.g, align 8, !noalias !1873
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1873
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @6, ptr noundef nonnull %i.g)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !1874

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = add i64 %.val8.i.i.i.i.i.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1872
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.val8.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1871
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.f

.body.i.i:                                        ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store i64 %.val8.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !alias.scope !1876, !noalias !1877
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #63, !noalias !1869
  br label %.body

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !1878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1878
  store ptr %i.f, ptr %i.e, align 8, !noalias !1878
  %.sroa.42.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i32, align 8, !noalias !1878
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @6, ptr noundef nonnull %i.e), !noalias !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1880
  store ptr %i.d, ptr %i.c, align 8, !noalias !1880
  %.sroa.42.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i33, align 8, !noalias !1880
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @6, ptr noundef nonnull %i.c), !noalias !1881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ak, ptr %i.b, align 8, !noalias !1882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1882
  store ptr %i.b, ptr %i.a, align 8, !noalias !1882
  %.sroa.42.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i34, align 8, !noalias !1882
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit66, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48, %bb.g
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38, %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.ao, %bb.l ], [ %i.ao, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38 ] ; 2 uses
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !1883 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i, 0
  br i1 %i.al, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.an, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @76, ptr noundef nonnull %i.r)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %.val.i.i37 = load i64, ptr %i.s, align 8, !alias.scope !1886 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i37, 0
  br i1 %i.ap, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i39 = load ptr, ptr %i.aq, align 8, !alias.scope !1886, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i39, i64 noundef %.val.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1886
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %.val.i.i41 = load i64, ptr %i.s, align 8, !alias.scope !1889 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i41, 0
  br i1 %i.ar, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i43 = load ptr, ptr %i.as, align 8, !alias.scope !1889, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i43, i64 noundef %.val.i.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1889
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  %.val.i.i45 = load i64, ptr %i.t, align 8, !alias.scope !1892 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i45, 0
  br i1 %i.at, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val1.i.i47 = load ptr, ptr %i.au, align 8, !alias.scope !1892, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i47, i64 noundef %.val.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1892
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40, %.body
  %.sink78.sroa.phi = phi ptr [ %.sink78.sroa.gep, %.body ], [ %.sink78.sroa.gep3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.val.i.i49.sink = phi i64 [ %.val.i.i49, %.body ], [ %.val.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.pn26.pn.ph = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.val1.i.i51 = load ptr, ptr %.sink78.sroa.phi, align 8, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51, i64 noundef %.val.i.i49.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !67
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split, %.body, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ], [ %.pn26.pn.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split ]
  resume { ptr, i32 } %.pn26.pn

.body:                                            ; preds = %bb.o, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54, %bb.q, %bb.m, %.body.i.i
  %.pn26 = phi { ptr, i32 } [ %i.bb, %bb.o ], [ %i.aj, %.body.i.i ], [ %i.aw, %bb.m ], [ %i.bk, %bb.q ], [ %i.bk, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54 ] ; 2 uses
  %.val.i.i49 = load i64, ptr %i.q, align 8, !alias.scope !1893 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i49, 0
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split

bb.m:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i
  store i64 %i.w, ptr %i.af, align 8, !alias.scope !1876, !noalias !1877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1869
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !67, !noundef !67 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCs87CvPiUlf0m_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ay, i64 noundef %i.ba)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #63
  br label %.body

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.be, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  %.val.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !1899, !noalias !1895 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !1899, !noalias !1895, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1900
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bh = icmp eq i64 %i.be, %i.ba
  br i1 %i.bh, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.p
  %.val2.i = load i64, ptr %i.o, align 8, !alias.scope !1895 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i, 0
  br i1 %i.bi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.bj = mul nuw i64 %.val2.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1895
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit

bb.q:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %.val.i.i53 = load i64, ptr %i.p, align 8, !alias.scope !1903 ; 2 uses
  %i.bl = icmp eq i64 %.val.i.i53, 0
  br i1 %i.bl, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i55 = load ptr, ptr %i.bm, align 8, !alias.scope !1903, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i55, i64 noundef %.val.i.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1903
  br label %.body

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.bn, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @78, ptr noundef nonnull %i.n)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit58 unwind label %bb.q

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit58: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  %.val.i.i59 = load i64, ptr %i.p, align 8, !alias.scope !1906 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i59, 0
  br i1 %i.bo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i60

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i60: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i61 = load ptr, ptr %i.bp, align 8, !alias.scope !1906, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i61, i64 noundef %.val.i.i59, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1906
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i60, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  %.val.i.i63 = load i64, ptr %i.q, align 8, !alias.scope !1909 ; 2 uses
  %i.bq = icmp eq i64 %.val.i.i63, 0
  br i1 %i.bq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit66, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i64

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i64: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i65 = load ptr, ptr %i.br, align 8, !alias.scope !1909, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i65, i64 noundef %.val.i.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1909
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit66

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit66: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCscnlsAxKLLci_4pest5errorINtB6_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE9enumerateNCNvMs5_B6_INtB6_12ErrorVariantBJ_E7message0ECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %.sink78.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink78.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  switch i64 %2, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2N_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i.i [
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2N_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.u = add nsw i64 %2, -1                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.v, ptr %i.l, align 8, !noalias !2007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2007
  store ptr %i.l, ptr %i.k, align 8, !noalias !2007
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2007
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @6, ptr noundef nonnull %i.k), !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2009
  %i.w = call i64 @llvm.umin.i64(i64 %2, i64 %i.u) ; 6 uses
  %i.x = mul i64 %i.w, 24                         ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %i.w, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.b, !prof !96

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2N_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2010
  %i.z = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !2010 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2N_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.46.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2N_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.46.0.ph.i.i, i64 %i.x) #61
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.d, %bb.b
  %.sroa.10.0.ph.i.i = phi i64 [ 8, %bb.b ], [ %i.ab, %bb.d ]
  %.sroa.46.0.ph24.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.d ] ; 2 uses
  %i.ac = inttoptr i64 %.sroa.10.0.ph.i.i to ptr  ; 2 uses
  %i.ad = icmp samesign ule i64 %i.w, %.sroa.46.0.ph24.i.i
  call void @llvm.assume(i1 %i.ad)
  store i64 %.sroa.46.0.ph24.i.i, ptr %i.j, align 8, !noalias !2009
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !2009
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val8.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ah, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.val8.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2012
  store ptr %i.ag, ptr %i.h, align 8, !noalias !2013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2013
  store ptr %i.h, ptr %i.g, align 8, !noalias !2013
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2013
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @6, ptr noundef nonnull %i.g)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !2014

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = add i64 %.val8.i.i.i.i.i.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2012
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.val8.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2011
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.f

.body.i.i:                                        ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store i64 %.val8.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !alias.scope !2016, !noalias !2017
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #63, !noalias !2009
  br label %.body

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !2018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2018
  store ptr %i.f, ptr %i.e, align 8, !noalias !2018
  %.sroa.42.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i32, align 8, !noalias !2018
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @6, ptr noundef nonnull %i.e), !noalias !2019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !2020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2020
  store ptr %i.d, ptr %i.c, align 8, !noalias !2020
  %.sroa.42.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i33, align 8, !noalias !2020
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @6, ptr noundef nonnull %i.c), !noalias !2021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ak, ptr %i.b, align 8, !noalias !2022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2022
  store ptr %i.b, ptr %i.a, align 8, !noalias !2022
  %.sroa.42.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i34, align 8, !noalias !2022
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit66, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48, %bb.g
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38, %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.ao, %bb.l ], [ %i.ao, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38 ] ; 2 uses
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !2023 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i, 0
  br i1 %i.al, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.an, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @76, ptr noundef nonnull %i.r)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %.val.i.i37 = load i64, ptr %i.s, align 8, !alias.scope !2026 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i37, 0
  br i1 %i.ap, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i39 = load ptr, ptr %i.aq, align 8, !alias.scope !2026, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i39, i64 noundef %.val.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2026
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  %.val.i.i41 = load i64, ptr %i.s, align 8, !alias.scope !2029 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i41, 0
  br i1 %i.ar, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i43 = load ptr, ptr %i.as, align 8, !alias.scope !2029, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i43, i64 noundef %.val.i.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2029
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  %.val.i.i45 = load i64, ptr %i.t, align 8, !alias.scope !2032 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i45, 0
  br i1 %i.at, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val1.i.i47 = load ptr, ptr %i.au, align 8, !alias.scope !2032, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i47, i64 noundef %.val.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2032
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40, %.body
  %.sink78.sroa.phi = phi ptr [ %.sink78.sroa.gep, %.body ], [ %.sink78.sroa.gep3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.val.i.i49.sink = phi i64 [ %.val.i.i49, %.body ], [ %.val.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.pn26.pn.ph = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.val1.i.i51 = load ptr, ptr %.sink78.sroa.phi, align 8, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51, i64 noundef %.val.i.i49.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !67
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split, %.body, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ], [ %.pn26.pn.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split ]
  resume { ptr, i32 } %.pn26.pn

.body:                                            ; preds = %bb.o, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54, %bb.q, %bb.m, %.body.i.i
  %.pn26 = phi { ptr, i32 } [ %i.bb, %bb.o ], [ %i.aj, %.body.i.i ], [ %i.aw, %bb.m ], [ %i.bk, %bb.q ], [ %i.bk, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54 ] ; 2 uses
  %.val.i.i49 = load i64, ptr %i.q, align 8, !alias.scope !2033 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i49, 0
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split

bb.m:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  store i64 %i.w, ptr %i.af, align 8, !alias.scope !2016, !noalias !2017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !2034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2009
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !67, !noundef !67 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCs87CvPiUlf0m_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ay, i64 noundef %i.ba)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #63
  br label %.body

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.be, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  %.val.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !2039, !noalias !2035 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2039, !noalias !2035, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2040
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bh = icmp eq i64 %i.be, %i.ba
  br i1 %i.bh, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.p
  %.val2.i = load i64, ptr %i.o, align 8, !alias.scope !2035 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i, 0
  br i1 %i.bi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.bj = mul nuw i64 %.val2.i, 24
end_hunk_0
begin_hunk_1_@_RINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_NtB1m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB2r_3err5PyErrEB3Q_:bb.a
  store i64 0, ptr %i.je, align 8, !noalias !15426
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.2 = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.2, align 8, !noalias !15426
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.2 = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.2, align 8, !noalias !15426
  %i.jf = add nuw nsw i64 %i.iz, 4                ; 2 uses
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.iv, i64 %i.iz ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 72
  store i64 0, ptr %i.jh, align 8, !noalias !15426
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.3 = getelementptr inbounds nuw i8, ptr %i.jg, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.3, align 8, !noalias !15426
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.3 = getelementptr inbounds nuw i8, ptr %i.jg, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.3, align 8, !noalias !15426
  %niter15711.next.3 = add i64 %niter15711, 4     ; 2 uses
  %niter15711.ncmp.3 = icmp eq i64 %niter15711.next.3, %unroll_iter15710
  br i1 %niter15711.ncmp.3, label %.unr-lcssa15702, label %.lr.ph.i.i.i.i.i.i.i588

.unr-lcssa15702:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i588
  %lcmp.mod15707.not = icmp eq i64 %xtraiter15703, 0
  br i1 %lcmp.mod15707.not, label %.epilog-lcssa15708, label %.lr.ph.i.i.i.i.i.i.i588.epil.preheader

.lr.ph.i.i.i.i.i.i.i588.epil.preheader:           ; preds = %.unr-lcssa15702, %.lr.ph.i.i.i.i.i.i.i588.preheader
  %.epil.init15706 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i588.preheader ], [ %i.jf, %.unr-lcssa15702 ]
  %lcmp.mod15709 = icmp ne i64 %xtraiter15703, 0
  tail call void @llvm.assume(i1 %lcmp.mod15709)
  br label %.lr.ph.i.i.i.i.i.i.i588.epil

.lr.ph.i.i.i.i.i.i.i588.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i588.epil, %.lr.ph.i.i.i.i.i.i.i588.epil.preheader
  %i.ji = phi i64 [ %i.jj, %.lr.ph.i.i.i.i.i.i.i588.epil ], [ %.epil.init15706, %.lr.ph.i.i.i.i.i.i.i588.epil.preheader ] ; 2 uses
  %epil.iter15704 = phi i64 [ %epil.iter15704.next, %.lr.ph.i.i.i.i.i.i.i588.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i588.epil.preheader ]
  %i.jj = add nuw nsw i64 %i.ji, 1
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.iv, i64 %i.ji ; 3 uses
  store i64 0, ptr %i.jk, align 8, !noalias !15426
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.epil = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.epil, align 8, !noalias !15426
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.epil = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.epil, align 8, !noalias !15426
  %epil.iter15704.next = add i64 %epil.iter15704, 1 ; 2 uses
  %epil.iter15704.cmp.not = icmp eq i64 %epil.iter15704.next, 2
  br i1 %epil.iter15704.cmp.not, label %.epilog-lcssa15708, label %.lr.ph.i.i.i.i.i.i.i588.epil, !llvm.loop !14811

.epilog-lcssa15708:                               ; preds = %.lr.ph.i.i.i.i.i.i.i588.epil, %.unr-lcssa15702
  store i64 %i.gf, ptr %i.x, align 8, !alias.scope !15427
  %.sroa.4.0..sroa_idx.i.i592 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  store ptr %i.iv, ptr %.sroa.4.0..sroa_idx.i.i592, align 8, !alias.scope !15427
  %.sroa.6.0..sroa_idx.i.i593 = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  store i64 %i.gf, ptr %.sroa.6.0..sroa_idx.i.i593, align 8, !alias.scope !15427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15429)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15430
  %i.jl = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15430 ; 7 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.az, label %.lr.ph.i.i.i.i.i.i.i601.preheader

.lr.ph.i.i.i.i.i.i.i601.preheader:                ; preds = %.epilog-lcssa15708
  %xtraiter15713 = and i64 %i.gf, 2               ; 2 uses
  %i.jn = icmp ult i64 %i.gr, 3
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i.i601.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i601.preheader.new

.lr.ph.i.i.i.i.i.i.i601.preheader.new:            ; preds = %.lr.ph.i.i.i.i.i.i.i601.preheader
  %unroll_iter15720 = and i64 %i.gf, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.i601

bb.az:                                            ; preds = %.epilog-lcssa15708
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.go) #61
          to label %.noexc608 unwind label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634.thread

.noexc608:                                        ; preds = %bb.az
  unreachable

.lr.ph.i.i.i.i.i.i.i601:                          ; preds = %.lr.ph.i.i.i.i.i.i.i601, %.lr.ph.i.i.i.i.i.i.i601.preheader.new
  %i.jo = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i601.preheader.new ], [ %i.ju, %.lr.ph.i.i.i.i.i.i.i601 ] ; 5 uses
  %niter15721 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i601.preheader.new ], [ %niter15721.next.3, %.lr.ph.i.i.i.i.i.i.i601 ]
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.jo ; 3 uses
  store i64 0, ptr %i.jp, align 8, !noalias !15431
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602 = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602, align 8, !noalias !15431
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603 = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603, align 8, !noalias !15431
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.jo ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  store i64 0, ptr %i.jr, align 8, !noalias !15431
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.1 = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.1, align 8, !noalias !15431
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.1 = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.1, align 8, !noalias !15431
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.jo ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  store i64 0, ptr %i.jt, align 8, !noalias !15431
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.2 = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.2, align 8, !noalias !15431
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.2 = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.2, align 8, !noalias !15431
  %i.ju = add nuw nsw i64 %i.jo, 4                ; 2 uses
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.jo ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  store i64 0, ptr %i.jw, align 8, !noalias !15431
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.3 = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.3, align 8, !noalias !15431
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.3 = getelementptr inbounds nuw i8, ptr %i.jv, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.3, align 8, !noalias !15431
  %niter15721.next.3 = add i64 %niter15721, 4     ; 2 uses
  %niter15721.ncmp.3 = icmp eq i64 %niter15721.next.3, %unroll_iter15720
  br i1 %niter15721.ncmp.3, label %.unr-lcssa15712, label %.lr.ph.i.i.i.i.i.i.i601

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i633, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631
  %i.jx = trunc nuw i8 %.sroa.0136.2 to i1
  br i1 %i.jx, label %bb.om, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit996

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634.thread: ; preds = %bb.az
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit996

.unr-lcssa15712:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i601
  %lcmp.mod15717.not = icmp eq i64 %xtraiter15713, 0
  br i1 %lcmp.mod15717.not, label %.epilog-lcssa15718, label %.lr.ph.i.i.i.i.i.i.i601.epil.preheader

.lr.ph.i.i.i.i.i.i.i601.epil.preheader:           ; preds = %.unr-lcssa15712, %.lr.ph.i.i.i.i.i.i.i601.preheader
  %.epil.init15716 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i601.preheader ], [ %i.ju, %.unr-lcssa15712 ]
  %lcmp.mod15719 = icmp ne i64 %xtraiter15713, 0
  tail call void @llvm.assume(i1 %lcmp.mod15719)
  br label %.lr.ph.i.i.i.i.i.i.i601.epil

.lr.ph.i.i.i.i.i.i.i601.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i601.epil, %.lr.ph.i.i.i.i.i.i.i601.epil.preheader
  %i.jz = phi i64 [ %i.ka, %.lr.ph.i.i.i.i.i.i.i601.epil ], [ %.epil.init15716, %.lr.ph.i.i.i.i.i.i.i601.epil.preheader ] ; 2 uses
  %epil.iter15714 = phi i64 [ %epil.iter15714.next, %.lr.ph.i.i.i.i.i.i.i601.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i601.epil.preheader ]
  %i.ka = add nuw nsw i64 %i.jz, 1
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.jz ; 3 uses
  store i64 0, ptr %i.kb, align 8, !noalias !15431
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.epil = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.epil, align 8, !noalias !15431
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.epil = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.epil, align 8, !noalias !15431
  %epil.iter15714.next = add i64 %epil.iter15714, 1 ; 2 uses
  %epil.iter15714.cmp.not = icmp eq i64 %epil.iter15714.next, 2
  br i1 %epil.iter15714.cmp.not, label %.epilog-lcssa15718, label %.lr.ph.i.i.i.i.i.i.i601.epil, !llvm.loop !14834

.epilog-lcssa15718:                               ; preds = %.lr.ph.i.i.i.i.i.i.i601.epil, %.unr-lcssa15712
  store i64 %i.gf, ptr %i.v, align 8, !alias.scope !15432
  %.sroa.4.0..sroa_idx.i.i605 = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 6 uses
  store ptr %i.jl, ptr %.sroa.4.0..sroa_idx.i.i605, align 8, !alias.scope !15432
  %.sroa.6.0..sroa_idx.i.i606 = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 8 uses
  store i64 %i.gf, ptr %.sroa.6.0..sroa_idx.i.i606, align 8, !alias.scope !15432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15433)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15434
  %i.kc = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15434 ; 4 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.ba, label %.lr.ph.i.i.i.i.i617.preheader

bb.ba:                                            ; preds = %.epilog-lcssa15718
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fu) #61
          to label %.noexc621 unwind label %bb.bb

.noexc621:                                        ; preds = %bb.ba
  unreachable

.lr.ph.i.i.i.i.i617.preheader:                    ; preds = %.epilog-lcssa15718
  %min.iters.check14822 = icmp ult i64 %.val.i491, 4
  br i1 %min.iters.check14822, label %.lr.ph.i.i.i.i.i617.preheader15647, label %vector.ph14823

vector.ph14823:                                   ; preds = %.lr.ph.i.i.i.i.i617.preheader
  %n.vec14824 = and i64 %.val.i491, 288230376151711740 ; 4 uses
  %i.ke = add nuw nsw i64 %.val.i491, %n.vec14824
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val.i491, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body14825

vector.body14825:                                 ; preds = %vector.body14825, %vector.ph14823
  %index14826 = phi i64 [ 0, %vector.ph14823 ], [ %index.next14829, %vector.body14825 ] ; 2 uses
  %vec.ind14827 = phi <2 x i64> [ %induction, %vector.ph14823 ], [ %vec.ind.next14830, %vector.body14825 ] ; 3 uses
  %step.add14828 = add nuw nsw <2 x i64> %vec.ind14827, splat (i64 2)
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %index14826 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <2 x i64> %vec.ind14827, ptr %i.kf, align 8, !noalias !15435
  store <2 x i64> %step.add14828, ptr %i.kg, align 8, !noalias !15435
  %index.next14829 = add nuw i64 %index14826, 4   ; 2 uses
  %vec.ind.next14830 = add nuw nsw <2 x i64> %vec.ind14827, splat (i64 4)
  %i.kh = icmp eq i64 %index.next14829, %n.vec14824
  br i1 %i.kh, label %middle.block14831, label %vector.body14825, !llvm.loop !14851

middle.block14831:                                ; preds = %vector.body14825
  %cmp.n14832 = icmp eq i64 %.val.i491, %n.vec14824
  br i1 %cmp.n14832, label %.loopexit494, label %.lr.ph.i.i.i.i.i617.preheader15647

.lr.ph.i.i.i.i.i617.preheader15647:               ; preds = %.lr.ph.i.i.i.i.i617.preheader, %middle.block14831
  %.ph15648 = phi i64 [ 0, %.lr.ph.i.i.i.i.i617.preheader ], [ %n.vec14824, %middle.block14831 ]
  %.sroa.0.010.i.i.i.i.i618.ph = phi i64 [ %.val.i491, %.lr.ph.i.i.i.i.i617.preheader ], [ %i.ke, %middle.block14831 ]
  br label %.lr.ph.i.i.i.i.i617

.lr.ph.i.i.i.i.i617:                              ; preds = %.lr.ph.i.i.i.i.i617.preheader15647, %.lr.ph.i.i.i.i.i617
  %i.ki = phi i64 [ %i.kl, %.lr.ph.i.i.i.i.i617 ], [ %.ph15648, %.lr.ph.i.i.i.i.i617.preheader15647 ] ; 2 uses
  %.sroa.0.010.i.i.i.i.i618 = phi i64 [ %i.kj, %.lr.ph.i.i.i.i.i617 ], [ %.sroa.0.010.i.i.i.i.i618.ph, %.lr.ph.i.i.i.i.i617.preheader15647 ] ; 2 uses
  %i.kj = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i618, 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.ki
  store i64 %.sroa.0.010.i.i.i.i.i618, ptr %i.kk, align 8, !noalias !15435
  %i.kl = add nuw i64 %i.ki, 1
  %exitcond.not.i.i.i.i.i619 = icmp eq i64 %i.kj, %i.gf
  br i1 %exitcond.not.i.i.i.i.i619, label %.loopexit494, label %.lr.ph.i.i.i.i.i617, !llvm.loop !14852

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit, %bb.bb
  %.sroa.0136.2 = phi i8 [ 0, %bb.bb ], [ %.sroa.0136.4, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit ], [ %.sroa.0136.4, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642 ]
  %.sroa.0133.12 = phi i8 [ 0, %bb.bb ], [ %.sroa.0133.14, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit ], [ %.sroa.0133.14, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642 ] ; 3 uses
  %.sroa.0130.12 = phi i8 [ 0, %bb.bb ], [ %.sroa.0130.14, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit ], [ %.sroa.0130.14, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642 ] ; 3 uses
  %.pn355.pn.pn.pn = phi { ptr, i32 } [ %i.kv, %bb.bb ], [ %.pn355.pn.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit ], [ %.pn355.pn.pn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15436)
  %.val.i623 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i605, align 8, !alias.scope !15436, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i624 = load i64, ptr %.sroa.6.0..sroa_idx.i.i606, align 8, !alias.scope !15436, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15437)
  %i.km = icmp eq i64 %.val1.i624, 0
  br i1 %i.km, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631, label %.lr.ph.i.i.i625

.lr.ph.i.i.i625:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630
  %.sroa.0.011.i.i.i626 = phi i64 [ %i.ko, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630 ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %.val.i623, i64 %.sroa.0.011.i.i.i626 ; 2 uses
  %i.ko = add nuw nsw i64 %.sroa.0.011.i.i.i626, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15438)
  %.val.i.i.i.i627 = load i64, ptr %i.kn, align 8, !alias.scope !15439, !noalias !15436 ; 2 uses
  %i.kp = icmp eq i64 %.val.i.i.i.i627, 0
  br i1 %i.kp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i628

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i628: ; preds = %.lr.ph.i.i.i625
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.val1.i.i.i.i629 = load ptr, ptr %i.kq, align 8, !alias.scope !15439, !noalias !15436, !nonnull !67, !noundef !67
  %i.kr = shl nuw i64 %.val.i.i.i.i627, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i629, i64 noundef %i.kr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15440
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i628, %.lr.ph.i.i.i625
  %i.ks = icmp eq i64 %i.ko, %.val1.i624
  br i1 %i.ks, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631, label %.lr.ph.i.i.i625

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644
  %.val2.i632 = load i64, ptr %i.v, align 8, !alias.scope !15436 ; 2 uses
  %i.kt = icmp eq i64 %.val2.i632, 0
  br i1 %i.kt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i633

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i633: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631
  %i.ku = mul nuw i64 %.val2.i632, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i623, i64 noundef %i.ku, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15436
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634

bb.bb:                                            ; preds = %bb.ba
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644

.loopexit494:                                     ; preds = %.lr.ph.i.i.i.i.i617, %middle.block14831
  store i64 %.val.i491, ptr %i.u, align 8, !alias.scope !15433
  %.sroa.4.0..sroa_idx.i615 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr %i.kc, ptr %.sroa.4.0..sroa_idx.i615, align 8, !alias.scope !15433
  %.sroa.5.0..sroa_idx.i616 = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i64 %.val.i491, ptr %.sroa.5.0..sroa_idx.i616, align 8, !alias.scope !15433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15441)
  %i.kw = icmp eq i128 %.us-phi, 0
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15441
  br i1 %i.kw, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit494
  %i.kx = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !15442 ; 5 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %.invoke11265, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bd:                                            ; preds = %.loopexit494
  %i.kz = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.hi, i64 noundef range(i64 1, 17) 16) #59, !noalias !15443 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %.invoke11265, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bc
  %i.lb = icmp samesign ugt i64 %.val.i491, 1
  br i1 %i.lb, label %.lr.ph.i.i.preheader, label %._crit_edge.thread.i.i

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.lc = add nsw i64 %.val.i491, -2
  %xtraiter15722 = and i64 %i.hl, 7               ; 3 uses
  %i.ld = icmp ult i64 %i.lc, 7
  br i1 %i.ld, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter15727 = and i64 %i.hl, -8
  br label %.lr.ph.i.i

._crit_edge.thread.i.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i
  %lcmp.mod15724.not = icmp eq i64 %xtraiter15722, 0
  br i1 %lcmp.mod15724.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.thread.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.020.i.i.epil.init = phi ptr [ %i.kx, %.lr.ph.i.i.preheader ], [ %i.lm, %._crit_edge.thread.i.i.loopexit.unr-lcssa ]
  %lcmp.mod15726 = icmp ne i64 %xtraiter15722, 0
  tail call void @llvm.assume(i1 %lcmp.mod15726)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.020.i.i.epil = phi ptr [ %i.le, %.lr.ph.i.i.epil ], [ %.sroa.0.020.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter15723 = phi i64 [ %epil.iter15723.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  store i128 %.us-phi, ptr %.sroa.0.020.i.i.epil, align 16, !noalias !15444
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.epil, i64 16 ; 2 uses
  %epil.iter15723.next = add i64 %epil.iter15723, 1 ; 2 uses
  %epil.iter15723.cmp.not = icmp eq i64 %epil.iter15723.next, %xtraiter15722
  br i1 %epil.iter15723.cmp.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.epil, !llvm.loop !14867

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.0.0.lcssa27.i.i = phi ptr [ %i.kx, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.lm, %._crit_edge.thread.i.i.loopexit.unr-lcssa ], [ %i.le, %.lr.ph.i.i.epil ]
  store i128 %.us-phi, ptr %.sroa.0.0.lcssa27.i.i, align 16, !noalias !15444
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.020.i.i = phi ptr [ %i.kx, %.lr.ph.i.i.preheader.new ], [ %i.lm, %.lr.ph.i.i ] ; 9 uses
  %niter15728 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter15728.next.7, %.lr.ph.i.i ]
  store i128 %.us-phi, ptr %.sroa.0.020.i.i, align 16, !noalias !15444
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 16
  store i128 %.us-phi, ptr %i.lf, align 16, !noalias !15444
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 32
  store i128 %.us-phi, ptr %i.lg, align 16, !noalias !15444
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 48
  store i128 %.us-phi, ptr %i.lh, align 16, !noalias !15444
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 64
  store i128 %.us-phi, ptr %i.li, align 16, !noalias !15444
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 80
  store i128 %.us-phi, ptr %i.lj, align 16, !noalias !15444
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 96
  store i128 %.us-phi, ptr %i.lk, align 16, !noalias !15444
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 112
  store i128 %.us-phi, ptr %i.ll, align 16, !noalias !15444
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 128 ; 3 uses
  %niter15728.next.7 = add i64 %niter15728, 8     ; 2 uses
  %niter15728.ncmp.7 = icmp eq i64 %niter15728.next.7, %unroll_iter15727
  br i1 %niter15728.ncmp.7, label %._crit_edge.thread.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.invoke11265:                                     ; preds = %bb.bd, %bb.bc
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.hi) #61
          to label %.cont11266 unwind label %bb.be

.cont11266:                                       ; preds = %.invoke11265
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659, %bb.be
  %.sroa.0136.4 = phi i8 [ 0, %bb.be ], [ %.sroa.0136.6, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659 ], [ %.sroa.0136.6, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655 ] ; 2 uses
  %.sroa.0133.14 = phi i8 [ 0, %bb.be ], [ %.sroa.0133.16, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659 ], [ %.sroa.0133.16, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655 ] ; 2 uses
  %.sroa.0130.14 = phi i8 [ 0, %bb.be ], [ %.sroa.0130.16, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659 ], [ %.sroa.0130.16, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655 ] ; 2 uses
  %.pn355.pn.pn = phi { ptr, i32 } [ %i.lp, %bb.be ], [ %.pn355.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659 ], [ %.pn355.pn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15445)
  %.val.i641 = load i64, ptr %i.u, align 8, !alias.scope !15445 ; 2 uses
  %i.ln = icmp eq i64 %.val.i641, 0
  br i1 %i.ln, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit
  %.val1.i643 = load ptr, ptr %.sroa.4.0..sroa_idx.i615, align 8, !alias.scope !15445, !nonnull !67, !noundef !67
  %i.lo = shl nuw i64 %.val.i641, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i643, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15445
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644

bb.be:                                            ; preds = %.invoke11265
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i: ; preds = %bb.bd, %._crit_edge.thread.i.i
  %.sink.i635 = phi ptr [ %i.kx, %._crit_edge.thread.i.i ], [ %i.kz, %bb.bd ] ; 2 uses
  store i64 %.val.i491, ptr %i.t, align 8, !alias.scope !15441
  %i.lq = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 19 uses
  store ptr %.sink.i635, ptr %i.lq, align 8, !alias.scope !15441
  %i.lr = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 17 uses
  store i64 %.val.i491, ptr %i.lr, align 8, !alias.scope !15441
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15447)
  %.not = icmp eq i64 %.val.i491, 0
  br i1 %.not, label %bb.bf, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i, !prof !77

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993, %.thread360, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i658, %bb.bg
  %.sroa.0136.6 = phi i8 [ 0, %.thread360 ], [ %.sroa.0136.12, %bb.bg ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i658 ], [ %.sroa.0136.12, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993 ] ; 2 uses
  %.sroa.0133.16 = phi i8 [ 0, %.thread360 ], [ %.sroa.0133.22, %bb.bg ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i658 ], [ %.sroa.0133.22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993 ] ; 2 uses
  %.sroa.0130.16 = phi i8 [ 0, %.thread360 ], [ %.sroa.0130.22, %bb.bg ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i658 ], [ %.sroa.0130.22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993 ] ; 2 uses
  %.pn355.pn = phi { ptr, i32 } [ %i.me, %.thread360 ], [ %.pn353, %bb.bg ], [ %i.lw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i658 ], [ %.pn353, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993 ] ; 2 uses
  %.val485 = load i64, ptr %i.t, align 8          ; 2 uses
  %i.ls = icmp eq i64 %.val485, 0
  br i1 %i.ls, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659
  %.val486 = load ptr, ptr %i.lq, align 8, !nonnull !67, !noundef !67
  %i.lt = shl nuw i64 %.val485, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val486, i64 noundef %i.lt, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.val.i491, i64 noundef %.val.i491, i64 noundef 16, i64 noundef 16)
          to label %.noexc657 unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i658

.noexc657:                                        ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.lu = load i64, ptr %i.lr, align 8, !alias.scope !15447, !noundef !67 ; 2 uses
  %i.lv = icmp ult i64 %i.lu, 576460752303423488
  tail call void @llvm.assume(i1 %i.lv)
  %.pre7477 = load ptr, ptr %i.lq, align 8, !alias.scope !15447
  br label %bb.bf

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i658: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators32___pyfunction_binomial_tree_graph:bb.a
  br i1 %i.ds, label %.loopexit95.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !alias.scope !102794, !noalias !102795, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dv, align 8, !alias.scope !102794, !noalias !102795 ; 2 uses
  %.sroa.3.12.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 32
  %i.dw = and i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.dx = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.dx)
  %i.dy = load i64, ptr %i.p, align 8, !range !70, !alias.scope !102796, !noalias !102797, !noundef !67
  %i.dz = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.dy
  br i1 %i.dz, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.aa
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i unwind label %bb.ab, !noalias !102788

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !102796, !noalias !102797
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i, %bb.aa
  %i.ea = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i ], [ %i.dp, %bb.aa ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.sroa.7.0.copyload.i.i ; 2 uses
  store i64 %i.dw, ptr %i.eb, align 8, !noalias !102798
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %.sroa.3.12.extract.shift.i.i.i.i.i.i.i, ptr %i.ec, align 8, !noalias !102798
  %i.ed = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.ed, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !102796, !noalias !102797
  br label %bb.x

bb.ab:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !102788 ; 2 uses
  %i.ef = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ef, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.ab
  %.val6.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !102788, !nonnull !67, !noundef !67
  %i.eg = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102788
  br label %.body.i.i

.loopexit95.i.i:                                  ; preds = %bb.y
  %.sroa.075.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !102799 ; 4 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !102799, !nonnull !67, !noundef !67 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !102788
  %i.eh = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.eh)
  %.idx.i.i = shl nuw nsw i64 %.sroa.7.0.copyload.i.i, 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %bb.an
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp.i.i:                           ; preds = %bb.aq, %bb.ap
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.ej = icmp eq i64 %.sroa.075.0.copyload.i.i, 0
  br i1 %i.ej, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %bb.ac
  %i.ek = shl nuw i64 %.sroa.075.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102800
  br label %.body.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, %.loopexit95.i.i
  %.sroa.583.0132.i.i = phi ptr [ %i.el, %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %.loopexit95.i.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.583.0132.i.i, i64 16 ; 2 uses
  %i.em = load i64, ptr %.sroa.583.0132.i.i, align 8, !noalias !102801, !noundef !67
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.583.0132.i.i, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !noalias !102801, !noundef !67
  %i.ep = add i64 %i.em, %.sroa.06.0134.i.i       ; 2 uses
  %i.eq = add i64 %i.eo, %.sroa.06.0134.i.i       ; 2 uses
  %.val35.i.i = load ptr, ptr %i.cp, align 8, !noalias !102779, !nonnull !67, !noundef !67 ; 2 uses
  %.val36.i.i = load i64, ptr %i.cq, align 8, !noalias !102779, !noundef !67
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %.val35.i.i, i64 %.val36.i.i
  br label %bb.ad

bb.ad:                                            ; preds = %.backedge, %.lr.ph.i.i
  %i.es = phi ptr [ %.val35.i.i, %.lr.ph.i.i ], [ %i.et, %.backedge ] ; 4 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.es, %i.er
  br i1 %.not.not.not.i.not.i.i, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.es, align 8, !alias.scope !102802, !noalias !102803, !noundef !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i, label %.backedge, label %bb.af

.backedge:                                        ; preds = %bb.ae, %bb.af
  br label %bb.ad

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ev, align 8, !alias.scope !102802, !noalias !102803 ; 2 uses
  %i.ew = and i64 %.sroa.02.0.copyload.i.i.i.i.i.i, 4294967295
  %i.ex = icmp eq i64 %i.ew, %i.ep
  %.sroa.4.12.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i.i.i, 32
  %i.ey = icmp eq i64 %.sroa.4.12.extract.shift.i.i.i, %i.eq
  %or.cond.i.i.i = and i1 %i.ex, %i.ey
  br i1 %or.cond.i.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %.backedge

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.ez = icmp eq i64 %.sroa.075.0.copyload.i.i, 0
  br i1 %i.ez, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i38.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i38.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fa = shl nuw i64 %.sroa.075.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102804
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i38.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.val33.i.i = load ptr, ptr %i.cp, align 8, !noalias !102779, !nonnull !67, !noundef !67 ; 2 uses
  %.val34.i.i = load i64, ptr %i.cq, align 8, !noalias !102779, !noundef !67
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %.val33.i.i, i64 %.val34.i.i
  br label %bb.ag

bb.ag:                                            ; preds = %.backedge213, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i
  %i.fc = phi ptr [ %.val33.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i ], [ %i.fd, %.backedge213 ] ; 4 uses
  %.not.not.not.i41.not.i.i = icmp eq ptr %i.fc, %i.fb
  br i1 %.not.not.not.i41.not.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fc, align 8, !alias.scope !102805, !noalias !102806, !noundef !67
  %.not.i.i.i.i42.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i42.i.i, label %.backedge213, label %bb.ai

.backedge213:                                     ; preds = %bb.ah, %bb.ai
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %.sroa.02.0.copyload.i.i.i.i43.i.i = load i64, ptr %i.ff, align 8, !alias.scope !102805, !noalias !102806 ; 2 uses
  %i.fg = and i64 %.sroa.02.0.copyload.i.i.i.i43.i.i, 4294967295
  %i.fh = icmp eq i64 %i.fg, 0
  %.sroa.4.12.extract.shift.i44.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i43.i.i, 32
  %i.fi = icmp eq i64 %.sroa.4.12.extract.shift.i44.i.i, %.sroa.06.0134.i.i
  %or.cond.i45.i.i = and i1 %i.fh, %i.fi
  br i1 %or.cond.i45.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit46.thread.i.i, label %.backedge213

bb.aj:                                            ; preds = %bb.ag
  %i.fj = trunc i64 %.sroa.06.0134.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !102807
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i32 noundef 0, i32 noundef %i.fj, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc47.i.i unwind label %.loopexit96.i.i, !noalias !102779

.noexc47.i.i:                                     ; preds = %bb.aj
  %i.fk = load i64, ptr %i.o, align 8, !range !123, !noalias !102807, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.fk, 2
  br i1 %cond.i.i.i.i, label %bb.am, label %bb.ak, !prof !79

bb.ak:                                            ; preds = %.noexc47.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102808)
  %.not.i.i.i.i.i = icmp eq i64 %i.fk, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.al, !prof !77

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !102809
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !102808, !noalias !102810
  store i64 %i.fk, ptr %i.l, align 8, !noalias !102809
  br label %.invoke.i.i

bb.am:                                            ; preds = %.noexc47.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !102807
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !102807, !noundef !67
  store i64 %i.fo, ptr %i.n, align 8, !noalias !102807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !102807
  store ptr %i.n, ptr %i.m, align 8, !noalias !102807
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !102807
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #60
          to label %.noexc49.i.i unwind label %.loopexit.split-lp97.loopexit.split-lp.i.i, !noalias !102779

.noexc49.i.i:                                     ; preds = %bb.am
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !102807
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit46.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit46.thread.i.i: ; preds = %bb.ai, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fp = shl i64 %.sroa.06.0134.i.i, 1
  %exitcond168.not.i.i = icmp eq i32 %i.dd, %i.at
  br i1 %exitcond168.not.i.i, label %._crit_edge.i.i, label %bb.s

bb.an:                                            ; preds = %bb.ad
  %i.fq = trunc i64 %i.ep to i32
  %i.fr = trunc i64 %i.eq to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !102811
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i32 noundef %i.fq, i32 noundef %i.fr, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc53.i.i unwind label %.loopexit.i.i, !noalias !102779

.noexc53.i.i:                                     ; preds = %bb.an
  %i.fs = load i64, ptr %i.k, align 8, !range !123, !noalias !102811, !noundef !67 ; 3 uses
  %cond.i.i50.i.i = icmp eq i64 %i.fs, 2
  br i1 %cond.i.i50.i.i, label %bb.aq, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %.noexc53.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102812)
  %.not.i.i.i51.i.i = icmp eq i64 %i.fs, -1
  br i1 %.not.i.i.i51.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit56.i.i, label %bb.ap, !prof !77

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !102813
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !102812, !noalias !102814
  store i64 %i.fs, ptr %i.h, align 8, !noalias !102813
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !noalias !102813
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @743) #60
          to label %.noexc54.i.i unwind label %.loopexit.split-lp.i.i, !noalias !102779

.noexc54.i.i:                                     ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %.noexc53.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !102811
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !102811, !noundef !67
  store i64 %i.fx, ptr %i.j, align 8, !noalias !102811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !102811
  store ptr %i.j, ptr %i.i, align 8, !noalias !102811
  %.sroa.42.0..sroa_idx.i.i52.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i52.i.i, align 8, !noalias !102811
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @743) #60
          to label %.noexc55.i.i unwind label %.loopexit.split-lp.i.i, !noalias !102779

.noexc55.i.i:                                     ; preds = %bb.aq
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit56.i.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !102811
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %bb.af, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit56.i.i
  %i.fy = icmp eq ptr %i.el, %i.ei
  br i1 %i.fy, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i

bb.ar:                                            ; preds = %.body59.thread.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body83.i

.body83.i:                                        ; preds = %bb.ar, %bb.q
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102779
  unreachable

.split.us.i.i:                                    ; preds = %.noexc57.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !102815
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !102783, !noalias !102784
  store i64 %i.cn, ptr %i.f, align 8, !noalias !102815
  br label %.invoke.i.i

bb.as:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit70.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit65.i.i
  %exitcond.not.i.i = icmp eq i64 %i.cr, %i.ca
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %_RNvXs7_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_6Create13with_capacityCskcxRuJ53GpR_9rustworkx.exit.split.split.i.i

bb.at:                                            ; preds = %_RNvXs7_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_6Create13with_capacityCskcxRuJ53GpR_9rustworkx.exit.split.i.i
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.q)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %bb.au, !noalias !102779

bb.au:                                            ; preds = %bb.at
  %i.gc = landingpad { ptr, i32 }
          cleanup
  %i.gd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.gd) #63
          to label %.body59.thread.i.i unwind label %bb.av, !noalias !102779

bb.av:                                            ; preds = %bb.au
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102816
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.at
  %i.gf = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.gf)
          to label %.thread.i.i unwind label %bb.o, !noalias !102779

bb.aw:                                            ; preds = %_RNvXs7_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_6Create13with_capacityCskcxRuJ53GpR_9rustworkx.exit.split.split.i.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !102779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102817
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc63.i.i unwind label %.loopexit.split-lp97.loopexit.split.i.i, !noalias !102779

.noexc63.i.i:                                     ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !102818)
  %i.gg = load i64, ptr %i.e, align 8, !range !123, !alias.scope !102818, !noalias !102819, !noundef !67 ; 2 uses
  %.not.i.i62.i.i = icmp eq i64 %i.gg, -1
  br i1 %.not.i.i62.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit65.i.i, label %bb.ax, !prof !77

bb.ax:                                            ; preds = %.noexc63.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102820
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !102818, !noalias !102819
  store i64 %i.gg, ptr %i.d, align 8, !noalias !102820
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit65.i.i: ; preds = %.noexc63.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102817
  br label %bb.as

bb.ay:                                            ; preds = %_RNvXs7_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_6Create13with_capacityCskcxRuJ53GpR_9rustworkx.exit.split.split.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.cj, align 8, !noalias !102821, !noundef !67
  %i.gj = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.gj, label %bb.ba, label %bb.az, !prof !125

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @745) #61
          to label %.noexc66.i.i unwind label %.loopexit.split-lp97.loopexit.split-lp.i.i, !noalias !102779

.noexc66.i.i:                                     ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.sroa.015.0130.i.i
  %.val.i.i = load ptr, ptr %i.gk, align 8, !noalias !102779, !nonnull !67, !noundef !67 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %.val.i.i) #59, !noalias !102821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102822
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull %.val.i.i)
          to label %.noexc68.i.i unwind label %.loopexit.split-lp97.loopexit.split.i.i, !noalias !102779

.noexc68.i.i:                                     ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !102823)
  %i.gl = load i64, ptr %i.c, align 8, !range !123, !alias.scope !102823, !noalias !102824, !noundef !67 ; 2 uses
  %.not.i.i67.i.i = icmp eq i64 %i.gl, -1
  br i1 %.not.i.i67.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit70.i.i, label %bb.bb, !prof !77

bb.bb:                                            ; preds = %.noexc68.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102825
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !102823, !noalias !102824
  store i64 %i.gl, ptr %i.b, align 8, !noalias !102825
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.bb, %bb.ax, %.split.us.i.i, %bb.al
  %.sink226.i.sroa.phi.i = phi ptr [ %.sink226.i.sroa.gep.i, %bb.al ], [ %.sink226.i.sroa.gep98.i, %.split.us.i.i ], [ %.sink226.i.sroa.gep99.i, %bb.ax ], [ %.sink226.i.sroa.gep100.i, %bb.bb ]
  %.sink226.i.i = phi ptr [ %i.l, %bb.al ], [ %i.f, %.split.us.i.i ], [ %i.d, %bb.ax ], [ %i.b, %bb.bb ]
  %.sink.i.i15 = phi i64 [ %i.fm, %bb.al ], [ %i.gb, %.split.us.i.i ], [ %i.gi, %bb.ax ], [ %i.gn, %bb.bb ]
  %i.go = phi ptr [ @741, %bb.al ], [ @4184, %.split.us.i.i ], [ @4184, %bb.ax ], [ @4184, %bb.bb ]
  store i64 %.sink.i.i15, ptr %.sink226.i.sroa.phi.i, align 8, !noalias !102779
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink226.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.go) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp97.loopexit.split-lp.i.i, !noalias !102779

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit70.i.i: ; preds = %.noexc68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102822
  br label %bb.as

.thread.i.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !102779
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i

.body59.i.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.o
  %i.gp = phi i64 [ %.pre.i.i, %bb.o ], [ %i.cf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.pn23.i.i = phi { ptr, i32 } [ %i.by, %bb.o ], [ %.pn.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.gq = icmp eq i64 %i.gp, -1
  br i1 %i.gq, label %.body.i, label %.body59.thread.i.i

.body59.thread.i.i:                               ; preds = %.body59.i.i, %bb.au
  %.pn23200.i.i = phi { ptr, i32 } [ %.pn23.i.i, %.body59.i.i ], [ %i.gc, %bb.au ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.af)
          to label %.body.i unwind label %bb.ar, !noalias !102777

bb.bc:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !102775
  store ptr %i.t, ptr %i.r, align 8, !noalias !102775
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs8_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !102775
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @2449, ptr noundef nonnull %i.r)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.bd, !noalias !102775

bb.bd:                                            ; preds = %bb.bf, %bb.bc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bd, %.body59.thread.i.i, %.body59.i.i
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators41___pyfunction_directed_binomial_tree_graph:bb.a
bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.el = phi ptr [ %i.en, %bb.ac ], [ %i.ek, %bb.aa ] ; 4 uses
  %i.em = icmp eq ptr %i.el, %i.dy
  br i1 %i.em, label %.loopexit127.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8, !alias.scope !104925, !noalias !104926, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !104925, !noalias !104926 ; 2 uses
  %.sroa.3.12.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 32
  %i.eq = and i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.er = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.er)
  %i.es = load i64, ptr %i.x, align 8, !range !70, !alias.scope !104927, !noalias !104928, !noundef !67
  %i.et = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.es
  br i1 %i.et, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.ad
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i unwind label %bb.ae, !noalias !104919

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !104927, !noalias !104928
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i, %bb.ad
  %i.eu = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i ], [ %i.ej, %bb.ad ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %.sroa.7.0.copyload.i.i ; 2 uses
  store i64 %i.eq, ptr %i.ev, align 8, !noalias !104929
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.sroa.3.12.extract.shift.i.i.i.i.i.i.i, ptr %i.ew, align 8, !noalias !104929
  %i.ex = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.ex, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !104927, !noalias !104928
  br label %bb.aa

bb.ae:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !104919 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ez, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.ae
  %.val6.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !104919, !nonnull !67, !noundef !67
  %i.fa = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !104919
  br label %.body.i.i

.loopexit127.i.i:                                 ; preds = %bb.ab
  %.sroa.0107.0.copyload.i.i = load i64, ptr %i.x, align 8, !noalias !104930 ; 4 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !104930, !nonnull !67, !noundef !67 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !104919
  %i.fb = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.fb)
  %.idx.i.i = shl nuw nsw i64 %.sroa.7.0.copyload.i.i, 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %bb.bg, %bb.ay
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp.i.i:                           ; preds = %.invoke278, %.invoke
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.fd = icmp eq i64 %.sroa.0107.0.copyload.i.i, 0
  br i1 %i.fd, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %bb.af
  %i.fe = shl nuw i64 %.sroa.0107.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !104931
  br label %.body.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i, %.loopexit127.i.i
  %.sroa.5115.0180.i.i = phi ptr [ %i.ff, %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %.loopexit127.i.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.5115.0180.i.i, i64 16 ; 2 uses
  %i.fg = load i64, ptr %.sroa.5115.0180.i.i, align 8, !noalias !104932, !noundef !67
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.5115.0180.i.i, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !104932, !noundef !67
  %i.fj = add i64 %i.fg, %.sroa.06.0182.i.i       ; 4 uses
  %i.fk = add i64 %i.fi, %.sroa.06.0182.i.i       ; 4 uses
  %.val39.i.i = load ptr, ptr %i.dj, align 8, !noalias !104910, !nonnull !67, !noundef !67 ; 2 uses
  %.val40.i.i = load i64, ptr %i.dk, align 8, !noalias !104910, !noundef !67
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %.val39.i.i, i64 %.val40.i.i
  br label %bb.ag

bb.ag:                                            ; preds = %.backedge286, %.lr.ph.i.i
  %i.fm = phi ptr [ %.val39.i.i, %.lr.ph.i.i ], [ %i.fn, %.backedge286 ] ; 4 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.fm, %i.fl
  br i1 %.not.not.not.i.not.i.i, label %bb.ay, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fm, align 8, !alias.scope !104933, !noalias !104934, !noundef !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i, label %.backedge286, label %bb.ai

.backedge286:                                     ; preds = %bb.ah, %bb.ai
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fp, align 8, !alias.scope !104933, !noalias !104934 ; 2 uses
  %i.fq = and i64 %.sroa.02.0.copyload.i.i.i.i.i.i, 4294967295
  %i.fr = icmp eq i64 %i.fq, %i.fj
  %.sroa.4.12.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i.i.i, 32
  %i.fs = icmp eq i64 %.sroa.4.12.extract.shift.i.i.i, %i.fk
  %or.cond.i.i.i = and i1 %i.fr, %i.fs
  br i1 %or.cond.i.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %.backedge286

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i
  %i.ft = icmp eq i64 %.sroa.0107.0.copyload.i.i, 0
  br i1 %i.ft, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i42.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i42.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fu = shl nuw i64 %.sroa.0107.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !104935
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i42.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.val37.i.i = load ptr, ptr %i.dj, align 8, !noalias !104910, !nonnull !67, !noundef !67 ; 2 uses
  %.val38.i.i = load i64, ptr %i.dk, align 8, !noalias !104910, !noundef !67
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %.val37.i.i, i64 %.val38.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %.backedge288, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i
  %i.fw = phi ptr [ %.val37.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i ], [ %i.fx, %.backedge288 ] ; 4 uses
  %.not.not.not.i45.not.i.i = icmp eq ptr %i.fw, %i.fv
  br i1 %.not.not.not.i45.not.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fw, align 8, !alias.scope !104936, !noalias !104937, !noundef !67
  %.not.i.i.i.i46.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i46.i.i, label %.backedge288, label %bb.al

.backedge288:                                     ; preds = %bb.ak, %bb.al
  br label %bb.aj

bb.al:                                            ; preds = %bb.ak
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %.sroa.02.0.copyload.i.i.i.i47.i.i = load i64, ptr %i.fz, align 8, !alias.scope !104936, !noalias !104937 ; 2 uses
  %i.ga = and i64 %.sroa.02.0.copyload.i.i.i.i47.i.i, 4294967295
  %i.gb = icmp eq i64 %i.ga, 0
  %.sroa.4.12.extract.shift.i48.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i47.i.i, 32
  %i.gc = icmp eq i64 %.sroa.4.12.extract.shift.i48.i.i, %.sroa.06.0182.i.i
  %or.cond.i49.i.i = and i1 %i.gb, %i.gc
  br i1 %or.cond.i49.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i, label %.backedge288

bb.am:                                            ; preds = %bb.aj
  %i.gd = trunc i64 %.sroa.06.0182.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !104938
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef 0, i32 noundef %i.gd, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc51.i.i unwind label %.loopexit128.i.i, !noalias !104910

.noexc51.i.i:                                     ; preds = %bb.am
  %i.ge = load i64, ptr %i.w, align 8, !range !123, !noalias !104938, !noundef !67 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.ge, 2
  br i1 %cond.i.i.i.i, label %bb.ap, label %bb.an, !prof !79

bb.an:                                            ; preds = %.noexc51.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104939)
  %.not.i.i.i.i.i = icmp eq i64 %i.ge, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ao, !prof !77

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !104940
  %i.gf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !104939, !noalias !104941
  store i64 %i.ge, ptr %i.t, align 8, !noalias !104940
  br label %.invoke.i.i

bb.ap:                                            ; preds = %.noexc51.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !104938
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !104938, !noundef !67
  store i64 %i.gi, ptr %i.v, align 8, !noalias !104938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !104938
  store ptr %i.v, ptr %i.u, align 8, !noalias !104938
  br label %.invoke305.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !104938
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i: ; preds = %bb.al, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i
  br i1 %i.ce, label %bb.aq, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit60.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit60.thread.i.i: ; preds = %bb.at, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit67.i.i, %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i
  %i.gj = shl i64 %.sroa.06.0182.i.i, 1
  %exitcond232.not.i.i = icmp eq i32 %i.dx, %i.be
  br i1 %exitcond232.not.i.i, label %._crit_edge.i.i, label %bb.v

bb.aq:                                            ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i
  %.val35.i.i = load ptr, ptr %i.dj, align 8, !noalias !104910, !nonnull !67, !noundef !67 ; 2 uses
  %.val36.i.i = load i64, ptr %i.dk, align 8, !noalias !104910, !noundef !67
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %.val35.i.i, i64 %.val36.i.i
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge287, %bb.aq
  %i.gl = phi ptr [ %.val35.i.i, %bb.aq ], [ %i.gm, %.backedge287 ] ; 4 uses
  %.not.not.not.i55.not.i.i = icmp eq ptr %i.gl, %i.gk
  br i1 %.not.not.not.i55.not.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gl, align 8, !alias.scope !104942, !noalias !104943, !noundef !67
  %.not.i.i.i.i56.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i56.i.i, label %.backedge287, label %bb.at

.backedge287:                                     ; preds = %bb.as, %bb.at
  br label %bb.ar

bb.at:                                            ; preds = %bb.as
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %.sroa.02.0.copyload.i.i.i.i57.i.i = load i64, ptr %i.go, align 8, !alias.scope !104942, !noalias !104943 ; 2 uses
  %i.gp = and i64 %.sroa.02.0.copyload.i.i.i.i57.i.i, 4294967295
  %i.gq = icmp eq i64 %i.gp, %.sroa.06.0182.i.i
  %i.gr = icmp ult i64 %.sroa.02.0.copyload.i.i.i.i57.i.i, 4294967296
  %or.cond.i59.i.i = and i1 %i.gr, %i.gq
  br i1 %or.cond.i59.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit60.thread.i.i, label %.backedge287

bb.au:                                            ; preds = %bb.ar
  %i.gs = trunc i64 %.sroa.06.0182.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !104944
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef %i.gs, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc64.i.i unwind label %.loopexit128.i.i, !noalias !104910

.noexc64.i.i:                                     ; preds = %bb.au
  %i.gt = load i64, ptr %i.s, align 8, !range !123, !noalias !104944, !noundef !67 ; 3 uses
  %cond.i.i61.i.i = icmp eq i64 %i.gt, 2
  br i1 %cond.i.i61.i.i, label %bb.ax, label %bb.av, !prof !79

bb.av:                                            ; preds = %.noexc64.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104945)
  %.not.i.i.i62.i.i = icmp eq i64 %i.gt, -1
  br i1 %.not.i.i.i62.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit67.i.i, label %bb.aw, !prof !77

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !104946
  %i.gu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !104945, !noalias !104947
  store i64 %i.gt, ptr %i.p, align 8, !noalias !104946
  br label %.invoke.i.i

bb.ax:                                            ; preds = %.noexc64.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !104944
  %i.gx = load i64, ptr %i.gw, align 8, !noalias !104944, !noundef !67
  store i64 %i.gx, ptr %i.r, align 8, !noalias !104944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !104944
  store ptr %i.r, ptr %i.q, align 8, !noalias !104944
  br label %.invoke305.i.i

.invoke305.i.i:                                   ; preds = %bb.ax, %bb.ap
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %bb.ap ], [ %.sink.i.sroa.gep100.i, %bb.ax ]
  %.sink.i.i25 = phi ptr [ %i.u, %bb.ap ], [ %i.q, %bb.ax ]
  %i.gy = phi ptr [ @741, %bb.ap ], [ @742, %bb.ax ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink.i.sroa.phi.i, align 8, !noalias !104910
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %.sink.i.i25, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy) #60
          to label %.cont306.i.i unwind label %.loopexit.split-lp129.loopexit.split-lp.i.i, !noalias !104910

.cont306.i.i:                                     ; preds = %.invoke305.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit67.i.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !104944
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit60.thread.i.i

bb.ay:                                            ; preds = %bb.ag
  %i.gz = trunc i64 %i.fj to i32
  %i.ha = trunc i64 %i.fk to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !104948
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef %i.gz, i32 noundef %i.ha, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc71.i.i unwind label %.loopexit.i.i, !noalias !104910

.noexc71.i.i:                                     ; preds = %bb.ay
  %i.hb = load i64, ptr %i.o, align 8, !range !123, !noalias !104948, !noundef !67 ; 3 uses
  %cond.i.i68.i.i = icmp eq i64 %i.hb, 2
  br i1 %cond.i.i68.i.i, label %bb.bb, label %bb.az, !prof !79

bb.az:                                            ; preds = %.noexc71.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104949)
  %.not.i.i.i69.i.i = icmp eq i64 %i.hb, -1
  br i1 %.not.i.i.i69.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit74.i.i, label %bb.ba, !prof !77

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !104950
  %i.hc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !104949, !noalias !104951
  store i64 %i.hb, ptr %i.l, align 8, !noalias !104950
  br label %.invoke278

bb.bb:                                            ; preds = %.noexc71.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !104948
  %i.hf = load i64, ptr %i.he, align 8, !noalias !104948, !noundef !67
  store i64 %i.hf, ptr %i.n, align 8, !noalias !104948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !104948
  store ptr %i.n, ptr %i.m, align 8, !noalias !104948
  br label %.invoke

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit74.i.i: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !104948
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %bb.ai, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit74.i.i
  br i1 %i.ce, label %bb.bc, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i: ; preds = %bb.bf, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit88.i.i, %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.hg = icmp eq ptr %i.ff, %i.fc
  br i1 %i.hg, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i

bb.bc:                                            ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.val33.i.i = load ptr, ptr %i.dj, align 8, !noalias !104910, !nonnull !67, !noundef !67 ; 2 uses
  %.val34.i.i = load i64, ptr %i.dk, align 8, !noalias !104910, !noundef !67
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %.val33.i.i, i64 %.val34.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %.backedge, %bb.bc
  %i.hi = phi ptr [ %.val33.i.i, %bb.bc ], [ %i.hj, %.backedge ] ; 4 uses
  %.not.not.not.i76.not.i.i = icmp eq ptr %i.hi, %i.hh
  br i1 %.not.not.not.i76.not.i.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hi, align 8, !alias.scope !104952, !noalias !104953, !noundef !67
  %.not.i.i.i.i77.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i77.i.i, label %.backedge, label %bb.bf

.backedge:                                        ; preds = %bb.be, %bb.bf
  br label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %.sroa.02.0.copyload.i.i.i.i78.i.i = load i64, ptr %i.hl, align 8, !alias.scope !104952, !noalias !104953 ; 2 uses
  %i.hm = and i64 %.sroa.02.0.copyload.i.i.i.i78.i.i, 4294967295
  %i.hn = icmp eq i64 %i.hm, %i.fk
  %.sroa.4.12.extract.shift.i79.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i78.i.i, 32
  %i.ho = icmp eq i64 %.sroa.4.12.extract.shift.i79.i.i, %i.fj
  %or.cond.i80.i.i = and i1 %i.hn, %i.ho
  br i1 %or.cond.i80.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i, label %.backedge

bb.bg:                                            ; preds = %bb.bd
  %i.hp = trunc i64 %i.fk to i32
  %i.hq = trunc i64 %i.fj to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !104910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !104954
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef %i.hp, i32 noundef %i.hq, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc85.i.i unwind label %.loopexit.i.i, !noalias !104910

.noexc85.i.i:                                     ; preds = %bb.bg
  %i.hr = load i64, ptr %i.k, align 8, !range !123, !noalias !104954, !noundef !67 ; 3 uses
  %cond.i.i82.i.i = icmp eq i64 %i.hr, 2
  br i1 %cond.i.i82.i.i, label %bb.bj, label %bb.bh, !prof !79

bb.bh:                                            ; preds = %.noexc85.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104955)
  %.not.i.i.i83.i.i = icmp eq i64 %i.hr, -1
  br i1 %.not.i.i.i83.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit88.i.i, label %bb.bi, !prof !77

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !104956
  %i.hs = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !104955, !noalias !104957
  store i64 %i.hr, ptr %i.h, align 8, !noalias !104956
  br label %.invoke278

.invoke278:                                       ; preds = %bb.ba, %bb.bi
  %.sink281.sroa.phi = phi ptr [ %.sink281.sroa.gep, %bb.ba ], [ %.sink281.sroa.gep327, %bb.bi ]
  %.sink281 = phi ptr [ %i.l, %bb.ba ], [ %i.h, %bb.bi ]
  %.sink = phi i64 [ %i.hd, %bb.ba ], [ %i.ht, %bb.bi ]
  %i.hu = phi ptr [ @743, %bb.ba ], [ @744, %bb.bi ]
  store i64 %.sink, ptr %.sink281.sroa.phi, align 8, !noalias !104910
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink281, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hu) #60
          to label %.cont279 unwind label %.loopexit.split-lp.i.i, !noalias !104910

.cont279:                                         ; preds = %.invoke278
  unreachable

bb.bj:                                            ; preds = %.noexc85.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !104954
  %i.hw = load i64, ptr %i.hv, align 8, !noalias !104954, !noundef !67
  store i64 %i.hw, ptr %i.j, align 8, !noalias !104954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !104954
  store ptr %i.j, ptr %i.i, align 8, !noalias !104954
  br label %.invoke
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout18graph_shell_layout:bb.a
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !136495
  br label %.body63.i

bb.ac:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !136501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !136495
  %i.dg = icmp eq i64 %.sroa.02.0.i.i35.i, 0
  br i1 %i.dg, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i: ; preds = %bb.ac
  %i.dh = shl nuw nsw i64 %.sroa.02.0.i.i35.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136474
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit

._crit_edge.i:                                    ; preds = %bb.ag, %bb.u
  %i.di = icmp eq i64 %.sroa.015.0.copyload16.i, 0
  br i1 %i.di, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i: ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i) ]
  %i.dj = shl nuw i64 %.sroa.015.0.copyload16.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136502
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i, %._crit_edge.i
  %i.dk = fadd double %.sroa.013.0.i, %.sroa.015.059.i
  %i.dl = fadd double %.sroa.08.0.i, %.sroa.010.160.i
  %i.dm = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dm, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.ad:                                            ; preds = %bb.ag, %.lr.ph.i
  %.sroa.028.056.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dz, %bb.ag ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.sroa.0.0.copyload.i, i64 %.sroa.028.056.i
  %i.do = load i64, ptr %i.dn, align 8, !noalias !136474, !noundef !67 ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.02.0.i.i35.i
  br i1 %i.dp, label %bb.ag, label %bb.ah

bb.ae:                                            ; preds = %bb.ah
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = icmp eq i64 %.sroa.015.0.copyload16.i, 0
  br i1 %i.dr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit71.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i69.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i69.i: ; preds = %bb.ae
  %i.ds = shl nuw i64 %.sroa.015.0.copyload16.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136503
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit71.i

bb.af:                                            ; preds = %bb.ah
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.dt = uitofp nneg i64 %.sroa.028.056.i to double
  %i.du = fmul nnan double %i.dt, f0x401921FB54442D18
  %i.dv = fdiv double %i.du, %i.bm
  %i.dw = fadd double %.sroa.015.059.i, %i.dv
  %sincos.i = tail call { double, double } @llvm.sincos.f64(double %i.dw) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %i.dx = fmul double %.sroa.010.160.i, %sin.i
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.dy = fmul double %.sroa.010.160.i, %cos.i
  %i.dz = add nuw nsw i64 %.sroa.028.056.i, 1     ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i, i64 %i.do ; 2 uses
  store double %i.dy, ptr %i.ea, align 8, !noalias !136474
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store double %i.dx, ptr %i.eb, align 8, !noalias !136474
  %exitcond.not.i = icmp eq i64 %i.dz, %.sroa.7.sroa.5.0.copyload.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ad

bb.ah:                                            ; preds = %bb.ad
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !136474
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.do, i64 noundef %.sroa.02.0.i.i35.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1084) #61
          to label %bb.af unwind label %bb.ae, !noalias !136474

bb.ai:                                            ; preds = %bb.aj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  resume { ptr, i32 } %.pn.pn.pn.i

bb.aj:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1) #63, !noalias !136472
  br label %bb.ai

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit: ; preds = %bb.ac, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spiral_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, i64 noundef range(i64 0, 2) %2, double %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, i64 noundef range(i64 0, 2) %5, double %6, i8 noundef range(i8 0, 3) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136575)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !136574, !noalias !136576, !noundef !67 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !136577
  %i.h = shl i64 %i.g, 4                          ; 4 uses
  %i.i = icmp ugt i64 %i.g, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.h, 9223372036854775800
  %or.cond.i.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !136578
  %i.k = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136578 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.k to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.459.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.459.0.ph.i, i64 %i.h) #61, !noalias !136577
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.1061.0.i = phi i64 [ %i.m, %bb.d ], [ 8, %bb.b ]
  %.sroa.459.0.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.n = inttoptr i64 %.sroa.1061.0.i to ptr      ; 8 uses
  %i.o = icmp samesign ule i64 %i.g, %.sroa.459.0.i
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.459.0.i, ptr %i.e, align 8, !noalias !136577
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !noalias !136577
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !136577
  %i.r = trunc nuw i64 %5 to i1
  %..i = select i1 %i.r, double %6, double 3.500000e-01 ; 2 uses
  %i.s = icmp eq i64 %i.g, 1
  br i1 %i.s, label %.loopexit73.thread.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  %i.t = and i8 %7, 1
  %or.cond.not.i = icmp eq i8 %i.t, 0
  %.not90.i = icmp eq i64 %i.g, 0                 ; 3 uses
  br i1 %or.cond.not.i, label %.preheader.i, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.f
  br i1 %.not90.i, label %.loopexit73.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not90.i, label %.loopexit73.i, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.preheader.i
  %i.u = insertelement <2 x double> <double poison, double 1.000000e+00>, double %..i, i64 0
  br label %.lr.ph88.i

.loopexit73.i:                                    ; preds = %bb.aa, %bb.h, %.preheader.i, %.preheader75.i
  %i.v = trunc nuw i64 %2 to i1
  %.sroa.456.0.copyload.pre.pre.i = load ptr, ptr %i.p, align 8, !noalias !136577 ; 3 uses
  br i1 %i.v, label %bb.j, label %bb.m

.loopexit73.thread.i:                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !136577
  store i64 1, ptr %i.q, align 8, !alias.scope !136579, !noalias !136580
  %i.w = trunc nuw i64 %2 to i1
  br i1 %i.w, label %.thread.i, label %.thread125.i

.thread.i:                                        ; preds = %.loopexit73.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !136577
  br label %bb.k

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %bb.h
  %i.x = phi ptr [ %i.ag, %bb.h ], [ %i.n, %.lr.ph88.i.preheader ]
  %i.y = phi i64 [ %i.ai, %bb.h ], [ 0, %.lr.ph88.i.preheader ] ; 3 uses
  %i.z = phi <2 x double> [ %i.aj, %bb.h ], [ zeroinitializer, %.lr.ph88.i.preheader ] ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %sincos.i = tail call { double, double } @llvm.sincos.f64(double %i.aa) ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %i.ab = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ac = fmul double %i.ab, %cos.i
  %i.ad = fmul double %i.ab, %sin.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136581)
  %i.ae = load i64, ptr %i.e, align 8, !range !70, !alias.scope !136581, !noalias !136582, !noundef !67
  %i.af = icmp eq i64 %i.y, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph88.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge97.i unwind label %.loopexit74.i, !noalias !136577

._crit_edge97.i:                                  ; preds = %bb.g
  %.pre98.i = load ptr, ptr %i.p, align 8, !alias.scope !136581, !noalias !136582
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge97.i, %.lr.ph88.i
  %i.ag = phi ptr [ %.pre98.i, %._crit_edge97.i ], [ %i.x, %.lr.ph88.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.y ; 2 uses
  store double %i.ac, ptr %i.ah, align 8, !noalias !136583
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %i.ad, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !136583
  %i.ai = add nuw i64 %i.y, 1                     ; 3 uses
  store i64 %i.ai, ptr %i.q, align 8, !alias.scope !136581, !noalias !136582
  %i.aj = fadd <2 x double> %i.u, %i.z
  %exitcond96.not.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond96.not.i, label %.loopexit73.i, label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %.preheader75.i, %bb.aa
  %i.ak = phi ptr [ %i.dk, %bb.aa ], [ %i.n, %.preheader75.i ]
  %i.al = phi i64 [ %i.dm, %bb.aa ], [ 0, %.preheader75.i ] ; 3 uses
  %.sroa.09.183.i = phi double [ %i.ao, %bb.aa ], [ %..i, %.preheader75.i ] ; 2 uses
  %i.am = fmul double %.sroa.09.183.i, 5.000000e-01 ; 3 uses
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %.sroa.09.183.i, %i.an      ; 2 uses
  %sincos31.i = tail call { double, double } @llvm.sincos.f64(double %i.ao) ; 2 uses
  %sin32.i = extractvalue { double, double } %sincos31.i, 0
  %cos33.i = extractvalue { double, double } %sincos31.i, 1
  %i.ap = fmul double %i.am, %cos33.i
  %i.aq = fmul double %i.am, %sin32.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136584)
  %i.ar = load i64, ptr %i.e, align 8, !range !70, !alias.scope !136584, !noalias !136585, !noundef !67
  %i.as = icmp eq i64 %i.al, %i.ar
  br i1 %i.as, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !136577

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.p, align 8, !alias.scope !136584, !noalias !136585
  br label %bb.aa

bb.j:                                             ; preds = %.loopexit73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !136577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136586)
  %i.at = shl nuw nsw i64 %i.g, 3
  br i1 %.not90.i, label %.loopexit72.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.au = phi i64 [ 8, %.thread.i ], [ %i.at, %bb.j ] ; 2 uses
  %.sroa.557.0.copyload108116.i = phi i64 [ 1, %.thread.i ], [ %i.g, %bb.j ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre110114.i = phi ptr [ %i.n, %.thread.i ], [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !136587
  %i.av = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136587 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %vec.ind, ptr %i.ax, align 8, !noalias !136588
  store <2 x i64> %step.add, ptr %i.ay, align 8, !noalias !136588
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !136535

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i.preheader46

.lr.ph.i.i.i.i.i.i.preheader46:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #61
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !136577

.noexc41.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader46, %.lr.ph.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ] ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  store i64 %i.ba, ptr %i.bc, align 8, !noalias !136588
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !136536

bb.m:                                             ; preds = %bb.n, %.loopexit73.i
  %.sroa.456.0.copyload.pre.pre111.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %.loopexit73.i ], [ %.sroa.456.0.copyload.pre.pre110115123.i, %bb.n ] ; 4 uses
  %.sroa.557.0.copyload109.i = phi i64 [ %i.g, %.loopexit73.i ], [ %.sroa.557.0.copyload108117122.i, %bb.n ] ; 4 uses
  %i.bd = load i64, ptr %4, align 8, !range !68, !alias.scope !136575, !noalias !136589, !noundef !67
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.o, label %.loopexit.i

.thread125.i:                                     ; preds = %.loopexit73.thread.i
  %i.bf = load i64, ptr %4, align 8, !range !68, !alias.scope !136575, !noalias !136589, !noundef !67
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %.thread132.i, label %.loopexit.i

.thread132.i:                                     ; preds = %.thread125.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %.lr.ph.i.preheader.i

.loopexit72.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.j
  %i.bi = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.456.0.copyload.pre.pre110115123.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ], [ %.sroa.456.0.copyload.pre.pre110114.i, %middle.block ], [ %.sroa.456.0.copyload.pre.pre110114.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.557.0.copyload108117122.i = phi i64 [ %i.g, %bb.j ], [ %.sroa.557.0.copyload108116.i, %middle.block ], [ %.sroa.557.0.copyload108116.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !136586, !noalias !136577
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !136586, !noalias !136577
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !136586, !noalias !136577
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %.sroa.456.0.copyload.pre.pre110115123.i, i64 noundef %.sroa.557.0.copyload108117122.i, double noundef %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !136577

bb.n:                                             ; preds = %.loopexit72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !136577
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %.idx.i.i = shl nuw nsw i64 %.sroa.557.0.copyload109.i, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.456.0.copyload.pre.pre111.i, i64 %.idx.i.i
  %i.bk = icmp eq i64 %.sroa.557.0.copyload109.i, 0
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o, %.thread132.i
  %i.bl = phi ptr [ %i.bh, %.thread132.i ], [ %i.bj, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111129140.i = phi ptr [ %i.n, %.thread132.i ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.o ] ; 7 uses
  %.sroa.557.0.copyload109130139.i = phi i64 [ 1, %.thread132.i ], [ %.sroa.557.0.copyload109.i, %bb.o ] ; 2 uses
  %.sroa.048.0.copyload141.in.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load <2 x double>, ptr %.sroa.048.0.copyload141.in.i, align 8, !alias.scope !136575, !noalias !136589 ; 3 uses
  %i.bn = ptrtoaddr ptr %i.bl to i64
  %i.bo = ptrtoaddr ptr %.sroa.456.0.copyload.pre.pre111129140.i to i64
  %i.bp = add i64 %i.bn, -16
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  %i.br = lshr i64 %i.bq, 4
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.bq, 48
  br i1 %min.iters.check31, label %.lr.ph.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec33 = and i64 %i.bs, 2305843009213693950   ; 3 uses
  %i.bt = shl i64 %n.vec33, 4
  %i.bu = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bt
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next38, %vector.body34 ] ; 2 uses
  %i.bv = shl i64 %index35, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bv
  %next.gep36 = getelementptr i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !136590, !noalias !136577
  %wide.load37 = load <2 x double>, ptr %next.gep36, align 8, !alias.scope !136590, !noalias !136577
  %i.bx = fadd <2 x double> %i.bm, %wide.load
  %i.by = fadd <2 x double> %i.bm, %wide.load37
  store <2 x double> %i.bx, ptr %next.gep, align 8, !alias.scope !136590, !noalias !136577
  store <2 x double> %i.by, ptr %next.gep36, align 8, !alias.scope !136590, !noalias !136577
  %index.next38 = add nuw i64 %index35, 2         ; 2 uses
  %i.bz = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.bz, label %middle.block39, label %vector.body34, !llvm.loop !136539

middle.block39:                                   ; preds = %vector.body34
  %cmp.n40 = icmp eq i64 %i.bs, %n.vec33
  br i1 %cmp.n40, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block39
  %.sroa.0.01.i.i.ph = phi ptr [ %.sroa.456.0.copyload.pre.pre111129140.i, %.lr.ph.i.preheader.i ], [ %i.bu, %middle.block39 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.sroa.0.01.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16 ; 2 uses
  %i.cb = load <2 x double>, ptr %.sroa.0.01.i.i, align 8, !alias.scope !136590, !noalias !136577
  %i.cc = fadd <2 x double> %i.bm, %i.cb
  store <2 x double> %i.cc, ptr %.sroa.0.01.i.i, align 8, !alias.scope !136590, !noalias !136577
  %i.cd = icmp eq ptr %i.ca, %i.bl
  br i1 %i.cd, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !136540

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block39, %bb.o, %.thread125.i, %bb.m
  %.sroa.557.0.copyload109131.i = phi i64 [ 1, %.thread125.i ], [ 0, %bb.o ], [ %.sroa.557.0.copyload109.i, %bb.m ], [ %.sroa.557.0.copyload109130139.i, %middle.block39 ], [ %.sroa.557.0.copyload109130139.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111128.i = phi ptr [ %i.n, %.thread125.i ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.o ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.m ], [ %.sroa.456.0.copyload.pre.pre111129140.i, %middle.block39 ], [ %.sroa.456.0.copyload.pre.pre111129140.i, %.lr.ph.i.i ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !136574, !noalias !136576, !nonnull !67, !noundef !67 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !136574, !noalias !136576, !noundef !67
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ch
  %.sroa.055.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !136577 ; 7 uses
  %i.cj = icmp ult i64 %.sroa.557.0.copyload109131.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.456.0.copyload.pre.pre111128.i, i64 %.sroa.557.0.copyload109131.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !136591
  %i.cl = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i unwind label %.thread.i.i, !noalias !136591

.noexc3.i.i:                                      ; preds = %.loopexit.i
  %i.cm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !136591
  %i.cn = icmp eq i8 %i.cm, 2
  br i1 %i.cn, label %bb.q, label %bb.p, !prof !77

bb.p:                                             ; preds = %.noexc3.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.q unwind label %.thread.i.i, !noalias !136591

bb.q:                                             ; preds = %bb.p, %.noexc3.i.i
  store i64 0, ptr %i.c, align 8, !alias.scope !136592, !noalias !136591
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !136592, !noalias !136591
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !136592, !noalias !136591
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !136591
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.cl, ptr %i.co, align 8, !alias.scope !136592, !noalias !136591
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 0)
          to label %bb.r unwind label %bb.z, !noalias !136593

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.cp = phi ptr [ %i.dd, %bb.y ], [ %.sroa.456.0.copyload.pre.pre111128.i, %bb.r ] ; 3 uses
  %i.cq = phi i64 [ %i.cw, %bb.y ], [ 0, %bb.r ]
  %i.cr = phi ptr [ %i.cv, %bb.y ], [ %i.cf, %bb.r ]
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cs = phi i64 [ %i.cw, %bb.u ], [ %i.cq, %bb.s ] ; 2 uses
  %i.ct = phi ptr [ %i.cv, %bb.u ], [ %i.cr, %bb.s ] ; 3 uses
  %i.cu = icmp eq ptr %i.ct, %i.ci
  br i1 %i.cu, label %.loopexit.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cw = add i64 %i.cs, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !noalias !136594, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = icmp eq ptr %i.cp, %i.ck
  br i1 %i.cx, label %.loopexit.i.i.i.i.i.i.i, label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.cz, label %.body7.i.i, label %.body.sink.split.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.da = and i64 %i.cs, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !noalias !136596
  store i64 %i.da, ptr %i.b, align 8, !noalias !136595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136597
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.w, !noalias !136596

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.v, %bb.t
  %i.db = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.db, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.dc = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136598
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136595
  br label %bb.s

.body.sink.split.i.i.i:                           ; preds = %bb.z, %bb.w
  %eh.lpad-body30.ph.i.i.i = phi { ptr, i32 } [ %i.df, %bb.z ], [ %i.cy, %bb.w ]
  %i.de = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136593
  br label %.body7.i.i

bb.z:                                             ; preds = %bb.q
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.dg, label %.body7.i.i, label %.body.sink.split.i.i.i

.body7.i.i:                                       ; preds = %bb.z, %.body.sink.split.i.i.i, %bb.w
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body30.ph.i.i.i, %.body.sink.split.i.i.i ], [ %i.df, %bb.z ], [ %i.cy, %bb.w ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !136591
  br label %.body.i

.thread.i.i:                                      ; preds = %bb.p, %.loopexit.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.di, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.thread.i.i
  %i.dj = shl nuw i64 %.sroa.055.0.copyload.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136599
  br label %.body.i

bb.aa:                                            ; preds = %._crit_edge.i, %.lr.ph.i
  %i.dk = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.al ; 2 uses
  store double %i.ap, ptr %i.dl, align 8, !noalias !136600
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store double %i.aq, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !136600
  %i.dm = add nuw i64 %i.al, 1                    ; 3 uses
  store i64 %i.dm, ptr %i.q, align 8, !alias.scope !136584, !noalias !136585
  %exitcond.not.i = icmp eq i64 %i.dm, %i.g
  br i1 %exitcond.not.i, label %.loopexit73.i, label %.lr.ph.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %.thread.i.i, %.body7.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %i.dh, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %eh.lpad-body8.i.i, %.body7.i.i ], [ %i.dh, %.thread.i.i ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.phi.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body69.i

.loopexit74.i:                                    ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.i
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit72.i, %bb.l
  %lpad.loopexit.split-lp78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit74.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit74.i ], [ %lpad.loopexit77.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp78.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noalias !136577 ; 2 uses
  %i.dn = icmp eq i64 %.val.i, 0
  br i1 %i.dn, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.i
  %.val34.i = load ptr, ptr %i.p, align 8, !noalias !136577, !nonnull !67, !noundef !67
  %i.do = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136577
  br label %.body.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit: ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !136601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !136591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !136577
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spring_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, i64 noundef range(i64 0, 2) %4, double %5, i32 noundef %6, i1 noundef zeroext %7, i64 noundef %8, double noundef %9, ptr noundef %10, double noundef %11, double noundef %12, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %13, i64 noundef range(i64 0, 2) %14, i64 %15) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 4                ; 11 uses
  %i.j = alloca [4 x i8], align 4                 ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %.sroa.641.i = alloca [16 x i8], align 8        ; 4 uses
  %i.m = alloca [48 x i8], align 16               ; 7 uses
  %i.n = alloca [32 x i8], align 16               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136897)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.i)
  %i.o = load ptr, ptr %3, align 8, !alias.scope !136896, !noalias !136898, !noundef !67 ; 5 uses
  %.not.i = icmp ne ptr %i.o, null
  %i.p = load ptr, ptr %2, align 8, !alias.scope !136895, !noalias !136899 ; 3 uses
  %.not175.i = icmp eq ptr %i.p, null             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 %.not175.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !136900
  %i.q = trunc nuw i64 %14 to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !136900
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136900 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.ex, !prof !104

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc225.i unwind label %bb.j, !noalias !136900

.noexc225.i:                                      ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.t = mul i64 %15, 6364136223846793005
  %i.u = add i64 %i.t, -6812164046247290893       ; 4 uses
  %i.v = lshr i64 %i.u, 45
  %i.w = lshr i64 %i.u, 27
  %i.x = xor i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = lshr i64 %i.u, 59
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = tail call noundef i32 @llvm.fshr.i32(i32 %i.y, i32 %i.y, i32 range(i32 0, 32) %i.aa)
  %i.ac = mul i64 %i.u, 6364136223846793005
  %i.ad = add i64 %i.ac, -6812164046247290893     ; 4 uses
  %i.ae = lshr i64 %i.ad, 45
  %i.af = lshr i64 %i.ad, 27
  %i.ag = xor i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = lshr i64 %i.ad, 59
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = tail call noundef i32 @llvm.fshr.i32(i32 %i.ah, i32 %i.ah, i32 range(i32 0, 32) %i.aj)
  %i.al = mul i64 %i.ad, 6364136223846793005
  %i.am = add i64 %i.al, -6812164046247290893     ; 4 uses
  %i.an = lshr i64 %i.am, 45
  %i.ao = lshr i64 %i.am, 27
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = lshr i64 %i.am, 59
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = tail call noundef i32 @llvm.fshr.i32(i32 %i.aq, i32 %i.aq, i32 range(i32 0, 32) %i.as)
  %i.au = mul i64 %i.am, 6364136223846793005
  %i.av = add i64 %i.au, -6812164046247290893     ; 4 uses
  %i.aw = lshr i64 %i.av, 45
  %i.ax = lshr i64 %i.av, 27
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = lshr i64 %i.av, 59
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = tail call noundef i32 @llvm.fshr.i32(i32 %i.az, i32 %i.az, i32 range(i32 0, 32) %i.bb)
  %i.bd = mul i64 %i.av, 6364136223846793005
  %i.be = add i64 %i.bd, -6812164046247290893     ; 4 uses
  %i.bf = lshr i64 %i.be, 45
  %i.bg = lshr i64 %i.be, 27
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = lshr i64 %i.be, 59
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = tail call noundef i32 @llvm.fshr.i32(i32 %i.bi, i32 %i.bi, i32 range(i32 0, 32) %i.bk)
  %i.bm = mul i64 %i.be, 6364136223846793005
  %i.bn = add i64 %i.bm, -6812164046247290893     ; 4 uses
  %i.bo = lshr i64 %i.bn, 45
  %i.bp = lshr i64 %i.bn, 27
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i64 %i.bn, 59
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 range(i32 0, 32) %i.bt)
  %i.bv = mul i64 %i.bn, 6364136223846793005
  %i.bw = add i64 %i.bv, -6812164046247290893     ; 4 uses
  %i.bx = lshr i64 %i.bw, 45
  %i.by = lshr i64 %i.bw, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bw, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = tail call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 range(i32 0, 32) %i.cc)
  %i.ce = mul i64 %i.bw, 6364136223846793005
  %i.cf = add i64 %i.ce, -6812164046247290893     ; 3 uses
  %i.cg = lshr i64 %i.cf, 45
  %i.ch = lshr i64 %i.cf, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %i.cf, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = tail call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 range(i32 0, 32) %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !136901
  store i32 %i.ab, ptr %i.i, align 4, !noalias !136901
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !136901
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !136901
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.bc, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !136901
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !136901
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.bu, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !136901
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.cd, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !noalias !136901
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.cm, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !136901
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.i)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !136900

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !136901
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !136900
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.m)
          to label %bb.k unwind label %bb.j, !noalias !136900

.thread.i:                                        ; preds = %bb.ew, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i, %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body390.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i, %bb.j
  %.sroa.063.0.i = phi i8 [ %.sroa.063.1.i, %bb.j ], [ 0, %bb.ew ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body390.i ], [ 0, %bb.ev ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %.sroa.061.0.i = phi i8 [ 1, %bb.j ], [ 1, %bb.ew ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body390.i ], [ %.sroa.061.3.ph.i, %bb.ev ], [ %.sroa.061.3.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %.pn186.i = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.ago, %bb.ew ], [ %eh.lpad-body.i291.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ %eh.lpad-body.i291.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %eh.lpad-body391.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %eh.lpad-body391.i, %.body390.i ], [ %.pn182.ph.i, %bb.ev ], [ %.pn182.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %i.cn = icmp eq ptr %10, null
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout20digraph_shell_layout:bb.a
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !137100
  br label %.body63.i

bb.ac:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !137106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !137100
  %i.dg = icmp eq i64 %.sroa.02.0.i.i35.i, 0
  br i1 %i.dg, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i: ; preds = %bb.ac
  %i.dh = shl nuw nsw i64 %.sroa.02.0.i.i35.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137079
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit

._crit_edge.i:                                    ; preds = %bb.ag, %bb.u
  %i.di = icmp eq i64 %.sroa.015.0.copyload16.i, 0
  br i1 %i.di, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i: ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i) ]
  %i.dj = shl nuw i64 %.sroa.015.0.copyload16.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137107
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i, %._crit_edge.i
  %i.dk = fadd double %.sroa.013.0.i, %.sroa.015.059.i
  %i.dl = fadd double %.sroa.08.0.i, %.sroa.010.160.i
  %i.dm = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dm, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.ad:                                            ; preds = %bb.ag, %.lr.ph.i
  %.sroa.028.056.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dz, %bb.ag ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.sroa.0.0.copyload.i, i64 %.sroa.028.056.i
  %i.do = load i64, ptr %i.dn, align 8, !noalias !137079, !noundef !67 ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.02.0.i.i35.i
  br i1 %i.dp, label %bb.ag, label %bb.ah

bb.ae:                                            ; preds = %bb.ah
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = icmp eq i64 %.sroa.015.0.copyload16.i, 0
  br i1 %i.dr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit71.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i69.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i69.i: ; preds = %bb.ae
  %i.ds = shl nuw i64 %.sroa.015.0.copyload16.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137108
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit71.i

bb.af:                                            ; preds = %bb.ah
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.dt = uitofp nneg i64 %.sroa.028.056.i to double
  %i.du = fmul nnan double %i.dt, f0x401921FB54442D18
  %i.dv = fdiv double %i.du, %i.bm
  %i.dw = fadd double %.sroa.015.059.i, %i.dv
  %sincos.i = tail call { double, double } @llvm.sincos.f64(double %i.dw) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %i.dx = fmul double %.sroa.010.160.i, %sin.i
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.dy = fmul double %.sroa.010.160.i, %cos.i
  %i.dz = add nuw nsw i64 %.sroa.028.056.i, 1     ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i, i64 %i.do ; 2 uses
  store double %i.dy, ptr %i.ea, align 8, !noalias !137079
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store double %i.dx, ptr %i.eb, align 8, !noalias !137079
  %exitcond.not.i = icmp eq i64 %i.dz, %.sroa.7.sroa.5.0.copyload.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ad

bb.ah:                                            ; preds = %bb.ad
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !137079
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.do, i64 noundef %.sroa.02.0.i.i35.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1084) #61
          to label %bb.af unwind label %bb.ae, !noalias !137079

bb.ai:                                            ; preds = %bb.aj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  resume { ptr, i32 } %.pn.pn.pn.i

bb.aj:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1) #63, !noalias !137077
  br label %bb.ai

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit: ; preds = %bb.ac, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spiral_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i64 noundef range(i64 0, 2) %2, double %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, i64 noundef range(i64 0, 2) %5, double %6, i8 noundef range(i8 0, 3) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137180)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !137179, !noalias !137181, !noundef !67 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !137182
  %i.h = shl i64 %i.g, 4                          ; 4 uses
  %i.i = icmp ugt i64 %i.g, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.h, 9223372036854775800
  %or.cond.i.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !137183
  %i.k = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137183 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.k to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.459.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.459.0.ph.i, i64 %i.h) #61, !noalias !137182
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.1061.0.i = phi i64 [ %i.m, %bb.d ], [ 8, %bb.b ]
  %.sroa.459.0.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.n = inttoptr i64 %.sroa.1061.0.i to ptr      ; 8 uses
  %i.o = icmp samesign ule i64 %i.g, %.sroa.459.0.i
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.459.0.i, ptr %i.e, align 8, !noalias !137182
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !noalias !137182
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !137182
  %i.r = trunc nuw i64 %5 to i1
  %..i = select i1 %i.r, double %6, double 3.500000e-01 ; 2 uses
  %i.s = icmp eq i64 %i.g, 1
  br i1 %i.s, label %.loopexit73.thread.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  %i.t = and i8 %7, 1
  %or.cond.not.i = icmp eq i8 %i.t, 0
  %.not90.i = icmp eq i64 %i.g, 0                 ; 3 uses
  br i1 %or.cond.not.i, label %.preheader.i, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.f
  br i1 %.not90.i, label %.loopexit73.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not90.i, label %.loopexit73.i, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.preheader.i
  %i.u = insertelement <2 x double> <double poison, double 1.000000e+00>, double %..i, i64 0
  br label %.lr.ph88.i

.loopexit73.i:                                    ; preds = %bb.aa, %bb.h, %.preheader.i, %.preheader75.i
  %i.v = trunc nuw i64 %2 to i1
  %.sroa.456.0.copyload.pre.pre.i = load ptr, ptr %i.p, align 8, !noalias !137182 ; 3 uses
  br i1 %i.v, label %bb.j, label %bb.m

.loopexit73.thread.i:                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !137182
  store i64 1, ptr %i.q, align 8, !alias.scope !137184, !noalias !137185
  %i.w = trunc nuw i64 %2 to i1
  br i1 %i.w, label %.thread.i, label %.thread125.i

.thread.i:                                        ; preds = %.loopexit73.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !137182
  br label %bb.k

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %bb.h
  %i.x = phi ptr [ %i.ag, %bb.h ], [ %i.n, %.lr.ph88.i.preheader ]
  %i.y = phi i64 [ %i.ai, %bb.h ], [ 0, %.lr.ph88.i.preheader ] ; 3 uses
  %i.z = phi <2 x double> [ %i.aj, %bb.h ], [ zeroinitializer, %.lr.ph88.i.preheader ] ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %sincos.i = tail call { double, double } @llvm.sincos.f64(double %i.aa) ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %i.ab = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ac = fmul double %i.ab, %cos.i
  %i.ad = fmul double %i.ab, %sin.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137186)
  %i.ae = load i64, ptr %i.e, align 8, !range !70, !alias.scope !137186, !noalias !137187, !noundef !67
  %i.af = icmp eq i64 %i.y, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph88.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge97.i unwind label %.loopexit74.i, !noalias !137182

._crit_edge97.i:                                  ; preds = %bb.g
  %.pre98.i = load ptr, ptr %i.p, align 8, !alias.scope !137186, !noalias !137187
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge97.i, %.lr.ph88.i
  %i.ag = phi ptr [ %.pre98.i, %._crit_edge97.i ], [ %i.x, %.lr.ph88.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.y ; 2 uses
  store double %i.ac, ptr %i.ah, align 8, !noalias !137188
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %i.ad, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !137188
  %i.ai = add nuw i64 %i.y, 1                     ; 3 uses
  store i64 %i.ai, ptr %i.q, align 8, !alias.scope !137186, !noalias !137187
  %i.aj = fadd <2 x double> %i.u, %i.z
  %exitcond96.not.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond96.not.i, label %.loopexit73.i, label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %.preheader75.i, %bb.aa
  %i.ak = phi ptr [ %i.dk, %bb.aa ], [ %i.n, %.preheader75.i ]
  %i.al = phi i64 [ %i.dm, %bb.aa ], [ 0, %.preheader75.i ] ; 3 uses
  %.sroa.09.183.i = phi double [ %i.ao, %bb.aa ], [ %..i, %.preheader75.i ] ; 2 uses
  %i.am = fmul double %.sroa.09.183.i, 5.000000e-01 ; 3 uses
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %.sroa.09.183.i, %i.an      ; 2 uses
  %sincos31.i = tail call { double, double } @llvm.sincos.f64(double %i.ao) ; 2 uses
  %sin32.i = extractvalue { double, double } %sincos31.i, 0
  %cos33.i = extractvalue { double, double } %sincos31.i, 1
  %i.ap = fmul double %i.am, %cos33.i
  %i.aq = fmul double %i.am, %sin32.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137189)
  %i.ar = load i64, ptr %i.e, align 8, !range !70, !alias.scope !137189, !noalias !137190, !noundef !67
  %i.as = icmp eq i64 %i.al, %i.ar
  br i1 %i.as, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !137182

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.p, align 8, !alias.scope !137189, !noalias !137190
  br label %bb.aa

bb.j:                                             ; preds = %.loopexit73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !137182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137191)
  %i.at = shl nuw nsw i64 %i.g, 3
  br i1 %.not90.i, label %.loopexit72.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.au = phi i64 [ 8, %.thread.i ], [ %i.at, %bb.j ] ; 2 uses
  %.sroa.557.0.copyload108116.i = phi i64 [ 1, %.thread.i ], [ %i.g, %bb.j ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre110114.i = phi ptr [ %i.n, %.thread.i ], [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !137192
  %i.av = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137192 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %vec.ind, ptr %i.ax, align 8, !noalias !137193
  store <2 x i64> %step.add, ptr %i.ay, align 8, !noalias !137193
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !137140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i.preheader46

.lr.ph.i.i.i.i.i.i.preheader46:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #61
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !137182

.noexc41.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader46, %.lr.ph.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ] ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  store i64 %i.ba, ptr %i.bc, align 8, !noalias !137193
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !137141

bb.m:                                             ; preds = %bb.n, %.loopexit73.i
  %.sroa.456.0.copyload.pre.pre111.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %.loopexit73.i ], [ %.sroa.456.0.copyload.pre.pre110115123.i, %bb.n ] ; 4 uses
  %.sroa.557.0.copyload109.i = phi i64 [ %i.g, %.loopexit73.i ], [ %.sroa.557.0.copyload108117122.i, %bb.n ] ; 4 uses
  %i.bd = load i64, ptr %4, align 8, !range !68, !alias.scope !137180, !noalias !137194, !noundef !67
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.o, label %.loopexit.i

.thread125.i:                                     ; preds = %.loopexit73.thread.i
  %i.bf = load i64, ptr %4, align 8, !range !68, !alias.scope !137180, !noalias !137194, !noundef !67
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %.thread132.i, label %.loopexit.i

.thread132.i:                                     ; preds = %.thread125.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %.lr.ph.i.preheader.i

.loopexit72.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.j
  %i.bi = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.456.0.copyload.pre.pre110115123.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ], [ %.sroa.456.0.copyload.pre.pre110114.i, %middle.block ], [ %.sroa.456.0.copyload.pre.pre110114.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.557.0.copyload108117122.i = phi i64 [ %i.g, %bb.j ], [ %.sroa.557.0.copyload108116.i, %middle.block ], [ %.sroa.557.0.copyload108116.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !137191, !noalias !137182
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !137191, !noalias !137182
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !137191, !noalias !137182
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %.sroa.456.0.copyload.pre.pre110115123.i, i64 noundef %.sroa.557.0.copyload108117122.i, double noundef %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !137182

bb.n:                                             ; preds = %.loopexit72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !137182
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %.idx.i.i = shl nuw nsw i64 %.sroa.557.0.copyload109.i, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.456.0.copyload.pre.pre111.i, i64 %.idx.i.i
  %i.bk = icmp eq i64 %.sroa.557.0.copyload109.i, 0
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o, %.thread132.i
  %i.bl = phi ptr [ %i.bh, %.thread132.i ], [ %i.bj, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111129140.i = phi ptr [ %i.n, %.thread132.i ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.o ] ; 7 uses
  %.sroa.557.0.copyload109130139.i = phi i64 [ 1, %.thread132.i ], [ %.sroa.557.0.copyload109.i, %bb.o ] ; 2 uses
  %.sroa.048.0.copyload141.in.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load <2 x double>, ptr %.sroa.048.0.copyload141.in.i, align 8, !alias.scope !137180, !noalias !137194 ; 3 uses
  %i.bn = ptrtoaddr ptr %i.bl to i64
  %i.bo = ptrtoaddr ptr %.sroa.456.0.copyload.pre.pre111129140.i to i64
  %i.bp = add i64 %i.bn, -16
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  %i.br = lshr i64 %i.bq, 4
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.bq, 48
  br i1 %min.iters.check31, label %.lr.ph.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec33 = and i64 %i.bs, 2305843009213693950   ; 3 uses
  %i.bt = shl i64 %n.vec33, 4
  %i.bu = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bt
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next38, %vector.body34 ] ; 2 uses
  %i.bv = shl i64 %index35, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bv
  %next.gep36 = getelementptr i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !137195, !noalias !137182
  %wide.load37 = load <2 x double>, ptr %next.gep36, align 8, !alias.scope !137195, !noalias !137182
  %i.bx = fadd <2 x double> %i.bm, %wide.load
  %i.by = fadd <2 x double> %i.bm, %wide.load37
  store <2 x double> %i.bx, ptr %next.gep, align 8, !alias.scope !137195, !noalias !137182
  store <2 x double> %i.by, ptr %next.gep36, align 8, !alias.scope !137195, !noalias !137182
  %index.next38 = add nuw i64 %index35, 2         ; 2 uses
  %i.bz = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.bz, label %middle.block39, label %vector.body34, !llvm.loop !137144

middle.block39:                                   ; preds = %vector.body34
  %cmp.n40 = icmp eq i64 %i.bs, %n.vec33
  br i1 %cmp.n40, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block39
  %.sroa.0.01.i.i.ph = phi ptr [ %.sroa.456.0.copyload.pre.pre111129140.i, %.lr.ph.i.preheader.i ], [ %i.bu, %middle.block39 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.sroa.0.01.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16 ; 2 uses
  %i.cb = load <2 x double>, ptr %.sroa.0.01.i.i, align 8, !alias.scope !137195, !noalias !137182
  %i.cc = fadd <2 x double> %i.bm, %i.cb
  store <2 x double> %i.cc, ptr %.sroa.0.01.i.i, align 8, !alias.scope !137195, !noalias !137182
  %i.cd = icmp eq ptr %i.ca, %i.bl
  br i1 %i.cd, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !137145

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block39, %bb.o, %.thread125.i, %bb.m
  %.sroa.557.0.copyload109131.i = phi i64 [ 1, %.thread125.i ], [ 0, %bb.o ], [ %.sroa.557.0.copyload109.i, %bb.m ], [ %.sroa.557.0.copyload109130139.i, %middle.block39 ], [ %.sroa.557.0.copyload109130139.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111128.i = phi ptr [ %i.n, %.thread125.i ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.o ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.m ], [ %.sroa.456.0.copyload.pre.pre111129140.i, %middle.block39 ], [ %.sroa.456.0.copyload.pre.pre111129140.i, %.lr.ph.i.i ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !137179, !noalias !137181, !nonnull !67, !noundef !67 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !137179, !noalias !137181, !noundef !67
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ch
  %.sroa.055.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !137182 ; 7 uses
  %i.cj = icmp ult i64 %.sroa.557.0.copyload109131.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.456.0.copyload.pre.pre111128.i, i64 %.sroa.557.0.copyload109131.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !137196
  %i.cl = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i unwind label %.thread.i.i, !noalias !137196

.noexc3.i.i:                                      ; preds = %.loopexit.i
  %i.cm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !137196
  %i.cn = icmp eq i8 %i.cm, 2
  br i1 %i.cn, label %bb.q, label %bb.p, !prof !77

bb.p:                                             ; preds = %.noexc3.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.q unwind label %.thread.i.i, !noalias !137196

bb.q:                                             ; preds = %bb.p, %.noexc3.i.i
  store i64 0, ptr %i.c, align 8, !alias.scope !137197, !noalias !137196
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !137197, !noalias !137196
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !137197, !noalias !137196
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !137196
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.cl, ptr %i.co, align 8, !alias.scope !137197, !noalias !137196
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 0)
          to label %bb.r unwind label %bb.z, !noalias !137198

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.cp = phi ptr [ %i.dd, %bb.y ], [ %.sroa.456.0.copyload.pre.pre111128.i, %bb.r ] ; 3 uses
  %i.cq = phi i64 [ %i.cw, %bb.y ], [ 0, %bb.r ]
  %i.cr = phi ptr [ %i.cv, %bb.y ], [ %i.cf, %bb.r ]
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cs = phi i64 [ %i.cw, %bb.u ], [ %i.cq, %bb.s ] ; 2 uses
  %i.ct = phi ptr [ %i.cv, %bb.u ], [ %i.cr, %bb.s ] ; 3 uses
  %i.cu = icmp eq ptr %i.ct, %i.ci
  br i1 %i.cu, label %.loopexit.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cw = add i64 %i.cs, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !noalias !137199, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = icmp eq ptr %i.cp, %i.ck
  br i1 %i.cx, label %.loopexit.i.i.i.i.i.i.i, label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.cz, label %.body7.i.i, label %.body.sink.split.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.da = and i64 %i.cs, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !noalias !137201
  store i64 %i.da, ptr %i.b, align 8, !noalias !137200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137202
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.w, !noalias !137201

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.v, %bb.t
  %i.db = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.db, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.dc = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137203
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137200
  br label %bb.s

.body.sink.split.i.i.i:                           ; preds = %bb.z, %bb.w
  %eh.lpad-body30.ph.i.i.i = phi { ptr, i32 } [ %i.df, %bb.z ], [ %i.cy, %bb.w ]
  %i.de = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137198
  br label %.body7.i.i

bb.z:                                             ; preds = %bb.q
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.dg, label %.body7.i.i, label %.body.sink.split.i.i.i

.body7.i.i:                                       ; preds = %bb.z, %.body.sink.split.i.i.i, %bb.w
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body30.ph.i.i.i, %.body.sink.split.i.i.i ], [ %i.df, %bb.z ], [ %i.cy, %bb.w ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !137196
  br label %.body.i

.thread.i.i:                                      ; preds = %bb.p, %.loopexit.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.di, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.thread.i.i
  %i.dj = shl nuw i64 %.sroa.055.0.copyload.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137204
  br label %.body.i

bb.aa:                                            ; preds = %._crit_edge.i, %.lr.ph.i
  %i.dk = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.al ; 2 uses
  store double %i.ap, ptr %i.dl, align 8, !noalias !137205
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store double %i.aq, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !137205
  %i.dm = add nuw i64 %i.al, 1                    ; 3 uses
  store i64 %i.dm, ptr %i.q, align 8, !alias.scope !137189, !noalias !137190
  %exitcond.not.i = icmp eq i64 %i.dm, %i.g
  br i1 %exitcond.not.i, label %.loopexit73.i, label %.lr.ph.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %.thread.i.i, %.body7.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %i.dh, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %eh.lpad-body8.i.i, %.body7.i.i ], [ %i.dh, %.thread.i.i ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.phi.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body69.i

.loopexit74.i:                                    ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.i
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit72.i, %bb.l
  %lpad.loopexit.split-lp78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit74.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit74.i ], [ %lpad.loopexit77.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp78.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noalias !137182 ; 2 uses
  %i.dn = icmp eq i64 %.val.i, 0
  br i1 %i.dn, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.i
  %.val34.i = load ptr, ptr %i.p, align 8, !noalias !137182, !nonnull !67, !noundef !67
  %i.do = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137182
  br label %.body.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit: ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !137206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !137196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !137182
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spring_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, i64 noundef range(i64 0, 2) %4, double %5, i32 noundef %6, i1 noundef zeroext %7, i64 noundef %8, i64 noundef range(i64 0, 2) %9, double %10, ptr noundef %11, double noundef %12, double noundef %13, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %14, i64 noundef range(i64 0, 2) %15, i64 %16) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 4                ; 11 uses
  %i.j = alloca [4 x i8], align 4                 ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %.sroa.641.i = alloca [16 x i8], align 8        ; 4 uses
  %i.m = alloca [48 x i8], align 16               ; 7 uses
  %i.n = alloca [32 x i8], align 16               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137502)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.i)
  %i.o = load ptr, ptr %3, align 8, !alias.scope !137501, !noalias !137503, !noundef !67 ; 5 uses
  %.not.i = icmp ne ptr %i.o, null
  %i.p = load ptr, ptr %2, align 8, !alias.scope !137500, !noalias !137504 ; 3 uses
  %.not175.i = icmp eq ptr %i.p, null             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 %.not175.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !137505
  %i.q = trunc nuw i64 %15 to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !137505
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137505 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.ex, !prof !104

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc225.i unwind label %bb.j, !noalias !137505

.noexc225.i:                                      ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.t = mul i64 %16, 6364136223846793005
  %i.u = add i64 %i.t, -6812164046247290893       ; 4 uses
  %i.v = lshr i64 %i.u, 45
  %i.w = lshr i64 %i.u, 27
  %i.x = xor i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = lshr i64 %i.u, 59
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = tail call noundef i32 @llvm.fshr.i32(i32 %i.y, i32 %i.y, i32 range(i32 0, 32) %i.aa)
  %i.ac = mul i64 %i.u, 6364136223846793005
  %i.ad = add i64 %i.ac, -6812164046247290893     ; 4 uses
  %i.ae = lshr i64 %i.ad, 45
  %i.af = lshr i64 %i.ad, 27
  %i.ag = xor i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = lshr i64 %i.ad, 59
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = tail call noundef i32 @llvm.fshr.i32(i32 %i.ah, i32 %i.ah, i32 range(i32 0, 32) %i.aj)
  %i.al = mul i64 %i.ad, 6364136223846793005
  %i.am = add i64 %i.al, -6812164046247290893     ; 4 uses
  %i.an = lshr i64 %i.am, 45
  %i.ao = lshr i64 %i.am, 27
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = lshr i64 %i.am, 59
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = tail call noundef i32 @llvm.fshr.i32(i32 %i.aq, i32 %i.aq, i32 range(i32 0, 32) %i.as)
  %i.au = mul i64 %i.am, 6364136223846793005
  %i.av = add i64 %i.au, -6812164046247290893     ; 4 uses
  %i.aw = lshr i64 %i.av, 45
  %i.ax = lshr i64 %i.av, 27
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = lshr i64 %i.av, 59
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = tail call noundef i32 @llvm.fshr.i32(i32 %i.az, i32 %i.az, i32 range(i32 0, 32) %i.bb)
  %i.bd = mul i64 %i.av, 6364136223846793005
  %i.be = add i64 %i.bd, -6812164046247290893     ; 4 uses
  %i.bf = lshr i64 %i.be, 45
  %i.bg = lshr i64 %i.be, 27
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = lshr i64 %i.be, 59
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = tail call noundef i32 @llvm.fshr.i32(i32 %i.bi, i32 %i.bi, i32 range(i32 0, 32) %i.bk)
  %i.bm = mul i64 %i.be, 6364136223846793005
  %i.bn = add i64 %i.bm, -6812164046247290893     ; 4 uses
  %i.bo = lshr i64 %i.bn, 45
  %i.bp = lshr i64 %i.bn, 27
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i64 %i.bn, 59
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 range(i32 0, 32) %i.bt)
  %i.bv = mul i64 %i.bn, 6364136223846793005
  %i.bw = add i64 %i.bv, -6812164046247290893     ; 4 uses
  %i.bx = lshr i64 %i.bw, 45
  %i.by = lshr i64 %i.bw, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bw, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = tail call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 range(i32 0, 32) %i.cc)
  %i.ce = mul i64 %i.bw, 6364136223846793005
  %i.cf = add i64 %i.ce, -6812164046247290893     ; 3 uses
  %i.cg = lshr i64 %i.cf, 45
  %i.ch = lshr i64 %i.cf, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %i.cf, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = tail call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 range(i32 0, 32) %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !137506
  store i32 %i.ab, ptr %i.i, align 4, !noalias !137506
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !137506
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !137506
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.bc, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !137506
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !137506
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.bu, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !137506
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.cd, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !noalias !137506
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.cm, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !137506
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.i)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !137505

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !137506
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !137505
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.m)
          to label %bb.k unwind label %bb.j, !noalias !137505

.thread.i:                                        ; preds = %bb.ew, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i, %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body390.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i, %bb.j
  %.sroa.063.0.i = phi i8 [ %.sroa.063.1.i, %bb.j ], [ 0, %bb.ew ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body390.i ], [ 0, %bb.ev ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %.sroa.061.0.i = phi i8 [ 1, %bb.j ], [ 1, %bb.ew ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body390.i ], [ %.sroa.061.3.ph.i, %bb.ev ], [ %.sroa.061.3.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %.pn186.i = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.agp, %bb.ew ], [ %eh.lpad-body.i291.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ %eh.lpad-body.i291.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %eh.lpad-body391.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %eh.lpad-body391.i, %.body390.i ], [ %.pn182.ph.i, %bb.ev ], [ %.pn182.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %i.cn = icmp eq ptr %11, null
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_string:bb.a
  %.sroa.013.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bb, align 8, !noalias !151072, !nonnull !67, !noundef !67
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.2, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bc, align 8, !noalias !151072, !nonnull !67, !noundef !67
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.3, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bd, align 8, !noalias !151072, !nonnull !67, !noundef !67
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.4, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.be, align 8, !noalias !151072, !nonnull !67, !noundef !67
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.5, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bf, align 8, !noalias !151072, !nonnull !67, !noundef !67
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.6, i64 544
  %i.bh = add i64 %.sroa.011.016.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bg, align 8, !noalias !151072, !nonnull !67, !noundef !67 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i.i.i
  %.sroa.59.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.12.023.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.r ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.022.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.r ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.025.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.au, %bb.r ], [ %.sroa.013.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i, i64 538
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !151073, !noundef !67
  %i.bl = zext i16 %i.bk to i64
  %i.bm = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i, %i.bl
  br i1 %i.bm, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.s
  %.sroa.0.026.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %bb.s ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.025.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.s ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ]
  %i.bn = load ptr, ptr %.sroa.0.026.i.i.i.i.i.i.i.i.i, align 8, !noalias !151073, !noundef !67 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.s
  %i.bo = zext i16 %i.br to i64
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bp = add i64 %.sroa.5.025.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i.i.i.i.i.i.i.i, i64 536
  %i.br = load i16, ptr %i.bq, align 8, !noalias !151073 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 538
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !151073, !noundef !67
  %i.bu = icmp ult i16 %i.br, %i.bt
  br i1 %i.bu, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1376) #60
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.x, !noalias !151074

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.9.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.010.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 4 uses
  %i.bv = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i, 0
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = add nuw nsw i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bx = icmp samesign ult i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.bx), !noalias !151075
  %i.by = getelementptr i8, ptr %.sroa.010.0.ph.i.i.i.i.i.i.i.i, i64 552
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter49 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.w, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ca, %.prol.preheader ], [ %i.bz, %bb.w ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i, %bb.w ]
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.prol.preheader ], [ 0, %bb.w ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !151076, !nonnull !67, !noundef !67 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !151040

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.w
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.w ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bz, %bb.w ], [ %i.ca, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i, %bb.w ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cb = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i, 8
  br i1 %i.cb, label %.loopexit.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !151076, !nonnull !67, !noundef !67
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cc, align 8, !noalias !151076, !nonnull !67, !noundef !67
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.cd, align 8, !noalias !151076, !nonnull !67, !noundef !67
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ce, align 8, !noalias !151076, !nonnull !67, !noundef !67
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cf, align 8, !noalias !151076, !nonnull !67, !noundef !67
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cg, align 8, !noalias !151076, !nonnull !67, !noundef !67
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ch, align 8, !noalias !151076, !nonnull !67, !noundef !67
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.6, i64 544
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ci, align 8, !noalias !151076, !nonnull !67, !noundef !67 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.7, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.cj, label %.loopexit.i.i.i.i.i, label %.new

bb.x:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !151075
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %.prol.loopexit, %.new, %bb.v
  %.sroa.713.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.v ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.011.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.010.0.ph.i.i.i.i.i.i.i.i, %bb.v ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i.i.i.i.i.i.i.i, i64 8
  %i.cn = icmp samesign ult i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cn), !noalias !151075
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i.i.i.i.i.i.i.i, i64 272
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !151077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !151078
  call void @llvm.experimental.noalias.scope.decl(metadata !151079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !151080
  store ptr %i.co, ptr %i.d, align 8, !noalias !151081, !captures !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !151081
  store ptr %i.cq, ptr %i.c, align 8, !noalias !151081, !captures !99
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !151082, !noalias !151083, !nonnull !67, !noundef !67 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !151082, !noalias !151083, !noundef !67
  switch i64 %i.cu, label %.split.i.i.i.i.i.i.i.i [
    i64 5, label %.split.i.i.i.i.i.i.i.i.i.i
    i64 7, label %.split.i.1.i.i.i.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.loopexit.i.i.i.i.i
  %i.cv = load i32, ptr %i.cs, align 1
  %i.cw = xor i32 1700946284, %i.cv
  %i.cx = getelementptr i8, ptr %i.cs, i64 4
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = xor i32 108, %i.cz
  %i.db = or i32 %i.cw, %i.da
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.split21.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i

.split.i.1.i.i.i.i.i.i.i.i.i:                     ; preds = %.loopexit.i.i.i.i.i
  %i.df = load i32, ptr %i.cs, align 1
  %i.dg = xor i32 1819242356, %i.df
  %i.dh = getelementptr i8, ptr %i.cs, i64 3
  %i.di = load i32, ptr %i.dh, align 1
  %i.dj = xor i32 1885959276, %i.di
  %i.dk = or i32 %i.dg, %i.dj
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.split21.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %.split.i.1.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !151081
  store ptr %i.d, ptr %i.a, align 8, !noalias !151081
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtRNtNtCs87CvPiUlf0m_5alloc6string6StringNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !151081
  store ptr %i.c, ptr %i.as, align 8, !noalias !151081
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtRNtNtCs87CvPiUlf0m_5alloc6string6StringNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !151081
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @1428, ptr noundef nonnull %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit14.i.i.i.i.i, !noalias !151078

.noexc.i.i.i.i.i.i:                               ; preds = %.split.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !151081
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs87CvPiUlf0m_5alloc6string6StringBV_EBW_uNCNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_strings_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3M_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map4IterBW_BW_EB1G_EE0E0E0B1M_.exit.i.i.i.i.i.i

.split21.i.i.i.i.i.i.i.i:                         ; preds = %.split.i.1.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !151081
  store ptr %i.d, ptr %i.b, align 8, !noalias !151081
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtRNtNtCs87CvPiUlf0m_5alloc6string6StringNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !151081
  store ptr %i.c, ptr %i.ar, align 8, !noalias !151081
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtRNtNtCs87CvPiUlf0m_5alloc6string6StringNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !151081
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @1429, ptr noundef nonnull %i.b)
          to label %.noexc9.i.i.i.i.i.i unwind label %.loopexit14.i.i.i.i.i, !noalias !151078

.noexc9.i.i.i.i.i.i:                              ; preds = %.split21.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !151081
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs87CvPiUlf0m_5alloc6string6StringBV_EBW_uNCNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_strings_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3M_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map4IterBW_BW_EB1G_EE0E0E0B1M_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs87CvPiUlf0m_5alloc6string6StringBV_EBW_uNCNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_strings_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3M_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map4IterBW_BW_EB1G_EE0E0E0B1M_.exit.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !151081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !151080
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %.val8.i27.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !151084
  %i.dp = add nuw i64 %.val8.i27.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !151078
  %i.dq = icmp eq i64 %i.at, 0
  br i1 %i.dq, label %.loopexit, label %.lr.ph.i.i.i.i.i

.loopexit14.i.i.i.i.i:                            ; preds = %.split21.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.val8.i27.i.i.i.i.i, ptr %i.aq, align 8, !alias.scope !151085, !noalias !151086
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #63, !noalias !151068
  br label %.body

.body:                                            ; preds = %bb.z, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.ab, %bb.y, %.loopexit14.i.i.i.i.i
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.z ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit14.i.i.i.i.i ], [ %i.dr, %bb.y ], [ %i.ef, %bb.ab ], [ %i.ef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #63
          to label %common.resume unwind label %bb.ad

bb.y:                                             ; preds = %bb.q
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs87CvPiUlf0m_5alloc6string6StringBV_EBW_uNCNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_strings_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3M_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map4IterBW_BW_EB1G_EE0E0E0B1M_.exit.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  store i64 %.sroa.52.0, ptr %i.aq, align 8, !alias.scope !151085, !noalias !151086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !151087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !151068
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !67, !noundef !67 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCs87CvPiUlf0m_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dt, i64 noundef %i.dv)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #63
  br label %.body

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !151088)
  call void @llvm.experimental.noalias.scope.decl(metadata !151089)
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.dz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.dz = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151090)
  call void @llvm.experimental.noalias.scope.decl(metadata !151091)
  %.val.i.i.i.i.i45 = load i64, ptr %i.dy, align 8, !alias.scope !151092, !noalias !151088 ; 2 uses
  %i.ea = icmp eq i64 %.val.i.i.i.i.i45, 0
  br i1 %i.ea, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !151092, !noalias !151088, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !151093
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ec = icmp eq i64 %i.dz, %i.dv
  br i1 %i.ec, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.aa
  %.val2.i = load i64, ptr %i.k, align 8, !alias.scope !151088 ; 2 uses
  %i.ed = icmp eq i64 %.val2.i, 0
  br i1 %i.ed, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.ee = mul nuw i64 %.val2.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !151088
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit

bb.ab:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151094)
  call void @llvm.experimental.noalias.scope.decl(metadata !151095)
  %.val.i.i = load i64, ptr %i.l, align 8, !alias.scope !151096 ; 2 uses
  %i.eg = icmp eq i64 %.val.i.i, 0
  br i1 %i.eg, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i = load ptr, ptr %i.eh, align 8, !alias.scope !151096, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !151096
  br label %.body

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.l, ptr %i.i, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @3163, ptr noundef nonnull %i.i)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.ab

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !151097)
  call void @llvm.experimental.noalias.scope.decl(metadata !151098)
  %.val.i.i47 = load i64, ptr %i.l, align 8, !alias.scope !151099 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i47, 0
  br i1 %i.ej, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i49 = load ptr, ptr %i.ek, align 8, !alias.scope !151099, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i49, i64 noundef %.val.i.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !151099
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50, %bb.j
  ret void

bb.ad:                                            ; preds = %.body
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ae:                                            ; preds = %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.em, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx9traversal22___pyfunction_ancestors(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [72 x i8], align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @3169, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef 2)
  %i.s = load i64, ptr %i.q, align 8, !range !68, !noundef !67
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit45

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.w = load ptr, ptr %i.r, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !151149
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull %i.w), !inline_history !56
  %i.x = load ptr, ptr %i.j, align 8, !noalias !151149, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !151149, !nonnull !67, !noundef !67 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !151149
  br i1 %.not.i.i.i, label %.noexc34, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_6
