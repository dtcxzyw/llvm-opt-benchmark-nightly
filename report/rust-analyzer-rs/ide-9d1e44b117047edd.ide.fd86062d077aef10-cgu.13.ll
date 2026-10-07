Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.13?download=true
inline.NumInlined: 2499
inline.NumDeleted: 1027
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_elemINtNtCshzWfHUSfYae_4core6option6OptionTjyEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECslLuZgPVt6hg_3ide:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core6option6OptionTjyEEE11extend_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslLuZgPVt6hg_3ide.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionTjyEEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #43
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslLuZgPVt6hg_3ide.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtrees0_1__NtB5_10ValueConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withINtNvMs1x_Cs8Xq8PKFYOms_3hirNtB39_4Type4walk7VisitorNCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_00EEB3X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvXNvMs1x_Cs8Xq8PKFYOms_3hirNtB9_4Type4walkINtB2_7VisitorNCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_00EINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit11TypeVisitorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8visit_tyB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10const_kinds4_1__INtB5_11ValTreeKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1h_E10visit_withINtNvMs1x_Cs8Xq8PKFYOms_3hirNtB3b_4Type4walk7VisitorNCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_00EEB3Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtrees0_1__NtB5_10ValueConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withINtNvMs1x_Cs8Xq8PKFYOms_3hirNtB39_4Type4walk7VisitorNCNvNtCslLuZgPVt6hg_3ide5hover16walk_and_push_ty0EEB3V_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvXNvMs1x_Cs8Xq8PKFYOms_3hirNtB9_4Type4walkINtB2_7VisitorNCNvNtCslLuZgPVt6hg_3ide5hover16walk_and_push_ty0EINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit11TypeVisitorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8visit_tyB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10const_kinds4_1__INtB5_11ValTreeKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1h_E10visit_withINtNvMs1x_Cs8Xq8PKFYOms_3hirNtB3b_4Type4walk7VisitorNCNvNtCslLuZgPVt6hg_3ide5hover16walk_and_push_ty0EEB3X_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2N_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB3T_3ast9generated5nodes4ExprNtB4W_3PatEEENCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints13implicit_drop5hints0EB5Q_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 4 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted = load ptr, ptr %1, align 8          ; 2 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.e = phi ptr [ %i.f, %.backedge ], [ %.promoted, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  store ptr %i.f, ptr %1, align 8
  %.val1 = load i32, ptr %i.e, align 4, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !175
  call void @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap10pat_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %2, i32 noundef %.val1), !noalias !175
  %i.g = load i32, ptr %i.a, align 4, !range !22, !noalias !175, !noundef !5
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %.critedge, label %_RNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints13implicit_drop5hints0B7_.exit

.critedge:                                        ; preds = %.lr.ph
  store i32 2, ptr %0, align 4, !alias.scope !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !175
  br label %.backedge

_RNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints13implicit_drop5hints0B7_.exit: ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.a, i64 24, i1 false)
  %.pr = load i32, ptr %0, align 4
  %i.i = icmp eq i32 %.pr, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !175
  br i1 %i.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %_RNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints13implicit_drop5hints0B7_.exit, %.critedge
  %i.j = icmp eq ptr %i.f, %i.c
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_RNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints13implicit_drop5hints0B7_.exit, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store i32 2, ptr %0, align 4
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2Z_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_7PatListINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtB7_10DbInternerE10visit_withINtNvMs1x_Cs8Xq8PKFYOms_3hirNtB2I_4Type4walk7VisitorNCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_00EEB3w_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.h, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  %i.i = load ptr, ptr %.sroa.0.03, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !178
  call void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7pattern1__INtB5_11PatternKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1a_E10visit_withINtNvMs1x_Cs8Xq8PKFYOms_3hirNtB34_4Type4walk7VisitorNCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_00EEB3S_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !178
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2Z_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_7PatListINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtB7_10DbInternerE10visit_withINtNvMs1x_Cs8Xq8PKFYOms_3hirNtB2I_4Type4walk7VisitorNCNvNtCslLuZgPVt6hg_3ide5hover16walk_and_push_ty0EEB3u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.h, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  %i.i = load ptr, ptr %.sroa.0.03, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !181
  call void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7pattern1__INtB5_11PatternKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1a_E10visit_withINtNvMs1x_Cs8Xq8PKFYOms_3hirNtB34_4Type4walk7VisitorNCNvNtCslLuZgPVt6hg_3ide5hover16walk_and_push_ty0EEB3Q_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !181
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs3_NtCsjJXvCMGntp8_6syntax3ptrINtB6_6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB8_3ast9generated5nodes4ExprNtB1h_3PatEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !range !23, !noundef !5
  %i.c = zext nneg i16 %i.b to i64
  %i.d = load i64, ptr %1, align 8, !alias.scope !186, !noundef !5
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %0, align 4, !noundef !5
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !5
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  store i64 %i.o, ptr %1, align 8, !alias.scope !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs3_NtCsjJXvCMGntp8_6syntax3ptrINtB6_6AstPtrNtNtNtNtB8_3ast9generated5nodes4MetaENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !range !23, !noundef !5
  %i.c = zext nneg i16 %i.b to i64
  %i.d = load i64, ptr %1, align 8, !alias.scope !192, !noundef !5
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %0, align 4, !noundef !5
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !5
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  store i64 %i.o, ptr %1, align 8, !alias.scope !193
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXso_NtCs474hSbRjvii_8arrayvec8arrayvecINtB6_8ArrayVecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBT_E9from_iterINtNtNtB22_8adapters5chain5ChainINtNtB24_6option8IntoIterBT_EB3F_EEBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [80 x i8], align 8                ; 17 uses
  %.sroa.8.i = alloca [72 x i8], align 8          ; 13 uses
  %i.b = alloca [160 x i8], align 8               ; 8 uses
  %i.c = alloca [168 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(160) %1, i64 160, i1 false), !alias.scope !224, !noalias !222
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 8 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %.sroa.0.0.ptr.i.peel = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.g = load i64, ptr %i.b, align 8, !range !16, !alias.scope !226, !noalias !227, !noundef !5 ; 3 uses
  %.not.i.i.i.peel = icmp eq i64 %i.g, -3
  br i1 %.not.i.i.i.peel, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.i.i.peel

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.i.i.peel: ; preds = %.peel.begin
  %.not6.i.i.i.peel = icmp eq i64 %i.g, -2        ; 2 uses
  %spec.store.select.i.i.i.peel = select i1 %.not6.i.i.i.peel, i64 -3, i64 -2
  store i64 %spec.store.select.i.i.i.peel, ptr %i.b, align 8, !alias.scope !226, !noalias !227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  br i1 %.not6.i.i.i.peel, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.thread9.i.peel

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.thread9.i.peel: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !222
  br label %.peel.next

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.i.i.peel, %.peel.begin
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.h = load i64, ptr %i.d, align 8, !range !16, !alias.scope !230, !noalias !231, !noundef !5 ; 3 uses
  %.not.i.i.i.i.peel = icmp eq i64 %i.h, -3
  br i1 %.not.i.i.i.i.peel, label %bb.e, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !222
  store i64 -2, ptr %i.d, align 8, !alias.scope !232, !noalias !233
  %.not.i.peel = icmp eq i64 %i.h, -2
  br i1 %.not.i.peel, label %bb.e, label %.peel.next

.peel.next:                                       ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.thread9.i.peel, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel
  %.not.i.i.i.peel6 = phi i1 [ false, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.thread9.i.peel ], [ true, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel ]
  %.sroa.03.112.i.peel = phi i64 [ %i.g, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.thread9.i.peel ], [ %i.h, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  store i64 %.sroa.03.112.i.peel, ptr %i.a, align 8, !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i, i64 72, i1 false), !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.ptr.i.peel, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.sroa.0.0.ptr.i.peel5.a = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  br i1 %.not.i.i.i.peel6, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel11, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.i.i.peel7

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.i.i.peel7: ; preds = %.peel.next
  store i64 -3, ptr %i.b, align 8, !alias.scope !226, !noalias !236
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel11

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel11: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.i.i.peel7, %.peel.next
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.i = load i64, ptr %i.d, align 8, !range !16, !alias.scope !230, !noalias !239, !noundef !5 ; 3 uses
  %.not.i.i.i.i.peel12 = icmp eq i64 %i.i, -3
  br i1 %.not.i.i.i.i.peel12, label %bb.e, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel13

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel13: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel11
  store i64 -2, ptr %i.d, align 8, !alias.scope !240, !noalias !233
  %.not.i.peel14 = icmp eq i64 %i.i, -2
  br i1 %.not.i.peel14, label %bb.e, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel24

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel24: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  store i64 %i.i, ptr %i.a, align 8, !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.ptr.i.peel5.a, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.j = load i64, ptr %i.d, align 8, !range !16, !alias.scope !230, !noalias !243, !noundef !5 ; 3 uses
  %.not.i.i.i.i.peel25 = icmp eq i64 %i.j, -3
  br i1 %.not.i.i.i.i.peel25, label %bb.e, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel26

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel26: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel24
  store i64 -2, ptr %i.d, align 8, !alias.scope !244, !noalias !233
  %.not.i.peel27 = icmp eq i64 %i.j, -2
  br i1 %.not.i.peel27, label %bb.e, label %bb.a

bb.a:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  store i64 %i.j, ptr %i.a, align 8, !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  invoke void @_RNvNtCs474hSbRjvii_8arrayvec8arrayvec12extend_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %.peel.next17 unwind label %bb.c, !noalias !223

.peel.next17:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.promoted = load i64, ptr %i.d, align 8, !alias.scope !245, !noalias !233 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %.off.peel = add i64 %.promoted, 3
  %switch.peel = icmp ult i64 %.off.peel, 2
  br i1 %switch.peel, label %.loopexit, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel.next

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel.next: ; preds = %.peel.next17
  %.sroa.0.0.ptr.i.peel47 = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  store i64 %.promoted, ptr %i.a, align 8, !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.ptr.i.peel47, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  br label %.loopexit

bb.b:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1d_EEB1F_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b) #43
          to label %.body unwind label %bb.d, !noalias !223

bb.c:                                             ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.a) #43
          to label %bb.b unwind label %bb.d, !noalias !223

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !223
  unreachable

.body:                                            ; preds = %bb.b
  store i32 2, ptr %i.c, align 8, !alias.scope !222, !noalias !234
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetKj2_EEB1p_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.c) #43
          to label %bb.g unwind label %bb.f

.loopexit:                                        ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel.next, %.peel.next17
  %.lcssa = phi i64 [ %.promoted, %.peel.next17 ], [ -2, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel.next ]
  %.sroa.5.0.i.lcssa45 = phi i32 [ 3, %.peel.next17 ], [ 4, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel.next ]
  store i64 %.lcssa, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel26, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel24, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel13, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel11, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel
  %.sroa.5.0.i.lcssa = phi i32 [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel24 ], [ 2, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel26 ], [ 0, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1w_.exit.thread.i.i.peel11 ], [ 1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1r_.exit.i.peel13 ], [ %.sroa.5.0.i.lcssa45, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  store i32 %.sroa.5.0.i.lcssa, ptr %i.c, align 8, !alias.scope !222, !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.c, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsu_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokensNtB6_7CommentNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.0.0.i = load ptr, ptr %i.a, align 8, !noalias !252, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !13, !noalias !252, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.f = load i32, ptr %i.e, align 8, !noalias !252, !noundef !5
  br label %_RINvXse_NtCs9GitHPCrz2Q_5rowan6cursorNtB6_11SyntaxTokenNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val), !noalias !252
  br label %_RINvXse_NtCs9GitHPCrz2Q_5rowan6cursorNtB6_11SyntaxTokenNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECslLuZgPVt6hg_3ide.exit

_RINvXse_NtCs9GitHPCrz2Q_5rowan6cursorNtB6_11SyntaxTokenNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i32 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  %i.h = ptrtoint ptr %.sroa.0.0.i to i64
  %i.i = load i64, ptr %1, align 8, !alias.scope !253, !noundef !5
  %i.j = add i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -1065810590584100411
  %i.l = zext i32 %.sroa.01.0.i to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = mul i64 %i.m, -1065810590584100411
  store i64 %i.n, ptr %1, align 8, !alias.scope !254
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not31 = icmp eq ptr %i.b, null
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0CslLuZgPVt6hg_3ide.exit
  %i.c = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0CslLuZgPVt6hg_3ide.exit ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !5
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i.i unwind label %bb.s

bb.d:                                             ; preds = %.lr.ph
  switch i16 %i.d, label %bb.e [
    i16 181, label %.loopexit11
    i16 192, label %.loopexit32
    i16 195, label %.loopexit54
    i16 213, label %.loopexit74
    i16 231, label %.loopexit94
    i16 237, label %bb.t
    i16 251, label %bb.g
    i16 253, label %bb.h
    i16 258, label %bb.i
    i16 263, label %bb.j
    i16 270, label %bb.k
    i16 276, label %bb.l
    i16 280, label %bb.m
    i16 283, label %bb.n
    i16 288, label %bb.o
    i16 302, label %bb.p
    i16 303, label %bb.q
    i16 325, label %bb.r
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !5
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0CslLuZgPVt6hg_3ide.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #41
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0CslLuZgPVt6hg_3ide.exit

bb.g:                                             ; preds = %bb.d
  br label %bb.t

bb.h:                                             ; preds = %bb.d
  br label %bb.t

bb.i:                                             ; preds = %bb.d
  br label %bb.t

bb.j:                                             ; preds = %bb.d
  br label %bb.t

bb.k:                                             ; preds = %bb.d
  br label %bb.t

bb.l:                                             ; preds = %bb.d
  br label %bb.t

bb.m:                                             ; preds = %bb.d
  br label %bb.t

bb.n:                                             ; preds = %bb.d
  br label %bb.t

bb.o:                                             ; preds = %bb.d
  br label %bb.t

bb.p:                                             ; preds = %bb.d
  br label %bb.t

bb.q:                                             ; preds = %bb.d
  br label %bb.t

bb.r:                                             ; preds = %bb.d
  br label %bb.t

bb.s:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0CslLuZgPVt6hg_3ide.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit11:                                      ; preds = %bb.d
  br label %bb.t

.loopexit32:                                      ; preds = %bb.d
  br label %bb.t

.loopexit54:                                      ; preds = %bb.d
  br label %bb.t

.loopexit74:                                      ; preds = %bb.d
  br label %bb.t

.loopexit94:                                      ; preds = %bb.d
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %.loopexit94, %.loopexit74, %.loopexit54, %.loopexit32, %.loopexit11, %bb.r, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i.i.i.ph = phi i64 [ 17, %bb.r ], [ 16, %bb.q ], [ 15, %bb.p ], [ 14, %bb.o ], [ 13, %bb.n ], [ 12, %bb.m ], [ 11, %bb.l ], [ 10, %bb.k ], [ 9, %bb.j ], [ 8, %bb.i ], [ 7, %bb.h ], [ 6, %bb.g ], [ 4, %.loopexit94 ], [ 3, %.loopexit74 ], [ 2, %.loopexit54 ], [ 1, %.loopexit32 ], [ 0, %.loopexit11 ], [ 5, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0CslLuZgPVt6hg_3ide.exit, %bb.a, %bb.t
  %i.p = phi ptr [ %i.c, %bb.t ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0CslLuZgPVt6hg_3ide.exit ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i.ph, %bb.t ], [ -1, %bb.a ], [ -1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0CslLuZgPVt6hg_3ide.exit ]
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.p, 1
  ret { i64, ptr } %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes10GenericArgENtCscFGNKo4Sl5v_9itertools9Itertools13array_windowsKj2_ECslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 24)) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  store i64 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.b, align 8
end_hunk_0
