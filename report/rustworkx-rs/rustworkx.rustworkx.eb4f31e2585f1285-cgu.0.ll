Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity32___pyfunction_chain_decomposition:bb.a
  %i.lu = icmp eq i64 %i.lt, 0
  br i1 %i.lu, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !113589
  %i.lv = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.lt, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113589 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lx = ptrtoint ptr %i.lv to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cf, %bb.cd
  %.sroa.420.0.ph.i.i.i.i = phi i64 [ 8, %bb.cf ], [ 0, %bb.cd ]
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.lt, %bb.cf ], [ undef, %bb.cd ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.420.0.ph.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i) #61
          to label %bb.cu unwind label %bb.cc, !noalias !113587

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.cg, %bb.ce
  %.sroa.420.0.i.i.i.i = phi i64 [ %i.ls, %bb.cg ], [ 0, %bb.ce ] ; 2 uses
  %.sroa.10.0.i.i.i.i = phi i64 [ %i.lx, %bb.cg ], [ 8, %bb.ce ]
  %i.ly = inttoptr i64 %.sroa.10.0.i.i.i.i to ptr ; 5 uses
  %i.lz = icmp samesign ult i64 %i.lr, %.sroa.420.0.i.i.i.i
  call void @llvm.assume(i1 %i.lz)
  store i64 %i.kw, ptr %i.ly, align 8, !noalias !113587
  %.sroa.4.0..sroa_idx17.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx17.i.i.i.i, align 8, !noalias !113587
  %.sroa.518.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i.i.i, align 8, !noalias !113587
  store i64 %.sroa.420.0.i.i.i.i, ptr %i.f, align 8, !noalias !113578
  %.sroa.4.0..sroa_idx.i.i72.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.ly, ptr %.sroa.4.0..sroa_idx.i.i72.i.i, align 8, !noalias !113578
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !113578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !113578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 128, i1 false), !noalias !113590
  call void @llvm.experimental.noalias.scope.decl(metadata !113591)
  call void @llvm.experimental.noalias.scope.decl(metadata !113592)
  call void @llvm.experimental.noalias.scope.decl(metadata !113593)
  call void @llvm.experimental.noalias.scope.decl(metadata !113594)
  %.sroa.5.0..sroa_idx.i.i.i.i73.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.md = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.mf = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.ci

bb.ci:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.mi = phi ptr [ %i.nb, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.ly, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %.sroa.7.0.copyload.i = phi i64 [ %i.nd, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113595
  invoke fastcc void @_RNvXs9_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity5chain19chain_decompositionRINtNtB2o_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB2q_10UndirectedEEs_0EENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.ck unwind label %bb.cj, !noalias !113596

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %bb.cr, %bb.cj
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mj, %bb.cj ], [ %i.ne, %bb.cr ], [ %i.ne, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_10filter_map9FilterMapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity5chain19chain_decompositionRINtNtB2B_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5l_5types3any5PyAnyEB5g_NtB2D_10UndirectedEEs_0EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d) #63, !noalias !113596
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #63, !noalias !113587
  br label %.body77.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.mk = load i64, ptr %i.c, align 8, !range !57, !noalias !113595, !noundef !58 ; 4 uses
  %.not.i.i6.i.i.i.i = icmp eq i64 %i.mk, -1
  br i1 %.not.i.i6.i.i.i.i, label %bb.ct, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.5.0.copyload.i.i.i.i74.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i73.i.i, align 8, !noalias !113595 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !113595
  %i.ml = icmp samesign ult i64 %.sroa.7.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ml)
  %i.mm = load i64, ptr %i.f, align 8, !range !61, !alias.scope !113597, !noalias !113578, !noundef !58
  %i.mn = icmp eq i64 %.sroa.7.0.copyload.i, %i.mm
  br i1 %i.mn, label %bb.cm, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.511.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !113598)
  call void @llvm.experimental.noalias.scope.decl(metadata !113599)
  call void @llvm.experimental.noalias.scope.decl(metadata !113600)
  call void @llvm.experimental.noalias.scope.decl(metadata !113601)
  %i.mo = load ptr, ptr %i.ma, align 8, !alias.scope !113602, !noalias !113578, !noundef !58
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mb, align 8, !alias.scope !113603, !noalias !113578, !nonnull !58, !noundef !58
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mc, align 8, !alias.scope !113603, !noalias !113578, !nonnull !58, !noundef !58
  %i.mp = ptrtoint ptr %.val3.i.i.i.i.i.i.i.i.i to i64
  %i.mq = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.mr = sub nuw i64 %i.mp, %i.mq
  %i.ms = udiv exact i64 %i.mr, 24
  br label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cn, %bb.cm
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ms, %bb.cn ], [ 0, %bb.cm ]
  %i.mt = load ptr, ptr %i.md, align 8, !alias.scope !113602, !noalias !113578, !noundef !58
  %.not53.i.i.i.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not53.i.i.i.i.i.i.i.i, label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit64.i.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.val.i62.i.i.i.i.i.i.i.i = load ptr, ptr %i.me, align 8, !alias.scope !113604, !noalias !113578, !nonnull !58, !noundef !58
  %.val3.i63.i.i.i.i.i.i.i.i = load ptr, ptr %i.mf, align 8, !alias.scope !113604, !noalias !113578, !nonnull !58, !noundef !58
  %i.mu = ptrtoint ptr %.val3.i63.i.i.i.i.i.i.i.i to i64
  %i.mv = ptrtoint ptr %.val.i62.i.i.i.i.i.i.i.i to i64
  %i.mw = sub nuw i64 %i.mu, %i.mv
  %i.mx = udiv exact i64 %i.mw, 24
  br label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit64.i.i.i.i.i.i.i.i

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit64.i.i.i.i.i.i.i.i: ; preds = %bb.co, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.mx, %bb.co ], [ 0, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ]
  %i.my = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.mz = load ptr, ptr %i.d, align 8, !alias.scope !113602, !noalias !113578, !noundef !58
  %.not54.i.i.i.i.i.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not54.i.i.i.i.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit64.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.mg, align 8, !alias.scope !113602, !noalias !113578, !nonnull !58, !noundef !58
  %.val61.i.i.i.i.i.i.i.i = load ptr, ptr %i.mh, align 8, !alias.scope !113602, !noalias !113578, !nonnull !58, !noundef !58
  %i.na = icmp eq ptr %.val61.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.na, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionRINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBO_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1I_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskcxRuJ53GpR_9rustworkx.exit64.i.i.i.i.i.i.i.i
  br label %bb.cs

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i, %bb.cl
  %i.nb = phi ptr [ %.pre.i.i75.i.i, %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i ], [ %i.mi, %bb.cl ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %i.nb, i64 %.sroa.7.0.copyload.i ; 3 uses
  store i64 %i.mk, ptr %i.nc, align 8, !noalias !113605
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i74.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !113605
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !113605
  %i.nd = add nuw nsw i64 %.sroa.7.0.copyload.i, 1 ; 2 uses
  store i64 %i.nd, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !113597, !noalias !113578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113595
  br label %bb.ci

bb.cr:                                            ; preds = %bb.cs
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = icmp eq i64 %i.mk, 0
  br i1 %i.nf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %bb.cr
  %i.ng = shl nuw i64 %i.mk, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i74.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i74.i.i, i64 noundef %i.ng, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113605
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %.sink79.i.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.7.i.i.i.i.i.i, %bb.cq ], [ %.sroa.511.i.i.i.i.i.i, %bb.cp ]
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.my, %bb.cq ], [ 0, %bb.cp ]
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %.sink79.i.i.sroa.phi.i.i.i.i.i.i, align 8, !alias.scope !113606, !noalias !113595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  %i.nh = add nuw nsw i64 %i.my, 1
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.sroa.7.0.copyload.i, i64 noundef %i.nh, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i unwind label %bb.cr, !noalias !113607

._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.cs
  %.pre.i.i75.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i72.i.i, align 8, !alias.scope !113597, !noalias !113578
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBJ_EEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113595
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_10filter_map9FilterMapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity5chain19chain_decompositionRINtNtB2B_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5l_5types3any5PyAnyEB5g_NtB2D_10UndirectedEEs_0EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d), !noalias !113596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113578
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !113608
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i72.i.i, align 8, !noalias !113608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !113578
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecIBL_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBZ_EEEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlattenINtNtB2k_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterBZ_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity5chain19chain_decompositionRINtNtB11_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB69_5types3any5PyAnyEB64_NtB13_10UndirectedEEs_0EEE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.cu:                                            ; preds = %bb.ch
  unreachable

bb.cv:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i76.i.i, %bb.cc, %bb.bu
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.kv, %bb.bu ], [ %i.lo, %bb.cc ], [ %i.lo, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i76.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_10filter_map9FilterMapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity5chain19chain_decompositionRINtNtB2B_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5l_5types3any5PyAnyEB5g_NtB2D_10UndirectedEEs_0EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.v) #63, !noalias !113579
  br label %.body77.i.i

.body77.i.i:                                      ; preds = %bb.cv, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %eh.lpad-body78.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.pn.ph.i.i.i.i, %bb.cv ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.thread103.i.i unwind label %bb.da, !noalias !113506

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecIBL_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBZ_EEEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlattenINtNtB2k_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterBZ_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity5chain19chain_decompositionRINtNtB11_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB69_5types3any5PyAnyEB64_NtB13_10UndirectedEEs_0EEE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ct, %bb.cb
  %.sroa.7.0.i = phi i64 [ 0, %bb.cb ], [ %.sroa.7.0.copyload.i, %bb.ct ] ; 3 uses
  %.sroa.5.027.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cb ], [ %.sroa.5.0.copyload.i, %bb.ct ] ; 9 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.cb ], [ %.sroa.0.0.copyload.i, %bb.ct ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !113507
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit81.i.i unwind label %bb.bq, !noalias !113506

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit81.i.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecIBL_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBZ_EEEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlattenINtNtB2k_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterBZ_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity5chain19chain_decompositionRINtNtB11_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB69_5types3any5PyAnyEB64_NtB13_10UndirectedEEs_0EEE9from_iterCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !113507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !113507
  call void @llvm.experimental.noalias.scope.decl(metadata !113609)
  call void @llvm.experimental.noalias.scope.decl(metadata !113610)
  call void @llvm.experimental.noalias.scope.decl(metadata !113611)
  call void @llvm.experimental.noalias.scope.decl(metadata !113612)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !113613, !noalias !113507, !noundef !58 ; 3 uses
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_EEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit81.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !113614)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.nm = load i64, ptr %i.nl, align 8, !alias.scope !113615, !noalias !113507, !noundef !58 ; 2 uses
  %i.nn = icmp eq i64 %i.nm, 0
  br i1 %i.nn, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !113616)
  %i.no = load ptr, ptr %i.z, align 8, !alias.scope !113617, !noalias !113507, !nonnull !58, !noundef !58 ; 3 uses
  %.val24.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.no, align 16, !noalias !113618
  %i.np = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nr = bitcast <16 x i1> %i.np to i16
  br label %bb.cy

bb.cy:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %bb.cx
  %.sroa.14.011.i.i.i.i.i.i.i = phi i64 [ %i.nm, %bb.cx ], [ %i.od, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sroa.10.010.i.i.i.i.i.i.i = phi i16 [ %i.nr, %bb.cx ], [ %i.oa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.09.i.i.i.i.i.i.i = phi ptr [ %i.nq, %bb.cx ], [ %.sroa.6.1.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i = phi ptr [ %i.no, %bb.cx ], [ %.sroa.05.1.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.10.010.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBV_EEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cy, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ns = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.09.i.i.i.i.i.i.i, %bb.cy ] ; 2 uses
  %i.nt = phi ptr [ %i.nv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.05.08.i.i.i.i.i.i.i, %bb.cy ]
  %.val68.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ns, align 16, !noalias !113619
  %i.nu = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nv = getelementptr inbounds i8, ptr %i.nt, i64 -512 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.nu to i16 ; 2 uses
  %.not.i.i.i.i.i.i84.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i84.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBV_EEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBV_EEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.cy
  %.sroa.05.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.08.i.i.i.i.i.i.i, %bb.cy ], [ %i.nv, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.09.i.i.i.i.i.i.i, %bb.cy ], [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.10.010.i.i.i.i.i.i.i, %bb.cy ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.nx = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ny = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.nz = zext nneg i16 %i.ny to i64
  %i.oa = and i16 %i.nx, %.lcssa.i.i.i.i.i.i.i.i
  %i.ob = sub nsw i64 0, %i.nz
  %i.oc = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i, i64 %i.ob ; 2 uses
  %i.od = add i64 %.sroa.14.011.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.oe = getelementptr i8, ptr %i.oc, i64 -24
  %.val.i.i.i.i.i82.i.i = load i64, ptr %i.oe, align 8, !noalias !113620 ; 2 uses
  %i.of = icmp eq i64 %.val.i.i.i.i.i82.i.i, 0
  br i1 %i.of, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBV_EEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.og = getelementptr i8, ptr %i.oc, i64 -16
  %.val3.i.i.i.i.i83.i.i = load ptr, ptr %i.og, align 8, !noalias !113620, !nonnull !58, !noundef !58
  %i.oh = shl nuw i64 %.val.i.i.i.i.i82.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i83.i.i, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113620
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBV_EEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.oi = icmp eq i64 %i.od, 0
  br i1 %i.oi, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %bb.cy

_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %bb.cw
  %i.oj = shl i64 %i.nj, 5                        ; 2 uses
  %i.ok = add i64 %i.oj, 32                       ; 2 uses
  %i.ol = add i64 %i.nj, 17
  %i.om = add i64 %i.ol, %i.ok                    ; 4 uses
  %i.on = icmp uge i64 %i.om, %i.ok
  %i.oo = icmp ult i64 %i.om, 9223372036854775793
  call void @llvm.assume(i1 %i.on)
  call void @llvm.assume(i1 %i.oo)
  %i.op = icmp eq i64 %i.om, 0
  br i1 %i.op, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_EEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.oq = load ptr, ptr %i.z, align 8, !alias.scope !113613, !noalias !113507, !nonnull !58, !noundef !58
  %i.or = sub nuw nsw i64 -32, %i.oj
  %i.os = getelementptr inbounds i8, ptr %i.oq, i64 %i.or
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.os, i64 noundef %i.om, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !113621
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_EEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_EEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.cz, %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit81.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !113507
  call void @llvm.experimental.noalias.scope.decl(metadata !113622)
  %.val.i85.i.i = load i64, ptr %i.aa, align 8, !alias.scope !113622, !noalias !113507 ; 2 uses
  %i.ot = icmp eq i64 %.val.i85.i.i, 0
  br i1 %i.ot, label %bb.de, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_EEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val1.i87.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !113622, !noalias !113507, !nonnull !58, !noundef !58
  %i.ou = shl nuw i64 %.val.i85.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i87.i.i, i64 noundef %i.ou, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113623
  br label %bb.de

bb.da:                                            ; preds = %.body77.i.i
  %i.ov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !113506
  unreachable

.thread106.i.i:                                   ; preds = %.thread111.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %bb.bp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %eh.lpad-body109.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread111.i.i ], [ %.pn956.i.i.i, %bb.bp ], [ %.pn7.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.pn956.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ] ; 2 uses
  %.val46.i.i = load i64, ptr %i.y, align 8, !noalias !113507 ; 2 uses
  %i.ow = icmp eq i64 %.val46.i.i, 0
  br i1 %i.ow, label %.thread103.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i89.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i89.i.i: ; preds = %.thread106.i.i
  %.val47.i.i = load ptr, ptr %i.eg, align 8, !noalias !113507, !nonnull !58, !noundef !58
  %i.ox = shl nuw i64 %.val46.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47.i.i, i64 noundef %i.ox, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113506
  br label %.thread103.i.i

bb.db:                                            ; preds = %bb.ad
  unreachable

bb.dc:                                            ; preds = %.thread.i.i, %bb.q
  %.pn41.pn.pn97.i.i = phi { ptr, i32 } [ %i.bq, %.thread.i.i ], [ %.pn41.pn.i.i, %bb.q ] ; 2 uses
  %.val.i.i = load i64, ptr %i.ac, align 8, !noalias !113507 ; 2 uses
  %i.oy = icmp eq i64 %.val.i.i, 0
  br i1 %i.oy, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i90.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i90.i.i: ; preds = %bb.dc
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val45.i.i = load ptr, ptr %i.oz, align 8, !noalias !113507, !nonnull !58, !noundef !58
  %i.pa = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45.i.i, i64 noundef %i.pa, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113506
  br label %.body.i

bb.dd:                                            ; preds = %bb.m, %bb.l
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.dd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i90.i.i, %bb.dc, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn41.pn.pn97.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i90.i.i ], [ %.pn41.pn.i.i, %bb.q ], [ %.pn41.pn.pn97.i.i, %bb.dc ], [ %i.pb, %bb.dd ], [ %i.rh, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.rh, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.aj) #63
          to label %common.resume unwind label %bb.dk, !noalias !113624

bb.de:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_EEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !113507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !113507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !113625
  %i.pc = icmp samesign ult i64 %.sroa.7.0.i, 384307168202282326
  call void @llvm.assume(i1 %i.pc)
  %.idx.i = mul nuw nsw i64 %.sroa.7.0.i, 24
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.5.027.i, i64 %.idx.i ; 5 uses
  %.not15.i.i.i.i.i = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %.not15.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.body.i.i:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEBF_.exit.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = ptrtoint ptr %i.pr to i64
  %i.pg = sub nuw i64 %i.pe, %i.pf
  %i.ph = udiv exact i64 %i.pg, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !113626), !noalias !113627
  %i.pi = icmp eq ptr %i.pd, %i.pr
  br i1 %i.pi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i19.i

.lr.ph.i.i.i.i19.i:                               ; preds = %.body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.pk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %.body.i.i ] ; 2 uses
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %i.pr, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.pk = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.pj, align 8, !alias.scope !113626, !noalias !113628 ; 2 uses
  %i.pl = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.pl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i19.i
  %i.pm = getelementptr i8, ptr %i.pj, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.pm, align 8, !alias.scope !113626, !noalias !113628, !nonnull !58, !noundef !58
  %i.pn = shl nuw i64 %.val8.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.pn, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113629
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i.i19.i
  %i.po = icmp eq i64 %i.pk, %i.ph
  br i1 %i.po, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i19.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.body.i.i
  %i.pp = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.pp, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.pq = mul nuw i64 %.sroa.0.0.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.027.i, i64 noundef %i.pq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113628
  br label %.body.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.de, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1x_EENtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListINtNtB12_13in_place_drop11InPlaceDropB2q_EINtNtBa_6result6ResultB3b_zENCNvNtB2u_12connectivity19chain_decomposition0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2q_E0E0B2u_.exit.i.i.i.i.i
  %.sroa.4.016.i.i.i.i.i = phi ptr [ %i.pr, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1x_EENtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListINtNtB12_13in_place_drop11InPlaceDropB2q_EINtNtBa_6result6ResultB3b_zENCNvNtB2u_12connectivity19chain_decomposition0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2q_E0E0B2u_.exit.i.i.i.i.i ], [ %.sroa.5.027.i, %bb.de ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !113630 ; 4 uses
  %.sroa.412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.412.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !113630, !nonnull !58, !noundef !58 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !113630 ; 6 uses
  %i.pr = getelementptr i8, ptr %.sroa.4.016.i.i.i.i.i, i64 24 ; 6 uses
  %i.ps = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ps)
  %i.pt = shl nuw i64 %.sroa.5.0.copyload.i.i.i.i.i, 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i.i.i.i.i, 576460752303423487
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dh, label %bb.df, !prof !64

bb.df:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pu = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %i.pu, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !113631
  %i.pv = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.pt, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113631 ; 8 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.dh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.dg
  %i.px = add nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i.i, 2305843009213693951
  %i.py = and i64 %i.px, 2305843009213693951      ; 2 uses
  %i.pz = add nuw nsw i64 %i.py, 1                ; 2 uses
  %xtraiter = and i64 %i.pz, 3                    ; 3 uses
  %i.qa = icmp samesign ult i64 %i.py, 3
  br i1 %i.qa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.pz, 4611686018427387900
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.dg, %.lr.ph.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.dg ], [ 0, %.lr.ph.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.pt) #61
          to label %bb.di unwind label %bb.dj, !noalias !113632

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.qb = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.qw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.qc = phi ptr [ %.sroa.412.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.qr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %i.qb
  %i.qf = load <2 x i32>, ptr %i.qc, align 4, !noalias !113633
  %i.qg = zext <2 x i32> %i.qf to <2 x i64>
  store <2 x i64> %i.qg, ptr %i.qe, align 8, !noalias !113634
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %i.qb
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load <2 x i32>, ptr %i.qd, align 4, !noalias !113633
  %i.ql = zext <2 x i32> %i.qk to <2 x i64>
  store <2 x i64> %i.ql, ptr %i.qj, align 8, !noalias !113634
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %i.qb
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %i.qp = load <2 x i32>, ptr %i.qh, align 4, !noalias !113633
  %i.qq = zext <2 x i32> %i.qp to <2 x i64>
  store <2 x i64> %i.qq, ptr %i.qo, align 8, !noalias !113634
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qc, i64 32 ; 2 uses
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %i.qb
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 48
  %i.qu = load <2 x i32>, ptr %i.qm, align 4, !noalias !113633
  %i.qv = zext <2 x i32> %i.qu to <2 x i64>
  store <2 x i64> %i.qv, ptr %i.qt, align 8, !noalias !113634
  %i.qw = add nuw nsw i64 %i.qb, 4                ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.qw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init272 = phi ptr [ %.sroa.412.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.qr, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod274 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.qx = phi i64 [ %i.rd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.qy = phi ptr [ %i.qz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init272, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %i.qx
  %i.rb = load <2 x i32>, ptr %i.qy, align 4, !noalias !113633
  %i.rc = zext <2 x i32> %i.rb to <2 x i64>
  store <2 x i64> %i.rc, ptr %i.ra, align 8, !noalias !113634
  %i.rd = add nuw nsw i64 %i.qx, 1                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !113479

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.df
  %i.re = phi ptr [ inttoptr (i64 8 to ptr), %bb.df ], [ %i.pv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.pv, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.df ], [ %i.qw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.rd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.rf = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i.i, 0
  br i1 %i.rf, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1x_EENtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListINtNtB12_13in_place_drop11InPlaceDropB2q_EINtNtBa_6result6ResultB3b_zENCNvNtB2u_12connectivity19chain_decomposition0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2q_E0E0B2u_.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rg = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i.i, i64 noundef %i.rg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113633
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1x_EENtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListINtNtB12_13in_place_drop11InPlaceDropB2q_EINtNtBa_6result6ResultB3b_zENCNvNtB2u_12connectivity19chain_decomposition0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2q_E0E0B2u_.exit.i.i.i.i.i

bb.di:                                            ; preds = %bb.dh
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.rh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ri = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i.i, 0
  br i1 %i.ri, label %.body.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dj
  %i.rj = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i.i, i64 noundef %i.rj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113635
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.dj
  %i.rk = ptrtoint ptr %.sroa.4.016.i.i.i.i.i to i64
  %i.rl = ptrtoint ptr %.sroa.5.027.i to i64
  %i.rm = sub nuw i64 %i.rk, %i.rl
  %i.rn = udiv exact i64 %i.rm, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !113636), !noalias !113637
  %i.ro = icmp eq ptr %.sroa.4.016.i.i.i.i.i, %.sroa.5.027.i
  br i1 %i.ro, label %.body.i.i, label %.lr.ph.i.i.i.i.i.i.i12.i

.lr.ph.i.i.i.i.i.i.i12.i:                         ; preds = %.body.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEBF_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i = phi i64 [ %i.rq, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEBF_.exit.i.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i.i ] ; 2 uses
  %i.rp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.027.i, i64 %.sroa.0.012.i.i.i.i.i.i.i.i ; 2 uses
  %i.rq = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.rp, align 8, !alias.scope !113636, !noalias !113638 ; 2 uses
  %i.rr = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.rr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEBF_.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i12.i
  %i.rs = getelementptr i8, ptr %i.rp, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.rs, align 8, !alias.scope !113636, !noalias !113638, !nonnull !58, !noundef !58
  %i.rt = shl nuw i64 %.val8.i.i.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %i.rt, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113639
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEBF_.exit.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEBF_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i12.i
  %i.ru = icmp eq i64 %i.rq, %i.rn
  br i1 %i.ru, label %.body.i.i, label %.lr.ph.i.i.i.i.i.i.i12.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1x_EENtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListINtNtB12_13in_place_drop11InPlaceDropB2q_EINtNtBa_6result6ResultB3b_zENCNvNtB2u_12connectivity19chain_decomposition0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2q_E0E0B2u_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !113638
  store ptr %i.re, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !113638
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !113638
  %.not.i.i.i.i10.i = icmp eq ptr %i.pr, %i.pd
  br i1 %.not.i.i.i.i10.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1x_EENtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListINtNtB12_13in_place_drop11InPlaceDropB2q_EINtNtBa_6result6ResultB3b_zENCNvNtB2u_12connectivity19chain_decomposition0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2q_E0E0B2u_.exit.i.i.i.i.i, %bb.de
  %.val2.i.i.i = phi ptr [ %.sroa.5.027.i, %bb.de ], [ %i.pr, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1x_EENtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListINtNtB12_13in_place_drop11InPlaceDropB2q_EINtNtBa_6result6ResultB3b_zENCNvNtB2u_12connectivity19chain_decomposition0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2q_E0E0B2u_.exit.i.i.i.i.i ] ; 3 uses
  %i.rv = ptrtoint ptr %i.pd to i64
  %i.rw = ptrtoint ptr %.val2.i.i.i to i64        ; 2 uses
  %i.rx = sub nuw i64 %i.rv, %i.rw
  %i.ry = udiv exact i64 %i.rx, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !113640)
  %i.rz = icmp eq ptr %i.pd, %.val2.i.i.i
  br i1 %i.rz, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.sb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %.loopexit.i.i ] ; 2 uses
  %i.sa = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.sb = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.sa, align 8, !alias.scope !113640, !noalias !113641 ; 2 uses
  %i.sc = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.sc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i11.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i11.i: ; preds = %.lr.ph.i.i.i.i
  %i.sd = getelementptr i8, ptr %i.sa, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.sd, align 8, !alias.scope !113640, !noalias !113641, !nonnull !58, !noundef !58
  %i.se = shl nuw i64 %.val8.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.se, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !113642
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i11.i, %.lr.ph.i.i.i.i
  %i.sf = icmp eq i64 %i.sb, %i.ry
  br i1 %i.sf, label %.loopexit.i, label %.lr.ph.i.i.i.i

.loopexit.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.loopexit.i.i
  %i.sg = ptrtoint ptr %.sroa.5.027.i to i64
  %i.sh = sub nuw i64 %i.rw, %i.sg
  %i.si = udiv exact i64 %i.sh, 24
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.aj), !noalias !113624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %.sroa.0.0.i, ptr %i.ag, align 8
  %.sroa.419.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.5.027.i, ptr %.sroa.419.sroa.4.0..sroa_idx, align 8
  %.sroa.419.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.si, ptr %.sroa.419.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113644
  %i.sj = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs5w_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_6ChainsNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !113645
  %i.sk = icmp eq i32 %i.sj, 0
  br i1 %i.sk, label %_RNvXs5u_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_6ChainsNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators6ChainsE15get_or_try_initB1p_.exit.i.i.i.i, !prof !68

bb.dk:                                            ; preds = %.body.i
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !113624
  unreachable

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators6ChainsE15get_or_try_initB1p_.exit.i.i.i.i: ; preds = %.loopexit.i
  invoke fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators6ChainsE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc.i.i.i38 unwind label %bb.dm, !noalias !113644

.noexc.i.i.i38:                                   ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators6ChainsE15get_or_try_initB1p_.exit.i.i.i.i
  %.pre.i.i.i.i39 = load i64, ptr %i.a, align 8, !range !59, !noalias !113644
  %i.sm = trunc nuw i64 %.pre.i.i.i.i39 to i1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.sm, label %bb.dl, label %.noexc._crit_edge.i.i.i, !prof !75

.noexc._crit_edge.i.i.i:                          ; preds = %.noexc.i.i.i38
  %.pre.i.i.i40 = load ptr, ptr %i.sn, align 8, !noalias !113644
  br label %_RNvXs5u_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_6ChainsNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i

bb.dl:                                            ; preds = %.noexc.i.i.i38
  invoke void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.sn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @991, i64 noundef 6) #61
          to label %.noexc2.i.i.i unwind label %bb.dm, !noalias !113644

.noexc2.i.i.i:                                    ; preds = %bb.dl
  unreachable

common.resume:                                    ; preds = %bb.dr, %.body.i, %bb.dm
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %bb.dm ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm, %bb.dr ]
  resume { ptr, i32 } %common.resume.op

bb.dm:                                            ; preds = %bb.dl, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators6ChainsE15get_or_try_initB1p_.exit.i.i.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo312pyclass_init18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators6ChainsEEB1B_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ag) #63, !noalias !113646
  br label %common.resume

_RNvXs5u_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_6ChainsNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i: ; preds = %.noexc._crit_edge.i.i.i, %.loopexit.i
  %i.so = phi ptr [ %.pre.i.i.i40, %.noexc._crit_edge.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs5w_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_6ChainsNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %.loopexit.i ]
  %i.sp = load ptr, ptr %i.so, align 8, !noalias !113644, !nonnull !58, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113644
  call fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators6ChainsE27create_class_object_of_typeB15_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ag, ptr noundef %i.sp), !noalias !113647
  %i.sq = load i64, ptr %i.b, align 8, !range !59, !noalias !113643, !noundef !58
  %i.sr = trunc nuw i64 %i.sq to i1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.444.8.copyload45 = load ptr, ptr %i.ss, align 8, !noalias !113648
  br i1 %i.sr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_RNvXs5u_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_6ChainsNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i
  %.sroa.846.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.846.8..sroa_idx47, i64 56, i1 false)
  br label %bb.do

bb.do:                                            ; preds = %_RNvXs5u_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_6ChainsNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i, %bb.dn
  %.sink = phi i64 [ 1, %bb.dn ], [ 0, %_RNvXs5u_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_6ChainsNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.444.8.copyload45, ptr %i.st, align 8
  store i64 %.sink, ptr %0, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %bb.b, %bb.dq, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.dq:                                            ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.dp

bb.dr:                                            ; preds = %bb.h, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aj) #63
          to label %common.resume unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity32___pyfunction_connected_subgraphs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = alloca [72 x i8], align 8                ; 5 uses
  %i.s = alloca [72 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2650, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef 2)
  %i.u = load i64, ptr %i.s, align 8, !range !59, !noundef !58
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit45

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.y = load ptr, ptr %i.t, align 8, !nonnull !58, !noundef !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !113701
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %i.y), !noalias !113701, !inline_history !46
  %i.z = load ptr, ptr %i.l, align 8, !noalias !113701, !noundef !58 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !113701, !nonnull !58, !noundef !58 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !113701
  br i1 %.not.i.i.i, label %.noexc34, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ac, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ab), !inline_history !46
  br label %.noexc33

.noexc34:                                         ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 104 ; 4 uses
  %i.ae = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.ad), !noalias !113701, !inline_history !46
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc34
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af), !inline_history !46
  br label %.noexc33

.noexc33:                                         ; preds = %bb.c, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.n), !inline_history !47
  %.sroa.019.0.copyload = load ptr, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.019.0.copyload, ptr %i.ah, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit45

.body:                                            ; preds = %bb.e, %bb.f, %_RINvNtNtCskcxRuJ53GpR_9rustworkx12connectivity9subgraphs21k_connected_subgraphsNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit.i, %bb.an, %bb.ap
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %bb.ak, %.thread.i.i, %.body
  %eh.lpad-body122 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.fb, %bb.ak ], [ %.pn840.i.i, %.thread.i.i ]
  %i.ai = atomicrmw add ptr %i.ad, i64 -1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body122

bb.e:                                             ; preds = %.noexc34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !58, !noundef !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !113702
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noundef nonnull %i.am)
          to label %.noexc37 unwind label %.body, !noalias !113702

.noexc37:                                         ; preds = %bb.e
  %i.an = load i64, ptr %i.k, align 8, !range !59, !noalias !113702, !noundef !58
end_hunk_0
