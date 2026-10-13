Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path34___pyfunction_graph_distance_matrix:bb.a

bb.x:                                             ; preds = %_RINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBP_jEE9from_iterINtNtNtB1L_8adapters3map3MapINtNtB30_9enumerate9EnumerateINtNtBR_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB3T_11StableGraphB4p_B4p_NtBT_10UndirectedEE0EECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !126481
  %.val36.i.i = load ptr, ptr %i.p, align 8, !noalias !126481, !nonnull !67, !align !98, !noundef !67 ; 3 uses
  %i.cy = getelementptr i8, ptr %.val36.i.i, i64 8
  %.val.i48.i.i = load ptr, ptr %i.cy, align 8, !noalias !126483, !nonnull !67, !noundef !67 ; 4 uses
  %i.cz = getelementptr i8, ptr %.val36.i.i, i64 16
  %.val1.i49.i.i = load i64, ptr %i.cz, align 8, !noalias !126483, !noundef !67 ; 2 uses
  %.idx164 = shl nuw nsw i64 %.val1.i49.i.i, 4
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i48.i.i, i64 %.idx164 ; 2 uses
  %.not.i.i50.i.i154 = icmp eq i64 %.val1.i49.i.i, 0
  br i1 %.not.i.i50.i.i154, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i, label %.lr.ph155

bb.y:                                             ; preds = %.lr.ph155
  %.not.i.i50.i.i = icmp eq ptr %.val.i48.i.i, %i.dc
  br i1 %.not.i.i50.i.i, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.x, %bb.y
  %i.db = phi ptr [ %i.dc, %bb.y ], [ %i.da, %bb.x ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 4 uses
  %.val.i.i.i51.i.i = load ptr, ptr %i.dc, align 8, !noalias !126492, !noundef !67
  %.not.i.not.i.i.i52.i.i = icmp eq ptr %.val.i.i.i51.i.i, null
  br i1 %.not.i.not.i.i.i52.i.i, label %bb.y, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i53.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i53.i.i: ; preds = %.lr.ph155
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %.val.i48.i.i to i64
  %i.df = sub nuw i64 %i.dd, %i.de
  %i.dg = lshr exact i64 %i.df, 4
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = add nuw nsw i64 %i.dh, 1
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.body104.i.i, %bb.aa
  %.pn20.i.i = phi { ptr, i32 } [ %i.du, %bb.aa ], [ %.pn18.i.i, %.body104.i.i ], [ %.pn18.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ] ; 3 uses
  %.val27.i.i = load ptr, ptr %i.n, align 8, !noalias !126481 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val28.i.i = load i64, ptr %i.dj, align 8, !noalias !126481, !noundef !67 ; 3 uses
  %i.dk = icmp eq i64 %.val28.i.i, 0
  br i1 %i.dk, label %.body.thread, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.dl = shl i64 %.val28.i.i, 4                  ; 2 uses
  %i.dm = add i64 %i.dl, 16                       ; 2 uses
  %i.dn = add i64 %.val28.i.i, 17
  %i.do = add i64 %i.dn, %i.dm                    ; 4 uses
  %i.dp = icmp uge i64 %i.do, %i.dm
  %i.dq = icmp ult i64 %i.do, 9223372036854775793
  call void @llvm.assume(i1 %i.dp), !noalias !126483
  call void @llvm.assume(i1 %i.dq), !noalias !126483
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i) ], !noalias !126483
  %i.dr = icmp eq i64 %i.do, 0
  br i1 %i.dr, label %.body.thread, label %bb.z

bb.z:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.ds = sub nuw nsw i64 -16, %i.dl
  %i.dt = getelementptr inbounds i8, ptr %.val27.i.i, i64 %i.ds
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !126483
  br label %.body.thread

bb.aa:                                            ; preds = %bb.af
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i: ; preds = %bb.y, %bb.x, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i53.i.i
  %.sroa.02.0.i.i.i54.i.i = phi i64 [ %i.di, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i53.i.i ], [ 0, %bb.x ], [ 0, %bb.y ]
  %i.dv = load i64, ptr %i.o, align 8, !noalias !126481, !noundef !67
  %.not11.i.i = icmp eq i64 %i.dv, %.sroa.02.0.i.i.i54.i.i
  br i1 %.not11.i.i, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i
  store i64 0, ptr %i.m, align 8, !noalias !126481
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.dw, align 8, !noalias !126481
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.dx, align 8, !noalias !126481
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator7collectINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ab
  %.val34.i.i = phi ptr [ %.val35.pre.i.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator7collectINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.val36.i.i, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !126481
  %i.dy = getelementptr i8, ptr %.val34.i.i, i64 8 ; 2 uses
  %.val.i58.i.i = load ptr, ptr %i.dy, align 8, !noalias !126483, !nonnull !67, !noundef !67 ; 3 uses
  %i.dz = getelementptr i8, ptr %.val34.i.i, i64 16 ; 2 uses
  %.val1.i59.i.i = load i64, ptr %i.dz, align 8, !noalias !126483, !noundef !67 ; 2 uses
  %.not.i.i60.i.i156 = icmp eq i64 %.val1.i59.i.i, 0
  br i1 %.not.i.i60.i.i156, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.ac
  %.idx165 = shl nuw nsw i64 %.val1.i59.i.i, 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i58.i.i, i64 %.idx165
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ae
  %.not.i.i60.i.i = icmp eq ptr %.val.i58.i.i, %i.ec
  br i1 %.not.i.i60.i.i, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph157, %bb.ad
  %i.eb = phi ptr [ %i.ea, %.lr.ph157 ], [ %i.ec, %bb.ad ]
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -16 ; 4 uses
  %.val.i.i.i61.i.i = load ptr, ptr %i.ec, align 8, !noalias !126493, !noundef !67
  %.not.i.not.i.i.i62.i.i = icmp eq ptr %.val.i.i.i61.i.i, null
  br i1 %.not.i.not.i.i.i62.i.i, label %bb.ad, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i63.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i63.i.i: ; preds = %bb.ae
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %.val.i58.i.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  %i.eg = lshr exact i64 %i.ef, 4
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = add nuw nsw i64 %i.eh, 1
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i

bb.af:                                            ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !126481
  store ptr %.val.i48.i.i, ptr %i.l, align 8, !alias.scope !126494, !noalias !126481
  %.sroa.4.0..sroa_idx.i56.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.da, ptr %.sroa.4.0..sroa_idx.i56.i.i, align 8, !alias.scope !126494, !noalias !126481
  %.sroa.5.0..sroa_idx.i57.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i57.i.i, align 8, !alias.scope !126494, !noalias !126481
  invoke fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_18SpecFromIterNestedB11_INtNtB13_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l)
          to label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator7collectINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.aa, !noalias !126483

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator7collectINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !126481
  %.val35.pre.i.i = load ptr, ptr %i.p, align 8, !noalias !126481
  br label %bb.ac

.body104.i.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i102.i.i, %bb.bk, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i4.i, %bb.ak, %bb.ag
  %.pn18.i.i = phi { ptr, i32 } [ %i.jb, %bb.bk ], [ %i.em, %bb.ag ], [ %i.jb, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i102.i.i ], [ %.pn16.i.i, %bb.ak ], [ %.pn16.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i4.i ] ; 2 uses
  %.val23.i.i = load i64, ptr %i.m, align 8, !noalias !126481 ; 2 uses
  %i.ej = icmp eq i64 %.val23.i.i, 0
  br i1 %i.ej, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.body104.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val24.i.i = load ptr, ptr %i.ek, align 8, !noalias !126481, !nonnull !67, !noundef !67
  %i.el = shl nuw i64 %.val23.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !126483
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ag:                                            ; preds = %.invoke.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body104.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i: ; preds = %bb.ad, %bb.ac, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i63.i.i
  %.sroa.02.0.i.i.i64.i.i = phi i64 [ %i.ei, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i63.i.i ], [ 0, %bb.ac ], [ 0, %bb.ad ]
  %i.en = load i64, ptr %i.o, align 8, !noalias !126481, !noundef !67 ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !126483
  %i.eo = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126483 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.invoke.i.i, label %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !104

.invoke.i.i:                                      ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #61
          to label %.cont.i.i unwind label %bb.ag, !noalias !126483

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i
  %.not12.i.i = icmp eq i64 %i.en, %.sroa.02.0.i.i.i64.i.i ; 2 uses
  %.221.i.i = select i1 %.not12.i.i, ptr @813, ptr @814
  %..i.i = select i1 %.not12.i.i, ptr %i.p, ptr %i.n
  store ptr %..i.i, ptr %i.eo, align 8, !noalias !126483
  store ptr %i.eo, ptr %i.k, align 8, !noalias !126481
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %.221.i.i, ptr %i.eq, align 8, !noalias !126481
  %.val.i68.i.i = load ptr, ptr %i.dy, align 8, !noalias !126483, !nonnull !67, !noundef !67 ; 3 uses
  %.val1.i69.i.i = load i64, ptr %i.dz, align 8, !noalias !126483, !noundef !67 ; 2 uses
  %.not.i.i70.i.i158 = icmp eq i64 %.val1.i69.i.i, 0
  br i1 %.not.i.i70.i.i158, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i, label %.lr.ph159

.lr.ph159:                                        ; preds = %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.idx166 = shl nuw nsw i64 %.val1.i69.i.i, 4
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i68.i.i, i64 %.idx166
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %.not.i.i70.i.i = icmp eq ptr %.val.i68.i.i, %i.et
  br i1 %.not.i.i70.i.i, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph159, %bb.ah
  %i.es = phi ptr [ %i.er, %.lr.ph159 ], [ %i.et, %bb.ah ]
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -16 ; 4 uses
  %.val.i.i.i71.i.i = load ptr, ptr %i.et, align 8, !noalias !126495, !noundef !67
  %.not.i.not.i.i.i72.i.i = icmp eq ptr %.val.i.i.i71.i.i, null
  br i1 %.not.i.not.i.i.i72.i.i, label %bb.ah, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i73.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i73.i.i: ; preds = %bb.ai
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %.val.i68.i.i to i64
  %i.ew = sub nuw i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 4
  %i.ey = and i64 %i.ex, 4294967295
  %i.ez = add nuw nsw i64 %i.ey, 1
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i

.body99.i.i:                                      ; preds = %bb.bh, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.am
  %.pn16.i.i = phi { ptr, i32 } [ %8, %bb.bh ], [ %i.fm, %bb.am ], [ %.pn.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i ] ; 2 uses
  %.val40.i.i = load ptr, ptr %i.k, align 8, !noalias !126481 ; 5 uses
  %.val41.i.i = load ptr, ptr %i.eq, align 8, !noalias !126481, !nonnull !67, !align !98, !noundef !67 ; 5 uses
  %i.fa = load ptr, ptr %.val41.i.i, align 8, !invariant.load !67, !noalias !126483 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.fa, null
  br i1 %.not.i2.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.body99.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i) ], !noalias !126483
  invoke void %i.fa(ptr noundef nonnull %.val40.i.i)
          to label %bb.ak unwind label %bb.al, !noalias !126483

bb.ak:                                            ; preds = %bb.aj, %.body99.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !range !70, !invariant.load !67, !noalias !126483 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.body104.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i4.i: ; preds = %bb.ak
  %i.fe = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !range !127, !invariant.load !67, !noalias !126483
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i) ], !noalias !126483
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) %i.ff) #59, !noalias !126483
  br label %.body104.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !range !70, !invariant.load !67, !noalias !126483 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i3.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i3.i: ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !range !127, !invariant.load !67, !noalias !126483
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) %i.fl) #59, !noalias !126483
  br label %.body.i

bb.am:                                            ; preds = %.invoke218.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body99.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i: ; preds = %bb.ah, %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i73.i.i
  %.sroa.02.0.i.i.i74.i.i = phi i64 [ %i.ez, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i73.i.i ], [ 0, %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %bb.ah ]
  %.not13.i.i = icmp eq i64 %i.en, %.sroa.02.0.i.i.i74.i.i ; 3 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !126483
  %i.fn = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126483 ; 10 uses
  %i.fo = icmp eq ptr %i.fn, null
  %.223.i.i = select i1 %.not13.i.i, ptr @815, ptr @816 ; 2 uses
  br i1 %i.fo, label %.invoke218.i.i, label %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !104

.invoke218.i.i:                                   ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #61
          to label %.cont219.i.i unwind label %bb.am, !noalias !126483

.cont219.i.i:                                     ; preds = %.invoke218.i.i
  unreachable

_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i
  %.222.i.i = select i1 %.not13.i.i, ptr %i.p, ptr %i.m
  store ptr %.222.i.i, ptr %i.fn, align 8, !noalias !126483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !126481
  %i.fp = load i64, ptr %i.o, align 8, !noalias !126481, !noundef !67 ; 2 uses
  invoke fastcc void @_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprdEINtNtNtB8_9dimension3dim3DimAjj2_EdE9from_elemTjjEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.j, i64 noundef %i.fp, i64 noundef %i.fp, double noundef %i.bt)
          to label %bb.ap unwind label %bb.ao, !noalias !126483

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.thread.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %.body.i.i.i, %bb.ao
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.ig, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %i.fr, %bb.ao ], [ %i.ig, %.body.i.i.i ], [ %.pn156.i.i, %.thread.i.i ], [ %.pn156.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.fq = load ptr, ptr %.223.i.i, align 8, !invariant.load !67, !noalias !126496 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.fq, null
  br i1 %.not.i1.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void %i.fq(ptr noundef nonnull %i.fn)
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i, !noalias !126483

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.an, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126483
  br label %.body99.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.an
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126483
  br label %.body.i

bb.ao:                                            ; preds = %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ap:                                            ; preds = %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !126481
  %i.fs = load i64, ptr %i.o, align 8, !noalias !126481, !noundef !67 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !126497
  %i.ft = mul i64 %i.fs, 24                       ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.fs, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.at, label %bb.aq, !prof !73

bb.aq:                                            ; preds = %bb.ap
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !126498
  %i.fv = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ft, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126498 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = ptrtoint ptr %i.fv to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %.sroa.47.0.ph.i.i.i.i = phi i64 [ 8, %bb.ar ], [ 0, %bb.ap ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.47.0.ph.i.i.i.i, i64 %i.ft) #61
          to label %.noexc80.i.i unwind label %.thread160.i.i, !noalias !126483

.noexc80.i.i:                                     ; preds = %bb.at
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.as, %bb.aq
  %.sroa.10.0.i.i.i.i = phi i64 [ %i.fx, %bb.as ], [ 8, %bb.aq ]
  %.sroa.47.0.i.i.i.i = phi i64 [ %i.fs, %bb.as ], [ 0, %bb.aq ] ; 2 uses
  %i.fy = inttoptr i64 %.sroa.10.0.i.i.i.i to ptr ; 2 uses
  %i.fz = icmp samesign ule i64 %i.fs, %.sroa.47.0.i.i.i.i
  call void @llvm.assume(i1 %i.fz)
  store i64 %.sroa.47.0.i.i.i.i, ptr %i.f, align 8, !noalias !126497
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.fy, ptr %i.ga, align 8, !noalias !126497
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126499)
  call void @llvm.experimental.noalias.scope.decl(metadata !126500)
  %.not163.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not163.i.i, label %.loopexit164.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.716.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %6 = select i1 %.not13.i.i, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs2_0CskcxRuJ53GpR_9rustworkx, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs1_0CskcxRuJ53GpR_9rustworkx ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.gd, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.gd = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !126501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !126502
  %i.ge = load ptr, ptr %i.p, align 8, !noalias !126502, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.gf = invoke noundef i32 %6(ptr noundef nonnull %i.fn, i64 noundef %.val4.i.i.i.i.i.i.i.i.i) #64
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !126503, !inline_history !126404 ; 2 uses

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !126504)
  call void @llvm.experimental.noalias.scope.decl(metadata !126505)
  call void @llvm.experimental.noalias.scope.decl(metadata !126506)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !126507, !noalias !126508, !nonnull !67, !noundef !67
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !126507, !noalias !126508, !noundef !67
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !126507, !noalias !126508, !noundef !67
  %i.gl = zext i32 %i.gf to i64                   ; 2 uses
  %i.gm = icmp ugt i64 %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gl
  br i1 %i.gm, label %bb.av, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gn, align 8, !alias.scope !126507, !noalias !126508, !nonnull !67, !noundef !67
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gl ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !126509, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load <2 x i32>, ptr %i.gq, align 8, !noalias !126509
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av, %.noexc.i.i.i.i.i.i.i.i.i
  %i.gs = phi <2 x i32> [ %i.gr, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %.noexc.i.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %bb.av ]
  %i.gt = load ptr, ptr %i.p, align 8, !noalias !126502, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.gu = invoke noundef i32 %6(ptr noundef nonnull %i.fn, i64 noundef %.val4.i.i.i.i.i.i.i.i.i) #64
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !126503, !inline_history !126404 ; 2 uses

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !126510)
  call void @llvm.experimental.noalias.scope.decl(metadata !126511)
  call void @llvm.experimental.noalias.scope.decl(metadata !126512)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !126513, !noalias !126514, !nonnull !67, !noundef !67
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !126513, !noalias !126514, !noundef !67
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %.val6.i.i.i1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gz, align 8, !alias.scope !126513, !noalias !126514, !noundef !67
  %i.ha = zext i32 %i.gu to i64                   ; 2 uses
  %i.hb = icmp ugt i64 %.val6.i.i.i1.i.i.i.i.i.i.i.i.i.i.i, %i.ha
  br i1 %i.hb, label %bb.aw, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %.noexc7.i.i.i.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !126513, !noalias !126514, !nonnull !67, !noundef !67
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ha ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !126515, !noundef !67
  %.not.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hg = load <2 x i32>, ptr %i.hf, align 8, !noalias !126515
  br label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i, %bb.aw, %.noexc7.i.i.i.i.i.i.i.i.i
  %i.hh = phi <2 x i32> [ %i.hg, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %.noexc7.i.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %bb.aw ]
  store ptr %i.gh, ptr %i.gc, align 8, !noalias !126502
  store i64 %i.gj, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126502
  store <2 x i32> %i.gs, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126502
  store i32 %i.gf, ptr %.sroa.716.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126502
  store ptr %i.gw, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126502
  store i64 %i.gy, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126502
  store <2 x i32> %i.hh, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126502
  store i32 %i.gu, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126502
  store ptr %i.k, ptr %i.d, align 8, !noalias !126502
  invoke fastcc void @_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtB26_5chain5ChainINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEEB2N_EQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2S_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %i.d)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !126503

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !126502
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.fy, i64 %.val4.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !126516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !126501
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gd, %i.fs
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit164.i.i, label %bb.au

.body.i.i.i.i:                                    ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.au
  %i.hj = landingpad { ptr, i32 }
          cleanup
  store i64 %.val4.i.i.i.i.i.i.i.i.i, ptr %i.gb, align 8, !alias.scope !126517, !noalias !126518
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #63
          to label %.thread.i.i unwind label %bb.ax, !noalias !126519

bb.ax:                                            ; preds = %.body.i.i.i.i
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !126519
  unreachable

.thread160.i.i:                                   ; preds = %bb.at
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.loopexit164.i.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %i.fs, ptr %i.gb, align 8, !alias.scope !126517, !noalias !126518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !126520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !126497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !126481
  store ptr %i.o, ptr %i.h, align 8, !noalias !126481
  %i.hm = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.hm, align 8, !noalias !126481
  %i.hn = load i64, ptr %i.o, align 8, !noalias !126481, !noundef !67
  %i.ho = icmp ult i64 %i.hn, %i.bh
  %i.hp = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  br i1 %i.ho, label %bb.bd, label %bb.az

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp.i.i:                           ; preds = %.noexc86.i.i, %bb.az
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #63
          to label %.thread.i.i unwind label %bb.bm, !noalias !126483

bb.az:                                            ; preds = %.loopexit164.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !126521)
  %i.hr = load ptr, ptr %i.hp, align 8, !alias.scope !126522, !noalias !126523, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !126481
  store ptr %i.h, ptr %i.c, align 8, !noalias !126524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !126525
  store i64 0, ptr %i.b, align 8, !noalias !126526
  %.sroa.5126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hs = load <4 x i64>, ptr %i.hq, align 8, !alias.scope !126527, !noalias !126481
  %.sroa.4142.8.copyload.i.i = load i64, ptr %i.hq, align 8, !alias.scope !126527, !noalias !126481 ; 2 uses
  %i.ht = shufflevector <4 x i64> %i.hs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ht, ptr %.sroa.5126.0..sroa_idx.i.i, align 8, !noalias !126526
  %.sroa.6128.sroa.6.0..sroa.6128.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.hr, ptr %.sroa.6128.sroa.6.0..sroa.6128.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !126526
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !126528
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.hu, align 8, !noalias !126525
  %i.hv = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc86.i.i unwind label %.loopexit.split-lp.i.i, !noalias !126483

.noexc86.i.i:                                     ; preds = %bb.az
  %i.hw = icmp eq i64 %.sroa.4142.8.copyload.i.i, -1
  %i.hx = zext i1 %i.hw to i64
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hv, i64 %i.hx)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1V_9iterators11AxisIterMutdINtNtNtB1V_9dimension3dim3DimAjj1_EEEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB76_5types3any5PyAnyEB71_NtB61_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx(i64 noundef %.sroa.4142.8.copyload.i.i, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !noalias !126483

bb.ba:                                            ; preds = %.noexc86.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !126525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !126481
  br label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc98.i.i, %bb.bd, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !126482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !126481
  call void @llvm.experimental.noalias.scope.decl(metadata !126529)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i88.i.i = load ptr, ptr %i.hy, align 8, !alias.scope !126529, !noalias !126481, !nonnull !67, !noundef !67 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i89.i.i = load i64, ptr %i.hz, align 8, !alias.scope !126529, !noalias !126481, !noundef !67 ; 4 uses
  %i.ia = icmp eq i64 %.val1.i89.i.i, 0
  br i1 %i.ia, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph161

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph161
  %i.ib = icmp eq i64 %i.id, %.val1.i89.i.i
  br i1 %i.ib, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph161

.lr.ph161:                                        ; preds = %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i160 = phi i64 [ %i.id, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %.val.i88.i.i, i64 %.sroa.0.0.i.i.i.i.i160
  %i.id = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i160, 1 ; 4 uses
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i unwind label %bb.bb, !noalias !126530

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i: ; preds = %.lr.ph163
  %i.ie = add i64 %.sroa.0.1.i.i.i.i.i162, 1      ; 2 uses
  %i.if = icmp eq i64 %i.ie, %.val1.i89.i.i
  br i1 %i.if, label %.body.i.i.i, label %.lr.ph163

bb.bb:                                            ; preds = %.lr.ph161
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = icmp eq i64 %i.id, %.val1.i89.i.i
  br i1 %i.ih, label %.body.i.i.i, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.bb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i162 = phi i64 [ %i.ie, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i ], [ %i.id, %bb.bb ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %.val.i88.i.i, i64 %.sroa.0.1.i.i.i.i.i162
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ii)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i unwind label %bb.bc, !noalias !126530

bb.bc:                                            ; preds = %.lr.ph163
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !126530
  unreachable

.body.i.i.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i, %bb.bb
  %.val4.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !126529, !noalias !126481 ; 2 uses
  %i.ik = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.ik, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %.body.i.i.i
  %i.il = mul nuw i64 %.val4.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i88.i.i, i64 noundef %i.il, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126530
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !126529, !noalias !126481 ; 2 uses
  %i.im = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.im, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.in = mul nuw i64 %.val2.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i88.i.i, i64 noundef %i.in, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126530
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bd:                                            ; preds = %.loopexit164.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.6135.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !126531)
  %i.ip = load ptr, ptr %i.hp, align 8, !alias.scope !126532, !noalias !126533, !nonnull !67, !noundef !67
  %.sroa.4134.8.copyload.i.i = load i64, ptr %i.hq, align 8, !alias.scope !126534, !noalias !126481 ; 2 uses
  %.sroa.7.24.copyload.i.i = load i64, ptr %i.io, align 8, !alias.scope !126534, !noalias !126481
  %i.iq = load <3 x i64>, ptr %.sroa.6135.8..sroa_idx.i.i, align 8, !alias.scope !126534, !noalias !126481
  %i.ir = shufflevector <3 x i64> %i.iq, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %.not.i12.i.not.i.i = icmp eq i64 %.sroa.4134.8.copyload.i.i, 0
  br i1 %.not.i12.i.not.i.i, label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %.sroa.4.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.46.0..sroa.4.0..sroa_idx.i1.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.be

bb.be:                                            ; preds = %.noexc98.i.i, %.lr.ph.i.i.i
  %.sroa.2.013.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.iu, %.noexc98.i.i ] ; 4 uses
  %i.is = mul i64 %.sroa.2.013.i.i.i, %.sroa.7.24.copyload.i.i
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126535
  store i64 %.sroa.2.013.i.i.i, ptr %i.a, align 8, !noalias !126535
  store ptr %i.it, ptr %.sroa.4.0..sroa_idx.i1.i.i.i, align 8, !noalias !126536
  store <2 x i64> %i.ir, ptr %.sroa.46.0..sroa.4.0..sroa_idx.i1.sroa_idx.i.i.i, align 8, !noalias !126536
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !126537, !nonnull !67, !align !98, !noundef !67
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.hm, align 8, !noalias !126537
  invoke fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs5_0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i, i64 noundef %.sroa.2.013.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i1.i.i.i) #64
          to label %.noexc98.i.i unwind label %.loopexit.i.i, !noalias !126483

.noexc98.i.i:                                     ; preds = %bb.be
  %i.iu = add nuw i64 %.sroa.2.013.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126535
  %exitcond.not.i.i.i = icmp eq i64 %i.iu, %.sroa.4134.8.copyload.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.be

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !126481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !126481
  %i.iv = load ptr, ptr %.223.i.i, align 8, !invariant.load !67, !noalias !126481 ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i58, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void %i.iv(ptr noundef nonnull %i.fn)
          to label %bb.bg unwind label %bb.bh, !noalias !126483

bb.bg:                                            ; preds = %bb.bf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126483
  %.val38.i.i = load ptr, ptr %i.k, align 8, !noalias !126481 ; 5 uses
  %.val39.i.i = load ptr, ptr %i.eq, align 8, !noalias !126481, !nonnull !67, !align !98, !noundef !67 ; 5 uses
  %7 = load ptr, ptr %.val39.i.i, align 8, !invariant.load !67, !noalias !126483 ; 2 uses
  %.not.i101.i.i.a = icmp eq ptr %7, null
  br i1 %.not.i101.i.i.a, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126483
  br label %.body99.i.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i.i) ]
  invoke void %7(ptr noundef nonnull %.val38.i.i)
          to label %bb.bj unwind label %bb.bk, !noalias !126483

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %i.iw = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !range !70, !invariant.load !67, !noalias !126483 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i103.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i103.i.i: ; preds = %bb.bj
  %i.iz = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !range !127, !invariant.load !67, !noalias !126483
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.ix, i64 noundef range(i64 1, -9223372036854775807) %i.ja) #59, !noalias !126483
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !range !70, !invariant.load !67, !noalias !126483 ; 2 uses
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %.body104.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i102.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i102.i.i: ; preds = %bb.bk
  %i.jf = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !range !127, !invariant.load !67, !noalias !126483
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) %i.jg) #59, !noalias !126483
  br label %.body104.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i103.i.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !126481
  %.val.i.i = load i64, ptr %i.m, align 8, !noalias !126481 ; 2 uses
  %i.jh = icmp eq i64 %.val.i.i, 0
  br i1 %i.jh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i106.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i106.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val22.i.i = load ptr, ptr %i.ji, align 8, !noalias !126481, !nonnull !67, !noundef !67
  %i.jj = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !126483
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i106.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !126481
  %.val25.i.i = load ptr, ptr %i.n, align 8, !noalias !126481 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val26.i.i = load i64, ptr %i.jk, align 8, !noalias !126481, !noundef !67 ; 3 uses
  %i.jl = icmp eq i64 %.val26.i.i, 0
  br i1 %i.jl, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i
  %i.jm = shl i64 %.val26.i.i, 4                  ; 2 uses
  %i.jn = add i64 %i.jm, 16                       ; 2 uses
  %i.jo = add i64 %.val26.i.i, 17
  %i.jp = add i64 %i.jo, %i.jn                    ; 4 uses
  %i.jq = icmp uge i64 %i.jp, %i.jn
  %i.jr = icmp ult i64 %i.jp, 9223372036854775793
  call void @llvm.assume(i1 %i.jq)
  call void @llvm.assume(i1 %i.jr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i) ]
  %i.js = icmp eq i64 %i.jp, 0
  br i1 %i.js, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.jt = sub nuw nsw i64 -16, %i.jm
  %i.ju = getelementptr inbounds i8, ptr %.val25.i.i, i64 %i.jt
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ju, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !126483
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i

bb.bm:                                            ; preds = %bb.ay
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bm, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i3.i, %bb.al
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !126483
  unreachable

.thread.i.i:                                      ; preds = %bb.ay, %.thread160.i.i, %.body.i.i.i.i
  %.pn156.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.ay ], [ %i.hl, %.thread160.i.i ], [ %i.hj, %.body.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126538)
  call void @llvm.experimental.noalias.scope.decl(metadata !126539)
  call void @llvm.experimental.noalias.scope.decl(metadata !126540)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !126541, !noalias !126481, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.thread.i.i
  %i.jy = load ptr, ptr %i.j, align 8, !alias.scope !126541, !noalias !126481, !nonnull !67, !noundef !67
  %i.jz = shl nuw i64 %i.jx, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jy, i64 noundef %i.jz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126542
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.bl, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !126481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !126481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !126479
  %i.ka = invoke fastcc noundef nonnull ptr @_RNvMs0_NtCs3Tt2PVjAfPX_5numpy5arrayINtB5_7PyArraydINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimAjj2_EE16from_owned_arrayCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.q)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64 unwind label %.body.thread83

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !126479
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ka, ptr %i.kb, align 8
  store i64 0, ptr %0, align 8
  %i.kc = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65: ; preds = %bb.b, %.noexc48, %bb.bn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

bb.bn:                                            ; preds = %bb.l, %bb.h
  store i64 1, ptr %0, align 8
  %i.kd = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35___pyfunction_digraph_floyd_warshall(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = alloca [72 x i8], align 8                ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [72 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2865, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef 5)
  %i.s = load i64, ptr %i.q, align 8, !range !68, !noundef !67
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit81

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.w = load ptr, ptr %i.r, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !126583
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noundef nonnull %i.w), !inline_history !56
  %i.x = load ptr, ptr %i.g, align 8, !noalias !126583, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !126583, !nonnull !67, !noundef !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !126583
  br i1 %.not.i.i.i, label %.noexc65, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aa, ptr noundef nonnull %i.x, ptr noundef nonnull %i.z), !inline_history !56
  br label %.noexc64

.noexc65:                                         ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 152 ; 4 uses
  %i.ac = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.ab), !inline_history !56
  br i1 %i.ac, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ad), !inline_history !56
  br label %.noexc64

.noexc64:                                         ; preds = %bb.c, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.i), !inline_history !56
  %.sroa.035.0.copyload = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.035.0.copyload, ptr %i.af, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit81

bb.e:                                             ; preds = %bb.w, %bb.ac
  %lpad.thr_comm.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

.thread95:                                        ; preds = %bb.j, %bb.ae, %bb.e
  %.pn99 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp104, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.j ], [ %lpad.thr_comm, %bb.ae ]
  %i.ag = atomicrmw sub ptr %i.ab, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %.pn99

bb.f:                                             ; preds = %.noexc65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !67 ; 4 uses
  %.not.i = icmp eq ptr %i.aj, null
  %i.ak = icmp eq ptr %i.aj, @_Py_NoneStruct
  %or.cond = or i1 %.not.i, %i.ak
  br i1 %or.cond, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_Py_IncRef(ptr noundef nonnull %i.aj) #59, !noalias !126584
  br label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ null, %bb.f ], [ %i.aj, %bb.g ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noundef !67 ; 2 uses
  %.not.i68 = icmp eq ptr %i.am, null
  br i1 %.not.i68, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !126585
  invoke void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull %i.am)
          to label %.noexc69 unwind label %bb.ae

.noexc69:                                         ; preds = %bb.h
  %i.an = load i8, ptr %i.f, align 8, !range !69, !noalias !126585, !noundef !67
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.i:                                             ; preds = %.noexc69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !126585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 64, i1 false), !noalias !126585
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2846, i64 noundef range(i64 5, 17) 13, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %bb.k unwind label %bb.ae

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 0, ptr %i.ar, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.t
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc69
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !69, !noalias !126585, !noundef !67
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.at, ptr %i.au, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !126585
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !126585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !126585
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false)
  br label %bb.aa

bb.l:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !range !69, !noundef !67
  %i.az = trunc nuw i8 %i.ay to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !67 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path36___pyfunction_digraph_distance_matrix:bb.a

bb.ab:                                            ; preds = %_RINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBP_jEE9from_iterINtNtNtB1L_8adapters3map3MapINtNtB30_9enumerate9EnumerateINtNtBR_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB3T_11StableGraphB4p_B4p_EE0EECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !127068
  %.val31.i.i = load ptr, ptr %i.t, align 8, !noalias !127068, !nonnull !67, !align !98, !noundef !67 ; 3 uses
  %i.du = getelementptr i8, ptr %.val31.i.i, i64 8
  %.val.i48.i.i = load ptr, ptr %i.du, align 8, !noalias !127070, !nonnull !67, !noundef !67 ; 4 uses
  %i.dv = getelementptr i8, ptr %.val31.i.i, i64 16
  %.val1.i49.i.i = load i64, ptr %i.dv, align 8, !noalias !127070, !noundef !67 ; 2 uses
  %.idx233 = shl nuw nsw i64 %.val1.i49.i.i, 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i48.i.i, i64 %.idx233 ; 2 uses
  %.not.i.i50.i.i219 = icmp eq i64 %.val1.i49.i.i, 0
  br i1 %.not.i.i50.i.i219, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i, label %.lr.ph220

bb.ac:                                            ; preds = %.lr.ph220
  %.not.i.i50.i.i = icmp eq ptr %.val.i48.i.i, %i.dy
  br i1 %.not.i.i50.i.i, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i, label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.ab, %bb.ac
  %i.dx = phi ptr [ %i.dy, %bb.ac ], [ %i.dw, %bb.ab ]
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -16 ; 4 uses
  %.val.i.i.i51.i.i = load ptr, ptr %i.dy, align 8, !noalias !127079, !noundef !67
  %.not.i.not.i.i.i52.i.i = icmp eq ptr %.val.i.i.i51.i.i, null
  br i1 %.not.i.not.i.i.i52.i.i, label %bb.ac, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i53.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i53.i.i: ; preds = %.lr.ph220
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.val.i48.i.i to i64
  %i.eb = sub nuw i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 4
  %i.ed = and i64 %i.ec, 4294967295
  %i.ee = add nuw nsw i64 %i.ed, 1
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.body133.i.i, %bb.ae
  %.pn20.i.i = phi { ptr, i32 } [ %i.eq, %bb.ae ], [ %.pn18.i.i, %.body133.i.i ], [ %.pn18.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ] ; 3 uses
  %.val35.i.i = load ptr, ptr %i.r, align 8, !noalias !127068 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val36.i.i = load i64, ptr %i.ef, align 8, !noalias !127068, !noundef !67 ; 3 uses
  %i.eg = icmp eq i64 %.val36.i.i, 0
  br i1 %i.eg, label %.body.thread, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.eh = shl i64 %.val36.i.i, 4                  ; 2 uses
  %i.ei = add i64 %i.eh, 16                       ; 2 uses
  %i.ej = add i64 %.val36.i.i, 17
  %i.ek = add i64 %i.ej, %i.ei                    ; 4 uses
  %i.el = icmp uge i64 %i.ek, %i.ei
  %i.em = icmp ult i64 %i.ek, 9223372036854775793
  call void @llvm.assume(i1 %i.el), !noalias !127070
  call void @llvm.assume(i1 %i.em), !noalias !127070
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35.i.i) ], !noalias !127070
  %i.en = icmp eq i64 %i.ek, 0
  br i1 %i.en, label %.body.thread, label %bb.ad

bb.ad:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.eo = sub nuw nsw i64 -16, %i.eh
  %i.ep = getelementptr inbounds i8, ptr %.val35.i.i, i64 %i.eo
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !127070
  br label %.body.thread

bb.ae:                                            ; preds = %bb.aj
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i: ; preds = %bb.ac, %bb.ab, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i53.i.i
  %.sroa.02.0.i.i.i54.i.i = phi i64 [ %i.ee, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i53.i.i ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  %i.er = load i64, ptr %i.s, align 8, !noalias !127068, !noundef !67
  %.not11.i.i = icmp eq i64 %i.er, %.sroa.02.0.i.i.i54.i.i
  br i1 %.not11.i.i, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i
  store i64 0, ptr %i.q, align 8, !noalias !127068
  %i.es = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.es, align 8, !noalias !127068
  %i.et = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.et, align 8, !noalias !127068
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator7collectINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.af
  %.val29.i.i = phi ptr [ %.val30.pre.i.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator7collectINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.val31.i.i, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !127068
  %i.eu = getelementptr i8, ptr %.val29.i.i, i64 8 ; 2 uses
  %.val.i58.i.i = load ptr, ptr %i.eu, align 8, !noalias !127070, !nonnull !67, !noundef !67 ; 3 uses
  %i.ev = getelementptr i8, ptr %.val29.i.i, i64 16 ; 2 uses
  %.val1.i59.i.i = load i64, ptr %i.ev, align 8, !noalias !127070, !noundef !67 ; 2 uses
  %.not.i.i60.i.i221 = icmp eq i64 %.val1.i59.i.i, 0
  br i1 %.not.i.i60.i.i221, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i, label %.lr.ph222

.lr.ph222:                                        ; preds = %bb.ag
  %.idx234 = shl nuw nsw i64 %.val1.i59.i.i, 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i58.i.i, i64 %.idx234
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %.not.i.i60.i.i = icmp eq ptr %.val.i58.i.i, %i.ey
  br i1 %.not.i.i60.i.i, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph222, %bb.ah
  %i.ex = phi ptr [ %i.ew, %.lr.ph222 ], [ %i.ey, %bb.ah ]
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -16 ; 4 uses
  %.val.i.i.i61.i.i = load ptr, ptr %i.ey, align 8, !noalias !127080, !noundef !67
  %.not.i.not.i.i.i62.i.i = icmp eq ptr %.val.i.i.i61.i.i, null
  br i1 %.not.i.not.i.i.i62.i.i, label %bb.ah, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i63.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i63.i.i: ; preds = %bb.ai
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %.val.i58.i.i to i64
  %i.fb = sub nuw i64 %i.ez, %i.fa
  %i.fc = lshr exact i64 %i.fb, 4
  %i.fd = and i64 %i.fc, 4294967295
  %i.fe = add nuw nsw i64 %i.fd, 1
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i

bb.aj:                                            ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit55.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !127068
  store ptr %.val.i48.i.i, ptr %i.p, align 8, !alias.scope !127081, !noalias !127068
  %.sroa.4.0..sroa_idx.i56.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.dw, ptr %.sroa.4.0..sroa_idx.i56.i.i, align 8, !alias.scope !127081, !noalias !127068
  %.sroa.5.0..sroa_idx.i57.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i57.i.i, align 8, !alias.scope !127081, !noalias !127068
  invoke fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_18SpecFromIterNestedB11_INtNtB13_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2Y_5types3any5PyAnyEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p)
          to label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator7collectINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.ae, !noalias !127070

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator7collectINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !127068
  %.val30.pre.i.i = load ptr, ptr %i.t, align 8, !noalias !127068
  br label %bb.ag

.body133.i.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i131.i.i, %bb.cc, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i4.i, %bb.ao, %bb.ak
  %.pn18.i.i = phi { ptr, i32 } [ %i.mc, %bb.cc ], [ %i.fi, %bb.ak ], [ %i.mc, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i131.i.i ], [ %.pn16.i.i, %bb.ao ], [ %.pn16.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i4.i ] ; 2 uses
  %.val23.i.i = load i64, ptr %i.q, align 8, !noalias !127068 ; 2 uses
  %i.ff = icmp eq i64 %.val23.i.i, 0
  br i1 %i.ff, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.body133.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val24.i.i = load ptr, ptr %i.fg, align 8, !noalias !127068, !nonnull !67, !noundef !67
  %i.fh = shl nuw i64 %.val23.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !127070
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ak:                                            ; preds = %.invoke.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body133.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i: ; preds = %bb.ah, %bb.ag, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i63.i.i
  %.sroa.02.0.i.i.i64.i.i = phi i64 [ %i.fe, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i63.i.i ], [ 0, %bb.ag ], [ 0, %bb.ah ]
  %i.fj = load i64, ptr %i.s, align 8, !noalias !127068, !noundef !67 ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !127070
  %i.fk = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127070 ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %.invoke.i.i, label %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !104

.invoke.i.i:                                      ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #61
          to label %.cont.i.i unwind label %bb.ak, !noalias !127070

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit65.i.i
  %.not12.i.i = icmp eq i64 %i.fj, %.sroa.02.0.i.i.i64.i.i ; 2 uses
  %.310.i.i = select i1 %.not12.i.i, ptr @809, ptr @810
  %..i.i = select i1 %.not12.i.i, ptr %i.t, ptr %i.r
  store ptr %..i.i, ptr %i.fk, align 8, !noalias !127070
  store ptr %i.fk, ptr %i.o, align 8, !noalias !127068
  %i.fm = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %.310.i.i, ptr %i.fm, align 8, !noalias !127068
  %.val.i68.i.i = load ptr, ptr %i.eu, align 8, !noalias !127070, !nonnull !67, !noundef !67 ; 3 uses
  %.val1.i69.i.i = load i64, ptr %i.ev, align 8, !noalias !127070, !noundef !67 ; 2 uses
  %.not.i.i70.i.i223 = icmp eq i64 %.val1.i69.i.i, 0
  br i1 %.not.i.i70.i.i223, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i, label %.lr.ph224

.lr.ph224:                                        ; preds = %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.idx235 = shl nuw nsw i64 %.val1.i69.i.i, 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i68.i.i, i64 %.idx235
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %.not.i.i70.i.i = icmp eq ptr %.val.i68.i.i, %i.fp
  br i1 %.not.i.i70.i.i, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph224, %bb.al
  %i.fo = phi ptr [ %i.fn, %.lr.ph224 ], [ %i.fp, %bb.al ]
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -16 ; 4 uses
  %.val.i.i.i71.i.i = load ptr, ptr %i.fp, align 8, !noalias !127082, !noundef !67
  %.not.i.not.i.i.i72.i.i = icmp eq ptr %.val.i.i.i71.i.i, null
  br i1 %.not.i.not.i.i.i72.i.i, label %bb.al, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i73.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i73.i.i: ; preds = %bb.am
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %.val.i68.i.i to i64
  %i.fs = sub nuw i64 %i.fq, %i.fr
  %i.ft = lshr exact i64 %i.fs, 4
  %i.fu = and i64 %i.ft, 4294967295
  %i.fv = add nuw nsw i64 %i.fu, 1
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i

.body128.i.i:                                     ; preds = %bb.bz, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.aq
  %.pn16.i.i = phi { ptr, i32 } [ %9, %bb.bz ], [ %i.gi, %bb.aq ], [ %.pn.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i ] ; 2 uses
  %.val40.i.i = load ptr, ptr %i.o, align 8, !noalias !127068 ; 5 uses
  %.val41.i.i = load ptr, ptr %i.fm, align 8, !noalias !127068, !nonnull !67, !align !98, !noundef !67 ; 5 uses
  %i.fw = load ptr, ptr %.val41.i.i, align 8, !invariant.load !67, !noalias !127070 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.fw, null
  br i1 %.not.i2.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.body128.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i) ], !noalias !127070
  invoke void %i.fw(ptr noundef nonnull %.val40.i.i)
          to label %bb.ao unwind label %bb.ap, !noalias !127070

bb.ao:                                            ; preds = %bb.an, %.body128.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !range !70, !invariant.load !67, !noalias !127070 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %.body133.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i4.i: ; preds = %bb.ao
  %i.ga = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !range !127, !invariant.load !67, !noalias !127070
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i) ], !noalias !127070
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) %i.gb) #59, !noalias !127070
  br label %.body133.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !70, !invariant.load !67, !noalias !127070 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i3.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i3.i: ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !range !127, !invariant.load !67, !noalias !127070
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) %i.gh) #59, !noalias !127070
  br label %.body.i

bb.aq:                                            ; preds = %.invoke305.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body128.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i: ; preds = %bb.al, %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i73.i.i
  %.sroa.02.0.i.i.i74.i.i = phi i64 [ %i.fv, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i73.i.i ], [ 0, %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs0_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %bb.al ]
  %.not13.i.i = icmp eq i64 %i.fj, %.sroa.02.0.i.i.i74.i.i ; 4 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !127070
  %i.gj = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127070 ; 11 uses
  %i.gk = icmp eq ptr %i.gj, null
  %.312.i.i = select i1 %.not13.i.i, ptr @811, ptr @812 ; 2 uses
  br i1 %i.gk, label %.invoke305.i.i, label %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !104

.invoke305.i.i:                                   ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #61
          to label %.cont306.i.i unwind label %bb.aq, !noalias !127070

.cont306.i.i:                                     ; preds = %.invoke305.i.i
  unreachable

_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit75.i.i
  %.311.i.i = select i1 %.not13.i.i, ptr %i.t, ptr %i.q
  store ptr %.311.i.i, ptr %i.gj, align 8, !noalias !127070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !127068
  %i.gl = load i64, ptr %i.s, align 8, !noalias !127068, !noundef !67 ; 2 uses
  invoke fastcc void @_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprdEINtNtNtB8_9dimension3dim3DimAjj2_EdE9from_elemTjjEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.n, i64 noundef %i.gl, i64 noundef %i.gl, double noundef %i.cp)
          to label %bb.at unwind label %bb.as, !noalias !127070

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.thread.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %.body.i118.i.i, %bb.as
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.lh, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %i.gn, %bb.as ], [ %i.lh, %.body.i118.i.i ], [ %.pn192.i.i, %.thread.i.i ], [ %.pn192.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.gm = load ptr, ptr %.312.i.i, align 8, !invariant.load !67, !noalias !127083 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.gm, null
  br i1 %.not.i1.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void %i.gm(ptr noundef nonnull %i.gj)
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i, !noalias !127070

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.ar, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127070
  br label %.body128.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.ar
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127070
  br label %.body.i

bb.as:                                            ; preds = %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.at:                                            ; preds = %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_EEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !127068
  %i.go = load i64, ptr %i.s, align 8, !noalias !127068, !noundef !67 ; 12 uses
  %i.gp = mul i64 %i.go, 24                       ; 5 uses
  %or.cond.i.i.i84.i.i = icmp ugt i64 %i.go, 384307168202282325 ; 2 uses
  br i1 %i.cd, label %bb.bh, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !127084)
  br i1 %or.cond.i.i.i84.i.i, label %.invoke308.i.i, label %bb.av, !prof !73

bb.av:                                            ; preds = %bb.au
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !127085
  %i.gr = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.gp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127085 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %.invoke308.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gt = ptrtoint ptr %i.gr to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

.invoke308.i.i:                                   ; preds = %bb.bj, %bb.bh, %bb.aw, %bb.au
  %i.gu = phi i64 [ 0, %bb.au ], [ 8, %bb.aw ], [ 8, %bb.bj ], [ 0, %bb.bh ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.gu, i64 %i.gp) #61
          to label %.cont309.i.i unwind label %.thread199.i.i, !noalias !127070

.cont309.i.i:                                     ; preds = %.invoke308.i.i
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.ax, %bb.av
  %.sroa.10.0.i.i.i.i = phi i64 [ %i.gt, %bb.ax ], [ 8, %bb.av ]
  %.sroa.47.0.i.i.i.i = phi i64 [ %i.go, %bb.ax ], [ 0, %bb.av ] ; 4 uses
  %i.gv = inttoptr i64 %.sroa.10.0.i.i.i.i to ptr ; 6 uses
  %i.gw = icmp samesign ule i64 %i.go, %.sroa.47.0.i.i.i.i
  call void @llvm.assume(i1 %i.gw)
  %.not202.i.i = icmp eq i64 %i.go, 0
  br i1 %.not202.i.i, label %.loopexit205.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %6 = select i1 %.not13.i.i, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs2_0CskcxRuJ53GpR_9rustworkx, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs1_0CskcxRuJ53GpR_9rustworkx
  br label %bb.az

bb.ay:                                            ; preds = %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.az
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.az:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.gz, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.gz = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ha = load ptr, ptr %i.t, align 8, !noalias !127086, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.hb = invoke noundef i32 %6(ptr noundef nonnull %i.gj, i64 noundef %.val4.i.i.i.i.i.i.i.i.i) #64
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !127087, !inline_history !126933

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !127088)
  call void @llvm.experimental.noalias.scope.decl(metadata !127089)
  call void @llvm.experimental.noalias.scope.decl(metadata !127090)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !127091, !noalias !127092, !nonnull !67, !noundef !67
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !127091, !noalias !127092, !noundef !67 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hg, align 8, !alias.scope !127091, !noalias !127092, !noundef !67
  %i.hh = zext i32 %i.hb to i64                   ; 2 uses
  %i.hi = icmp ugt i64 %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hh
  br i1 %i.hi, label %bb.ba, label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hj, align 8, !alias.scope !127091, !noalias !127092, !nonnull !67, !noundef !67
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hh ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !127093, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hm, align 8, !noalias !127093
  %i.hn = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ba, %.noexc.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hn, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 4294967295, %.noexc.i.i.i.i.i.i.i.i.i ], [ 4294967295, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !127094
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 0)
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !127087

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127095)
  %i.ho = icmp ugt i64 %i.hf, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ho, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc7.i.i.i.i.i.i.i.i.i, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = phi i64 [ %i.ik, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i.i.i.i ]
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !noalias !127096, !noundef !67
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  %i.hu = load i32, ptr %i.ht, align 4, !noalias !127096, !noundef !67
  %.val.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !127097, !nonnull !67, !noundef !67
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fm, align 8, !noalias !127097, !nonnull !67, !align !98, !noundef !67
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !invariant.load !67, !noalias !127098, !nonnull !67
  %i.hx = invoke noundef i64 %i.hw(ptr noundef nonnull %.val.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %i.hu) #64
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !127099, !inline_history !126953 ; 7 uses

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hy = load i64, ptr %i.gx, align 8, !alias.scope !127095, !noalias !127100, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.hx, %i.hy
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !127101
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = add i64 %i.hx, 1                        ; 2 uses
  %i.ia = icmp ugt i64 %i.hz, %i.hy
  br i1 %i.ia, label %bb.bc, label %.thread23.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

.thread23.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !127101
  store i64 %i.hx, ptr %i.h, align 8, !noalias !127102
  br label %.loopexit24.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNvMs0_CsiCakYNGl26C_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.hz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #62
          to label %.noexc2.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !127099

.noexc2.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.bc
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gx, align 8, !alias.scope !127103, !noalias !127100
  %i.ib = icmp ult i64 %i.hx, %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !127101
  store i64 %i.hx, ptr %i.h, align 8, !noalias !127105
  br i1 %i.ib, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit24.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !85

.loopexit24.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc2.i.i.i.i.i.i.i.i.i.i.i.i, %.thread23.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !127105
  store ptr %i.h, ptr %i.g, align 8, !noalias !127105
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127105
  %i.ic = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.gx, ptr %i.ic, align 8, !noalias !127105
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127105
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !127099

.noexc3.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.loopexit24.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc2.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.id = lshr i64 %i.hx, 6
  %i.ie = and i64 %i.hx, 63
  %i.if = load ptr, ptr %i.i, align 8, !alias.scope !127103, !noalias !127100, !nonnull !67, !noundef !67
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.id ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !127106, !noundef !67
  %i.ii = shl nuw i64 1, %i.ie
  %i.ij = or i64 %i.ih, %i.ii
  store i64 %i.ij, ptr %i.ig, align 8, !noalias !127106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !127101
  %i.ik = zext i32 %i.hs to i64                   ; 2 uses
  %i.il = icmp ugt i64 %i.hf, %i.ik
  br i1 %i.il, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.bc, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.loopexit24.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i.i.i.i unwind label %bb.be, !noalias !127099

bb.be:                                            ; preds = %bb.bd
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127099
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !127107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !127094
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %.val4.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !127108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gz, %i.go
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit205.i.i, label %bb.az

.body.i.i.i.i:                                    ; preds = %bb.bd, %bb.ay
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gy, %bb.ay ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd ]
  %i.io = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.io, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i, label %.lr.ph226

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.lr.ph226
  %i.ip = icmp eq i64 %i.ir, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.ip, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i, label %.lr.ph226

.lr.ph226:                                        ; preds = %.body.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i225 = phi i64 [ %i.ir, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %.sroa.0.0.i.i.i.i.i.i225
  %i.ir = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i225, 1 ; 4 uses
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iq)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i unwind label %bb.bf, !noalias !127109

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i: ; preds = %.lr.ph228
  %i.is = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i227, 1 ; 2 uses
  %i.it = icmp eq i64 %i.is, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.it, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, label %.lr.ph228

bb.bf:                                            ; preds = %.lr.ph226
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.iv = icmp eq i64 %i.ir, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.iv, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.bf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i227 = phi i64 [ %i.is, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i ], [ %i.ir, %bb.bf ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %.sroa.0.1.i.i.i.i.i.i227
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i unwind label %bb.bg, !noalias !127109

bb.bg:                                            ; preds = %.lr.ph228
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127109
  unreachable

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i, %bb.bf
  %i.iy = mul nuw nsw i64 %.sroa.47.0.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef %i.iy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127109
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127110
  unreachable

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.body.i.i.i.i
  %i.iz = mul nuw nsw i64 %.sroa.47.0.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127109
  br label %.thread.i.i

bb.bh:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !127111
  br i1 %or.cond.i.i.i84.i.i, label %.invoke308.i.i, label %bb.bi, !prof !73

bb.bi:                                            ; preds = %bb.bh
  %i.ja = icmp eq i64 %i.gp, 0
  br i1 %i.ja, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !127112
  %i.jb = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.gp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127112 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %.invoke308.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jd = ptrtoint ptr %i.jb to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i: ; preds = %bb.bk, %bb.bi
  %.sroa.10.0.i.i86.i.i = phi i64 [ %i.jd, %bb.bk ], [ 8, %bb.bi ]
  %.sroa.47.0.i.i87.i.i = phi i64 [ %i.go, %bb.bk ], [ 0, %bb.bi ] ; 2 uses
  %i.je = inttoptr i64 %.sroa.10.0.i.i86.i.i to ptr ; 2 uses
  %i.jf = icmp samesign ule i64 %i.go, %.sroa.47.0.i.i87.i.i
  call void @llvm.assume(i1 %i.jf)
  store i64 %.sroa.47.0.i.i87.i.i, ptr %i.f, align 8, !noalias !127111
  %i.jg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.je, ptr %i.jg, align 8, !noalias !127111
  %i.jh = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127113)
  call void @llvm.experimental.noalias.scope.decl(metadata !127114)
  %.not203.i.i = icmp eq i64 %i.go, 0
  br i1 %.not203.i.i, label %.loopexit204.i.i, label %.lr.ph.i.i.i.i.i.i.i94.i.i

.lr.ph.i.i.i.i.i.i.i94.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.715.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.917.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.917.sroa.4.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.917.sroa.5.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.917.sroa.6.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %.sroa.917.sroa.7.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %7 = select i1 %.not13.i.i, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs2_0CskcxRuJ53GpR_9rustworkx, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs1_0CskcxRuJ53GpR_9rustworkx ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i94.i.i
  %.val4.i.i.i.i.i.i.i95.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i94.i.i ], [ %i.jj, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.jj = add nuw nsw i64 %.val4.i.i.i.i.i.i.i95.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !127115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !127116
  %i.jk = load ptr, ptr %i.t, align 8, !noalias !127116, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.jl = invoke noundef i32 %7(ptr noundef nonnull %i.gj, i64 noundef %.val4.i.i.i.i.i.i.i95.i.i) #64
          to label %.noexc.i.i.i.i.i.i.i97.i.i unwind label %.body.i.i96.i.i, !noalias !127117, !inline_history !126990

.noexc.i.i.i.i.i.i.i97.i.i:                       ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !127118)
  call void @llvm.experimental.noalias.scope.decl(metadata !127119)
  call void @llvm.experimental.noalias.scope.decl(metadata !127120)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !alias.scope !127121, !noalias !127122, !nonnull !67, !noundef !67
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jp = load i64, ptr %i.jo, align 8, !alias.scope !127121, !noalias !127122, !noundef !67
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i98.i.i = load i64, ptr %i.jq, align 8, !alias.scope !127121, !noalias !127122, !noundef !67
  %i.jr = zext i32 %i.jl to i64                   ; 2 uses
  %i.js = icmp ugt i64 %.val6.i.i.i.i.i.i.i.i.i.i.i.i98.i.i, %i.jr
  br i1 %i.js, label %bb.bm, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %.noexc.i.i.i.i.i.i.i97.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i101.i.i = load ptr, ptr %i.jt, align 8, !alias.scope !127121, !noalias !127122, !nonnull !67, !noundef !67
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i101.i.i, i64 %i.jr ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !127123, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i102.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i102.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i103.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i103.i.i: ; preds = %bb.bm
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !127123
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i103.i.i, %bb.bm, %.noexc.i.i.i.i.i.i.i97.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i103.i.i ], [ -1, %.noexc.i.i.i.i.i.i.i97.i.i ], [ -1, %bb.bm ]
  %i.jw = load ptr, ptr %i.t, align 8, !noalias !127116, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.jx = invoke noundef i32 %7(ptr noundef nonnull %i.gj, i64 noundef %.val4.i.i.i.i.i.i.i95.i.i) #64
          to label %.noexc7.i.i.i.i.i.i.i99.i.i unwind label %.body.i.i96.i.i, !noalias !127117, !inline_history !126990

.noexc7.i.i.i.i.i.i.i99.i.i:                      ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127124)
  call void @llvm.experimental.noalias.scope.decl(metadata !127125)
  call void @llvm.experimental.noalias.scope.decl(metadata !127126)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !alias.scope !127127, !noalias !127128, !nonnull !67, !noundef !67
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.kb = load i64, ptr %i.ka, align 8, !alias.scope !127127, !noalias !127128, !noundef !67
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %.val6.i.i.i1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kc, align 8, !alias.scope !127127, !noalias !127128, !noundef !67
  %i.kd = zext i32 %i.jx to i64                   ; 2 uses
  %i.ke = icmp ugt i64 %.val6.i.i.i1.i.i.i.i.i.i.i.i.i.i.i, %i.kd
  br i1 %i.ke, label %bb.bn, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %.noexc7.i.i.i.i.i.i.i99.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kf, align 8, !alias.scope !127127, !noalias !127128, !nonnull !67, !noundef !67
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, i64 %i.kd ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !127129, !noundef !67
  %.not.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bn
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %.sroa.0.0.copyload.i.i.i8.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ki, align 8, !noalias !127129
  br label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i, %bb.bn, %.noexc7.i.i.i.i.i.i.i99.i.i
  %.sroa.0.0.i.i.i3.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i8.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %.noexc7.i.i.i.i.i.i.i99.i.i ], [ -1, %bb.bn ]
  store ptr %i.jn, ptr %i.ji, align 8, !noalias !127116
  store i64 %i.jp, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127116
  store i32 -1, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127116
  store i32 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !127116
  store i32 -1, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127116
  store ptr %i.jz, ptr %.sroa.917.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127116
  store i64 %i.kb, ptr %.sroa.917.sroa.4.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127116
  store i32 %.sroa.0.0.i.i.i3.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.917.sroa.5.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127116
  store i32 -1, ptr %.sroa.917.sroa.6.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !127116
  store i32 -1, ptr %.sroa.917.sroa.7.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127116
  store ptr %i.o, ptr %i.d, align 8, !noalias !127116
  invoke fastcc void @_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtB26_5chain5ChainINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEEB2N_EQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2S_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %i.d)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i unwind label %.body.i.i96.i.i, !noalias !127117

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !127116
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.je, i64 %.val4.i.i.i.i.i.i.i95.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !127130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !127115
  %exitcond.not.i.i.i.i.i.i.i100.i.i = icmp eq i64 %i.jj, %i.go
  br i1 %exitcond.not.i.i.i.i.i.i.i100.i.i, label %.loopexit204.i.i, label %bb.bl

.body.i.i96.i.i:                                  ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bl
  %i.kk = landingpad { ptr, i32 }
          cleanup
  store i64 %.val4.i.i.i.i.i.i.i95.i.i, ptr %i.jh, align 8, !alias.scope !127131, !noalias !127132
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #63
          to label %.thread.i.i unwind label %bb.bo, !noalias !127133

bb.bo:                                            ; preds = %.body.i.i96.i.i
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127133
  unreachable

.thread199.i.i:                                   ; preds = %.invoke308.i.i
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.loopexit205.i.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %.sroa.47.0.i.i.i.i, ptr %i.m, align 8, !alias.scope !127084, !noalias !127134
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.gv, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !127084, !noalias !127134
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.go, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !127084, !noalias !127134
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit204.i.i, %.loopexit205.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !127068
  store ptr %i.s, ptr %i.l, align 8, !noalias !127068
  %i.kn = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.kn, align 8, !noalias !127068
  %i.ko = load i64, ptr %i.s, align 8, !noalias !127068, !noundef !67
  %i.kp = icmp ult i64 %i.ko, %i.bo
  %i.kq = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  br i1 %i.kp, label %bb.bv, label %bb.br

.loopexit204.i.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i
  store i64 %i.go, ptr %i.jh, align 8, !alias.scope !127131, !noalias !127132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !127135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !127111
  br label %bb.bp

.loopexit.i.i:                                    ; preds = %bb.bw
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp.i.i:                           ; preds = %.noexc114.i.i, %bb.br
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #63
          to label %.thread.i.i unwind label %bb.ce, !noalias !127070

bb.br:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !127136)
  %i.ks = load ptr, ptr %i.kq, align 8, !alias.scope !127137, !noalias !127138, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !127068
  store ptr %i.l, ptr %i.c, align 8, !noalias !127139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127140
  store i64 0, ptr %i.b, align 8, !noalias !127141
  %.sroa.5160.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.kt = load <4 x i64>, ptr %i.kr, align 8, !alias.scope !127142, !noalias !127068
  %.sroa.4176.8.copyload.i.i = load i64, ptr %i.kr, align 8, !alias.scope !127142, !noalias !127068 ; 2 uses
  %i.ku = shufflevector <4 x i64> %i.kt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ku, ptr %.sroa.5160.0..sroa_idx.i.i, align 8, !noalias !127141
  %.sroa.6162.sroa.6.0..sroa.6162.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.ks, ptr %.sroa.6162.sroa.6.0..sroa.6162.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !127141
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !127143
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.kv, align 8, !noalias !127140
  %i.kw = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc114.i.i unwind label %.loopexit.split-lp.i.i, !noalias !127070

.noexc114.i.i:                                    ; preds = %bb.br
  %i.kx = icmp eq i64 %.sroa.4176.8.copyload.i.i, -1
  %i.ky = zext i1 %i.kx to i64
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kw, i64 %i.ky)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1V_9iterators11AxisIterMutdINtNtNtB1V_9dimension3dim3DimAjj1_EEEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB76_5types3any5PyAnyEB71_EEs7_0EECskcxRuJ53GpR_9rustworkx(i64 noundef %.sroa.4176.8.copyload.i.i, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.bs unwind label %.loopexit.split-lp.i.i, !noalias !127070

bb.bs:                                            ; preds = %.noexc114.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127068
  br label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc127.i.i, %bb.bv, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !127069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !127068
  call void @llvm.experimental.noalias.scope.decl(metadata !127144)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i116.i.i = load ptr, ptr %i.kz, align 8, !alias.scope !127144, !noalias !127068, !nonnull !67, !noundef !67 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val1.i117.i.i = load i64, ptr %i.la, align 8, !alias.scope !127144, !noalias !127068, !noundef !67 ; 4 uses
  %i.lb = icmp eq i64 %.val1.i117.i.i, 0
  br i1 %i.lb, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph230

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph230
  %i.lc = icmp eq i64 %i.le, %.val1.i117.i.i
  br i1 %i.lc, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph230

.lr.ph230:                                        ; preds = %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i229 = phi i64 [ %i.le, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %.val.i116.i.i, i64 %.sroa.0.0.i.i.i.i.i229
  %i.le = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i229, 1 ; 4 uses
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ld)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i unwind label %bb.bt, !noalias !127145

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i: ; preds = %.lr.ph232
  %i.lf = add i64 %.sroa.0.1.i.i.i.i.i231, 1      ; 2 uses
  %i.lg = icmp eq i64 %i.lf, %.val1.i117.i.i
  br i1 %i.lg, label %.body.i118.i.i, label %.lr.ph232

bb.bt:                                            ; preds = %.lr.ph230
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = icmp eq i64 %i.le, %.val1.i117.i.i
  br i1 %i.li, label %.body.i118.i.i, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.bt, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i231 = phi i64 [ %i.lf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i ], [ %i.le, %bb.bt ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %.val.i116.i.i, i64 %.sroa.0.1.i.i.i.i.i231
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lj)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i unwind label %bb.bu, !noalias !127145

bb.bu:                                            ; preds = %.lr.ph232
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127145
  unreachable

.body.i118.i.i:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i, %bb.bt
  %.val4.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !127144, !noalias !127068 ; 2 uses
  %i.ll = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.ll, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %.body.i118.i.i
  %i.lm = mul nuw i64 %.val4.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i116.i.i, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127145
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !127144, !noalias !127068 ; 2 uses
  %i.ln = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ln, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.lo = mul nuw i64 %.val2.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i116.i.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127145
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bv:                                            ; preds = %bb.bp
  %i.lp = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.6169.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !127146)
  %i.lq = load ptr, ptr %i.kq, align 8, !alias.scope !127147, !noalias !127148, !nonnull !67, !noundef !67
  %.sroa.4168.8.copyload.i.i = load i64, ptr %i.kr, align 8, !alias.scope !127149, !noalias !127068 ; 2 uses
  %.sroa.7.24.copyload.i.i = load i64, ptr %i.lp, align 8, !alias.scope !127149, !noalias !127068
  %i.lr = load <3 x i64>, ptr %.sroa.6169.8..sroa_idx.i.i, align 8, !alias.scope !127149, !noalias !127068
  %i.ls = shufflevector <3 x i64> %i.lr, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %.not.i12.i.not.i.i = icmp eq i64 %.sroa.4168.8.copyload.i.i, 0
  br i1 %.not.i12.i.not.i.i, label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv
  %.sroa.4.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.46.0..sroa.4.0..sroa_idx.i1.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc127.i.i, %.lr.ph.i.i.i
  %.sroa.2.013.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.lv, %.noexc127.i.i ] ; 4 uses
  %i.lt = mul i64 %.sroa.2.013.i.i.i, %.sroa.7.24.copyload.i.i
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.lt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127150
  store i64 %.sroa.2.013.i.i.i, ptr %i.a, align 8, !noalias !127150
  store ptr %i.lu, ptr %.sroa.4.0..sroa_idx.i1.i.i.i, align 8, !noalias !127151
  store <2 x i64> %i.ls, ptr %.sroa.46.0..sroa.4.0..sroa_idx.i1.sroa_idx.i.i.i, align 8, !noalias !127151
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !127152, !nonnull !67, !align !98, !noundef !67
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.kn, align 8, !noalias !127152
  invoke fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs5_0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i, i64 noundef %.sroa.2.013.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i1.i.i.i) #64
          to label %.noexc127.i.i unwind label %.loopexit.i.i, !noalias !127070

.noexc127.i.i:                                    ; preds = %bb.bw
  %i.lv = add nuw i64 %.sroa.2.013.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127150
  %exitcond.not.i.i.i = icmp eq i64 %i.lv, %.sroa.4168.8.copyload.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bw

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !127068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !127068
  %i.lw = load ptr, ptr %.312.i.i, align 8, !invariant.load !67, !noalias !127068 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i66, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void %i.lw(ptr noundef nonnull %i.gj)
          to label %bb.by unwind label %bb.bz, !noalias !127070

bb.by:                                            ; preds = %bb.bx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127070
  %.val38.i.i = load ptr, ptr %i.o, align 8, !noalias !127068 ; 5 uses
  %.val39.i.i = load ptr, ptr %i.fm, align 8, !noalias !127068, !nonnull !67, !align !98, !noundef !67 ; 5 uses
  %8 = load ptr, ptr %.val39.i.i, align 8, !invariant.load !67, !noalias !127070 ; 2 uses
  %.not.i130.i.i.a = icmp eq ptr %8, null
  br i1 %.not.i130.i.i.a, label %bb.cb, label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127070
  br label %.body128.i.i

bb.ca:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i.i) ]
  invoke void %8(ptr noundef nonnull %.val38.i.i)
          to label %bb.cb unwind label %bb.cc, !noalias !127070

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %i.lx = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !range !70, !invariant.load !67, !noalias !127070 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i132.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i132.i.i: ; preds = %bb.cb
  %i.ma = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !range !127, !invariant.load !67, !noalias !127070
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.ly, i64 noundef range(i64 1, -9223372036854775807) %i.mb) #59, !noalias !127070
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.mc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.me = load i64, ptr %i.md, align 8, !range !70, !invariant.load !67, !noalias !127070 ; 2 uses
  %i.mf = icmp eq i64 %i.me, 0
  br i1 %i.mf, label %.body133.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i131.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i131.i.i: ; preds = %bb.cc
  %i.mg = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 16
  %i.mh = load i64, ptr %i.mg, align 8, !range !127, !invariant.load !67, !noalias !127070
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) %i.mh) #59, !noalias !127070
  br label %.body133.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i132.i.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !127068
  %.val.i.i = load i64, ptr %i.q, align 8, !noalias !127068 ; 2 uses
  %i.mi = icmp eq i64 %.val.i.i, 0
  br i1 %i.mi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val22.i.i = load ptr, ptr %i.mj, align 8, !noalias !127068, !nonnull !67, !noundef !67
  %i.mk = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i, i64 noundef %i.mk, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !127070
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !127068
  %.val33.i.i = load ptr, ptr %i.r, align 8, !noalias !127068 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val34.i.i = load i64, ptr %i.ml, align 8, !noalias !127068, !noundef !67 ; 3 uses
  %i.mm = icmp eq i64 %.val34.i.i, 0
  br i1 %i.mm, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i
  %i.mn = shl i64 %.val34.i.i, 4                  ; 2 uses
  %i.mo = add i64 %i.mn, 16                       ; 2 uses
  %i.mp = add i64 %.val34.i.i, 17
  %i.mq = add i64 %i.mp, %i.mo                    ; 4 uses
  %i.mr = icmp uge i64 %i.mq, %i.mo
  %i.ms = icmp ult i64 %i.mq, 9223372036854775793
  call void @llvm.assume(i1 %i.mr)
  call void @llvm.assume(i1 %i.ms)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33.i.i) ]
  %i.mt = icmp eq i64 %i.mq, 0
  br i1 %i.mt, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.mu = sub nuw nsw i64 -16, %i.mn
  %i.mv = getelementptr inbounds i8, ptr %.val33.i.i, i64 %i.mu
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mv, i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !127070
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i

bb.ce:                                            ; preds = %bb.bq
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ce, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i3.i, %bb.ap
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127070
  unreachable

.thread.i.i:                                      ; preds = %bb.bq, %.thread199.i.i, %.body.i.i96.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i
  %.pn192.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.bq ], [ %i.km, %.thread199.i.i ], [ %i.kk, %.body.i.i96.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127153)
  call void @llvm.experimental.noalias.scope.decl(metadata !127154)
  call void @llvm.experimental.noalias.scope.decl(metadata !127155)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !127156, !noalias !127068, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.my, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.thread.i.i
  %i.mz = load ptr, ptr %i.n, align 8, !alias.scope !127156, !noalias !127068, !nonnull !67, !noundef !67
  %i.na = shl nuw i64 %i.my, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mz, i64 noundef %i.na, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127157
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.cd, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !127068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !127068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !127066
  %i.nb = invoke fastcc noundef nonnull ptr @_RNvMs0_NtCs3Tt2PVjAfPX_5numpy5arrayINtB5_7PyArraydINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimAjj2_EE16from_owned_arrayCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.u)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit72 unwind label %.body.thread92

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit72: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !127066
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nb, ptr %i.nc, align 8
  store i64 0, ptr %0, align 8
  %i.nd = atomicrmw sub ptr %i.au, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit73

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit73: ; preds = %bb.b, %.noexc52, %bb.cf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  ret void

bb.cf:                                            ; preds = %bb.p, %bb.l, %bb.h
  store i64 1, ptr %0, align 8
  %i.ne = atomicrmw sub ptr %i.au, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit73
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path37___pyfunction_graph_all_shortest_paths(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.10 = alloca [56 x i8], align 8           ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2872, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef 5)
  %i.s = load i64, ptr %i.q, align 8, !range !68, !noundef !67
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit95

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.w = load ptr, ptr %i.r, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !127195
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noundef nonnull %i.w), !inline_history !53
  %i.x = load ptr, ptr %i.h, align 8, !noalias !127195, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !127195, !nonnull !67, !noundef !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !127195
  br i1 %.not.i.i.i, label %.noexc79, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aa, ptr noundef nonnull %i.x, ptr noundef nonnull %i.z), !inline_history !53
  br label %.noexc78

.noexc79:                                         ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 104 ; 4 uses
  %i.ac = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.ab), !inline_history !53
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ad), !inline_history !53
  br label %.noexc78

.noexc78:                                         ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j), !inline_history !53
  %.sroa.043.0.copyload = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.043.0.copyload, ptr %i.af, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.446.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit95

.thread138:                                       ; preds = %bb.p, %bb.t, %bb.i, %bb.h, %bb.f, %bb.e
  %lpad.thr_comm136 = landingpad { ptr, i32 }
          cleanup
  br label %.thread128

.thread128:                                       ; preds = %bb.o, %bb.w, %.thread138
  %.pn132 = phi { ptr, i32 } [ %lpad.thr_comm136, %.thread138 ], [ %lpad.thr_comm.split-lp, %bb.o ], [ %lpad.thr_comm, %bb.w ]
  %i.ag = atomicrmw sub ptr %i.ab, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %.pn132

bb.e:                                             ; preds = %.noexc79
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !127196
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %i.aj)
          to label %.noexc82 unwind label %.thread138

.noexc82:                                         ; preds = %bb.e
  %i.ak = load i64, ptr %i.g, align 8, !range !68, !noalias !127196, !noundef !67
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.h, !prof !71

bb.f:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !127196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false), !noalias !127196
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 6, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f)
          to label %bb.g unwind label %.thread138

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !127196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !127196
  %.sroa.049.0.copyload = load i64, ptr %i.an, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.450.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.sink.split

bb.h:                                             ; preds = %.noexc82
  %i.ao = load i64, ptr %i.am, align 8, !noalias !127196, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !127196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !127197
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.aq)
          to label %.noexc85 unwind label %.thread138

.noexc85:                                         ; preds = %bb.h
  %i.ar = load i64, ptr %i.e, align 8, !range !68, !noalias !127197, !noundef !67
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.k, !prof !71

bb.i:                                             ; preds = %.noexc85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !127197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.at, i64 64, i1 false), !noalias !127197
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 6, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.j unwind label %.thread138

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !127197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !127197
  %.sroa.055.0.copyload = load i64, ptr %i.au, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.458.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.456.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.sink.split

bb.k:                                             ; preds = %.noexc85
  %i.av = load i64, ptr %i.at, align 8, !noalias !127197, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !127197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
end_hunk_1
begin_hunk_2_@llvm.fabs.v2f64
!126301 = !{!126217}
!126302 = !{!126217, !126215, !126213}
!126303 = !{!126219}
!126304 = !{!126221, !126219}
!126305 = !{!126217, !126215, !126213, !126164, !126163}
!126306 = !{!126223, !126219, !126217, !126215, !126213, !126164, !126163}
!126307 = !{!126225}
!126308 = !{!126227}
!126309 = !{!126227, !126225}
!126310 = !{!126229}
!126311 = !{!126229, !126227, !126225}
!126312 = !{!126231}
!126313 = !{!126231, !126229, !126227, !126225}
!126314 = !{!126233}
!126315 = !{!126235}
!126316 = !{!126235, !126233}
!126317 = !{!126237}
!126318 = !{!126237, !126235, !126233}
!126319 = !{!126239}
!126320 = !{!126239, !126237, !126235, !126233}
!126321 = distinct !{!126321, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_"}
!126322 = distinct !{!126322, !126321, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 2"}
!126323 = distinct !{!126323, !126321, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 1"}
!126324 = distinct !{!126324, !126321, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 0"}
!126325 = distinct !{!126325, i1 false, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!126326 = distinct !{!126326, !126325, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!126327 = distinct !{!126327, !126325, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!126328 = distinct !{!126328, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_"}
!126329 = distinct !{!126329, !126328, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 1"}
!126330 = distinct !{!126330, !126328, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 0"}
!126331 = distinct !{!126331, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx"}
!126332 = distinct !{!126332, !126331, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126333 = distinct !{!126333, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!126334 = distinct !{!126334, !126333, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126335 = distinct !{!126335, !126331, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126336 = distinct !{!126336, !126333, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126337 = distinct !{!126337, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!126338 = distinct !{!126338, !126337, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126339 = distinct !{!126339, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!126340 = distinct !{!126340, !126339, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126341 = distinct !{!126341, !126337, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126342 = distinct !{!126342, !126339, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126343 = distinct !{!126343, i1 false, !"_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path21graph_distance_matrix"}
!126344 = distinct !{!126344, !126343, !"_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path21graph_distance_matrix: argument 0"}
!126345 = distinct !{!126345, i1 false, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx"}
!126346 = distinct !{!126346, !126345, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126347 = distinct !{!126347, !126345, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126348 = distinct !{!126348, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126349 = distinct !{!126349, !126348, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126350 = distinct !{!126350, i1 false, !"_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx"}
!126351 = distinct !{!126351, !126350, !"_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx: argument 0"}
!126352 = distinct !{!126352, i1 false, !"_RINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBP_jEE9from_iterINtNtNtB1L_8adapters3map3MapINtNtB30_9enumerate9EnumerateINtNtBR_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB3T_11StableGraphB4p_B4p_NtBT_10UndirectedEE0EECskcxRuJ53GpR_9rustworkx"}
!126353 = distinct !{!126353, !126352, !"_RINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBP_jEE9from_iterINtNtNtB1L_8adapters3map3MapINtNtB30_9enumerate9EnumerateINtNtBR_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB3T_11StableGraphB4p_B4p_NtBT_10UndirectedEE0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126354 = distinct !{!126354, !126352, !"_RINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBP_jEE9from_iterINtNtNtB1L_8adapters3map3MapINtNtB30_9enumerate9EnumerateINtNtBR_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB3T_11StableGraphB4p_B4p_NtBT_10UndirectedEE0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126355 = distinct !{!126355, i1 false, !"_RNvMs2_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE27with_capacity_and_hasher_inCskcxRuJ53GpR_9rustworkx"}
!126356 = distinct !{!126356, !126355, !"_RNvMs2_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE27with_capacity_and_hasher_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126357 = distinct !{!126357, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1m_11StableGraphB2q_B2q_NtB1q_10UndirectedEE0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6z_7HashMapNtB1o_9NodeIndexjEINtNtB5M_7collect12FromIteratorTB7i_jEE9from_iterB3_E0ECskcxRuJ53GpR_9rustworkx"}
!126358 = distinct !{!126358, !126357, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1m_11StableGraphB2q_B2q_NtB1q_10UndirectedEE0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6z_7HashMapNtB1o_9NodeIndexjEINtNtB5M_7collect12FromIteratorTB7i_jEE9from_iterB3_E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126359 = distinct !{!126359, i1 false, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1s_11StableGraphB2w_B2w_NtB1w_10UndirectedEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5O_8for_each4callTNtB1u_9NodeIndexjENCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7k_7HashMapB6S_jEINtNtB5S_7collect12FromIteratorB6R_E9from_iterBN_E0E0ECskcxRuJ53GpR_9rustworkx"}
!126360 = distinct !{!126360, !126359, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1s_11StableGraphB2w_B2w_NtB1w_10UndirectedEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5O_8for_each4callTNtB1u_9NodeIndexjENCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7k_7HashMapB6S_jEINtNtB5S_7collect12FromIteratorB6R_E9from_iterBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126361 = distinct !{!126361, i1 false, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2k_5types3any5PyAnyEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjNtB1d_9NodeIndexETB4l_jEuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1b_11StableGraphB2f_B2f_NtB1f_10UndirectedEE0NCINvNvB3i_8for_each4callB4C_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7B_7HashMapB4l_jEINtNtB3m_7collect12FromIteratorB4C_E9from_iterINtB41_3MapBS_B4K_EE0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126362 = distinct !{!126362, !126361, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2k_5types3any5PyAnyEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjNtB1d_9NodeIndexETB4l_jEuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1b_11StableGraphB2f_B2f_NtB1f_10UndirectedEE0NCINvNvB3i_8for_each4callB4C_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7B_7HashMapB4l_jEINtNtB3m_7collect12FromIteratorB4C_E9from_iterINtB41_3MapBS_B4K_EE0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126363 = distinct !{!126363, i1 false, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2i_8adapters9enumerateINtB3n_9EnumeratepEB2c_4fold9enumerateNtB8_9NodeIndexuNCINvNtB3p_3map8map_foldTjB4q_ETB4q_jEuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB6_11StableGraphB1a_B1a_NtBa_10UndirectedEE0NCINvNvB2c_8for_each4callB5b_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB88_7HashMapB4q_jEINtNtB2g_7collect12FromIteratorB5b_E9from_iterINtB4L_3MapIB3P_B3_EB5j_EE0E0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126364 = distinct !{!126364, !126363, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2i_8adapters9enumerateINtB3n_9EnumeratepEB2c_4fold9enumerateNtB8_9NodeIndexuNCINvNtB3p_3map8map_foldTjB4q_ETB4q_jEuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB6_11StableGraphB1a_B1a_NtBa_10UndirectedEE0NCINvNvB2c_8for_each4callB5b_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB88_7HashMapB4q_jEINtNtB2g_7collect12FromIteratorB5b_E9from_iterINtB4L_3MapIB3P_B3_EB5j_EE0E0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126365 = distinct !{!126365, i1 false, !"_RNvXsr_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126366 = distinct !{!126366, !126365, !"_RNvXsr_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126367 = distinct !{!126367, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsr_NtB1w_12stable_graphINtB4w_11NodeIndicesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126368 = distinct !{!126368, !126367, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsr_NtB1w_12stable_graphINtB4w_11NodeIndicesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126369 = distinct !{!126369, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126370 = distinct !{!126370, !126369, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126371 = distinct !{!126371, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126372 = distinct !{!126372, !126371, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126373 = distinct !{!126373, i1 false, !"_RNvXsz_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit19IntoNodeIdentifiers16node_identifiersCskcxRuJ53GpR_9rustworkx"}
!126374 = distinct !{!126374, !126373, !"_RNvXsz_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit19IntoNodeIdentifiers16node_identifiersCskcxRuJ53GpR_9rustworkx: argument 0"}
!126375 = distinct !{!126375, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126376 = distinct !{!126376, !126375, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126377 = distinct !{!126377, i1 false, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_NtB4N_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx"}
!126378 = distinct !{!126378, !126377, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_NtB4N_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!126379 = distinct !{!126379, !126377, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_NtB4N_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!126380 = distinct !{!126380, i1 false, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_NtB53_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx"}
!126381 = distinct !{!126381, !126380, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_NtB53_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!126382 = distinct !{!126382, !126380, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_NtB53_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!126383 = distinct !{!126383, i1 false, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126384 = distinct !{!126384, !126383, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126385 = distinct !{!126385, i1 false, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_NtB4K_10UndirectedEEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx"}
!126386 = distinct !{!126386, !126385, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_NtB4K_10UndirectedEEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 0"}
!126387 = distinct !{!126387, i1 false, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_NtB4s_10UndirectedEEs3_0EECskcxRuJ53GpR_9rustworkx"}
!126388 = distinct !{!126388, !126387, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_NtB4s_10UndirectedEEs3_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126389 = distinct !{!126389, !126385, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_NtB4K_10UndirectedEEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 1"}
!126390 = distinct !{!126390, !126387, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_NtB4s_10UndirectedEEs3_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126391 = distinct !{!126391, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_NtB2R_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6b_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx"}
!126392 = distinct !{!126392, !126391, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_NtB2R_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6b_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126393 = distinct !{!126393, !126391, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_NtB2R_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6b_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126394 = distinct !{!126394, i1 false, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5r_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecB6u_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx"}
!126395 = distinct !{!126395, !126394, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5r_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecB6u_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126396 = distinct !{!126396, !126394, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5r_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecB6u_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126397 = distinct !{!126397, i1 false, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_NtB4k_10UndirectedEEs3_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7o_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126398 = distinct !{!126398, !126397, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_NtB4k_10UndirectedEEs3_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7o_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126399 = distinct !{!126399, i1 false, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx"}
!126400 = distinct !{!126400, !126399, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126401 = distinct !{!126401, i1 false, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx"}
!126402 = distinct !{!126402, !126401, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx: argument 1"}
!126403 = distinct !{!126403, !126401, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126404 = distinct !{null}
!126405 = distinct !{!126405, i1 false, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126406 = distinct !{!126406, !126405, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126407 = distinct !{!126407, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126408 = distinct !{!126408, !126407, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126409 = distinct !{!126409, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!126410 = distinct !{!126410, !126409, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126411 = distinct !{!126411, !126405, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126412 = distinct !{!126412, !126407, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126413 = distinct !{!126413, !126409, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126414 = distinct !{!126414, i1 false, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126415 = distinct !{!126415, !126414, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126416 = distinct !{!126416, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126417 = distinct !{!126417, !126416, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126418 = distinct !{!126418, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!126419 = distinct !{!126419, !126418, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126420 = distinct !{!126420, !126414, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126421 = distinct !{!126421, !126416, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126422 = distinct !{!126422, !126418, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126423 = distinct !{!126423, i1 false, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_NtB5r_10UndirectedEEs3_0EE0E0CskcxRuJ53GpR_9rustworkx"}
!126424 = distinct !{!126424, !126423, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_NtB5r_10UndirectedEEs3_0EE0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126425 = distinct !{!126425, i1 false, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_NtB4u_10UndirectedEEs3_0EE0CskcxRuJ53GpR_9rustworkx"}
!126426 = distinct !{!126426, !126425, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_NtB4u_10UndirectedEEs3_0EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126427 = distinct !{!126427, i1 false, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx"}
!126428 = distinct !{!126428, !126427, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126429 = distinct !{!126429, !126427, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 1"}
!126430 = distinct !{!126430, i1 false, !"_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB10_9iterators11AxisIterMutdINtNtNtB10_9dimension3dim3DimAjj1_EEEENtB8_16ParallelIterator8for_eachNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB60_5types3any5PyAnyEB5V_NtB4V_10UndirectedEEs7_0ECskcxRuJ53GpR_9rustworkx"}
!126431 = distinct !{!126431, !126430, !"_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB10_9iterators11AxisIterMutdINtNtNtB10_9dimension3dim3DimAjj1_EEEENtB8_16ParallelIterator8for_eachNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB60_5types3any5PyAnyEB5V_NtB4V_10UndirectedEEs7_0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126432 = distinct !{!126432, i1 false, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_NtB5G_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx"}
!126433 = distinct !{!126433, !126432, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_NtB5G_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126434 = distinct !{!126434, !126432, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_NtB5G_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126435 = distinct !{!126435, i1 false, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_NtB5h_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx"}
!126436 = distinct !{!126436, !126435, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_NtB5h_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126437 = distinct !{!126437, !126435, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_NtB5h_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126438 = distinct !{!126438, i1 false, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_NtB6l_10UndirectedEEs7_0EEECskcxRuJ53GpR_9rustworkx"}
!126439 = distinct !{!126439, !126438, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_NtB6l_10UndirectedEEs7_0EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126440 = distinct !{!126440, !126438, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_NtB6l_10UndirectedEEs7_0EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126441 = distinct !{!126441, i1 false, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_NtB72_10UndirectedEEs7_0EEEECskcxRuJ53GpR_9rustworkx"}
!126442 = distinct !{!126442, !126441, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_NtB72_10UndirectedEEs7_0EEEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126443 = distinct !{!126443, !126441, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_NtB72_10UndirectedEEs7_0EEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126444 = distinct !{!126444, i1 false, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_NtB4H_10UndirectedEEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7F_8ViewReprQdEINtNtNtB7F_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7F_8parallel3par16ParallelProducerINtNtB7F_9iterators11AxisIterMutdB8u_EEECskcxRuJ53GpR_9rustworkx"}
!126445 = distinct !{!126445, !126444, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_NtB4H_10UndirectedEEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7F_8ViewReprQdEINtNtNtB7F_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7F_8parallel3par16ParallelProducerINtNtB7F_9iterators11AxisIterMutdB8u_EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126446 = distinct !{!126446, !126444, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_NtB4H_10UndirectedEEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7F_8ViewReprQdEINtNtNtB7F_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7F_8parallel3par16ParallelProducerINtNtB7F_9iterators11AxisIterMutdB8u_EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126447 = distinct !{!126447, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx"}
!126448 = distinct !{!126448, !126447, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126449 = distinct !{!126449, i1 false, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx"}
!126450 = distinct !{!126450, !126449, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126451 = distinct !{!126451, !126449, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 1"}
!126452 = distinct !{!126452, i1 false, !"_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126453 = distinct !{!126453, !126452, !"_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126454 = distinct !{!126454, i1 false, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_NtB5z_10UndirectedEEs6_0E0E0CskcxRuJ53GpR_9rustworkx"}
!126455 = distinct !{!126455, !126454, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_NtB5z_10UndirectedEEs6_0E0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!126456 = distinct !{!126456, !126454, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_NtB5z_10UndirectedEEs6_0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126457 = distinct !{!126457, i1 false, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTjINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1k_8ViewReprQdEINtNtNtB1k_9dimension3dim3DimAjj1_EdEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5o_5types3any5PyAnyEB5j_NtB4j_10UndirectedEEs6_0E0CskcxRuJ53GpR_9rustworkx"}
!126458 = distinct !{!126458, !126457, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTjINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1k_8ViewReprQdEINtNtNtB1k_9dimension3dim3DimAjj1_EdEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5o_5types3any5PyAnyEB5j_NtB4j_10UndirectedEEs6_0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126459 = distinct !{!126459, i1 false, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs6_0CskcxRuJ53GpR_9rustworkx"}
!126460 = distinct !{!126460, !126459, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs6_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126461 = distinct !{!126461, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx"}
!126462 = distinct !{!126462, !126461, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126463 = distinct !{!126463, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCshByAT0BfsDP_7ndarray9data_repr9OwnedReprdEECskcxRuJ53GpR_9rustworkx"}
!126464 = distinct !{!126464, !126463, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCshByAT0BfsDP_7ndarray9data_repr9OwnedReprdEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126465 = distinct !{!126465, i1 false, !"_RNvXs0_NtCshByAT0BfsDP_7ndarray9data_reprINtB5_9OwnedReprdENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!126466 = distinct !{!126466, !126465, !"_RNvXs0_NtCshByAT0BfsDP_7ndarray9data_reprINtB5_9OwnedReprdENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!126467 = !{!126330, !126329, !126327, !126326, !126324, !126323, !126322}
!126468 = !{!126332}
!126469 = !{!126334}
!126470 = !{!126334, !126336, !126332, !126335}
!126471 = !{!126335}
!126472 = !{!126334, !126332}
!126473 = !{!126336, !126335}
!126474 = !{!126338}
!126475 = !{!126340}
!126476 = !{!126340, !126342, !126338, !126341}
!126477 = !{!126340, !126338}
!126478 = !{!126342, !126341}
!126479 = !{!126344}
!126480 = !{!126346}
!126481 = !{!126347, !126346, !126344}
!126482 = !{!126346, !126344}
!126483 = !{!126347}
!126484 = !{!126349, !126347}
!126485 = !{!126351}
!126486 = !{!126351, !126347, !126346, !126344}
!126487 = !{!126354, !126353, !126347, !126346, !126344}
!126488 = !{!126356}
!126489 = !{!126368, !126366, !126364, !126362, !126360, !126358, !126354, !126353, !126347}
!126490 = !{!126354, !126353, !126347}
!126491 = !{!126353, !126347, !126346, !126344}
!126492 = !{!126370, !126347}
!126493 = !{!126372, !126347}
!126494 = !{!126374}
!126495 = !{!126376, !126347}
!126496 = !{!126347, !126344}
!126497 = !{!126382, !126381, !126379, !126378, !126347, !126346, !126344}
!126498 = !{!126384, !126382, !126381, !126379, !126378, !126347}
!126499 = !{!126386}
!126500 = !{!126388}
!126501 = !{!126400, !126398, !126396, !126395, !126393, !126392, !126388, !126390, !126386, !126389, !126382, !126381, !126379, !126378, !126347, !126346, !126344}
!126502 = !{!126403, !126402, !126400, !126398, !126396, !126395, !126393, !126392, !126388, !126390, !126386, !126389, !126382, !126381, !126379, !126378, !126347, !126346, !126344}
!126503 = !{!126398, !126396, !126395, !126393, !126392, !126388, !126390, !126386, !126389, !126382, !126381, !126379, !126378, !126347}
!126504 = !{!126406}
!126505 = !{!126408}
!126506 = !{!126410}
!126507 = !{!126410, !126408, !126406}
!126508 = !{!126413, !126412, !126411, !126403, !126402, !126400, !126398, !126396, !126395, !126393, !126392, !126388, !126390, !126386, !126389, !126382, !126381, !126379, !126378, !126347}
!126509 = !{!126413, !126410, !126412, !126408, !126411, !126406, !126403, !126402, !126400, !126398, !126396, !126395, !126393, !126392, !126388, !126390, !126386, !126389, !126382, !126381, !126379, !126378, !126347}
!126510 = !{!126415}
!126511 = !{!126417}
!126512 = !{!126419}
!126513 = !{!126419, !126417, !126415}
!126514 = !{!126422, !126421, !126420, !126403, !126402, !126400, !126398, !126396, !126395, !126393, !126392, !126388, !126390, !126386, !126389, !126382, !126381, !126379, !126378, !126347}
!126515 = !{!126422, !126419, !126421, !126417, !126420, !126415, !126403, !126402, !126400, !126398, !126396, !126395, !126393, !126392, !126388, !126390, !126386, !126389, !126382, !126381, !126379, !126378, !126347}
!126516 = !{!126426, !126424, !126400, !126398, !126396, !126395, !126393, !126392, !126388, !126390, !126386, !126389, !126382, !126381, !126379, !126378, !126347}
!126517 = !{!126388, !126386}
!126518 = !{!126398, !126396, !126395, !126393, !126392, !126390, !126389, !126382, !126381, !126379, !126378, !126347, !126346, !126344}
!126519 = !{!126382, !126381, !126379, !126378, !126347}
!126520 = !{!126381, !126378, !126347, !126346, !126344}
!126521 = !{!126428}
!126522 = !{!126429}
!126523 = !{!126428, !126347, !126346, !126344}
!126524 = !{!126431, !126347, !126346, !126344}
!126525 = !{!126446, !126445, !126443, !126442, !126440, !126439, !126437, !126436, !126434, !126433, !126431, !126347, !126346, !126344}
!126526 = !{!126446, !126442, !126439, !126436, !126433, !126347, !126346, !126344}
!126527 = !{!126428, !126429}
!126528 = !{!126446, !126443, !126442, !126440, !126439, !126437, !126436, !126434, !126433, !126431, !126347, !126346, !126344}
!126529 = !{!126448}
!126530 = !{!126448, !126347}
!126531 = !{!126450}
!126532 = !{!126451}
!126533 = !{!126450, !126347, !126346, !126344}
!126534 = !{!126450, !126451}
!126535 = !{!126456, !126455, !126453, !126347, !126346, !126344}
!126536 = !{!126456, !126453, !126347, !126346, !126344}
!126537 = !{!126460, !126458, !126456, !126455, !126453, !126347, !126346, !126344}
!126538 = !{!126462}
!126539 = !{!126464}
!126540 = !{!126466}
!126541 = !{!126466, !126464, !126462}
!126542 = !{!126466, !126464, !126462, !126347}
!126543 = distinct !{!126543, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_"}
!126544 = distinct !{!126544, !126543, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 2"}
!126545 = distinct !{!126545, !126543, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 1"}
!126546 = distinct !{!126546, !126543, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 0"}
!126547 = distinct !{!126547, i1 false, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!126548 = distinct !{!126548, !126547, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!126549 = distinct !{!126549, !126547, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!126550 = distinct !{!126550, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_"}
!126551 = distinct !{!126551, !126550, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_: argument 1"}
!126552 = distinct !{!126552, !126550, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_: argument 0"}
!126553 = distinct !{!126553, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!126554 = distinct !{!126554, !126553, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126555 = distinct !{!126555, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!126556 = distinct !{!126556, !126555, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126557 = distinct !{!126557, i1 false, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!126558 = distinct !{!126558, !126557, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!126559 = distinct !{!126559, i1 false, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!126560 = distinct !{!126560, !126559, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!126561 = distinct !{!126561, i1 false, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!126562 = distinct !{!126562, !126561, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!126563 = distinct !{!126563, i1 false, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!126564 = distinct !{!126564, !126563, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!126565 = distinct !{!126565, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx"}
!126566 = distinct !{!126566, !126565, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126567 = distinct !{!126567, !126565, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126568 = distinct !{!126568, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx"}
!126569 = distinct !{!126569, !126568, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126570 = distinct !{!126570, !126568, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126571 = distinct !{!126571, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!126572 = distinct !{!126572, !126571, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126573 = distinct !{!126573, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!126574 = distinct !{!126574, !126573, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126575 = distinct !{!126575, !126571, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126576 = distinct !{!126576, !126573, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126577 = distinct !{!126577, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx"}
!126578 = distinct !{!126578, !126577, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126579 = distinct !{!126579, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!126580 = distinct !{!126580, !126579, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126581 = distinct !{!126581, !126577, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126582 = distinct !{!126582, !126579, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126583 = !{!126552, !126551, !126549, !126548, !126546, !126545, !126544}
!126584 = !{!126564, !126562, !126560, !126558, !126556, !126554}
!126585 = !{!126570, !126569, !126567, !126566}
!126586 = !{!126572}
!126587 = !{!126574}
!126588 = !{!126574, !126576, !126572, !126575}
!126589 = !{!126575}
!126590 = !{!126574, !126572}
!126591 = !{!126576, !126575}
!126592 = !{!126578}
!126593 = !{!126580}
!126594 = !{!126580, !126582, !126578, !126581}
!126595 = !{!126581}
!126596 = !{!126580, !126578}
!126597 = !{!126582, !126581}
!126598 = distinct !{!126598, i1 false, !"_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions12PyIndexErrorNtNtB4_6string6StringE0E3newCskcxRuJ53GpR_9rustworkx"}
!126599 = distinct !{!126599, !126598, !"_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions12PyIndexErrorNtNtB4_6string6StringE0E3newCskcxRuJ53GpR_9rustworkx: argument 0"}
!126600 = distinct !{!126600, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions12PyIndexErrorNtNtCs87CvPiUlf0m_5alloc6string6StringE0ECskcxRuJ53GpR_9rustworkx"}
!126601 = distinct !{!126601, !126600, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions12PyIndexErrorNtNtCs87CvPiUlf0m_5alloc6string6StringE0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126602 = distinct !{!126602, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx"}
!126603 = distinct !{!126603, !126602, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx: argument 0"}
!126604 = distinct !{!126604, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx"}
!126605 = distinct !{!126605, !126604, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126606 = distinct !{!126606, i1 false, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford12bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_ENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2u_3err5PyErrINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEB3B_"}
!126607 = distinct !{!126607, !126606, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford12bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_ENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2u_3err5PyErrINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEB3B_: argument 2"}
!126608 = distinct !{!126608, !126606, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford12bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_ENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2u_3err5PyErrINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEB3B_: argument 1"}
!126609 = distinct !{!126609, !126606, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford12bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_ENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2u_3err5PyErrINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEB3B_: argument 0"}
!126610 = distinct !{!126610, i1 false, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford18inner_bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB1t_9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2A_3err5PyErrIB3C_INtNtCslwFuT2d6ECx_4core6option6OptiondEEEB4v_"}
!126611 = distinct !{!126611, !126610, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford18inner_bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB1t_9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2A_3err5PyErrIB3C_INtNtCslwFuT2d6ECx_4core6option6OptiondEEEB4v_: argument 2"}
!126612 = distinct !{!126612, !126610, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford18inner_bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB1t_9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2A_3err5PyErrIB3C_INtNtCslwFuT2d6ECx_4core6option6OptiondEEEB4v_: argument 1"}
!126613 = distinct !{!126613, !126610, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford18inner_bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB1t_9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2A_3err5PyErrIB3C_INtNtCslwFuT2d6ECx_4core6option6OptiondEEEB4v_: argument 0"}
!126614 = distinct !{!126614, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126615 = distinct !{!126615, !126614, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126616 = distinct !{!126616, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126617 = distinct !{!126617, !126616, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126618 = distinct !{!126618, i1 false, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEINtB2_11DistanceMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE5buildCskcxRuJ53GpR_9rustworkx"}
!126619 = distinct !{!126619, !126618, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEINtB2_11DistanceMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE5buildCskcxRuJ53GpR_9rustworkx: argument 0"}
!126620 = distinct !{!126620, i1 false, !"_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx"}
!126621 = distinct !{!126621, !126620, !"_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx: argument 0"}
!126622 = distinct !{!126622, i1 false, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126623 = distinct !{!126623, !126622, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126624 = distinct !{!126624, i1 false, !"_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE11extend_withCskcxRuJ53GpR_9rustworkx"}
!126625 = distinct !{!126625, !126624, !"_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE11extend_withCskcxRuJ53GpR_9rustworkx: argument 0"}
!126626 = distinct !{!126626, !119}
!126627 = distinct !{!126627, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126628 = distinct !{!126628, !126627, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126629 = distinct !{!126629, i1 false, !"_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx"}
!126630 = distinct !{!126630, !126629, !"_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx: argument 0"}
!126631 = distinct !{!126631, i1 false, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126632 = distinct !{!126632, !126631, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126633 = distinct !{!126633, i1 false, !"_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE11extend_withCskcxRuJ53GpR_9rustworkx"}
!126634 = distinct !{!126634, !126633, !"_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE11extend_withCskcxRuJ53GpR_9rustworkx: argument 0"}
!126635 = distinct !{!126635, !119}
!126636 = distinct !{!126636, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126637 = distinct !{!126637, !126636, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126638 = distinct !{!126638, i1 false, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx"}
!126639 = distinct !{!126639, !126638, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126640 = distinct !{!126640, i1 false, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126641 = distinct !{!126641, !126640, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126642 = distinct !{!126642, i1 false, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx"}
!126643 = distinct !{!126643, !126642, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx: argument 0"}
!126644 = distinct !{!126644, i1 false, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set"}
!126645 = distinct !{!126645, !126644, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set: argument 0"}
!126646 = distinct !{!126646, i1 false, !"_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx"}
!126647 = distinct !{!126647, !126646, !"_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx: argument 1"}
!126648 = distinct !{!126648, !126646, !"_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx: argument 0"}
!126649 = distinct !{!126649, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx"}
!126650 = distinct !{!126650, !126649, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126651 = distinct !{!126651, !126649, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126652 = distinct !{!126652, i1 false, !"_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126653 = distinct !{!126653, !126652, !"_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 1"}
!126654 = distinct !{!126654, !126652, !"_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126655 = distinct !{!126655, !126642, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx: argument 0:h.rot"}
!126656 = distinct !{!126656, i1 false, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0B5_"}
!126657 = distinct !{!126657, !126656, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0B5_: argument 0"}
!126658 = distinct !{!126658, i1 false, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss_0B5_"}
!126659 = distinct !{!126659, !126658, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss_0B5_: argument 0"}
!126660 = distinct !{!126660, i1 false, !"_RNvXsQ_NtNtCslwFuT2d6ECx_4core3cmp5implsdNtB7_10PartialOrd2lt"}
!126661 = distinct !{!126661, !126660, !"_RNvXsQ_NtNtCslwFuT2d6ECx_4core3cmp5implsdNtB7_10PartialOrd2lt: argument 1"}
!126662 = distinct !{!126662, !126660, !"_RNvXsQ_NtNtCslwFuT2d6ECx_4core3cmp5implsdNtB7_10PartialOrd2lt: argument 0"}
!126663 = distinct !{!126663, i1 false, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx"}
!126664 = distinct !{!126664, !126663, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126665 = distinct !{!126665, i1 false, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set"}
!126666 = distinct !{!126666, !126665, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set: argument 0"}
!126667 = distinct !{!126667, i1 false, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx"}
!126668 = distinct !{!126668, !126667, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126669 = distinct !{!126669, i1 false, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set"}
!126670 = distinct !{!126670, !126669, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set: argument 0"}
!126671 = distinct !{!126671, !126642, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx: argument 0:pre.rot"}
!126672 = distinct !{!126672, i1 false, !"_RNvXsr_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126673 = distinct !{!126673, !126672, !"_RNvXsr_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126674 = distinct !{!126674, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsr_NtB1w_12stable_graphINtB4w_11NodeIndicesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126675 = distinct !{!126675, !126674, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsr_NtB1w_12stable_graphINtB4w_11NodeIndicesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126676 = distinct !{!126676, i1 false, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx"}
!126677 = distinct !{!126677, !126676, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126678 = distinct !{!126678, i1 false, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx"}
!126679 = distinct !{!126679, !126678, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126680 = distinct !{!126680, i1 false, !"_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126681 = distinct !{!126681, !126680, !"_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126682 = distinct !{!126682, !126680, !"_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 1"}
!126683 = distinct !{!126683, !74, !75}
!126684 = distinct !{!126684, !75, !74}
!126685 = distinct !{!126685, i1 false, !"_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4n_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5q_"}
!126686 = distinct !{!126686, !126685, !"_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4n_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5q_: argument 1"}
!126687 = distinct !{!126687, !126685, !"_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4n_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5q_: argument 0"}
!126688 = distinct !{!126688, i1 false, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx"}
!126689 = distinct !{!126689, !126688, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx: argument 0"}
!126690 = distinct !{!126690, i1 false, !"_RINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendTjBP_EE6extendINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4d_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5g_"}
!126691 = distinct !{!126691, !126690, !"_RINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendTjBP_EE6extendINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4d_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5g_: argument 1"}
!126692 = distinct !{!126692, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1N_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsb_B1a_INtB1a_8IndexMapjIB2B_jENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4G_7collect6ExtendTjB5N_EE6extendB3_E0EB3j_"}
!126693 = distinct !{!126693, !126692, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1N_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsb_B1a_INtB1a_8IndexMapjIB2B_jENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4G_7collect6ExtendTjB5N_EE6extendB3_E0EB3j_: argument 0"}
!126694 = distinct !{!126694, i1 false, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1T_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callTjIB2H_jEENCINvXsb_B1g_INtB1g_8IndexMapjB5N_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4M_7collect6ExtendB5L_E6extendBV_E0E0EB3p_"}
!126695 = distinct !{!126695, !126694, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1T_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callTjIB2H_jEENCINvXsb_B1g_INtB1g_8IndexMapjB5N_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4M_7collect6ExtendB5L_E6extendBV_E0E0EB3p_: argument 0"}
!126696 = distinct !{!126696, i1 false, !"_RINvYINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBL_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2g_8adapters10filter_map15filter_map_foldTRBL_RB1y_ETjIB1z_jEEuNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0NCINvNvB2a_8for_each4callB4b_NCINvXsb_B8_INtB8_8IndexMapjB4d_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB2e_7collect6ExtendB4b_E6extendINtB3g_9FilterMapB3_B4m_EE0E0E0EB4s_"}
!126697 = distinct !{!126697, !126696, !"_RINvYINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBL_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2g_8adapters10filter_map15filter_map_foldTRBL_RB1y_ETjIB1z_jEEuNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0NCINvNvB2a_8for_each4callB4b_NCINvXsb_B8_INtB8_8IndexMapjB4d_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB2e_7collect6ExtendB4b_E6extendINtB3g_9FilterMapB3_B4m_EE0E0E0EB4s_: argument 0"}
!126698 = distinct !{!126698, i1 false, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_EETjIB21_jEEuNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2D_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5i_8IndexMapjB2F_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4n_7collect6ExtendB2D_E6extendINtB4_9FilterMapINtNtB5i_4iter4IterB1c_B20_EB2O_EE0E0E0B2U_"}
!126699 = distinct !{!126699, !126698, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_EETjIB21_jEEuNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2D_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5i_8IndexMapjB2F_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4n_7collect6ExtendB2D_E6extendINtB4_9FilterMapINtNtB5i_4iter4IterB1c_B20_EB2O_EE0E0E0B2U_: argument 0"}
!126700 = distinct !{!126700, i1 false, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0B5_"}
!126701 = distinct !{!126701, !126700, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0B5_: argument 0"}
!126702 = distinct !{!126702, i1 false, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE9from_iterB3H_"}
end_hunk_2
begin_hunk_3_@llvm.fabs.v2f64
!126915 = distinct !{!126915, !126914, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_EEs4_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 1"}
!126916 = distinct !{!126916, !126914, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_EEs4_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 0"}
!126917 = distinct !{!126917, i1 false, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs4_0EECskcxRuJ53GpR_9rustworkx"}
!126918 = distinct !{!126918, !126917, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs4_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126919 = distinct !{!126919, !126917, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs4_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126920 = distinct !{!126920, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs4_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx"}
!126921 = distinct !{!126921, !126920, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs4_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126922 = distinct !{!126922, !126920, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs4_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126923 = distinct !{!126923, i1 false, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx"}
!126924 = distinct !{!126924, !126923, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126925 = distinct !{!126925, !126923, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126926 = distinct !{!126926, i1 false, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_EEs4_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB76_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126927 = distinct !{!126927, !126926, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_EEs4_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB76_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126928 = distinct !{!126928, i1 false, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx"}
!126929 = distinct !{!126929, !126928, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126930 = distinct !{!126930, i1 false, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs4_0CskcxRuJ53GpR_9rustworkx"}
!126931 = distinct !{!126931, !126930, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs4_0CskcxRuJ53GpR_9rustworkx: argument 1"}
!126932 = distinct !{!126932, !126930, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs4_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126933 = distinct !{null}
!126934 = distinct !{!126934, i1 false, !"_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx"}
!126935 = distinct !{!126935, !126934, !"_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx: argument 1"}
!126936 = distinct !{!126936, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126937 = distinct !{!126937, !126936, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126938 = distinct !{!126938, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!126939 = distinct !{!126939, !126938, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126940 = distinct !{!126940, !126934, !"_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx: argument 0"}
!126941 = distinct !{!126941, !126936, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126942 = distinct !{!126942, !126938, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126943 = distinct !{!126943, i1 false, !"_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2x_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx"}
!126944 = distinct !{!126944, !126943, !"_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2x_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126945 = distinct !{!126945, !126943, !"_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2x_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126946 = distinct !{!126946, i1 false, !"_RINvXsx_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendjE6extendINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2n_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx"}
!126947 = distinct !{!126947, !126946, !"_RINvXsx_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendjE6extendINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2n_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126948 = distinct !{!126948, !126946, !"_RINvXsx_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendjE6extendINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2n_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126949 = distinct !{!126949, i1 false, !"_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBb_3ops8function5FnMutTNtB11_9NodeIndexEEp6OutputjEL_EENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126950 = distinct !{!126950, !126949, !"_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBb_3ops8function5FnMutTNtB11_9NodeIndexEEp6OutputjEL_EENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126951 = distinct !{!126951, i1 false, !"_RNvXso_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1h_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126952 = distinct !{!126952, !126951, !"_RNvXso_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1h_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126953 = distinct !{null}
!126954 = distinct !{!126954, i1 false, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put"}
!126955 = distinct !{!126955, !126954, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put: argument 0:thread"}
!126956 = distinct !{!126956, !126954, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put: argument 0"}
!126957 = distinct !{!126957, i1 false, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_EEs4_0EE0E0CskcxRuJ53GpR_9rustworkx"}
!126958 = distinct !{!126958, !126957, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_EEs4_0EE0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126959 = distinct !{!126959, i1 false, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_EEs4_0EE0CskcxRuJ53GpR_9rustworkx"}
!126960 = distinct !{!126960, !126959, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_EEs4_0EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126961 = distinct !{!126961, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx"}
!126962 = distinct !{!126962, !126961, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126963 = distinct !{!126963, i1 false, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx"}
!126964 = distinct !{!126964, !126963, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!126965 = distinct !{!126965, !126963, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!126966 = distinct !{!126966, i1 false, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx"}
!126967 = distinct !{!126967, !126966, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!126968 = distinct !{!126968, !126966, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!126969 = distinct !{!126969, i1 false, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126970 = distinct !{!126970, !126969, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126971 = distinct !{!126971, i1 false, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_EEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx"}
!126972 = distinct !{!126972, !126971, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_EEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 0"}
!126973 = distinct !{!126973, i1 false, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs3_0EECskcxRuJ53GpR_9rustworkx"}
!126974 = distinct !{!126974, !126973, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs3_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126975 = distinct !{!126975, !126971, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_EEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 1"}
!126976 = distinct !{!126976, !126973, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs3_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126977 = distinct !{!126977, i1 false, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx"}
!126978 = distinct !{!126978, !126977, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126979 = distinct !{!126979, !126977, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126980 = distinct !{!126980, i1 false, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx"}
!126981 = distinct !{!126981, !126980, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126982 = distinct !{!126982, !126980, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126983 = distinct !{!126983, i1 false, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_EEs3_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB76_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126984 = distinct !{!126984, !126983, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_EEs3_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB76_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126985 = distinct !{!126985, i1 false, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx"}
!126986 = distinct !{!126986, !126985, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126987 = distinct !{!126987, i1 false, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx"}
!126988 = distinct !{!126988, !126987, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx: argument 1"}
!126989 = distinct !{!126989, !126987, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126990 = distinct !{null}
!126991 = distinct !{!126991, i1 false, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126992 = distinct !{!126992, !126991, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126993 = distinct !{!126993, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126994 = distinct !{!126994, !126993, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126995 = distinct !{!126995, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!126996 = distinct !{!126996, !126995, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126997 = distinct !{!126997, !126991, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126998 = distinct !{!126998, !126993, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126999 = distinct !{!126999, !126995, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127000 = distinct !{!127000, i1 false, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!127001 = distinct !{!127001, !127000, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127002 = distinct !{!127002, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!127003 = distinct !{!127003, !127002, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127004 = distinct !{!127004, i1 false, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!127005 = distinct !{!127005, !127004, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127006 = distinct !{!127006, !127000, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127007 = distinct !{!127007, !127002, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127008 = distinct !{!127008, !127004, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127009 = distinct !{!127009, i1 false, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_EEs3_0EE0E0CskcxRuJ53GpR_9rustworkx"}
!127010 = distinct !{!127010, !127009, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_EEs3_0EE0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127011 = distinct !{!127011, i1 false, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_EEs3_0EE0CskcxRuJ53GpR_9rustworkx"}
!127012 = distinct !{!127012, !127011, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_EEs3_0EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127013 = distinct !{!127013, i1 false, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx"}
!127014 = distinct !{!127014, !127013, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!127015 = distinct !{!127015, !127013, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 1"}
!127016 = distinct !{!127016, i1 false, !"_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB10_9iterators11AxisIterMutdINtNtNtB10_9dimension3dim3DimAjj1_EEEENtB8_16ParallelIterator8for_eachNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB60_5types3any5PyAnyEB5V_EEs7_0ECskcxRuJ53GpR_9rustworkx"}
!127017 = distinct !{!127017, !127016, !"_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB10_9iterators11AxisIterMutdINtNtNtB10_9dimension3dim3DimAjj1_EEEENtB8_16ParallelIterator8for_eachNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB60_5types3any5PyAnyEB5V_EEs7_0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127018 = distinct !{!127018, i1 false, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_EEs7_0EECskcxRuJ53GpR_9rustworkx"}
!127019 = distinct !{!127019, !127018, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_EEs7_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!127020 = distinct !{!127020, !127018, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_EEs7_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!127021 = distinct !{!127021, i1 false, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_EEs7_0EECskcxRuJ53GpR_9rustworkx"}
!127022 = distinct !{!127022, !127021, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_EEs7_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!127023 = distinct !{!127023, !127021, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_EEs7_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!127024 = distinct !{!127024, i1 false, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_EEs7_0EEECskcxRuJ53GpR_9rustworkx"}
!127025 = distinct !{!127025, !127024, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_EEs7_0EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!127026 = distinct !{!127026, !127024, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_EEs7_0EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127027 = distinct !{!127027, i1 false, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_EEs7_0EEEECskcxRuJ53GpR_9rustworkx"}
!127028 = distinct !{!127028, !127027, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_EEs7_0EEEECskcxRuJ53GpR_9rustworkx: argument 1"}
!127029 = distinct !{!127029, !127027, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_EEs7_0EEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127030 = distinct !{!127030, i1 false, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_EEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7n_8ViewReprQdEINtNtNtB7n_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7n_8parallel3par16ParallelProducerINtNtB7n_9iterators11AxisIterMutdB8c_EEECskcxRuJ53GpR_9rustworkx"}
!127031 = distinct !{!127031, !127030, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_EEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7n_8ViewReprQdEINtNtNtB7n_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7n_8parallel3par16ParallelProducerINtNtB7n_9iterators11AxisIterMutdB8c_EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!127032 = distinct !{!127032, !127030, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_EEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7n_8ViewReprQdEINtNtNtB7n_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7n_8parallel3par16ParallelProducerINtNtB7n_9iterators11AxisIterMutdB8c_EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127033 = distinct !{!127033, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx"}
!127034 = distinct !{!127034, !127033, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127035 = distinct !{!127035, i1 false, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx"}
!127036 = distinct !{!127036, !127035, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!127037 = distinct !{!127037, !127035, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 1"}
!127038 = distinct !{!127038, i1 false, !"_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx"}
!127039 = distinct !{!127039, !127038, !"_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127040 = distinct !{!127040, i1 false, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_EEs6_0E0E0CskcxRuJ53GpR_9rustworkx"}
!127041 = distinct !{!127041, !127040, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_EEs6_0E0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!127042 = distinct !{!127042, !127040, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_EEs6_0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127043 = distinct !{!127043, i1 false, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTjINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1k_8ViewReprQdEINtNtNtB1k_9dimension3dim3DimAjj1_EdEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5o_5types3any5PyAnyEB5j_EEs6_0E0CskcxRuJ53GpR_9rustworkx"}
!127044 = distinct !{!127044, !127043, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTjINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1k_8ViewReprQdEINtNtNtB1k_9dimension3dim3DimAjj1_EdEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5o_5types3any5PyAnyEB5j_EEs6_0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127045 = distinct !{!127045, i1 false, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs6_0CskcxRuJ53GpR_9rustworkx"}
!127046 = distinct !{!127046, !127045, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs6_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127047 = distinct !{!127047, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx"}
!127048 = distinct !{!127048, !127047, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127049 = distinct !{!127049, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCshByAT0BfsDP_7ndarray9data_repr9OwnedReprdEECskcxRuJ53GpR_9rustworkx"}
!127050 = distinct !{!127050, !127049, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCshByAT0BfsDP_7ndarray9data_repr9OwnedReprdEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127051 = distinct !{!127051, i1 false, !"_RNvXs0_NtCshByAT0BfsDP_7ndarray9data_reprINtB5_9OwnedReprdENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!127052 = distinct !{!127052, !127051, !"_RNvXs0_NtCshByAT0BfsDP_7ndarray9data_reprINtB5_9OwnedReprdENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!127053 = !{!126853, !126852, !126850, !126849, !126847, !126846, !126845}
!127054 = !{!126855}
!127055 = !{!126857}
!127056 = !{!126857, !126859, !126855, !126858}
!127057 = !{!126858}
!127058 = !{!126857, !126855}
!127059 = !{!126859, !126858}
!127060 = !{!126865, !126864, !126862, !126861}
!127061 = !{!126867}
!127062 = !{!126869}
!127063 = !{!126869, !126871, !126867, !126870}
!127064 = !{!126869, !126867}
!127065 = !{!126871, !126870}
!127066 = !{!126873}
!127067 = !{!126875}
!127068 = !{!126876, !126875, !126873}
!127069 = !{!126875, !126873}
!127070 = !{!126876}
!127071 = !{!126878, !126876}
!127072 = !{!126880}
!127073 = !{!126880, !126876, !126875, !126873}
!127074 = !{!126883, !126882, !126876, !126875, !126873}
!127075 = !{!126885}
!127076 = !{!126897, !126895, !126893, !126891, !126889, !126887, !126883, !126882, !126876}
!127077 = !{!126883, !126882, !126876}
!127078 = !{!126882, !126876, !126875, !126873}
!127079 = !{!126899, !126876}
!127080 = !{!126901, !126876}
!127081 = !{!126903}
!127082 = !{!126905, !126876}
!127083 = !{!126876, !126873}
!127084 = !{!126907}
!127085 = !{!126913, !126911, !126910, !126907, !126908, !126876}
!127086 = !{!126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876, !126875, !126873}
!127087 = !{!126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876}
!127088 = !{!126935}
!127089 = !{!126937}
!127090 = !{!126939}
!127091 = !{!126939, !126937, !126935}
!127092 = !{!126942, !126941, !126940, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876}
!127093 = !{!126942, !126939, !126941, !126937, !126940, !126935, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876}
!127094 = !{!126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876, !126875, !126873}
!127095 = !{!126947}
!127096 = !{!126952, !126950, !126948, !126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876}
!127097 = !{!126950, !126948, !126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876, !126875, !126873}
!127098 = !{!126950, !126948, !126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876}
!127099 = !{!126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876}
!127100 = !{!126948, !126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876, !126875, !126873}
!127101 = !{!126947, !126948, !126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876, !126875, !126873}
!127102 = !{!126955, !126947, !126948, !126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876, !126875, !126873}
!127103 = !{!126956, !126947}
!127104 = !{!126956}
!127105 = !{!126956, !126947, !126948, !126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876, !126875, !126873}
!127106 = !{!126956, !126948, !126945, !126944, !126932, !126931, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876}
!127107 = !{!126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876, !126875, !126873}
!127108 = !{!126960, !126958, !126929, !126927, !126925, !126924, !126922, !126921, !126919, !126918, !126916, !126915, !126911, !126910, !126907, !126908, !126876}
!127109 = !{!126962, !126911, !126910, !126907, !126908, !126876}
!127110 = !{!126911, !126910, !126907, !126908, !126876}
!127111 = !{!126968, !126967, !126965, !126964, !126876, !126875, !126873}
!127112 = !{!126970, !126968, !126967, !126965, !126964, !126876}
!127113 = !{!126972}
!127114 = !{!126974}
!127115 = !{!126986, !126984, !126982, !126981, !126979, !126978, !126974, !126976, !126972, !126975, !126968, !126967, !126965, !126964, !126876, !126875, !126873}
!127116 = !{!126989, !126988, !126986, !126984, !126982, !126981, !126979, !126978, !126974, !126976, !126972, !126975, !126968, !126967, !126965, !126964, !126876, !126875, !126873}
!127117 = !{!126984, !126982, !126981, !126979, !126978, !126974, !126976, !126972, !126975, !126968, !126967, !126965, !126964, !126876}
!127118 = !{!126992}
!127119 = !{!126994}
!127120 = !{!126996}
!127121 = !{!126996, !126994, !126992}
!127122 = !{!126999, !126998, !126997, !126989, !126988, !126986, !126984, !126982, !126981, !126979, !126978, !126974, !126976, !126972, !126975, !126968, !126967, !126965, !126964, !126876}
!127123 = !{!126999, !126996, !126998, !126994, !126997, !126992, !126989, !126988, !126986, !126984, !126982, !126981, !126979, !126978, !126974, !126976, !126972, !126975, !126968, !126967, !126965, !126964, !126876}
!127124 = !{!127001}
!127125 = !{!127003}
!127126 = !{!127005}
!127127 = !{!127005, !127003, !127001}
!127128 = !{!127008, !127007, !127006, !126989, !126988, !126986, !126984, !126982, !126981, !126979, !126978, !126974, !126976, !126972, !126975, !126968, !126967, !126965, !126964, !126876}
!127129 = !{!127008, !127005, !127007, !127003, !127006, !127001, !126989, !126988, !126986, !126984, !126982, !126981, !126979, !126978, !126974, !126976, !126972, !126975, !126968, !126967, !126965, !126964, !126876}
!127130 = !{!127012, !127010, !126986, !126984, !126982, !126981, !126979, !126978, !126974, !126976, !126972, !126975, !126968, !126967, !126965, !126964, !126876}
!127131 = !{!126974, !126972}
!127132 = !{!126984, !126982, !126981, !126979, !126978, !126976, !126975, !126968, !126967, !126965, !126964, !126876, !126875, !126873}
!127133 = !{!126968, !126967, !126965, !126964, !126876}
!127134 = !{!126910, !126908, !126876, !126875, !126873}
!127135 = !{!126967, !126964, !126876, !126875, !126873}
!127136 = !{!127014}
!127137 = !{!127015}
!127138 = !{!127014, !126876, !126875, !126873}
!127139 = !{!127017, !126876, !126875, !126873}
!127140 = !{!127032, !127031, !127029, !127028, !127026, !127025, !127023, !127022, !127020, !127019, !127017, !126876, !126875, !126873}
!127141 = !{!127032, !127028, !127025, !127022, !127019, !126876, !126875, !126873}
!127142 = !{!127014, !127015}
!127143 = !{!127032, !127029, !127028, !127026, !127025, !127023, !127022, !127020, !127019, !127017, !126876, !126875, !126873}
!127144 = !{!127034}
!127145 = !{!127034, !126876}
!127146 = !{!127036}
!127147 = !{!127037}
!127148 = !{!127036, !126876, !126875, !126873}
!127149 = !{!127036, !127037}
!127150 = !{!127042, !127041, !127039, !126876, !126875, !126873}
!127151 = !{!127042, !127039, !126876, !126875, !126873}
!127152 = !{!127046, !127044, !127042, !127041, !127039, !126876, !126875, !126873}
!127153 = !{!127048}
!127154 = !{!127050}
!127155 = !{!127052}
!127156 = !{!127052, !127050, !127048}
!127157 = !{!127052, !127050, !127048, !126876}
!127158 = distinct !{!127158, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_"}
!127159 = distinct !{!127159, !127158, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 2"}
!127160 = distinct !{!127160, !127158, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 1"}
!127161 = distinct !{!127161, !127158, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 0"}
!127162 = distinct !{!127162, i1 false, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!127163 = distinct !{!127163, !127162, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!127164 = distinct !{!127164, !127162, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!127165 = distinct !{!127165, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_"}
!127166 = distinct !{!127166, !127165, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 1"}
!127167 = distinct !{!127167, !127165, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 0"}
!127168 = distinct !{!127168, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127169 = distinct !{!127169, !127168, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127170 = distinct !{!127170, !127168, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127171 = distinct !{!127171, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127172 = distinct !{!127172, !127171, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127173 = distinct !{!127173, !127171, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127174 = distinct !{!127174, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127175 = distinct !{!127175, !127174, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127176 = distinct !{!127176, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127177 = distinct !{!127177, !127176, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127178 = distinct !{!127178, i1 false, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127179 = distinct !{!127179, !127178, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127180 = distinct !{!127180, i1 false, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127181 = distinct !{!127181, !127180, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127182 = distinct !{!127182, i1 false, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127183 = distinct !{!127183, !127182, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127184 = distinct !{!127184, i1 false, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127185 = distinct !{!127185, !127184, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127186 = distinct !{!127186, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127187 = distinct !{!127187, !127186, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127188 = distinct !{!127188, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127189 = distinct !{!127189, !127188, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127190 = distinct !{!127190, !127186, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127191 = distinct !{!127191, !127188, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127192 = distinct !{!127192, i1 false, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!127193 = distinct !{!127193, !127192, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 1"}
!127194 = distinct !{!127194, !127192, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!127195 = !{!127167, !127166, !127164, !127163, !127161, !127160, !127159}
!127196 = !{!127170, !127169}
!127197 = !{!127173, !127172}
!127198 = !{!127185, !127183, !127181, !127179, !127177, !127175}
!127199 = !{!127187}
!127200 = !{!127189}
!127201 = !{!127189, !127191, !127187, !127190}
!127202 = !{!127190}
!127203 = !{!127189, !127187}
!127204 = !{!127191, !127190}
!127205 = !{!127194, !127193}
!127206 = !{!127193}
!127207 = distinct !{!127207, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_"}
!127208 = distinct !{!127208, !127207, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 2"}
!127209 = distinct !{!127209, !127207, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 1"}
!127210 = distinct !{!127210, !127207, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 0"}
!127211 = distinct !{!127211, i1 false, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!127212 = distinct !{!127212, !127211, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!127213 = distinct !{!127213, !127211, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!127214 = distinct !{!127214, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_"}
!127215 = distinct !{!127215, !127214, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 1"}
!127216 = distinct !{!127216, !127214, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 0"}
!127217 = distinct !{!127217, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127218 = distinct !{!127218, !127217, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127219 = distinct !{!127219, !127217, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127220 = distinct !{!127220, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127221 = distinct !{!127221, !127220, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127222 = distinct !{!127222, i1 false, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127223 = distinct !{!127223, !127222, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127224 = distinct !{!127224, i1 false, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127225 = distinct !{!127225, !127224, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127226 = distinct !{!127226, i1 false, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127227 = distinct !{!127227, !127226, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127228 = distinct !{!127228, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127229 = distinct !{!127229, !127228, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127230 = distinct !{!127230, i1 false, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127231 = distinct !{!127231, !127230, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127232 = distinct !{!127232, i1 false, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127233 = distinct !{!127233, !127232, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127234 = distinct !{!127234, i1 false, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127235 = distinct !{!127235, !127234, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127236 = distinct !{!127236, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127237 = distinct !{!127237, !127236, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127238 = distinct !{!127238, i1 false, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127239 = distinct !{!127239, !127238, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127240 = distinct !{!127240, i1 false, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127241 = distinct !{!127241, !127240, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127242 = distinct !{!127242, i1 false, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127243 = distinct !{!127243, !127242, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127244 = distinct !{!127244, i1 false, !"_RNvYNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_"}
!127245 = distinct !{!127245, !127244, !"_RNvYNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_: argument 1"}
!127246 = distinct !{!127246, !127244, !"_RNvYNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_: argument 0"}
!127247 = !{!127216, !127215, !127213, !127212, !127210, !127209, !127208}
!127248 = !{!127219, !127218}
!127249 = !{!127227, !127225, !127223, !127221}
!127250 = !{!127235, !127233, !127231, !127229}
!127251 = !{!127243, !127241, !127239, !127237}
!127252 = !{!127246, !127245}
!127253 = !{!127245}
!127254 = distinct !{!127254, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_"}
!127255 = distinct !{!127255, !127254, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 2"}
!127256 = distinct !{!127256, !127254, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 1"}
!127257 = distinct !{!127257, !127254, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 0"}
!127258 = distinct !{!127258, i1 false, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!127259 = distinct !{!127259, !127258, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!127260 = distinct !{!127260, !127258, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!127261 = distinct !{!127261, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_"}
!127262 = distinct !{!127262, !127261, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_: argument 1"}
!127263 = distinct !{!127263, !127261, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_: argument 0"}
!127264 = distinct !{!127264, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127265 = distinct !{!127265, !127264, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127266 = distinct !{!127266, !127264, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127267 = distinct !{!127267, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127268 = distinct !{!127268, !127267, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127269 = distinct !{!127269, !127267, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127270 = distinct !{!127270, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127271 = distinct !{!127271, !127270, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127272 = distinct !{!127272, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127273 = distinct !{!127273, !127272, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127274 = distinct !{!127274, i1 false, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127275 = distinct !{!127275, !127274, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127276 = distinct !{!127276, i1 false, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127277 = distinct !{!127277, !127276, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127278 = distinct !{!127278, i1 false, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127279 = distinct !{!127279, !127278, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127280 = distinct !{!127280, i1 false, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127281 = distinct !{!127281, !127280, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127282 = distinct !{!127282, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127283 = distinct !{!127283, !127282, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127284 = distinct !{!127284, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127285 = distinct !{!127285, !127284, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127286 = distinct !{!127286, !127282, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127287 = distinct !{!127287, !127284, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127288 = distinct !{!127288, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx"}
!127289 = distinct !{!127289, !127288, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127290 = distinct !{!127290, !127288, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127291 = distinct !{!127291, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx"}
!127292 = distinct !{!127292, !127291, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127293 = distinct !{!127293, !127291, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127294 = distinct !{!127294, i1 false, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!127295 = distinct !{!127295, !127294, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 1"}
!127296 = distinct !{!127296, !127294, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!127297 = !{!127263, !127262, !127260, !127259, !127257, !127256, !127255}
!127298 = !{!127266, !127265}
!127299 = !{!127269, !127268}
!127300 = !{!127281, !127279, !127277, !127275, !127273, !127271}
!127301 = !{!127283}
!127302 = !{!127285}
!127303 = !{!127285, !127287, !127283, !127286}
!127304 = !{!127286}
!127305 = !{!127285, !127283}
!127306 = !{!127287, !127286}
!127307 = !{!127293, !127292, !127290, !127289}
!127308 = !{!127296, !127295}
!127309 = !{!127295}
!127310 = distinct !{!127310, i1 false, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_"}
!127311 = distinct !{!127311, !127310, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 2"}
!127312 = distinct !{!127312, !127310, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 1"}
!127313 = distinct !{!127313, !127310, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 0"}
!127314 = distinct !{!127314, i1 false, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!127315 = distinct !{!127315, !127314, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!127316 = distinct !{!127316, !127314, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
end_hunk_3
