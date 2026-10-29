Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.00?download=true
inline.NumInlined: 3526
inline.NumDeleted: 1436
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3M_6borrow3CoweEINtNtBb_6option6OptionRSNtB20_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4V_EENCNvNtNtB24_10migrations11diff_schema20collect_record_types0ENCB6E_s_0EB4h_4nextB24_:bb.a

bb.j:                                             ; preds = %bb.h
  %.sroa.7.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx4.i.i.i.i.i, i64 32, i1 false), !noalias !8030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8033
  br label %bb.t

bb.k:                                             ; preds = %bb.i, %bb.g
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.m unwind label %bb.l, !noalias !8028

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i64 -4, ptr %1, align 8, !alias.scope !8027
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  store i64 -4, ptr %1, align 8, !alias.scope !8027
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !range !90, !alias.scope !8027, !noundef !77
  %.not15.i.i.i.i = icmp eq i64 %i.n, -4
  br i1 %.not15.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8026
  call void @_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB5_5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB15_6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB2e_EEB1A_8try_folduQNCINvNvB1A_8find_map5checkB2e_TB2f_B2X_EQNCNvNtNtB35_10migrations11diff_schema20collect_record_typess_0E0INtNtNtBb_3ops12control_flow11ControlFlowB5E_EEB35_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !8028
  %i.o = load i64, ptr %i.b, align 8, !range !112, !alias.scope !8036, !noalias !8026, !noundef !77 ; 2 uses
  %.not.i21.i.i.i.i = icmp eq i64 %i.o, -2
  br i1 %.not.i21.i.i.i.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.q, %bb.m
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEB21_.exit.i unwind label %bb.r, !noalias !8028

bb.p:                                             ; preds = %bb.n
  %.sroa.737.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.737.0..sroa_idx38.i.i.i.i, i64 32, i1 false), !noalias !8030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8026
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8026
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 -4, ptr %i.m, align 8, !alias.scope !8027
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.p, %bb.r ], [ %i.l, %bb.l ]
  resume { ptr, i32 } %.pn.i.i.i.i

bb.t:                                             ; preds = %bb.p, %bb.j, %bb.d
  %.sink.i.i.ph.i = phi i64 [ %i.o, %bb.p ], [ %i.k, %bb.j ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8025
  store i64 %.sink.i.i.ph.i, ptr %0, align 8, !alias.scope !8020
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !8037
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemTINtNtB3d_6borrow3CoweEINtNtBc_6option6OptionRSNtB1r_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB4m_EENCNvNtNtB1v_10migrations11diff_schema20collect_record_types0EB3I_8find_mapTB4n_B55_EQNCB65_s_0EB1v_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEB21_.exit.i: ; preds = %bb.o
  store i64 -4, ptr %i.m, align 8, !alias.scope !8027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8025
  store i64 -2, ptr %0, align 8, !alias.scope !8020
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemTINtNtB3d_6borrow3CoweEINtNtBc_6option6OptionRSNtB1r_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB4m_EENCNvNtNtB1v_10migrations11diff_schema20collect_record_types0EB3I_8find_mapTB4n_B55_EQNCB65_s_0EB1v_.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemTINtNtB3d_6borrow3CoweEINtNtBc_6option6OptionRSNtB1r_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB4m_EENCNvNtNtB1v_10migrations11diff_schema20collect_record_types0EB3I_8find_mapTB4n_B55_EQNCB65_s_0EB1v_.exit: ; preds = %bb.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEB21_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3M_6borrow3CoweEINtNtBb_6option6OptionRSNtB20_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4V_EENCNvNtNtB24_10migrations11diff_schema20collect_record_types0ENCB6E_s_0EB4h_9size_hintB24_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8067)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8068
  %i.e = load i64, ptr %1, align 8, !range !90, !alias.scope !8069, !noundef !77 ; 4 uses
  %.not.i.i = icmp eq i64 %i.e, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8070)
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8072)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !8073, !noundef !77
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  %.not8.i.i.i.i.i = icmp eq i64 %i.e, -3         ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not8.i.i.i.i.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %.not8.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ne i64 %i.e, -2
  %i.i = zext i1 %i.h to i64
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8074
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_9size_hintB2D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f), !noalias !8075
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !83, !noalias !8074, !noundef !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !8074 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8074
  %i.n = icmp ne i64 %i.e, -2
  %i.o = zext i1 %i.n to i64
  %i.p = trunc nuw i64 %i.k to i1                 ; 2 uses
  %i.q = add i64 %i.m, %i.o                       ; 2 uses
  %i.r = icmp uge i64 %i.q, %i.m
  %.sroa.46.0.i.i.i.i.i = select i1 %i.p, i64 %i.q, i64 undef
  %narrow.i.i.i.i.i = select i1 %i.p, i1 %i.r, i1 false
  %.sroa.05.0.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i to i64
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i

bb.g:                                             ; preds = %bb.c
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_9size_hintB2D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f), !noalias !8076
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre79.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !83, !noalias !8068
  %.phi.trans.insert80.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre81.i.i = load i64, ptr %.phi.trans.insert80.i.i, align 8, !noalias !8068
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %i.s = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ], [ %.sroa.46.0.i.i.i.i.i, %bb.f ], [ %.pre81.i.i, %bb.g ], [ 0, %bb.a ] ; 2 uses
  %i.t = phi i64 [ 1, %bb.e ], [ 1, %bb.d ], [ %.sroa.05.0.i.i.i.i.i, %bb.f ], [ %.pre79.i.i, %bb.g ], [ 1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8068
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8, !range !90, !alias.scope !8069, !noundef !77 ; 4 uses
  %.not55.i.i = icmp eq i64 %i.v, -4
  call void @llvm.experimental.noalias.scope.decl(metadata !8077)
  br i1 %.not55.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8078)
  call void @llvm.experimental.noalias.scope.decl(metadata !8079)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !8080, !noundef !77
  %.not.i.i.i64.i.i = icmp eq ptr %i.x, null
  %.not8.i.i.i65.i.i = icmp eq i64 %i.v, -3       ; 2 uses
  br i1 %.not.i.i.i64.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not8.i.i.i65.i.i, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i.i65.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = icmp ne i64 %i.v, -2
  %i.z = zext i1 %i.y to i64
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8081
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_9size_hintB2D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w), !noalias !8082
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !83, !noalias !8081, !noundef !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !8081 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8081
  %i.ae = icmp ne i64 %i.v, -2
  %i.af = zext i1 %i.ae to i64
  %i.ag = trunc nuw i64 %i.ab to i1               ; 2 uses
  %i.ah = add i64 %i.ad, %i.af                    ; 2 uses
  %i.ai = icmp uge i64 %i.ah, %i.ad
  %.sroa.46.0.i.i.i66.i.i = select i1 %i.ag, i64 %i.ah, i64 undef
  %narrow.i.i.i67.i.i = select i1 %i.ag, i1 %i.ai, i1 false
  %.sroa.05.0.i.i.i68.i.i = zext i1 %narrow.i.i.i67.i.i to i64
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i

bb.m:                                             ; preds = %bb.i
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_9size_hintB2D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w), !noalias !8083
  %.phi.trans.insert83.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre84.i.i = load i64, ptr %.phi.trans.insert83.i.i, align 8, !range !83, !noalias !8068
  %.phi.trans.insert85.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre86.i.i = load i64, ptr %.phi.trans.insert85.i.i, align 8, !noalias !8068
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i
  %i.aj = phi i64 [ %i.z, %bb.k ], [ 0, %bb.j ], [ %.sroa.46.0.i.i.i66.i.i, %bb.l ], [ %.pre86.i.i, %bb.m ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i ]
  %i.ak = phi i64 [ 1, %bb.k ], [ 1, %bb.j ], [ %.sroa.05.0.i.i.i68.i.i, %bb.l ], [ %.pre84.i.i, %bb.m ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i ]
  %.fr5 = freeze i64 %i.ak                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8068
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !8069, !noundef !77 ; 2 uses
  %.not56.i.i = icmp eq ptr %i.am, null
  br i1 %.not56.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val63.i.i = load ptr, ptr %i.an, align 8, !alias.scope !8069, !nonnull !77, !noundef !77
  %i.ao = icmp eq ptr %.val63.i.i, %i.am
  %i.ap = trunc nuw i64 %i.t to i1
  %i.aq = trunc i64 %.fr5 to i1
  %op.rdx = and i1 %i.ao, %i.aq
  %op.rdx4 = select i1 %op.rdx, i1 %i.ap, i1 false
  br i1 %op.rdx4, label %bb.p, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3i_6borrow3CoweEINtNtBb_6option6OptionRSNtB1w_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4r_EENCNvNtNtB1A_10migrations11diff_schema20collect_record_types0EB3N_9size_hintB1A_.exit

bb.o:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i
  %i.ar = and i64 %.fr5, %i.t
  %or.cond57.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %or.cond57.not.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3i_6borrow3CoweEINtNtBb_6option6OptionRSNtB1w_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4r_EENCNvNtNtB1A_10migrations11diff_schema20collect_record_types0EB3N_9size_hintB1A_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.as = add i64 %i.aj, %i.s                     ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.s
  %.58.i.i = zext i1 %i.at to i64
  store i64 %.58.i.i, ptr %.sroa.4, align 8, !alias.scope !8084
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3i_6borrow3CoweEINtNtBb_6option6OptionRSNtB1w_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4r_EENCNvNtNtB1A_10migrations11diff_schema20collect_record_types0EB3N_9size_hintB1A_.exit

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3i_6borrow3CoweEINtNtBb_6option6OptionRSNtB1w_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4r_EENCNvNtNtB1A_10migrations11diff_schema20collect_record_types0EB3N_9size_hintB1A_.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sink90.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.p ], [ %.sroa.4, %bb.o ], [ %.sroa.4, %bb.n ]
  %.sink.i.i = phi i64 [ %i.as, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ]
  store i64 %.sink.i.i, ptr %.sink90.i.i.sroa.phi, align 8, !alias.scope !8084
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load i64, ptr %.sroa.4, align 8, !range !83, !noundef !77
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load i64, ptr %.sroa.7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 0, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16., ptr %i.av, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2c_ENtB3l_16TypedValueParser9parse_refs_00ENCB3d_s_0ENCB3d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8112)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8116
  store ptr %i.f, ptr %i.d, align 8, !noalias !8117
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !8117
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8118, !nonnull !77, !noundef !77 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !8118 ; 2 uses
  %i.j = icmp eq ptr %.promoted.i.i.i.i, %i.i
  br i1 %i.j, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i
  %i.k = phi ptr [ %i.l, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !8118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8119
  call void @_RNvXs0_NtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs9ZYirdRbabK_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.k), !noalias !8120
  %i.m = load i64, ptr %i.c, align 8, !range !94, !noalias !8119, !noundef !77 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !8119
  %i.n = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !8121

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #21
          to label %common.resume unwind label %bb.e, !noalias !8121

bb.d:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.f, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread15.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread15.i.i.i.i: ; preds = %bb.d
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b), !noalias !8121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8119
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !8121
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread15.i.i.i.i, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8119
  %i.q = icmp eq ptr %i.l, %i.i
  br i1 %i.q, label %.loopexit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.79.0..sroa_idx.i.i.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8116
  store i64 %i.m, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8122)
  %.sroa.0.0.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8122, !nonnull !77, !noundef !77
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !8122, !noundef !77 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8123
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.3.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g, !noalias !8123

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e) #21
          to label %common.resume unwind label %bb.m, !noalias !8124

bb.h:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8, !range !83, !noalias !8123, !noundef !77
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !84, !noalias !8123, !noundef !77 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j, !prof !82

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.w, align 8, !noalias !8123
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #23
          to label %bb.l unwind label %bb.g, !noalias !8123

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.w, align 8, !noalias !8123, !nonnull !77, !noundef !77 ; 2 uses
  %i.z = icmp ule i64 %.sroa.3.0.i, %i.v
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8123
  %.not.i = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %.not.i, label %_RNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs2bNgeUs5Jlc_6diesel.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 false), !noalias !8123
  br label %_RNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs2bNgeUs5Jlc_6diesel.exit

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !8124
  unreachable

_RNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.j, %bb.k
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !8124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.v, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.n

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8116
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %_RNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs2bNgeUs5Jlc_6diesel.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite18get_sqlite_version0ENtNtNtB9_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8141)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !132, !alias.scope !8142, !noundef !77
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !8142, !nonnull !77, !noundef !77 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !8142, !noundef !77 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8143)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !8144, !noundef !77 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !8144 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  br i1 %i.j, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCs2bNgeUs5Jlc_6diesel.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !8144 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
end_hunk_0
