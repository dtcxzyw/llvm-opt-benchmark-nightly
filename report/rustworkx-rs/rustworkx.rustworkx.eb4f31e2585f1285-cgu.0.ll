Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvMs3_NtNtCs68Jln09rRqb_8petgraph5visit9traversalINtB6_3BfsNtNtBa_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE4nextRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2R_5types3any5PyAnyEB2M_EECskcxRuJ53GpR_9rustworkx:bb.a
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1647, !nonnull !56, !noundef !56
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.v ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1648, !noundef !56
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.aa, align 8, !noalias !1648
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
  %i.ai = load i32, ptr %i.ah, align 8, !noalias !1649, !noundef !56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !1649, !noundef !56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  %i.al = zext i32 %i.ak to i64                   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1650
  store i64 %i.al, ptr %i.b, align 8, !noalias !1652
  %i.am = load i64, ptr %i.ac, align 8, !alias.scope !1652, !noundef !56
  %i.an = icmp ugt i64 %i.am, %i.al
  br i1 %i.an, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit, label %bb.d, !prof !66

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1652
  store ptr %i.b, ptr %i.a, align 8, !noalias !1652
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1652
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ac, ptr %i.ao, align 8, !noalias !1652
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1652
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
  unreachable

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit
  %i.ap = lshr i64 %i.al, 6
  %i.aq = and i64 %i.al, 63
  %i.ar = load ptr, ptr %i.ad, align 8, !alias.scope !1652, !nonnull !56, !noundef !56
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noalias !1652, !noundef !56 ; 2 uses
  %i.au = shl nuw i64 1, %i.aq                    ; 2 uses
  %i.av = and i64 %i.at, %i.au
  %.not.i7 = icmp eq i64 %i.av, 0
  %i.aw = or i64 %i.at, %i.au
  store i64 %i.aw, ptr %i.as, align 8, !noalias !1652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1650
  br i1 %.not.i7, label %bb.e, label %bb.g

_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.g, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit, %bb.a
  %.sroa.3.0.i15 = phi i32 [ undef, %bb.a ], [ %i.p, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit ], [ %i.p, %bb.g ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 1, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit ], [ 1, %bb.g ]
  %i.ax = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ay = insertvalue { i32, i32 } %i.ax, i32 %.sroa.3.0.i15, 1
  ret { i32, i32 } %i.ay

bb.e:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit
  %i.az = load i64, ptr %i.c, align 8, !alias.scope !1653, !noundef !56 ; 2 uses
  %i.ba = load i64, ptr %0, align 8, !range !59, !alias.scope !1653, !noundef !56 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.f, label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE4growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #62
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1653
  %.pre5.i = load i64, ptr %0, align 8, !range !59, !alias.scope !1653
  br label %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.e, %bb.f
  %i.bc = phi i64 [ %.pre5.i, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bd = phi i64 [ %.pre.i, %bb.f ], [ %i.az, %bb.e ] ; 2 uses
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.c, align 8, !alias.scope !1653
  %i.bf = load i64, ptr %i.f, align 8, !alias.scope !1653, !noundef !56
  %i.bg = add i64 %i.bf, %i.bd                    ; 2 uses
  %.not.i8 = icmp ult i64 %i.bg, %i.bc
  %i.bh = select i1 %.not.i8, i64 0, i64 %i.bc
  %.sroa.03.0.i = sub nuw i64 %i.bg, %i.bh
  %i.bi = load ptr, ptr %i.m, align 8, !alias.scope !1653, !nonnull !56, !noundef !56
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
  store ptr %i.v, ptr %i.l, align 8, !noalias !1751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1751
  store ptr %i.l, ptr %i.k, align 8, !noalias !1751
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1751
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @6, ptr noundef nonnull %i.k), !noalias !1752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1753
  %i.w = call i64 @llvm.umin.i64(i64 %2, i64 %i.u) ; 6 uses
  %i.x = mul i64 %i.w, 24                         ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %i.w, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.b, !prof !80

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2y_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i.i
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1754
  %i.z = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1754 ; 2 uses
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
  store i64 %.sroa.46.0.ph24.i.i, ptr %i.j, align 8, !noalias !1753
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !1753
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val8.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ah, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.val8.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1756
  store ptr %i.ag, ptr %i.h, align 8, !noalias !1757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1757
  store ptr %i.h, ptr %i.g, align 8, !noalias !1757
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1757
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @6, ptr noundef nonnull %i.g)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !1758

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = add nuw nsw i64 %.val8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1756
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.val8.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1755
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.f

.body.i.i:                                        ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store i64 %.val8.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !alias.scope !1760, !noalias !1761
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #63, !noalias !1753
  br label %.body

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !1762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1762
  store ptr %i.f, ptr %i.e, align 8, !noalias !1762
  %.sroa.42.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i32, align 8, !noalias !1762
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @6, ptr noundef nonnull %i.e), !noalias !1763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1764
  store ptr %i.d, ptr %i.c, align 8, !noalias !1764
  %.sroa.42.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i33, align 8, !noalias !1764
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @6, ptr noundef nonnull %i.c), !noalias !1765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ak, ptr %i.b, align 8, !noalias !1766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1766
  store ptr %i.b, ptr %i.a, align 8, !noalias !1766
  %.sroa.42.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx.i34, align 8, !noalias !1766
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit66, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48, %bb.g
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38, %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.ao, %bb.l ], [ %i.ao, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38 ] ; 2 uses
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !1767 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i, 0
  br i1 %i.al, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1766
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %.val.i.i37 = load i64, ptr %i.s, align 8, !alias.scope !1770 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i37, 0
  br i1 %i.ap, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i39 = load ptr, ptr %i.aq, align 8, !alias.scope !1770, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i39, i64 noundef %.val.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1770
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %.val.i.i41 = load i64, ptr %i.s, align 8, !alias.scope !1773 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i41, 0
  br i1 %i.ar, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i43 = load ptr, ptr %i.as, align 8, !alias.scope !1773, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i43, i64 noundef %.val.i.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1773
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  %.val.i.i45 = load i64, ptr %i.t, align 8, !alias.scope !1776 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i45, 0
  br i1 %i.at, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val1.i.i47 = load ptr, ptr %i.au, align 8, !alias.scope !1776, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i47, i64 noundef %.val.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1776
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40, %.body
  %.sink78.sroa.phi = phi ptr [ %.sink78.sroa.gep, %.body ], [ %.sink78.sroa.gep3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.val.i.i49.sink = phi i64 [ %.val.i.i49, %.body ], [ %.val.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.pn26.pn.ph = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.val1.i.i51 = load ptr, ptr %.sink78.sroa.phi, align 8, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51, i64 noundef %.val.i.i49.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !56
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split, %.body, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ], [ %.pn26.pn.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split ]
  resume { ptr, i32 } %.pn26.pn

.body:                                            ; preds = %bb.o, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54, %bb.q, %bb.m, %.body.i.i
  %.pn26 = phi { ptr, i32 } [ %i.bb, %bb.o ], [ %i.aj, %.body.i.i ], [ %i.aw, %bb.m ], [ %i.bk, %bb.q ], [ %i.bk, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54 ] ; 2 uses
  %.val.i.i49 = load i64, ptr %i.q, align 8, !alias.scope !1777 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i49, 0
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split

bb.m:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2q_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4v_3VecB1E_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2h_EE0E0E0BZ_.exit.i.i.i.i.i.i.i.i
  store i64 %i.w, ptr %i.af, align 8, !alias.scope !1760, !noalias !1761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1753
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !56, !noundef !56 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !56 ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.be, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %.val.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !1783, !noalias !1779 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !1783, !noalias !1779, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1784
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bh = icmp eq i64 %i.be, %i.ba
  br i1 %i.bh, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.p
  %.val2.i = load i64, ptr %i.o, align 8, !alias.scope !1779 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i, 0
  br i1 %i.bi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.bj = mul nuw i64 %.val2.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1779
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit

bb.q:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %.val.i.i53 = load i64, ptr %i.p, align 8, !alias.scope !1787 ; 2 uses
  %i.bl = icmp eq i64 %.val.i.i53, 0
  br i1 %i.bl, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i55 = load ptr, ptr %i.bm, align 8, !alias.scope !1787, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i55, i64 noundef %.val.i.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1787
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  %.val.i.i59 = load i64, ptr %i.p, align 8, !alias.scope !1790 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i59, 0
  br i1 %i.bo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i60

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i60: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i61 = load ptr, ptr %i.bp, align 8, !alias.scope !1790, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i61, i64 noundef %.val.i.i59, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1790
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i60, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  %.val.i.i63 = load i64, ptr %i.q, align 8, !alias.scope !1793 ; 2 uses
  %i.bq = icmp eq i64 %.val.i.i63, 0
  br i1 %i.bq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit66, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i64

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i64: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit62
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i65 = load ptr, ptr %i.br, align 8, !alias.scope !1793, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i65, i64 noundef %.val.i.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1793
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
  store ptr %i.v, ptr %i.l, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1891
  store ptr %i.l, ptr %i.k, align 8, !noalias !1891
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1891
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @6, ptr noundef nonnull %i.k), !noalias !1892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1893
  %i.w = call i64 @llvm.umin.i64(i64 %2, i64 %i.u) ; 6 uses
  %i.x = mul i64 %i.w, 24                         ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %i.w, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.b, !prof !80

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2N_12ErrorVariantB1E_E7message0ENtNtNtB9_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1894
  %i.z = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1894 ; 2 uses
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
  store i64 %.sroa.46.0.ph24.i.i, ptr %i.j, align 8, !noalias !1893
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !1893
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val8.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ah, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.val8.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1896
  store ptr %i.ag, ptr %i.h, align 8, !noalias !1897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1897
  store ptr %i.h, ptr %i.g, align 8, !noalias !1897
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1897
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @6, ptr noundef nonnull %i.g)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !1898

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = add nuw nsw i64 %.val8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1896
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.val8.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1895
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.f

.body.i.i:                                        ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store i64 %.val8.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !alias.scope !1900, !noalias !1901
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #63, !noalias !1893
  br label %.body

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !1902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1902
  store ptr %i.f, ptr %i.e, align 8, !noalias !1902
  %.sroa.42.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i32, align 8, !noalias !1902
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @6, ptr noundef nonnull %i.e), !noalias !1903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1904
  store ptr %i.d, ptr %i.c, align 8, !noalias !1904
  %.sroa.42.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i33, align 8, !noalias !1904
  call void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @6, ptr noundef nonnull %i.c), !noalias !1905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ak, ptr %i.b, align 8, !noalias !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1906
  store ptr %i.b, ptr %i.a, align 8, !noalias !1906
  %.sroa.42.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i34, align 8, !noalias !1906
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit66, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48, %bb.g
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38, %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.ao, %bb.l ], [ %i.ao, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38 ] ; 2 uses
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !1907 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i, 0
  br i1 %i.al, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1906
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  %.val.i.i37 = load i64, ptr %i.s, align 8, !alias.scope !1910 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i37, 0
  br i1 %i.ap, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i39 = load ptr, ptr %i.aq, align 8, !alias.scope !1910, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i39, i64 noundef %.val.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1910
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %.val.i.i41 = load i64, ptr %i.s, align 8, !alias.scope !1913 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i41, 0
  br i1 %i.ar, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i43 = load ptr, ptr %i.as, align 8, !alias.scope !1913, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i43, i64 noundef %.val.i.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1913
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  %.val.i.i45 = load i64, ptr %i.t, align 8, !alias.scope !1916 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i45, 0
  br i1 %i.at, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val1.i.i47 = load ptr, ptr %i.au, align 8, !alias.scope !1916, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i47, i64 noundef %.val.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1916
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit48: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit44, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40, %.body
  %.sink78.sroa.phi = phi ptr [ %.sink78.sroa.gep, %.body ], [ %.sink78.sroa.gep3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.val.i.i49.sink = phi i64 [ %.val.i.i49, %.body ], [ %.val.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.pn26.pn.ph = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ]
  %.val1.i.i51 = load ptr, ptr %.sink78.sroa.phi, align 8, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51, i64 noundef %.val.i.i49.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !56
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split, %.body, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit40 ], [ %.pn26.pn.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split ]
  resume { ptr, i32 } %.pn26.pn

.body:                                            ; preds = %bb.o, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54, %bb.q, %bb.m, %.body.i.i
  %.pn26 = phi { ptr, i32 } [ %i.bb, %bb.o ], [ %i.aj, %.body.i.i ], [ %i.aw, %bb.m ], [ %i.bk, %bb.q ], [ %i.bk, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54 ] ; 2 uses
  %.val.i.i49 = load i64, ptr %i.q, align 8, !alias.scope !1917 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i49, 0
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.sink.split

bb.m:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleNtNtCs87CvPiUlf0m_5alloc6string6StringuQNCNvMs5_NtCscnlsAxKLLci_4pest5errorINtB2F_12ErrorVariantBV_E7message0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtB1X_3vecINtB4K_3VecB1T_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB2w_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  store i64 %i.w, ptr %i.af, align 8, !alias.scope !1900, !noalias !1901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1893
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !56, !noundef !56 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !56 ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.be, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  %.val.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !1923, !noalias !1919 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !1923, !noalias !1919, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1924
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bh = icmp eq i64 %i.be, %i.ba
  br i1 %i.bh, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.p
  %.val2.i = load i64, ptr %i.o, align 8, !alias.scope !1919 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i, 0
  br i1 %i.bi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.bj = mul nuw i64 %.val2.i, 24
end_hunk_0
begin_hunk_1_@_RINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_NtB1m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB2r_3err5PyErrEB3Q_:bb.a
  store i64 0, ptr %i.iy, align 8, !noalias !14220
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.2 = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.2, align 8, !noalias !14220
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.2 = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.2, align 8, !noalias !14220
  %i.iz = add nuw nsw i64 %i.it, 4                ; 2 uses
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.it ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 72
  store i64 0, ptr %i.jb, align 8, !noalias !14220
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.3 = getelementptr inbounds nuw i8, ptr %i.ja, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.3, align 8, !noalias !14220
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.3 = getelementptr inbounds nuw i8, ptr %i.ja, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.3, align 8, !noalias !14220
  %niter15750.next.3 = add i64 %niter15750, 4     ; 2 uses
  %niter15750.ncmp.3 = icmp eq i64 %niter15750.next.3, %unroll_iter15749
  br i1 %niter15750.ncmp.3, label %.unr-lcssa15741, label %.lr.ph.i.i.i.i.i.i.i588

.unr-lcssa15741:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i588
  %lcmp.mod15746.not = icmp eq i64 %xtraiter15742, 0
  br i1 %lcmp.mod15746.not, label %.epilog-lcssa15747, label %.lr.ph.i.i.i.i.i.i.i588.epil.preheader

.lr.ph.i.i.i.i.i.i.i588.epil.preheader:           ; preds = %.unr-lcssa15741, %.lr.ph.i.i.i.i.i.i.i588.preheader
  %.epil.init15745 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i588.preheader ], [ %i.iz, %.unr-lcssa15741 ]
  %lcmp.mod15748 = icmp ne i64 %xtraiter15742, 0
  tail call void @llvm.assume(i1 %lcmp.mod15748)
  br label %.lr.ph.i.i.i.i.i.i.i588.epil

.lr.ph.i.i.i.i.i.i.i588.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i588.epil, %.lr.ph.i.i.i.i.i.i.i588.epil.preheader
  %i.jc = phi i64 [ %i.jd, %.lr.ph.i.i.i.i.i.i.i588.epil ], [ %.epil.init15745, %.lr.ph.i.i.i.i.i.i.i588.epil.preheader ] ; 2 uses
  %epil.iter15743 = phi i64 [ %epil.iter15743.next, %.lr.ph.i.i.i.i.i.i.i588.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i588.epil.preheader ]
  %i.jd = add nuw nsw i64 %i.jc, 1
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.jc ; 3 uses
  store i64 0, ptr %i.je, align 8, !noalias !14220
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.epil = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i589.epil, align 8, !noalias !14220
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.epil = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i590.epil, align 8, !noalias !14220
  %epil.iter15743.next = add i64 %epil.iter15743, 1 ; 2 uses
  %epil.iter15743.cmp.not = icmp eq i64 %epil.iter15743.next, 2
  br i1 %epil.iter15743.cmp.not, label %.epilog-lcssa15747, label %.lr.ph.i.i.i.i.i.i.i588.epil, !llvm.loop !13612

.epilog-lcssa15747:                               ; preds = %.lr.ph.i.i.i.i.i.i.i588.epil, %.unr-lcssa15741
  store i64 %i.ga, ptr %i.x, align 8, !alias.scope !14221
  %.sroa.4.0..sroa_idx.i.i592 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  store ptr %i.ip, ptr %.sroa.4.0..sroa_idx.i.i592, align 8, !alias.scope !14221
  %.sroa.6.0..sroa_idx.i.i593 = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  store i64 %i.ga, ptr %.sroa.6.0..sroa_idx.i.i593, align 8, !alias.scope !14221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14223)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14224
  %i.jf = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14224 ; 7 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.av, label %.lr.ph.i.i.i.i.i.i.i601.preheader

.lr.ph.i.i.i.i.i.i.i601.preheader:                ; preds = %.epilog-lcssa15747
  %xtraiter15752 = and i64 %i.ga, 2               ; 2 uses
  %i.jh = icmp ult i64 %i.gm, 3
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i.i.i601.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i601.preheader.new

.lr.ph.i.i.i.i.i.i.i601.preheader.new:            ; preds = %.lr.ph.i.i.i.i.i.i.i601.preheader
  %unroll_iter15759 = and i64 %i.ga, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.i601

bb.av:                                            ; preds = %.epilog-lcssa15747
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.gj) #61
          to label %.noexc608 unwind label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634.thread

.noexc608:                                        ; preds = %bb.av
  unreachable

.lr.ph.i.i.i.i.i.i.i601:                          ; preds = %.lr.ph.i.i.i.i.i.i.i601, %.lr.ph.i.i.i.i.i.i.i601.preheader.new
  %i.ji = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i601.preheader.new ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i601 ] ; 5 uses
  %niter15760 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i601.preheader.new ], [ %niter15760.next.3, %.lr.ph.i.i.i.i.i.i.i601 ]
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %i.ji ; 3 uses
  store i64 0, ptr %i.jj, align 8, !noalias !14225
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602 = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602, align 8, !noalias !14225
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603 = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603, align 8, !noalias !14225
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %i.ji ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  store i64 0, ptr %i.jl, align 8, !noalias !14225
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.1 = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.1, align 8, !noalias !14225
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.1 = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.1, align 8, !noalias !14225
  %i.jm = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %i.ji ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  store i64 0, ptr %i.jn, align 8, !noalias !14225
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.2 = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.2, align 8, !noalias !14225
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.2 = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.2, align 8, !noalias !14225
  %i.jo = add nuw nsw i64 %i.ji, 4                ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %i.ji ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  store i64 0, ptr %i.jq, align 8, !noalias !14225
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.3 = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.3, align 8, !noalias !14225
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.3 = getelementptr inbounds nuw i8, ptr %i.jp, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.3, align 8, !noalias !14225
  %niter15760.next.3 = add i64 %niter15760, 4     ; 2 uses
  %niter15760.ncmp.3 = icmp eq i64 %niter15760.next.3, %unroll_iter15759
  br i1 %niter15760.ncmp.3, label %.unr-lcssa15751, label %.lr.ph.i.i.i.i.i.i.i601

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i633, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631
  %i.jr = trunc nuw i8 %.sroa.0136.2 to i1
  br i1 %i.jr, label %bb.og, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit996

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634.thread: ; preds = %bb.av
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit996

.unr-lcssa15751:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i601
  %lcmp.mod15756.not = icmp eq i64 %xtraiter15752, 0
  br i1 %lcmp.mod15756.not, label %.epilog-lcssa15757, label %.lr.ph.i.i.i.i.i.i.i601.epil.preheader

.lr.ph.i.i.i.i.i.i.i601.epil.preheader:           ; preds = %.unr-lcssa15751, %.lr.ph.i.i.i.i.i.i.i601.preheader
  %.epil.init15755 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i601.preheader ], [ %i.jo, %.unr-lcssa15751 ]
  %lcmp.mod15758 = icmp ne i64 %xtraiter15752, 0
  tail call void @llvm.assume(i1 %lcmp.mod15758)
  br label %.lr.ph.i.i.i.i.i.i.i601.epil

.lr.ph.i.i.i.i.i.i.i601.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i601.epil, %.lr.ph.i.i.i.i.i.i.i601.epil.preheader
  %i.jt = phi i64 [ %i.ju, %.lr.ph.i.i.i.i.i.i.i601.epil ], [ %.epil.init15755, %.lr.ph.i.i.i.i.i.i.i601.epil.preheader ] ; 2 uses
  %epil.iter15753 = phi i64 [ %epil.iter15753.next, %.lr.ph.i.i.i.i.i.i.i601.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i601.epil.preheader ]
  %i.ju = add nuw nsw i64 %i.jt, 1
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %i.jt ; 3 uses
  store i64 0, ptr %i.jv, align 8, !noalias !14225
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.epil = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i602.epil, align 8, !noalias !14225
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.epil = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i603.epil, align 8, !noalias !14225
  %epil.iter15753.next = add i64 %epil.iter15753, 1 ; 2 uses
  %epil.iter15753.cmp.not = icmp eq i64 %epil.iter15753.next, 2
  br i1 %epil.iter15753.cmp.not, label %.epilog-lcssa15757, label %.lr.ph.i.i.i.i.i.i.i601.epil, !llvm.loop !13635

.epilog-lcssa15757:                               ; preds = %.lr.ph.i.i.i.i.i.i.i601.epil, %.unr-lcssa15751
  store i64 %i.ga, ptr %i.v, align 8, !alias.scope !14226
  %.sroa.4.0..sroa_idx.i.i605 = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 6 uses
  store ptr %i.jf, ptr %.sroa.4.0..sroa_idx.i.i605, align 8, !alias.scope !14226
  %.sroa.6.0..sroa_idx.i.i606 = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 8 uses
  store i64 %i.ga, ptr %.sroa.6.0..sroa_idx.i.i606, align 8, !alias.scope !14226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14227)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14228
  %i.jw = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14228 ; 4 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.aw, label %.lr.ph.i.i.i.i.i617.preheader

bb.aw:                                            ; preds = %.epilog-lcssa15757
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fp) #61
          to label %.noexc621 unwind label %bb.ax

.noexc621:                                        ; preds = %bb.aw
  unreachable

.lr.ph.i.i.i.i.i617.preheader:                    ; preds = %.epilog-lcssa15757
  %min.iters.check14836 = icmp ult i64 %.val.i491, 4
  br i1 %min.iters.check14836, label %.lr.ph.i.i.i.i.i617.preheader15683, label %vector.ph14837

vector.ph14837:                                   ; preds = %.lr.ph.i.i.i.i.i617.preheader
  %n.vec14838 = and i64 %.val.i491, 288230376151711740 ; 4 uses
  %i.jy = add nuw nsw i64 %.val.i491, %n.vec14838
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val.i491, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body14839

vector.body14839:                                 ; preds = %vector.body14839, %vector.ph14837
  %index14840 = phi i64 [ 0, %vector.ph14837 ], [ %index.next14843, %vector.body14839 ] ; 2 uses
  %vec.ind14841 = phi <2 x i64> [ %induction, %vector.ph14837 ], [ %vec.ind.next14844, %vector.body14839 ] ; 3 uses
  %step.add14842 = add nuw nsw <2 x i64> %vec.ind14841, splat (i64 2)
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %index14840 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <2 x i64> %vec.ind14841, ptr %i.jz, align 8, !noalias !14229
  store <2 x i64> %step.add14842, ptr %i.ka, align 8, !noalias !14229
  %index.next14843 = add nuw i64 %index14840, 4   ; 2 uses
  %vec.ind.next14844 = add nuw nsw <2 x i64> %vec.ind14841, splat (i64 4)
  %i.kb = icmp eq i64 %index.next14843, %n.vec14838
  br i1 %i.kb, label %middle.block14845, label %vector.body14839, !llvm.loop !13652

middle.block14845:                                ; preds = %vector.body14839
  %cmp.n14846 = icmp eq i64 %.val.i491, %n.vec14838
  br i1 %cmp.n14846, label %.loopexit500, label %.lr.ph.i.i.i.i.i617.preheader15683

.lr.ph.i.i.i.i.i617.preheader15683:               ; preds = %.lr.ph.i.i.i.i.i617.preheader, %middle.block14845
  %.ph15684 = phi i64 [ 0, %.lr.ph.i.i.i.i.i617.preheader ], [ %n.vec14838, %middle.block14845 ]
  %.sroa.0.010.i.i.i.i.i618.ph = phi i64 [ %.val.i491, %.lr.ph.i.i.i.i.i617.preheader ], [ %i.jy, %middle.block14845 ]
  br label %.lr.ph.i.i.i.i.i617

.lr.ph.i.i.i.i.i617:                              ; preds = %.lr.ph.i.i.i.i.i617.preheader15683, %.lr.ph.i.i.i.i.i617
  %i.kc = phi i64 [ %i.kf, %.lr.ph.i.i.i.i.i617 ], [ %.ph15684, %.lr.ph.i.i.i.i.i617.preheader15683 ] ; 2 uses
  %.sroa.0.010.i.i.i.i.i618 = phi i64 [ %i.kd, %.lr.ph.i.i.i.i.i617 ], [ %.sroa.0.010.i.i.i.i.i618.ph, %.lr.ph.i.i.i.i.i617.preheader15683 ] ; 2 uses
  %i.kd = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i618, 1 ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.kc
  store i64 %.sroa.0.010.i.i.i.i.i618, ptr %i.ke, align 8, !noalias !14229
  %i.kf = add nuw nsw i64 %i.kc, 1
  %exitcond.not.i.i.i.i.i619 = icmp eq i64 %i.kd, %i.ga
  br i1 %exitcond.not.i.i.i.i.i619, label %.loopexit500, label %.lr.ph.i.i.i.i.i617, !llvm.loop !13653

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit, %bb.ax
  %.sroa.0136.2 = phi i8 [ 0, %bb.ax ], [ %.sroa.0136.4, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit ], [ %.sroa.0136.4, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642 ]
  %.sroa.0133.12 = phi i8 [ 0, %bb.ax ], [ %.sroa.0133.14, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit ], [ %.sroa.0133.14, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642 ] ; 3 uses
  %.sroa.0130.12 = phi i8 [ 0, %bb.ax ], [ %.sroa.0130.14, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit ], [ %.sroa.0130.14, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642 ] ; 3 uses
  %.pn355.pn.pn.pn = phi { ptr, i32 } [ %i.kp, %bb.ax ], [ %.pn355.pn.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit ], [ %.pn355.pn.pn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14230)
  %.val.i623 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i605, align 8, !alias.scope !14230, !nonnull !56, !noundef !56 ; 2 uses
  %.val1.i624 = load i64, ptr %.sroa.6.0..sroa_idx.i.i606, align 8, !alias.scope !14230, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14231)
  %i.kg = icmp eq i64 %.val1.i624, 0
  br i1 %i.kg, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631, label %.lr.ph.i.i.i625

.lr.ph.i.i.i625:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630
  %.sroa.0.011.i.i.i626 = phi i64 [ %i.ki, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630 ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644 ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %.val.i623, i64 %.sroa.0.011.i.i.i626 ; 2 uses
  %i.ki = add nuw nsw i64 %.sroa.0.011.i.i.i626, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14232)
  %.val.i.i.i.i627 = load i64, ptr %i.kh, align 8, !alias.scope !14233, !noalias !14230 ; 2 uses
  %i.kj = icmp eq i64 %.val.i.i.i.i627, 0
  br i1 %i.kj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i628

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i628: ; preds = %.lr.ph.i.i.i625
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.val1.i.i.i.i629 = load ptr, ptr %i.kk, align 8, !alias.scope !14233, !noalias !14230, !nonnull !56, !noundef !56
  %i.kl = shl nuw i64 %.val.i.i.i.i627, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i629, i64 noundef %i.kl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14234
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i628, %.lr.ph.i.i.i625
  %i.km = icmp eq i64 %i.ki, %.val1.i624
  br i1 %i.km, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631, label %.lr.ph.i.i.i625

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i630, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644
  %.val2.i632 = load i64, ptr %i.v, align 8, !alias.scope !14230 ; 2 uses
  %i.kn = icmp eq i64 %.val2.i632, 0
  br i1 %i.kn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i633

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i633: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i631
  %i.ko = mul nuw i64 %.val2.i632, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i623, i64 noundef %i.ko, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14230
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx.exit634

bb.ax:                                            ; preds = %bb.aw
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644

.loopexit500:                                     ; preds = %.lr.ph.i.i.i.i.i617, %middle.block14845
  store i64 %.val.i491, ptr %i.u, align 8, !alias.scope !14227
  %.sroa.4.0..sroa_idx.i615 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr %i.jw, ptr %.sroa.4.0..sroa_idx.i615, align 8, !alias.scope !14227
  %.sroa.5.0..sroa_idx.i616 = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i64 %.val.i491, ptr %.sroa.5.0..sroa_idx.i616, align 8, !alias.scope !14227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14235)
  %i.kq = icmp eq i128 %.us-phi, 0
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14235
  br i1 %i.kq, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.loopexit500
  %i.kr = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !14236 ; 5 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %.invoke11274, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.az:                                            ; preds = %.loopexit500
  %i.kt = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.hd, i64 noundef range(i64 1, 17) 16) #59, !noalias !14237 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %.invoke11274, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ay
  %i.kv = icmp samesign ugt i64 %.val.i491, 1
  br i1 %i.kv, label %.lr.ph.i.i.preheader, label %._crit_edge.thread.i.i

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.kw = add nsw i64 %.val.i491, -2
  %xtraiter15761 = and i64 %i.hg, 7               ; 3 uses
  %i.kx = icmp ult i64 %i.kw, 7
  br i1 %i.kx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter15766 = and i64 %i.hg, -8
  br label %.lr.ph.i.i

._crit_edge.thread.i.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i
  %lcmp.mod15763.not = icmp eq i64 %xtraiter15761, 0
  br i1 %lcmp.mod15763.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.thread.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.020.i.i.epil.init = phi ptr [ %i.kr, %.lr.ph.i.i.preheader ], [ %i.lg, %._crit_edge.thread.i.i.loopexit.unr-lcssa ]
  %lcmp.mod15765 = icmp ne i64 %xtraiter15761, 0
  tail call void @llvm.assume(i1 %lcmp.mod15765)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.020.i.i.epil = phi ptr [ %i.ky, %.lr.ph.i.i.epil ], [ %.sroa.0.020.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter15762 = phi i64 [ %epil.iter15762.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  store i128 %.us-phi, ptr %.sroa.0.020.i.i.epil, align 16, !noalias !14238
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.epil, i64 16 ; 2 uses
  %epil.iter15762.next = add i64 %epil.iter15762, 1 ; 2 uses
  %epil.iter15762.cmp.not = icmp eq i64 %epil.iter15762.next, %xtraiter15761
  br i1 %epil.iter15762.cmp.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.epil, !llvm.loop !13668

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.0.0.lcssa27.i.i = phi ptr [ %i.kr, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.lg, %._crit_edge.thread.i.i.loopexit.unr-lcssa ], [ %i.ky, %.lr.ph.i.i.epil ]
  store i128 %.us-phi, ptr %.sroa.0.0.lcssa27.i.i, align 16, !noalias !14238
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.020.i.i = phi ptr [ %i.kr, %.lr.ph.i.i.preheader.new ], [ %i.lg, %.lr.ph.i.i ] ; 9 uses
  %niter15767 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter15767.next.7, %.lr.ph.i.i ]
  store i128 %.us-phi, ptr %.sroa.0.020.i.i, align 16, !noalias !14238
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 16
  store i128 %.us-phi, ptr %i.kz, align 16, !noalias !14238
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 32
  store i128 %.us-phi, ptr %i.la, align 16, !noalias !14238
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 48
  store i128 %.us-phi, ptr %i.lb, align 16, !noalias !14238
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 64
  store i128 %.us-phi, ptr %i.lc, align 16, !noalias !14238
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 80
  store i128 %.us-phi, ptr %i.ld, align 16, !noalias !14238
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 96
  store i128 %.us-phi, ptr %i.le, align 16, !noalias !14238
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 112
  store i128 %.us-phi, ptr %i.lf, align 16, !noalias !14238
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 128 ; 3 uses
  %niter15767.next.7 = add i64 %niter15767, 8     ; 2 uses
  %niter15767.ncmp.7 = icmp eq i64 %niter15767.next.7, %unroll_iter15766
  br i1 %niter15767.ncmp.7, label %._crit_edge.thread.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.invoke11274:                                     ; preds = %bb.az, %bb.ay
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.hd) #61
          to label %.cont11275 unwind label %bb.ba

.cont11275:                                       ; preds = %.invoke11274
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659, %bb.ba
  %.sroa.0136.4 = phi i8 [ 0, %bb.ba ], [ %.sroa.0136.6, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659 ], [ %.sroa.0136.6, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655 ] ; 2 uses
  %.sroa.0133.14 = phi i8 [ 0, %bb.ba ], [ %.sroa.0133.16, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659 ], [ %.sroa.0133.16, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655 ] ; 2 uses
  %.sroa.0130.14 = phi i8 [ 0, %bb.ba ], [ %.sroa.0130.16, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659 ], [ %.sroa.0130.16, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655 ] ; 2 uses
  %.pn355.pn.pn = phi { ptr, i32 } [ %i.lj, %bb.ba ], [ %.pn355.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659 ], [ %.pn355.pn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14239)
  %.val.i641 = load i64, ptr %i.u, align 8, !alias.scope !14239 ; 2 uses
  %i.lh = icmp eq i64 %.val.i641, 0
  br i1 %i.lh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i642: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit
  %.val1.i643 = load ptr, ptr %.sroa.4.0..sroa_idx.i615, align 8, !alias.scope !14239, !nonnull !56, !noundef !56
  %i.li = shl nuw i64 %.val.i641, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i643, i64 noundef %i.li, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14239
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit644

bb.ba:                                            ; preds = %.invoke11274
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i: ; preds = %bb.az, %._crit_edge.thread.i.i
  %.sink.i635 = phi ptr [ %i.kr, %._crit_edge.thread.i.i ], [ %i.kt, %bb.az ] ; 2 uses
  store i64 %.val.i491, ptr %i.t, align 8, !alias.scope !14235
  %i.lk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 19 uses
  store ptr %.sink.i635, ptr %i.lk, align 8, !alias.scope !14235
  %i.ll = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 17 uses
  store i64 %.val.i491, ptr %i.ll, align 8, !alias.scope !14235
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14241)
  %.not = icmp eq i64 %.val.i491, 0
  br i1 %.not, label %bb.bb, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i, !prof !66

.invoke11276:                                     ; preds = %bb.bb
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fp) #61
          to label %.cont11277 unwind label %.thread360

.cont11277:                                       ; preds = %.invoke11276
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993, %.thread360, %bb.bc
  %.sroa.0136.6 = phi i8 [ 0, %.thread360 ], [ %.sroa.0136.12, %bb.bc ], [ %.sroa.0136.12, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993 ] ; 2 uses
  %.sroa.0133.16 = phi i8 [ 0, %.thread360 ], [ %.sroa.0133.22, %bb.bc ], [ %.sroa.0133.22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993 ] ; 2 uses
  %.sroa.0130.16 = phi i8 [ 0, %.thread360 ], [ %.sroa.0130.22, %bb.bc ], [ %.sroa.0130.22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993 ] ; 2 uses
  %.pn355.pn = phi { ptr, i32 } [ %i.lx, %.thread360 ], [ %.pn353, %bb.bc ], [ %.pn353, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i993 ] ; 2 uses
  %.val485 = load i64, ptr %i.t, align 8          ; 2 uses
  %i.lm = icmp eq i64 %.val485, 0
  br i1 %i.lm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i655: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit659
  %.val486 = load ptr, ptr %i.lk, align 8, !nonnull !56, !noundef !56
  %i.ln = shl nuw i64 %.val485, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val486, i64 noundef %i.ln, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecnEECskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.val.i491, i64 noundef %.val.i491, i64 noundef 16, i64 noundef 16)
          to label %.noexc657 unwind label %.thread360

.noexc657:                                        ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecnE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators32___pyfunction_binomial_tree_graph:bb.a
bb.x:                                             ; preds = %.noexc.i.i.i.i, %bb.w
  %i.dp = phi ptr [ %i.ea, %.noexc.i.i.i.i ], [ %i.dl, %bb.w ]
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.ed, %.noexc.i.i.i.i ], [ 1, %bb.w ] ; 7 uses
  %i.dq = phi ptr [ %i.dt, %.noexc.i.i.i.i ], [ %i.di, %bb.w ]
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.dr = phi ptr [ %i.dt, %bb.z ], [ %i.dq, %bb.x ] ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %i.de
  br i1 %i.ds, label %.loopexit95.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !alias.scope !98392, !noalias !98393, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dv, align 8, !alias.scope !98392, !noalias !98393 ; 2 uses
  %.sroa.3.12.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 32
  %i.dw = and i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.dx = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.dx)
  %i.dy = load i64, ptr %i.p, align 8, !range !59, !alias.scope !98394, !noalias !98386, !noundef !56
  %i.dz = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.dy
  br i1 %i.dz, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.aa
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i unwind label %bb.ab, !noalias !98386

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !98394, !noalias !98386
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i, %bb.aa
  %i.ea = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i ], [ %i.dp, %bb.aa ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.sroa.7.0.copyload.i.i ; 2 uses
  store i64 %i.dw, ptr %i.eb, align 8, !noalias !98395
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %.sroa.3.12.extract.shift.i.i.i.i.i.i.i, ptr %i.ec, align 8, !noalias !98395
  %i.ed = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.ed, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !98394, !noalias !98386
  br label %bb.x

bb.ab:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !98386 ; 2 uses
  %i.ef = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ef, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.ab
  %.val6.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !98386, !nonnull !56, !noundef !56
  %i.eg = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !98386
  br label %.body.i.i

.loopexit95.i.i:                                  ; preds = %bb.y
  %.sroa.075.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !98396 ; 4 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !98396, !nonnull !56, !noundef !56 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !98386
  %i.eh = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.eh)
  %.idx.i.i = shl nuw nsw i64 %.sroa.7.0.copyload.i.i, 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.ap, %bb.ao
  %lpad.loopexit.split-lp241 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = icmp eq i64 %.sroa.075.0.copyload.i.i, 0
  br i1 %i.ej, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.ek = shl nuw i64 %.sroa.075.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !98397
  br label %.body.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, %.loopexit95.i.i
  %.sroa.583.0132.i.i = phi ptr [ %i.el, %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %.loopexit95.i.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.583.0132.i.i, i64 16 ; 2 uses
  %i.em = load i64, ptr %.sroa.583.0132.i.i, align 8, !noalias !98398, !noundef !56
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.583.0132.i.i, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !noalias !98398, !noundef !56
  %i.ep = add i64 %i.em, %.sroa.06.0134.i.i       ; 2 uses
  %i.eq = add i64 %i.eo, %.sroa.06.0134.i.i       ; 2 uses
  %.val35.i.i = load ptr, ptr %i.cp, align 8, !noalias !98378, !nonnull !56, !noundef !56 ; 2 uses
  %.val36.i.i = load i64, ptr %i.cq, align 8, !noalias !98378, !noundef !56
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %.val35.i.i, i64 %.val36.i.i
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %.lr.ph.i.i
  %i.es = phi ptr [ %.val35.i.i, %.lr.ph.i.i ], [ %i.et, %.backedge ] ; 4 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.es, %i.er
  br i1 %.not.not.not.i.not.i.i, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.es, align 8, !alias.scope !98399, !noalias !98400, !noundef !56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i, label %.backedge, label %bb.ae

.backedge:                                        ; preds = %bb.ad, %bb.ae
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ev, align 8, !alias.scope !98399, !noalias !98400 ; 2 uses
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
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !98401
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i38.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.val33.i.i = load ptr, ptr %i.cp, align 8, !noalias !98378, !nonnull !56, !noundef !56 ; 2 uses
  %.val34.i.i = load i64, ptr %i.cq, align 8, !noalias !98378, !noundef !56
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %.val33.i.i, i64 %.val34.i.i
  br label %bb.af

bb.af:                                            ; preds = %.backedge240, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i
  %i.fc = phi ptr [ %.val33.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit39.i.i ], [ %i.fd, %.backedge240 ] ; 4 uses
  %.not.not.not.i41.not.i.i = icmp eq ptr %i.fc, %i.fb
  br i1 %.not.not.not.i41.not.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fc, align 8, !alias.scope !98402, !noalias !98403, !noundef !56
  %.not.i.i.i.i42.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i42.i.i, label %.backedge240, label %bb.ah

.backedge240:                                     ; preds = %bb.ag, %bb.ah
  br label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %.sroa.02.0.copyload.i.i.i.i43.i.i = load i64, ptr %i.ff, align 8, !alias.scope !98402, !noalias !98403 ; 2 uses
  %i.fg = and i64 %.sroa.02.0.copyload.i.i.i.i43.i.i, 4294967295
  %i.fh = icmp eq i64 %i.fg, 0
  %.sroa.4.12.extract.shift.i44.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i43.i.i, 32
  %i.fi = icmp eq i64 %.sroa.4.12.extract.shift.i44.i.i, %.sroa.06.0134.i.i
  %or.cond.i45.i.i = and i1 %i.fh, %i.fi
  br i1 %or.cond.i45.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit46.thread.i.i, label %.backedge240

bb.ai:                                            ; preds = %bb.af
  %i.fj = trunc i64 %.sroa.06.0134.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !98378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !98404
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i32 noundef 0, i32 noundef %i.fj, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc47.i.i unwind label %.loopexit.split-lp97.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.noexc47.i.i:                                     ; preds = %bb.ai
  %i.fk = load i64, ptr %i.o, align 8, !range !107, !noalias !98404, !noundef !56 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.fk, 2
  br i1 %cond.i.i.i.i, label %bb.al, label %bb.aj, !prof !68

bb.aj:                                            ; preds = %.noexc47.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !98405)
  %.not.i.i.i.i.i = icmp eq i64 %i.fk, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ak, !prof !66

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !98406
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !98405, !noalias !98404
  store i64 %i.fk, ptr %i.l, align 8, !noalias !98406
  br label %.invoke.i.i

bb.al:                                            ; preds = %.noexc47.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !98404
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !98404, !noundef !56
  store i64 %i.fo, ptr %i.n, align 8, !noalias !98404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !98404
  store ptr %i.n, ptr %i.m, align 8, !noalias !98404
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !98404
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #60
          to label %.noexc49.i.i unwind label %.loopexit.split-lp97.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.noexc49.i.i:                                     ; preds = %bb.al
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !98404
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit46.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit46.thread.i.i: ; preds = %bb.ah, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fp = shl nuw nsw i64 %.sroa.06.0134.i.i, 1
  %exitcond177.not.i.i = icmp eq i32 %i.dd, %i.at
  br i1 %exitcond177.not.i.i, label %._crit_edge.i.i, label %bb.s

bb.am:                                            ; preds = %bb.ac
  %i.fq = trunc i64 %i.ep to i32
  %i.fr = trunc i64 %i.eq to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !98378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !98407
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i32 noundef %i.fq, i32 noundef %i.fr, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc53.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.noexc53.i.i:                                     ; preds = %bb.am
  %i.fs = load i64, ptr %i.k, align 8, !range !107, !noalias !98407, !noundef !56 ; 3 uses
  %cond.i.i50.i.i = icmp eq i64 %i.fs, 2
  br i1 %cond.i.i50.i.i, label %bb.ap, label %bb.an, !prof !68

bb.an:                                            ; preds = %.noexc53.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !98408)
  %.not.i.i.i51.i.i = icmp eq i64 %i.fs, -1
  br i1 %.not.i.i.i51.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit56.i.i, label %bb.ao, !prof !66

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !98409
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !98408, !noalias !98407
  store i64 %i.fs, ptr %i.h, align 8, !noalias !98409
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !noalias !98409
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @743) #60
          to label %.noexc54.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.noexc54.i.i:                                     ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %.noexc53.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !98407
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !98407, !noundef !56
  store i64 %i.fx, ptr %i.j, align 8, !noalias !98407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !98407
  store ptr %i.j, ptr %i.i, align 8, !noalias !98407
  %.sroa.42.0..sroa_idx.i.i52.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i52.i.i, align 8, !noalias !98407
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @743) #60
          to label %.noexc55.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.noexc55.i.i:                                     ; preds = %bb.ap
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit56.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !98407
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_NtB1L_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %bb.ae, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit56.i.i
  %i.fy = icmp eq ptr %i.el, %i.ei
  br i1 %i.fy, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i

bb.aq:                                            ; preds = %.body59.thread.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body83.i

.body83.i:                                        ; preds = %bb.aq, %bb.q
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !98378
  unreachable

.split.us.i.i:                                    ; preds = %.noexc57.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !98410
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !98382, !noalias !98381
  store i64 %i.cn, ptr %i.f, align 8, !noalias !98410
  br label %.invoke.i.i

bb.ar:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit70.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit65.i.i
  %exitcond.not.i.i = icmp eq i64 %i.cr, %i.ca
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %_RNvXs7_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_6Create13with_capacityCskcxRuJ53GpR_9rustworkx.exit.split.split.i.i

bb.as:                                            ; preds = %_RNvXs7_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_6Create13with_capacityCskcxRuJ53GpR_9rustworkx.exit.split.i.i
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.q)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %bb.at, !noalias !98378

bb.at:                                            ; preds = %bb.as
  %i.gc = landingpad { ptr, i32 }
          cleanup
  %i.gd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.gd) #63
          to label %.body59.thread.i.i unwind label %bb.au, !noalias !98378

bb.au:                                            ; preds = %bb.at
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !98411
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.gf)
          to label %.thread.i.i unwind label %bb.o, !noalias !98378

bb.av:                                            ; preds = %_RNvXs7_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_6Create13with_capacityCskcxRuJ53GpR_9rustworkx.exit.split.split.i.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !98378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !98412
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc63.i.i unwind label %.loopexit.split-lp97.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.noexc63.i.i:                                     ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !98413)
  %i.gg = load i64, ptr %i.e, align 8, !range !107, !alias.scope !98413, !noalias !98412, !noundef !56 ; 2 uses
  %.not.i.i62.i.i = icmp eq i64 %i.gg, -1
  br i1 %.not.i.i62.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit65.i.i, label %bb.aw, !prof !66

bb.aw:                                            ; preds = %.noexc63.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !98414
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !98413, !noalias !98412
  store i64 %i.gg, ptr %i.d, align 8, !noalias !98414
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit65.i.i: ; preds = %.noexc63.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !98412
  br label %bb.ar

bb.ax:                                            ; preds = %_RNvXs7_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_6Create13with_capacityCskcxRuJ53GpR_9rustworkx.exit.split.split.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.cj, align 8, !noalias !98415, !noundef !56
  %i.gj = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.gj, label %bb.az, label %bb.ay, !prof !109

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @745) #61
          to label %.noexc66.i.i unwind label %.loopexit.split-lp97.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.noexc66.i.i:                                     ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.sroa.015.0130.i.i
  %.val.i.i = load ptr, ptr %i.gk, align 8, !noalias !98378, !nonnull !56, !noundef !56 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %.val.i.i) #59, !noalias !98415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98416
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull %.val.i.i)
          to label %.noexc68.i.i unwind label %.loopexit.split-lp97.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.noexc68.i.i:                                     ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !98417)
  %i.gl = load i64, ptr %i.c, align 8, !range !107, !alias.scope !98417, !noalias !98416, !noundef !56 ; 2 uses
  %.not.i.i67.i.i = icmp eq i64 %i.gl, -1
  br i1 %.not.i.i67.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit70.i.i, label %bb.ba, !prof !66

bb.ba:                                            ; preds = %.noexc68.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98418
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !98417, !noalias !98416
  store i64 %i.gl, ptr %i.b, align 8, !noalias !98418
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.ba, %bb.aw, %.split.us.i.i, %bb.ak
  %.sink235.i.sroa.phi.i = phi ptr [ %.sink235.i.sroa.gep.i, %bb.ak ], [ %.sink235.i.sroa.gep98.i, %.split.us.i.i ], [ %.sink235.i.sroa.gep99.i, %bb.aw ], [ %.sink235.i.sroa.gep100.i, %bb.ba ]
  %.sink235.i.i = phi ptr [ %i.l, %bb.ak ], [ %i.f, %.split.us.i.i ], [ %i.d, %bb.aw ], [ %i.b, %bb.ba ]
  %.sink.i.i15 = phi i64 [ %i.fm, %bb.ak ], [ %i.gb, %.split.us.i.i ], [ %i.gi, %bb.aw ], [ %i.gn, %bb.ba ]
  %i.go = phi ptr [ @741, %bb.ak ], [ @4184, %.split.us.i.i ], [ @4184, %bb.aw ], [ @4184, %bb.ba ]
  store i64 %.sink.i.i15, ptr %.sink235.i.sroa.phi.i, align 8, !noalias !98378
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink235.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.go) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp97.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98378

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit70.i.i: ; preds = %.noexc68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98416
  br label %bb.ar

.thread.i.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !98378
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i

.body59.i.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.o
  %i.gp = phi i64 [ %.pre.i.i, %bb.o ], [ %i.cf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.pn23.i.i = phi { ptr, i32 } [ %i.by, %bb.o ], [ %.pn.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.gq = icmp eq i64 %i.gp, -1
  br i1 %i.gq, label %.body.i, label %.body59.thread.i.i

.body59.thread.i.i:                               ; preds = %.body59.i.i, %bb.at
  %.pn23209.i.i = phi { ptr, i32 } [ %.pn23.i.i, %.body59.i.i ], [ %i.gc, %bb.at ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.af)
          to label %.body.i unwind label %bb.aq, !noalias !98419

bb.bb:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !98375
  store ptr %i.t, ptr %i.r, align 8, !noalias !98375
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs8_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !98375
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @2449, ptr noundef nonnull %i.r)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.bc, !noalias !98375

bb.bc:                                            ; preds = %bb.be, %bb.bb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bc, %.body59.thread.i.i, %.body59.i.i
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators41___pyfunction_directed_binomial_tree_graph:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !100442)
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc.i.i.i.i, %bb.z
  %i.ej = phi ptr [ %i.eu, %.noexc.i.i.i.i ], [ %i.ef, %bb.z ]
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.ex, %.noexc.i.i.i.i ], [ 1, %bb.z ] ; 7 uses
  %i.ek = phi ptr [ %i.en, %.noexc.i.i.i.i ], [ %i.ec, %bb.z ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.el = phi ptr [ %i.en, %bb.ac ], [ %i.ek, %bb.aa ] ; 4 uses
  %i.em = icmp eq ptr %i.el, %i.dy
  br i1 %i.em, label %.loopexit127.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8, !alias.scope !100443, !noalias !100444, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !100443, !noalias !100444 ; 2 uses
  %.sroa.3.12.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 32
  %i.eq = and i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.er = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.er)
  %i.es = load i64, ptr %i.x, align 8, !range !59, !alias.scope !100445, !noalias !100437, !noundef !56
  %i.et = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.es
  br i1 %i.et, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.ad
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i unwind label %bb.ae, !noalias !100437

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !100445, !noalias !100437
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i, %bb.ad
  %i.eu = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i ], [ %i.ej, %bb.ad ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %.sroa.7.0.copyload.i.i ; 2 uses
  store i64 %i.eq, ptr %i.ev, align 8, !noalias !100446
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.sroa.3.12.extract.shift.i.i.i.i.i.i.i, ptr %i.ew, align 8, !noalias !100446
  %i.ex = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.ex, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !100445, !noalias !100437
  br label %bb.aa

bb.ae:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !100437 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ez, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.ae
  %.val6.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !100437, !nonnull !56, !noundef !56
  %i.fa = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !100437
  br label %.body.i.i

.loopexit127.i.i:                                 ; preds = %bb.ab
  %.sroa.0107.0.copyload.i.i = load i64, ptr %i.x, align 8, !noalias !100447 ; 4 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !100447, !nonnull !56, !noundef !56 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !100437
  %i.fb = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.fb)
  %.idx.i.i = shl nuw nsw i64 %.sroa.7.0.copyload.i.i, 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.bf, %.invoke, %.invoke305
  %lpad.loopexit.split-lp316 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = icmp eq i64 %.sroa.0107.0.copyload.i.i, 0
  br i1 %i.fd, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.fe = shl nuw i64 %.sroa.0107.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !100448
  br label %.body.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i, %.loopexit127.i.i
  %.sroa.5115.0180.i.i = phi ptr [ %i.ff, %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %.loopexit127.i.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.5115.0180.i.i, i64 16 ; 2 uses
  %i.fg = load i64, ptr %.sroa.5115.0180.i.i, align 8, !noalias !100449, !noundef !56
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.5115.0180.i.i, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !100449, !noundef !56
  %i.fj = add i64 %i.fg, %.sroa.06.0182.i.i       ; 4 uses
  %i.fk = add i64 %i.fi, %.sroa.06.0182.i.i       ; 4 uses
  %.val39.i.i = load ptr, ptr %i.dj, align 8, !noalias !100429, !nonnull !56, !noundef !56 ; 2 uses
  %.val40.i.i = load i64, ptr %i.dk, align 8, !noalias !100429, !noundef !56
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %.val39.i.i, i64 %.val40.i.i
  br label %bb.af

bb.af:                                            ; preds = %.backedge313, %.lr.ph.i.i
  %i.fm = phi ptr [ %.val39.i.i, %.lr.ph.i.i ], [ %i.fn, %.backedge313 ] ; 4 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.fm, %i.fl
  br i1 %.not.not.not.i.not.i.i, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fm, align 8, !alias.scope !100450, !noalias !100451, !noundef !56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i, label %.backedge313, label %bb.ah

.backedge313:                                     ; preds = %bb.ag, %bb.ah
  br label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fp, align 8, !alias.scope !100450, !noalias !100451 ; 2 uses
  %i.fq = and i64 %.sroa.02.0.copyload.i.i.i.i.i.i, 4294967295
  %i.fr = icmp eq i64 %i.fq, %i.fj
  %.sroa.4.12.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i.i.i, 32
  %i.fs = icmp eq i64 %.sroa.4.12.extract.shift.i.i.i, %i.fk
  %or.cond.i.i.i = and i1 %i.fr, %i.fs
  br i1 %or.cond.i.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %.backedge313

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i
  %i.ft = icmp eq i64 %.sroa.0107.0.copyload.i.i, 0
  br i1 %i.ft, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i42.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i42.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fu = shl nuw i64 %.sroa.0107.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !100452
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i42.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.val37.i.i = load ptr, ptr %i.dj, align 8, !noalias !100429, !nonnull !56, !noundef !56 ; 2 uses
  %.val38.i.i = load i64, ptr %i.dk, align 8, !noalias !100429, !noundef !56
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %.val37.i.i, i64 %.val38.i.i
  br label %bb.ai

bb.ai:                                            ; preds = %.backedge315, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i
  %i.fw = phi ptr [ %.val37.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit43.i.i ], [ %i.fx, %.backedge315 ] ; 4 uses
  %.not.not.not.i45.not.i.i = icmp eq ptr %i.fw, %i.fv
  br i1 %.not.not.not.i45.not.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fw, align 8, !alias.scope !100453, !noalias !100454, !noundef !56
  %.not.i.i.i.i46.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i46.i.i, label %.backedge315, label %bb.ak

.backedge315:                                     ; preds = %bb.aj, %bb.ak
  br label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %.sroa.02.0.copyload.i.i.i.i47.i.i = load i64, ptr %i.fz, align 8, !alias.scope !100453, !noalias !100454 ; 2 uses
  %i.ga = and i64 %.sroa.02.0.copyload.i.i.i.i47.i.i, 4294967295
  %i.gb = icmp eq i64 %i.ga, 0
  %.sroa.4.12.extract.shift.i48.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i47.i.i, 32
  %i.gc = icmp eq i64 %.sroa.4.12.extract.shift.i48.i.i, %.sroa.06.0182.i.i
  %or.cond.i49.i.i = and i1 %i.gb, %i.gc
  br i1 %or.cond.i49.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i, label %.backedge315

bb.al:                                            ; preds = %bb.ai
  %i.gd = trunc i64 %.sroa.06.0182.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !100429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !100455
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef 0, i32 noundef %i.gd, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc51.i.i unwind label %.loopexit.split-lp129.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !100429

.noexc51.i.i:                                     ; preds = %bb.al
  %i.ge = load i64, ptr %i.w, align 8, !range !107, !noalias !100455, !noundef !56 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.ge, 2
  br i1 %cond.i.i.i.i, label %bb.ao, label %bb.am, !prof !68

bb.am:                                            ; preds = %.noexc51.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100456)
  %.not.i.i.i.i.i = icmp eq i64 %i.ge, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.an, !prof !66

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !100457
  %i.gf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !100456, !noalias !100455
  store i64 %i.ge, ptr %i.t, align 8, !noalias !100457
  br label %.invoke.i.i

bb.ao:                                            ; preds = %.noexc51.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !100455
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !100455, !noundef !56
  store i64 %i.gi, ptr %i.v, align 8, !noalias !100455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !100455
  store ptr %i.v, ptr %i.u, align 8, !noalias !100455
  br label %.invoke314.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !100455
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i: ; preds = %bb.ak, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i
  br i1 %i.ce, label %bb.ap, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit60.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit60.thread.i.i: ; preds = %bb.as, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit67.i.i, %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i
  %i.gj = shl nuw nsw i64 %.sroa.06.0182.i.i, 1
  %exitcond241.not.i.i = icmp eq i32 %i.dx, %i.be
  br i1 %exitcond241.not.i.i, label %._crit_edge.i.i, label %bb.v

bb.ap:                                            ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit50.thread.i.i
  %.val35.i.i = load ptr, ptr %i.dj, align 8, !noalias !100429, !nonnull !56, !noundef !56 ; 2 uses
  %.val36.i.i = load i64, ptr %i.dk, align 8, !noalias !100429, !noundef !56
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %.val35.i.i, i64 %.val36.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %.backedge314, %bb.ap
  %i.gl = phi ptr [ %.val35.i.i, %bb.ap ], [ %i.gm, %.backedge314 ] ; 4 uses
  %.not.not.not.i55.not.i.i = icmp eq ptr %i.gl, %i.gk
  br i1 %.not.not.not.i55.not.i.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gl, align 8, !alias.scope !100458, !noalias !100459, !noundef !56
  %.not.i.i.i.i56.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i56.i.i, label %.backedge314, label %bb.as

.backedge314:                                     ; preds = %bb.ar, %bb.as
  br label %bb.aq

bb.as:                                            ; preds = %bb.ar
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %.sroa.02.0.copyload.i.i.i.i57.i.i = load i64, ptr %i.go, align 8, !alias.scope !100458, !noalias !100459 ; 2 uses
  %i.gp = and i64 %.sroa.02.0.copyload.i.i.i.i57.i.i, 4294967295
  %i.gq = icmp eq i64 %i.gp, %.sroa.06.0182.i.i
  %i.gr = icmp ult i64 %.sroa.02.0.copyload.i.i.i.i57.i.i, 4294967296
  %or.cond.i59.i.i = and i1 %i.gr, %i.gq
  br i1 %or.cond.i59.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit60.thread.i.i, label %.backedge314

bb.at:                                            ; preds = %bb.aq
  %i.gs = trunc i64 %.sroa.06.0182.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !100429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !100460
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef %i.gs, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc64.i.i unwind label %.loopexit.split-lp129.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !100429

.noexc64.i.i:                                     ; preds = %bb.at
  %i.gt = load i64, ptr %i.s, align 8, !range !107, !noalias !100460, !noundef !56 ; 3 uses
  %cond.i.i61.i.i = icmp eq i64 %i.gt, 2
  br i1 %cond.i.i61.i.i, label %bb.aw, label %bb.au, !prof !68

bb.au:                                            ; preds = %.noexc64.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100461)
  %.not.i.i.i62.i.i = icmp eq i64 %i.gt, -1
  br i1 %.not.i.i.i62.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit67.i.i, label %bb.av, !prof !66

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !100462
  %i.gu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !100461, !noalias !100460
  store i64 %i.gt, ptr %i.p, align 8, !noalias !100462
  br label %.invoke.i.i

bb.aw:                                            ; preds = %.noexc64.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !100460
  %i.gx = load i64, ptr %i.gw, align 8, !noalias !100460, !noundef !56
  store i64 %i.gx, ptr %i.r, align 8, !noalias !100460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !100460
  store ptr %i.r, ptr %i.q, align 8, !noalias !100460
  br label %.invoke314.i.i

.invoke314.i.i:                                   ; preds = %bb.aw, %bb.ao
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %bb.ao ], [ %.sink.i.sroa.gep100.i, %bb.aw ]
  %.sink.i.i25 = phi ptr [ %i.u, %bb.ao ], [ %i.q, %bb.aw ]
  %i.gy = phi ptr [ @741, %bb.ao ], [ @742, %bb.aw ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink.i.sroa.phi.i, align 8, !noalias !100429
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %.sink.i.i25, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy) #60
          to label %.cont315.i.i unwind label %.loopexit.split-lp129.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !100429

.cont315.i.i:                                     ; preds = %.invoke314.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit67.i.i: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !100460
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit60.thread.i.i

bb.ax:                                            ; preds = %bb.af
  %i.gz = trunc i64 %i.fj to i32
  %i.ha = trunc i64 %i.fk to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !100429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !100463
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef %i.gz, i32 noundef %i.ha, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc71.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !100429

.noexc71.i.i:                                     ; preds = %bb.ax
  %i.hb = load i64, ptr %i.o, align 8, !range !107, !noalias !100463, !noundef !56 ; 3 uses
  %cond.i.i68.i.i = icmp eq i64 %i.hb, 2
  br i1 %cond.i.i68.i.i, label %bb.ba, label %bb.ay, !prof !68

bb.ay:                                            ; preds = %.noexc71.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100464)
  %.not.i.i.i69.i.i = icmp eq i64 %i.hb, -1
  br i1 %.not.i.i.i69.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit74.i.i, label %bb.az, !prof !66

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !100465
  %i.hc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !100464, !noalias !100463
  store i64 %i.hb, ptr %i.l, align 8, !noalias !100465
  br label %.invoke

.invoke:                                          ; preds = %bb.bh, %bb.az
  %.sink308.sroa.phi = phi ptr [ %.sink308.sroa.gep, %bb.bh ], [ %.sink308.sroa.gep362, %bb.az ]
  %.sink308 = phi ptr [ %i.h, %bb.bh ], [ %i.l, %bb.az ]
  %.sink = phi i64 [ %i.hv, %bb.bh ], [ %i.hd, %bb.az ]
  %i.he = phi ptr [ @744, %bb.bh ], [ @743, %bb.az ]
  store i64 %.sink, ptr %.sink308.sroa.phi, align 8, !noalias !100429
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink308, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.he) #60
          to label %.cont unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !100429

.cont:                                            ; preds = %.invoke
  unreachable

bb.ba:                                            ; preds = %.noexc71.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !100463
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !100463, !noundef !56
  store i64 %i.hg, ptr %i.n, align 8, !noalias !100463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !100463
  store ptr %i.n, ptr %i.m, align 8, !noalias !100463
  br label %.invoke305

.invoke305:                                       ; preds = %bb.bi, %bb.ba
  %.sink309.sroa.phi = phi ptr [ %.sink309.sroa.gep, %bb.bi ], [ %.sink309.sroa.gep361, %bb.ba ]
  %.sink309 = phi ptr [ %i.i, %bb.bi ], [ %i.m, %bb.ba ]
  %i.hh = phi ptr [ @744, %bb.bi ], [ @743, %bb.ba ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink309.sroa.phi, align 8, !noalias !100429
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %.sink309, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hh) #60
          to label %.cont306 unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !100429

.cont306:                                         ; preds = %.invoke305
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit74.i.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !100463
  br label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %bb.ah, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit74.i.i
  br i1 %i.ce, label %bb.bb, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i

_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i: ; preds = %bb.be, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit88.i.i, %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.hi = icmp eq ptr %i.ff, %i.fc
  br i1 %i.hi, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i

bb.bb:                                            ; preds = %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.val33.i.i = load ptr, ptr %i.dj, align 8, !noalias !100429, !nonnull !56, !noundef !56 ; 2 uses
  %.val34.i.i = load i64, ptr %i.dk, align 8, !noalias !100429, !noundef !56
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %.val33.i.i, i64 %.val34.i.i
  br label %bb.bc

bb.bc:                                            ; preds = %.backedge, %bb.bb
  %i.hk = phi ptr [ %.val33.i.i, %bb.bb ], [ %i.hl, %.backedge ] ; 4 uses
  %.not.not.not.i76.not.i.i = icmp eq ptr %i.hk, %i.hj
  br i1 %.not.not.not.i76.not.i.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hk, align 8, !alias.scope !100466, !noalias !100467, !noundef !56
  %.not.i.i.i.i77.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i77.i.i, label %.backedge, label %bb.be

.backedge:                                        ; preds = %bb.bd, %bb.be
  br label %bb.bc

bb.be:                                            ; preds = %bb.bd
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %.sroa.02.0.copyload.i.i.i.i78.i.i = load i64, ptr %i.hn, align 8, !alias.scope !100466, !noalias !100467 ; 2 uses
  %i.ho = and i64 %.sroa.02.0.copyload.i.i.i.i78.i.i, 4294967295
  %i.hp = icmp eq i64 %i.ho, %i.fk
  %.sroa.4.12.extract.shift.i79.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i.i78.i.i, 32
  %i.hq = icmp eq i64 %.sroa.4.12.extract.shift.i79.i.i, %i.fj
  %or.cond.i80.i.i = and i1 %i.hp, %i.hq
  br i1 %or.cond.i80.i.i, label %_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators19binomial_tree_graph19binomial_tree_graph9find_edgeINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx.exit81.thread.i.i, label %.backedge

bb.bf:                                            ; preds = %bb.bc
  %i.hr = trunc i64 %i.fk to i32
  %i.hs = trunc i64 %i.fj to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !100429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !100468
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef %i.hr, i32 noundef %i.hs, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc85.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !100429

.noexc85.i.i:                                     ; preds = %bb.bf
  %i.ht = load i64, ptr %i.k, align 8, !range !107, !noalias !100468, !noundef !56 ; 3 uses
  %cond.i.i82.i.i = icmp eq i64 %i.ht, 2
  br i1 %cond.i.i82.i.i, label %bb.bi, label %bb.bg, !prof !68

bb.bg:                                            ; preds = %.noexc85.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100469)
  %.not.i.i.i83.i.i = icmp eq i64 %i.ht, -1
  br i1 %.not.i.i.i83.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit88.i.i, label %bb.bh, !prof !66

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !100470
  %i.hu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !100469, !noalias !100468
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graph:bb.a
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ao = fcmp oeq double %5, 2.000000e+00
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call double @llvm.fabs.f64(double %2)
  %i.aq = tail call double @llvm.pow.f64(double %i.ap, double %5)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = fmul double %2, %2
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.sroa.02.0 = phi double [ %i.an, %bb.h ], [ %i.ar, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.as = trunc nuw i64 %6 to i1
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = mul i64 %7, 6364136223846793005
  %i.au = add i64 %i.at, -6812164046247290893     ; 4 uses
  %i.av = lshr i64 %i.au, 45
  %i.aw = lshr i64 %i.au, 27
  %i.ax = xor i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = lshr i64 %i.au, 59
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = tail call noundef i32 @llvm.fshr.i32(i32 %i.ay, i32 %i.ay, i32 range(i32 0, 32) %i.ba)
  %i.bc = mul i64 %i.au, 6364136223846793005
  %i.bd = add i64 %i.bc, -6812164046247290893     ; 4 uses
  %i.be = lshr i64 %i.bd, 45
  %i.bf = lshr i64 %i.bd, 27
  %i.bg = xor i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = lshr i64 %i.bd, 59
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = tail call noundef i32 @llvm.fshr.i32(i32 %i.bh, i32 %i.bh, i32 range(i32 0, 32) %i.bj)
  %i.bl = mul i64 %i.bd, 6364136223846793005
  %i.bm = add i64 %i.bl, -6812164046247290893     ; 4 uses
  %i.bn = lshr i64 %i.bm, 45
  %i.bo = lshr i64 %i.bm, 27
  %i.bp = xor i64 %i.bn, %i.bo
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %i.br = lshr i64 %i.bm, 59
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = tail call noundef i32 @llvm.fshr.i32(i32 %i.bq, i32 %i.bq, i32 range(i32 0, 32) %i.bs)
  %i.bu = mul i64 %i.bm, 6364136223846793005
  %i.bv = add i64 %i.bu, -6812164046247290893     ; 4 uses
  %i.bw = lshr i64 %i.bv, 45
  %i.bx = lshr i64 %i.bv, 27
  %i.by = xor i64 %i.bw, %i.bx
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = lshr i64 %i.bv, 59
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = tail call noundef i32 @llvm.fshr.i32(i32 %i.bz, i32 %i.bz, i32 range(i32 0, 32) %i.cb)
  %i.cd = mul i64 %i.bv, 6364136223846793005
  %i.ce = add i64 %i.cd, -6812164046247290893     ; 4 uses
  %i.cf = lshr i64 %i.ce, 45
  %i.cg = lshr i64 %i.ce, 27
  %i.ch = xor i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %i.cj = lshr i64 %i.ce, 59
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = tail call noundef i32 @llvm.fshr.i32(i32 %i.ci, i32 %i.ci, i32 range(i32 0, 32) %i.ck)
  %i.cm = mul i64 %i.ce, 6364136223846793005
  %i.cn = add i64 %i.cm, -6812164046247290893     ; 4 uses
  %i.co = lshr i64 %i.cn, 45
  %i.cp = lshr i64 %i.cn, 27
  %i.cq = xor i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cs = lshr i64 %i.cn, 59
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = tail call noundef i32 @llvm.fshr.i32(i32 %i.cr, i32 %i.cr, i32 range(i32 0, 32) %i.ct)
  %i.cv = mul i64 %i.cn, 6364136223846793005
  %i.cw = add i64 %i.cv, -6812164046247290893     ; 4 uses
  %i.cx = lshr i64 %i.cw, 45
  %i.cy = lshr i64 %i.cw, 27
  %i.cz = xor i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %i.db = lshr i64 %i.cw, 59
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = tail call noundef i32 @llvm.fshr.i32(i32 %i.da, i32 %i.da, i32 range(i32 0, 32) %i.dc)
  %i.de = mul i64 %i.cw, 6364136223846793005
  %i.df = add i64 %i.de, -6812164046247290893     ; 3 uses
  %i.dg = lshr i64 %i.df, 45
  %i.dh = lshr i64 %i.df, 27
  %i.di = xor i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = lshr i64 %i.df, 59
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = tail call noundef i32 @llvm.fshr.i32(i32 %i.dj, i32 %i.dj, i32 range(i32 0, 32) %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !110976
  store i32 %i.bb, ptr %i.g, align 4, !noalias !110976
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.bk, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !110976
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.bt, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !110976
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.cc, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !110976
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %i.cl, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !110976
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %i.cu, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !110976
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.dd, ptr %.sroa.10.0..sroa_idx.i, align 4, !noalias !110976
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %i.dm, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !110976
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.g)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit unwind label %bb.o

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !110976
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.n)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.m, %bb.n, %bb.q
  %.sroa.044.3 = phi i1 [ true, %bb.n ], [ true, %bb.q ], [ true, %bb.m ], [ false, %bb.v ]
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110978)
  %i.do = load i32, ptr %i.n, align 16, !range !65, !alias.scope !110978, !noundef !56
  %i.dp = trunc nuw i32 %i.do to i1
  br i1 %i.dp, label %bb.q, label %bb.r, !prof !60

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !110979
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !range !159, !alias.scope !110978, !noundef !56
  store i32 %i.dr, ptr %i.h, align 4, !noalias !110979
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1553, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2721) #60
          to label %.noexc187 unwind label %bb.o

.noexc187:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dt = load i128, ptr %i.ds, align 16, !alias.scope !110978, !noundef !56
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.dv = load i128, ptr %i.du, align 16, !alias.scope !110978, !noundef !56
  store i128 %i.dt, ptr %i.o, align 16, !alias.scope !110977
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i128 %i.dv, ptr %i.dw, align 16, !alias.scope !110977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.s

bb.s:                                             ; preds = %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.021.0.copyload = load i64, ptr %4, align 8 ; 4 uses
  %.not = icmp eq i64 %.sroa.021.0.copyload, -1
  br i1 %.not, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dx = mul i64 %1, 24                          ; 3 uses
  %or.cond.i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.i.i, label %bb.v, label %bb.u, !prof !62

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !110980
  %i.dy = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110980 ; 5 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.v, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.u
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.eb = shl i64 %3, 3                           ; 4 uses
  %i.ec = icmp ugt i64 %3, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.eb, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.ec, %.not.i.i.i.i.i.i.i.i.i.i
  %i.ed = icmp eq i64 %i.eb, 0
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %3, 0
  %i.ee = load i128, ptr %i.ea, align 16
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.split, label %.lr.ph.i.i.i.i.i.i.split.preheader, !prof !62

.lr.ph.i.i.i.i.i.i.split.preheader:               ; preds = %.lr.ph.i.i.i.i.i.i
  %.promoted327 = load i128, ptr %i.o, align 16
  br label %.lr.ph.i.i.i.i.i.i.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.47.0.ph.i = phi i64 [ 8, %bb.u ], [ 0, %bb.t ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.47.0.ph.i, i64 %i.dx) #61
          to label %.noexc195 unwind label %bb.o

.noexc195:                                        ; preds = %bb.v
  unreachable

.lr.ph.i.i.i.i.i.i.split:                         ; preds = %.lr.ph.i.i.i.i.i.i.split.preheader, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i
  %.lcssa326329 = phi i128 [ %.lcssa326328, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i ], [ %.promoted327, %.lr.ph.i.i.i.i.i.i.split.preheader ] ; 2 uses
  %.val4.i.i.i.i.i.i = phi i64 [ %i.ef, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.split.preheader ] ; 3 uses
  %i.ef = add nuw nsw i64 %.val4.i.i.i.i.i.i, 1   ; 2 uses
  br i1 %i.ed, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.split
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !110981
  %i.eg = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110981 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = ptrtoint ptr %i.eg to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

.split:                                           ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.lcssa.split = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.val4.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %.sroa.49.0.ph.i.i.i.i.i.i.i.i.i.split = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ 8, %bb.w ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i.i.i.i.i.i.i.i.split, i64 %i.eb) #61
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i, !noalias !110982

.noexc.i.i.i.i.i.i:                               ; preds = %.split
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.split
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %bb.x ], [ 8, %.lr.ph.i.i.i.i.i.i.split ]
  %.sroa.49.0.i.i.i.i.i.i.i.i.i = phi i64 [ %3, %bb.x ], [ 0, %.lr.ph.i.i.i.i.i.i.split ] ; 2 uses
  %i.ej = inttoptr i64 %.sroa.10.0.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  %i.ek = icmp samesign ule i64 %3, %.sroa.49.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ek)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = phi i128 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa326329, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.em = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %i.eo = mul i128 %i.el, 47026247687942121848144207491837523525
  %i.ep = add i128 %i.eo, %i.ee                   ; 5 uses
  %i.eq = lshr i128 %i.ep, 122
  %i.er = trunc nuw nsw i128 %i.eq to i64
  %i.es = lshr i128 %i.ep, 64
  %i.et = xor i128 %i.es, %i.ep
  %i.eu = trunc i128 %i.et to i64                 ; 2 uses
  %i.ev = call noundef i64 @llvm.fshr.i64(i64 %i.eu, i64 %i.eu, i64 %i.er)
  %i.ew = lshr i64 %i.ev, 12
  %i.ex = or disjoint i64 %i.ew, 4607182418800017408
  %i.ey = bitcast i64 %i.ex to double
  %i.ez = fadd nnan double %i.ey, -1.000000e+00
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.em
  store double %i.ez, ptr %i.fa, align 8, !noalias !110983
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.en, %3
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa326328 = phi i128 [ %.lcssa326329, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %.val4.i.i.i.i.i.i ; 3 uses
  store i64 %.sroa.49.0.i.i.i.i.i.i.i.i.i, ptr %i.fb, align 8, !noalias !110984
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.ej, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !110984
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %3, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !110984
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ef, %1
  br i1 %exitcond.not.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i.split

.body.i:                                          ; preds = %.split
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !110985), !noalias !110986
  %i.fd = icmp eq i64 %.val4.i.i.i.i.i.i.lcssa.split, 0
  br i1 %i.fd, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i239, label %.lr.ph.i.i.i231

.lr.ph.i.i.i231:                                  ; preds = %.body.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236
  %.sroa.0.012.i.i.i232 = phi i64 [ %i.ff, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236 ], [ 0, %.body.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %.sroa.0.012.i.i.i232 ; 2 uses
  %i.ff = add nuw nsw i64 %.sroa.0.012.i.i.i232, 1 ; 2 uses
  %.val8.i.i.i233 = load i64, ptr %i.fe, align 8, !alias.scope !110985, !noalias !110987 ; 2 uses
  %i.fg = icmp eq i64 %.val8.i.i.i233, 0
  br i1 %i.fg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i234

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i234: ; preds = %.lr.ph.i.i.i231
  %i.fh = getelementptr i8, ptr %i.fe, i64 8
  %.val9.i.i.i235 = load ptr, ptr %i.fh, align 8, !alias.scope !110985, !noalias !110987, !nonnull !56, !noundef !56
  %i.fi = shl nuw i64 %.val8.i.i.i233, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i235, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110988
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i234, %.lr.ph.i.i.i231
  %i.fj = icmp eq i64 %i.ff, %.val4.i.i.i.i.i.i.lcssa.split
  br i1 %i.fj, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i239, label %.lr.ph.i.i.i231

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i239: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236, %.body.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dy, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110987
  br label %.body

.thread:                                          ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i
  store i128 %.lcssa326328, ptr %i.o, align 16
  store i64 %1, ptr %i.m, align 8, !noalias !110989
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.dy, ptr %.sroa.5246.0..sroa_idx, align 8, !noalias !110989
  %.sroa.7247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %1, ptr %.sroa.7247.0..sroa_idx, align 8, !noalias !110989
  br label %.lr.ph.preheader

bb.y:                                             ; preds = %bb.s
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.021.0.copyload, ptr %i.m, align 8
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx, i64 16, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.fk = icmp ult i64 %.pre, 384307168202282326
  call void @llvm.assume(i1 %i.fk)
  %.not180 = icmp eq i64 %1, %.pre
  br i1 %.not180, label %.lr.ph.preheader, label %bb.z

.lr.ph.preheader:                                 ; preds = %bb.y, %.thread
  %.sroa.021.0.copyload248430 = phi i64 [ %1, %.thread ], [ %.sroa.021.0.copyload, %bb.y ] ; 3 uses
  %i.fl = phi i64 [ %1, %.thread ], [ %.pre, %bb.y ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !56, !noundef !56 ; 9 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx
  br label %.lr.ph

bb.z:                                             ; preds = %bb.y
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.fp = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.aa, label %bb.az, !prof !88

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc196 unwind label %.body199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc196:                                        ; preds = %bb.aa
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ar
  %.sroa.025.0330 = phi ptr [ %i.fr, %bb.ar ], [ %i.fn, %.lr.ph.preheader ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.025.0330, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fs = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4dictNtB2_6PyDict3new()
          to label %bb.af unwind label %.body199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

._crit_edge:                                      ; preds = %bb.ar
  %i.ft = add nsw i64 %1, -1                      ; 3 uses
  %.not344 = icmp eq i64 %i.ft, 0
  br i1 %.not344, label %._crit_edge341, label %.split331.lr.ph

.split331.lr.ph:                                  ; preds = %._crit_edge
  %i.fu = fcmp oeq double %5, 2.000000e+00
  br i1 %i.am, label %.split331.us, label %.split331

.split331.us:                                     ; preds = %.split331.lr.ph, %.loopexit.us
  %.sroa.0171.0340.us = phi i64 [ %i.fv, %.loopexit.us ], [ 0, %.split331.lr.ph ] ; 3 uses
  %i.fv = add nuw nsw i64 %.sroa.0171.0340.us, 1  ; 4 uses
  %i.fw = icmp ult i64 %i.fv, %1
  br i1 %i.fw, label %.lr.ph333.us, label %.loopexit.us

.lr.ph333.us:                                     ; preds = %.split331.us
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %.sroa.0171.0340.us ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = trunc i64 %.sroa.0171.0340.us to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph333.us
  %.sroa.0173.0332.us.us = phi i64 [ %i.fv, %.lr.ph333.us ], [ %i.gb, %bb.ae ] ; 3 uses
  %i.gb = add nuw i64 %.sroa.0173.0332.us.us, 1   ; 2 uses
  %i.gc = load i64, ptr %i.fy, align 8, !noundef !56
  %i.gd = load ptr, ptr %i.fz, align 8, !nonnull !56, !noundef !56 ; 3 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %.sroa.0173.0332.us.us ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !nonnull !56, !noundef !56 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !noundef !56
  call void @llvm.experimental.noalias.scope.decl(metadata !110990)
  call void @llvm.experimental.noalias.scope.decl(metadata !110991)
  %i.gj = call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.gc, i64 range(i64 0, 1152921504606846976) %i.gi) ; 5 uses
  %.not.i3.i.us.us = icmp eq i64 %i.gj, 0
  br i1 %.not.i3.i.us.us, label %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader: ; preds = %bb.ab
  %xtraiter579 = and i64 %i.gj, 1
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.epil.preheader, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader
  %unroll_iter584 = and i64 %i.gj, -2
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new
  %.sroa.0.015.us.i19.i.us.us = phi double [ -1.000000e+00, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new ], [ %..i.i.us.i.i.us.us.1, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us ] ; 2 uses
  %.sroa.07.014.us.i20.i.us.us = phi i64 [ 0, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new ], [ %i.gr, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us ] ; 4 uses
  %niter585 = phi i64 [ 0, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new ], [ %niter585.next.1, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us ]
  %i.gl = or disjoint i64 %.sroa.07.014.us.i20.i.us.us, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.sroa.07.014.us.i20.i.us.us
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.sroa.07.014.us.i20.i.us.us
  %.val11.us.i21.i.us.us = load double, ptr %i.gm, align 8, !alias.scope !110990, !noalias !110992, !noundef !56
  %.val12.us.i22.i.us.us = load double, ptr %i.gn, align 8, !alias.scope !110991, !noalias !110992, !noundef !56
  %i.go = fsub double %.val11.us.i21.i.us.us, %.val12.us.i22.i.us.us
  %i.gp = call double @llvm.fabs.f64(double %i.go) ; 2 uses
  %i.gq = fcmp ogt double %i.gp, %.sroa.0.015.us.i19.i.us.us
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout18graph_shell_layout:bb.a
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !130954
  br label %.body63.i

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !130960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130954
  %i.dg = icmp eq i64 %.sroa.02.0.i.i35.i, 0
  br i1 %i.dg, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i: ; preds = %bb.ab
  %i.dh = shl nuw nsw i64 %.sroa.02.0.i.i35.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130935
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit

._crit_edge.i:                                    ; preds = %bb.af, %bb.u
  %i.di = icmp eq i64 %.sroa.015.0.copyload16.i, 0
  br i1 %i.di, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i: ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i) ]
  %i.dj = shl nuw i64 %.sroa.015.0.copyload16.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130961
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i, %._crit_edge.i
  %i.dk = fadd double %.sroa.013.0.i, %.sroa.015.059.i
  %i.dl = fadd double %.sroa.08.0.i, %.sroa.010.160.i
  %i.dm = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dm, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.ac:                                            ; preds = %bb.af, %.lr.ph.i
  %.sroa.028.056.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dz, %bb.af ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.sroa.0.0.copyload.i, i64 %.sroa.028.056.i
  %i.do = load i64, ptr %i.dn, align 8, !noalias !130935, !noundef !56 ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.02.0.i.i35.i
  br i1 %i.dp, label %bb.af, label %bb.ag

bb.ad:                                            ; preds = %bb.ag
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = icmp eq i64 %.sroa.015.0.copyload16.i, 0
  br i1 %i.dr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit71.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i69.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i69.i: ; preds = %bb.ad
  %i.ds = shl nuw i64 %.sroa.015.0.copyload16.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130962
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit71.i

bb.ae:                                            ; preds = %bb.ag
  unreachable

bb.af:                                            ; preds = %bb.ac
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
  store double %i.dy, ptr %i.ea, align 8, !noalias !130935
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store double %i.dx, ptr %i.eb, align 8, !noalias !130935
  %exitcond.not.i = icmp eq i64 %i.dz, %.sroa.7.sroa.5.0.copyload.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ac

bb.ag:                                            ; preds = %bb.ac
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !130935
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.do, i64 noundef %.sroa.02.0.i.i35.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1084) #61
          to label %bb.ae unwind label %bb.ad, !noalias !130935

bb.ah:                                            ; preds = %bb.ai, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  resume { ptr, i32 } %.pn.pn.pn.i

bb.ai:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1) #63, !noalias !130963
  br label %bb.ah

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit: ; preds = %bb.ab, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131032)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !131031, !noundef !56 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !131033
  %i.h = shl i64 %i.g, 4                          ; 4 uses
  %i.i = icmp ugt i64 %i.g, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.h, 9223372036854775800
  %or.cond.i.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131034
  %i.k = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131034 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.k to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.459.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.459.0.ph.i, i64 %i.h) #61, !noalias !131033
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.1061.0.i = phi i64 [ %i.m, %bb.d ], [ 8, %bb.b ]
  %.sroa.459.0.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.n = inttoptr i64 %.sroa.1061.0.i to ptr      ; 8 uses
  %i.o = icmp samesign ule i64 %i.g, %.sroa.459.0.i
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.459.0.i, ptr %i.e, align 8, !noalias !131033
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !noalias !131033
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !131033
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
  %.sroa.456.0.copyload.pre.pre.i = load ptr, ptr %i.p, align 8, !noalias !131033 ; 3 uses
  br i1 %i.v, label %bb.j, label %bb.m

.loopexit73.thread.i:                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !131033
  store i64 1, ptr %i.q, align 8, !alias.scope !131035, !noalias !131033
  %i.w = trunc nuw i64 %2 to i1
  br i1 %i.w, label %.thread.i, label %.thread128.i

.thread.i:                                        ; preds = %.loopexit73.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131033
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131036)
  %i.ae = load i64, ptr %i.e, align 8, !range !59, !alias.scope !131036, !noalias !131033, !noundef !56
  %i.af = icmp eq i64 %i.y, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph88.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge100.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131033

._crit_edge100.i:                                 ; preds = %bb.g
  %.pre101.i = load ptr, ptr %i.p, align 8, !alias.scope !131036, !noalias !131033
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge100.i, %.lr.ph88.i
  %i.ag = phi ptr [ %.pre101.i, %._crit_edge100.i ], [ %i.x, %.lr.ph88.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.y ; 2 uses
  store double %i.ac, ptr %i.ah, align 8, !noalias !131037
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %i.ad, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !131037
  %i.ai = add nuw nsw i64 %i.y, 1                 ; 3 uses
  store i64 %i.ai, ptr %i.q, align 8, !alias.scope !131036, !noalias !131033
  %i.aj = fadd <2 x double> %i.u, %i.z
  %exitcond99.not.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond99.not.i, label %.loopexit73.i, label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %.preheader75.i, %bb.aa
  %i.ak = phi ptr [ %i.dj, %bb.aa ], [ %i.n, %.preheader75.i ]
  %i.al = phi i64 [ %i.dl, %bb.aa ], [ 0, %.preheader75.i ] ; 3 uses
  %.sroa.09.183.i = phi double [ %i.ao, %bb.aa ], [ %..i, %.preheader75.i ] ; 2 uses
  %i.am = fmul double %.sroa.09.183.i, 5.000000e-01 ; 3 uses
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %.sroa.09.183.i, %i.an      ; 2 uses
  %sincos31.i = tail call { double, double } @llvm.sincos.f64(double %i.ao) ; 2 uses
  %sin32.i = extractvalue { double, double } %sincos31.i, 0
  %cos33.i = extractvalue { double, double } %sincos31.i, 1
  %i.ap = fmul double %i.am, %cos33.i
  %i.aq = fmul double %i.am, %sin32.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131038)
  %i.ar = load i64, ptr %i.e, align 8, !range !59, !alias.scope !131038, !noalias !131033, !noundef !56
  %i.as = icmp eq i64 %i.al, %i.ar
  br i1 %i.as, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131033

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.p, align 8, !alias.scope !131038, !noalias !131033
  br label %bb.aa

bb.j:                                             ; preds = %.loopexit73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131039)
  %i.at = shl nuw nsw i64 %i.g, 3
  br i1 %.not90.i, label %.loopexit72.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.au = phi i64 [ 8, %.thread.i ], [ %i.at, %bb.j ] ; 2 uses
  %.sroa.557.0.copyload111119.i = phi i64 [ 1, %.thread.i ], [ %i.g, %bb.j ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre113117.i = phi ptr [ %i.n, %.thread.i ], [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131040
  %i.av = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131040 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %vec.ind, ptr %i.ax, align 8, !noalias !131041
  store <2 x i64> %step.add, ptr %i.ay, align 8, !noalias !131041
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !130992

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.i.preheader56:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #61
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131033

.noexc41.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader56 ] ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  store i64 %i.ba, ptr %i.bc, align 8, !noalias !131041
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !130993

bb.m:                                             ; preds = %bb.n, %.loopexit73.i
  %.sroa.456.0.copyload.pre.pre114.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %.loopexit73.i ], [ %.sroa.456.0.copyload.pre.pre113118126.i, %bb.n ] ; 4 uses
  %.sroa.557.0.copyload112.i = phi i64 [ %i.g, %.loopexit73.i ], [ %.sroa.557.0.copyload111120125.i, %bb.n ] ; 4 uses
  %i.bd = load i64, ptr %4, align 8, !range !57, !alias.scope !131032, !noundef !56
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.o, label %.loopexit.i

.thread128.i:                                     ; preds = %.loopexit73.thread.i
  %i.bf = load i64, ptr %4, align 8, !range !57, !alias.scope !131032, !noundef !56
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %.thread135.i, label %.loopexit.i

.thread135.i:                                     ; preds = %.thread128.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %.lr.ph.i.preheader.i

.loopexit72.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.j
  %i.bi = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.456.0.copyload.pre.pre113118126.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ], [ %.sroa.456.0.copyload.pre.pre113117.i, %middle.block ], [ %.sroa.456.0.copyload.pre.pre113117.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.557.0.copyload111120125.i = phi i64 [ %i.g, %bb.j ], [ %.sroa.557.0.copyload111119.i, %middle.block ], [ %.sroa.557.0.copyload111119.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !131039, !noalias !131033
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !131039, !noalias !131033
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !131039, !noalias !131033
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %.sroa.456.0.copyload.pre.pre113118126.i, i64 noundef %.sroa.557.0.copyload111120125.i, double noundef %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131033

bb.n:                                             ; preds = %.loopexit72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131033
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %.idx.i.i = shl nuw nsw i64 %.sroa.557.0.copyload112.i, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.456.0.copyload.pre.pre114.i, i64 %.idx.i.i
  %i.bk = icmp eq i64 %.sroa.557.0.copyload112.i, 0
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o, %.thread135.i
  %i.bl = phi ptr [ %i.bh, %.thread135.i ], [ %i.bj, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre114132143.i = phi ptr [ %i.n, %.thread135.i ], [ %.sroa.456.0.copyload.pre.pre114.i, %bb.o ] ; 7 uses
  %.sroa.557.0.copyload112133142.i = phi i64 [ 1, %.thread135.i ], [ %.sroa.557.0.copyload112.i, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre114132143.i39 = ptrtoaddr ptr %.sroa.456.0.copyload.pre.pre114132143.i to i64
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %.sroa.048.0.copyload144.in.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = load <2 x double>, ptr %.sroa.048.0.copyload144.in.i, align 8, !alias.scope !131032 ; 3 uses
  %i.bo = add i64 %i.bm, -16
  %i.bp = sub i64 %i.bo, %.sroa.456.0.copyload.pre.pre114132143.i39 ; 2 uses
  %i.bq = lshr i64 %i.bp, 4
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check41 = icmp ult i64 %i.bp, 48
  br i1 %min.iters.check41, label %.lr.ph.i.i.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec43 = and i64 %i.br, 2305843009213693950   ; 3 uses
  %i.bs = shl i64 %n.vec43, 4
  %i.bt = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre114132143.i, i64 %i.bs
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next48, %vector.body44 ] ; 2 uses
  %i.bu = shl i64 %index45, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre114132143.i, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre114132143.i, i64 %i.bu
  %next.gep46 = getelementptr i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !131042, !noalias !131033
  %wide.load47 = load <2 x double>, ptr %next.gep46, align 8, !alias.scope !131042, !noalias !131033
  %i.bw = fadd <2 x double> %i.bn, %wide.load
  %i.bx = fadd <2 x double> %i.bn, %wide.load47
  store <2 x double> %i.bw, ptr %next.gep, align 8, !alias.scope !131042, !noalias !131033
  store <2 x double> %i.bx, ptr %next.gep46, align 8, !alias.scope !131042, !noalias !131033
  %index.next48 = add nuw i64 %index45, 2         ; 2 uses
  %i.by = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.by, label %middle.block49, label %vector.body44, !llvm.loop !130996

middle.block49:                                   ; preds = %vector.body44
  %cmp.n50 = icmp eq i64 %i.br, %n.vec43
  br i1 %cmp.n50, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block49
  %.sroa.0.01.i.i.ph = phi ptr [ %.sroa.456.0.copyload.pre.pre114132143.i, %.lr.ph.i.preheader.i ], [ %i.bt, %middle.block49 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.sroa.0.01.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16 ; 2 uses
  %i.ca = load <2 x double>, ptr %.sroa.0.01.i.i, align 8, !alias.scope !131042, !noalias !131033
  %i.cb = fadd <2 x double> %i.bn, %i.ca
  store <2 x double> %i.cb, ptr %.sroa.0.01.i.i, align 8, !alias.scope !131042, !noalias !131033
  %i.cc = icmp eq ptr %i.bz, %i.bl
  br i1 %i.cc, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !130997

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block49, %bb.o, %.thread128.i, %bb.m
  %.sroa.557.0.copyload112134.i = phi i64 [ 1, %.thread128.i ], [ 0, %bb.o ], [ %.sroa.557.0.copyload112.i, %bb.m ], [ %.sroa.557.0.copyload112133142.i, %middle.block49 ], [ %.sroa.557.0.copyload112133142.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre114131.i = phi ptr [ %i.n, %.thread128.i ], [ %.sroa.456.0.copyload.pre.pre114.i, %bb.o ], [ %.sroa.456.0.copyload.pre.pre114.i, %bb.m ], [ %.sroa.456.0.copyload.pre.pre114132143.i, %middle.block49 ], [ %.sroa.456.0.copyload.pre.pre114132143.i, %.lr.ph.i.i ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !131031, !nonnull !56, !noundef !56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !131031, !noundef !56
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cg
  %.sroa.055.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !131033 ; 7 uses
  %i.ci = icmp ult i64 %.sroa.557.0.copyload112134.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.456.0.copyload.pre.pre114131.i, i64 %.sroa.557.0.copyload112134.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !131043
  %i.ck = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i unwind label %.thread.i.i, !noalias !131043

.noexc3.i.i:                                      ; preds = %.loopexit.i
  %i.cl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131043
  %i.cm = icmp eq i8 %i.cl, 2
  br i1 %i.cm, label %bb.q, label %bb.p, !prof !66

bb.p:                                             ; preds = %.noexc3.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.q unwind label %.thread.i.i, !noalias !131043

bb.q:                                             ; preds = %bb.p, %.noexc3.i.i
  store i64 0, ptr %i.c, align 8, !alias.scope !131044, !noalias !131043
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !131044, !noalias !131043
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !131044, !noalias !131043
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !131043
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.ck, ptr %i.cn, align 8, !alias.scope !131044, !noalias !131043
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 0)
          to label %bb.r unwind label %bb.z, !noalias !131045

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.co = phi ptr [ %i.dc, %bb.y ], [ %.sroa.456.0.copyload.pre.pre114131.i, %bb.r ] ; 3 uses
  %i.cp = phi i64 [ %i.cv, %bb.y ], [ 0, %bb.r ]
  %i.cq = phi ptr [ %i.cu, %bb.y ], [ %i.ce, %bb.r ]
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cr = phi i64 [ %i.cv, %bb.u ], [ %i.cp, %bb.s ] ; 2 uses
  %i.cs = phi ptr [ %i.cu, %bb.u ], [ %i.cq, %bb.s ] ; 3 uses
  %i.ct = icmp eq ptr %i.cs, %i.ch
  br i1 %i.ct, label %.loopexit.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = add i64 %i.cr, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !131046, !noundef !56
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = icmp eq ptr %i.co, %i.cj
  br i1 %i.cw, label %.loopexit.i.i.i.i.i.i.i, label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.cy, label %.body7.i.i, label %.body.sink.split.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cz = and i64 %i.cr, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !noalias !131048
  store i64 %i.cz, ptr %i.b, align 8, !noalias !131047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131049
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.w, !noalias !131048

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.v, %bb.t
  %i.da = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.da, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.db = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre114131.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131050
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131047
  br label %bb.s

.body.sink.split.i.i.i:                           ; preds = %bb.z, %bb.w
  %eh.lpad-body30.ph.i.i.i = phi { ptr, i32 } [ %i.de, %bb.z ], [ %i.cx, %bb.w ]
  %i.dd = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre114131.i, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131045
  br label %.body7.i.i

bb.z:                                             ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.df, label %.body7.i.i, label %.body.sink.split.i.i.i

.body7.i.i:                                       ; preds = %bb.z, %.body.sink.split.i.i.i, %bb.w
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body30.ph.i.i.i, %.body.sink.split.i.i.i ], [ %i.de, %bb.z ], [ %i.cx, %bb.w ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !131043
  br label %.body.i

.thread.i.i:                                      ; preds = %bb.p, %.loopexit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.dh, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.thread.i.i
  %i.di = shl nuw i64 %.sroa.055.0.copyload.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre114131.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131051
  br label %.body.i

bb.aa:                                            ; preds = %._crit_edge.i, %.lr.ph.i
  %i.dj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.al ; 2 uses
  store double %i.ap, ptr %i.dk, align 8, !noalias !131052
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.aq, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !131052
  %i.dl = add nuw nsw i64 %i.al, 1                ; 3 uses
  store i64 %i.dl, ptr %i.q, align 8, !alias.scope !131038, !noalias !131033
  %exitcond.not.i = icmp eq i64 %i.dl, %i.g
  br i1 %exitcond.not.i, label %.loopexit73.i, label %.lr.ph.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %.thread.i.i, %.body7.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %i.dg, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %eh.lpad-body8.i.i, %.body7.i.i ], [ %i.dg, %.thread.i.i ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp58, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body69.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.i, %.loopexit72.i, %bb.l
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noalias !131033 ; 2 uses
  %i.dm = icmp eq i64 %.val.i, 0
  br i1 %i.dm, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val34.i = load ptr, ptr %i.p, align 8, !noalias !131033, !nonnull !56, !noundef !56
  %i.dn = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131033
  br label %.body.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit: ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !131053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !131043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !131033
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131348)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.i)
  %i.o = load ptr, ptr %3, align 8, !alias.scope !131347, !noundef !56 ; 4 uses
  %.not.i = icmp ne ptr %i.o, null                ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !alias.scope !131346 ; 3 uses
  %.not175.i = icmp eq ptr %i.p, null             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 %.not175.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !131349
  %i.q = trunc nuw i64 %14 to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131349
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131349 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.ew, !prof !88

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc225.i unwind label %bb.j, !noalias !131349

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !131350
  store i32 %i.ab, ptr %i.i, align 4, !noalias !131350
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !131350
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !131350
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.bc, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !131350
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !131350
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.bu, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !131350
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.cd, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !noalias !131350
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.cm, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !131350
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.i)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !131349

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !131350
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !131349
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.m)
          to label %bb.k unwind label %bb.j, !noalias !131349

.thread.i:                                        ; preds = %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i, %bb.eu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body389.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i, %bb.j
  %.sroa.063.0.i = phi i8 [ %.sroa.063.1.i, %bb.j ], [ 0, %bb.ev ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body389.i ], [ 0, %bb.eu ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %.sroa.061.0.i = phi i8 [ 1, %bb.j ], [ 1, %bb.ev ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body389.i ], [ %.sroa.061.3.ph.i, %bb.eu ], [ %.sroa.061.3.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %.pn186.i = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.ago, %bb.ev ], [ %eh.lpad-body.i291.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ %eh.lpad-body.i291.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %eh.lpad-body390.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %eh.lpad-body390.i, %.body389.i ], [ %.pn182.ph.i, %bb.eu ], [ %.pn182.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %i.cn = icmp eq ptr %10, null
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.co = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i1 = load i64, ptr %i.co, align 8, !noalias !131349, !noundef !56
  %i.cp = icmp sgt i64 %.val.i.i.i.i.i1, 0
  br i1 %i.cp, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %10)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.ei

bb.i:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %10) #59, !noalias !131349
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.p, %bb.o, %bb.l, %bb.f, %bb.e, %bb.d
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout20digraph_shell_layout:bb.a
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !131539
  br label %.body63.i

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !131545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !131539
  %i.dg = icmp eq i64 %.sroa.02.0.i.i35.i, 0
  br i1 %i.dg, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i: ; preds = %bb.ab
  %i.dh = shl nuw nsw i64 %.sroa.02.0.i.i35.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131520
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit

._crit_edge.i:                                    ; preds = %bb.af, %bb.u
  %i.di = icmp eq i64 %.sroa.015.0.copyload16.i, 0
  br i1 %i.di, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i: ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i) ]
  %i.dj = shl nuw i64 %.sroa.015.0.copyload16.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131546
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i67.i, %._crit_edge.i
  %i.dk = fadd double %.sroa.013.0.i, %.sroa.015.059.i
  %i.dl = fadd double %.sroa.08.0.i, %.sroa.010.160.i
  %i.dm = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dm, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.ac:                                            ; preds = %bb.af, %.lr.ph.i
  %.sroa.028.056.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dz, %bb.af ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.sroa.0.0.copyload.i, i64 %.sroa.028.056.i
  %i.do = load i64, ptr %i.dn, align 8, !noalias !131520, !noundef !56 ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.02.0.i.i35.i
  br i1 %i.dp, label %bb.af, label %bb.ag

bb.ad:                                            ; preds = %bb.ag
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = icmp eq i64 %.sroa.015.0.copyload16.i, 0
  br i1 %i.dr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit71.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i69.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i69.i: ; preds = %bb.ad
  %i.ds = shl nuw i64 %.sroa.015.0.copyload16.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131547
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit71.i

bb.ae:                                            ; preds = %bb.ag
  unreachable

bb.af:                                            ; preds = %bb.ac
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
  store double %i.dy, ptr %i.ea, align 8, !noalias !131520
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store double %i.dx, ptr %i.eb, align 8, !noalias !131520
  %exitcond.not.i = icmp eq i64 %i.dz, %.sroa.7.sroa.5.0.copyload.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ac

bb.ag:                                            ; preds = %bb.ac
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !131520
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.do, i64 noundef %.sroa.02.0.i.i35.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1084) #61
          to label %bb.ae unwind label %bb.ad, !noalias !131520

bb.ah:                                            ; preds = %bb.ai, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  resume { ptr, i32 } %.pn.pn.pn.i

bb.ai:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1) #63, !noalias !131548
  br label %bb.ah

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout5shell12shell_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit: ; preds = %bb.ab, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i65.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131617)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !131616, !noundef !56 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !131618
  %i.h = shl i64 %i.g, 4                          ; 4 uses
  %i.i = icmp ugt i64 %i.g, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.h, 9223372036854775800
  %or.cond.i.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131619
  %i.k = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131619 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.k to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.459.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.459.0.ph.i, i64 %i.h) #61, !noalias !131618
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.1061.0.i = phi i64 [ %i.m, %bb.d ], [ 8, %bb.b ]
  %.sroa.459.0.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.n = inttoptr i64 %.sroa.1061.0.i to ptr      ; 8 uses
  %i.o = icmp samesign ule i64 %i.g, %.sroa.459.0.i
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.459.0.i, ptr %i.e, align 8, !noalias !131618
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !noalias !131618
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !131618
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
  %.sroa.456.0.copyload.pre.pre.i = load ptr, ptr %i.p, align 8, !noalias !131618 ; 3 uses
  br i1 %i.v, label %bb.j, label %bb.m

.loopexit73.thread.i:                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !131618
  store i64 1, ptr %i.q, align 8, !alias.scope !131620, !noalias !131618
  %i.w = trunc nuw i64 %2 to i1
  br i1 %i.w, label %.thread.i, label %.thread128.i

.thread.i:                                        ; preds = %.loopexit73.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131618
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131621)
  %i.ae = load i64, ptr %i.e, align 8, !range !59, !alias.scope !131621, !noalias !131618, !noundef !56
  %i.af = icmp eq i64 %i.y, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph88.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge100.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131618

._crit_edge100.i:                                 ; preds = %bb.g
  %.pre101.i = load ptr, ptr %i.p, align 8, !alias.scope !131621, !noalias !131618
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge100.i, %.lr.ph88.i
  %i.ag = phi ptr [ %.pre101.i, %._crit_edge100.i ], [ %i.x, %.lr.ph88.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.y ; 2 uses
  store double %i.ac, ptr %i.ah, align 8, !noalias !131622
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %i.ad, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !131622
  %i.ai = add nuw nsw i64 %i.y, 1                 ; 3 uses
  store i64 %i.ai, ptr %i.q, align 8, !alias.scope !131621, !noalias !131618
  %i.aj = fadd <2 x double> %i.u, %i.z
  %exitcond99.not.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond99.not.i, label %.loopexit73.i, label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %.preheader75.i, %bb.aa
  %i.ak = phi ptr [ %i.dj, %bb.aa ], [ %i.n, %.preheader75.i ]
  %i.al = phi i64 [ %i.dl, %bb.aa ], [ 0, %.preheader75.i ] ; 3 uses
  %.sroa.09.183.i = phi double [ %i.ao, %bb.aa ], [ %..i, %.preheader75.i ] ; 2 uses
  %i.am = fmul double %.sroa.09.183.i, 5.000000e-01 ; 3 uses
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %.sroa.09.183.i, %i.an      ; 2 uses
  %sincos31.i = tail call { double, double } @llvm.sincos.f64(double %i.ao) ; 2 uses
  %sin32.i = extractvalue { double, double } %sincos31.i, 0
  %cos33.i = extractvalue { double, double } %sincos31.i, 1
  %i.ap = fmul double %i.am, %cos33.i
  %i.aq = fmul double %i.am, %sin32.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131623)
  %i.ar = load i64, ptr %i.e, align 8, !range !59, !alias.scope !131623, !noalias !131618, !noundef !56
  %i.as = icmp eq i64 %i.al, %i.ar
  br i1 %i.as, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131618

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.p, align 8, !alias.scope !131623, !noalias !131618
  br label %bb.aa

bb.j:                                             ; preds = %.loopexit73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131624)
  %i.at = shl nuw nsw i64 %i.g, 3
  br i1 %.not90.i, label %.loopexit72.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.au = phi i64 [ 8, %.thread.i ], [ %i.at, %bb.j ] ; 2 uses
  %.sroa.557.0.copyload111119.i = phi i64 [ 1, %.thread.i ], [ %i.g, %bb.j ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre113117.i = phi ptr [ %i.n, %.thread.i ], [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131625
  %i.av = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131625 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %vec.ind, ptr %i.ax, align 8, !noalias !131626
  store <2 x i64> %step.add, ptr %i.ay, align 8, !noalias !131626
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !131577

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.i.preheader56:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #61
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131618

.noexc41.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader56 ] ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  store i64 %i.ba, ptr %i.bc, align 8, !noalias !131626
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !131578

bb.m:                                             ; preds = %bb.n, %.loopexit73.i
  %.sroa.456.0.copyload.pre.pre114.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %.loopexit73.i ], [ %.sroa.456.0.copyload.pre.pre113118126.i, %bb.n ] ; 4 uses
  %.sroa.557.0.copyload112.i = phi i64 [ %i.g, %.loopexit73.i ], [ %.sroa.557.0.copyload111120125.i, %bb.n ] ; 4 uses
  %i.bd = load i64, ptr %4, align 8, !range !57, !alias.scope !131617, !noundef !56
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.o, label %.loopexit.i

.thread128.i:                                     ; preds = %.loopexit73.thread.i
  %i.bf = load i64, ptr %4, align 8, !range !57, !alias.scope !131617, !noundef !56
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %.thread135.i, label %.loopexit.i

.thread135.i:                                     ; preds = %.thread128.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %.lr.ph.i.preheader.i

.loopexit72.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.j
  %i.bi = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.456.0.copyload.pre.pre113118126.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ], [ %.sroa.456.0.copyload.pre.pre113117.i, %middle.block ], [ %.sroa.456.0.copyload.pre.pre113117.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.557.0.copyload111120125.i = phi i64 [ %i.g, %bb.j ], [ %.sroa.557.0.copyload111119.i, %middle.block ], [ %.sroa.557.0.copyload111119.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !131624, !noalias !131618
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !131624, !noalias !131618
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !131624, !noalias !131618
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %.sroa.456.0.copyload.pre.pre113118126.i, i64 noundef %.sroa.557.0.copyload111120125.i, double noundef %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131618

bb.n:                                             ; preds = %.loopexit72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131618
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %.idx.i.i = shl nuw nsw i64 %.sroa.557.0.copyload112.i, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.456.0.copyload.pre.pre114.i, i64 %.idx.i.i
  %i.bk = icmp eq i64 %.sroa.557.0.copyload112.i, 0
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o, %.thread135.i
  %i.bl = phi ptr [ %i.bh, %.thread135.i ], [ %i.bj, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre114132143.i = phi ptr [ %i.n, %.thread135.i ], [ %.sroa.456.0.copyload.pre.pre114.i, %bb.o ] ; 7 uses
  %.sroa.557.0.copyload112133142.i = phi i64 [ 1, %.thread135.i ], [ %.sroa.557.0.copyload112.i, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre114132143.i39 = ptrtoaddr ptr %.sroa.456.0.copyload.pre.pre114132143.i to i64
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %.sroa.048.0.copyload144.in.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = load <2 x double>, ptr %.sroa.048.0.copyload144.in.i, align 8, !alias.scope !131617 ; 3 uses
  %i.bo = add i64 %i.bm, -16
  %i.bp = sub i64 %i.bo, %.sroa.456.0.copyload.pre.pre114132143.i39 ; 2 uses
  %i.bq = lshr i64 %i.bp, 4
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check41 = icmp ult i64 %i.bp, 48
  br i1 %min.iters.check41, label %.lr.ph.i.i.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec43 = and i64 %i.br, 2305843009213693950   ; 3 uses
  %i.bs = shl i64 %n.vec43, 4
  %i.bt = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre114132143.i, i64 %i.bs
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next48, %vector.body44 ] ; 2 uses
  %i.bu = shl i64 %index45, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre114132143.i, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre114132143.i, i64 %i.bu
  %next.gep46 = getelementptr i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !131627, !noalias !131618
  %wide.load47 = load <2 x double>, ptr %next.gep46, align 8, !alias.scope !131627, !noalias !131618
  %i.bw = fadd <2 x double> %i.bn, %wide.load
  %i.bx = fadd <2 x double> %i.bn, %wide.load47
  store <2 x double> %i.bw, ptr %next.gep, align 8, !alias.scope !131627, !noalias !131618
  store <2 x double> %i.bx, ptr %next.gep46, align 8, !alias.scope !131627, !noalias !131618
  %index.next48 = add nuw i64 %index45, 2         ; 2 uses
  %i.by = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.by, label %middle.block49, label %vector.body44, !llvm.loop !131581

middle.block49:                                   ; preds = %vector.body44
  %cmp.n50 = icmp eq i64 %i.br, %n.vec43
  br i1 %cmp.n50, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block49
  %.sroa.0.01.i.i.ph = phi ptr [ %.sroa.456.0.copyload.pre.pre114132143.i, %.lr.ph.i.preheader.i ], [ %i.bt, %middle.block49 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.sroa.0.01.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16 ; 2 uses
  %i.ca = load <2 x double>, ptr %.sroa.0.01.i.i, align 8, !alias.scope !131627, !noalias !131618
  %i.cb = fadd <2 x double> %i.bn, %i.ca
  store <2 x double> %i.cb, ptr %.sroa.0.01.i.i, align 8, !alias.scope !131627, !noalias !131618
  %i.cc = icmp eq ptr %i.bz, %i.bl
  br i1 %i.cc, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !131582

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block49, %bb.o, %.thread128.i, %bb.m
  %.sroa.557.0.copyload112134.i = phi i64 [ 1, %.thread128.i ], [ 0, %bb.o ], [ %.sroa.557.0.copyload112.i, %bb.m ], [ %.sroa.557.0.copyload112133142.i, %middle.block49 ], [ %.sroa.557.0.copyload112133142.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre114131.i = phi ptr [ %i.n, %.thread128.i ], [ %.sroa.456.0.copyload.pre.pre114.i, %bb.o ], [ %.sroa.456.0.copyload.pre.pre114.i, %bb.m ], [ %.sroa.456.0.copyload.pre.pre114132143.i, %middle.block49 ], [ %.sroa.456.0.copyload.pre.pre114132143.i, %.lr.ph.i.i ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !131616, !nonnull !56, !noundef !56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !131616, !noundef !56
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cg
  %.sroa.055.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !131618 ; 7 uses
  %i.ci = icmp ult i64 %.sroa.557.0.copyload112134.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.456.0.copyload.pre.pre114131.i, i64 %.sroa.557.0.copyload112134.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !131628
  %i.ck = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i unwind label %.thread.i.i, !noalias !131628

.noexc3.i.i:                                      ; preds = %.loopexit.i
  %i.cl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131628
  %i.cm = icmp eq i8 %i.cl, 2
  br i1 %i.cm, label %bb.q, label %bb.p, !prof !66

bb.p:                                             ; preds = %.noexc3.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.q unwind label %.thread.i.i, !noalias !131628

bb.q:                                             ; preds = %bb.p, %.noexc3.i.i
  store i64 0, ptr %i.c, align 8, !alias.scope !131629, !noalias !131628
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !131629, !noalias !131628
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !131629, !noalias !131628
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !131628
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.ck, ptr %i.cn, align 8, !alias.scope !131629, !noalias !131628
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 0)
          to label %bb.r unwind label %bb.z, !noalias !131630

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.co = phi ptr [ %i.dc, %bb.y ], [ %.sroa.456.0.copyload.pre.pre114131.i, %bb.r ] ; 3 uses
  %i.cp = phi i64 [ %i.cv, %bb.y ], [ 0, %bb.r ]
  %i.cq = phi ptr [ %i.cu, %bb.y ], [ %i.ce, %bb.r ]
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cr = phi i64 [ %i.cv, %bb.u ], [ %i.cp, %bb.s ] ; 2 uses
  %i.cs = phi ptr [ %i.cu, %bb.u ], [ %i.cq, %bb.s ] ; 3 uses
  %i.ct = icmp eq ptr %i.cs, %i.ch
  br i1 %i.ct, label %.loopexit.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = add i64 %i.cr, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !131631, !noundef !56
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = icmp eq ptr %i.co, %i.cj
  br i1 %i.cw, label %.loopexit.i.i.i.i.i.i.i, label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.cy, label %.body7.i.i, label %.body.sink.split.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cz = and i64 %i.cr, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !noalias !131633
  store i64 %i.cz, ptr %i.b, align 8, !noalias !131632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131634
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.w, !noalias !131633

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.v, %bb.t
  %i.da = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.da, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.db = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre114131.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131635
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131632
  br label %bb.s

.body.sink.split.i.i.i:                           ; preds = %bb.z, %bb.w
  %eh.lpad-body30.ph.i.i.i = phi { ptr, i32 } [ %i.de, %bb.z ], [ %i.cx, %bb.w ]
  %i.dd = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre114131.i, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131630
  br label %.body7.i.i

bb.z:                                             ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.df, label %.body7.i.i, label %.body.sink.split.i.i.i

.body7.i.i:                                       ; preds = %bb.z, %.body.sink.split.i.i.i, %bb.w
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body30.ph.i.i.i, %.body.sink.split.i.i.i ], [ %i.de, %bb.z ], [ %i.cx, %bb.w ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !131628
  br label %.body.i

.thread.i.i:                                      ; preds = %bb.p, %.loopexit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.dh, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.thread.i.i
  %i.di = shl nuw i64 %.sroa.055.0.copyload.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre114131.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131636
  br label %.body.i

bb.aa:                                            ; preds = %._crit_edge.i, %.lr.ph.i
  %i.dj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.al ; 2 uses
  store double %i.ap, ptr %i.dk, align 8, !noalias !131637
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.aq, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !131637
  %i.dl = add nuw nsw i64 %i.al, 1                ; 3 uses
  store i64 %i.dl, ptr %i.q, align 8, !alias.scope !131623, !noalias !131618
  %exitcond.not.i = icmp eq i64 %i.dl, %i.g
  br i1 %exitcond.not.i, label %.loopexit73.i, label %.lr.ph.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %.thread.i.i, %.body7.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %i.dg, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %eh.lpad-body8.i.i, %.body7.i.i ], [ %i.dg, %.thread.i.i ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp58, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body69.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.i, %.loopexit72.i, %bb.l
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noalias !131618 ; 2 uses
  %i.dm = icmp eq i64 %.val.i, 0
  br i1 %i.dm, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val34.i = load ptr, ptr %i.p, align 8, !noalias !131618, !nonnull !56, !noundef !56
  %i.dn = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131618
  br label %.body.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit: ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !131638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !131628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !131618
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131933)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.i)
  %i.o = load ptr, ptr %3, align 8, !alias.scope !131932, !noundef !56 ; 4 uses
  %.not.i = icmp ne ptr %i.o, null                ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !alias.scope !131931 ; 3 uses
  %.not175.i = icmp eq ptr %i.p, null             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 %.not175.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !131934
  %i.q = trunc nuw i64 %15 to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131934
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131934 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.ew, !prof !88

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc225.i unwind label %bb.j, !noalias !131934

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !131935
  store i32 %i.ab, ptr %i.i, align 4, !noalias !131935
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !131935
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !131935
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.bc, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !131935
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !131935
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.bu, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !131935
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.cd, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !noalias !131935
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.cm, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !131935
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.i)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !131934

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !131935
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !131934
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.m)
          to label %bb.k unwind label %bb.j, !noalias !131934

.thread.i:                                        ; preds = %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i, %bb.eu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body389.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i, %bb.j
  %.sroa.063.0.i = phi i8 [ %.sroa.063.1.i, %bb.j ], [ 0, %bb.ev ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body389.i ], [ 0, %bb.eu ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %.sroa.061.0.i = phi i8 [ 1, %bb.j ], [ 1, %bb.ev ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body389.i ], [ %.sroa.061.3.ph.i, %bb.eu ], [ %.sroa.061.3.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %.pn186.i = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.agp, %bb.ev ], [ %eh.lpad-body.i291.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ %eh.lpad-body.i291.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %eh.lpad-body390.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %eh.lpad-body390.i, %.body389.i ], [ %.pn182.ph.i, %bb.eu ], [ %.pn182.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %i.cn = icmp eq ptr %11, null
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.co = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i1 = load i64, ptr %i.co, align 8, !noalias !131934, !noundef !56
  %i.cp = icmp sgt i64 %.val.i.i.i.i.i1, 0
  br i1 %i.cp, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %11)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.ei

bb.i:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %11) #59, !noalias !131934
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.p, %bb.o, %bb.l, %bb.f, %bb.e, %bb.d
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_string:bb.a
  %.sroa.013.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bb, align 8, !noalias !145042, !nonnull !56, !noundef !56
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.2, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bc, align 8, !noalias !145042, !nonnull !56, !noundef !56
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.3, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bd, align 8, !noalias !145042, !nonnull !56, !noundef !56
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.4, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.be, align 8, !noalias !145042, !nonnull !56, !noundef !56
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.5, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bf, align 8, !noalias !145042, !nonnull !56, !noundef !56
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.6, i64 544
  %i.bh = add i64 %.sroa.011.016.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bg, align 8, !noalias !145042, !nonnull !56, !noundef !56 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i.i.i
  %.sroa.59.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.12.023.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.r ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.022.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.r ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.025.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.au, %bb.r ], [ %.sroa.013.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i, i64 538
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !145043, !noundef !56
  %i.bl = zext i16 %i.bk to i64
  %i.bm = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i, %i.bl
  br i1 %i.bm, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.s
  %.sroa.0.026.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %bb.s ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.025.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.s ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ]
  %i.bn = load ptr, ptr %.sroa.0.026.i.i.i.i.i.i.i.i.i, align 8, !noalias !145043, !noundef !56 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.s
  %i.bo = zext i16 %i.br to i64
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bp = add i64 %.sroa.5.025.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i.i.i.i.i.i.i.i, i64 536
  %i.br = load i16, ptr %i.bq, align 8, !noalias !145043 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 538
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !145043, !noundef !56
  %i.bu = icmp ult i16 %i.br, %i.bt
  br i1 %i.bu, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1376) #60
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.x, !noalias !145044

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
  call void @llvm.assume(i1 %i.bx), !noalias !145045
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
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !145046, !nonnull !56, !noundef !56 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !145010

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.w
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.w ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bz, %bb.w ], [ %i.ca, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i, %bb.w ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cb = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i, 8
  br i1 %i.cb, label %.loopexit.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !145046, !nonnull !56, !noundef !56
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cc, align 8, !noalias !145046, !nonnull !56, !noundef !56
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.cd, align 8, !noalias !145046, !nonnull !56, !noundef !56
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ce, align 8, !noalias !145046, !nonnull !56, !noundef !56
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cf, align 8, !noalias !145046, !nonnull !56, !noundef !56
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cg, align 8, !noalias !145046, !nonnull !56, !noundef !56
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ch, align 8, !noalias !145046, !nonnull !56, !noundef !56
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.6, i64 544
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ci, align 8, !noalias !145046, !nonnull !56, !noundef !56 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.7, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.cj, label %.loopexit.i.i.i.i.i, label %.new

bb.x:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !145045
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %.prol.loopexit, %.new, %bb.v
  %.sroa.713.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.v ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.011.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.010.0.ph.i.i.i.i.i.i.i.i, %bb.v ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i.i.i.i.i.i.i.i, i64 8
  %i.cn = icmp samesign ult i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cn), !noalias !145045
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i.i.i.i.i.i.i.i, i64 272
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !145047)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !145048
  call void @llvm.experimental.noalias.scope.decl(metadata !145049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !145050
  store ptr %i.co, ptr %i.d, align 8, !noalias !145051, !captures !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !145051
  store ptr %i.cq, ptr %i.c, align 8, !noalias !145051, !captures !83
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !145052, !noalias !145048, !nonnull !56, !noundef !56 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !145052, !noalias !145048, !noundef !56
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !145051
  store ptr %i.d, ptr %i.a, align 8, !noalias !145051
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtRNtNtCs87CvPiUlf0m_5alloc6string6StringNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !145051
  store ptr %i.c, ptr %i.as, align 8, !noalias !145051
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtRNtNtCs87CvPiUlf0m_5alloc6string6StringNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !145051
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @1428, ptr noundef nonnull %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i, !noalias !145048

.noexc.i.i.i.i.i.i:                               ; preds = %.split.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145051
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs87CvPiUlf0m_5alloc6string6StringBV_EBW_uNCNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_strings_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3M_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map4IterBW_BW_EB1G_EE0E0E0B1M_.exit.i.i.i.i.i.i

.split21.i.i.i.i.i.i.i.i:                         ; preds = %.split.i.1.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !145051
  store ptr %i.d, ptr %i.b, align 8, !noalias !145051
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtRNtNtCs87CvPiUlf0m_5alloc6string6StringNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !145051
  store ptr %i.c, ptr %i.ar, align 8, !noalias !145051
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtRNtNtCs87CvPiUlf0m_5alloc6string6StringNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !145051
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @1429, ptr noundef nonnull %i.b)
          to label %.noexc9.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i, !noalias !145048

.noexc9.i.i.i.i.i.i:                              ; preds = %.split21.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145051
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs87CvPiUlf0m_5alloc6string6StringBV_EBW_uNCNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_strings_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3M_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map4IterBW_BW_EB1G_EE0E0E0B1M_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs87CvPiUlf0m_5alloc6string6StringBV_EBW_uNCNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_strings_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3M_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map4IterBW_BW_EB1G_EE0E0E0B1M_.exit.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145050
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %.val8.i27.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !145053
  %i.dp = add nuw nsw i64 %.val8.i27.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145048
  %i.dq = icmp eq i64 %i.at, 0
  br i1 %i.dq, label %.loopexit, label %.lr.ph.i.i.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i: ; preds = %.split21.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.val8.i27.i.i.i.i.i, ptr %i.aq, align 8, !alias.scope !145054, !noalias !145055
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #63, !noalias !145038
  br label %.body

.body:                                            ; preds = %bb.z, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.ab, %bb.y, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.z ], [ %lpad.loopexit.i, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i ], [ %i.dr, %bb.y ], [ %i.ef, %bb.ab ], [ %i.ef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #63
          to label %common.resume unwind label %bb.ad

bb.y:                                             ; preds = %bb.q
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRNtNtCs87CvPiUlf0m_5alloc6string6StringBV_EBW_uNCNvNtCskcxRuJ53GpR_9rustworkx9dot_utils18attr_map_to_strings_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3M_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map4IterBW_BW_EB1G_EE0E0E0B1M_.exit.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  store i64 %.sroa.52.0, ptr %i.aq, align 8, !alias.scope !145054, !noalias !145055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !145056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !145038
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !56, !noundef !56 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !56 ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !145057)
  call void @llvm.experimental.noalias.scope.decl(metadata !145058)
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.dz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.dz = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145059)
  call void @llvm.experimental.noalias.scope.decl(metadata !145060)
  %.val.i.i.i.i.i45 = load i64, ptr %i.dy, align 8, !alias.scope !145061, !noalias !145057 ; 2 uses
  %i.ea = icmp eq i64 %.val.i.i.i.i.i45, 0
  br i1 %i.ea, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !145061, !noalias !145057, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !145062
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ec = icmp eq i64 %i.dz, %i.dv
  br i1 %i.ec, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.aa
  %.val2.i = load i64, ptr %i.k, align 8, !alias.scope !145057 ; 2 uses
  %i.ed = icmp eq i64 %.val2.i, 0
  br i1 %i.ed, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.ee = mul nuw i64 %.val2.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !145057
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit

bb.ab:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145063)
  call void @llvm.experimental.noalias.scope.decl(metadata !145064)
  %.val.i.i = load i64, ptr %i.l, align 8, !alias.scope !145065 ; 2 uses
  %i.eg = icmp eq i64 %.val.i.i, 0
  br i1 %i.eg, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i = load ptr, ptr %i.eh, align 8, !alias.scope !145065, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !145065
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
  call void @llvm.experimental.noalias.scope.decl(metadata !145066)
  call void @llvm.experimental.noalias.scope.decl(metadata !145067)
  %.val.i.i47 = load i64, ptr %i.l, align 8, !alias.scope !145068 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i47, 0
  br i1 %i.ej, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit50, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i49 = load ptr, ptr %i.ek, align 8, !alias.scope !145068, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i49, i64 noundef %.val.i.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !145068
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
  %i.s = load i64, ptr %i.q, align 8, !range !57, !noundef !56
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
  %i.w = load ptr, ptr %i.r, align 8, !nonnull !56, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !145118
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull %i.w), !inline_history !45
  %i.x = load ptr, ptr %i.j, align 8, !noalias !145118, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !145118, !nonnull !56, !noundef !56 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !145118
  br i1 %.not.i.i.i, label %.noexc34, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_7
