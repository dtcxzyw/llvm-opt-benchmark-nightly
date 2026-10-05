Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtCs68Jln09rRqb_8petgraph4algo18is_cyclic_directedRINtNtNtB4_10graph_impl12stable_graph11StableGraphjuEECskcxRuJ53GpR_9rustworkx:bb.a
  br i1 %.not.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.a ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -24 ; 4 uses
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !range !68, !noalias !12078, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 24
  %i.m = and i64 %i.l, 4294967295
  %i.n = add nuw nsw i64 %i.m, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.b, %bb.a, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.n, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.02.0.i.i.i.i.i), !noalias !12077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12077
  %.not.i.i.i13.i34 = icmp eq i64 %.val1, 0
  br i1 %.not.i.i.i13.i34, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph35

bb.c:                                             ; preds = %.lr.ph35
  %.not.i.i.i13.i = icmp eq ptr %.val, %i.p
  br i1 %.not.i.i.i13.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph35

.lr.ph35:                                         ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i, %bb.c
  %i.o = phi ptr [ %i.p, %bb.c ], [ %i.f, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -24 ; 4 uses
  %.val.i.i.i.i14.i = load i64, ptr %i.p, align 8, !range !68, !noalias !12079, !noundef !67
  %.not.i.not.i.i.i.i15.i = icmp eq i64 %.val.i.i.i.i14.i, 0
  br i1 %.not.i.not.i.i.i.i15.i, label %bb.c, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i16.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i16.i: ; preds = %.lr.ph35
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.val to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 24
  %i.u = and i64 %i.t, 4294967295
  %i.v = add nuw nsw i64 %i.u, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.c, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i16.i
  %.sroa.02.0.i.i.i.i17.i = phi i64 [ %i.v, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i16.i ], [ 0, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %bb.c ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.02.0.i.i.i.i17.i)
          to label %.preheader unwind label %bb.d, !noalias !12077

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit19.i: ; preds = %bb.f, %bb.d
  %.pn6.i = phi { ptr, i32 } [ %i.w, %bb.d ], [ %i.ab, %bb.f ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.i, !noalias !12077

bb.d:                                             ; preds = %.invoke, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit19.i

.preheader:                                       ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, %.preheader.backedge
  %i.x = phi i32 [ %i.aa, %.preheader.backedge ], [ 0, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.z, %.preheader.backedge ], [ %.val, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 3 uses
  %.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.y, %i.f ; 2 uses
  br i1 %.not.not.not.i.not.not.not.not.not, label %bb.e, label %.invoke

bb.e:                                             ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = add i32 %i.x, 1
  %.val.i.i.i = load i64, ptr %i.y, align 8, !range !68, !noalias !12080, !noundef !67
  %.not.i.not.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.i.not.i.i.i, label %.preheader.backedge, label %bb.g

.preheader.backedge:                              ; preds = %bb.e, %bb.h
  br label %.preheader

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit19.i unwind label %bb.i, !noalias !12077

bb.g:                                             ; preds = %bb.e
  %i.ac = invoke fastcc noundef zeroext i1 @_RINvNtNtCs68Jln09rRqb_8petgraph5visit8dfsvisit11dfs_visitorRINtNtNtB6_10graph_impl12stable_graph11StableGraphjuENCINvNtB6_4algo18is_cyclic_directedBV_E0INtNtCslwFuT2d6ECx_4core6result6ResultuuENtCsiCakYNGl26C_11fixedbitset11FixedBitSetB35_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, i32 noundef %i.x, ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.f, !noalias !12081

bb.h:                                             ; preds = %bb.g
  br i1 %i.ac, label %.invoke, label %.preheader.backedge

.invoke:                                          ; preds = %bb.h, %.preheader
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtNtCs68Jln09rRqb_8petgraph5visit8dfsvisit18depth_first_searchRINtNtNtB6_10graph_impl12stable_graph11StableGraphjuEINtB16_11NodeIndicesjENCINvNtB6_4algo18is_cyclic_directedB12_E0INtNtCslwFuT2d6ECx_4core6result6ResultuuEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.d, !noalias !12077

bb.i:                                             ; preds = %bb.f, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit19.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !12077
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit19.i
  resume { ptr, i32 } %.pn6.i

_RINvNtNtCs68Jln09rRqb_8petgraph5visit8dfsvisit18depth_first_searchRINtNtNtB6_10graph_impl12stable_graph11StableGraphjuEINtB16_11NodeIndicesjENCINvNtB6_4algo18is_cyclic_directedB12_E0INtNtCslwFuT2d6ECx_4core6result6ResultuuEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12077
  call void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !12077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12077
  ret i1 %.not.not.not.i.not.not.not.not.not
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs68Jln09rRqb_8petgraph4algo8with_dfsRINtNtNtB4_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEB1t_ENCINvB2_8toposortBF_E0INtNtCslwFuT2d6ECx_4core6result6ResultINtNtCs87CvPiUlf0m_5alloc3vec3VecNtBL_9NodeIndexEINtB2_5CycleB44_EEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12179)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.sink249.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink249.i.sroa.gep1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink249.i.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink249.i.sroa.gep4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink249.i.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink249.i.sroa.gep7 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.not.i.i.i.i159 = icmp eq i64 %.16.val, 0
  br i1 %.not.i.i.i.i159, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.16.val, 4
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %.8.val, %i.m
  br i1 %.not.i.i.i.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.k, %.lr.ph ], [ %i.m, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16 ; 4 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !12180, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i: ; preds = %bb.c
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %.8.val to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 4
  %i.r = and i64 %i.q, 4294967295
  %i.s = add nuw nsw i64 %i.r, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.b, %bb.a, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.s, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %.sroa.02.0.i.i.i.i.i)
  store i64 0, ptr %i.i, align 8, !alias.scope !12179, !noalias !12181
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !12179, !noalias !12181
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !12179, !noalias !12181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12183)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12184)
  %i.v = getelementptr i8, ptr %.0.val, i64 8     ; 7 uses
  %.val.i.i7 = load ptr, ptr %i.v, align 8, !noalias !12185 ; 4 uses
  %i.w = getelementptr i8, ptr %.0.val, i64 16    ; 7 uses
  %.val1.i.i8 = load i64, ptr %i.w, align 8, !noalias !12185 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12186)
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 11 uses
  %.val1.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !12187, !noalias !12182, !noundef !67 ; 3 uses
  %i.y = and i64 %.val1.i.i.i, 127
  %.not.i.i.i.i9 = icmp eq i64 %i.y, 0
  %i.z = lshr i64 %.val1.i.i.i, 3
  %.idx.i.i.i.i = and i64 %i.z, 2305843009213693936
  %.idx2.i.i.i.i = select i1 %.not.i.i.i.i9, i64 0, i64 16
  %i.aa = add nuw nsw i64 %.idx2.i.i.i.i, %.idx.i.i.i.i ; 2 uses
  %i.ab = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.body.thread12:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit66.i, %bb.f, %.loopexit133.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.lr.ph.preheader.i.i.i.i:                         ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !12187, !noalias !12182, !nonnull !67, !noundef !67
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.aa, i1 false), !noalias !12188
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i7) ]
  %.not.i4.i.i.i160 = icmp eq i64 %.val1.i.i8, 0
  br i1 %.not.i4.i.i.i160, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph161

.lr.ph161:                                        ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i
  %.idx173 = shl nuw nsw i64 %.val1.i.i8, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i7, i64 %.idx173
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %.not.i4.i.i.i = icmp eq ptr %.val.i.i7, %i.ae
  br i1 %.not.i4.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph161, %bb.d
  %i.ad = phi ptr [ %i.ac, %.lr.ph161 ], [ %i.ae, %bb.d ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16 ; 4 uses
  %.val.i.i.i.i.i10 = load ptr, ptr %i.ae, align 8, !noalias !12189, !noundef !67
  %.not.i.not.i.i.i.i.i11 = icmp eq ptr %.val.i.i.i.i.i10, null
  br i1 %.not.i.not.i.i.i.i.i11, label %bb.d, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.e
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %.val.i.i7 to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  %i.ai = lshr exact i64 %i.ah, 4
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.aj, %.val1.i.i.i
  br i1 %.not.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.f, !prof !120

bb.f:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.ak = add nuw nsw i64 %i.aj, 1
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i unwind label %.body.thread12

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.d, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i, %bb.f, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 18 uses
  store i64 0, ptr %i.al, align 8, !alias.scope !12183, !noalias !12182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12190
  %.val.i36.i = load ptr, ptr %i.v, align 8, !noalias !12191, !nonnull !67, !noundef !67 ; 3 uses
  %.val1.i37.i = load i64, ptr %i.w, align 8, !noalias !12191, !noundef !67 ; 2 uses
  %.not.i.i.i38.i162 = icmp eq i64 %.val1.i37.i, 0
  br i1 %.not.i.i.i38.i162, label %.loopexit133.i, label %.lr.ph163

.lr.ph163:                                        ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i
  %.idx174 = shl nuw nsw i64 %.val1.i37.i, 4
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i36.i, i64 %.idx174
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %.not.i.i.i38.i = icmp eq ptr %.val.i36.i, %i.ao
  br i1 %.not.i.i.i38.i, label %.loopexit133.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph163, %bb.g
  %i.an = phi ptr [ %i.am, %.lr.ph163 ], [ %i.ao, %bb.g ]
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 4 uses
  %.val.i.i.i.i39.i = load ptr, ptr %i.ao, align 8, !noalias !12192, !noundef !67
  %.not.i.not.i.i.i.i40.i = icmp eq ptr %.val.i.i.i.i39.i, null
  br i1 %.not.i.not.i.i.i.i40.i, label %bb.g, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i12

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i12: ; preds = %bb.h
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.val.i36.i to i64
  %i.ar = sub nuw i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 4
  %i.at = and i64 %i.as, 4294967295
  %i.au = add nuw nsw i64 %i.at, 1
  br label %.loopexit133.i

.loopexit.split-lp.i:                             ; preds = %bb.an, %.loopexit.split-lp127.loopexit.split-lp.i, %.loopexit.split-lp127.loopexit.i, %.loopexit126.i, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.jc, %bb.an ], [ %lpad.loopexit.split-lp121.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp131.i, %.loopexit.split-lp127.loopexit.split-lp.i ], [ %lpad.loopexit120.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit128.i, %.loopexit126.i ], [ %lpad.loopexit130.i, %.loopexit.split-lp127.loopexit.i ], [ %lpad.loopexit184.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i ]
  %.val23.i = load i64, ptr %i.g, align 8, !noalias !12190 ; 2 uses
  %i.av = icmp eq i64 %.val23.i, 0
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.i
  %.val24.i = load ptr, ptr %i.ax, align 8, !noalias !12190, !nonnull !67, !noundef !67
  %i.aw = shl nuw i64 %.val23.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !12182
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

.loopexit.loopexit.i:                             ; preds = %bb.t
  %lpad.loopexit184.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.o
  %lpad.loopexit120.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit183.i, %bb.n
  %lpad.loopexit.split-lp121.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit133.i:                                   ; preds = %bb.g, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i12
  %.sroa.02.0.i.i.i.i.i13 = phi i64 [ %i.au, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i12 ], [ 0, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %bb.g ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.02.0.i.i.i.i.i13)
          to label %.noexc14 unwind label %.body.thread12

.noexc14:                                         ; preds = %.loopexit133.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12190
  store i64 0, ptr %i.g, align 8, !noalias !12190
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ax, align 8, !noalias !12190
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i64 0, ptr %i.ay, align 8, !noalias !12190
  %.val34.i = load ptr, ptr %i.v, align 8, !noalias !12182, !nonnull !67, !noundef !67 ; 2 uses
  %.val35.i = load i64, ptr %i.w, align 8, !noalias !12182, !noundef !67
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.val34.i, i64 %.val35.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 3 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.noexc14
  %i.be = phi i64 [ 0, %.noexc14 ], [ %i.bi, %.backedge.i.backedge ] ; 4 uses
  %i.bf = phi ptr [ %.val34.i, %.noexc14 ], [ %i.bh, %.backedge.i.backedge ] ; 3 uses
  %i.bg = icmp eq ptr %i.bf, %i.az
  br i1 %i.bg, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.backedge.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = add i64 %i.be, 1
  %.val.i.i41.i = load ptr, ptr %i.bf, align 8, !noalias !12193, !noundef !67
  %.not.i.not.i.i.i = icmp eq ptr %.val.i.i41.i, null
  br i1 %.not.i.not.i.i.i, label %.backedge.i.backedge, label %bb.j

.backedge.i.backedge:                             ; preds = %.loopexit123.i, %bb.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit68.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i
  br label %.backedge.i

.loopexit126.i:                                   ; preds = %bb.am
  %lpad.loopexit128.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp127.loopexit.i:                 ; preds = %bb.ab
  %lpad.loopexit130.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp127.loopexit.split-lp.i:        ; preds = %.invoke.i
  %lpad.loopexit.split-lp131.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.j:                                             ; preds = %bb.i
  %i.bj = trunc i64 %i.be to i32                  ; 2 uses
  %.val31.i = load i64, ptr %i.x, align 8, !alias.scope !12183, !noalias !12182, !noundef !67
  %i.bk = and i64 %i.be, 4294967295               ; 2 uses
  %i.bl = icmp ugt i64 %.val31.i, %i.bk
  br i1 %i.bl, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i

bb.k:                                             ; preds = %.backedge.i
  %i.bm = load ptr, ptr %i.ax, align 8, !noalias !12190, !nonnull !67, !noundef !67 ; 3 uses
  %i.bn = load i64, ptr %i.ay, align 8, !noalias !12190, !noundef !67 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12194)
  call void @llvm.experimental.noalias.scope.decl(metadata !12195)
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i: ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = xor i64 %index, -1
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index ; 3 uses
  %i.bs = getelementptr [4 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !alias.scope !12194, !noalias !12196
  %wide.load167 = load <4 x i32>, ptr %i.bt, align 4, !alias.scope !12194, !noalias !12196
  %i.bu = getelementptr i8, ptr %i.bs, i64 -12    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 -28    ; 2 uses
  %wide.load168 = load <4 x i32>, ptr %i.bu, align 4, !alias.scope !12195, !noalias !12197
  %wide.load169 = load <4 x i32>, ptr %i.bv, align 4, !alias.scope !12195, !noalias !12197
  %reverse = shufflevector <4 x i32> %wide.load168, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse170 = shufflevector <4 x i32> %wide.load169, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.br, align 4, !alias.scope !12194, !noalias !12196
  store <4 x i32> %reverse170, ptr %i.bt, align 4, !alias.scope !12194, !noalias !12196
  %reverse171 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse172 = shufflevector <4 x i32> %wide.load167, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse171, ptr %i.bu, align 4, !alias.scope !12195, !noalias !12197
  store <4 x i32> %reverse172, ptr %i.bv, align 4, !alias.scope !12195, !noalias !12197
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !12113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cc, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.preheader ] ; 3 uses
  %i.bx = xor i64 %.sroa.0.016.i.i, -1
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bp, i64 %i.bx ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !alias.scope !12194, !noalias !12196, !noundef !67
  %i.cb = load i32, ptr %i.bz, align 4, !alias.scope !12195, !noalias !12197
  store i32 %i.cb, ptr %i.by, align 4, !alias.scope !12194, !noalias !12196
  store i32 %i.ca, ptr %i.bz, align 4, !alias.scope !12195, !noalias !12197
  %i.cc = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cc, %i.bo
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, !llvm.loop !12114

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %middle.block, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !12198)
  %.val.i43.i = load ptr, ptr %i.v, align 8, !noalias !12199 ; 4 uses
  %.val1.i44.i = load i64, ptr %i.w, align 8, !noalias !12199 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12200)
  %.val1.i.i45.i = load i64, ptr %i.x, align 8, !alias.scope !12201, !noalias !12182, !noundef !67 ; 3 uses
  %i.cd = and i64 %.val1.i.i45.i, 127
  %.not.i.i.i46.i = icmp eq i64 %i.cd, 0
  %i.ce = lshr i64 %.val1.i.i45.i, 3
  %.idx.i.i.i47.i = and i64 %i.ce, 2305843009213693936
  %.idx2.i.i.i48.i = select i1 %.not.i.i.i46.i, i64 0, i64 16
  %i.cf = add nuw nsw i64 %.idx2.i.i.i48.i, %.idx.i.i.i47.i ; 2 uses
  %i.cg = icmp samesign eq i64 %i.cf, 0
  br i1 %i.cg, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i51.i, label %.lr.ph.preheader.i.i.i49.i

.lr.ph.preheader.i.i.i49.i:                       ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i
  %.val.i.i50.i = load ptr, ptr %i.u, align 8, !alias.scope !12201, !noalias !12182, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i50.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.cf, i1 false), !noalias !12202
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i51.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i51.i: ; preds = %.lr.ph.preheader.i.i.i49.i, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i43.i) ]
  %.not.i4.i.i52.i164 = icmp eq i64 %.val1.i44.i, 0
  br i1 %.not.i4.i.i52.i164, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit57.i, label %.lr.ph165

.lr.ph165:                                        ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i51.i
  %.idx175 = shl nuw nsw i64 %.val1.i44.i, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i43.i, i64 %.idx175
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %.not.i4.i.i52.i = icmp eq ptr %.val.i43.i, %i.cj
  br i1 %.not.i4.i.i52.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit57.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph165, %bb.l
  %i.ci = phi ptr [ %i.ch, %.lr.ph165 ], [ %i.cj, %bb.l ]
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 4 uses
  %.val.i.i.i.i53.i = load ptr, ptr %i.cj, align 8, !noalias !12203, !noundef !67
  %.not.i.not.i.i.i.i54.i = icmp eq ptr %.val.i.i.i.i53.i, null
  br i1 %.not.i.not.i.i.i.i54.i, label %bb.l, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i55.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i55.i: ; preds = %bb.m
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.val.i43.i to i64
  %i.cm = sub nuw i64 %i.ck, %i.cl
  %i.cn = lshr exact i64 %i.cm, 4
  %i.co = and i64 %i.cn, 4294967295               ; 2 uses
  %.not.i.i56.i = icmp ult i64 %i.co, %.val1.i.i45.i
  br i1 %.not.i.i56.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit57.i, label %bb.n, !prof !120

bb.n:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i55.i
  %i.cp = add nuw nsw i64 %i.co, 1
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit57.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !12182

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit57.i: ; preds = %bb.l, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i51.i, %bb.n, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i55.i
  store i64 0, ptr %i.al, align 8, !alias.scope !12183, !noalias !12182
  %i.cq = load ptr, ptr %i.ax, align 8, !noalias !12190, !nonnull !67, !noundef !67 ; 2 uses
  %i.cr = load i64, ptr %i.ay, align 8, !noalias !12190, !noundef !67 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.cr, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %._crit_edge.i, label %.lr.ph161.i

.loopexit119.i.loopexit:                          ; preds = %bb.v
  store i64 %i.ez, ptr %i.al, align 8, !alias.scope !12204, !noalias !12205
  br label %.loopexit119.i

.loopexit119.i:                                   ; preds = %.loopexit119.i.loopexit, %bb.u, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.cu = icmp eq ptr %i.cv, %i.cs
  br i1 %i.cu, label %._crit_edge.i, label %.lr.ph161.i

.lr.ph161.i:                                      ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit57.i, %.loopexit119.i
  %.sroa.013.0160.i = phi ptr [ %i.cv, %.loopexit119.i ], [ %i.cq, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit57.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.013.0160.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %.sroa.013.0160.i, align 4, !noalias !12182, !noundef !67
  store i64 0, ptr %i.al, align 8, !alias.scope !12183, !noalias !12182
  %i.cx = load i64, ptr %i.j, align 8, !range !70, !alias.scope !12206, !noalias !12182, !noundef !67
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i

bb.o:                                             ; preds = %.lr.ph161.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !12182

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.o, %.lr.ph161.i
  %i.cz = load ptr, ptr %i.ba, align 8, !alias.scope !12206, !noalias !12182, !nonnull !67, !noundef !67
  store i32 %i.cw, ptr %i.cz, align 4, !noalias !12182
  call void @llvm.experimental.noalias.scope.decl(metadata !12207)
  call void @llvm.experimental.noalias.scope.decl(metadata !12208)
  %i.da = load i64, ptr %i.x, align 8, !alias.scope !12209, !noalias !12210
  %i.db = load ptr, ptr %i.u, align 8, !alias.scope !12209, !noalias !12210, !nonnull !67
  %i.dc = load ptr, ptr %i.ba, align 8, !alias.scope !12183, !noalias !12182, !nonnull !67
  store i64 0, ptr %i.al, align 8, !alias.scope !12209, !noalias !12210
  %i.dd = load i32, ptr %i.dc, align 4, !noalias !12211, !noundef !67
  %i.de = zext i32 %i.dd to i64                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12212
  store i64 %i.de, ptr %i.f, align 8, !noalias !12213
  %i.df = icmp ugt i64 %i.da, %i.de
  br i1 %i.df, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.loopexit183.i, !prof !77

.loopexit183.i.loopexit:                          ; preds = %.lr.ph166
  store i64 %i.ez, ptr %i.al, align 8, !alias.scope !12204, !noalias !12205
  br label %.loopexit183.i

.loopexit183.i:                                   ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i, %.loopexit183.i.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12213
  store ptr %i.f, ptr %i.e, align 8, !noalias !12213
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !12213
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.x, ptr %i.dg, align 8, !noalias !12213
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !12213
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !12182

.noexc63.i:                                       ; preds = %.loopexit183.i
  unreachable

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i
  %i.dh = lshr i64 %i.de, 6
  %i.di = and i64 %i.de, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dh ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !12214, !noundef !67 ; 2 uses
  %i.dl = shl nuw i64 1, %i.di                    ; 2 uses
  %i.dm = and i64 %i.dk, %i.dl
  %.not.i.i59.i = icmp eq i64 %i.dm, 0
  %i.dn = or i64 %i.dk, %i.dl
  store i64 %i.dn, ptr %i.dj, align 8, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12212
  br i1 %.not.i.i59.i, label %bb.p, label %.loopexit119.i

bb.p:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.pre = load ptr, ptr %i.bc, align 8, !alias.scope !12215, !noalias !12216 ; 2 uses
  %.pre76 = load i64, ptr %i.bd, align 8, !alias.scope !12215, !noalias !12216 ; 2 uses
  %.val6.i.i.i.i.i.i.pre = load i64, ptr %i.w, align 8, !alias.scope !12215, !noalias !12216
  call void @llvm.experimental.noalias.scope.decl(metadata !12217)
  call void @llvm.experimental.noalias.scope.decl(metadata !12218)
  call void @llvm.experimental.noalias.scope.decl(metadata !12219)
  call void @llvm.experimental.noalias.scope.decl(metadata !12220)
  %i.do = icmp ugt i64 %.val6.i.i.i.i.i.i.pre, %i.de
  br i1 %i.do, label %bb.q, label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !12215, !noalias !12216, !nonnull !67, !noundef !67
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.de ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !12221, !noundef !67
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.q
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !12221
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader

_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.q, %bb.p
  %.sroa.9.0.i.i.ph = phi i32 [ -1, %bb.q ], [ %.sroa.5.0.copyload.i.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ -1, %bb.p ]
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.outer

_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.outer: ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.ph177 = phi i64 [ 0, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ], [ %i.er, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 3 uses
  %.sroa.611.0.i.i.ph = phi i32 [ -1, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ], [ %.sroa.611.1.ph.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.9.0.i.i.ph178 = phi i32 [ %.sroa.9.0.i.i.ph, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ], [ %.sroa.9.2.ph.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.val6.i.i = load i64, ptr %i.x, align 8
  %.val.i62.i = load ptr, ptr %i.u, align 8, !nonnull !67
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.outer, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.611.0.i.i = phi i32 [ %.sroa.611.1.ph.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sroa.611.0.i.i.ph, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.outer ] ; 2 uses
  %.sroa.9.0.i.i = phi i32 [ %.sroa.9.2.ph.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sroa.9.0.i.i.ph178, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.outer ] ; 2 uses
  %i.dr = zext i32 %.sroa.611.0.i.i to i64        ; 2 uses
  %i.ds = icmp ugt i64 %.pre76, %i.dr
  br i1 %i.ds, label %bb.r, label %.preheader.i.i.i

bb.r:                                             ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dr ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 8, !noalias !12222, !noundef !67
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dx = load i32, ptr %i.dw, align 4, !noalias !12222, !noundef !67
  br label %.loopexit21.i.i

.preheader.i.i.i:                                 ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.s
  %.sroa.9.1.i.i = phi i32 [ %i.ec, %bb.s ], [ %.sroa.9.0.i.i, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.dy = zext i32 %.sroa.9.1.i.i to i64          ; 2 uses
  %i.dz = icmp ugt i64 %.pre76, %i.dy
  br i1 %i.dz, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.preheader.i.i.i
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dy ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !noalias !12222, !noundef !67 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.val.i.i61.i = load i32, ptr %i.ed, align 4, !noalias !12222, !noundef !67 ; 2 uses
  %i.ee = icmp eq i32 %.val.i.i61.i, -1
  br i1 %i.ee, label %.preheader.i.i.i, label %.loopexit21.i.i

.loopexit21.i.i:                                  ; preds = %bb.s, %bb.r
  %.sroa.611.1.ph.i.i = phi i32 [ %i.dv, %bb.r ], [ %.sroa.611.0.i.i, %bb.s ] ; 2 uses
  %.sroa.9.2.ph.i.i = phi i32 [ %.sroa.9.0.i.i, %bb.r ], [ %i.ec, %bb.s ] ; 2 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.dx, %bb.r ], [ %.val.i.i61.i, %bb.s ] ; 2 uses
  %i.ef = zext i32 %.sroa.4.0.i.ph.i.i to i64     ; 3 uses
  %i.eg = icmp ugt i64 %.val6.i.i, %i.ef
  br i1 %i.eg, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit21.i.i
  %i.eh = lshr i64 %i.ef, 6
  %i.ei = and i64 %i.ef, 63
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val.i62.i, i64 %i.eh
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !12210, !noundef !67
  %i.el = lshr i64 %i.ek, %i.ei
  %i.em = trunc i64 %i.el to i1
  br i1 %i.em, label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtNtB9_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1T_5types3any5PyAnyEB1O_EENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i, %.loopexit21.i.i
  %i.en = load i64, ptr %i.j, align 8, !range !70, !alias.scope !12223, !noalias !12210, !noundef !67
  %i.eo = icmp eq i64 %.ph177, %i.en
end_hunk_0
begin_hunk_1_@_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity10find_cycle10find_cycleRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2p_5types3any5PyAnyEB2k_EECskcxRuJ53GpR_9rustworkx:bb.a
  %.sroa.4.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.t) #61
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.d, %bb.b
  %.sroa.10195.0 = phi i64 [ %i.y, %bb.d ], [ 4, %bb.b ]
  %.sroa.4.0 = phi i64 [ %.val.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.z = inttoptr i64 %.sroa.10195.0 to ptr
  %i.aa = icmp samesign ule i64 %.val.i, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.aa)
  store i64 %.sroa.4.0, ptr %i.r, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 6 uses
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store i64 0, ptr %i.ac, align 8
  %i.ad = trunc nuw i32 %2 to i1
  br i1 %i.ad, label %.loopexit245, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !30030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30032
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !30033, !nonnull !67, !noundef !67 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !30033, !noundef !67 ; 7 uses
  %.idx = shl nuw nsw i64 %.val1.i.i.i.i.i.i, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.idx ; 5 uses
  %.not.i.i.i.i.i.i.i.i535 = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i535, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph537

bb.g:                                             ; preds = %.lr.ph537
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph537

.lr.ph537:                                        ; preds = %bb.f, %bb.g
  %i.ah = phi ptr [ %i.ai, %bb.g ], [ %i.ag, %bb.f ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !30034, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph537
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 4
  %i.an = and i64 %i.am, 4294967295
  %i.ao = add nuw nsw i64 %i.an, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i.i.i.i ], [ 0, %bb.f ], [ 0, %bb.g ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.02.0.i.i.i.i.i.i.i.i.i)
          to label %.noexc unwind label %bb.be

.noexc:                                           ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30032
  %.not.i.i.i.i.i9.i.i.i538 = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i9.i.i.i538, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i13.i.i.i, label %.lr.ph539

bb.h:                                             ; preds = %.lr.ph539
  %.not.i.i.i.i.i9.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, %i.aq
  br i1 %.not.i.i.i.i.i9.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i13.i.i.i, label %.lr.ph539

.lr.ph539:                                        ; preds = %.noexc, %bb.h
  %i.ap = phi ptr [ %i.aq, %bb.h ], [ %i.ag, %.noexc ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -16 ; 4 uses
  %.val.i.i.i.i.i.i10.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !30035, !noundef !67
  %.not.i.not.i.i.i.i.i.i11.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i10.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i11.i.i.i, label %bb.h, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i12.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i12.i.i.i: ; preds = %.lr.ph539
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 4
  %i.av = and i64 %i.au, 4294967295
  %i.aw = add nuw nsw i64 %i.av, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i13.i.i.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i13.i.i.i: ; preds = %bb.h, %.noexc, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i12.i.i.i
  %.sroa.02.0.i.i.i.i.i.i14.i.i.i = phi i64 [ %i.aw, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i12.i.i.i ], [ 0, %.noexc ], [ 0, %bb.h ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.sroa.02.0.i.i.i.i.i.i14.i.i.i)
          to label %bb.l unwind label %bb.i, !noalias !30032

bb.i:                                             ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i13.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.j, !noalias !30032

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !30032
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit101.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i100.i.i, %.thread133.i.i
  br i1 %i.bm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit106.i.i, label %bb.aw

bb.k:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  br i1 %.sroa.016.2.i.i, label %.thread133.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit106.i.i

.thread139.i.i:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i62.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit106.i.i

bb.l:                                             ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1u_5types3any5PyAnyEB1p_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i13.i.i.i
  store i64 0, ptr %i.m, align 8, !alias.scope !30031, !noalias !30036
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !30031, !noalias !30036
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !30031, !noalias !30036
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !30036
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !30036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !30030
  store i64 0, ptr %i.l, align 8, !noalias !30030
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.bc, align 8, !noalias !30030
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !noalias !30030
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load ptr, ptr %i.bg, align 8, !nonnull !67 ; 4 uses
  %i.bj = load i64, ptr %i.bh, align 8            ; 5 uses
  br label %.backedge184.i.i

.backedge184.i.i:                                 ; preds = %.backedge184.i.i.backedge, %bb.l
  %i.bk = phi i64 [ 0, %bb.l ], [ %i.bo, %.backedge184.i.i.backedge ] ; 4 uses
  %i.bl = phi ptr [ %.val.i.i.i.i.i.i, %bb.l ], [ %i.bn, %.backedge184.i.i.backedge ] ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.ag                ; 2 uses
  br i1 %i.bm, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.backedge184.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bo = add i64 %i.bk, 1
  %.val.i.i50.i.i = load ptr, ptr %i.bl, align 8, !noalias !30037, !noundef !67
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i50.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %.backedge184.i.i.backedge, label %bb.n

.backedge184.i.i.backedge:                        ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit99.i.i, %.loopexit.i.i.i, %bb.m, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i
  br label %.backedge184.i.i

.thread133.loopexit.i.i:                          ; preds = %bb.at
  %lpad.loopexit175.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread133.i.i

.thread133.loopexit.split-lp.loopexit.i.i:        ; preds = %bb.av
  %lpad.loopexit179.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread133.i.i

.thread133.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ai
  %lpad.loopexit182.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread133.i.i

.thread133.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread133.i.i

bb.n:                                             ; preds = %bb.m
  %i.bp = trunc i64 %i.bk to i32
  %.val39.i.i = load i64, ptr %i.be, align 8, !noalias !30030, !noundef !67
  %i.bq = and i64 %i.bk, 4294967295               ; 2 uses
  %i.br = icmp ugt i64 %.val39.i.i, %i.bq
  br i1 %i.br, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

bb.o:                                             ; preds = %.backedge184.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !30030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !30030
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !30030
  call void @llvm.experimental.noalias.scope.decl(metadata !30038)
  call void @llvm.experimental.noalias.scope.decl(metadata !30039)
  call void @llvm.experimental.noalias.scope.decl(metadata !30040)
  call void @llvm.experimental.noalias.scope.decl(metadata !30041)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 6 uses
  %.val1.i.i.i.i54.i.i = load i64, ptr %i.bt, align 8, !alias.scope !30042, !noalias !30030, !noundef !67 ; 3 uses
  %i.bu = and i64 %.val1.i.i.i.i54.i.i, 127
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  %i.bv = lshr i64 %.val1.i.i.i.i54.i.i, 3
  %.idx.i.i.i.i.i.i.i = and i64 %i.bv, 2305843009213693936
  %.idx2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.bw = add nuw nsw i64 %.idx2.i.i.i.i.i.i.i, %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.bx = icmp samesign eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.o
  %.val.i.i.i.i55.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !30042, !noalias !30030, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i.i.i55.i.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.bw, i1 false), !noalias !30043
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.o
  %.not.i4.i.i.i.i.i.i540 = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i4.i.i.i.i.i.i540, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEB1q_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph541

bb.p:                                             ; preds = %.lr.ph541
  %.not.i4.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, %i.bz
  br i1 %.not.i4.i.i.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEB1q_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph541

.lr.ph541:                                        ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i, %bb.p
  %i.by = phi ptr [ %i.bz, %bb.p ], [ %i.ag, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16 ; 4 uses
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !noalias !30044, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.p, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.lr.ph541
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.cc = sub nuw i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 4
  %i.ce = and i64 %i.cd, 4294967295               ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.ce, %.val1.i.i.i.i54.i.i
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEB1q_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.q, !prof !120

bb.q:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.cf = add nuw nsw i64 %i.ce, 1
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEB1q_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.r, !noalias !30030

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.r
  %.sroa.016.2.i.i = phi i1 [ true, %bb.r ], [ false, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ false, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i ]
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cj, %bb.r ], [ %.pn.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30045)
  %.val.i47.i = load i64, ptr %i.k, align 8, !alias.scope !30045, !noalias !30030 ; 2 uses
  %i.cg = icmp eq i64 %.val.i47.i, 0
  br i1 %i.cg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i49.i = load ptr, ptr %i.ch, align 8, !alias.scope !30045, !noalias !30030, !nonnull !67, !noundef !67
  %i.ci = shl nuw i64 %.val.i47.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i49.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !30046
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i48.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.k unwind label %bb.ah, !noalias !30047

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEB1q_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.p, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i, %bb.q, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 8 uses
  store i64 0, ptr %i.ck, align 8, !noalias !30030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !30030
  store i64 0, ptr %i.j, align 8, !noalias !30030
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cl, align 8, !noalias !30030
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %i.cm, align 8, !noalias !30030
  %i.cn = load ptr, ptr %i.bc, align 8, !noalias !30030, !nonnull !67, !noundef !67 ; 4 uses
  %i.co = load i64, ptr %i.l, align 8, !range !70, !noalias !30030, !noundef !67 ; 4 uses
  %i.cp = load i64, ptr %i.bd, align 8, !noalias !30030, !noundef !67 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 2305843009213693952
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %._crit_edge230.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEB1q_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.cp, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  br label %bb.t

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.loopexit.split-lp.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i75.i.i, %bb.af, %bb.s
  %.pn.i.i = phi { ptr, i32 } [ %i.gp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i75.i.i ], [ %i.cy, %bb.s ], [ %i.gp, %bb.af ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ] ; 2 uses
  %i.cw = icmp eq i64 %i.co, 0
  br i1 %i.cw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.body.i.i
  %i.cx = shl nuw i64 %i.co, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cn, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !30048
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.s:                                             ; preds = %bb.u
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.t:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %i.cz = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.i.i ], [ %i.gv, %.backedge.i.i ] ; 2 uses
  %i.da = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gw, %.backedge.i.i ] ; 4 uses
  %.sroa.10.0229.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.db, %.backedge.i.i ]
  %i.db = getelementptr inbounds i8, ptr %.sroa.10.0229.i.i, i64 -4 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !noalias !30049, !noundef !67 ; 2 uses
  %.val36.i.i = load i64, ptr %i.bt, align 8, !noalias !30030, !noundef !67
  %i.dd = zext i32 %i.dc to i64                   ; 3 uses
  %i.de = icmp ugt i64 %.val36.i.i, %i.dd
  br i1 %i.de, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit58.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit58.thread.i.i

._crit_edge230.i.i:                               ; preds = %.backedge.i.i, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEB1q_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.5.0.copyload.i = phi i64 [ 0, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRRRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEB1q_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.gw, %.backedge.i.i ] ; 3 uses
  %i.df = icmp eq i64 %i.co, 0
  br i1 %i.df, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit60.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i59.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i59.i.i: ; preds = %._crit_edge230.i.i
  %i.dg = shl nuw i64 %i.co, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cn, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !30050
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit60.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %.body.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !30051)
  %.val.i39.i = load ptr, ptr %i.cl, align 8, !alias.scope !30051, !noalias !30030, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i40.i = load i64, ptr %i.cm, align 8, !alias.scope !30051, !noalias !30030, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30052), !noalias !30053
  %i.dh = icmp eq i64 %.val1.i40.i, 0
  br i1 %i.dh, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i41.i

.lr.ph.i.i.i41.i:                                 ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i46.i
  %.sroa.0.012.i.i.i42.i = phi i64 [ %i.dj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i46.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %.val.i39.i, i64 %.sroa.0.012.i.i.i42.i ; 2 uses
  %i.dj = add nuw nsw i64 %.sroa.0.012.i.i.i42.i, 1 ; 2 uses
  %.val8.i.i.i43.i = load i64, ptr %i.di, align 8, !alias.scope !30052, !noalias !30054 ; 2 uses
  %i.dk = icmp eq i64 %.val8.i.i.i43.i, 0
  br i1 %i.dk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i46.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i44.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i44.i: ; preds = %.lr.ph.i.i.i41.i
  %i.dl = getelementptr i8, ptr %i.di, i64 8
  %.val9.i.i.i45.i = load ptr, ptr %i.dl, align 8, !alias.scope !30052, !noalias !30054, !nonnull !67, !noundef !67
  %i.dm = shl nuw i64 %.val8.i.i.i43.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i45.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !30055
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i46.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i46.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i44.i, %.lr.ph.i.i.i41.i
  %i.dn = icmp eq i64 %i.dj, %.val1.i40.i
  br i1 %i.dn, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i41.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i46.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i = load i64, ptr %i.j, align 8, !alias.scope !30051, !noalias !30030 ; 2 uses
  %i.do = icmp eq i64 %.val2.i.i, 0
  br i1 %i.do, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.dp = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i39.i, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !30054
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit60.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i59.i.i, %._crit_edge230.i.i
  %.sroa.050.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !30056 ; 4 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %i.cl, align 8, !noalias !30056 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30030
  call void @llvm.experimental.noalias.scope.decl(metadata !30057)
  %.val.i61.i.i = load i64, ptr %i.k, align 8, !alias.scope !30057, !noalias !30030 ; 2 uses
  %i.dq = icmp eq i64 %.val.i61.i.i, 0
  br i1 %i.dq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i62.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit60.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !30057, !noalias !30030, !nonnull !67, !noundef !67
  %i.ds = shl nuw i64 %.val.i61.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !30058
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i62.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i62.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit60.i.i
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtNtNtCs68Jln09rRqb_8petgraph4algo3scc12kosaraju_scc12kosaraju_sccRRRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB21_5types3any5PyAnyEB1W_EECskcxRuJ53GpR_9rustworkx.exit.i unwind label %.thread139.i.i, !noalias !30030

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit58.i.i: ; preds = %bb.t
  %.val35.i.i = load ptr, ptr %i.bs, align 8, !noalias !30030, !nonnull !67, !noundef !67
  %i.dt = lshr i64 %i.dd, 6
  %i.du = and i64 %i.dd, 63
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.val35.i.i, i64 %i.dt
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !30030, !noundef !67
  %i.dx = lshr i64 %i.dw, %i.du
  %i.dy = trunc i64 %i.dx to i1
  br i1 %i.dy, label %.backedge.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit58.thread.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit58.thread.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit58.i.i, %bb.t
  store i64 0, ptr %i.ck, align 8, !noalias !30030
  %i.dz = load i64, ptr %i.k, align 8, !range !70, !alias.scope !30059, !noalias !30030, !noundef !67
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit58.thread.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #62
          to label %bb.v unwind label %bb.s, !noalias !30030

bb.v:                                             ; preds = %bb.u, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit58.thread.i.i
  %i.eb = load ptr, ptr %i.ct, align 8, !alias.scope !30059, !noalias !30030, !nonnull !67, !noundef !67
  store i32 %i.dc, ptr %i.eb, align 4, !noalias !30030
  store i64 1, ptr %i.ck, align 8, !alias.scope !30059, !noalias !30030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30030
  store i64 0, ptr %i.i, align 8, !noalias !30030
  store ptr inttoptr (i64 4 to ptr), ptr %i.cu, align 8, !noalias !30030
end_hunk_1
begin_hunk_2_@_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford40recover_negative_cycle_from_predecessorsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2W_5types3any5PyAnyEB2R_EECskcxRuJ53GpR_9rustworkx:bb.a
  %i.au = phi ptr [ %i.ad, %.invoke ], [ %i.ad, %bb.cc ], [ %i.bb, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.bb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i ]
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %.body63

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bw
  %.sroa.0125.0221 = phi ptr [ %i.av, %bb.bw ], [ %i.ap, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0220 = phi i64 [ %i.aw, %bb.bw ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0125.0221, i64 8 ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.8.0220, 1
  %i.ax = load i32, ptr %.sroa.0125.0221, align 4, !range !76, !noundef !67
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0125.0221, i64 4 ; 3 uses
  %i.az = trunc nuw i32 %i.ax to i1
  br i1 %i.az, label %bb.bx, label %bb.bw

._crit_edge:                                      ; preds = %bb.bw, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford40recover_negative_cycle_from_predecessorsRINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5N_5types3any5PyAnyEB5I_EE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread
  %i.ba = phi ptr [ %i.ac, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford40recover_negative_cycle_from_predecessorsRINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5N_5types3any5PyAnyEB5I_EE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread ], [ %i.ap, %bb.bw ] ; 3 uses
  %.sroa.49.0.i.i335348 = phi i64 [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford40recover_negative_cycle_from_predecessorsRINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5N_5types3any5PyAnyEB5I_EE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread ], [ %i.t, %bb.bw ] ; 8 uses
  %i.bb = phi ptr [ inttoptr (i64 4 to ptr), %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford40recover_negative_cycle_from_predecessorsRINtNtBW_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5N_5types3any5PyAnyEB5I_EE0EE9from_iterCskcxRuJ53GpR_9rustworkx.exit.thread ], [ %i.ad, %bb.bw ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !31436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31439
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !31440, !noalias !31441, !nonnull !67, !noundef !67 ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !31440, !noalias !31441, !noundef !67 ; 6 uses
  %.idx68 = mul nuw nsw i64 %.val1.i.i.i, 24
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx68 ; 4 uses
  %.not.i.i.i.i.i51 = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i.i.i51, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph52

bb.j:                                             ; preds = %.lr.ph52
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, %i.bg
  br i1 %.not.i.i.i.i.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge, %bb.j
  %i.bf = phi ptr [ %i.bg, %bb.j ], [ %i.be, %._crit_edge ]
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24 ; 4 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !range !68, !noalias !31442, !noundef !67
  %.not.i.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.j, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i: ; preds = %.lr.ph52
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %.val.i.i.i to i64
  %i.bj = sub nuw i64 %i.bh, %i.bi
  %i.bk = udiv exact i64 %i.bj, 24
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = add nuw nsw i64 %i.bl, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.j, %._crit_edge, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.bm, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.j ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.02.0.i.i.i.i.i.i)
          to label %.noexc62 unwind label %.loopexit.split-lp166

.noexc62:                                         ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31439
  %.not.i.i.i7.i.i53 = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i7.i.i53, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i.i, label %.lr.ph54

bb.k:                                             ; preds = %.lr.ph54
  %.not.i.i.i7.i.i = icmp eq ptr %.val.i.i.i, %i.bo
  br i1 %.not.i.i.i7.i.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i.i, label %.lr.ph54

.lr.ph54:                                         ; preds = %.noexc62, %bb.k
  %i.bn = phi ptr [ %i.bo, %bb.k ], [ %i.be, %.noexc62 ]
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24 ; 4 uses
  %.val.i.i.i.i8.i.i = load i64, ptr %i.bo, align 8, !range !68, !noalias !31443, !noundef !67
  %.not.i.not.i.i.i.i9.i.i = icmp eq i64 %.val.i.i.i.i8.i.i, 0
  br i1 %.not.i.not.i.i.i.i9.i.i, label %bb.k, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i.i: ; preds = %.lr.ph54
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %.val.i.i.i to i64
  %i.br = sub nuw i64 %i.bp, %i.bq
  %i.bs = udiv exact i64 %i.br, 24
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = add nuw nsw i64 %i.bt, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i.i: ; preds = %bb.k, %.noexc62, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i.i
  %.sroa.02.0.i.i.i.i12.i.i = phi i64 [ %i.bu, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionjEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i.i ], [ 0, %.noexc62 ], [ 0, %bb.k ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.sroa.02.0.i.i.i.i12.i.i)
          to label %bb.o unwind label %bb.l, !noalias !31439

bb.l:                                             ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body63 unwind label %bb.m, !noalias !31439

bb.m:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !31439
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit95.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i94.i, %.thread127.i
  br i1 %i.ck, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100.i, label %bb.az

bb.n:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %.sroa.016.2.i, label %.thread127.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100.i

.thread133.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100.i

bb.o:                                             ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i.i
  store i64 0, ptr %i.m, align 8, !alias.scope !31437, !noalias !31444
  %.sroa.5.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i58, align 8, !alias.scope !31437, !noalias !31444
  %.sroa.7.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i59, align 8, !alias.scope !31437, !noalias !31444
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !31444
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !31444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !31436
  store i64 0, ptr %i.l, align 8, !noalias !31436
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ca, align 8, !noalias !31436
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store i64 0, ptr %i.cb, align 8, !noalias !31436
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !31435, !noalias !31445, !nonnull !67 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !31435, !noalias !31445 ; 4 uses
  br label %.backedge178.i

.backedge178.i:                                   ; preds = %.backedge178.i.backedge, %bb.o
  %i.ci = phi i64 [ 0, %bb.o ], [ %i.cm, %.backedge178.i.backedge ] ; 4 uses
  %i.cj = phi ptr [ %.val.i.i.i, %bb.o ], [ %i.cl, %.backedge178.i.backedge ] ; 3 uses
  %i.ck = icmp eq ptr %i.cj, %i.be                ; 2 uses
  br i1 %i.ck, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.backedge178.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cm = add i64 %i.ci, 1
  %.val.i.i49.i = load i64, ptr %i.cj, align 8, !range !68, !noalias !31446, !noundef !67
  %.not.i.not.i.i.i = icmp eq i64 %.val.i.i49.i, 0
  br i1 %.not.i.not.i.i.i, label %.backedge178.i.backedge, label %bb.q

.backedge178.i.backedge:                          ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit93.i, %.loopexit.i.i, %bb.p, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i
  br label %.backedge178.i

.thread127.loopexit.i:                            ; preds = %bb.aw
  %lpad.loopexit169.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread127.i

.thread127.loopexit.split-lp.loopexit.i:          ; preds = %bb.ay
  %lpad.loopexit173.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread127.i

.thread127.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.al
  %lpad.loopexit176.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread127.i

.thread127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke69
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread127.i

bb.q:                                             ; preds = %bb.p
  %i.cn = trunc i64 %i.ci to i32
  %.val39.i = load i64, ptr %i.cc, align 8, !noalias !31436, !noundef !67
  %i.co = and i64 %i.ci, 4294967295               ; 2 uses
  %i.cp = icmp ugt i64 %.val39.i, %i.co
  br i1 %i.cp, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i

bb.r:                                             ; preds = %.backedge178.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !31436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !31436
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !31436
  call void @llvm.experimental.noalias.scope.decl(metadata !31447)
  call void @llvm.experimental.noalias.scope.decl(metadata !31448)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 6 uses
  %.val1.i.i50.i = load i64, ptr %i.cr, align 8, !alias.scope !31449, !noalias !31436, !noundef !67 ; 3 uses
  %i.cs = and i64 %.val1.i.i50.i, 127
  %.not.i.i.i.i = icmp eq i64 %i.cs, 0
  %i.ct = lshr i64 %.val1.i.i50.i, 3
  %.idx.i.i.i.i = and i64 %i.ct, 2305843009213693936
  %.idx2.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 16
  %i.cu = add nuw nsw i64 %.idx2.i.i.i.i, %.idx.i.i.i.i ; 2 uses
  %i.cv = icmp samesign eq i64 %i.cu, 0
  br i1 %i.cv, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.r
  %.val.i.i51.i = load ptr, ptr %i.cq, align 8, !alias.scope !31449, !noalias !31436, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i51.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.cu, i1 false), !noalias !31450
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.r
  %.not.i4.i.i.i55 = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i4.i.i.i55, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph56

bb.s:                                             ; preds = %.lr.ph56
  %.not.i4.i.i.i = icmp eq ptr %.val.i.i.i, %i.cx
  br i1 %.not.i4.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph56

.lr.ph56:                                         ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i, %bb.s
  %i.cw = phi ptr [ %i.cx, %bb.s ], [ %i.be, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i ]
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -24 ; 4 uses
  %.val.i.i.i.i.i = load i64, ptr %i.cx, align 8, !range !68, !noalias !31451, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i, label %bb.s, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph56
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %.val.i.i.i to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  %i.db = udiv exact i64 %i.da, 24
  %i.dc = and i64 %i.db, 4294967295               ; 2 uses
  %.not.i.i.i60 = icmp ult i64 %i.dc, %.val1.i.i50.i
  br i1 %.not.i.i.i60, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.t, !prof !120

bb.t:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.dd = add nuw nsw i64 %i.dc, 1
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cq, i64 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.u, !noalias !31436

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, %bb.u
  %.sroa.016.2.i = phi i1 [ true, %bb.u ], [ false, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i ], [ false, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i ]
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.dh, %bb.u ], [ %.pn.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i ], [ %.pn.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31452)
  %.val.i117 = load i64, ptr %i.k, align 8, !alias.scope !31452, !noalias !31436 ; 2 uses
  %i.de = icmp eq i64 %.val.i117, 0
  br i1 %i.de, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i118

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i118: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i119 = load ptr, ptr %i.df, align 8, !alias.scope !31452, !noalias !31436, !nonnull !67, !noundef !67
  %i.dg = shl nuw i64 %.val.i117, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i119, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !31453
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i118, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.n unwind label %bb.ak

bb.u:                                             ; preds = %bb.t
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.s, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i, %bb.t, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphjuENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 8 uses
  store i64 0, ptr %i.di, align 8, !noalias !31436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !31436
  store i64 0, ptr %i.j, align 8, !noalias !31436
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dj, align 8, !noalias !31436
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %i.dk, align 8, !noalias !31436
  %i.dl = load ptr, ptr %i.ca, align 8, !noalias !31436, !nonnull !67, !noundef !67 ; 4 uses
  %i.dm = load i64, ptr %i.l, align 8, !range !70, !noalias !31436, !noundef !67 ; 4 uses
  %i.dn = load i64, ptr %i.cb, align 8, !noalias !31436, !noundef !67 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 2305843009213693952
  call void @llvm.assume(i1 %i.do)
  %i.dp = icmp eq i64 %i.dn, 0
  br i1 %i.dp, label %._crit_edge224.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i
  %.idx.i = shl nuw nsw i64 %i.dn, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  br label %bb.w

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i72.i, %bb.ai, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.hn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i72.i ], [ %i.dw, %bb.v ], [ %i.hn, %bb.ai ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.phi.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ] ; 2 uses
  %i.du = icmp eq i64 %i.dm, 0
  br i1 %i.du, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %.body.i
  %i.dv = shl nuw i64 %i.dm, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !31454
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

bb.v:                                             ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.w:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.dx = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.i ], [ %i.ht, %.backedge.i ] ; 2 uses
  %i.dy = phi i64 [ 0, %.lr.ph.i ], [ %i.hu, %.backedge.i ] ; 4 uses
  %.sroa.10.0223.i = phi ptr [ %i.dq, %.lr.ph.i ], [ %i.dz, %.backedge.i ]
  %i.dz = getelementptr inbounds i8, ptr %.sroa.10.0223.i, i64 -4 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !31455, !noundef !67 ; 2 uses
  %.val36.i = load i64, ptr %i.cr, align 8, !noalias !31436, !noundef !67
  %i.eb = zext i32 %i.ea to i64                   ; 3 uses
  %i.ec = icmp ugt i64 %.val36.i, %i.eb
  br i1 %i.ec, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread.i

._crit_edge224.i:                                 ; preds = %.backedge.i, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.6129.0.copyload = phi i64 [ 0, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphjuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.hu, %.backedge.i ] ; 3 uses
  %i.ed = icmp eq i64 %i.dm, 0
  br i1 %i.ed, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55.i: ; preds = %._crit_edge224.i
  %i.ee = shl nuw i64 %i.dm, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !31456
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i, %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31457)
  %.val.i110 = load ptr, ptr %i.dj, align 8, !alias.scope !31457, !noalias !31436, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i = load i64, ptr %i.dk, align 8, !alias.scope !31457, !noalias !31436, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31458), !noalias !31436
  %i.ef = icmp eq i64 %.val1.i, 0
  br i1 %i.ef, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i111

.lr.ph.i.i.i111:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i116
  %.sroa.0.012.i.i.i112 = phi i64 [ %i.eh, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i116 ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %.val.i110, i64 %.sroa.0.012.i.i.i112 ; 2 uses
  %i.eh = add nuw nsw i64 %.sroa.0.012.i.i.i112, 1 ; 2 uses
  %.val8.i.i.i113 = load i64, ptr %i.eg, align 8, !alias.scope !31458, !noalias !31459 ; 2 uses
  %i.ei = icmp eq i64 %.val8.i.i.i113, 0
  br i1 %i.ei, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i116, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i114

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i114: ; preds = %.lr.ph.i.i.i111
  %i.ej = getelementptr i8, ptr %i.eg, i64 8
  %.val9.i.i.i115 = load ptr, ptr %i.ej, align 8, !alias.scope !31458, !noalias !31459, !nonnull !67, !noundef !67
  %i.ek = shl nuw i64 %.val8.i.i.i113, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i115, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !31460
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i116

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i116: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i114, %.lr.ph.i.i.i111
  %i.el = icmp eq i64 %i.eh, %.val1.i
  br i1 %i.el, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i111

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i116, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val2.i = load i64, ptr %i.j, align 8, !alias.scope !31457, !noalias !31436 ; 2 uses
  %i.em = icmp eq i64 %.val2.i, 0
  br i1 %i.em, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.en = mul nuw i64 %.val2.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i110, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !31459
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55.i, %._crit_edge224.i
  %.sroa.0127.0.copyload = load i64, ptr %i.j, align 8, !noalias !31435 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %i.dj, align 8, !noalias !31435 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31436
  call void @llvm.experimental.noalias.scope.decl(metadata !31461)
  %.val.i57.i = load i64, ptr %i.k, align 8, !alias.scope !31461, !noalias !31436 ; 2 uses
  %i.eo = icmp eq i64 %.val.i57.i, 0
  br i1 %i.eo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i61

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i61: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i58.i = load ptr, ptr %i.ep, align 8, !alias.scope !31461, !noalias !31436, !nonnull !67, !noundef !67
  %i.eq = shl nuw i64 %.val.i57.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i58.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !31462
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i61, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56.i
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i unwind label %.thread133.i, !noalias !31436

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !31436
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.bb unwind label %.loopexit.split-lp166

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.i: ; preds = %bb.w
  %.val35.i = load ptr, ptr %i.cq, align 8, !noalias !31436, !nonnull !67, !noundef !67
  %i.er = lshr i64 %i.eb, 6
  %i.es = and i64 %i.eb, 63
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val35.i, i64 %i.er
  %i.eu = load i64, ptr %i.et, align 8, !noalias !31436, !noundef !67
  %i.ev = lshr i64 %i.eu, %i.es
  %i.ew = trunc i64 %i.ev to i1
  br i1 %i.ew, label %.backedge.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.i, %bb.w
  store i64 0, ptr %i.di, align 8, !noalias !31436
  %i.ex = load i64, ptr %i.k, align 8, !range !70, !alias.scope !31463, !noalias !31436, !noundef !67
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #62
          to label %bb.y unwind label %bb.v, !noalias !31436

bb.y:                                             ; preds = %bb.x, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread.i
end_hunk_2
begin_hunk_3_@_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf213is_isomorphicNtCs68Jln09rRqb_8petgraph8DirectedEB6_:bb.a
  %.not11 = and i1 %i.o, %i.p
  br i1 %.not11, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs2_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtB5_12Vf2AlgorithmNtCs68Jln09rRqb_8petgraph8DirectedINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2n_5types3any5PyAnyEEB1G_E3newB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(568) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i8 noundef %6, i1 noundef zeroext %7, i64 noundef %8, i64 %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMs2_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtB5_12Vf2AlgorithmNtCs68Jln09rRqb_8petgraph8DirectedINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2n_5types3any5PyAnyEEB1G_E4nextB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 dereferenceable(568) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf212Vf2AlgorithmNtCs68Jln09rRqb_8petgraph8DirectedINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEEB29_EEBI_(ptr noalias nofree noundef align 8 dereferenceable(568) %i.b) #63
          to label %.thread unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.a, align 8, !range !68, !noundef !67
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.069.0.copyload = load i64, ptr %i.t, align 8 ; 4 uses
  %.sroa.470.0.copyload = load ptr, ptr %.sroa.470.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.571.0.copyload = load i64, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.672.0.copyload = load ptr, ptr %.sroa.672.0..sroa_idx, align 8
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.773.0.copyload = load i64, ptr %.sroa.773.0..sroa_idx, align 8
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.874.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.880.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.12, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.069.0.copyload, ptr %i.u, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.470.0.copyload, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.571.0.copyload, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.672.0.copyload, ptr %.sroa.678.0..sroa_idx, align 8
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.773.0.copyload, ptr %.sroa.779.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.12)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.660.0.copyload = load ptr, ptr %.sroa.660.0..sroa_idx, align 8 ; 2 uses
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.761.0.copyload = load i64, ptr %.sroa.761.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %.sroa.069.0.copyload, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq i64 %.sroa.761.0.copyload, 0
  br i1 %i.v, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i18, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i16

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i16: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.660.0.copyload) ]
  %i.w = shl i64 %.sroa.761.0.copyload, 3
  %i.x = icmp slt i64 %.sroa.761.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.x)
  %i.y = and i64 %i.w, -16                        ; 2 uses
  %i.z = add i64 %i.y, 16                         ; 2 uses
  %i.aa = add nsw i64 %.sroa.761.0.copyload, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  call void @llvm.assume(i1 %i.ad)
  %i.ae = sub nuw nsw i64 -16, %i.y
  %i.af = getelementptr inbounds i8, ptr %.sroa.660.0.copyload, i64 %i.ae
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !35501
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i18

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i18: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i16, %bb.h
  %i.ag = icmp eq i64 %.sroa.069.0.copyload, 0
  br i1 %i.ag, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEB11_.exit21, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i19

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i19: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.470.0.copyload) ]
  %i.ah = mul nuw i64 %.sroa.069.0.copyload, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.470.0.copyload, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !35501
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEB11_.exit21

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.12)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ai, align 1
  store i8 0, ptr %0, align 8
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf212Vf2AlgorithmNtCs68Jln09rRqb_8petgraph8DirectedINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEEB29_EEBI_(ptr noalias nofree noundef align 8 dereferenceable(568) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit23

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit23: ; preds = %bb.r, %bb.q, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, %bb.j, %bb.i
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEB11_.exit21: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i19, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.12)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  store i8 0, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEB11_.exit21, %bb.f
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf212Vf2AlgorithmNtCs68Jln09rRqb_8petgraph8DirectedINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEEB29_EEBI_(ptr noalias nofree noundef align 8 dereferenceable(568) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit23

bb.k:                                             ; preds = %bb.s, %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.al, align 1
  store i8 0, ptr %0, align 8
  %i.am = icmp eq ptr %4, null
  br i1 %i.am, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.an, align 8, !noundef !67
  %i.ao = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ao, label %bb.o, label %bb.n, !prof !125

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.s

bb.o:                                             ; preds = %bb.m
  tail call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.o, %bb.l, %bb.n
  %i.ap = icmp eq ptr %3, null
  br i1 %i.ap, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit23, label %bb.p

bb.p:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit
  %i.aq = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i22 = load i64, ptr %i.aq, align 8, !noundef !67
  %i.ar = icmp sgt i64 %.val.i.i.i.i.i22, 0
  br i1 %i.ar, label %bb.r, label %bb.q, !prof !125

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %3)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit23

bb.r:                                             ; preds = %bb.p
  tail call void @_Py_DecRef(ptr noundef nonnull %3) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit23

.thread:                                          ; preds = %bb.d, %bb.s
  %.pn83 = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %.pn83

bb.s:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr %3) #63
          to label %.thread unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_8DirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3w_E11is_feasible0EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef range(i64 0, 576460752303423488) %4, ptr nofree noundef nonnull readonly align 8 captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.1045 = alloca [70 x i8], align 2         ; 5 uses
  %.sroa.86 = alloca [70 x i8], align 2           ; 5 uses
  %i.d = icmp eq i64 %4, 0                        ; 3 uses
  br i1 %i.d, label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !35512
  %i.e = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !35512 ; 11 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %4) #61, !noalias !35513
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.b
  %.not.i = icmp eq i64 %4, 1
  br i1 %.not.i, label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.g = add nsw i64 %4, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 1, i64 range(i64 0, -1) %i.g, i1 false), !noalias !35514
  %i.h = getelementptr i8, ptr %i.e, i64 %4
  %scevgep.i.i = getelementptr i8, ptr %i.h, i64 -1
  br label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread

_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.a
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge68, label %._crit_edge

_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i, %._crit_edge.thread.i.i
  %.sroa.0.0.lcssa27.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.thread.i.i ], [ %i.e, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  store i8 1, ptr %.sroa.0.0.lcssa27.i.i, align 1, !noalias !35514
  %.idx80 = shl nuw nsw i64 %2, 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx80
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %._crit_edge68.thread, label %.lr.ph.preheader

._crit_edge68.thread:                             ; preds = %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.l, align 1
  store i8 0, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29.sink.split

.lr.ph.preheader:                                 ; preds = %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.sroa.48.0..sroa_idx.i.i86 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.410.0..sroa_idx.i.i87 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.i, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.m, %.loopexit.split-lp, %.loopexit
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #59
  resume { ptr, i32 } %eh.lpad-body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.sroa.014.066 = phi ptr [ %i.q, %bb.u ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.014.066, i64 16 ; 2 uses
  %i.r = load i32, ptr %.sroa.014.066, align 8, !noundef !67
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.014.066, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !67, !align !98, !noundef !67
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.10.064 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.f ] ; 4 uses
  %i.u = add nuw nsw i64 %.sroa.10.064, 1         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.10.064
  %i.w = load i8, ptr %i.v, align 1, !range !69, !noundef !67
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit
  %.sink30.i8189 = phi ptr [ inttoptr (i64 1 to ptr), %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit ], [ %i.e, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.y, align 1
  store i8 0, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.s, %._crit_edge
  %.sink30.i83 = phi ptr [ %i.e, %bb.s ], [ %.sink30.i8189, %._crit_edge ]
  br i1 %i.d, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29.sink.split

bb.f:                                             ; preds = %bb.t, %bb.d
  %exitcond.not = icmp eq i64 %i.u, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.sroa.10.064 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !67, !align !98, !noundef !67
  %i.ac = load i32, ptr %i.z, align 8, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.86)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1045)
  %.val26 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.val27 = load ptr, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = icmp eq i32 %i.r, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %.val.i30 = load ptr, ptr %5, align 8, !noalias !35515, !noundef !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35516
  %.not.i.i = icmp eq ptr %.val.i30, null
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !71

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26) ]
  invoke fastcc void @_RINvMsq_NtCsi0YPOvDEjiZ_4pyo38instanceINtB6_2PyNtNtNtB8_5types3any5PyAnyE5call1TRBA_B1g_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr nonnull %.val.i30, ptr nonnull %.val26, ptr %.val27)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.i
  %i.ae = load i64, ptr %i.a, align 8, !range !68, !noalias !35516, !noundef !67
  %i.af = trunc nuw i64 %i.ae to i1
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !35516 ; 5 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4159) #60
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.410.0..sroa_idx.i.i87, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.48.0..sroa_idx.i.i86, i64 56, i1 false), !noalias !35515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35516
  store ptr %.sroa.07.0.copyload.i.i, ptr %i.o, align 8, !noalias !35515
  store i8 1, ptr %i.c, align 8, !noalias !35515
  br label %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35516
  store ptr %.sroa.07.0.copyload.i.i, ptr %i.b, align 8, !noalias !35516
  invoke void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods9is_truthy(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.n unwind label %bb.m, !noalias !35515

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.sroa.07.0.copyload.i.i) #63
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i unwind label %bb.q, !noalias !35516

bb.n:                                             ; preds = %bb.l
  %.val.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !35516, !noundef !67
  %i.ah = icmp sgt i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.p, label %bb.o, !prof !125

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.07.0.copyload.i.i)
          to label %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i unwind label %.loopexit

bb.p:                                             ; preds = %bb.n
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.07.0.copyload.i.i) #59, !noalias !35516
  br label %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i

bb.q:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !35516
  unreachable

_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i: ; preds = %bb.o, %bb.p, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35516
  %i.aj = load i8, ptr %i.c, align 8, !range !69, !noalias !35515, !noundef !67
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i
  %i.al = load i8, ptr %i.p, align 1, !range !69, !noalias !35515, !noundef !67
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.u, label %bb.t

bb.s:                                             ; preds = %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i
  %.sroa.1045.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %.sroa.1045, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.1045.8..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.86.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.86, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.86.8..sroa_idx, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.1045.8..sroa_idx46, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.86.8..sroa_idx, i64 64, i1 false)
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86)
  br label %bb.e

bb.t:                                             ; preds = %bb.g, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86)
  br label %bb.f

bb.u:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.10.064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86)
  store i8 0, ptr %i.ao, align 1
  %i.ap = icmp eq ptr %i.q, %i.j
  br i1 %i.ap, label %._crit_edge68, label %.lr.ph

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29.sink.split: ; preds = %bb.e, %._crit_edge68, %._crit_edge68.thread
  %.sink30.i8293.sink = phi ptr [ %.sink30.i82, %._crit_edge68 ], [ %i.e, %._crit_edge68.thread ], [ %.sink30.i83, %bb.e ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink30.i8293.sink, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECskcxRuJ53GpR_9rustworkx.exit29.sink.split, %._crit_edge68, %bb.e
  ret void

end_hunk_3
begin_hunk_4_@_RINvNtNtNtCs68Jln09rRqb_8petgraph4algo3scc12kosaraju_scc12kosaraju_sccRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEB1U_EECskcxRuJ53GpR_9rustworkx:bb.a
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 15 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [72 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36938
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !36937, !noalias !36939, !nonnull !67, !noundef !67 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !alias.scope !36937, !noalias !36939, !noundef !67 ; 6 uses
  %.idx337 = shl nuw nsw i64 %.val1.i.i, 4
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx337 ; 4 uses
  %.not.i.i.i.i325 = icmp eq i64 %.val1.i.i, 0
  %.sink341.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink341.sroa.gep369 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink341.sroa.gep371 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink341.sroa.gep372 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink341.sroa.gep374 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink341.sroa.gep375 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %.not.i.i.i.i325, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph327

bb.b:                                             ; preds = %.lr.ph327
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, %i.r
  br i1 %.not.i.i.i.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph327

.lr.ph327:                                        ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.r, %bb.b ], [ %i.p, %bb.a ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 4 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !36940, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i: ; preds = %.lr.ph327
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 4
  %i.w = and i64 %i.v, 4294967295
  %i.x = add nuw nsw i64 %i.w, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.b, %bb.a, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.x, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.02.0.i.i.i.i.i), !noalias !36938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36938
  %.not.i.i.i7.i328 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i7.i328, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i, label %.lr.ph329

bb.c:                                             ; preds = %.lr.ph329
  %.not.i.i.i7.i = icmp eq ptr %.val.i.i, %i.z
  br i1 %.not.i.i.i7.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i, label %.lr.ph329

.lr.ph329:                                        ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.c
  %i.y = phi ptr [ %i.z, %bb.c ], [ %i.p, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 4 uses
  %.val.i.i.i.i8.i = load ptr, ptr %i.z, align 8, !noalias !36941, !noundef !67
  %.not.i.not.i.i.i.i9.i = icmp eq ptr %.val.i.i.i.i8.i, null
  br i1 %.not.i.not.i.i.i.i9.i, label %bb.c, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i: ; preds = %.lr.ph329
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %.val.i.i to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 4
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = add nuw nsw i64 %i.ae, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i: ; preds = %bb.c, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i
  %.sroa.02.0.i.i.i.i12.i = phi i64 [ %i.af, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i ], [ 0, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %bb.c ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.sroa.02.0.i.i.i.i12.i)
          to label %bb.g unwind label %bb.d, !noalias !36938

bb.d:                                             ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.e, !noalias !36938

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !36938
  unreachable

common.resume:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.d ], [ %.pn28126, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit95: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i94, %.thread127
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100, label %bb.as

bb.f:                                             ; preds = %bb.m
  br i1 %.sroa.016.2, label %.thread127, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100

.thread133:                                       ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100

bb.g:                                             ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i
  store i64 0, ptr %i.m, align 8, !alias.scope !36936, !noalias !36937
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !36936, !noalias !36937
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !36936, !noalias !36937
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !36937
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !36937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !67 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load i64, ptr %i.ar, align 8            ; 4 uses
  br label %.backedge178

.backedge178:                                     ; preds = %.backedge178.backedge, %bb.g
  %i.at = phi i64 [ 0, %bb.g ], [ %i.ax, %.backedge178.backedge ] ; 4 uses
  %i.au = phi ptr [ %.val.i.i, %bb.g ], [ %i.aw, %.backedge178.backedge ] ; 3 uses
  %i.av = icmp eq ptr %i.au, %i.p                 ; 2 uses
  br i1 %i.av, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.backedge178
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = add i64 %i.at, 1
  %.val.i.i49 = load ptr, ptr %i.au, align 8, !noalias !36942, !noundef !67
  %.not.i.not.i.i = icmp eq ptr %.val.i.i49, null
  br i1 %.not.i.not.i.i, label %.backedge178.backedge, label %bb.i

.backedge178.backedge:                            ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit93, %.loopexit.i, %bb.h, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit
  br label %.backedge178

.thread127.loopexit:                              ; preds = %bb.ap
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

.thread127.loopexit.split-lp.loopexit:            ; preds = %bb.ar
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

.thread127.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ae
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

.thread127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

bb.i:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.at to i32
  %.val40 = load i64, ptr %i.an, align 8, !noundef !67
  %i.az = and i64 %i.at, 4294967295               ; 2 uses
  %i.ba = icmp ugt i64 %.val40, %i.az
  br i1 %i.ba, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread

bb.j:                                             ; preds = %.backedge178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !36943)
  call void @llvm.experimental.noalias.scope.decl(metadata !36944)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 6 uses
  %.val1.i.i50 = load i64, ptr %i.bc, align 8, !alias.scope !36945, !noundef !67 ; 3 uses
  %i.bd = and i64 %.val1.i.i50, 127
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  %i.be = lshr i64 %.val1.i.i50, 3
  %.idx.i.i.i = and i64 %i.be, 2305843009213693936
  %.idx2.i.i.i = select i1 %.not.i.i.i, i64 0, i64 16
  %i.bf = add nuw nsw i64 %.idx2.i.i.i, %.idx.i.i.i ; 2 uses
  %i.bg = icmp samesign eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %.val.i.i51 = load ptr, ptr %i.bb, align 8, !alias.scope !36945, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i51, i8 0, i64 range(i64 0, 2305843009213693953) %i.bf, i1 false), !noalias !36945
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.j
  %.not.i4.i.i330 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i4.i.i330, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph331

bb.k:                                             ; preds = %.lr.ph331
  %.not.i4.i.i = icmp eq ptr %.val.i.i, %i.bi
  br i1 %.not.i4.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph331

.lr.ph331:                                        ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i, %bb.k
  %i.bh = phi ptr [ %i.bi, %bb.k ], [ %i.p, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i ]
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !36946, !noundef !67
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %bb.k, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph331
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.val.i.i to i64
  %i.bl = sub nuw i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 4
  %i.bn = and i64 %i.bm, 4294967295               ; 2 uses
  %.not.i.i = icmp ult i64 %i.bn, %.val1.i.i50
  br i1 %.not.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit, label %bb.l, !prof !120

bb.l:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bo = add nuw nsw i64 %i.bn, 1
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit unwind label %bb.n

bb.m:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit, %bb.n
  %.sroa.016.2 = phi i1 [ false, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit ], [ true, %bb.n ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit ], [ %i.bp, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #63
          to label %bb.f unwind label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.k, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 8 uses
  store i64 0, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.al, align 8, !nonnull !67, !noundef !67 ; 4 uses
  %i.bu = load i64, ptr %i.l, align 8, !range !70, !noundef !67 ; 4 uses
  %i.bv = load i64, ptr %i.am, align 8, !noundef !67 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 2305843009213693952
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %._crit_edge224, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit
  %.idx = shl nuw nsw i64 %i.bv, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  br label %bb.p

.body:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i72, %bb.ab, %bb.o
  %.pn = phi { ptr, i32 } [ %i.fm, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i72 ], [ %i.ce, %bb.o ], [ %i.fm, %bb.ab ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i ]
  %i.cc = icmp eq i64 %i.bu, 0
  br i1 %i.cc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %.body
  %i.cd = shl nuw i64 %i.bu, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !36947
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.lr.ph, %.backedge
  %i.cf = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph ], [ %i.fs, %.backedge ] ; 2 uses
  %i.cg = phi i64 [ 0, %.lr.ph ], [ %i.ft, %.backedge ] ; 4 uses
  %.sroa.10.0223 = phi ptr [ %i.by, %.lr.ph ], [ %i.ch, %.backedge ]
  %i.ch = getelementptr inbounds i8, ptr %.sroa.10.0223, i64 -4 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !noalias !36948, !noundef !67 ; 2 uses
  %.val37 = load i64, ptr %i.bc, align 8, !noundef !67
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %i.ck = icmp ugt i64 %.val37, %i.cj
  br i1 %i.ck, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread

._crit_edge224:                                   ; preds = %.backedge, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit
  %i.cl = icmp eq i64 %i.bu, 0
  br i1 %i.cl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55: ; preds = %._crit_edge224
  %i.cm = shl nuw i64 %i.bu, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !36949
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i, %.body
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #63
  br label %bb.m

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55, %._crit_edge224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !36950)
  %.val.i57 = load i64, ptr %i.k, align 8, !alias.scope !36950 ; 2 uses
  %i.cn = icmp eq i64 %.val.i57, 0
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i58 = load ptr, ptr %i.co, align 8, !alias.scope !36950, !nonnull !67, !noundef !67
  %i.cp = shl nuw i64 %.val.i57, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i58, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !36950
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit unwind label %.thread133

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54: ; preds = %bb.p
  %.val36 = load ptr, ptr %i.bb, align 8, !nonnull !67, !noundef !67
  %i.cq = lshr i64 %i.cj, 6
  %i.cr = and i64 %i.cj, 63
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val36, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !67
  %i.cu = lshr i64 %i.ct, %i.cr
  %i.cv = trunc i64 %i.cu to i1
  br i1 %i.cv, label %.backedge, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread: ; preds = %bb.p, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54
  store i64 0, ptr %i.bq, align 8
  %i.cw = load i64, ptr %i.k, align 8, !range !70, !alias.scope !36951, !noundef !67
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #62
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread, %bb.q
  %i.cy = load ptr, ptr %i.bz, align 8, !alias.scope !36951, !nonnull !67, !noundef !67
  store i32 %i.ci, ptr %i.cy, align 4
  store i64 1, ptr %i.bq, align 8, !alias.scope !36951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ca, align 8
  store i64 0, ptr %i.cb, align 8
  %i.cz = load i64, ptr %i.bc, align 8, !alias.scope !36952, !noalias !36953
  %i.da = load ptr, ptr %i.bb, align 8, !alias.scope !36952, !noalias !36953, !nonnull !67
  %i.db = load ptr, ptr %i.bz, align 8, !nonnull !67
  br label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.r, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70
  %i.dc = phi ptr [ %i.db, %bb.r ], [ %i.fi, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70 ]
  %i.dd = phi ptr [ %i.da, %bb.r ], [ %i.fh, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70 ]
  %i.de = phi i64 [ %i.cz, %bb.r ], [ %i.fg, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70 ]
  %.pre.i336 = phi i64 [ 1, %bb.r ], [ %.pre.i.pre, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70 ]
  %i.df = load i64, ptr %i.k, align 8, !range !70
  call void @llvm.experimental.noalias.scope.decl(metadata !36954)
  br label %bb.t

bb.s:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i
  %i.dg = icmp eq i64 %i.di, 0
  br i1 %i.dg, label %._crit_edge334.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph333, %bb.s
  %i.dh = phi i64 [ %.pre.i336, %.lr.ph333 ], [ %i.di, %bb.s ] ; 2 uses
  %i.di = add nsw i64 %i.dh, -1                   ; 8 uses
  %i.dj = icmp samesign ult i64 %i.di, %i.df
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp ult i64 %i.dh, 2305843009213693953
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dm = load i32, ptr %i.dl, align 4, !noalias !36955, !noundef !67 ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36956
  store i64 %i.dn, ptr %i.f, align 8, !noalias !36957
  %i.do = icmp ugt i64 %i.de, %i.dn
  br i1 %i.do, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.u, !prof !77

bb.u:                                             ; preds = %bb.t
  store i64 %i.di, ptr %i.bq, align 8, !alias.scope !36954, !noalias !36953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36957
  store ptr %i.f, ptr %i.e, align 8, !noalias !36957
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !36957
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_4
begin_hunk_5_@_RINvNtNtNtCs68Jln09rRqb_8petgraph4algo3scc12kosaraju_scc12kosaraju_sccRINtNtNtB8_10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx:bb.a
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 15 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [72 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !37081
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !37080, !noalias !37082, !nonnull !67, !noundef !67 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !alias.scope !37080, !noalias !37082, !noundef !67 ; 6 uses
  %.idx337 = mul nuw nsw i64 %.val1.i.i, 12
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx337 ; 4 uses
  %.not.i.i.i.i325 = icmp eq i64 %.val1.i.i, 0
  %.sink341.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink341.sroa.gep369 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink341.sroa.gep371 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink341.sroa.gep372 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink341.sroa.gep374 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink341.sroa.gep375 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %.not.i.i.i.i325, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph327

bb.b:                                             ; preds = %.lr.ph327
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, %i.r
  br i1 %.not.i.i.i.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph327

.lr.ph327:                                        ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.r, %bb.b ], [ %i.p, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -12 ; 3 uses
  %i.s = getelementptr i8, ptr %i.q, i64 -4
  %.val.i.i.i.i.i = load i8, ptr %i.s, align 4, !range !69, !noalias !37083, !noundef !67
  %i.t = trunc nuw i8 %.val.i.i.i.i.i to i1
  br i1 %i.t, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionuEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i, label %bb.b

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionuEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i: ; preds = %.lr.ph327
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 12
  %i.y = and i64 %i.x, 4294967295
  %i.z = add nuw nsw i64 %i.y, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.b, %bb.a, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionuEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.z, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionuEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.02.0.i.i.i.i.i), !noalias !37081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !37081
  %.not.i.i.i7.i328 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i7.i328, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i10.i, label %.lr.ph329

bb.c:                                             ; preds = %.lr.ph329
  %.not.i.i.i7.i = icmp eq ptr %.val.i.i, %i.ab
  br i1 %.not.i.i.i7.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i10.i, label %.lr.ph329

.lr.ph329:                                        ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.ab, %bb.c ], [ %i.p, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 -4
  %.val.i.i.i.i8.i = load i8, ptr %i.ac, align 4, !range !69, !noalias !37084, !noundef !67
  %i.ad = trunc nuw i8 %.val.i.i.i.i8.i to i1
  br i1 %i.ad, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionuEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i9.i, label %bb.c

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionuEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i9.i: ; preds = %.lr.ph329
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %.val.i.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = udiv exact i64 %i.ag, 12
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = add nuw nsw i64 %i.ai, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i10.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i10.i: ; preds = %bb.c, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionuEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i9.i
  %.sroa.02.0.i.i.i.i11.i = phi i64 [ %i.aj, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionuEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i9.i ], [ 0, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %bb.c ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.sroa.02.0.i.i.i.i11.i)
          to label %bb.g unwind label %bb.d, !noalias !37081

bb.d:                                             ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i10.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.e, !noalias !37081

bb.e:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !37081
  unreachable

common.resume:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.d ], [ %.pn28126, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit95: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i94, %.thread127
  br i1 %i.az, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100, label %bb.as

bb.f:                                             ; preds = %bb.m
  br i1 %.sroa.016.2, label %.thread127, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100

.thread133:                                       ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100

bb.g:                                             ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i10.i
  store i64 0, ptr %i.m, align 8, !alias.scope !37079, !noalias !37080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !37079, !noalias !37080
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !37079, !noalias !37080
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !37080
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !37080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !37081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !37081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !67 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8            ; 4 uses
  br label %.backedge178

.backedge178:                                     ; preds = %.backedge178.backedge, %bb.g
  %i.ax = phi i64 [ 0, %bb.g ], [ %i.bb, %.backedge178.backedge ] ; 4 uses
  %i.ay = phi ptr [ %.val.i.i, %bb.g ], [ %i.ba, %.backedge178.backedge ] ; 3 uses
  %i.az = icmp eq ptr %i.ay, %i.p                 ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.backedge178
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bb = add i64 %i.ax, 1
  %i.bc = getelementptr i8, ptr %i.ay, i64 8
  %.val.i.i49 = load i8, ptr %i.bc, align 4, !range !69, !noalias !37085, !noundef !67
  %i.bd = trunc nuw i8 %.val.i.i49 to i1
  br i1 %i.bd, label %bb.i, label %.backedge178.backedge

.backedge178.backedge:                            ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit93, %.loopexit.i, %bb.h, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit
  br label %.backedge178

.thread127.loopexit:                              ; preds = %bb.ap
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

.thread127.loopexit.split-lp.loopexit:            ; preds = %bb.ar
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

.thread127.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ae
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

.thread127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

bb.i:                                             ; preds = %bb.h
  %i.be = trunc i64 %i.ax to i32
  %.val39 = load i64, ptr %i.ar, align 8, !noundef !67
  %i.bf = and i64 %i.ax, 4294967295               ; 2 uses
  %i.bg = icmp ugt i64 %.val39, %i.bf
  br i1 %i.bg, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread

bb.j:                                             ; preds = %.backedge178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !37086)
  call void @llvm.experimental.noalias.scope.decl(metadata !37087)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 6 uses
  %.val1.i.i50 = load i64, ptr %i.bi, align 8, !alias.scope !37088, !noundef !67 ; 3 uses
  %i.bj = and i64 %.val1.i.i50, 127
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  %i.bk = lshr i64 %.val1.i.i50, 3
  %.idx.i.i.i = and i64 %i.bk, 2305843009213693936
  %.idx2.i.i.i = select i1 %.not.i.i.i, i64 0, i64 16
  %i.bl = add nuw nsw i64 %.idx2.i.i.i, %.idx.i.i.i ; 2 uses
  %i.bm = icmp samesign eq i64 %i.bl, 0
  br i1 %i.bm, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %.val.i.i51 = load ptr, ptr %i.bh, align 8, !alias.scope !37088, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i51, i8 0, i64 range(i64 0, 2305843009213693953) %i.bl, i1 false), !noalias !37088
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.j
  %.not.i4.i.i330 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i4.i.i330, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph331

bb.k:                                             ; preds = %.lr.ph331
  %.not.i4.i.i = icmp eq ptr %.val.i.i, %i.bo
  br i1 %.not.i4.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph331

.lr.ph331:                                        ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i, %bb.k
  %i.bn = phi ptr [ %i.bo, %bb.k ], [ %i.p, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -12 ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 -4
  %.val.i.i.i.i = load i8, ptr %i.bp, align 4, !range !69, !noalias !37089, !noundef !67
  %i.bq = trunc nuw i8 %.val.i.i.i.i to i1
  br i1 %i.bq, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.k

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph331
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %.val.i.i to i64
  %i.bt = sub nuw i64 %i.br, %i.bs
  %i.bu = udiv exact i64 %i.bt, 12
  %i.bv = and i64 %i.bu, 4294967295               ; 2 uses
  %.not.i.i = icmp ult i64 %i.bv, %.val1.i.i50
  br i1 %.not.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit, label %bb.l, !prof !120

bb.l:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bw = add nuw nsw i64 %i.bv, 1
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit unwind label %bb.n

bb.m:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit, %bb.n
  %.sroa.016.2 = phi i1 [ false, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit ], [ true, %bb.n ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit ], [ %i.bx, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #63
          to label %bb.f unwind label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.k, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuuENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 8 uses
  store i64 0, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %i.ap, align 8, !nonnull !67, !noundef !67 ; 4 uses
  %i.cc = load i64, ptr %i.l, align 8, !range !70, !noundef !67 ; 4 uses
  %i.cd = load i64, ptr %i.aq, align 8, !noundef !67 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 2305843009213693952
  call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %._crit_edge224, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit
  %.idx = shl nuw nsw i64 %i.cd, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  br label %bb.p

.body:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i72, %bb.ab, %bb.o
  %.pn = phi { ptr, i32 } [ %i.fu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i72 ], [ %i.cm, %bb.o ], [ %i.fu, %bb.ab ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i ]
  %i.ck = icmp eq i64 %i.cc, 0
  br i1 %i.ck, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %.body
  %i.cl = shl nuw i64 %i.cc, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !37090
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.lr.ph, %.backedge
  %i.cn = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph ], [ %i.ga, %.backedge ] ; 2 uses
  %i.co = phi i64 [ 0, %.lr.ph ], [ %i.gb, %.backedge ] ; 4 uses
  %.sroa.10.0223 = phi ptr [ %i.cg, %.lr.ph ], [ %i.cp, %.backedge ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.10.0223, i64 -4 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !noalias !37091, !noundef !67 ; 2 uses
  %.val36 = load i64, ptr %i.bi, align 8, !noundef !67
  %i.cr = zext i32 %i.cq to i64                   ; 3 uses
  %i.cs = icmp ugt i64 %.val36, %i.cr
  br i1 %i.cs, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread

._crit_edge224:                                   ; preds = %.backedge, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit
  %i.ct = icmp eq i64 %i.cc, 0
  br i1 %i.ct, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55: ; preds = %._crit_edge224
  %i.cu = shl nuw i64 %i.cc, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !37092
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i, %.body
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #63
  br label %bb.m

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i55, %._crit_edge224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !37093)
  %.val.i57 = load i64, ptr %i.k, align 8, !alias.scope !37093 ; 2 uses
  %i.cv = icmp eq i64 %.val.i57, 0
  br i1 %i.cv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i58 = load ptr, ptr %i.cw, align 8, !alias.scope !37093, !nonnull !67, !noundef !67
  %i.cx = shl nuw i64 %.val.i57, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i58, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !37093
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit56
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit unwind label %.thread133

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54: ; preds = %bb.p
  %.val35 = load ptr, ptr %i.bh, align 8, !nonnull !67, !noundef !67
  %i.cy = lshr i64 %i.cr, 6
  %i.cz = and i64 %i.cr, 63
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !noundef !67
  %i.dc = lshr i64 %i.db, %i.cz
  %i.dd = trunc i64 %i.dc to i1
  br i1 %i.dd, label %.backedge, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread: ; preds = %bb.p, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54
  store i64 0, ptr %i.by, align 8
  %i.de = load i64, ptr %i.k, align 8, !range !70, !alias.scope !37094, !noundef !67
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #62
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit54.thread, %bb.q
  %i.dg = load ptr, ptr %i.ch, align 8, !alias.scope !37094, !nonnull !67, !noundef !67
  store i32 %i.cq, ptr %i.dg, align 4
  store i64 1, ptr %i.by, align 8, !alias.scope !37094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ci, align 8
  store i64 0, ptr %i.cj, align 8
  %i.dh = load i64, ptr %i.bi, align 8, !alias.scope !37095, !noalias !37096
  %i.di = load ptr, ptr %i.bh, align 8, !alias.scope !37095, !noalias !37096, !nonnull !67
  %i.dj = load ptr, ptr %i.ch, align 8, !nonnull !67
  br label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.r, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70
  %i.dk = phi ptr [ %i.dj, %bb.r ], [ %i.fq, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70 ]
  %i.dl = phi ptr [ %i.di, %bb.r ], [ %i.fp, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70 ]
  %i.dm = phi i64 [ %i.dh, %bb.r ], [ %i.fo, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70 ]
  %.pre.i336 = phi i64 [ 1, %bb.r ], [ %.pre.i.pre, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit70 ]
  %i.dn = load i64, ptr %i.k, align 8, !range !70
  call void @llvm.experimental.noalias.scope.decl(metadata !37097)
  br label %bb.t

bb.s:                                             ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i
  %i.do = icmp eq i64 %i.dq, 0
  br i1 %i.do, label %._crit_edge334.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph333, %bb.s
  %i.dp = phi i64 [ %.pre.i336, %.lr.ph333 ], [ %i.dq, %bb.s ] ; 2 uses
  %i.dq = add nsw i64 %i.dp, -1                   ; 8 uses
  %i.dr = icmp samesign ult i64 %i.dq, %i.dn
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp ult i64 %i.dp, 2305843009213693953
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dq
  %i.du = load i32, ptr %i.dt, align 4, !noalias !37098, !noundef !67 ; 2 uses
  %i.dv = zext i32 %i.du to i64                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37099
  store i64 %i.dv, ptr %i.f, align 8, !noalias !37100
  %i.dw = icmp ugt i64 %i.dm, %i.dv
  br i1 %i.dw, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.u, !prof !77

bb.u:                                             ; preds = %bb.t
  store i64 %i.dq, ptr %i.by, align 8, !alias.scope !37097, !noalias !37096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37100
  store ptr %i.f, ptr %i.e, align 8, !noalias !37100
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !37100
end_hunk_5
begin_hunk_6_@_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity5chain19chain_decompositionRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEE0CskcxRuJ53GpR_9rustworkx:bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !54334
  resume { ptr, i32 } %lpad.thr_comm.i.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBQ_EEE6insertNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54329
  br label %_RNvMs1d_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_5EntryNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBM_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE9or_insertCskcxRuJ53GpR_9rustworkx.exit

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !54329
  br label %_RNvMs1d_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_5EntryNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBM_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE9or_insertCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs0_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %1 to i64
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs1_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !67 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !67, !noundef !67
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1
  %i.h = load i32, ptr %i.g, align 4, !noundef !67
  ret i32 %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1256) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs2_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #20 {
bb.a:
  %i.a = trunc i64 %1 to i32
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs5_0CskcxRuJ53GpR_9rustworkx(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  %i.d = alloca [24 x i8], align 16               ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.f = load i64, ptr %.0.val, align 8, !noundef !67
  call void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load i64, ptr %.0.val, align 8, !noundef !67
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.g)
          to label %bb.c unwind label %bb.b

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18, %bb.b
  %.pn11 = phi { ptr, i32 } [ %i.h, %bb.b ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18 ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.w

bb.b:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit20, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = load i64, ptr %.0.val, align 8, !noundef !67
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.i)
          to label %bb.e unwind label %bb.d

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18: ; preds = %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %lpad.phi, %.loopexit.split-lp ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16 unwind label %bb.w

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54355)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.b, align 8, !noalias !54355
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.l = load i64, ptr %i.k, align 16, !alias.scope !54355, !noundef !67
  %i.m = icmp ult i64 %0, %i.l
  br i1 %i.m, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54355
  store ptr %i.b, ptr %i.a, align 8, !noalias !54355
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !54355
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.n, align 8, !noalias !54355
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !54355
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit: ; preds = %bb.e
  %i.o = lshr i64 %0, 6
  %i.p = and i64 %0, 63
  %i.q = load ptr, ptr %i.c, align 16, !alias.scope !54355, !nonnull !67, !noundef !67
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !54355, !noundef !67
  %i.t = shl nuw i64 1, %i.p
  %i.u = or i64 %i.s, %i.t
  store i64 %i.u, ptr %i.r, align 8, !noalias !54355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load i64, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i.i = load i64, ptr %i.x, align 8
  %i.y = load ptr, ptr %1, align 8, !nonnull !67
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %.pre34 = load i64, ptr %i.k, align 16          ; 3 uses
  %i.ab = and i64 %.pre34, 127
  %.not = icmp eq i64 %i.ab, 0
  %i.ac = lshr i64 %.pre34, 3
  %.idx = and i64 %i.ac, 2305843009213693936
  %.idx56 = select i1 %.not, i64 0, i64 16
  %i.ad = add nuw nsw i64 %.idx, %.idx56          ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, 0
  br i1 %i.ae, label %._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit
  %.pre = load ptr, ptr %i.c, align 16            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ad
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.q, %bb.p
  %lpad.loopexit17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.o, %bb.f, %bb.u
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit17, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp18, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18 unwind label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.r
  %i.ag = phi ptr [ %i.af, %.lr.ph.lr.ph ], [ %i.cd, %bb.r ]
  %.sroa.0.055 = phi double [ 0.000000e+00, %.lr.ph.lr.ph ], [ %i.bw, %bb.r ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %.lr.ph.lr.ph ], [ %i.bz, %bb.r ]
  %i.ai = phi i64 [ %.pre34, %.lr.ph.lr.ph ], [ %.sroa.02.0.copyload.i.i.i.2.i.i, %bb.r ]
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ag
  br i1 %i.ak, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.al = phi ptr [ %i.ah, %.lr.ph ], [ %i.aj, %bb.g ] ; 2 uses
  %.val2.i = load <16 x i8>, ptr %i.al, align 16, !noalias !54356
  %i.am = icmp ne <16 x i8> %.val2.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h
  %.val13 = load i64, ptr %i.v, align 16, !noundef !67 ; 2 uses
  %i.ap = and i64 %.val13, 127
  %.not.i = icmp eq i64 %i.ap, 0
  %i.aq = lshr i64 %.val13, 3
  %.idx.i = and i64 %i.aq, 2305843009213693936
  %.idx2.i = select i1 %.not.i, i64 0, i64 16
  %i.ar = add nuw nsw i64 %.idx2.i, %.idx.i       ; 2 uses
  %i.as = icmp samesign eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit
  %.val = load ptr, ptr %i.d, align 16, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val, i8 0, i64 range(i64 0, 2305843009213693953) %i.ar, i1 false)
  %.val15.pre = load i64, ptr %i.k, align 16
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit

._crit_edge:                                      ; preds = %bb.r, %bb.g, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit20 unwind label %bb.d

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit: ; preds = %.lr.ph.preheader.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit
  %.val15 = phi i64 [ %.val15.pre, %.lr.ph.preheader.i ], [ %i.ai, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  %.not.i21 = icmp eq i64 %.val15, 0
  br i1 %.not.i21, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit
  %.val14 = load ptr, ptr %i.c, align 16, !nonnull !67, !noundef !67 ; 2 uses
  %i.at = lshr i64 %.val15, 6
  %i.au = and i64 %.val15, 63
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i64
  %i.ax = add nuw nsw i64 %i.at, %i.aw            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.az = load i64, ptr %.val14, align 8, !noalias !54357, !noundef !67
  %.not22.i = icmp eq i64 %i.ax, 1                ; 2 uses
  %i.ba = add nsw i64 %i.ax, -2                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  %.sroa.020.0.i = select i1 %.not22.i, ptr @641, ptr %i.bb
  %.sroa.7.0.i = select i1 %.not22.i, i64 0, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %.sroa.020.0.i, align 8, !noalias !54357, !noundef !67
  %i.bd = shl i64 %.sroa.7.0.i, 6
  %i.be = add i64 %i.bd, 64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.7.0.i
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit: ; preds = %bb.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit
  %.sink4.i = phi i64 [ %i.az, %bb.i ], [ 0, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ]
  %.sink3.i = phi i64 [ %i.bc, %bb.i ], [ 0, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ]
  %.sink2.i = phi i64 [ %i.be, %bb.i ], [ 0, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ] ; 2 uses
  %.sink1.i = phi ptr [ %i.ay, %bb.i ], [ inttoptr (i64 8 to ptr), %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ]
  %.sink.i = phi ptr [ %i.bf, %bb.i ], [ inttoptr (i64 8 to ptr), %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ]
  br label %bb.j

bb.j:                                             ; preds = %bb.t, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit
  %.sroa.01.0 = phi ptr [ %.sink1.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit ], [ %.sroa.01.3.ph, %bb.t ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sink4.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit ], [ %.sroa.7.2.ph, %bb.t ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sink3.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit ], [ %.sroa.12.1.ph, %bb.t ] ; 5 uses
  %.sroa.15.0 = phi i64 [ 0, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit ], [ %.sroa.15.3.ph, %bb.t ] ; 2 uses
  %i.bg = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.sroa.01.1 = phi ptr [ %i.bm, %bb.k ], [ %.sroa.01.0, %bb.j ] ; 4 uses
  %.sroa.15.1 = phi i64 [ %i.bo, %bb.k ], [ %.sroa.15.0, %bb.j ]
  %i.bh = icmp eq ptr %.sroa.01.1, %.sink.i
  br i1 %i.bh, label %bb.l, label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.01.2 = phi ptr [ %.sroa.01.0, %bb.j ], [ %i.bm, %bb.k ]
  %.sroa.15.2 = phi i64 [ %.sroa.15.0, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.lcssa.i = phi i64 [ %.sroa.7.0, %bb.j ], [ %i.bn, %bb.k ] ; 3 uses
  %i.bi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i, i1 true)
  %i.bj = add i64 %.lcssa.i, -1
  %i.bk = and i64 %i.bj, %.lcssa.i
  %i.bl = add i64 %i.bi, %.sroa.15.2
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.01.1, i64 8 ; 2 uses
  %i.bn = load i64, ptr %.sroa.01.1, align 8, !noalias !54358, !noundef !67 ; 2 uses
  %i.bo = add i64 %.sroa.15.1, 64                 ; 2 uses
  %i.bp = icmp eq i64 %i.bn, 0
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.bq = icmp eq i64 %.sroa.12.0, 0
  br i1 %i.bq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0, i1 true)
  %i.bs = add i64 %.sroa.12.0, -1
  %i.bt = and i64 %i.bs, %.sroa.12.0
  %i.bu = add i64 %i.br, %.sink2.i
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %bb.m
  %.sroa.01.3.ph = phi ptr [ %.sroa.01.2, %._crit_edge.i ], [ %.sroa.01.1, %bb.m ]
  %.sroa.7.2.ph = phi i64 [ %i.bk, %._crit_edge.i ], [ 0, %bb.m ]
  %.sroa.12.1.ph = phi i64 [ %.sroa.12.0, %._crit_edge.i ], [ %i.bt, %bb.m ]
  %.sroa.15.3.ph = phi i64 [ %.sroa.15.2, %._crit_edge.i ], [ %.sink2.i, %bb.m ]
  %.sroa.4.1.i.ph = phi i64 [ %i.bl, %._crit_edge.i ], [ %i.bu, %bb.m ] ; 5 uses
  %i.bv = icmp ult i64 %.sroa.4.1.i.ph, %.val3.i.i
  br i1 %i.bv, label %bb.s, label %bb.o, !prof !77

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet10union_with(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet15difference_with(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bw = fadd double %.sroa.0.055, 1.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !54359)
  %i.bx = load <2 x i64>, ptr %i.d, align 16, !alias.scope !54360, !noalias !67
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 16, !alias.scope !54361, !noalias !54359
  %i.by = load <2 x i64>, ptr %i.c, align 16, !alias.scope !54362, !noalias !67
  store <2 x i64> %i.bx, ptr %i.c, align 16, !alias.scope !54362, !noalias !67
  store <2 x i64> %i.by, ptr %i.d, align 16, !alias.scope !54360, !noalias !67
  call void @llvm.experimental.noalias.scope.decl(metadata !54363)
  call void @llvm.experimental.noalias.scope.decl(metadata !54364)
  %.sroa.0.0.copyload.i.i.i.2.i.i = load i64, ptr %i.k, align 16, !alias.scope !54363, !noalias !54364
  %.sroa.02.0.copyload.i.i.i.2.i.i = load i64, ptr %i.v, align 16, !alias.scope !54364, !noalias !54363 ; 4 uses
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i, ptr %i.k, align 16, !alias.scope !54363, !noalias !54364
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i, ptr %i.v, align 16, !alias.scope !54364, !noalias !54363
  %i.bz = inttoptr i64 %.sroa.02.0.copyload.i.i.i.i.i to ptr ; 2 uses
  %i.ca = and i64 %.sroa.02.0.copyload.i.i.i.2.i.i, 127
  %.not59 = icmp eq i64 %i.ca, 0
  %i.cb = lshr i64 %.sroa.02.0.copyload.i.i.i.2.i.i, 3
  %.idx57 = and i64 %i.cb, 2305843009213693936
  %.idx58 = select i1 %.not59, i64 0, i64 16
  %i.cc = add nuw nsw i64 %.idx57, %.idx58        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = icmp samesign eq i64 %i.cc, 0
  br i1 %i.ce, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.n
  %i.cf = mul i64 %.val4.i.i, %.sroa.4.1.i.ph
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.cf
  store double %.sroa.0.055, ptr %i.cg, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ch = load i64, ptr %i.z, align 8, !noundef !67 ; 2 uses
  %i.ci = icmp ult i64 %.sroa.4.1.i.ph, %i.ch
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.aa, align 8, !nonnull !67, !noundef !67
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.sroa.4.1.i.ph
  invoke void @_RNvXsI_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetINtNtNtCslwFuT2d6ECx_4core3ops3bit11BitOrAssignRBw_E12bitor_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck)
          to label %bb.j unwind label %.loopexit

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.1.i.ph, i64 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1257) #61
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit20: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit25 unwind label %bb.b

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit25: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.w:                                             ; preds = %.loopexit.split-lp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16
  resume { ptr, i32 } %.pn11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54382)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !54382, !noundef !67
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !54383, !noalias !54384, !noundef !67
  %i.f = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !54385, !noundef !67
  %i.g = zext i32 %1 to i64
  %i.h = xor i64 %.val.i, %i.g
  %i.i = zext i64 %i.h to i128
  %i.j = zext i64 %i.f to i128
  %i.k = mul nuw i128 %i.j, %i.i                  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54387)
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
end_hunk_6
begin_hunk_7_@_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs_0CskcxRuJ53GpR_9rustworkx:bb.a
  br label %bb.c

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !67
  ret i64 %i.ao

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1258) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs0_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %1 to i64
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs1_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !67 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !67, !noundef !67
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1
  %i.h = load i32, ptr %i.g, align 4, !noundef !67
  ret i32 %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1256) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs2_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #20 {
bb.a:
  %i.a = trunc i64 %1 to i32
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs5_0CskcxRuJ53GpR_9rustworkx(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  %i.d = alloca [24 x i8], align 16               ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.f = load i64, ptr %.0.val, align 8, !noundef !67
  call void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load i64, ptr %.0.val, align 8, !noundef !67
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.g)
          to label %bb.c unwind label %bb.b

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18, %bb.b
  %.pn11 = phi { ptr, i32 } [ %i.h, %bb.b ], [ %.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18 ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.w

bb.b:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit20, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = load i64, ptr %.0.val, align 8, !noundef !67
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.i)
          to label %bb.e unwind label %bb.d

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18: ; preds = %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %lpad.phi, %.loopexit.split-lp ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16 unwind label %bb.w

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.b, align 8, !noalias !54407
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.l = load i64, ptr %i.k, align 16, !alias.scope !54407, !noundef !67
  %i.m = icmp ult i64 %0, %i.l
  br i1 %i.m, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54407
  store ptr %i.b, ptr %i.a, align 8, !noalias !54407
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !54407
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.n, align 8, !noalias !54407
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !54407
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit: ; preds = %bb.e
  %i.o = lshr i64 %0, 6
  %i.p = and i64 %0, 63
  %i.q = load ptr, ptr %i.c, align 16, !alias.scope !54407, !nonnull !67, !noundef !67
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !54407, !noundef !67
  %i.t = shl nuw i64 1, %i.p
  %i.u = or i64 %i.s, %i.t
  store i64 %i.u, ptr %i.r, align 8, !noalias !54407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load i64, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i.i = load i64, ptr %i.x, align 8
  %i.y = load ptr, ptr %1, align 8, !nonnull !67
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %.pre34 = load i64, ptr %i.k, align 16          ; 3 uses
  %i.ab = and i64 %.pre34, 127
  %.not = icmp eq i64 %i.ab, 0
  %i.ac = lshr i64 %.pre34, 3
  %.idx = and i64 %i.ac, 2305843009213693936
  %.idx56 = select i1 %.not, i64 0, i64 16
  %i.ad = add nuw nsw i64 %.idx, %.idx56          ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, 0
  br i1 %i.ae, label %._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit
  %.pre = load ptr, ptr %i.c, align 16            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ad
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.q, %bb.p
  %lpad.loopexit17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.o, %bb.f, %bb.u
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit17, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp18, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18 unwind label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.r
  %i.ag = phi ptr [ %i.af, %.lr.ph.lr.ph ], [ %i.cd, %bb.r ]
  %.sroa.0.055 = phi double [ 0.000000e+00, %.lr.ph.lr.ph ], [ %i.bw, %bb.r ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %.lr.ph.lr.ph ], [ %i.bz, %bb.r ]
  %i.ai = phi i64 [ %.pre34, %.lr.ph.lr.ph ], [ %.sroa.02.0.copyload.i.i.i.2.i.i, %bb.r ]
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ag
  br i1 %i.ak, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.al = phi ptr [ %i.ah, %.lr.ph ], [ %i.aj, %bb.g ] ; 2 uses
  %.val2.i = load <16 x i8>, ptr %i.al, align 16, !noalias !54408
  %i.am = icmp ne <16 x i8> %.val2.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h
  %.val13 = load i64, ptr %i.v, align 16, !noundef !67 ; 2 uses
  %i.ap = and i64 %.val13, 127
  %.not.i = icmp eq i64 %i.ap, 0
  %i.aq = lshr i64 %.val13, 3
  %.idx.i = and i64 %i.aq, 2305843009213693936
  %.idx2.i = select i1 %.not.i, i64 0, i64 16
  %i.ar = add nuw nsw i64 %.idx2.i, %.idx.i       ; 2 uses
  %i.as = icmp samesign eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit
  %.val = load ptr, ptr %i.d, align 16, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val, i8 0, i64 range(i64 0, 2305843009213693953) %i.ar, i1 false)
  %.val15.pre = load i64, ptr %i.k, align 16
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit

._crit_edge:                                      ; preds = %bb.r, %bb.g, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit20 unwind label %bb.d

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit: ; preds = %.lr.ph.preheader.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit
  %.val15 = phi i64 [ %.val15.pre, %.lr.ph.preheader.i ], [ %i.ai, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCsiCakYNGl26C_11fixedbitset5block4sse25BlockENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs0_BW_NtBW_11FixedBitSet8is_clear0ECskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  %.not.i21 = icmp eq i64 %.val15, 0
  br i1 %.not.i21, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit
  %.val14 = load ptr, ptr %i.c, align 16, !nonnull !67, !noundef !67 ; 2 uses
  %i.at = lshr i64 %.val15, 6
  %i.au = and i64 %.val15, 63
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i64
  %i.ax = add nuw nsw i64 %i.at, %i.aw            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.az = load i64, ptr %.val14, align 8, !noalias !54409, !noundef !67
  %.not22.i = icmp eq i64 %i.ax, 1                ; 2 uses
  %i.ba = add nsw i64 %i.ax, -2                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  %.sroa.020.0.i = select i1 %.not22.i, ptr @641, ptr %i.bb
  %.sroa.7.0.i = select i1 %.not22.i, i64 0, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %.sroa.020.0.i, align 8, !noalias !54409, !noundef !67
  %i.bd = shl i64 %.sroa.7.0.i, 6
  %i.be = add i64 %i.bd, 64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.7.0.i
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit: ; preds = %bb.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit
  %.sink4.i = phi i64 [ %i.az, %bb.i ], [ 0, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ]
  %.sink3.i = phi i64 [ %i.bc, %bb.i ], [ 0, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ]
  %.sink2.i = phi i64 [ %i.be, %bb.i ], [ 0, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ] ; 2 uses
  %.sink1.i = phi ptr [ %i.ay, %bb.i ], [ inttoptr (i64 8 to ptr), %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ]
  %.sink.i = phi ptr [ %i.bf, %bb.i ], [ inttoptr (i64 8 to ptr), %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit ]
  br label %bb.j

bb.j:                                             ; preds = %bb.t, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit
  %.sroa.01.0 = phi ptr [ %.sink1.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit ], [ %.sroa.01.3.ph, %bb.t ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sink4.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit ], [ %.sroa.7.2.ph, %bb.t ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sink3.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit ], [ %.sroa.12.1.ph, %bb.t ] ; 5 uses
  %.sroa.15.0 = phi i64 [ 0, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet4ones.exit ], [ %.sroa.15.3.ph, %bb.t ] ; 2 uses
  %i.bg = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.sroa.01.1 = phi ptr [ %i.bm, %bb.k ], [ %.sroa.01.0, %bb.j ] ; 4 uses
  %.sroa.15.1 = phi i64 [ %i.bo, %bb.k ], [ %.sroa.15.0, %bb.j ]
  %i.bh = icmp eq ptr %.sroa.01.1, %.sink.i
  br i1 %i.bh, label %bb.l, label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.01.2 = phi ptr [ %.sroa.01.0, %bb.j ], [ %i.bm, %bb.k ]
  %.sroa.15.2 = phi i64 [ %.sroa.15.0, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %.lcssa.i = phi i64 [ %.sroa.7.0, %bb.j ], [ %i.bn, %bb.k ] ; 3 uses
  %i.bi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i, i1 true)
  %i.bj = add i64 %.lcssa.i, -1
  %i.bk = and i64 %i.bj, %.lcssa.i
  %i.bl = add i64 %i.bi, %.sroa.15.2
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.01.1, i64 8 ; 2 uses
  %i.bn = load i64, ptr %.sroa.01.1, align 8, !noalias !54410, !noundef !67 ; 2 uses
  %i.bo = add i64 %.sroa.15.1, 64                 ; 2 uses
  %i.bp = icmp eq i64 %i.bn, 0
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.bq = icmp eq i64 %.sroa.12.0, 0
  br i1 %i.bq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0, i1 true)
  %i.bs = add i64 %.sroa.12.0, -1
  %i.bt = and i64 %i.bs, %.sroa.12.0
  %i.bu = add i64 %i.br, %.sink2.i
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %bb.m
  %.sroa.01.3.ph = phi ptr [ %.sroa.01.2, %._crit_edge.i ], [ %.sroa.01.1, %bb.m ]
  %.sroa.7.2.ph = phi i64 [ %i.bk, %._crit_edge.i ], [ 0, %bb.m ]
  %.sroa.12.1.ph = phi i64 [ %.sroa.12.0, %._crit_edge.i ], [ %i.bt, %bb.m ]
  %.sroa.15.3.ph = phi i64 [ %.sroa.15.2, %._crit_edge.i ], [ %.sink2.i, %bb.m ]
  %.sroa.4.1.i.ph = phi i64 [ %i.bl, %._crit_edge.i ], [ %i.bu, %bb.m ] ; 5 uses
  %i.bv = icmp ult i64 %.sroa.4.1.i.ph, %.val3.i.i
  br i1 %i.bv, label %bb.s, label %bb.o, !prof !77

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet10union_with(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet15difference_with(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bw = fadd double %.sroa.0.055, 1.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !54411)
  %i.bx = load <2 x i64>, ptr %i.d, align 16, !alias.scope !54412, !noalias !67
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 16, !alias.scope !54413, !noalias !54411
  %i.by = load <2 x i64>, ptr %i.c, align 16, !alias.scope !54414, !noalias !67
  store <2 x i64> %i.bx, ptr %i.c, align 16, !alias.scope !54414, !noalias !67
  store <2 x i64> %i.by, ptr %i.d, align 16, !alias.scope !54412, !noalias !67
  call void @llvm.experimental.noalias.scope.decl(metadata !54415)
  call void @llvm.experimental.noalias.scope.decl(metadata !54416)
  %.sroa.0.0.copyload.i.i.i.2.i.i = load i64, ptr %i.k, align 16, !alias.scope !54415, !noalias !54416
  %.sroa.02.0.copyload.i.i.i.2.i.i = load i64, ptr %i.v, align 16, !alias.scope !54416, !noalias !54415 ; 4 uses
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i, ptr %i.k, align 16, !alias.scope !54415, !noalias !54416
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i, ptr %i.v, align 16, !alias.scope !54416, !noalias !54415
  %i.bz = inttoptr i64 %.sroa.02.0.copyload.i.i.i.i.i to ptr ; 2 uses
  %i.ca = and i64 %.sroa.02.0.copyload.i.i.i.2.i.i, 127
  %.not59 = icmp eq i64 %i.ca, 0
  %i.cb = lshr i64 %.sroa.02.0.copyload.i.i.i.2.i.i, 3
  %.idx57 = and i64 %i.cb, 2305843009213693936
  %.idx58 = select i1 %.not59, i64 0, i64 16
  %i.cc = add nuw nsw i64 %.idx57, %.idx58        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = icmp samesign eq i64 %i.cc, 0
  br i1 %i.ce, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.n
  %i.cf = mul i64 %.val4.i.i, %.sroa.4.1.i.ph
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.cf
  store double %.sroa.0.055, ptr %i.cg, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ch = load i64, ptr %i.z, align 8, !noundef !67 ; 2 uses
  %i.ci = icmp ult i64 %.sroa.4.1.i.ph, %i.ch
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.aa, align 8, !nonnull !67, !noundef !67
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.sroa.4.1.i.ph
  invoke void @_RNvXsI_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetINtNtNtCslwFuT2d6ECx_4core3ops3bit11BitOrAssignRBw_E12bitor_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck)
          to label %bb.j unwind label %.loopexit

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.1.i.ph, i64 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1257) #61
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit20: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit25 unwind label %bb.b

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit25: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.w:                                             ; preds = %.loopexit.split-lp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit18, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit16
  resume { ptr, i32 } %.pn11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54434)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !54434, !noundef !67
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !54435, !noalias !54436, !noundef !67
  %i.f = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !54437, !noundef !67
  %i.g = zext i32 %1 to i64
  %i.h = xor i64 %.val.i, %i.g
  %i.i = zext i64 %i.h to i128
  %i.j = zext i64 %i.f to i128
  %i.k = mul nuw i128 %i.j, %i.i                  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54439)
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
end_hunk_7
begin_hunk_8_@_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph9__add_edge:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59266)
  %.not.i.i11.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i11.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i, label %.noexc12.i, !prof !77

.noexc12.i:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59267
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !59266, !noalias !59268
  store i64 %i.x, ptr %i.a, align 8, !noalias !59267
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !59267
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1648) #60
  unreachable

.noexc13.i:                                       ; preds = %.thread23.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59265
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !59265, !noundef !67
  store i64 %i.ac, ptr %i.c, align 8, !noalias !59265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59265
  store ptr %i.c, ptr %i.b, align 8, !noalias !59265
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !59265
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1648) #60
  unreachable

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !59266, !noalias !59268, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59265
  %.pre.i = zext i32 %i.ae to i64
  br label %_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph23add_edge_no_cycle_check.exit

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.u, align 8, !noalias !59261, !noundef !67 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %select.unfold.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E15edge_weight_mutCskcxRuJ53GpR_9rustworkx.exit.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E15edge_weight_mutCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.g
  %i.ag = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !59261, !noundef !67
  %i.ah = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.i, label %bb.h, !prof !125

bb.h:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E15edge_weight_mutCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.af)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit.i unwind label %.thread.i, !noalias !59261

bb.i:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E15edge_weight_mutCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @_Py_DecRef(ptr noundef nonnull %i.af) #59, !noalias !59261
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit.i

select.unfold.i:                                  ; preds = %bb.g
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1647) #61
          to label %bb.j unwind label %bb.k, !noalias !59261

bb.j:                                             ; preds = %select.unfold.i
  unreachable

.thread.i:                                        ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr %4, ptr %i.u, align 8, !noalias !59261
  br label %.body.thread

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.i, %bb.h
  store ptr %4, ptr %i.u, align 8, !noalias !59261
  br label %_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph23add_edge_no_cycle_check.exit

bb.k:                                             ; preds = %select.unfold.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %4) #63
          to label %.body.thread unwind label %bb.l, !noalias !59261

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !59261
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59271)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !59272, !noalias !59273, !nonnull !67, !noundef !67 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !59272, !noalias !59273, !noundef !67 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !59272, !noalias !59273, !noundef !67 ; 4 uses
  %i.ap = zext i32 %2 to i64                      ; 3 uses
  %i.aq = icmp ugt i64 %.val6.i.i.i, %i.ap        ; 2 uses
  br i1 %i.aq, label %bb.n, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i40 = load ptr, ptr %i.ar, align 8, !alias.scope !59272, !noalias !59273, !nonnull !67, !noundef !67
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i40, i64 %i.ap ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !noalias !59274, !noundef !67
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.n
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !59274
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.n, %bb.m
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.m ], [ -1, %bb.n ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59276)
  %i.au = zext i32 %3 to i64                      ; 2 uses
  %i.av = icmp ugt i64 %.val6.i.i.i, %i.au
  br i1 %i.av, label %bb.o, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit11.i

bb.o:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i5.i = load ptr, ptr %i.aw, align 8, !alias.scope !59277, !noalias !59278, !nonnull !67, !noundef !67
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i5.i, i64 %i.au ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !59279, !noundef !67
  %.not.i.i.i6.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i6.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit11.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i7.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i7.i: ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.0.0.copyload.i.i8.i = load i32, ptr %i.az, align 8, !noalias !59279
  %i.ba = zext i32 %.sroa.0.0.copyload.i.i8.i to i64
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i7.i, %bb.o, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.0.0.i.i3.i = phi i64 [ %i.ba, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i7.i ], [ 4294967295, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i ], [ 4294967295, %bb.o ]
  %i.bb = icmp ugt i64 %i.an, 4294967295
  br i1 %i.bb, label %.loopexit32.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit11.i, %bb.p
  %i.bc = phi i32 [ %i.bh, %bb.p ], [ %.sroa.5.0.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit11.i ]
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = icmp ugt i64 %i.an, %i.bd
  br i1 %i.be, label %bb.p, label %_RNvNtCskcxRuJ53GpR_9rustworkx7digraph23is_cycle_check_required.exit

bb.p:                                             ; preds = %.preheader.i.i
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.bd ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !59280, !noundef !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.val.i.i34 = load i32, ptr %i.bi, align 4, !noalias !59280, !noundef !67
  %i.bj = icmp eq i32 %.val.i.i34, -1
  br i1 %i.bj, label %.preheader.i.i, label %.loopexit32.i

.loopexit32.i:                                    ; preds = %bb.p, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit11.i
  %i.bk = icmp ugt i64 %i.an, %.sroa.0.0.i.i3.i
  br i1 %i.bk, label %.loopexit.i, label %_RNvNtCskcxRuJ53GpR_9rustworkx7digraph23is_cycle_check_required.exit

.loopexit.i:                                      ; preds = %.loopexit32.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i19.i = load ptr, ptr %i.bl, align 8      ; 5 uses
  br i1 %i.aq, label %bb.q, label %.loopexit61

bb.q:                                             ; preds = %.loopexit.i
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.val.i19.i, i64 %i.ap ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !59281, !noundef !67
  %.not.i.i.i35 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i35, label %.loopexit61, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i36

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i36: ; preds = %bb.q, %bb.r
  %.pn.i.i.i37 = phi ptr [ %i.bp, %bb.r ], [ %i.bm, %bb.q ]
  %.sroa.02.0.in.i.i.i38 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i37, i64 8
  %.sroa.02.0.i.i.i39 = load i32, ptr %.sroa.02.0.in.i.i.i38, align 8, !noalias !59281, !noundef !67
  %i.bo = zext i32 %.sroa.02.0.i.i.i39 to i64     ; 2 uses
  %.not.i = icmp ugt i64 %i.an, %i.bo
  br i1 %.not.i, label %bb.r, label %.loopexit61

bb.r:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i36
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %.val.i.i20.i = load i32, ptr %i.bq, align 4, !noalias !59282, !noundef !67
  %i.br = icmp eq i32 %.val.i.i20.i, %3
  br i1 %i.br, label %_RNvNtCskcxRuJ53GpR_9rustworkx7digraph23is_cycle_check_required.exit, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i36

.loopexit61:                                      ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i36, %.loopexit.i, %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59284)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59286)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val1.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !59287, !noalias !59288, !noundef !67 ; 3 uses
  %i.bv = and i64 %.val1.i.i.i.i, 127
  %.not.i.i.i.i.i = icmp eq i64 %i.bv, 0
  %i.bw = lshr i64 %.val1.i.i.i.i, 3
  %.idx.i.i.i.i.i = and i64 %i.bw, 2305843009213693936
  %.idx2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 16
  %i.bx = add nuw nsw i64 %.idx2.i.i.i.i.i, %.idx.i.i.i.i.i ; 2 uses
  %i.by = icmp samesign eq i64 %i.bx, 0
  br i1 %i.by, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.loopexit61
  %.val.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !59287, !noalias !59288, !nonnull !67, !noundef !67
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i.i.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.bx, i1 false), !noalias !59289
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.loopexit61
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i19.i) ]
  %.not.i4.i.i.i.i93 = icmp eq i64 %.val6.i.i.i, 0
  br i1 %.not.i4.i.i.i.i93, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i
  %.idx = shl nuw nsw i64 %.val6.i.i.i, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 %.idx
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %.not.i4.i.i.i.i = icmp eq ptr %.val.i19.i, %i.cb
  br i1 %.not.i4.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %i.ca = phi ptr [ %i.bz, %.lr.ph ], [ %i.cb, %bb.s ]
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -16 ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !noalias !59290, !noundef !67
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.s, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.t
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %.val.i19.i to i64
  %i.ce = sub nuw i64 %i.cc, %i.cd
  %i.cf = lshr exact i64 %i.ce, 4
  %i.cg = and i64 %i.cf, 4294967295               ; 2 uses
  %.not.i.i.i.i42 = icmp ult i64 %i.cg, %.val1.i.i.i.i
  br i1 %.not.i.i.i.i42, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.u, !prof !120

bb.u:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ch = add nuw nsw i64 %i.cg, 1
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.s, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i, %bb.u, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store i64 0, ptr %i.ci, align 8, !alias.scope !59291, !noalias !59288
  %i.cj = load i64, ptr %i.bs, align 8, !range !70, !alias.scope !59292, !noalias !59288, !noundef !67
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.v, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.v:                                             ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) dereferenceable_or_null(48) %i.bs) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.v, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !59292, !noalias !59288, !nonnull !67, !noundef !67
  store i32 %3, ptr %i.cm, align 4, !noalias !59288
  store i64 1, ptr %i.ci, align 8, !alias.scope !59292, !noalias !59288
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.cn = invoke fastcc { i32, i32 } @_RINvMs_NtNtCs68Jln09rRqb_8petgraph5visit9traversalINtB5_3DfsNtNtB9_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE4nextRINtNtBY_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Q_5types3any5PyAnyEB2L_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) dereferenceable_or_null(48) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
          to label %.noexc45 unwind label %.loopexit ; 2 uses

.noexc45:                                         ; preds = %bb.w
  %i.co = extractvalue { i32, i32 } %i.cn, 0
  %i.cp = trunc i32 %i.co to i1
  br i1 %i.cp, label %bb.x, label %_RNvNtCskcxRuJ53GpR_9rustworkx7digraph23is_cycle_check_required.exit

bb.x:                                             ; preds = %.noexc45
  %i.cq = extractvalue { i32, i32 } %i.cn, 1
  %i.cr = icmp eq i32 %i.cq, %2
  br i1 %i.cr, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.cs = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.z, label %bb.aa, !prof !104

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.z
  unreachable

_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph23add_edge_no_cycle_check.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.0.0.pre-phi.i = phi i64 [ %.pre.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.s, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.pre-phi.i, ptr %i.cu, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ac, %bb.ab, %_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph23add_edge_no_cycle_check.exit
  ret void

bb.aa:                                            ; preds = %bb.y
  store ptr @1649, ptr %i.cs, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 26, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.07.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.07.sroa.5.0..sroa_idx, align 8
  %.sroa.07.sroa.5.sroa.4.0..sroa.07.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.07.sroa.5.sroa.4.0..sroa.07.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.07.sroa.5.sroa.5.0..sroa.07.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.cs, ptr %.sroa.07.sroa.5.sroa.5.0..sroa.07.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.07.sroa.5.sroa.6.0..sroa.07.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @1650, ptr %.sroa.07.sroa.5.sroa.6.0..sroa.07.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.48.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.cx = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i47 = load i64, ptr %i.cx, align 8, !noundef !67
  %i.cy = icmp sgt i64 %.val.i.i.i.i47, 0
  br i1 %i.cy, label %bb.ac, label %bb.ab, !prof !125

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ac:                                            ; preds = %bb.aa
  tail call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

.body.thread:                                     ; preds = %.thread.i, %bb.k, %bb.ad
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.ai, %.thread.i ], [ %lpad.phi, %bb.ad ], [ %lpad.thr_comm.split-lp.i, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body54

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.v, %bb.u, %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %4) #63
          to label %.body.thread unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs1d_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_5EntryTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBN_EjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE9or_insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !68, !noundef !67
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !67 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !67, !align !98, !noundef !67 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load <2 x i32>, ptr %i.g, align 8
  store <2 x i32> %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59301)
  %.val8.i = load ptr, ptr %i.h, align 8, !alias.scope !59301, !noalias !59302, !nonnull !67, !noundef !67 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.val9.i = load i64, ptr %i.l, align 8, !alias.scope !59301, !noalias !59302, !noundef !67 ; 4 uses
  %.sroa.0.07.i.i = and i64 %.val9.i, %i.f        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val8.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !59303
  %i.n = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !80

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.b ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.o, %bb.b ], [ %i.af, %.lr.ph.i.i ]
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.0.lcssa.i.i, %i.q
  %i.s = and i64 %i.r, %.val9.i                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val8.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !59304, !noundef !67 ; 2 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.c, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i, !prof !71

bb.c:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val8.i, align 16, !noalias !59304
  %i.w = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.x, 0
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.x, i1 true)
  %i.z = zext nneg i16 %i.y to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i)
end_hunk_8
begin_hunk_9_@_RNvMs2_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtB5_12Vf2AlgorithmNtCs68Jln09rRqb_8petgraph10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2q_5types3any5PyAnyEEB1J_E4nextB9_:bb.a
  %i.ts = phi i32 [ %i.tx, %bb.dp ], [ %.sroa.5.0.i262.i, %._crit_edge.i.i.i.i.i.preheader ]
  %i.tt = zext i32 %i.ts to i64                   ; 2 uses
  %i.tu = icmp ugt i64 %i.ta, %i.tt
  br i1 %i.tu, label %bb.dp, label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.dp:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.tv = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %i.tt ; 5 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 12
  %i.tx = load i32, ptr %i.tw, align 4, !noalias !61896, !noundef !67 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %.val.i.i.i.i.i = load i32, ptr %i.ty, align 4, !noalias !61896, !noundef !67
  %i.tz = icmp eq i32 %.val.i.i.i.i.i, %i.sw
  br i1 %i.tz, label %._crit_edge.i.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ua = load ptr, ptr %i.tv, align 8, !noalias !61896, !noundef !67
  %.not42.i.i.i.i.i = icmp eq ptr %i.ua, null
  br i1 %.not42.i.i.i.i.i, label %bb.ds, label %bb.dr, !prof !71

bb.dr:                                            ; preds = %bb.dq
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %.sroa.032.0.copyload.i.i.i.i.i = load i64, ptr %i.ub, align 8, !noalias !61896
  %.sroa.032.0.i.i.i.i.i = shl i64 %.sroa.032.0.copyload.i.i.i.i.i, 32
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc.i unwind label %bb.dm, !noalias !61812

.noexc.i:                                         ; preds = %bb.ds
  unreachable

bb.dt:                                            ; preds = %bb.dr, %bb.do
  %.sroa.765.0.i = phi i32 [ %i.tx, %bb.dr ], [ %.sroa.5.0.i262.i, %bb.do ]
  %.sroa.6.0.copyload.i.i.i = phi i32 [ %.sroa.0.0.i263.i, %bb.dr ], [ %i.tq, %bb.do ]
  %.sroa.7.0.ph.i.i.i.i = phi i64 [ %.sroa.032.0.i.i.i.i.i, %bb.dr ], [ %.sroa.023.0.copyload.i.i.i.i.i, %bb.do ]
  %.sroa.0.07.ph.i.i.i.i = phi ptr [ %i.tv, %bb.dr ], [ %i.tn, %bb.do ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !61897
  %i.uc = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !61897 ; 5 uses
  %i.ud = icmp eq ptr %i.uc, null
  br i1 %i.ud, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #61
          to label %.noexc294.i unwind label %bb.dm, !noalias !61812

.noexc294.i:                                      ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %.sroa.44.12.extract.shift.i.i.i.i = lshr i64 %.sroa.7.0.ph.i.i.i.i, 32
  %.sroa.44.12.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.44.12.extract.shift.i.i.i.i to i32
  store i32 %.sroa.44.12.extract.trunc.i.i.i.i, ptr %i.uc, align 8, !noalias !61895
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store ptr %.sroa.0.07.ph.i.i.i.i, ptr %i.ue, align 8, !noalias !61895
  store i64 4, ptr %i.h, align 8, !noalias !61895
  store ptr %i.uc, ptr %.sroa.4.0..sroa_idx.i.i273.i, align 8, !noalias !61895
  store i64 1, ptr %.sroa.65.0..sroa_idx.i.i274.i, align 8, !noalias !61895
  call void @llvm.experimental.noalias.scope.decl(metadata !61898)
  call void @llvm.experimental.noalias.scope.decl(metadata !61899)
  br label %bb.dw

bb.dw:                                            ; preds = %.noexc13.i.i.i, %bb.dv
  %i.uf = phi ptr [ %i.ve, %.noexc13.i.i.i ], [ %i.uc, %bb.dv ]
  %.sroa.1360.0.copyload.i = phi i64 [ %i.vh, %.noexc13.i.i.i ], [ 1, %bb.dv ] ; 15 uses
  %i.ug = phi i32 [ %i.uz, %.noexc13.i.i.i ], [ %.sroa.765.0.i, %bb.dv ] ; 2 uses
  %i.uh = phi i32 [ %i.va, %.noexc13.i.i.i ], [ %.sroa.6.0.copyload.i.i.i, %bb.dv ] ; 2 uses
  %i.ui = zext i32 %i.uh to i64                   ; 2 uses
  %i.uj = icmp ugt i64 %i.ta, %i.ui
  br i1 %i.uj, label %bb.dx, label %._crit_edge.i.i.i.i.i.i275.i.preheader

._crit_edge.i.i.i.i.i.i275.i.preheader:           ; preds = %bb.dx, %bb.dw
  br label %._crit_edge.i.i.i.i.i.i275.i

bb.dx:                                            ; preds = %bb.dw
  %i.uk = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %i.ui ; 4 uses
  %i.ul = load ptr, ptr %i.uk, align 8, !noalias !61900, !noundef !67
  %.not.i.i.i.i.i.i291.i = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i.i.i.i291.i, label %._crit_edge.i.i.i.i.i.i275.i.preheader, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.un = load i32, ptr %i.um, align 8, !noalias !61900, !noundef !67
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %.sroa.023.0.copyload.i.i.i.i.i.i292.i = load i64, ptr %i.uo, align 8, !noalias !61900
  br label %bb.ed

._crit_edge.i.i.i.i.i.i275.i:                     ; preds = %._crit_edge.i.i.i.i.i.i275.i.preheader, %bb.dz
  %i.up = phi i32 [ %i.uu, %bb.dz ], [ %i.ug, %._crit_edge.i.i.i.i.i.i275.i.preheader ]
  %i.uq = zext i32 %i.up to i64                   ; 2 uses
  %i.ur = icmp ugt i64 %i.ta, %i.uq
  br i1 %i.ur, label %bb.dz, label %bb.ef

bb.dz:                                            ; preds = %._crit_edge.i.i.i.i.i.i275.i
  %i.us = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %i.uq ; 5 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 12
  %i.uu = load i32, ptr %i.ut, align 4, !noalias !61900, !noundef !67 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %.val.i.i.i.i.i.i276.i = load i32, ptr %i.uv, align 4, !noalias !61900, !noundef !67
  %i.uw = icmp eq i32 %.val.i.i.i.i.i.i276.i, %i.sw
  br i1 %i.uw, label %._crit_edge.i.i.i.i.i.i275.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ux = load ptr, ptr %i.us, align 8, !noalias !61900, !noundef !67
  %.not42.i.i.i.i.i.i277.i = icmp eq ptr %i.ux, null
  br i1 %.not42.i.i.i.i.i.i277.i, label %bb.ec, label %bb.eb, !prof !71

bb.eb:                                            ; preds = %bb.ea
  %i.uy = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %.sroa.032.0.copyload.i.i.i.i.i.i278.i = load i64, ptr %i.uy, align 8, !noalias !61900
  %.sroa.032.0.i.i.i.i.i.i279.i = shl i64 %.sroa.032.0.copyload.i.i.i.i.i.i278.i, 32
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i289.i, !noalias !61895

.noexc.i.i.i:                                     ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.eb, %bb.dy
  %i.uz = phi i32 [ %i.ug, %bb.dy ], [ %i.uu, %bb.eb ]
  %i.va = phi i32 [ %i.un, %bb.dy ], [ %i.uh, %bb.eb ]
  %.sroa.7.0.ph.i.i.i.i.i.i = phi i64 [ %.sroa.023.0.copyload.i.i.i.i.i.i292.i, %bb.dy ], [ %.sroa.032.0.i.i.i.i.i.i279.i, %bb.eb ]
  %.sroa.0.07.ph.i.i.i.i.i.i = phi ptr [ %i.uk, %bb.dy ], [ %i.us, %bb.eb ]
  %.sroa.44.12.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.7.0.ph.i.i.i.i.i.i, 32
  %.sroa.44.12.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.44.12.extract.shift.i.i.i.i.i.i to i32
  %i.vb = icmp samesign ult i64 %.sroa.1360.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.vb)
  %i.vc = load i64, ptr %i.h, align 8, !range !70, !alias.scope !61901, !noalias !61902, !noundef !67
  %i.vd = icmp eq i64 %.sroa.1360.0.copyload.i, %i.vc
  br i1 %i.vd, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i280.i, label %.noexc13.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i280.i: ; preds = %bb.ed
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.1360.0.copyload.i, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc13_crit_edge.i.i.i unwind label %.loopexit.i.i281.i, !noalias !61895

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc13_crit_edge.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i280.i
  %.pre.i.i288.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i273.i, align 8, !alias.scope !61901, !noalias !61902
  br label %.noexc13.i.i.i

.noexc13.i.i.i:                                   ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc13_crit_edge.i.i.i, %bb.ed
  %i.ve = phi ptr [ %.pre.i.i288.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc13_crit_edge.i.i.i ], [ %i.uf, %bb.ed ] ; 2 uses
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %i.ve, i64 %.sroa.1360.0.copyload.i ; 2 uses
  store i32 %.sroa.44.12.extract.trunc.i.i.i.i.i.i, ptr %i.vf, align 8, !noalias !61903
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store ptr %.sroa.0.07.ph.i.i.i.i.i.i, ptr %i.vg, align 8, !noalias !61903
  %i.vh = add nuw nsw i64 %.sroa.1360.0.copyload.i, 1 ; 2 uses
  store i64 %i.vh, ptr %.sroa.65.0..sroa_idx.i.i274.i, align 8, !alias.scope !61901, !noalias !61902
  br label %bb.dw

.loopexit.i.i281.i:                               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1y_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i280.i
  %lpad.loopexit.i.i282.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

.loopexit.split-lp.i.i289.i:                      ; preds = %bb.ec
  %lpad.loopexit.split-lp.i.i290.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ee:                                            ; preds = %.loopexit.split-lp.i.i289.i, %.loopexit.i.i281.i
  %lpad.phi.i.i283.i = phi { ptr, i32 } [ %lpad.loopexit.i.i282.i, %.loopexit.i.i281.i ], [ %lpad.loopexit.split-lp.i.i290.i, %.loopexit.split-lp.i.i289.i ] ; 2 uses
  %.val.i.i284.i = load i64, ptr %i.h, align 8, !noalias !61895 ; 2 uses
  %i.vi = icmp eq i64 %.val.i.i284.i, 0
  br i1 %i.vi, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i285.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i285.i: ; preds = %bb.ee
  %.val11.i.i286.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i273.i, align 8, !noalias !61895, !nonnull !67, !noundef !67
  %i.vj = shl nuw i64 %.val.i.i284.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i286.i, i64 noundef %i.vj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !61895
  br label %.body.i

bb.ef:                                            ; preds = %._crit_edge.i.i.i.i.i.i275.i
  %.sroa.058.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !61904 ; 6 uses
  %.sroa.859.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i273.i, align 8, !noalias !61904, !nonnull !67, !noundef !67 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !61895
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.895.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1277.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.839.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !61905)
  call void @llvm.experimental.noalias.scope.decl(metadata !61906)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !61907
  %i.vk = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 576460752303423488) %.sroa.1360.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !61907 ; 10 uses
  %i.vl = icmp eq ptr %i.vk, null
  br i1 %i.vl, label %bb.eg, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 576460752303423488) %.sroa.1360.0.copyload.i) #61
          to label %.noexc297.i unwind label %bb.ev, !noalias !61812

.noexc297.i:                                      ; preds = %bb.eg
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ef
  %.not.i.i295.i = icmp eq i64 %.sroa.1360.0.copyload.i, 1
  br i1 %.not.i.i295.i, label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.vm = add nsw i64 %.sroa.1360.0.copyload.i, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vk, i8 1, i64 range(i64 0, -1) %i.vm, i1 false), !noalias !61908
  %i.vn = getelementptr i8, ptr %i.vk, i64 %.sroa.1360.0.copyload.i
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.vn, i64 -1
  br label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !61895
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.895.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1277.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.839.0.i) ]
  %i.vo = icmp eq i64 %.sroa.1340.0.i, 0
  br i1 %i.vo, label %.thread553.i, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.thread179.i

_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %._crit_edge.thread.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.0.lcssa27.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %i.vk, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecbE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  store i8 1, ptr %.sroa.0.0.lcssa27.i.i.i.i, align 1, !noalias !61908
  %.idx80.i.i = shl nuw nsw i64 %.sroa.1340.0.i, 4
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.839.0.i, i64 %.idx80.i.i
  %i.vq = icmp eq i64 %.sroa.1340.0.i, 0
  br i1 %i.vq, label %.loopexit557.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %bb.ep, %bb.ek
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.en, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.wg, %bb.en ], [ %lpad.loopexit.i.i, %.loopexit.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef range(i64 0, 576460752303423488) %.sroa.1360.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !61909
  br label %.body298.i

.lr.ph.i.i:                                       ; preds = %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, %bb.eu
  %.sroa.014.066.i.i = phi ptr [ %i.vr, %bb.eu ], [ %.sroa.839.0.i, %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread.i.i ] ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.014.066.i.i, i64 16 ; 2 uses
  %i.vs = load i32, ptr %.sroa.014.066.i.i, align 8, !alias.scope !61905, !noalias !61910, !noundef !67
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.014.066.i.i, i64 8
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !61905, !noalias !61910, !nonnull !67, !align !98, !noundef !67
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ei, %.lr.ph.i.i
  %.sroa.10.064.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.vv, %bb.ei ] ; 4 uses
  %i.vv = add nuw nsw i64 %.sroa.10.064.i.i, 1    ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vk, i64 %.sroa.10.064.i.i
  %i.vx = load i8, ptr %i.vw, align 1, !range !69, !noalias !61909, !noundef !67
  %i.vy = trunc nuw i8 %i.vx to i1
  br i1 %i.vy, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.et, %bb.eh
  %exitcond.not.i.i = icmp eq i64 %i.vv, %.sroa.1360.0.copyload.i
  br i1 %exitcond.not.i.i, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.i, label %bb.eh

bb.ej:                                            ; preds = %bb.eh
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.859.0.copyload.i, i64 %.sroa.10.064.i.i ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8, !alias.scope !61906, !noalias !61911, !nonnull !67, !align !98, !noundef !67
  %i.wc = load i32, ptr %i.vz, align 8, !alias.scope !61906, !noalias !61911, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.86.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1045.i.i)
  %.val26.i.i = load ptr, ptr %i.vu, align 8, !noalias !61909 ; 2 uses
  %.val27.i.i = load ptr, ptr %i.wb, align 8, !noalias !61909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !61909
  %i.wd = icmp eq i32 %i.vs, %i.wc
  br i1 %i.wd, label %bb.ek, label %bb.et

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !61912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !61912
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i.i) ]
  invoke fastcc void @_RINvMsq_NtCsi0YPOvDEjiZ_4pyo38instanceINtB6_2PyNtNtNtB8_5types3any5PyAnyE5call1TRBA_B1g_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.e, ptr nonnull %.val71, ptr nonnull %.val26.i.i, ptr %.val27.i.i)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !61909

.noexc.i.i:                                       ; preds = %bb.ek
  %i.we = load i64, ptr %i.e, align 8, !range !68, !noalias !61912, !noundef !67
  %i.wf = trunc nuw i64 %i.we to i1
  %.sroa.07.0.copyload.i.i.i.i = load ptr, ptr %i.bh, align 8, !noalias !61912 ; 5 uses
  br i1 %i.wf, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.410.0..sroa_idx.i.i87.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.48.0..sroa_idx.i.i86.i.i, i64 56, i1 false), !noalias !61913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61912
  store ptr %.sroa.07.0.copyload.i.i.i.i, ptr %i.bi, align 8, !noalias !61913
  store i8 1, ptr %i.g, align 8, !noalias !61913
  br label %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i.i.i

bb.em:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61912
  store ptr %.sroa.07.0.copyload.i.i.i.i, ptr %i.f, align 8, !noalias !61912
  invoke void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods9is_truthy(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.eo unwind label %bb.en, !noalias !61913

bb.en:                                            ; preds = %bb.em
  %i.wg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.sroa.07.0.copyload.i.i.i.i) #63
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i unwind label %bb.er, !noalias !61912

bb.eo:                                            ; preds = %bb.em
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !61912, !noundef !67
  %i.wh = icmp sgt i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.wh, label %bb.eq, label %bb.ep, !prof !125

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.07.0.copyload.i.i.i.i)
          to label %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i.i.i unwind label %.loopexit.i.i, !noalias !61909

bb.eq:                                            ; preds = %bb.eo
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.07.0.copyload.i.i.i.i) #59, !noalias !61912
  br label %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i.i.i

bb.er:                                            ; preds = %bb.en
  %i.wi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !61912
  unreachable

_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i.i.i: ; preds = %bb.eq, %bb.ep, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !61912
  %i.wj = load i8, ptr %i.g, align 8, !range !69, !noalias !61913, !noundef !67
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %.split.i, label %bb.es

bb.es:                                            ; preds = %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i.i.i
  %i.wl = load i8, ptr %i.bj, align 1, !range !69, !noalias !61913, !noundef !67
  %i.wm = trunc nuw i8 %i.wl to i1
  br i1 %i.wm, label %bb.eu, label %bb.et

.split.i:                                         ; preds = %_RNvXs1_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2INtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1v_5types3any5PyAnyEEINtB5_15SemanticMatcherB1q_E2eq.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.1045.8..sroa_idx46.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i64 64, i1 false), !noalias !61909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.86.8..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.1045.8..sroa_idx46.i.i, i64 64, i1 false), !noalias !61909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.1277.8..sroa_idx78.i, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.86.8..sroa_idx.i.i, i64 64, i1 false), !noalias !61914
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86.i.i)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef range(i64 0, 576460752303423488) %.sroa.1360.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !61909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.895.8..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.1277.8..sroa_idx78.i, i64 64, i1 false), !noalias !61812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1277.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.21.8..sroa_idx99, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.895.8..sroa_idx.i, i64 64, i1 false), !noalias !61811
  br label %bb.ew

bb.et:                                            ; preds = %bb.es, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86.i.i)
  br label %bb.ei

bb.eu:                                            ; preds = %bb.es
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vk, i64 %.sroa.10.064.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86.i.i)
  store i8 0, ptr %i.wn, align 1, !noalias !61909
  %i.wo = icmp eq ptr %i.vr, %i.vp
  br i1 %i.wo, label %.loopexit557.i, label %.lr.ph.i.i

bb.ev:                                            ; preds = %bb.eg
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.body298.i

.body298.i:                                       ; preds = %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i
  %eh.lpad-body299.i = phi { ptr, i32 } [ %i.wp, %bb.ev ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ] ; 2 uses
  %i.wq = icmp eq i64 %.sroa.058.0.copyload.i, 0
  br i1 %i.wq, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i300.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i300.i: ; preds = %.body298.i
  %i.wr = shl nuw i64 %.sroa.058.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.859.0.copyload.i, i64 noundef %i.wr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !61812
  br label %.body.i

.thread553.i:                                     ; preds = %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1277.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.895.i)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB22_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit303.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.i: ; preds = %bb.ei
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef range(i64 0, 576460752303423488) %.sroa.1360.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !61909
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.thread179.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.thread179.i: ; preds = %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.i
  %.sroa.859.0111138184.i = phi ptr [ %.sroa.859.0.copyload.i, %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.i ], [ inttoptr (i64 8 to ptr), %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.058.0103140183.i = phi i64 [ %.sroa.058.0.copyload.i, %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.i ], [ 0, %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1277.i)
  br label %bb.ew

.loopexit557.i:                                   ; preds = %bb.eu, %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef range(i64 0, 576460752303423488) %.sroa.1360.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !61909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1277.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.895.i)
  %i.ws = icmp eq i64 %.sroa.058.0.copyload.i, 0
  br i1 %i.ws, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB22_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit303.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i302.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i302.i: ; preds = %.loopexit557.i
  %i.wt = shl nuw i64 %.sroa.058.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.859.0.copyload.i, i64 noundef %i.wt, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !61812
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB22_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit303.i

bb.ew:                                            ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.thread179.i, %.split.i
  %.sroa.098.0 = phi i1 [ true, %.split.i ], [ false, %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.thread179.i ]
  %.sroa.058.0103139.i = phi i64 [ %.sroa.058.0.copyload.i, %.split.i ], [ %.sroa.058.0103140183.i, %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.thread179.i ] ; 2 uses
  %.sroa.859.0111137.i = phi ptr [ %.sroa.859.0.copyload.i, %.split.i ], [ %.sroa.859.0111138184.i, %_RINvNtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf29is_subsetTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1P_5types3any5PyAnyEENCNvMs2_B2_INtB2_12Vf2AlgorithmNtB10_10UndirectedINtNtCslwFuT2d6ECx_4core6option6OptionB1K_EB3z_E11is_feasible0EB6_.exit.thread.thread179.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.895.i)
end_hunk_9
begin_hunk_10_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity30___pyfunction_is_semi_connected:bb.a
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110358
  br i1 %.sroa.09.2.i, label %bb.gg, label %.body.thread

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.thread: ; preds = %bb.gb
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  %i.cl = shl nuw nsw i64 %.sroa.4.0.i523.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110358
  br label %bb.gg

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.q
  %lpad.loopexit218.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke625.i, %_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphuuE12try_add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, %.invoke.i, %bb.fw
  %lpad.loopexit.split-lp219.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !110363)
  %i.cm = trunc i64 %i.cd to i32
  %exitcond = icmp eq i64 %i.cd, 4294967295
  br i1 %exitcond, label %bb.gd, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !110364)
  %i.cn = load i64, ptr %i.ah, align 8, !range !70, !alias.scope !110365, !noalias !110366, !noundef !67
  %i.co = icmp eq i64 %i.cd, %i.cn
  br i1 %i.co, label %bb.q, label %bb.ge

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeuEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ah) #62
          to label %._crit_edge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !110358

._crit_edge.i:                                    ; preds = %bb.q
  %.pre.i = load ptr, ptr %.sroa.439.0..sroa_idx.i, align 8, !alias.scope !110365, !noalias !110366
  br label %bb.ge

bb.r:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !110356, !noalias !110357, !nonnull !67, !noundef !67 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !110356, !noalias !110357, !noundef !67 ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cs
  br label %bb.s

bb.s:                                             ; preds = %.backedge, %bb.r
  %i.cu = phi i64 [ 0, %bb.r ], [ %i.cy, %.backedge ] ; 2 uses
  %i.cv = phi ptr [ %i.cq, %bb.r ], [ %i.cx, %.backedge ] ; 3 uses
  %i.cw = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cw, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cy = add i64 %i.cu, 1
  %.val.i77.i = load ptr, ptr %i.cv, align 8, !noalias !110367, !noundef !67
  %.not.i.not.i78.i = icmp eq ptr %.val.i77.i, null
  br i1 %.not.i.not.i78.i, label %.backedge, label %bb.u

.backedge:                                        ; preds = %bb.t, %_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphuuE8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i
  br label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.cz = and i64 %i.cu, 4294967295               ; 2 uses
  %i.da = icmp ugt i64 %i.cs, %i.cz
  br i1 %i.da, label %bb.v, label %bb.fw

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cz ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !110368, !noundef !67
  %.not.i82.i = icmp eq ptr %i.dc, null
  br i1 %.not.i82.i, label %bb.fw, label %bb.fv

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !110358
  %.sroa.0157.0.copyload.i = load i64, ptr %i.ah, align 8, !noalias !110358 ; 6 uses
  %.sroa.5158.0.copyload.i = load ptr, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !110358 ; 9 uses
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !110358 ; 20 uses
  %.sroa.10160.0.copyload.i = load i64, ptr %i.bk, align 8, !noalias !110358 ; 8 uses
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !110358 ; 12 uses
  %.sroa.16.0.copyload.i = load i64, ptr %.sroa.543.0..sroa_idx.i, align 8, !noalias !110358 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !110369
  call void @llvm.experimental.noalias.scope.decl(metadata !110370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !110371
  %i.dd = icmp ult i64 %.sroa.9.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.dd)
  %.sink258.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink258.i.sroa.gep188.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sink258.i.sroa.gep190.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sink258.i.sroa.gep191.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sink258.i.sroa.gep193.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink258.i.sroa.gep194.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %.sroa.9.0.copyload.i)
          to label %.noexc83.i.i unwind label %bb.bl, !noalias !110372

.noexc83.i.i:                                     ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !110371
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %.sroa.9.0.copyload.i)
          to label %bb.aa unwind label %bb.x, !noalias !110371

bb.x:                                             ; preds = %.noexc83.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.thread.i.i unwind label %bb.y, !noalias !110371

bb.y:                                             ; preds = %bb.x
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !110371
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit89.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i88.i.i.i, %.thread117.i.i.i
  br i1 %.not199.i.i.i, label %bb.bi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i

bb.z:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  br i1 %.sroa.016.2.i.i.i, label %.thread117.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i

.thread123.i.i.i:                                 ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i

bb.aa:                                            ; preds = %.noexc83.i.i
  store i64 0, ptr %i.aa, align 8, !alias.scope !110370, !noalias !110373
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !110370, !noalias !110373
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !110370, !noalias !110373
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !110373
  %i.di = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !110373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !110371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !110371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !110369
  store i64 0, ptr %i.z, align 8, !noalias !110369
  %i.dj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.dj, align 8, !noalias !110369
  %i.dk = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  store i64 0, ptr %i.dk, align 8, !noalias !110369
  %.not204.not.i.i.i = icmp eq i64 %.sroa.9.0.copyload.i, 0 ; 5 uses
  br i1 %.not204.not.i.i.i, label %._crit_edge.i.i86.i, label %.lr.ph.i.i83.i

.lr.ph.i.i83.i:                                   ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  br label %bb.ab

.thread117.loopexit.i.i.i:                        ; preds = %bb.bf
  %lpad.loopexit157.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i.i.i

.thread117.loopexit.split-lp.loopexit.i.i.i:      ; preds = %bb.bh
  %lpad.loopexit161.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i.i.i

.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.au
  %lpad.loopexit164.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i.i.i

.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i.i.i

bb.ab:                                            ; preds = %.backedge166.i.i.i, %.lr.ph.i.i83.i
  %.sroa.0.0205.i.i.i = phi i64 [ 0, %.lr.ph.i.i83.i ], [ %i.dn, %.backedge166.i.i.i ] ; 4 uses
  %i.dn = add nuw nsw i64 %.sroa.0.0205.i.i.i, 1  ; 2 uses
  %i.do = trunc i64 %.sroa.0.0205.i.i.i to i32
  %.val39.i.i.i = load i64, ptr %i.dl, align 8, !noalias !110369, !noundef !67
  %i.dp = and i64 %.sroa.0.0205.i.i.i, 4294967295 ; 2 uses
  %i.dq = icmp ugt i64 %.val39.i.i.i, %i.dp
  br i1 %i.dq, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i

._crit_edge.i.i86.i:                              ; preds = %.backedge166.i.i.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !110369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !110369
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false), !noalias !110369
  call void @llvm.experimental.noalias.scope.decl(metadata !110374)
  call void @llvm.experimental.noalias.scope.decl(metadata !110375)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 6 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !110376, !noalias !110369, !noundef !67 ; 3 uses
  %i.dt = and i64 %.val1.i.i.i.i.i, 127
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  %i.du = lshr i64 %.val1.i.i.i.i.i, 3
  %.idx.i.i.i.i.i.i = and i64 %i.du, 2305843009213693936
  %.idx2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 16
  %i.dv = add nuw nsw i64 %.idx2.i.i.i.i.i.i, %.idx.i.i.i.i.i.i ; 2 uses
  %i.dw = icmp samesign eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i.i86.i
  %.val.i.i48.i.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !110376, !noalias !110369, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i48.i.i.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.dv, i1 false), !noalias !110377
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %._crit_edge.i.i86.i
  %i.dx = icmp ugt i64 %.sroa.9.0.copyload.i, %.val1.i.i.i.i.i
  br i1 %i.dx, label %bb.ac, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i, !prof !71

bb.ac:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr, i64 noundef %.sroa.9.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %bb.ad, !noalias !110369

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ad
  %.sroa.016.2.i.i.i = phi i1 [ true, %bb.ad ], [ false, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ false, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i ]
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.eb, %bb.ad ], [ %.pn.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.pn.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110378)
  %.val.i133.i.i = load i64, ptr %i.y, align 8, !alias.scope !110378, !noalias !110369 ; 2 uses
  %i.dy = icmp eq i64 %.val.i133.i.i, 0
  br i1 %i.dy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i134.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i134.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val1.i135.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !110378, !noalias !110369, !nonnull !67, !noundef !67
  %i.ea = shl nuw i64 %.val.i133.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i135.i.i, i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110379
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i134.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %bb.z unwind label %bb.at, !noalias !110372

bb.ad:                                            ; preds = %bb.ac
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.ac, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 8 uses
  store i64 0, ptr %i.ec, align 8, !noalias !110369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !110369
  store i64 0, ptr %i.x, align 8, !noalias !110369
  %i.ed = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ed, align 8, !noalias !110369
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.ee, align 8, !noalias !110369
  %i.ef = load ptr, ptr %i.dj, align 8, !noalias !110369, !nonnull !67, !noundef !67 ; 4 uses
  %i.eg = load i64, ptr %i.z, align 8, !range !70, !noalias !110369, !noundef !67 ; 4 uses
  %i.eh = load i64, ptr %i.dk, align 8, !noalias !110369, !noundef !67 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 2305843009213693952
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp eq i64 %i.eh, 0
  br i1 %i.ej, label %._crit_edge210.i.i.i, label %.lr.ph209.i.i.i

.lr.ph209.i.i.i:                                  ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.idx.i.i.i = shl nuw nsw i64 %i.eh, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  br label %bb.af

.body.i.i.i:                                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %.loopexit.split-lp.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i67.i.i.i, %bb.ar, %bb.ae
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ie, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i67.i.i.i ], [ %i.eq, %bb.ae ], [ %i.ie, %bb.ar ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.phi.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ] ; 2 uses
  %i.eo = icmp eq i64 %i.eg, 0
  br i1 %i.eo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %.body.i.i.i
  %i.ep = shl nuw i64 %i.eg, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110380
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.ae:                                            ; preds = %bb.ag
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.af:                                            ; preds = %.backedge.i.i.i, %.lr.ph209.i.i.i
  %i.er = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph209.i.i.i ], [ %i.ik, %.backedge.i.i.i ] ; 2 uses
  %i.es = phi i64 [ 0, %.lr.ph209.i.i.i ], [ %i.il, %.backedge.i.i.i ] ; 4 uses
  %.sroa.10.0208.i.i.i = phi ptr [ %i.ek, %.lr.ph209.i.i.i ], [ %i.et, %.backedge.i.i.i ]
  %i.et = getelementptr inbounds i8, ptr %.sroa.10.0208.i.i.i, i64 -4 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4, !noalias !110381, !noundef !67 ; 2 uses
  %.val36.i.i.i = load i64, ptr %i.ds, align 8, !noalias !110369, !noundef !67
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %i.ew = icmp ugt i64 %.val36.i.i.i, %i.ev
  br i1 %i.ew, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i

._crit_edge210.i.i.i:                             ; preds = %.backedge.i.i.i, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.7177.0.copyload.i = phi i64 [ 0, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphuuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.il, %.backedge.i.i.i ] ; 7 uses
  %i.ex = icmp eq i64 %i.eg, 0
  br i1 %i.ex, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i53.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i53.i.i.i: ; preds = %._crit_edge210.i.i.i
  %i.ey = shl nuw i64 %i.eg, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110382
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i, %.body.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !110383)
  %.val.i126.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !110383, !noalias !110369, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.ee, align 8, !alias.scope !110383, !noalias !110369, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110384), !noalias !110385
  %i.ez = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ez, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i127.i.i

.lr.ph.i.i.i127.i.i:                              ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i132.i.i
  %.sroa.0.012.i.i.i128.i.i = phi i64 [ %i.fb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i132.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %.val.i126.i.i, i64 %.sroa.0.012.i.i.i128.i.i ; 2 uses
  %i.fb = add nuw nsw i64 %.sroa.0.012.i.i.i128.i.i, 1 ; 2 uses
  %.val8.i.i.i129.i.i = load i64, ptr %i.fa, align 8, !alias.scope !110384, !noalias !110386 ; 2 uses
  %i.fc = icmp eq i64 %.val8.i.i.i129.i.i, 0
  br i1 %i.fc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i132.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i130.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i130.i.i: ; preds = %.lr.ph.i.i.i127.i.i
  %i.fd = getelementptr i8, ptr %i.fa, i64 8
  %.val9.i.i.i131.i.i = load ptr, ptr %i.fd, align 8, !alias.scope !110384, !noalias !110386, !nonnull !67, !noundef !67
  %i.fe = shl nuw i64 %.val8.i.i.i129.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i131.i.i, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110387
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i132.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i132.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i130.i.i, %.lr.ph.i.i.i127.i.i
  %i.ff = icmp eq i64 %i.fb, %.val1.i.i.i
  br i1 %i.ff, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i127.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i132.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.val2.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !110383, !noalias !110369 ; 2 uses
  %i.fg = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.fg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.fh = mul nuw i64 %.val2.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i126.i.i, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110386
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i53.i.i.i, %._crit_edge210.i.i.i
  %.sroa.0175.0.copyload.i = load i64, ptr %i.x, align 8, !noalias !110388 ; 5 uses
  %.sroa.5176.0.copyload.i = load ptr, ptr %i.ed, align 8, !noalias !110388 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !110369
  call void @llvm.experimental.noalias.scope.decl(metadata !110389)
  %.val.i55.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !110389, !noalias !110369 ; 2 uses
  %i.fi = icmp eq i64 %.val.i55.i.i.i, 0
  br i1 %i.fi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !110389, !noalias !110369, !nonnull !67, !noundef !67
  %i.fk = shl nuw i64 %.val.i55.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110390
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %.thread123.i.i.i, !noalias !110369

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !110369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !110369
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %bb.bm unwind label %bb.bl, !noalias !110372

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.i.i.i: ; preds = %bb.af
  %.val35.i.i.i = load ptr, ptr %i.dr, align 8, !noalias !110369, !nonnull !67, !noundef !67
  %i.fl = lshr i64 %i.ev, 6
  %i.fm = and i64 %i.ev, 63
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.val35.i.i.i, i64 %i.fl
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !110369, !noundef !67
  %i.fp = lshr i64 %i.fo, %i.fm
  %i.fq = trunc i64 %i.fp to i1
  br i1 %i.fq, label %.backedge.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.i.i.i, %bb.af
  store i64 0, ptr %i.ec, align 8, !noalias !110369
  %i.fr = load i64, ptr %i.y, align 8, !range !70, !alias.scope !110391, !noalias !110369, !noundef !67
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #62
          to label %bb.ah unwind label %bb.ae, !noalias !110369

bb.ah:                                            ; preds = %bb.ag, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i
  %i.ft = load ptr, ptr %i.el, align 8, !alias.scope !110391, !noalias !110369, !nonnull !67, !noundef !67
  store i32 %i.eu, ptr %i.ft, align 4, !noalias !110369
  store i64 1, ptr %i.ec, align 8, !alias.scope !110391, !noalias !110369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !110369
  store i64 0, ptr %i.w, align 8, !noalias !110369
  store ptr inttoptr (i64 4 to ptr), ptr %i.em, align 8, !noalias !110369
  store i64 0, ptr %i.en, align 8, !noalias !110369
  %i.fu = load i64, ptr %i.ds, align 8, !alias.scope !110392, !noalias !110393
  %i.fv = load ptr, ptr %i.dr, align 8, !alias.scope !110392, !noalias !110393, !nonnull !67
  %i.fw = load ptr, ptr %i.el, align 8, !noalias !110369, !nonnull !67
  br label %.lr.ph549

.lr.ph549:                                        ; preds = %bb.ah, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit65.i.i.i
  %i.fx = phi ptr [ %i.fw, %bb.ah ], [ %i.ia, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit65.i.i.i ]
  %i.fy = phi ptr [ %i.fv, %bb.ah ], [ %i.hz, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit65.i.i.i ]
  %i.fz = phi i64 [ %i.fu, %bb.ah ], [ %i.hy, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit65.i.i.i ]
  %.pre.i.i.i.i551 = phi i64 [ 1, %bb.ah ], [ %.pre.i.pre.i.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit65.i.i.i ]
  %i.ga = load i64, ptr %i.y, align 8, !range !70, !noalias !110369
  call void @llvm.experimental.noalias.scope.decl(metadata !110394)
  br label %bb.aj

end_hunk_10
begin_hunk_11_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity30___pyfunction_is_semi_connected:bb.a
  %i.pw = getelementptr inbounds nuw [32 x i8], ptr %i.pv, i64 %i.mq ; 5 uses
  store i64 0, ptr %i.pw, align 8, !noalias !110465
  %.sroa.4.0..sroa_idx.i97.i.i = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i97.i.i, align 8, !noalias !110466
  %.sroa.6.8..sroa.4.0..sroa_idx.i97.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  store i64 0, ptr %.sroa.6.8..sroa.4.0..sroa_idx.i97.sroa_idx.i.i, align 8, !noalias !110466
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  store i32 -1, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !110465
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pw, i64 28
  store i32 -1, ptr %.sroa.617.0..sroa_idx.i.i.i, align 4, !noalias !110465
  %i.px = add nuw nsw i64 %i.mq, 1                ; 3 uses
  store i64 %i.px, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !110437, !noalias !110438
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  %i.py = icmp ult i64 %.sroa.7.sroa.5.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.py)
  %.idx303.i.i = shl nuw nsw i64 %.sroa.7.sroa.5.0.copyload.i.i, 2
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.0.0.copyload.i.i, i64 %.idx303.i.i
  %i.qa = icmp eq i64 %.sroa.7.sroa.5.0.copyload.i.i, 0
  br i1 %i.qa, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.cz:                                            ; preds = %bb.db
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qc = icmp eq i64 %.sroa.0144.0.copyload145.i.i, 0
  br i1 %i.qc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i.sink.split

._crit_edge.i.i:                                  ; preds = %bb.da, %bb.cy
  %i.qd = icmp eq i64 %.sroa.0144.0.copyload145.i.i, 0
  br i1 %i.qd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit123.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i122.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i122.i.i: ; preds = %._crit_edge.i.i
  %i.qe = shl nuw i64 %.sroa.0144.0.copyload145.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %i.qe, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110467
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit123.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit123.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i122.i.i, %._crit_edge.i.i
  %i.qf = icmp eq ptr %i.ms, %i.mo
  br i1 %i.qf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i

.lr.ph.i.i:                                       ; preds = %bb.cy, %bb.da
  %.sroa.5152.0291.i.i = phi ptr [ %i.qj, %bb.da ], [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.cy ] ; 2 uses
  %i.qg = load i32, ptr %.sroa.5152.0291.i.i, align 4, !noalias !110468, !noundef !67
  %i.qh = zext i32 %i.qg to i64                   ; 3 uses
  %i.qi = icmp samesign ugt i64 %.sroa.9.0.copyload.i, %i.qh
  br i1 %i.qi, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.lr.ph.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.5152.0291.i.i, i64 4 ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.qh
  store i32 %i.mt, ptr %i.qk, align 4, !noalias !110372
  %i.ql = icmp eq ptr %i.qj, %i.pz
  br i1 %i.ql, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.db:                                            ; preds = %.lr.ph.i.i
  store ptr %i.ms, ptr %.sroa.4.0..sroa_idx.i87.i, align 8, !noalias !110372
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.qh, i64 noundef %.sroa.9.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #61
          to label %bb.cf unwind label %bb.cz, !noalias !110372

.loopexit252.i.i:                                 ; preds = %bb.cc
  %lpad.loopexit254.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ms, ptr %.sroa.4.0..sroa_idx.i87.i, align 8, !noalias !110372
  br label %bb.dc

.loopexit.split-lp253.i.i:                        ; preds = %bb.cx
  %lpad.loopexit.split-lp255.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit.split-lp253.i.i, %.loopexit252.i.i
  %lpad.phi256.i.i = phi { ptr, i32 } [ %lpad.loopexit254.i.i, %.loopexit252.i.i ], [ %lpad.loopexit.split-lp255.i.i, %.loopexit.split-lp253.i.i ] ; 2 uses
  %i.qm = icmp eq i64 %.sroa.0144.0.copyload145.i.i, 0
  br i1 %i.qm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i124.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i124.i.i: ; preds = %bb.dc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i.sink.split

.thread199.i.thread529.i:                         ; preds = %bb.bw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i
  %.pn51.pn.pn.pn.pn204.i.ph.i = phi { ptr, i32 } [ %i.mf, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i ], [ %i.mg, %bb.bw ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5176.0.copyload.i) ]
  br label %.lr.ph.i.i.i145.preheader.i

.thread199.i.i:                                   ; preds = %bb.bz
  %i.qn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae) #63, !noalias !110372
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5176.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !110469), !noalias !110470
  br i1 %i.lv, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i145.preheader.i

.lr.ph.i.i.i145.preheader.i:                      ; preds = %.thread199.i.i, %.thread199.i.thread529.i
  %.pn51.pn.pn.pn.pn204.i531.i = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn204.i.ph.i, %.thread199.i.thread529.i ], [ %i.qn, %.thread199.i.i ]
  br label %.lr.ph.i.i.i145.i

.lr.ph.i.i.i145.i:                                ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i147.i, %.lr.ph.i.i.i145.preheader.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.qp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i147.i ], [ 0, %.lr.ph.i.i.i145.preheader.i ] ; 2 uses
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5176.0.copyload.i, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.qp = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.qo, align 8, !alias.scope !110469, !noalias !110471 ; 2 uses
  %i.qq = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.qq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i147.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i146.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i146.i: ; preds = %.lr.ph.i.i.i145.i
  %i.qr = getelementptr i8, ptr %i.qo, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.qr, align 8, !alias.scope !110469, !noalias !110471, !nonnull !67, !noundef !67
  %i.qs = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.qs, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110472
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i147.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i147.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i146.i, %.lr.ph.i.i.i145.i
  %i.qt = icmp eq i64 %i.qp, %.sroa.7177.0.copyload.i
  br i1 %i.qt, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i145.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i147.i, %.thread199.i.i, %.thread199.i.thread.i
  %.pn51.pn.pn.pn.pn204.i200.i = phi { ptr, i32 } [ %i.mf, %.thread199.i.thread.i ], [ %i.qn, %.thread199.i.i ], [ %.pn51.pn.pn.pn.pn204.i531.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i147.i ] ; 2 uses
  %i.qu = icmp eq i64 %.sroa.0175.0.copyload.i, 0
  br i1 %i.qu, label %.thread.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.qv = mul nuw i64 %.sroa.0175.0.copyload.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5176.0.copyload.i, i64 noundef %i.qv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110471
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.bl, %bb.bk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i, %bb.x
  %.pn51.pn.pn.pn.pn.pn198.i.i = phi { ptr, i32 } [ %.pn51.pn.pn.i.i, %bb.bk ], [ %i.lr, %bb.bl ], [ %i.de, %bb.x ], [ %.pn28116.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i ], [ %.pn51.pn.pn.pn.pn204.i200.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.pn51.pn.pn.pn.pn204.i200.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i ] ; 2 uses
  %i.qw = icmp eq i64 %.sroa.0157.0.copyload.i, 0
  br i1 %i.qw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeuEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i140.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i140.i: ; preds = %.thread.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5158.0.copyload.i) ]
  %i.qx = shl nuw i64 %.sroa.0157.0.copyload.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5158.0.copyload.i, i64 noundef %i.qx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110473
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeuEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeuEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i140.i, %.thread.i.i
  %i.qy = icmp eq i64 %.sroa.10160.0.copyload.i, 0
  br i1 %i.qy, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i7.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i7.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeuEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload.i) ]
  %i.qz = shl nuw i64 %.sroa.10160.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.copyload.i, i64 noundef %i.qz, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110473
  br label %.body.i

bb.dd:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i107.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeuEEECskcxRuJ53GpR_9rustworkx.exit106.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !110372
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.rb = load i64, ptr %i.ra, align 8, !noalias !110358, !noundef !67 ; 14 uses
  %i.rc = icmp ult i64 %i.rb, 288230376151711744
  call void @llvm.assume(i1 %i.rc)
  call void @llvm.experimental.noalias.scope.decl(metadata !110474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !110475
  store i64 0, ptr %i.n, align 8, !noalias !110475
  %i.rd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.rd, align 8, !noalias !110475
  %i.re = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.re, align 8, !noalias !110475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !110476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !110476
  %i.rf = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sink212.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink212.i.sroa.gep1.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink212.i.sroa.gep3.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink212.i.sroa.gep4.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink212.i.sroa.gep6.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink212.i.sroa.gep7.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.rf, i64 noundef %i.rb)
          to label %.noexc.i92.i unwind label %bb.en, !noalias !110475

.noexc.i92.i:                                     ; preds = %bb.dd
  store i64 0, ptr %i.j, align 8, !alias.scope !110477, !noalias !110478
  %.sroa.5.0..sroa_idx.i.i.i93.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i93.i, align 8, !alias.scope !110477, !noalias !110478
  %.sroa.7.0..sroa_idx.i.i.i94.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i94.i, align 8, !alias.scope !110477, !noalias !110478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !110476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !110476
  call void @llvm.experimental.noalias.scope.decl(metadata !110479)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110480)
  call void @llvm.experimental.noalias.scope.decl(metadata !110481)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 11 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.rh, align 8, !alias.scope !110482, !noalias !110483, !noundef !67 ; 3 uses
  %i.ri = and i64 %.val1.i.i.i.i.i.i, 127
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ri, 0
  %i.rj = lshr i64 %.val1.i.i.i.i.i.i, 3
  %.idx.i.i.i.i.i.i.i = and i64 %i.rj, 2305843009213693936
  %.idx2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.rk = add nuw nsw i64 %.idx2.i.i.i.i.i.i.i, %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.rl = icmp samesign eq i64 %i.rk, 0
  br i1 %i.rl, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.body.thread12.i.i.i:                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i.i, %.noexc.i.i.i, %bb.de
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.noexc.i92.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.rg, align 8, !alias.scope !110482, !noalias !110483, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i.i.i.i.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.rk, i1 false), !noalias !110484
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %.noexc.i92.i
  %i.rm = icmp ugt i64 %i.rb, %.val1.i.i.i.i.i.i
  br i1 %i.rm, label %bb.de, label %.noexc.i.i.i, !prof !71

bb.de:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rg, i64 noundef %i.rb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %.noexc.i.i.i unwind label %.body.thread12.i.i.i, !noalias !110476

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.eg, %.loopexit.split-lp110.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp110.loopexit.i.i.i.i, %.loopexit109.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.loopexit.split-lp.i.i.i.i, %.loopexit.loopexit.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ze, %bb.eg ], [ %lpad.loopexit.split-lp104.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit.split-lp114.i.i.i.i, %.loopexit.split-lp110.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit103.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit111.i.i.i.i, %.loopexit109.i.i.i.i ], [ %lpad.loopexit113.i.i.i.i, %.loopexit.split-lp110.loopexit.i.i.i.i ], [ %lpad.loopexit156.i.i.i.i, %.loopexit.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.loopexit.split-lp.i.i.i.i ]
  %.val23.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !110485 ; 2 uses
  %i.rn = icmp eq i64 %.val23.i.i.i.i, 0
  br i1 %i.rn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i97.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i97.i: ; preds = %.loopexit.split-lp.i.i.i.i
  %.val24.i.i.i.i = load ptr, ptr %i.rq, align 8, !noalias !110485, !nonnull !67, !noundef !67
  %i.ro = shl nuw i64 %.val23.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i.i.i, i64 noundef %i.ro, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110483
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

.loopexit.loopexit.i.i.i.i:                       ; preds = %bb.dn
  %lpad.loopexit156.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.loopexit.split-lp.i.i.i.i:              ; preds = %bb.dt
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %bb.di
  %lpad.loopexit103.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i:     ; preds = %.loopexit155.i.i.i.i, %bb.dg
  %lpad.loopexit.split-lp104.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.de, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 18 uses
  store i64 0, ptr %i.rp, align 8, !alias.scope !110479, !noalias !110483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !110485
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.rb)
          to label %.noexc8.i.i.i unwind label %.body.thread12.i.i.i, !noalias !110476

.noexc8.i.i.i:                                    ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !110485
  store i64 0, ptr %i.h, align 8, !noalias !110485
  %i.rq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.rq, align 8, !noalias !110485
  %i.rr = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  store i64 0, ptr %i.rr, align 8, !noalias !110485
  %.not140.i.i.i.i = icmp eq i64 %i.rb, 0
  br i1 %.not140.i.i.i.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph136.i.i.i.i

.lr.ph136.i.i.i.i:                                ; preds = %.noexc8.i.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.rx = load ptr, ptr %i.ru, align 8, !alias.scope !110474, !noalias !110486, !nonnull !67
  %i.ry = load i64, ptr %i.rv, align 8, !alias.scope !110474, !noalias !110486 ; 2 uses
  %i.rz = load ptr, ptr %i.rw, align 8, !alias.scope !110474, !noalias !110486, !nonnull !67
  br label %bb.df

.loopexit109.i.i.i.i:                             ; preds = %bb.ef
  %lpad.loopexit111.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp110.loopexit.i.i.i.i:           ; preds = %bb.du
  %lpad.loopexit113.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp110.loopexit.split-lp.i.i.i.i:  ; preds = %.invoke.i.i.i.i
  %lpad.loopexit.split-lp114.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

bb.df:                                            ; preds = %.backedge.i.i.i.i, %.lr.ph136.i.i.i.i
  %.sroa.073.0135.i.i.i.i = phi i64 [ 0, %.lr.ph136.i.i.i.i ], [ %i.sa, %.backedge.i.i.i.i ] ; 4 uses
  %i.sa = add nuw nsw i64 %.sroa.073.0135.i.i.i.i, 1 ; 2 uses
  %i.sb = trunc i64 %.sroa.073.0135.i.i.i.i to i32 ; 2 uses
  %.val29.i.i.i.i = load i64, ptr %i.rh, align 8, !alias.scope !110479, !noalias !110483, !noundef !67
  %i.sc = and i64 %.sroa.073.0135.i.i.i.i, 4294967295 ; 2 uses
  %i.sd = icmp ugt i64 %.val29.i.i.i.i, %i.sc
  br i1 %i.sd, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i124.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i95.i

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i
  %.pre.i.i.i99.i = load ptr, ptr %i.rq, align 8, !noalias !110485 ; 3 uses
  %.pre159.i.i.i.i = load i64, ptr %i.rr, align 8, !noalias !110485 ; 3 uses
  %i.se = lshr i64 %.pre159.i.i.i.i, 1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110487)
  call void @llvm.experimental.noalias.scope.decl(metadata !110488)
  %.not.i.i.i.i100.i = icmp eq i64 %i.se, 0
  br i1 %.not.i.i.i.i100.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i.i.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i99.i, i64 %.pre159.i.i.i.i ; 2 uses
  %min.iters.check = icmp ult i64 %.pre159.i.i.i.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i.i.i.i
  %n.vec = and i64 %i.se, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sg = xor i64 %index, -1
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i99.i, i64 %index ; 3 uses
  %i.si = getelementptr [4 x i8], ptr %i.sf, i64 %i.sg ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.sh, align 4, !alias.scope !110487, !noalias !110489
  %wide.load554 = load <4 x i32>, ptr %i.sj, align 4, !alias.scope !110487, !noalias !110489
  %i.sk = getelementptr i8, ptr %i.si, i64 -12    ; 2 uses
  %i.sl = getelementptr i8, ptr %i.si, i64 -28    ; 2 uses
  %wide.load555 = load <4 x i32>, ptr %i.sk, align 4, !alias.scope !110488, !noalias !110490
  %wide.load556 = load <4 x i32>, ptr %i.sl, align 4, !alias.scope !110488, !noalias !110490
  %reverse = shufflevector <4 x i32> %wide.load555, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse557 = shufflevector <4 x i32> %wide.load556, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.sh, align 4, !alias.scope !110487, !noalias !110489
  store <4 x i32> %reverse557, ptr %i.sj, align 4, !alias.scope !110487, !noalias !110489
  %reverse558 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse559 = shufflevector <4 x i32> %wide.load554, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse558, ptr %i.sk, align 4, !alias.scope !110488, !noalias !110490
  store <4 x i32> %reverse559, ptr %i.sl, align 4, !alias.scope !110488, !noalias !110490
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sm = icmp eq i64 %index.next, %n.vec
  br i1 %i.sm, label %middle.block, label %vector.body, !llvm.loop !110171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.se, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.i.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i
  %.sroa.0.016.i.i.i.i.i = phi i64 [ %i.ss, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i.preheader ] ; 3 uses
  %i.sn = xor i64 %.sroa.0.016.i.i.i.i.i, -1
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i99.i, i64 %.sroa.0.016.i.i.i.i.i ; 2 uses
  %i.sp = getelementptr [4 x i8], ptr %i.sf, i64 %i.sn ; 2 uses
  %i.sq = load i32, ptr %i.so, align 4, !alias.scope !110487, !noalias !110489, !noundef !67
  %i.sr = load i32, ptr %i.sp, align 4, !alias.scope !110488, !noalias !110490
  store i32 %i.sr, ptr %i.so, align 4, !alias.scope !110487, !noalias !110489
  store i32 %i.sq, ptr %i.sp, align 4, !alias.scope !110488, !noalias !110490
  %i.ss = add nuw nsw i64 %.sroa.0.016.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ss, %i.se
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i, !llvm.loop !110172

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i, %.noexc8.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !110491)
  call void @llvm.experimental.noalias.scope.decl(metadata !110492)
  %.val1.i.i38.i.i.i.i = load i64, ptr %i.rh, align 8, !alias.scope !110493, !noalias !110483, !noundef !67 ; 3 uses
  %i.st = and i64 %.val1.i.i38.i.i.i.i, 127
  %.not.i.i.i39.i.i.i.i = icmp eq i64 %i.st, 0
  %i.su = lshr i64 %.val1.i.i38.i.i.i.i, 3
  %.idx.i.i.i40.i.i.i.i = and i64 %i.su, 2305843009213693936
  %.idx2.i.i.i41.i.i.i.i = select i1 %.not.i.i.i39.i.i.i.i, i64 0, i64 16
  %i.sv = add nuw nsw i64 %.idx2.i.i.i41.i.i.i.i, %.idx.i.i.i40.i.i.i.i ; 2 uses
  %i.sw = icmp samesign eq i64 %i.sv, 0
  br i1 %i.sw, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i44.i.i.i.i, label %.lr.ph.preheader.i.i.i42.i.i.i.i

.lr.ph.preheader.i.i.i42.i.i.i.i:                 ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val.i.i43.i.i.i.i = load ptr, ptr %i.rg, align 8, !alias.scope !110493, !noalias !110483, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i43.i.i.i.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.sv, i1 false), !noalias !110494
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i44.i.i.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i44.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i42.i.i.i.i, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.sx = icmp ugt i64 %i.rb, %.val1.i.i38.i.i.i.i
  br i1 %i.sx, label %bb.dg, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i, !prof !71

bb.dg:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i44.i.i.i.i
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rg, i64 noundef %i.rb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !110483

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i: ; preds = %bb.dg, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i44.i.i.i.i
  store i64 0, ptr %i.rp, align 8, !alias.scope !110479, !noalias !110483
  %i.sy = load ptr, ptr %i.rq, align 8, !noalias !110485, !nonnull !67, !noundef !67 ; 3 uses
  %i.sz = load i64, ptr %i.rr, align 8, !noalias !110485, !noundef !67 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.sz, 2
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 %.idx.i.i.i.i
  %i.tb = icmp eq i64 %i.sz, 0
  %i.tc = ptrtoint ptr %i.sy to i64               ; 2 uses
  %i.td = trunc i64 %i.tc to i32
  %i.te = lshr i64 %i.tc, 32
  br i1 %i.tb, label %._crit_edge139.i.i.i.i, label %.lr.ph138.i.i.i.i

.lr.ph138.i.i.i.i:                                ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit45.i.i.i.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.th = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre57.i.i.i = load ptr, ptr %i.tg, align 8, !alias.scope !110474, !noalias !110486 ; 3 uses
  %.pre58.i.i.i = load i64, ptr %i.th, align 8, !alias.scope !110474, !noalias !110486 ; 3 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !alias.scope !110474, !noalias !110486, !nonnull !67 ; 2 uses
  br label %bb.dh

.loopexit102.i.i.i.i.loopexit:                    ; preds = %bb.dp
  store i64 %i.vn, ptr %i.rp, align 8, !alias.scope !110495, !noalias !110496
  br label %.loopexit102.i.i.i.i

.loopexit102.i.i.i.i:                             ; preds = %.loopexit102.i.i.i.i.loopexit, %bb.do, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.tk = icmp eq ptr %i.tl, %i.ta
  br i1 %i.tk, label %._crit_edge139.i.i.loopexit.i.i, label %bb.dh

bb.dh:                                            ; preds = %.loopexit102.i.i.i.i, %.lr.ph138.i.i.i.i
  %.sroa.013.0137.i.i.i.i = phi ptr [ %i.sy, %.lr.ph138.i.i.i.i ], [ %i.tl, %.loopexit102.i.i.i.i ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.013.0137.i.i.i.i, i64 4 ; 2 uses
  %i.tm = load i32, ptr %.sroa.013.0137.i.i.i.i, align 4, !noalias !110483, !noundef !67
  store i64 0, ptr %i.rp, align 8, !alias.scope !110479, !noalias !110483
  %i.tn = load i64, ptr %i.k, align 8, !range !70, !alias.scope !110497, !noalias !110483, !noundef !67
  %i.to = icmp eq i64 %i.tn, 0
  br i1 %i.to, label %bb.di, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i101.i

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i101.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !110483

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i101.i: ; preds = %bb.di, %bb.dh
  %i.tp = load ptr, ptr %i.tf, align 8, !alias.scope !110497, !noalias !110483, !nonnull !67, !noundef !67
  store i32 %i.tm, ptr %i.tp, align 4, !noalias !110483
  call void @llvm.experimental.noalias.scope.decl(metadata !110498)
  %i.tq = load i64, ptr %i.rh, align 8, !alias.scope !110499, !noalias !110500
  %i.tr = load ptr, ptr %i.rg, align 8, !alias.scope !110499, !noalias !110500, !nonnull !67
  %i.ts = load ptr, ptr %i.tf, align 8, !alias.scope !110479, !noalias !110483, !nonnull !67
  store i64 0, ptr %i.rp, align 8, !alias.scope !110499, !noalias !110500
  %i.tt = load i32, ptr %i.ts, align 4, !noalias !110501, !noundef !67
  %i.tu = zext i32 %i.tt to i64                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !110502
  store i64 %i.tu, ptr %i.g, align 8, !noalias !110503
  %i.tv = icmp ugt i64 %i.tq, %i.tu
  br i1 %i.tv, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.loopexit155.i.i.i.i, !prof !77

.loopexit155.i.i.i.i.loopexit:                    ; preds = %.lr.ph553
  store i64 %i.vn, ptr %i.rp, align 8, !alias.scope !110495, !noalias !110496
  br label %.loopexit155.i.i.i.i

.loopexit155.i.i.i.i:                             ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i101.i, %.loopexit155.i.i.i.i.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !110503
  store ptr %i.g, ptr %i.f, align 8, !noalias !110503
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !110503
  %i.tw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.rh, ptr %i.tw, align 8, !noalias !110503
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !110503
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc51.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !110483

.noexc51.i.i.i.i:                                 ; preds = %.loopexit155.i.i.i.i
  unreachable

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i101.i
  %i.tx = lshr i64 %i.tu, 6
  %i.ty = and i64 %i.tu, 63
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %i.tx ; 2 uses
  %i.ua = load i64, ptr %i.tz, align 8, !noalias !110504, !noundef !67 ; 2 uses
  %i.ub = shl nuw i64 1, %i.ty                    ; 2 uses
  %i.uc = and i64 %i.ua, %i.ub
  %.not.i.i.i.i.i102.i = icmp eq i64 %i.uc, 0
  %i.ud = or i64 %i.ua, %i.ub
  store i64 %i.ud, ptr %i.tz, align 8, !noalias !110504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !110502
  br i1 %.not.i.i.i.i.i102.i, label %bb.dj, label %.loopexit102.i.i.i.i

bb.dj:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.ue = icmp samesign ugt i64 %i.rb, %i.tu
  br i1 %i.ue, label %bb.dk, label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader

bb.dk:                                            ; preds = %bb.dj
  %i.uf = getelementptr inbounds nuw [32 x i8], ptr %i.tj, i64 %i.tu
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 28
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !110505
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader

_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader: ; preds = %bb.dk, %bb.dj
  %.sroa.9.0.i.i.i.i.i.ph = phi i32 [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, %bb.dk ], [ -1, %bb.dj ]
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.outer

_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.outer: ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.ph594 = phi i64 [ 0, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader ], [ %i.vf, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.611.0.i.i.i.i.i.ph = phi i32 [ -1, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader ], [ %.sroa.611.1.ph.i.i.i.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.sroa.9.0.i.i.i.i.i.ph595 = phi i32 [ %.sroa.9.0.i.i.i.i.i.ph, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader ], [ %.sroa.9.2.ph.i.i.i.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.val6.i.i.i.i.i = load i64, ptr %i.rh, align 8
  %.val.i50.i.i.i.i = load ptr, ptr %i.rg, align 8, !nonnull !67
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.outer, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.611.0.i.i.i.i.i = phi i32 [ %.sroa.611.1.ph.i.i.i.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.611.0.i.i.i.i.i.ph, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.outer ] ; 2 uses
  %.sroa.9.0.i.i.i.i.i = phi i32 [ %.sroa.9.2.ph.i.i.i.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.ph595, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.ug = zext i32 %.sroa.611.0.i.i.i.i.i to i64  ; 2 uses
  %i.uh = icmp ugt i64 %.pre58.i.i.i, %i.ug
  br i1 %i.uh, label %bb.dl, label %.preheader.i.i.i.i.i.i

bb.dl:                                            ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.ui = getelementptr inbounds nuw [16 x i8], ptr %.pre57.i.i.i, i64 %i.ug ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 4, !noalias !110506, !noundef !67
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  %i.ul = load i32, ptr %i.uk, align 4, !noalias !110506, !noundef !67
  br label %.loopexit21.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.dm
  %.sroa.9.1.i.i.i.i.i = phi i32 [ %i.uq, %bb.dm ], [ %.sroa.9.0.i.i.i.i.i, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.um = zext i32 %.sroa.9.1.i.i.i.i.i to i64    ; 2 uses
  %i.un = icmp ugt i64 %.pre58.i.i.i, %i.um
  br i1 %i.un, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %.preheader.i.i.i.i.i.i
  %i.uo = getelementptr inbounds nuw [16 x i8], ptr %.pre57.i.i.i, i64 %i.um ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  %i.uq = load i32, ptr %i.up, align 4, !noalias !110506, !noundef !67 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %.val.i.i49.i.i.i.i = load i32, ptr %i.ur, align 4, !noalias !110506, !noundef !67 ; 2 uses
  %i.us = icmp eq i32 %.val.i.i49.i.i.i.i, -1
  br i1 %i.us, label %.preheader.i.i.i.i.i.i, label %.loopexit21.i.i.i.i.i

.loopexit21.i.i.i.i.i:                            ; preds = %bb.dm, %bb.dl
  %.sroa.611.1.ph.i.i.i.i.i = phi i32 [ %i.uj, %bb.dl ], [ %.sroa.611.0.i.i.i.i.i, %bb.dm ] ; 2 uses
  %.sroa.9.2.ph.i.i.i.i.i = phi i32 [ %.sroa.9.0.i.i.i.i.i, %bb.dl ], [ %i.uq, %bb.dm ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.ul, %bb.dl ], [ %.val.i.i49.i.i.i.i, %bb.dm ] ; 2 uses
  %i.ut = zext i32 %.sroa.4.0.i.ph.i.i.i.i.i to i64 ; 3 uses
  %i.uu = icmp ugt i64 %.val6.i.i.i.i.i, %i.ut
  br i1 %i.uu, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.loopexit21.i.i.i.i.i
  %i.uv = lshr i64 %i.ut, 6
  %i.uw = and i64 %i.ut, 63
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %.val.i50.i.i.i.i, i64 %i.uv
  %i.uy = load i64, ptr %i.ux, align 8, !noalias !110500, !noundef !67
  %i.uz = lshr i64 %i.uy, %i.uw
  %i.va = trunc i64 %i.uz to i1
  br i1 %i.va, label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.loopexit21.i.i.i.i.i
  %i.vb = load i64, ptr %i.k, align 8, !range !70, !alias.scope !110507, !noalias !110500, !noundef !67
  %i.vc = icmp eq i64 %.ph594, %i.vb
  br i1 %i.vc, label %bb.dn, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.dn:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i unwind label %.loopexit.loopexit.i.i.i.i, !noalias !110483

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.dn, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i
  %i.vd = load ptr, ptr %i.tf, align 8, !alias.scope !110507, !noalias !110500, !nonnull !67, !noundef !67
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %.ph594
  store i32 %.sroa.4.0.i.ph.i.i.i.i.i, ptr %i.ve, align 4, !noalias !110500
  %i.vf = add i64 %.ph594, 1                      ; 2 uses
  store i64 %i.vf, ptr %i.rp, align 8, !alias.scope !110507, !noalias !110500
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.outer

bb.do:                                            ; preds = %.preheader.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !110508)
  %i.vg = load i64, ptr %i.rh, align 8, !alias.scope !110495, !noalias !110496
  %i.vh = load ptr, ptr %i.rg, align 8, !alias.scope !110495, !noalias !110496, !nonnull !67
  %.pre.i.1.i.i.i.i = load i64, ptr %i.rp, align 8, !alias.scope !110495, !noalias !110496 ; 2 uses
  %i.vi = load i64, ptr %i.k, align 8, !range !70, !alias.scope !110479, !noalias !110483
  %i.vj = load ptr, ptr %i.tf, align 8, !alias.scope !110479, !noalias !110483, !nonnull !67
  %i.vk = icmp eq i64 %.pre.i.1.i.i.i.i, 0
  br i1 %i.vk, label %.loopexit102.i.i.i.i, label %.lr.ph553

bb.dp:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit.i.1.i.i.i.i
  %i.vl = icmp eq i64 %i.vn, 0
  br i1 %i.vl, label %.loopexit102.i.i.i.i.loopexit, label %.lr.ph553

.lr.ph553:                                        ; preds = %bb.do, %bb.dp
end_hunk_11
begin_hunk_12_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity33___pyfunction_digraph_condensation:bb.a
  %i.kc = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.kb, align 8, !alias.scope !113212, !noalias !113194 ; 2 uses
  %i.kd = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.kd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ke = getelementptr i8, ptr %i.kb, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.ke, align 8, !alias.scope !113212, !noalias !113194, !nonnull !67, !noundef !67
  %i.kf = shl nuw i64 %.val8.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %i.kf, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113214
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.kg = icmp eq i64 %i.kc, %.val10.i.i.i.i.i.i.i.i.i
  br i1 %i.kg, label %.body86.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.456.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !113199
  %i.kh = icmp ult i64 %.sroa.557.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.kh)
  %.idx.i45.i = mul nuw nsw i64 %.sroa.557.0.copyload, 24
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.456.0.copyload, i64 %.idx.i45.i ; 3 uses
  store ptr %.sroa.456.0.copyload, ptr %i.af, align 8, !noalias !113199
  %.sroa.4.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.055.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !113199
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ki, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !113199
  call void @llvm.experimental.noalias.scope.decl(metadata !113215)
  call void @llvm.experimental.noalias.scope.decl(metadata !113216)
  call void @llvm.experimental.noalias.scope.decl(metadata !113217)
  call void @llvm.experimental.noalias.scope.decl(metadata !113218)
  call void @llvm.experimental.noalias.scope.decl(metadata !113219)
  %.not14.i.i.i.i.i.i.i = icmp eq i64 %.sroa.557.0.copyload, 0
  br i1 %.not14.i.i.i.i.i.i.i, label %.loopexit308.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ce
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  br label %bb.cf

bb.cf:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecjEIB10_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB12_13in_place_drop11InPlaceDropB1y_EINtNtBa_6result6ResultB2r_zENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity18condensation_innerINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB1H_8DirectedmE0NCINvNtB12_16in_place_collect24write_in_place_with_dropB1y_E0E0B3G_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.4.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.456.0.copyload, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kj, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecjEIB10_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB12_13in_place_drop11InPlaceDropB1y_EINtNtBa_6result6ResultB2r_zENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity18condensation_innerINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB1H_8DirectedmE0NCINvNtB12_16in_place_collect24write_in_place_with_dropB1y_E0E0B3G_.exit.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.011.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.015.i.i.i.i.i.i.i, align 8, !noalias !113220
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i.i.i.i, i64 8
  %.sroa.412.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !113220, !nonnull !67, !noundef !67 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !113220 ; 2 uses
  %i.kj = getelementptr i8, ptr %.sroa.4.015.i.i.i.i.i.i.i, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !113221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !113222
  %i.kk = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.kk)
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.412.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i
  store ptr %.sroa.412.0.copyload.i.i.i.i.i.i.i, ptr %i.x, align 8, !noalias !113222
  store ptr %.sroa.412.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !113222
  store i64 %.sroa.011.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !113222
  store ptr %i.kl, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !113222
  invoke fastcc void @_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterjENvMs2_B15_B13_3newEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.x)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecjEIB10_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB12_13in_place_drop11InPlaceDropB1y_EINtNtBa_6result6ResultB2r_zENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity18condensation_innerINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB1H_8DirectedmE0NCINvNtB12_16in_place_collect24write_in_place_with_dropB1y_E0E0B3G_.exit.i.i.i.i.i.i.i unwind label %.thread265.i.i, !noalias !113221

.thread265.i.i:                                   ; preds = %bb.cf
  %i.km = landingpad { ptr, i32 }
          cleanup
  store ptr %i.kj, ptr %.sroa.4.0..sroa_idx.i.i19, align 8, !alias.scope !113223, !noalias !113224
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.sroa.456.0.copyload, ptr nonnull %.sroa.4.015.i.i.i.i.i.i.i) #63, !noalias !113221
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB1e_3VecjEENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity18condensation_innerINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3j_5types3any5PyAnyEB3e_NtCs68Jln09rRqb_8petgraph8DirectedmE0EEB2i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af) #63, !noalias !113224
  br label %.body86.thread288.thread.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecjEIB10_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB12_13in_place_drop11InPlaceDropB1y_EINtNtBa_6result6ResultB2r_zENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity18condensation_innerINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB1H_8DirectedmE0NCINvNtB12_16in_place_collect24write_in_place_with_dropB1y_E0E0B3G_.exit.i.i.i.i.i.i.i: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !113222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.015.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !113221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !113221
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kj, %i.ki
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit308.i.i, label %bb.cf

bb.cg:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !113225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !113226
  call void @llvm.experimental.noalias.scope.decl(metadata !113227)
  call void @llvm.experimental.noalias.scope.decl(metadata !113228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !113229
  %i.kn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val.i.i.i.i.i = load i64, ptr %i.kn, align 8, !alias.scope !113230, !noalias !113231, !noundef !67 ; 9 uses
  %i.ko = icmp ult i64 %.val.i.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.ko)
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef %.val.i.i.i.i.i)
          to label %.noexc90.i.i unwind label %bb.bw, !noalias !113199

.noexc90.i.i:                                     ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !113229
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.val.i.i.i.i.i)
          to label %bb.ck unwind label %bb.ch, !noalias !113229

bb.ch:                                            ; preds = %.noexc90.i.i
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body86.thread288.thread.i.i unwind label %bb.ci, !noalias !113229

bb.ci:                                            ; preds = %bb.ch
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !113229
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit89.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i88.i.i.i, %.thread117.i.i.i
  br i1 %.not199.i.i.i, label %bb.ds, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i

bb.cj:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  br i1 %.sroa.016.2.i.i.i, label %.thread117.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i

.thread123.i.i.i:                                 ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i

bb.ck:                                            ; preds = %.noexc90.i.i
  store i64 0, ptr %i.w, align 8, !alias.scope !113227, !noalias !113232
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !113227, !noalias !113232
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !113227, !noalias !113232
  %i.ks = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ks, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !113232
  %i.kt = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !113232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !113229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !113229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !113226
  store i64 0, ptr %i.v, align 8, !noalias !113226
  %i.ku = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ku, align 8, !noalias !113226
  %i.kv = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i64 0, ptr %i.kv, align 8, !noalias !113226
  %.not204.not.i.i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %.not204.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ck
  %i.kw = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8, !alias.scope !113233, !noalias !113234, !nonnull !67 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.lb = load i64, ptr %i.la, align 8, !alias.scope !113233, !noalias !113234 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !113233, !noalias !113234, !nonnull !67
  br label %bb.cl

.thread117.loopexit.i.i.i:                        ; preds = %bb.dp
  %lpad.loopexit157.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i.i.i

.thread117.loopexit.split-lp.loopexit.i.i.i:      ; preds = %bb.dr
  %lpad.loopexit161.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i.i.i

.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.de
  %lpad.loopexit164.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i.i.i

.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i.i.i

bb.cl:                                            ; preds = %.backedge166.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.0205.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.le, %.backedge166.i.i.i ] ; 4 uses
  %i.le = add nuw nsw i64 %.sroa.0.0205.i.i.i, 1  ; 2 uses
  %i.lf = trunc i64 %.sroa.0.0205.i.i.i to i32
  %.val39.i.i.i = load i64, ptr %i.kw, align 8, !noalias !113226, !noundef !67
  %i.lg = and i64 %.sroa.0.0205.i.i.i, 4294967295 ; 2 uses
  %i.lh = icmp ugt i64 %.val39.i.i.i, %i.lg
  br i1 %i.lh, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.backedge166.i.i.i, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !113226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !113226
  %i.li = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.li, ptr noundef nonnull align 8 dereferenceable(24) %i.ks, i64 24, i1 false), !noalias !113226
  call void @llvm.experimental.noalias.scope.decl(metadata !113235)
  call void @llvm.experimental.noalias.scope.decl(metadata !113236)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 6 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.lj, align 8, !alias.scope !113237, !noalias !113226, !noundef !67 ; 3 uses
  %i.lk = and i64 %.val1.i.i.i.i.i, 127
  %.not.i.i.i.i.i.i = icmp eq i64 %i.lk, 0
  %i.ll = lshr i64 %.val1.i.i.i.i.i, 3
  %.idx.i.i.i.i.i.i = and i64 %i.ll, 2305843009213693936
  %.idx2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 16
  %i.lm = add nuw nsw i64 %.idx2.i.i.i.i.i.i, %.idx.i.i.i.i.i.i ; 2 uses
  %i.ln = icmp samesign eq i64 %i.lm, 0
  br i1 %i.ln, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.val.i.i48.i.i.i = load ptr, ptr %i.li, align 8, !alias.scope !113237, !noalias !113226, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val.i.i48.i.i.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.lm, i1 false), !noalias !113238
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %._crit_edge.i.i.i
  %i.lo = icmp ugt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.lo, label %bb.cm, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEB11_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i, !prof !71

bb.cm:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.li, i64 noundef %.val.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEB11_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %bb.cn, !noalias !113226

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit176.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i175.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i173.i.i, %bb.cn
  %.sroa.016.2.i.i.i = phi i1 [ true, %bb.cn ], [ false, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i173.i.i ], [ false, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i175.i.i ]
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ls, %bb.cn ], [ %.pn.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i173.i.i ], [ %.pn.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i175.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113239)
  %.val.i177.i.i = load i64, ptr %i.u, align 8, !alias.scope !113239, !noalias !113226 ; 2 uses
  %i.lp = icmp eq i64 %.val.i177.i.i, 0
  br i1 %i.lp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i178.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i178.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit176.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i179.i.i = load ptr, ptr %i.lq, align 8, !alias.scope !113239, !noalias !113226, !nonnull !67, !noundef !67
  %i.lr = shl nuw i64 %.val.i177.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i179.i.i, i64 noundef %i.lr, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113240
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i178.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit176.i.i
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %bb.cj unwind label %bb.dd, !noalias !113199

bb.cn:                                            ; preds = %bb.cm
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit176.i.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEB11_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.cm, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 8 uses
  store i64 0, ptr %i.lt, align 8, !noalias !113226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !113226
  store i64 0, ptr %i.t, align 8, !noalias !113226
  %i.lu = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.lu, align 8, !noalias !113226
  %i.lv = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store i64 0, ptr %i.lv, align 8, !noalias !113226
  %i.lw = load ptr, ptr %i.ku, align 8, !noalias !113226, !nonnull !67, !noundef !67 ; 4 uses
  %i.lx = load i64, ptr %i.v, align 8, !range !70, !noalias !113226, !noundef !67 ; 4 uses
  %i.ly = load i64, ptr %i.kv, align 8, !noalias !113226, !noundef !67 ; 3 uses
  %i.lz = icmp ult i64 %i.ly, 2305843009213693952
  call void @llvm.assume(i1 %i.lz)
  %i.ma = icmp eq i64 %i.ly, 0
  br i1 %i.ma, label %._crit_edge210.i.i.i, label %.lr.ph209.i.i.i

.lr.ph209.i.i.i:                                  ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEB11_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.idx.i.i.i = shl nuw nsw i64 %i.ly, 2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !alias.scope !113233, !noalias !113234, !nonnull !67
  %i.mh = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !113233, !noalias !113234 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !alias.scope !113233, !noalias !113234, !nonnull !67
  br label %bb.cp

.body.i.i.i:                                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %.loopexit.split-lp.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i67.i.i.i, %bb.db, %bb.co
  %.pn.i.i.i = phi { ptr, i32 } [ %i.qd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i67.i.i.i ], [ %i.mn, %bb.co ], [ %i.qd, %bb.db ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.phi.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ] ; 2 uses
  %i.ml = icmp eq i64 %i.lx, 0
  br i1 %i.ml, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %.body.i.i.i
  %i.mm = shl nuw i64 %i.lx, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lw, i64 noundef %i.mm, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113241
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.co:                                            ; preds = %bb.cq
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.cp:                                            ; preds = %.backedge.i.i.i, %.lr.ph209.i.i.i
  %i.mo = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph209.i.i.i ], [ %i.qj, %.backedge.i.i.i ] ; 2 uses
  %i.mp = phi i64 [ 0, %.lr.ph209.i.i.i ], [ %i.qk, %.backedge.i.i.i ] ; 4 uses
  %.sroa.10.0208.i.i.i = phi ptr [ %i.mb, %.lr.ph209.i.i.i ], [ %i.mq, %.backedge.i.i.i ]
  %i.mq = getelementptr inbounds i8, ptr %.sroa.10.0208.i.i.i, i64 -4 ; 3 uses
  %i.mr = load i32, ptr %i.mq, align 4, !noalias !113242, !noundef !67 ; 2 uses
  %.val36.i.i.i = load i64, ptr %i.lj, align 8, !noalias !113226, !noundef !67
  %i.ms = zext i32 %i.mr to i64                   ; 3 uses
  %i.mt = icmp ugt i64 %.val36.i.i.i, %i.ms
  br i1 %i.mt, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i

._crit_edge210.i.i.i:                             ; preds = %.backedge.i.i.i, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEB11_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.10144.0.copyload.i = phi i64 [ 0, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtB7_10graph_impl5GraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEB11_ENtB5_9Visitable9reset_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.qk, %.backedge.i.i.i ]
  %i.mu = icmp eq i64 %i.lx, 0
  br i1 %i.mu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i53.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i53.i.i.i: ; preds = %._crit_edge210.i.i.i
  %i.mv = shl nuw i64 %i.lx, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lw, i64 noundef %i.mv, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113243
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i, %.body.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !113244)
  %.val.i165.i.i = load ptr, ptr %i.lu, align 8, !alias.scope !113244, !noalias !113226, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i166.i.i = load i64, ptr %i.lv, align 8, !alias.scope !113244, !noalias !113226, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113245), !noalias !113246
  %i.mw = icmp eq i64 %.val1.i166.i.i, 0
  br i1 %i.mw, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i173.i.i, label %.lr.ph.i.i.i167.i.i

.lr.ph.i.i.i167.i.i:                              ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i172.i.i
  %.sroa.0.012.i.i.i168.i.i = phi i64 [ %i.my, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i172.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %.val.i165.i.i, i64 %.sroa.0.012.i.i.i168.i.i ; 2 uses
  %i.my = add nuw nsw i64 %.sroa.0.012.i.i.i168.i.i, 1 ; 2 uses
  %.val8.i.i.i169.i.i = load i64, ptr %i.mx, align 8, !alias.scope !113245, !noalias !113247 ; 2 uses
  %i.mz = icmp eq i64 %.val8.i.i.i169.i.i, 0
  br i1 %i.mz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i172.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i170.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i170.i.i: ; preds = %.lr.ph.i.i.i167.i.i
  %i.na = getelementptr i8, ptr %i.mx, i64 8
  %.val9.i.i.i171.i.i = load ptr, ptr %i.na, align 8, !alias.scope !113245, !noalias !113247, !nonnull !67, !noundef !67
  %i.nb = shl nuw i64 %.val8.i.i.i169.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i171.i.i, i64 noundef %i.nb, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113248
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i172.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i172.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i170.i.i, %.lr.ph.i.i.i167.i.i
  %i.nc = icmp eq i64 %i.my, %.val1.i166.i.i
  br i1 %i.nc, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i173.i.i, label %.lr.ph.i.i.i167.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i173.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i172.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.val2.i174.i.i = load i64, ptr %i.t, align 8, !alias.scope !113244, !noalias !113226 ; 2 uses
  %i.nd = icmp eq i64 %.val2.i174.i.i, 0
  br i1 %i.nd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit176.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i175.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i175.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i173.i.i
  %i.ne = mul nuw i64 %.val2.i174.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i165.i.i, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113247
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit176.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i53.i.i.i, %._crit_edge210.i.i.i
  %.sroa.0142.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !113249
  %.sroa.6143.0.copyload.i = load ptr, ptr %i.lu, align 8, !noalias !113249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !113226
  call void @llvm.experimental.noalias.scope.decl(metadata !113250)
  %.val.i55.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !113250, !noalias !113226 ; 2 uses
  %i.nf = icmp eq i64 %.val.i55.i.i.i, 0
  br i1 %i.nf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ng, align 8, !alias.scope !113250, !noalias !113226, !nonnull !67, !noundef !67
  %i.nh = shl nuw i64 %.val.i55.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113251
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit54.i.i.i
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %.thread123.i.i.i, !noalias !113226

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i56.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !113226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !113226
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %_RINvNtNtNtCs68Jln09rRqb_8petgraph4algo3scc12kosaraju_scc12kosaraju_sccRINtNtB8_10graph_impl5GraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1C_5types3any5PyAnyEB1x_EECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.bw, !noalias !113199

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.i.i.i: ; preds = %bb.cp
  %.val35.i.i.i = load ptr, ptr %i.li, align 8, !noalias !113226, !nonnull !67, !noundef !67
  %i.ni = lshr i64 %i.ms, 6
  %i.nj = and i64 %i.ms, 63
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.val35.i.i.i, i64 %i.ni
  %i.nl = load i64, ptr %i.nk, align 8, !noalias !113226, !noundef !67
  %i.nm = lshr i64 %i.nl, %i.nj
  %i.nn = trunc i64 %i.nm to i1
  br i1 %i.nn, label %.backedge.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.i.i.i, %bb.cp
  store i64 0, ptr %i.lt, align 8, !noalias !113226
  %i.no = load i64, ptr %i.u, align 8, !range !70, !alias.scope !113252, !noalias !113226, !noundef !67
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #62
          to label %bb.cr unwind label %bb.co, !noalias !113226

bb.cr:                                            ; preds = %bb.cq, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit52.thread.i.i.i
  %i.nq = load ptr, ptr %i.mc, align 8, !alias.scope !113252, !noalias !113226, !nonnull !67, !noundef !67
  store i32 %i.mr, ptr %i.nq, align 4, !noalias !113226
  store i64 1, ptr %i.lt, align 8, !alias.scope !113252, !noalias !113226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !113226
  store i64 0, ptr %i.s, align 8, !noalias !113226
  store ptr inttoptr (i64 4 to ptr), ptr %i.md, align 8, !noalias !113226
  store i64 0, ptr %i.me, align 8, !noalias !113226
  %i.nr = load i64, ptr %i.lj, align 8, !alias.scope !113253, !noalias !113254
  %i.ns = load ptr, ptr %i.li, align 8, !alias.scope !113253, !noalias !113254, !nonnull !67
  %i.nt = load ptr, ptr %i.mc, align 8, !noalias !113226, !nonnull !67
  br label %.lr.ph699

.lr.ph699:                                        ; preds = %bb.cr, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit65.i.i.i
  %i.nu = phi ptr [ %i.nt, %bb.cr ], [ %i.pz, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit65.i.i.i ]
  %i.nv = phi ptr [ %i.ns, %bb.cr ], [ %i.py, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit65.i.i.i ]
end_hunk_12
begin_hunk_13_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_paths:bb.a
  %.not.i.not.i.i104.i = icmp eq ptr %.val.i.i103.i, null
  br i1 %.not.i.not.i.i104.i, label %.thread420.i.backedge, label %bb.cd

.thread420.i.backedge:                            ; preds = %._crit_edge.i.i.i.i, %bb.cb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i, %bb.ck, %bb.cd
  br label %.thread420.i

bb.cc:                                            ; preds = %bb.cg
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i

bb.cd:                                            ; preds = %bb.cb
  %i.of = trunc i64 %i.nz to i32                  ; 4 uses
  switch i64 %.sroa.10.0.i143, label %bb.ce [
    i64 0, label %.thread420.i.backedge
    i64 1, label %bb.ck
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.og = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128083, !noundef !67
  %i.oh = and i64 %i.nz, 4294967295
  %i.oi = xor i64 %i.oh, %.val3.i.i
  %i.oj = zext i64 %i.oi to i128
  %i.ok = zext i64 %i.og to i128
  %i.ol = mul nuw i128 %i.ok, %i.oj               ; 2 uses
  %i.om = lshr i128 %i.ol, 64
  %i.on = xor i128 %i.om, %i.ol
  %i.oo = trunc i128 %i.on to i64                 ; 2 uses
  %i.op = lshr i64 %i.oo, 57
  %i.oq = trunc nuw nsw i64 %i.op to i8
  %i.or = insertelement <16 x i8> poison, i8 %i.oq, i64 0
  %i.os = shufflevector <16 x i8> %i.or, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %bb.ce
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.ce ], [ %i.pm, %bb.ci ]
  %.pn.i.i.i.i = phi i64 [ %i.oo, %bb.ce ], [ %i.pn, %bb.ci ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.nq ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.ot, align 1, !noalias !128084 ; 2 uses
  %i.ou = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.os
  %i.ov = bitcast <16 x i1> %i.ou to i16          ; 2 uses
  %.not.i.not36.i.i.i.i = icmp eq i16 %i.ov, 0
  br i1 %.not.i.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cf, %bb.ch
  %.sroa.05.0.i37.i.i.i.i = phi i16 [ %i.pl, %bb.ch ], [ %i.ov, %bb.cf ] ; 3 uses
  %i.ow = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i, i1 true)
  %i.ox = zext nneg i16 %i.ow to i64
  %i.oy = add i64 %.sroa.01.0.i.i.i.i.i, %i.ox
  %i.oz = and i64 %i.oy, %i.nq
  %i.pa = sub nsw i64 0, %i.oz
  %i.pb = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i, i64 %i.pa
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 -8
  %.val.i.i.i.i110.i = load i64, ptr %i.pc, align 8, !noalias !128085, !noundef !67 ; 3 uses
  %i.pd = icmp ult i64 %.val.i.i.i.i110.i, %.sroa.10.0.i143
  br i1 %i.pd, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i110.i, i64 noundef %.sroa.10.0.i143, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc112.i unwind label %bb.cc, !noalias !128015

.noexc112.i:                                      ; preds = %bb.cg
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.pe = getelementptr inbounds nuw [24 x i8], ptr %i.no, i64 %.val.i.i.i.i110.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %.val2.i.i.i.i.i.i = load i32, ptr %i.pf, align 4, !noalias !128086, !noundef !67
  %i.pg = icmp eq i32 %.val2.i.i.i.i.i.i, %i.of
  br i1 %i.pg, label %.thread423.i, label %bb.ch, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.ch, %bb.cf
  %i.ph = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.pi = bitcast <16 x i1> %i.ph to i16
  %i.pj = icmp eq i16 %i.pi, 0
  br i1 %i.pj, label %bb.ci, label %.thread420.i.backedge, !prof !71

bb.ch:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.pk = add i16 %.sroa.05.0.i37.i.i.i.i, -1
  %i.pl = and i16 %i.pk, %.sroa.05.0.i37.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i111.i = icmp eq i16 %i.pl, 0
  br i1 %.not.i.not.i.i.i111.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i
  %i.pm = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.pn = add i64 %.sroa.01.0.i.i.i.i.i, %i.pm
  br label %bb.cf

bb.cj:                                            ; preds = %.thread420.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7482, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !128069
  %.sroa.12483.8.copyload487 = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !128069 ; 2 uses
  %i.po = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !128069
  %.sroa.14488.8.copyload492 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !128069
  %.sroa.18498.8..sroa_idx501 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.18498.8.copyload502 = load ptr, ptr %.sroa.18498.8..sroa_idx501, align 8, !noalias !128069
  %.sroa.20503.8..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.20503.8.copyload507 = load i64, ptr %.sroa.20503.8..sroa_idx506, align 8, !noalias !128069
  %i.pp = load <2 x i32>, ptr %i.nn, align 8, !noalias !128069
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i unwind label %bb.ca, !noalias !128015

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i: ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !128015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !128015
  call void @llvm.experimental.noalias.scope.decl(metadata !128087)
  %.val.i115.i = load ptr, ptr %i.lh, align 8, !alias.scope !128087, !noalias !128015, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i116.i = load i64, ptr %i.lf, align 8, !alias.scope !128087, !noalias !128015, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128088)
  %i.pq = icmp eq i64 %.val1.i116.i, 0
  br i1 %i.pq, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i117.i

.lr.ph.i.i.i117.i:                                ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.ps, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i ] ; 2 uses
  %i.pr = getelementptr inbounds nuw [24 x i8], ptr %.val.i115.i, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.ps = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.pr, align 8, !alias.scope !128088, !noalias !128089 ; 2 uses
  %i.pt = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.pt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i117.i
  %i.pu = getelementptr i8, ptr %i.pr, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.pu, align 8, !alias.scope !128088, !noalias !128089, !nonnull !67, !noundef !67
  %i.pv = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.pv, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128090
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i117.i
  %i.pw = icmp eq i64 %i.ps, %.val1.i116.i
  br i1 %i.pw, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i117.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i
  %.val2.i118.i = load i64, ptr %i.ac, align 8, !alias.scope !128087, !noalias !128015 ; 2 uses
  %i.px = icmp eq i64 %.val2.i118.i, 0
  br i1 %i.px, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.py = mul nuw i64 %.val2.i118.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i115.i, i64 noundef %i.py, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128089
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !128015
  call void @llvm.experimental.noalias.scope.decl(metadata !128091)
  call void @llvm.experimental.noalias.scope.decl(metadata !128092)
  %i.pz = icmp eq i64 %i.nq, 0
  br i1 %i.pz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.qa = shl i64 %i.nq, 3
  %i.qb = icmp slt i64 %i.nq, 2305843009213693950
  call void @llvm.assume(i1 %i.qb)
  %i.qc = and i64 %i.qa, -16                      ; 2 uses
  %i.qd = add i64 %i.qc, 16                       ; 2 uses
  %i.qe = add nsw i64 %i.nq, 17
  %i.qf = add i64 %i.qe, %i.qd                    ; 3 uses
  %i.qg = icmp uge i64 %i.qf, %i.qd
  call void @llvm.assume(i1 %i.qg)
  %i.qh = icmp ult i64 %i.qf, 9223372036854775793
  call void @llvm.assume(i1 %i.qh)
  %i.qi = sub nuw nsw i64 -16, %i.qc
  %i.qj = getelementptr inbounds i8, ptr %.sroa.11.0.i, i64 %i.qi
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qj, i64 noundef %i.qf, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128093
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val2.i.i121.i = load i64, ptr %i.ad, align 8, !alias.scope !128094, !noalias !128015 ; 2 uses
  %i.qk = icmp eq i64 %.val2.i.i121.i, 0
  br i1 %i.qk, label %bb.do, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.ql = mul nuw i64 %.val2.i.i121.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.no, i64 noundef %i.ql, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128093
  br label %bb.do

bb.ck:                                            ; preds = %bb.cd
  %.val2.i.i = load i32, ptr %i.np, align 4, !noalias !128095, !noundef !67
  %i.qm = icmp eq i32 %.val2.i.i, %i.of
  br i1 %i.qm, label %.thread423.i, label %.thread420.i.backedge

.thread423.i:                                     ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.ck
  store i64 0, ptr %i.w, align 8, !noalias !128015
  store ptr inttoptr (i64 8 to ptr), ptr %i.nr, align 8, !noalias !128015
  store i64 0, ptr %i.ns, align 8, !noalias !128015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !128015
  store i64 0, ptr %i.x, align 8, !noalias !128015
  store ptr inttoptr (i64 4 to ptr), ptr %i.nt, align 8, !noalias !128015
  store i64 0, ptr %i.nu, align 8, !noalias !128015
  %.val64.i = load i64, ptr %i.nv, align 8, !noalias !128015, !noundef !67 ; 2 uses
  %i.qn = and i64 %.val64.i, 127
  %.not.i.i151 = icmp eq i64 %i.qn, 0
  %i.qo = lshr i64 %.val64.i, 3
  %.idx.i.i = and i64 %i.qo, 2305843009213693936
  %.idx2.i.i = select i1 %.not.i.i151, i64 0, i64 16
  %i.qp = add nuw nsw i64 %.idx2.i.i, %.idx.i.i   ; 2 uses
  %i.qq = icmp samesign eq i64 %i.qp, 0
  br i1 %i.qq, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.thread423.i
  %.val63.i = load ptr, ptr %i.y, align 8, !noalias !128015, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val63.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.qp, i1 false), !noalias !128015
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i

bb.cl:                                            ; preds = %bb.cm, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i
  %.sroa.021.0.i = phi i1 [ true, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i ], [ false, %bb.cm ] ; 2 uses
  %i.qr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val59.i = load i64, ptr %i.x, align 8, !noalias !128015 ; 2 uses
  %i.qs = icmp eq i64 %.val59.i, 0
  br i1 %i.qs, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.cl
  %.val60.i = load ptr, ptr %i.nt, align 8, !noalias !128015, !nonnull !67, !noundef !67
  %i.qt = shl nuw i64 %.val59.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60.i, i64 noundef %i.qt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128015
  br i1 %.sroa.021.0.i, label %bb.cq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i: ; preds = %.lr.ph.preheader.i.i, %.thread423.i
  invoke fastcc void @_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path32single_source_all_shortest_paths32single_source_all_shortest_paths13collect_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3p_5types3any5PyAnyEB3k_EECskcxRuJ53GpR_9rustworkx(i32 noundef %i.of, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, i32 noundef %i.ap, ptr noalias nofree noundef align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.cm unwind label %bb.cl, !noalias !128015

bb.cm:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !128015
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef align 8 dereferenceable(64) %i.z, i32 noundef %i.of, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.cn unwind label %bb.cl, !noalias !128015

bb.cn:                                            ; preds = %bb.cm
  %.sroa.0313.0.copyload.i = load i64, ptr %i.nw, align 8, !noalias !128015 ; 3 uses
  %.sroa.4314.0.copyload.i = load ptr, ptr %.sroa.4314.0..sroa_idx.i, align 8, !noalias !128015 ; 3 uses
  %.sroa.5315.0.copyload.i = load i64, ptr %.sroa.5315.0..sroa_idx.i, align 8, !noalias !128015 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !128015
  %i.qu = icmp eq i64 %.sroa.0313.0.copyload.i, -1
  br i1 %i.qu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4314.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !128096)
  %i.qv = icmp eq i64 %.sroa.5315.0.copyload.i, 0
  br i1 %i.qv, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i128.i

.lr.ph.i.i.i.i128.i:                              ; preds = %bb.co, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.qx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %bb.co ] ; 2 uses
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4314.0.copyload.i, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.qx = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.qw, align 8, !alias.scope !128096, !noalias !128097 ; 2 uses
  %i.qy = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.qy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i128.i
  %i.qz = getelementptr i8, ptr %i.qw, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.qz, align 8, !alias.scope !128096, !noalias !128097, !nonnull !67, !noundef !67
  %i.ra = shl nuw i64 %.val8.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.ra, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128098
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i.i128.i
  %i.rb = icmp eq i64 %i.qx, %.sroa.5315.0.copyload.i
  br i1 %i.rb, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i128.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.co
  %i.rc = icmp eq i64 %.sroa.0313.0.copyload.i, 0
  br i1 %i.rc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.rd = mul nuw i64 %.sroa.0313.0.copyload.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4314.0.copyload.i, i64 noundef %i.rd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128097
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.cn
  %.val57.i = load i64, ptr %i.x, align 8, !noalias !128015 ; 2 uses
  %i.re = icmp eq i64 %.val57.i, 0
  br i1 %i.re, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val58.i = load ptr, ptr %i.nt, align 8, !noalias !128015, !nonnull !67, !noundef !67
  %i.rf = shl nuw i64 %.val57.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i, i64 noundef %i.rf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128015
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.cl
  br i1 %.sroa.021.0.i, label %bb.cq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !128015
  br label %.thread420.i.backedge

bb.cp:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !128015
  unreachable

bb.cq:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #63, !noalias !128015
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i

.thread406.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i, %.thread410.i
  %.pn.pn.pn409.i = phi { ptr, i32 } [ %i.nx, %.thread410.i ], [ %.pn.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.z) #63, !noalias !128015
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i

bb.cr:                                            ; preds = %.noexc93.thread402.i
  %i.rh = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %.sroa.5.0.i178405.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !128015
  store i64 0, ptr %i.aa, align 8, !noalias !128015
  store ptr inttoptr (i64 4 to ptr), ptr %i.ld, align 8, !noalias !128015
  store i64 0, ptr %i.le, align 8, !noalias !128015
  %i.rj = and i64 %i.lj, 4294967295               ; 5 uses
  %i.rk = icmp ugt i64 %.val1.i.i.i, %i.rj
  br i1 %i.rk, label %bb.cs, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i

bb.cs:                                            ; preds = %bb.cr
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.rj ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !noalias !128099, !noundef !67
  %.not.i.i.i.i = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i.i, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.cs
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !128099
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.cs, %bb.cr
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.cr ], [ -1, %bb.cs ] ; 2 uses
  %i.rn = zext i32 %.sroa.5.0.i.i.i to i64        ; 2 uses
  %i.ro = icmp ugt i64 %i.at, %i.rn
  br i1 %i.ro, label %.lr.ph.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit142.i

.lr.ph.i:                                         ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i
  %i.rp = phi i64 [ %i.ur, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i ], [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i ] ; 7 uses
  %i.rq = phi i64 [ %i.us, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i ], [ %i.rn, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.14265.0526.i = phi i32 [ %i.rt, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i ], [ %.sroa.5.0.i.i.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.rr = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.rq ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 12
  %i.rt = load i32, ptr %i.rs, align 4, !noalias !128100, !noundef !67 ; 2 uses
  %i.ru = load ptr, ptr %i.rr, align 8, !noalias !128100, !noundef !67
  %.not43.i.i = icmp eq ptr %i.ru, null
  br i1 %.not43.i.i, label %bb.ct, label %bb.da, !prof !71

bb.ct:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc136.i unwind label %.loopexit.split-lp.i, !noalias !128015

.noexc136.i:                                      ; preds = %bb.ct
  unreachable

.loopexit.i:                                      ; preds = %bb.dl
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp.i:                             ; preds = %bb.dh, %.invoke689.i, %bb.ct
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.val47.i = load i64, ptr %i.aa, align 8, !noalias !128015 ; 2 uses
  %i.rv = icmp eq i64 %.val47.i, 0
  br i1 %i.rv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i

._crit_edge.i:                                    ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i
  %i.rw = icmp ult i64 %i.ur, 2305843009213693952
  call void @llvm.assume(i1 %i.rw)
  %i.rx = icmp eq i64 %i.ur, 0
  %.val51.i.pre = load i64, ptr %i.aa, align 8, !noalias !128015 ; 5 uses
  br i1 %i.rx, label %._crit_edge.thread.i, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge.i
  %.sroa.6296.0.copyload.i = load ptr, ptr %i.ld, align 8, !noalias !128015 ; 3 uses
  %i.ry = icmp ult i64 %i.rj, %i.lg
  br i1 %i.ry, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %i.li, i64 %i.rj ; 4 uses
  %.val55.i = load i64, ptr %i.rz, align 8, !noalias !128015 ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 8      ; 2 uses
  %i.sb = icmp eq i64 %.val55.i, 0
  br i1 %i.sb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit138.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i137.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i137.i: ; preds = %bb.cw
  %.val56.i = load ptr, ptr %i.sa, align 8, !noalias !128015, !nonnull !67, !noundef !67
  %i.sc = shl nuw i64 %.val55.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i, i64 noundef %i.sc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128015
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit138.i

bb.cx:                                            ; preds = %bb.cv
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.rj, i64 noundef %i.lg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822) #61
          to label %bb.cy unwind label %bb.cz, !noalias !128015

bb.cy:                                            ; preds = %bb.cx
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit138.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i137.i, %bb.cw
  store i64 %.val51.i.pre, ptr %i.rz, align 8, !noalias !128015
  store ptr %.sroa.6296.0.copyload.i, ptr %i.sa, align 8, !noalias !128015
  %.sroa.7301.0..sroa_idx304.i = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store i64 %i.ur, ptr %.sroa.7301.0..sroa_idx304.i, align 8, !noalias !128015
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit142.i
end_hunk_13
begin_hunk_14_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_paths:bb.a
  %.not.i.not.i.i104.i261 = icmp eq ptr %.val.i.i103.i260, null
  br i1 %.not.i.not.i.i104.i261, label %.thread422.i.backedge, label %bb.gd

.thread422.i.backedge:                            ; preds = %._crit_edge.i.i.i.i302, %bb.gb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i289, %bb.gk, %bb.gd
  br label %.thread422.i

bb.gc:                                            ; preds = %bb.gg
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274

bb.gd:                                            ; preds = %bb.gb
  %i.ahy = trunc i64 %i.ahs to i32                ; 4 uses
  switch i64 %.sroa.10.0.i198, label %bb.ge [
    i64 0, label %.thread422.i.backedge
    i64 1, label %bb.gk
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.ahz = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128189, !noundef !67
  %i.aia = and i64 %i.ahs, 4294967295
  %i.aib = xor i64 %i.aia, %.val3.i.i259
  %i.aic = zext i64 %i.aib to i128
  %i.aid = zext i64 %i.ahz to i128
  %i.aie = mul nuw i128 %i.aid, %i.aic            ; 2 uses
  %i.aif = lshr i128 %i.aie, 64
  %i.aig = xor i128 %i.aif, %i.aie
  %i.aih = trunc i128 %i.aig to i64               ; 2 uses
  %i.aii = lshr i64 %i.aih, 57
  %i.aij = trunc nuw nsw i64 %i.aii to i8
  %i.aik = insertelement <16 x i8> poison, i8 %i.aij, i64 0
  %i.ail = shufflevector <16 x i8> %i.aik, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gi, %bb.ge
  %.sroa.011.0.i.i.i.i.i290 = phi i64 [ 0, %bb.ge ], [ %i.ajf, %bb.gi ]
  %.pn.i.i.i.i291 = phi i64 [ %i.aih, %bb.ge ], [ %i.ajg, %bb.gi ]
  %.sroa.01.0.i.i.i.i.i292 = and i64 %.pn.i.i.i.i291, %i.ahj ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i197, i64 %.sroa.01.0.i.i.i.i.i292
  %.sroa.0.0.copyload.i24.i.i.i.i293 = load <16 x i8>, ptr %i.aim, align 1, !noalias !128190 ; 2 uses
  %i.ain = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i293, %i.ail
  %i.aio = bitcast <16 x i1> %i.ain to i16        ; 2 uses
  %.not.i.not36.i.i.i.i294 = icmp eq i16 %i.aio, 0
  br i1 %.not.i.not36.i.i.i.i294, label %._crit_edge.i.i.i.i302, label %.lr.ph.i.i.i.i295

.lr.ph.i.i.i.i295:                                ; preds = %bb.gf, %bb.gh
  %.sroa.05.0.i37.i.i.i.i296 = phi i16 [ %i.aje, %bb.gh ], [ %i.aio, %bb.gf ] ; 3 uses
  %i.aip = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i296, i1 true)
  %i.aiq = zext nneg i16 %i.aip to i64
  %i.air = add i64 %.sroa.01.0.i.i.i.i.i292, %i.aiq
  %i.ais = and i64 %i.air, %i.ahj
  %i.ait = sub nsw i64 0, %i.ais
  %i.aiu = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i197, i64 %i.ait
  %i.aiv = getelementptr inbounds i8, ptr %i.aiu, i64 -8
  %.val.i.i.i.i110.i297 = load i64, ptr %i.aiv, align 8, !noalias !128191, !noundef !67 ; 3 uses
  %i.aiw = icmp ult i64 %.val.i.i.i.i110.i297, %.sroa.10.0.i198
  br i1 %i.aiw, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i299, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i295
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i110.i297, i64 noundef %.sroa.10.0.i198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc112.i298 unwind label %bb.gc, !noalias !128119

.noexc112.i298:                                   ; preds = %bb.gg
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i299: ; preds = %.lr.ph.i.i.i.i295
  %i.aix = getelementptr inbounds nuw [24 x i8], ptr %i.ahh, i64 %.val.i.i.i.i110.i297
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 16
  %.val2.i.i.i.i.i.i300 = load i32, ptr %i.aiy, align 4, !noalias !128192, !noundef !67
  %i.aiz = icmp eq i32 %.val2.i.i.i.i.i.i300, %i.ahy
  br i1 %i.aiz, label %.thread425.i, label %bb.gh, !prof !77

._crit_edge.i.i.i.i302:                           ; preds = %bb.gh, %bb.gf
  %i.aja = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i293, splat (i8 -1)
  %i.ajb = bitcast <16 x i1> %i.aja to i16
  %i.ajc = icmp eq i16 %i.ajb, 0
  br i1 %i.ajc, label %bb.gi, label %.thread422.i.backedge, !prof !71

bb.gh:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i299
  %i.ajd = add i16 %.sroa.05.0.i37.i.i.i.i296, -1
  %i.aje = and i16 %i.ajd, %.sroa.05.0.i37.i.i.i.i296 ; 2 uses
  %.not.i.not.i.i.i111.i301 = icmp eq i16 %i.aje, 0
  br i1 %.not.i.not.i.i.i111.i301, label %._crit_edge.i.i.i.i302, label %.lr.ph.i.i.i.i295

bb.gi:                                            ; preds = %._crit_edge.i.i.i.i302
  %i.ajf = add i64 %.sroa.011.0.i.i.i.i.i290, 16  ; 2 uses
  %i.ajg = add i64 %.sroa.01.0.i.i.i.i.i292, %i.ajf
  br label %bb.gf

bb.gj:                                            ; preds = %.thread422.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !128174
  %.sroa.12444.8.copyload448 = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i256, align 8, !noalias !128174 ; 2 uses
  %i.ajh = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i.i.i257, align 8, !noalias !128174
  %.sroa.14449.8.copyload453 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i257, align 8, !noalias !128174
  %.sroa.18.8..sroa_idx461 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.18.8.copyload462 = load ptr, ptr %.sroa.18.8..sroa_idx461, align 8, !noalias !128174
  %.sroa.20.8..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.20.8.copyload466 = load i64, ptr %.sroa.20.8..sroa_idx465, align 8, !noalias !128174
  %i.aji = load <2 x i32>, ptr %i.ahg, align 8, !noalias !128174
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303 unwind label %bb.ga, !noalias !128119

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303: ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !128119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !128119
  call void @llvm.experimental.noalias.scope.decl(metadata !128193)
  %.val.i115.i304 = load ptr, ptr %i.afa, align 8, !alias.scope !128193, !noalias !128119, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i116.i305 = load i64, ptr %i.aey, align 8, !alias.scope !128193, !noalias !128119, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128194)
  %i.ajj = icmp eq i64 %.val1.i116.i305, 0
  br i1 %i.ajj, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312, label %.lr.ph.i.i.i117.i306

.lr.ph.i.i.i117.i306:                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311
  %.sroa.0.012.i.i.i.i307 = phi i64 [ %i.ajl, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311 ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303 ] ; 2 uses
  %i.ajk = getelementptr inbounds nuw [24 x i8], ptr %.val.i115.i304, i64 %.sroa.0.012.i.i.i.i307 ; 2 uses
  %i.ajl = add nuw nsw i64 %.sroa.0.012.i.i.i.i307, 1 ; 2 uses
  %.val8.i.i.i.i308 = load i64, ptr %i.ajk, align 8, !alias.scope !128194, !noalias !128195 ; 2 uses
  %i.ajm = icmp eq i64 %.val8.i.i.i.i308, 0
  br i1 %i.ajm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i309

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i309: ; preds = %.lr.ph.i.i.i117.i306
  %i.ajn = getelementptr i8, ptr %i.ajk, i64 8
  %.val9.i.i.i.i310 = load ptr, ptr %i.ajn, align 8, !alias.scope !128194, !noalias !128195, !nonnull !67, !noundef !67
  %i.ajo = shl nuw i64 %.val8.i.i.i.i308, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i310, i64 noundef %i.ajo, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128196
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i309, %.lr.ph.i.i.i117.i306
  %i.ajp = icmp eq i64 %i.ajl, %.val1.i116.i305
  br i1 %i.ajp, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312, label %.lr.ph.i.i.i117.i306

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303
  %.val2.i118.i313 = load i64, ptr %i.n, align 8, !alias.scope !128193, !noalias !128119 ; 2 uses
  %i.ajq = icmp eq i64 %.val2.i118.i313, 0
  br i1 %i.ajq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i314

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i314: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312
  %i.ajr = mul nuw i64 %.val2.i118.i313, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i115.i304, i64 noundef %i.ajr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128195
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i314, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !128119
  call void @llvm.experimental.noalias.scope.decl(metadata !128197)
  call void @llvm.experimental.noalias.scope.decl(metadata !128198)
  %i.ajs = icmp eq i64 %i.ahj, 0
  br i1 %i.ajs, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i316

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i316: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315
  %i.ajt = shl i64 %i.ahj, 3
  %i.aju = icmp slt i64 %i.ahj, 2305843009213693950
  call void @llvm.assume(i1 %i.aju)
  %i.ajv = and i64 %i.ajt, -16                    ; 2 uses
  %i.ajw = add i64 %i.ajv, 16                     ; 2 uses
  %i.ajx = add nsw i64 %i.ahj, 17
  %i.ajy = add i64 %i.ajx, %i.ajw                 ; 3 uses
  %i.ajz = icmp uge i64 %i.ajy, %i.ajw
  call void @llvm.assume(i1 %i.ajz)
  %i.aka = icmp ult i64 %i.ajy, 9223372036854775793
  call void @llvm.assume(i1 %i.aka)
  %i.akb = sub nuw nsw i64 -16, %i.ajv
  %i.akc = getelementptr inbounds i8, ptr %.sroa.11.0.i197, i64 %i.akb
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akc, i64 noundef %i.ajy, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128199
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i316, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315
  %.val2.i.i121.i318 = load i64, ptr %i.o, align 8, !alias.scope !128200, !noalias !128119 ; 2 uses
  %i.akd = icmp eq i64 %.val2.i.i121.i318, 0
  br i1 %i.akd, label %bb.ht, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i319

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i319: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317
  %i.ake = mul nuw i64 %.val2.i.i121.i318, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahh, i64 noundef %i.ake, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128199
  br label %bb.ht

bb.gk:                                            ; preds = %bb.gd
  %.val2.i.i262 = load i32, ptr %i.ahi, align 4, !noalias !128201, !noundef !67
  %i.akf = icmp eq i32 %.val2.i.i262, %i.ahy
  br i1 %i.akf, label %.thread425.i, label %.thread422.i.backedge

.thread425.i:                                     ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i299, %bb.gk
  store i64 0, ptr %i.h, align 8, !noalias !128119
  store ptr inttoptr (i64 8 to ptr), ptr %i.ahk, align 8, !noalias !128119
  store i64 0, ptr %i.ahl, align 8, !noalias !128119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !128119
  store i64 0, ptr %i.i, align 8, !noalias !128119
  store ptr inttoptr (i64 4 to ptr), ptr %i.ahm, align 8, !noalias !128119
  store i64 0, ptr %i.ahn, align 8, !noalias !128119
  %.val64.i263 = load i64, ptr %i.aho, align 8, !noalias !128119, !noundef !67 ; 2 uses
  %i.akg = and i64 %.val64.i263, 127
  %.not.i.i264 = icmp eq i64 %i.akg, 0
  %i.akh = lshr i64 %.val64.i263, 3
  %.idx.i.i265 = and i64 %i.akh, 2305843009213693936
  %.idx2.i.i266 = select i1 %.not.i.i264, i64 0, i64 16
  %i.aki = add nuw nsw i64 %.idx2.i.i266, %.idx.i.i265 ; 2 uses
  %i.akj = icmp samesign eq i64 %i.aki, 0
  br i1 %i.akj, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269, label %.lr.ph.preheader.i.i267

.lr.ph.preheader.i.i267:                          ; preds = %.thread425.i
  %.val63.i268 = load ptr, ptr %i.j, align 8, !noalias !128119, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val63.i268, i8 0, i64 range(i64 0, 2305843009213693953) %i.aki, i1 false), !noalias !128119
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269

bb.gl:                                            ; preds = %bb.gm, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269
  %.sroa.021.0.i270 = phi i1 [ true, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269 ], [ false, %bb.gm ] ; 2 uses
  %i.akk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val59.i271 = load i64, ptr %i.i, align 8, !noalias !128119 ; 2 uses
  %i.akl = icmp eq i64 %.val59.i271, 0
  br i1 %i.akl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i276, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i272

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i272: ; preds = %bb.gl
  %.val60.i273 = load ptr, ptr %i.ahm, align 8, !noalias !128119, !nonnull !67, !noundef !67
  %i.akm = shl nuw i64 %.val59.i271, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60.i273, i64 noundef %i.akm, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128119
  br i1 %.sroa.021.0.i270, label %bb.gq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269: ; preds = %.lr.ph.preheader.i.i267, %.thread425.i
  invoke fastcc void @_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path32single_source_all_shortest_paths32single_source_all_shortest_paths13collect_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3p_5types3any5PyAnyEB3k_NtB2k_10UndirectedEECskcxRuJ53GpR_9rustworkx(i32 noundef %i.ahy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, i32 noundef %i.ap, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.gm unwind label %bb.gl, !noalias !128119

bb.gm:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !128119
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(64) %i.k, i32 noundef %i.ahy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.gn unwind label %bb.gl, !noalias !128119

bb.gn:                                            ; preds = %bb.gm
  %.sroa.0315.0.copyload.i = load i64, ptr %i.ahp, align 8, !noalias !128119 ; 3 uses
  %.sroa.4316.0.copyload.i = load ptr, ptr %.sroa.4316.0..sroa_idx.i, align 8, !noalias !128119 ; 3 uses
  %.sroa.5317.0.copyload.i = load i64, ptr %.sroa.5317.0..sroa_idx.i, align 8, !noalias !128119 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !128119
  %i.akn = icmp eq i64 %.sroa.0315.0.copyload.i, -1
  br i1 %i.akn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4316.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !128202)
  %i.ako = icmp eq i64 %.sroa.5317.0.copyload.i, 0
  br i1 %i.ako, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283, label %.lr.ph.i.i.i.i128.i277

.lr.ph.i.i.i.i128.i277:                           ; preds = %bb.go, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282
  %.sroa.0.012.i.i.i.i.i278 = phi i64 [ %i.akq, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282 ], [ 0, %bb.go ] ; 2 uses
  %i.akp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4316.0.copyload.i, i64 %.sroa.0.012.i.i.i.i.i278 ; 2 uses
  %i.akq = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i278, 1 ; 2 uses
  %.val8.i.i.i.i.i279 = load i64, ptr %i.akp, align 8, !alias.scope !128202, !noalias !128203 ; 2 uses
  %i.akr = icmp eq i64 %.val8.i.i.i.i.i279, 0
  br i1 %i.akr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i280

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i280: ; preds = %.lr.ph.i.i.i.i128.i277
  %i.aks = getelementptr i8, ptr %i.akp, i64 8
  %.val9.i.i.i.i.i281 = load ptr, ptr %i.aks, align 8, !alias.scope !128202, !noalias !128203, !nonnull !67, !noundef !67
  %i.akt = shl nuw i64 %.val8.i.i.i.i.i279, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i281, i64 noundef %i.akt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128204
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i280, %.lr.ph.i.i.i.i128.i277
  %i.aku = icmp eq i64 %i.akq, %.sroa.5317.0.copyload.i
  br i1 %i.aku, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283, label %.lr.ph.i.i.i.i128.i277

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282, %bb.go
  %i.akv = icmp eq i64 %.sroa.0315.0.copyload.i, 0
  br i1 %i.akv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i284

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i284: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283
  %i.akw = mul nuw i64 %.sroa.0315.0.copyload.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4316.0.copyload.i, i64 noundef %i.akw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128203
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i284, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283, %bb.gn
  %.val57.i286 = load i64, ptr %i.i, align 8, !noalias !128119 ; 2 uses
  %i.akx = icmp eq i64 %.val57.i286, 0
  br i1 %i.akx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i289, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i287

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i287: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285
  %.val58.i288 = load ptr, ptr %i.ahm, align 8, !noalias !128119, !nonnull !67, !noundef !67
  %i.aky = shl nuw i64 %.val57.i286, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i288, i64 noundef %i.aky, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128119
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i289

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i276: ; preds = %bb.gl
  br i1 %.sroa.021.0.i270, label %bb.gq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i289: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i287, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !128119
  br label %.thread422.i.backedge

bb.gp:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274
  %i.akz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !128119
  unreachable

bb.gq:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i276, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i272
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #63, !noalias !128119
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274

.thread408.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274, %.thread412.i
  %.pn.pn.pn411.i = phi { ptr, i32 } [ %i.ahq, %.thread412.i ], [ %.pn.pn.i275, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274 ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.k) #63, !noalias !128119
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i

bb.gr:                                            ; preds = %.noexc93.thread404.i
  %i.ala = getelementptr inbounds nuw [24 x i8], ptr %i.aeq, i64 %.sroa.5.0.i181407.i
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !128119
  store i64 0, ptr %i.l, align 8, !noalias !128119
  store ptr inttoptr (i64 4 to ptr), ptr %i.aes, align 8, !noalias !128119
  store i64 0, ptr %i.aet, align 8, !noalias !128119
  %i.alc = and i64 %i.afc, 4294967295             ; 5 uses
  %i.ald = icmp ugt i64 %.val1.i.i.i161, %i.alc
  br i1 %i.ald, label %bb.gs, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader

bb.gs:                                            ; preds = %bb.gr
  %i.ale = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i160, i64 %i.alc ; 3 uses
  %i.alf = load ptr, ptr %i.ale, align 8, !noalias !128205, !noundef !67
  %.not.i.i.i.i246 = icmp eq ptr %i.alf, null
  br i1 %.not.i.i.i.i246, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.gs
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.alg, align 8, !noalias !128205
  %.sroa.5.0..sroa_idx.i.i.i247 = getelementptr inbounds nuw i8, ptr %i.ale, i64 12
  %.sroa.5.0.copyload.i.i.i248 = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i247, align 4, !noalias !128205
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.gs, %bb.gr
  %.sroa.12266.0.i.ph = phi i32 [ -1, %bb.gs ], [ %.sroa.5.0.copyload.i.i.i248, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.gr ]
  %.sroa.9265.0.i.ph = phi i32 [ -1, %bb.gs ], [ %.sroa.0.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.gr ]
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer: ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243
  %.ph1792 = phi i64 [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %i.aos, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243 ] ; 6 uses
  %.sroa.12266.0.i.ph1793 = phi i32 [ %.sroa.12266.0.i.ph, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %.sroa.12266.2.ph.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243 ]
  %.sroa.9265.0.i.ph1794 = phi i32 [ %.sroa.9265.0.i.ph, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %.sroa.9265.1.ph.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243 ]
  %i.alh = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8
  %i.ali = zext i64 %i.alh to i128
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer
  %.sroa.12266.0.i = phi i32 [ %.sroa.12266.0.i.ph1793, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer ], [ %.sroa.12266.2.ph.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge ] ; 2 uses
  %.sroa.9265.0.i = phi i32 [ %.sroa.9265.0.i.ph1794, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer ], [ %.sroa.9265.1.ph.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge ] ; 3 uses
  %i.alj = zext i32 %.sroa.9265.0.i to i64        ; 2 uses
  %i.alk = icmp ugt i64 %i.aex, %i.alj
  br i1 %i.alk, label %bb.gt, label %._crit_edge.i133.i.preheader

._crit_edge.i133.i.preheader:                     ; preds = %bb.gt, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i
  br label %._crit_edge.i133.i

bb.gt:                                            ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i
  %i.all = getelementptr inbounds nuw [24 x i8], ptr %i.aev, i64 %i.alj ; 3 uses
  %i.alm = load ptr, ptr %i.all, align 8, !noalias !128206, !noundef !67
  %.not.i136.i = icmp eq ptr %i.alm, null
  br i1 %.not.i136.i, label %._crit_edge.i133.i.preheader, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.alo = load i32, ptr %i.aln, align 8, !noalias !128206, !noundef !67
  %i.alp = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.alp, align 8, !noalias !128206
  %.sroa.0.0.insert.insert.i.i.i = lshr i64 %.sroa.023.0.copyload.i.i, 32
  br label %bb.hg

._crit_edge.i133.i:                               ; preds = %._crit_edge.i133.i.preheader, %bb.gv
  %i.alq = phi i32 [ %i.alv, %bb.gv ], [ %.sroa.12266.0.i, %._crit_edge.i133.i.preheader ] ; 2 uses
  %i.alr = zext i32 %i.alq to i64                 ; 2 uses
  %i.als = icmp ugt i64 %i.aex, %i.alr
  br i1 %i.als, label %bb.gv, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.gv:                                            ; preds = %._crit_edge.i133.i
  %i.alt = getelementptr inbounds nuw [24 x i8], ptr %i.aev, i64 %i.alr ; 4 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 12
  %i.alv = load i32, ptr %i.alu, align 4, !noalias !128206, !noundef !67 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %.val.i135.i = load i32, ptr %i.alw, align 4, !noalias !128206, !noundef !67
  %i.alx = icmp eq i32 %.val.i135.i, %i.afi
  br i1 %i.alx, label %._crit_edge.i133.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aly = load ptr, ptr %i.alt, align 8, !noalias !128206, !noundef !67
  %.not42.i.i = icmp eq ptr %i.aly, null
  br i1 %.not42.i.i, label %bb.gy, label %bb.gx, !prof !71

bb.gx:                                            ; preds = %bb.gw
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %.sroa.032.0.copyload.i.i224 = load i64, ptr %i.alz, align 8, !noalias !128206
  br label %bb.hg

bb.gy:                                            ; preds = %bb.gw
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc139.i unwind label %.loopexit.split-lp.i225, !noalias !128119

.noexc139.i:                                      ; preds = %bb.gy
  unreachable

.loopexit.i244:                                   ; preds = %bb.hr
  %lpad.loopexit.i245 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

.loopexit.split-lp.i225:                          ; preds = %bb.hn, %.invoke715.i, %bb.gy
  %lpad.loopexit.split-lp.i226 = landingpad { ptr, i32 }
end_hunk_14
begin_hunk_15_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path51___pyfunction_graph_single_source_all_shortest_paths:bb.a
  br i1 %.not.i.not.i.i104.i.i, label %.thread422.i.i.backedge, label %bb.co

.thread422.i.i.backedge:                          ; preds = %._crit_edge.i.i.i.i.i, %bb.cm, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i.i, %bb.cv, %bb.co
  br label %.thread422.i.i

bb.cn:                                            ; preds = %bb.cr
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

bb.co:                                            ; preds = %bb.cm
  %i.pp = trunc i64 %i.pj to i32                  ; 4 uses
  switch i64 %.sroa.10.0.i177.i, label %bb.cp [
    i64 0, label %.thread422.i.i.backedge
    i64 1, label %bb.cv
  ]

bb.cp:                                            ; preds = %bb.co
  %i.pq = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !130273, !noundef !67
  %i.pr = and i64 %i.pj, 4294967295
  %i.ps = xor i64 %i.pr, %.val3.i.i.i
  %i.pt = zext i64 %i.ps to i128
  %i.pu = zext i64 %i.pq to i128
  %i.pv = mul nuw i128 %i.pu, %i.pt               ; 2 uses
  %i.pw = lshr i128 %i.pv, 64
  %i.px = xor i128 %i.pw, %i.pv
  %i.py = trunc i128 %i.px to i64                 ; 2 uses
  %i.pz = lshr i64 %i.py, 57
  %i.qa = trunc nuw nsw i64 %i.pz to i8
  %i.qb = insertelement <16 x i8> poison, i8 %i.qa, i64 0
  %i.qc = shufflevector <16 x i8> %i.qb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ct, %bb.cp
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %bb.cp ], [ %i.qw, %bb.ct ]
  %.pn.i.i.i.i.i = phi i64 [ %i.py, %bb.cp ], [ %i.qx, %bb.ct ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.pa ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.qd, align 1, !noalias !130274 ; 2 uses
  %i.qe = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.qc
  %i.qf = bitcast <16 x i1> %i.qe to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i = icmp eq i16 %i.qf, 0
  br i1 %.not.i.not36.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cq, %bb.cs
  %.sroa.05.0.i37.i.i.i.i.i = phi i16 [ %i.qv, %bb.cs ], [ %i.qf, %bb.cq ] ; 3 uses
  %i.qg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i, i1 true)
  %i.qh = zext nneg i16 %i.qg to i64
  %i.qi = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.qh
  %i.qj = and i64 %i.qi, %i.pa
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i.i, i64 %i.qk
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 -8
  %.val.i.i.i.i110.i.i = load i64, ptr %i.qm, align 8, !noalias !130275, !noundef !67 ; 3 uses
  %i.qn = icmp ult i64 %.val.i.i.i.i110.i.i, %.sroa.10.0.i177.i
  br i1 %i.qn, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i110.i.i, i64 noundef %.sroa.10.0.i177.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc112.i.i unwind label %bb.cn, !noalias !130207

.noexc112.i.i:                                    ; preds = %bb.cr
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %i.oy, i64 %.val.i.i.i.i110.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.qp, align 4, !noalias !130276, !noundef !67
  %i.qq = icmp eq i32 %.val2.i.i.i.i.i.i.i, %i.pp
  br i1 %i.qq, label %.thread425.i.i, label %bb.cs, !prof !77

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cs, %bb.cq
  %i.qr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.qs = bitcast <16 x i1> %i.qr to i16
  %i.qt = icmp eq i16 %i.qs, 0
  br i1 %i.qt, label %bb.ct, label %.thread422.i.i.backedge, !prof !71

bb.cs:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.qu = add i16 %.sroa.05.0.i37.i.i.i.i.i, -1
  %i.qv = and i16 %i.qu, %.sroa.05.0.i37.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i111.i.i = icmp eq i16 %i.qv, 0
  br i1 %.not.i.not.i.i.i111.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ct:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.qw = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.qx = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.qw
  br label %bb.cq

bb.cu:                                            ; preds = %.thread422.i.i
  %.sroa.7254.i.sroa.0.0.copyload = load double, ptr %i.k, align 8, !noalias !130277
  %.sroa.12.8.copyload258.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !130277 ; 3 uses
  %i.qy = load <2 x i64>, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !130277
  %i.qz = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !130277
  %.sroa.14.8.copyload262.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !130277 ; 2 uses
  %.sroa.18.8..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.18.8.copyload270.i = load ptr, ptr %.sroa.18.8..sroa_idx269.i, align 8, !noalias !130277
  %.sroa.20.8..sroa_idx273.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.20.8.copyload274.i = load i64, ptr %.sroa.20.8..sroa_idx273.i, align 8, !noalias !130277
  %i.ra = load <2 x i32>, ptr %i.ox, align 8, !noalias !130277
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i.i unwind label %bb.cl, !noalias !130207

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i.i: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !130207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !130207
  call void @llvm.experimental.noalias.scope.decl(metadata !130278)
  %.val.i115.i.i = load ptr, ptr %i.mr, align 8, !alias.scope !130278, !noalias !130207, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i116.i.i = load i64, ptr %i.mp, align 8, !alias.scope !130278, !noalias !130207, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130279)
  %i.rb = icmp eq i64 %.val1.i116.i.i, 0
  br i1 %i.rb, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i117.i.i

.lr.ph.i.i.i117.i.i:                              ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.rd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i.i ] ; 2 uses
  %i.rc = getelementptr inbounds nuw [24 x i8], ptr %.val.i115.i.i, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.rd = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.rc, align 8, !alias.scope !130279, !noalias !130280 ; 2 uses
  %i.re = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.re, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i117.i.i
  %i.rf = getelementptr i8, ptr %i.rc, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.rf, align 8, !alias.scope !130279, !noalias !130280, !nonnull !67, !noundef !67
  %i.rg = shl nuw i64 %.val8.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.rg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130281
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i117.i.i
  %i.rh = icmp eq i64 %i.rd, %.val1.i116.i.i
  br i1 %i.rh, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i117.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i.i
  %.val2.i118.i.i = load i64, ptr %i.n, align 8, !alias.scope !130278, !noalias !130207 ; 2 uses
  %i.ri = icmp eq i64 %.val2.i118.i.i, 0
  br i1 %i.ri, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.rj = mul nuw i64 %.val2.i118.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i115.i.i, i64 noundef %i.rj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130280
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !130207
  call void @llvm.experimental.noalias.scope.decl(metadata !130282)
  call void @llvm.experimental.noalias.scope.decl(metadata !130283)
  %i.rk = icmp eq i64 %i.pa, 0
  br i1 %i.rk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.rl = shl i64 %i.pa, 3
  %i.rm = icmp slt i64 %i.pa, 2305843009213693950
  call void @llvm.assume(i1 %i.rm)
  %i.rn = and i64 %i.rl, -16                      ; 2 uses
  %i.ro = add i64 %i.rn, 16                       ; 2 uses
  %i.rp = add nsw i64 %i.pa, 17
  %i.rq = add i64 %i.rp, %i.ro                    ; 3 uses
  %i.rr = icmp uge i64 %i.rq, %i.ro
  call void @llvm.assume(i1 %i.rr)
  %i.rs = icmp ult i64 %i.rq, 9223372036854775793
  call void @llvm.assume(i1 %i.rs)
  %i.rt = sub nuw nsw i64 -16, %i.rn
  %i.ru = getelementptr inbounds i8, ptr %.sroa.11.0.i.i, i64 %i.rt
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ru, i64 noundef %i.rq, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !130284
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i121.i.i = load i64, ptr %i.o, align 8, !alias.scope !130285, !noalias !130207 ; 2 uses
  %i.rv = icmp eq i64 %.val2.i.i121.i.i, 0
  br i1 %i.rv, label %bb.ee, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.rw = mul nuw i64 %.val2.i.i121.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oy, i64 noundef %i.rw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130284
  br label %bb.ee

bb.cv:                                            ; preds = %bb.co
  %.val2.i.i.i = load i32, ptr %i.oz, align 4, !noalias !130286, !noundef !67
  %i.rx = icmp eq i32 %.val2.i.i.i, %i.pp
  br i1 %i.rx, label %.thread425.i.i, label %.thread422.i.i.backedge

.thread425.i.i:                                   ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.cv
  store i64 0, ptr %i.h, align 8, !noalias !130207
  store ptr inttoptr (i64 8 to ptr), ptr %i.pb, align 8, !noalias !130207
  store i64 0, ptr %i.pc, align 8, !noalias !130207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !130207
  store i64 0, ptr %i.i, align 8, !noalias !130207
  store ptr inttoptr (i64 4 to ptr), ptr %i.pd, align 8, !noalias !130207
  store i64 0, ptr %i.pe, align 8, !noalias !130207
  %.val64.i.i = load i64, ptr %i.pf, align 8, !noalias !130207, !noundef !67 ; 2 uses
  %i.ry = and i64 %.val64.i.i, 127
  %.not.i.i185.i = icmp eq i64 %i.ry, 0
  %i.rz = lshr i64 %.val64.i.i, 3
  %.idx.i.i.i = and i64 %i.rz, 2305843009213693936
  %.idx2.i.i.i = select i1 %.not.i.i185.i, i64 0, i64 16
  %i.sa = add nuw nsw i64 %.idx2.i.i.i, %.idx.i.i.i ; 2 uses
  %i.sb = icmp samesign eq i64 %i.sa, 0
  br i1 %i.sb, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.thread425.i.i
  %.val63.i.i = load ptr, ptr %i.j, align 8, !noalias !130207, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val63.i.i, i8 0, i64 range(i64 0, 2305843009213693953) %i.sa, i1 false), !noalias !130207
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i

bb.cw:                                            ; preds = %bb.cx, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i
  %.sroa.021.0.i.i = phi i1 [ true, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i ], [ false, %bb.cx ] ; 2 uses
  %i.sc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val59.i.i = load i64, ptr %i.i, align 8, !noalias !130207 ; 2 uses
  %i.sd = icmp eq i64 %.val59.i.i, 0
  br i1 %i.sd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.cw
  %.val60.i.i = load ptr, ptr %i.pd, align 8, !noalias !130207, !nonnull !67, !noundef !67
  %i.se = shl nuw i64 %.val59.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60.i.i, i64 noundef %i.se, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130207
  br i1 %.sroa.021.0.i.i, label %bb.db, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %.thread425.i.i
  invoke fastcc void @_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path32single_source_all_shortest_paths32single_source_all_shortest_paths13collect_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3p_5types3any5PyAnyEB3k_NtB2k_10UndirectedEECskcxRuJ53GpR_9rustworkx(i32 noundef %i.pp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, i32 noundef %i.ca, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.cx unwind label %bb.cw, !noalias !130207

bb.cx:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !130207
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(64) %i.k, i32 noundef %i.pp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.cy unwind label %bb.cw, !noalias !130207

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0315.0.copyload.i.i = load i64, ptr %i.pg, align 8, !noalias !130207 ; 3 uses
  %.sroa.4316.0.copyload.i.i = load ptr, ptr %.sroa.4316.0..sroa_idx.i.i, align 8, !noalias !130207 ; 3 uses
  %.sroa.5317.0.copyload.i.i = load i64, ptr %.sroa.5317.0..sroa_idx.i.i, align 8, !noalias !130207 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !130207
  %i.sf = icmp eq i64 %.sroa.0315.0.copyload.i.i, -1
  br i1 %i.sf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4316.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !130287)
  %i.sg = icmp eq i64 %.sroa.5317.0.copyload.i.i, 0
  br i1 %i.sg, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i128.i.i

.lr.ph.i.i.i.i128.i.i:                            ; preds = %bb.cz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i = phi i64 [ %i.si, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.sh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4316.0.copyload.i.i, i64 %.sroa.0.012.i.i.i.i.i.i ; 2 uses
  %i.si = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.sh, align 8, !alias.scope !130287, !noalias !130288 ; 2 uses
  %i.sj = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.sj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i128.i.i
  %i.sk = getelementptr i8, ptr %i.sh, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.sk, align 8, !alias.scope !130287, !noalias !130288, !nonnull !67, !noundef !67
  %i.sl = shl nuw i64 %.val8.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %i.sl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130289
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i128.i.i
  %i.sm = icmp eq i64 %i.si, %.sroa.5317.0.copyload.i.i
  br i1 %i.sm, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i128.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.cz
  %i.sn = icmp eq i64 %.sroa.0315.0.copyload.i.i, 0
  br i1 %i.sn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.so = mul nuw i64 %.sroa.0315.0.copyload.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4316.0.copyload.i.i, i64 noundef %i.so, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130288
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.cy
  %.val57.i.i = load i64, ptr %i.i, align 8, !noalias !130207 ; 2 uses
  %i.sp = icmp eq i64 %.val57.i.i, 0
  br i1 %i.sp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val58.i.i = load ptr, ptr %i.pd, align 8, !noalias !130207, !nonnull !67, !noundef !67
  %i.sq = shl nuw i64 %.val57.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i.i, i64 noundef %i.sq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130207
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.cw
  br i1 %.sroa.021.0.i.i, label %bb.db, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !130207
  br label %.thread422.i.i.backedge

bb.da:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.sr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !130207
  unreachable

bb.db:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #63, !noalias !130207
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.thread408.i.i:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, %.thread412.i.i
  %.pn.pn.pn411.i.i = phi { ptr, i32 } [ %i.ph, %.thread412.i.i ], [ %.pn.pn.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.k) #63, !noalias !130207
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i.i

bb.dc:                                            ; preds = %.noexc93.thread404.i.i
  %i.ss = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %.sroa.5.0.i181407.i.i
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !130207
  store i64 0, ptr %i.l, align 8, !noalias !130207
  store ptr inttoptr (i64 4 to ptr), ptr %i.mn, align 8, !noalias !130207
  store i64 0, ptr %i.mo, align 8, !noalias !130207
  %i.su = and i64 %i.mt, 4294967295               ; 5 uses
  %i.sv = icmp ugt i64 %.val1.i.i.i.i, %i.su
  br i1 %i.sv, label %bb.dd, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader

bb.dd:                                            ; preds = %bb.dc
  %i.sw = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i77, i64 %i.su ; 3 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !noalias !130290, !noundef !67
  %.not.i.i.i.i.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.dd
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.sy, align 8, !noalias !130290
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sw, i64 12
  %.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !130290
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.dd, %bb.dc
  %.sroa.12266.0.i.i.ph = phi i32 [ -1, %bb.dd ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ -1, %bb.dc ]
  %.sroa.9265.0.i.i.ph = phi i32 [ -1, %bb.dd ], [ %.sroa.0.0.copyload.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ -1, %bb.dc ]
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.outer

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.outer: ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.ph733 = phi i64 [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ], [ %i.wk, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 6 uses
  %.sroa.12266.0.i.i.ph734 = phi i32 [ %.sroa.12266.0.i.i.ph, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ], [ %.sroa.12266.2.ph.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.9265.0.i.i.ph735 = phi i32 [ %.sroa.9265.0.i.i.ph, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ], [ %.sroa.9265.1.ph.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.sz = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8
  %i.ta = zext i64 %i.sz to i128
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.outer
  %.sroa.12266.0.i.i = phi i32 [ %.sroa.12266.0.i.i.ph734, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.outer ], [ %.sroa.12266.2.ph.i.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge ] ; 2 uses
  %.sroa.9265.0.i.i = phi i32 [ %.sroa.9265.0.i.i.ph735, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.outer ], [ %.sroa.9265.1.ph.i.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge ] ; 3 uses
  %i.tb = zext i32 %.sroa.9265.0.i.i to i64       ; 2 uses
  %i.tc = icmp ugt i64 %i.ce, %i.tb
  br i1 %i.tc, label %bb.de, label %._crit_edge.i133.i.i.preheader

._crit_edge.i133.i.i.preheader:                   ; preds = %bb.de, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  br label %._crit_edge.i133.i.i

bb.de:                                            ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.td = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.tb ; 3 uses
  %i.te = load ptr, ptr %i.td, align 8, !noalias !130291, !noundef !67
  %.not.i136.i.i = icmp eq ptr %i.te, null
  br i1 %.not.i136.i.i, label %._crit_edge.i133.i.i.preheader, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tg = load i32, ptr %i.tf, align 8, !noalias !130291, !noundef !67
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %.sroa.023.0.copyload.i.i.i = load i64, ptr %i.th, align 8, !noalias !130291
  %.sroa.0.0.insert.insert.i.i.i.i = lshr i64 %.sroa.023.0.copyload.i.i.i, 32
  br label %bb.dr

._crit_edge.i133.i.i:                             ; preds = %._crit_edge.i133.i.i.preheader, %bb.dg
  %i.ti = phi i32 [ %i.tn, %bb.dg ], [ %.sroa.12266.0.i.i, %._crit_edge.i133.i.i.preheader ] ; 2 uses
  %i.tj = zext i32 %i.ti to i64                   ; 2 uses
  %i.tk = icmp ugt i64 %i.ce, %i.tj
  br i1 %i.tk, label %bb.dg, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.dg:                                            ; preds = %._crit_edge.i133.i.i
  %i.tl = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.tj ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  %i.tn = load i32, ptr %i.tm, align 4, !noalias !130291, !noundef !67 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %.val.i135.i.i = load i32, ptr %i.to, align 4, !noalias !130291, !noundef !67
  %i.tp = icmp eq i32 %.val.i135.i.i, %i.mz
  br i1 %i.tp, label %._crit_edge.i133.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.tq = load ptr, ptr %i.tl, align 8, !noalias !130291, !noundef !67
  %.not42.i.i.i = icmp eq ptr %i.tq, null
  br i1 %.not42.i.i.i, label %bb.dj, label %bb.di, !prof !71

bb.di:                                            ; preds = %bb.dh
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %.sroa.032.0.copyload.i.i.i = load i64, ptr %i.tr, align 8, !noalias !130291
  br label %bb.dr

bb.dj:                                            ; preds = %bb.dh
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc139.i.i unwind label %.loopexit.split-lp.i.i, !noalias !130207

.noexc139.i.i:                                    ; preds = %bb.dj
  unreachable

.loopexit.i.i:                                    ; preds = %bb.ec
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp.i.i:                           ; preds = %bb.dy, %.invoke715.i.i, %bb.dj
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
end_hunk_15
