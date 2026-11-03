Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.00?download=true
inline.NumInlined: 3526
inline.NumDeleted: 1436
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB17_:bb.a
.noexc5:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !77, !noundef !77 ; 2 uses
  %i.ap = icmp ult i64 %i.ah, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ao, ptr noundef nonnull align 8 dereferenceable(216) %i.f, i64 216, i1 false)
  store i64 %i.al, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7754)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7755
  invoke fastcc void @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB19_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEENtNtNtB9_6traits8iterator8Iterator4nextB29_(ptr noalias noundef align 8 captures(address) dereferenceable(216) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.y, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.ay, %bb.q ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEEEB2m_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d) #21
          to label %.body unwind label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %i.az = load i64, ptr %i.b, align 8, !range !79, !noalias !7755, !noundef !77
  %.not.i.i6 = icmp eq i64 %i.az, -1
  br i1 %.not.i.i6, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEBM_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(216) %i.b, i64 216, i1 false), !noalias !7755
  %i.ba = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7756, !noundef !77 ; 5 uses
  %i.bb = icmp ult i64 %i.ba, 42700796466920259
  call void @llvm.assume(i1 %i.bb)
  %i.bc = load i64, ptr %i.g, align 8, !range !80, !alias.scope !7756, !noundef !77
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7757)
  call void @llvm.experimental.noalias.scope.decl(metadata !7758)
  call void @llvm.experimental.noalias.scope.decl(metadata !7759)
  call void @llvm.experimental.noalias.scope.decl(metadata !7760)
  %i.be = load ptr, ptr %i.aq, align 8, !alias.scope !7761, !noundef !77
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !7762, !nonnull !77, !noundef !77
  %.val4.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !7762, !nonnull !77, !noundef !77
  %i.bf = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.bg = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.bh = sub nuw i64 %i.bf, %i.bg
  %i.bi = udiv exact i64 %i.bh, 216
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.bi, %bb.u ], [ 0, %bb.t ]
  %i.bj = load ptr, ptr %i.at, align 8, !alias.scope !7761, !noundef !77
  %.not55.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not55.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i.i.i
  %.val.i64.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !7763, !nonnull !77, !noundef !77
  %.val4.i65.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !7763, !nonnull !77, !noundef !77
  %i.bk = ptrtoint ptr %.val4.i65.i.i.i.i to i64
  %i.bl = ptrtoint ptr %.val.i64.i.i.i.i to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 216
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i.i.i: ; preds = %bb.v, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.bn, %bb.v ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i.i.i ]
  %i.bo = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i ; 2 uses
  %i.bp = load ptr, ptr %i.d, align 8, !alias.scope !7761, !noundef !77
  %.not56.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not56.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !7761, !nonnull !77, !noundef !77
  %.val63.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !7761, !nonnull !77, !noundef !77
  %i.bq = icmp eq ptr %.val63.i.i.i.i, %.val.i.i.i.i
  br i1 %i.bq, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i.i.i
  br label %bb.z

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i: ; preds = %bb.z, %bb.s
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7756, !nonnull !77, !noundef !77
  %i.bs = getelementptr inbounds nuw [216 x i8], ptr %i.br, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(216) %i.b, i64 216, i1 false)
  %i.bt = add nuw nsw i64 %i.ba, 1
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7755
  br label %bb.o

bb.y:                                             ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEBH_(ptr noalias noundef align 8 dereferenceable(216) %i.a) #21
          to label %bb.p unwind label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.w
  %.sink81.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.x ], [ %.sroa.5.i.i, %bb.w ]
  %.sink.i.i.i.i = phi i64 [ %i.bo, %bb.x ], [ 0, %bb.w ]
  store i64 %.sink.i.i.i.i, ptr %.sink81.i.i.sroa.phi.i.i, align 8, !alias.scope !7764, !noalias !7755
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.bv = add nuw nsw i64 %i.bo, 1
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ba, i64 noundef range(i64 1, 0) %i.bv, i64 noundef 8, i64 noundef 216)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i unwind label %bb.y

bb.aa:                                            ; preds = %bb.y, %bb.p
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEBM_.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7755
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEEEB2m_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendBX_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEBM_.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.ab ], [ %.pn.i.i, %bb.p ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #21
          to label %bb.ad unwind label %bb.ac

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendBX_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.j

bb.ac:                                            ; preds = %bb.ae, %.body, %bb.k
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ad:                                            ; preds = %.body, %bb.ae
  %.pn11 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn11

bb.ae:                                            ; preds = %bb.k, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ag, %bb.k ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEEEB2m_(ptr noalias noundef align 8 dereferenceable(96) %1) #21
          to label %bb.ad unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenIB2Q_INtNtNtB2Y_5slice4iter4IterIBS_INtNtB2Y_6option6OptionB12_EEEEEE9from_iterB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7804)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %1, align 8, !range !83, !alias.scope !7805, !noundef !77
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !7806 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !7806 ; 2 uses
  br i1 %i.f, label %.split.us.preheader.i.i, label %.loopexit

.split.us.preheader.i.i:                          ; preds = %bb.a
  %.promoted16.i.i = load ptr, ptr %i.i, align 8, !alias.scope !7806
  %.promoted15.i.i = load ptr, ptr %i.g, align 8, !alias.scope !7806
  %.promoted10.i.i = load ptr, ptr %i.h, align 8, !alias.scope !7806 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !7806 ; 2 uses
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i, %.split.us.preheader.i.i
  %.sroa.8.0.copyload51 = phi ptr [ %.sroa.8.0.copyload, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i ], [ %.promoted.i.i, %.split.us.preheader.i.i ]
  %.sroa.6.0.copyload48 = phi ptr [ %.sroa.6.0.copyload, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i ], [ %.promoted10.i.i, %.split.us.preheader.i.i ]
  %i.m = phi ptr [ %.sroa.7.0.copyload, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i ], [ %.promoted16.i.i, %.split.us.preheader.i.i ]
  %i.n = phi ptr [ %.sroa.410.0.copyload, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i ], [ %.promoted15.i.i, %.split.us.preheader.i.i ]
  %.val.i.i.i14.us.i.i = phi ptr [ %.val.i.i.i11.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i ], [ %.promoted10.i.i, %.split.us.preheader.i.i ]
  %spec.select.i9.i.i.i9.us.i.i = phi ptr [ %spec.select.i9.i.i.i8.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i ], [ %.promoted.i.i, %.split.us.preheader.i.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7809)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.split.us.i.i
  %.sroa.6.0.copyload47 = phi ptr [ %.val.i.i.i.us.i.i, %bb.c ], [ %.sroa.6.0.copyload48, %.split.us.i.i ]
  %.sroa.7.0.copyload = phi ptr [ %i.u, %bb.c ], [ %i.m, %.split.us.i.i ] ; 3 uses
  %.sroa.410.0.copyload = phi ptr [ %i.r, %bb.c ], [ %i.n, %.split.us.i.i ] ; 7 uses
  %.val.i.i.i13.us.i.i = phi ptr [ %.val.i.i.i.us.i.i, %bb.c ], [ %.val.i.i.i14.us.i.i, %.split.us.i.i ] ; 4 uses
  %.not.i.i.i.i.us.i.i = icmp eq ptr %.val.i.i.i13.us.i.i, null
  br i1 %.not.i.i.i.i.us.i.i, label %select.unfold.i.i.i.us.i.i, label %.sink.split.i.i.i.i.us.i.i

.sink.split.i.i.i.i.us.i.i:                       ; preds = %bb.b
  %i.o = icmp eq ptr %.val.i.i.i13.us.i.i, %.sroa.7.0.copyload ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i13.us.i.i, i64 120 ; 3 uses
  %spec.select.i.i.i.i.us.i.i = select i1 %i.o, ptr null, ptr %i.p
  store ptr %spec.select.i.i.i.i.us.i.i, ptr %i.h, align 8, !alias.scope !7810
  br i1 %i.o, label %select.unfold.i.i.i.us.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i

select.unfold.i.i.i.us.i.i:                       ; preds = %.sink.split.i.i.i.i.us.i.i, %bb.b
  %.sroa.6.0.copyload50 = phi ptr [ null, %.sink.split.i.i.i.i.us.i.i ], [ %.sroa.6.0.copyload47, %bb.b ]
  %.not.i5.i.i.i.us.i.i = icmp eq ptr %.sroa.410.0.copyload, null
  %i.q = icmp eq ptr %.sroa.410.0.copyload, %i.k
  %or.cond.i.i.i.i.us.i.i = select i1 %.not.i5.i.i.i.us.i.i, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i.i.us.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i.us.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload, i64 24 ; 2 uses
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !7811
  %i.s = getelementptr i8, ptr %.sroa.410.0.copyload, i64 8
  %.val.i.i.i.us.i.i = load ptr, ptr %i.s, align 8, !noalias !7812, !nonnull !77, !noundef !77 ; 4 uses
  %i.t = getelementptr i8, ptr %.sroa.410.0.copyload, i64 16
  %.val4.i.i.i.us.i.i = load i64, ptr %i.t, align 8, !noalias !7812, !noundef !77
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %.val.i.i.i.us.i.i, i64 %.val4.i.i.i.us.i.i ; 2 uses
  store ptr %.val.i.i.i.us.i.i, ptr %i.h, align 8, !alias.scope !7812
  store ptr %i.u, ptr %i.i, align 8, !alias.scope !7812
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i.i.i.us.i.i
  %.not.i7.i.i.i.us.i.i = icmp eq ptr %spec.select.i9.i.i.i9.us.i.i, null
  br i1 %.not.i7.i.i.i.us.i.i, label %.loopexit, label %.sink.split.i8.i.i.i.us.i.i

.sink.split.i8.i.i.i.us.i.i:                      ; preds = %bb.d
  %i.v = icmp eq ptr %spec.select.i9.i.i.i9.us.i.i, %i.l ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i9.us.i.i, i64 120 ; 3 uses
  %spec.select.i9.i.i.i.us.i.i = select i1 %i.v, ptr null, ptr %i.w
  store ptr %spec.select.i9.i.i.i.us.i.i, ptr %i.c, align 8, !alias.scope !7813
  br i1 %i.v, label %.loopexit, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i: ; preds = %.sink.split.i.i.i.i.us.i.i, %.sink.split.i8.i.i.i.us.i.i
  %.sroa.8.0.copyload = phi ptr [ %i.w, %.sink.split.i8.i.i.i.us.i.i ], [ %.sroa.8.0.copyload51, %.sink.split.i.i.i.i.us.i.i ] ; 2 uses
  %.sroa.6.0.copyload = phi ptr [ %.sroa.6.0.copyload50, %.sink.split.i8.i.i.i.us.i.i ], [ %i.p, %.sink.split.i.i.i.i.us.i.i ] ; 2 uses
  %.val.i.i.i11.us.i.i = phi ptr [ null, %.sink.split.i8.i.i.i.us.i.i ], [ %i.p, %.sink.split.i.i.i.i.us.i.i ]
  %spec.select.i9.i.i.i8.us.i.i = phi ptr [ %i.w, %.sink.split.i8.i.i.i.us.i.i ], [ %spec.select.i9.i.i.i9.us.i.i, %.sink.split.i.i.i.i.us.i.i ]
  %.sroa.0.0.i.us.i.i = phi ptr [ %spec.select.i9.i.i.i9.us.i.i, %.sink.split.i8.i.i.i.us.i.i ], [ %.val.i.i.i13.us.i.i, %.sink.split.i.i.i.i.us.i.i ] ; 2 uses
  %i.x = load i64, ptr %.sroa.0.0.i.us.i.i, align 8, !range !94, !alias.scope !7814, !noalias !7806, !noundef !77
  %.not.i.us.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.us.i.i, label %.split.us.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenIBR_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2x_.exit

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenIBR_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2x_.exit: ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.y = load i64, ptr %i.a, align 8, !range !83, !noundef !77
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !84, !noundef !77 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.e, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit, !prof !82

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenIBR_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2x_.exit
  %i.ad = load i64, ptr %i.ac, align 8
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #23
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenIBR_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2x_.exit
  %i.ae = load ptr, ptr %i.ac, align 8, !nonnull !77, !noundef !77 ; 2 uses
  %i.af = icmp ugt i64 %i.ab, 3
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.i.us.i.i, ptr %i.ae, align 8
  store i64 %i.ab, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.split.us.preheader.i.i.us.i.i

.split.us.preheader.i.i.us.i.i:                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i
  %storemerge = phi i64 [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit ], [ %i.bf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i ] ; 6 uses
  %i.ag = phi ptr [ %.sroa.7.0.copyload, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit ], [ %i.an, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i ] ; 2 uses
  %i.ah = phi ptr [ %.sroa.410.0.copyload, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit ], [ %i.am, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i ] ; 2 uses
  %.val.i.i.i.us.i.i1931.us.i.i = phi ptr [ %.sroa.6.0.copyload, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit ], [ %.val.i.i.i.us.i.i15.us.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i ] ; 2 uses
  %spec.select.i9.i.i.i.us.i.i2330.us.i.i = phi ptr [ %.sroa.8.0.copyload, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit ], [ %spec.select.i9.i.i.i.us.i.i21.us.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i ] ; 2 uses
  store i64 %storemerge, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.split.us.i.i.us.i.i

.split.us.i.i.us.i.i:                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i, %.split.us.preheader.i.i.us.i.i
  %spec.select.i9.i.i.i.us.i.i22.us.i.i = phi ptr [ %spec.select.i9.i.i.i.us.i.i21.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i ], [ %spec.select.i9.i.i.i.us.i.i2330.us.i.i, %.split.us.preheader.i.i.us.i.i ]
  %.val.i.i.i.us.i.i18.us.i.i = phi ptr [ %.val.i.i.i.us.i.i15.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i ], [ %.val.i.i.i.us.i.i1931.us.i.i, %.split.us.preheader.i.i.us.i.i ]
  %i.ai = phi ptr [ %i.am, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i ], [ %i.ah, %.split.us.preheader.i.i.us.i.i ]
  %i.aj = phi ptr [ %i.an, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i ], [ %i.ag, %.split.us.preheader.i.i.us.i.i ]
  %i.ak = phi ptr [ %i.ao, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i ], [ %i.ag, %.split.us.preheader.i.i.us.i.i ]
  %i.al = phi ptr [ %i.ap, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i ], [ %i.ah, %.split.us.preheader.i.i.us.i.i ]
  %.val.i.i.i14.us.i.i.us.i.i = phi ptr [ %.val.i.i.i11.us.i.i.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i ], [ %.val.i.i.i.us.i.i1931.us.i.i, %.split.us.preheader.i.i.us.i.i ]
  %spec.select.i9.i.i.i9.us.i.i.us.i.i = phi ptr [ %spec.select.i9.i.i.i8.us.i.i.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i ], [ %spec.select.i9.i.i.i.us.i.i2330.us.i.i, %.split.us.preheader.i.i.us.i.i ] ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.split.us.i.i.us.i.i
  %.val.i.i.i.us.i.i17.us.i.i = phi ptr [ %.val.i.i.i.us.i.i.us.i.i, %bb.g ], [ %.val.i.i.i.us.i.i18.us.i.i, %.split.us.i.i.us.i.i ]
  %i.am = phi ptr [ %i.as, %bb.g ], [ %i.ai, %.split.us.i.i.us.i.i ] ; 2 uses
  %i.an = phi ptr [ %i.av, %bb.g ], [ %i.aj, %.split.us.i.i.us.i.i ] ; 2 uses
  %i.ao = phi ptr [ %i.av, %bb.g ], [ %i.ak, %.split.us.i.i.us.i.i ] ; 2 uses
  %i.ap = phi ptr [ %i.as, %bb.g ], [ %i.al, %.split.us.i.i.us.i.i ] ; 6 uses
  %.val.i.i.i13.us.i.i.us.i.i = phi ptr [ %.val.i.i.i.us.i.i.us.i.i, %bb.g ], [ %.val.i.i.i14.us.i.i.us.i.i, %.split.us.i.i.us.i.i ] ; 4 uses
  %.not.i.i.i.i.us.i.i.us.i.i = icmp eq ptr %.val.i.i.i13.us.i.i.us.i.i, null
  br i1 %.not.i.i.i.i.us.i.i.us.i.i, label %select.unfold.i.i.i.us.i.i.us.i.i, label %.sink.split.i.i.i.i.us.i.i.us.i.i

.sink.split.i.i.i.i.us.i.i.us.i.i:                ; preds = %bb.f
  %i.aq = icmp eq ptr %.val.i.i.i13.us.i.i.us.i.i, %i.ao
  br i1 %i.aq, label %select.unfold.i.i.i.us.i.i.us.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.loopexit.i.i

select.unfold.i.i.i.us.i.i.us.i.i:                ; preds = %.sink.split.i.i.i.i.us.i.i.us.i.i, %bb.f
  %.val.i.i.i.us.i.i16.us.i.i = phi ptr [ null, %.sink.split.i.i.i.i.us.i.i.us.i.i ], [ %.val.i.i.i.us.i.i17.us.i.i, %bb.f ]
  %.not.i5.i.i.i.us.i.i.us.i.i = icmp eq ptr %i.ap, null
  %i.ar = icmp eq ptr %i.ap, %i.k
  %or.cond.i.i.i.i.us.i.i.us.i.i = select i1 %.not.i5.i.i.i.us.i.i.us.i.i, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i.i.us.i.i.us.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i.us.i.i.us.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %.val.i.i.i.us.i.i.us.i.i = load ptr, ptr %i.at, align 8, !noalias !7815, !nonnull !77, !noundef !77 ; 3 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 16
  %.val4.i.i.i.us.i.i.us.i.i = load i64, ptr %i.au, align 8, !noalias !7815, !noundef !77
  %i.av = getelementptr inbounds nuw [120 x i8], ptr %.val.i.i.i.us.i.i.us.i.i, i64 %.val4.i.i.i.us.i.i.us.i.i ; 2 uses
  br label %bb.f

bb.h:                                             ; preds = %select.unfold.i.i.i.us.i.i.us.i.i
  %.not.i7.i.i.i.us.i.i.us.i.i = icmp eq ptr %spec.select.i9.i.i.i9.us.i.i.us.i.i, null
  %i.aw = icmp eq ptr %spec.select.i9.i.i.i9.us.i.i.us.i.i, %i.l
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i9.us.i.i.us.i.i, i64 120 ; 2 uses
  %or.cond.i.i = select i1 %.not.i7.i.i.i.us.i.i.us.i.i, i1 true, i1 %i.aw
  br i1 %or.cond.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenIB2x_INtNtNtB2F_5slice4iter4IterIBI_INtNtB2F_6option6OptionBS_EEEEEE11spec_extendBY_.exit, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.loopexit.i.i: ; preds = %.sink.split.i.i.i.i.us.i.i.us.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i13.us.i.i.us.i.i, i64 120 ; 2 uses
  br label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i: ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.loopexit.i.i, %bb.h
  %spec.select.i9.i.i.i.us.i.i21.us.i.i = phi ptr [ %i.ax, %bb.h ], [ %spec.select.i9.i.i.i.us.i.i22.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.loopexit.i.i ] ; 2 uses
  %.val.i.i.i.us.i.i15.us.i.i = phi ptr [ %.val.i.i.i.us.i.i16.us.i.i, %bb.h ], [ %i.ay, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.loopexit.i.i ] ; 2 uses
  %.val.i.i.i11.us.i.i.us.i.i = phi ptr [ null, %bb.h ], [ %i.ay, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.loopexit.i.i ]
  %spec.select.i9.i.i.i8.us.i.i.us.i.i = phi ptr [ %i.ax, %bb.h ], [ %spec.select.i9.i.i.i9.us.i.i.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.loopexit.i.i ]
  %.sroa.0.0.i.us.i.i.us.i.i = phi ptr [ %spec.select.i9.i.i.i9.us.i.i.us.i.i, %bb.h ], [ %.val.i.i.i13.us.i.i.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.loopexit.i.i ] ; 2 uses
  %i.az = load i64, ptr %.sroa.0.0.i.us.i.i.us.i.i, align 8, !range !94, !alias.scope !7816, !noalias !7817, !noundef !77
  %.not.i.us.i.i.us.i.i = icmp eq i64 %i.az, -1
  br i1 %.not.i.us.i.i.us.i.i, label %.split.us.i.i.us.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenIBR_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2x_.exit.us.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenIBR_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2x_.exit.us.i.i: ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEINtB5_8FuseImplBY_E4nextB2L_.exit.us.i.i.us.i.i
  %i.ba = icmp samesign ult i64 %storemerge, 1152921504606846976
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.b, align 8, !range !80, !alias.scope !7818, !noundef !77
  %i.bc = icmp eq i64 %storemerge, %i.bb
  br i1 %i.bc, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterIBw_NtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1j_.exit.i.i.i.i.us.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterIBw_NtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1j_.exit.i.i.i.i.us.i.i: ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenIBR_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2x_.exit.us.i.i
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %storemerge, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i unwind label %bb.j

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE7reserveBL_.exit.us.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterIBw_NtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1j_.exit.i.i.i.i.us.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenIBR_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2x_.exit.us.i.i
  %i.bd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7818, !nonnull !77, !noundef !77
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %storemerge
  store ptr %.sroa.0.0.i.us.i.i.us.i.i, ptr %i.be, align 8, !noalias !7819
  %i.bf = add nuw nsw i64 %storemerge, 1
  br label %.split.us.preheader.i.i.us.i.i

.loopexit:                                        ; preds = %bb.d, %.sink.split.i8.i.i.i.us.i.i, %bb.a
  store i64 0, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bh, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenIB2x_INtNtNtB2F_5slice4iter4IterIBI_INtNtB2F_6option6OptionBS_EEEEEE11spec_extendBY_.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterIBw_NtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1j_.exit.i.i.i.i.us.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1f_.exit unwind label %bb.k

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenIB2x_INtNtNtB2F_5slice4iter4IterIBI_INtNtB2F_6option6OptionBS_EEEEEE11spec_extendBY_.exit: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1f_.exit: ; preds = %bb.j
  resume { ptr, i32 } %i.bi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB3i_7flatten7FlatMapINtNtNtB3m_5slice4iter4IterNtB1r_16ColumnDefinitionEINtNtB3i_5chain5ChainINtNtB6_5boxed3BoxDNtNtNtB3k_6traits8iterator8Iteratorp4ItemTB12_INtNtB3m_6option6OptionB1n_EEEL_EINtNtNtB3k_7sources4once4OnceB6N_EENCNvNtNtB1v_10migrations11diff_schema20collect_record_types0ENCB80_s_0EE9from_iterB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [128 x i8], align 8               ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3M_6borrow3CoweEINtNtBb_6option6OptionRSNtB20_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4V_EENCNvNtNtB24_10migrations11diff_schema20collect_record_types0ENCB6E_s_0EB4h_4nextB24_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef align 8 dereferenceable(128) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !112, !noundef !77
  %.not = icmp eq i64 %i.k, -2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3M_6borrow3CoweEINtNtBb_6option6OptionRSNtB20_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4V_EENCNvNtNtB24_10migrations11diff_schema20collect_record_types0ENCB6E_s_0EB4h_9size_hintB24_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1)
          to label %bb.k unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtBG_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemTINtNtB3Z_6borrow3CoweEINtNtB4_6option6OptionRSNtB2d_10ColumnTypeEEEL_EINtNtNtBI_7sources4once4OnceB58_EENCNvNtNtB2h_10migrations11diff_schema20collect_record_types0ENCB6R_s_0EEB2h_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef align 8 dereferenceable(56) %i.o) #21
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.ac, %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %.pn.ph, %bb.ac ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtBG_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemTINtNtB3Z_6borrow3CoweEINtNtB4_6option6OptionRSNtB2d_10ColumnTypeEEEL_EINtNtNtBI_7sources4once4OnceB58_EENCNvNtNtB2h_10migrations11diff_schema20collect_record_types0ENCB6R_s_0EEB2h_.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef align 8 dereferenceable(56) %i.q)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB2Z_7flatten7FlatMapINtNtNtB33_5slice4iter4IterNtB1h_16ColumnDefinitionEINtNtB2Z_5chain5ChainINtNtB6_5boxed3BoxDNtNtNtB31_6traits8iterator8Iteratorp4ItemTBS_INtNtB33_6option6OptionB1d_EEEL_EINtNtNtB31_7sources4once4OnceB6u_EENCNvNtNtB1l_10migrations11diff_schema20collect_record_types0ENCB7G_s_0EE11spec_extendB1l_.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtBG_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemTINtNtB3Z_6borrow3CoweEINtNtB4_6option6OptionRSNtB2d_10ColumnTypeEEEL_EINtNtNtBI_7sources4once4OnceB58_EENCNvNtNtB2h_10migrations11diff_schema20collect_record_types0ENCB6R_s_0EEB2h_.exit
  ret void

bb.i:                                             ; preds = %bb.l, %bb.k, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load i64, ptr %i.g, align 8, !range !79, !alias.scope !7836, !noundef !77
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %bb.ac unwind label %bb.ab

bb.k:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.f, align 8, !noundef !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 1)
  %.sroa.0.0.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.v, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %bb.k
  %i.w = load i64, ptr %i.d, align 8, !range !83, !noundef !77
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !84, !noundef !77 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %bb.l, label %bb.m, !prof !82

bb.l:                                             ; preds = %.noexc5
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #23
          to label %.noexc6 unwind label %bb.i

.noexc6:                                          ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc5
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !77, !noundef !77 ; 2 uses
  %i.ad = icmp ule i64 %.sroa.0.0.i, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  store i64 %i.z, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7838)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEE7reserveB18_.exit.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7839
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3M_6borrow3CoweEINtNtBb_6option6OptionRSNtB20_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4V_EENCNvNtNtB24_10migrations11diff_schema20collect_record_types0ENCB6E_s_0EB4h_4nextB24_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.p unwind label %bb.o

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1m_.exit.i.i: ; preds = %bb.w, %bb.v, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.aq, %bb.w ], [ %i.aq, %bb.v ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtBG_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemTINtNtB3Z_6borrow3CoweEINtNtB4_6option6OptionRSNtB2d_10ColumnTypeEEEL_EINtNtNtBI_7sources4once4OnceB58_EENCNvNtNtB2h_10migrations11diff_schema20collect_record_types0ENCB6R_s_0EEB2h_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.e) #21
          to label %.body unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1m_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.af = load i64, ptr %i.c, align 8, !range !112, !noalias !7839, !noundef !77
  %.not.i.i = icmp eq i64 %i.af, -2
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !7839
  %i.ag = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7840, !noundef !77 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 230584300921369396
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %i.i, align 8, !range !80, !alias.scope !7840, !noundef !77
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEE7reserveB18_.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7839
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTINtNtB8_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB2L_7flatten7FlatMapINtNtNtB2P_5slice4iter4IterNtB16_16ColumnDefinitionEINtNtB2L_5chain5ChainINtNtB8_5boxed3BoxDNtNtNtB2N_6traits8iterator8Iteratorp4ItemTBH_INtNtB2P_6option6OptionB12_EEEL_EINtNtNtB2N_7sources4once4OnceB6g_EENCNvNtNtB1a_10migrations11diff_schema20collect_record_types0ENCB7s_s_0EEB1a_.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef align 8 dereferenceable(56) %i.al) #21
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
end_hunk_0
