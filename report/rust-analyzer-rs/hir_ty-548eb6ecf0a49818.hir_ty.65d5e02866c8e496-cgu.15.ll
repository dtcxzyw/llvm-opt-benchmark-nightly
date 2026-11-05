Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.15?download=true
inline.NumInlined: 5463
inline.NumDeleted: 1751
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtNtB8_7display10HirDisplay19display_source_codeB8_:bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit.i31 unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i.i30
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i27

.body.i27:                                        ; preds = %bb.ac, %bb.aa
  %eh.lpad-body.i28 = phi { ptr, i32 } [ %i.bs, %bb.ac ], [ %i.bq, %bb.aa ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7AliasTyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %.body unwind label %bb.ad

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit.i31: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit.i.i30
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7AliasTyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty7display12HirFormatterEBF_.exit35 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %.body.i27
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty7display12HirFormatterEBF_.exit35: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty7display12HirFormatterEBF_.exit35
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %bb.ae ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty7display12HirFormatterEBF_.exit35
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.x

bb.ag:                                            ; preds = %bb.y, %bb.i
  unreachable

bb.ah:                                            ; preds = %bb.q, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty3TysNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike3lenB8_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 !guid !11997 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !35
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty3TysNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike4lastB8_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 !guid !11998 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !35 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr [8 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !35, !noundef !35
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty3TysNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike6to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 !guid !12002 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12003)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12004
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.c, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !12004
  %i.e = load i64, ptr %i.a, align 8, !range !56, !noalias !12004, !noundef !35
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !58, !noalias !12004, !noundef !35 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit.i, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !noalias !12004
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #51, !noalias !12004
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !noalias !12004, !nonnull !35, !noundef !35 ; 2 uses
  %i.l = icmp ule i64 %i.c, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12004
  store i64 %i.h, ptr %0, align 8, !alias.scope !12003
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.m, align 8, !alias.scope !12003
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8, !alias.scope !12003
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBS_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.o = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull readonly align 8 %i.d, i64 %i.o, i1 false), !noalias !12003
  store i64 %i.c, ptr %i.n, align 8, !alias.scope !12003
  br label %_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBS_.exit

_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBS_.exit: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty3TysNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike8is_emptyB8_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 !guid !12005 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !35
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver4util18ContainsTypeErrorsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit11TypeVisitorNtNtB6_8interner10DbInternerE11visit_constB8_(ptr noalias nofree noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 !guid !12008 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.copyload.i = load i32, ptr %1, align 8, !noalias !12009
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12009 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !12009 ; 3 uses
  switch i32 %.sroa.01.0.copyload.i, label %bb.b [
    i32 0, label %_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit
    i32 1, label %_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit
    i32 2, label %_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit
    i32 3, label %_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit
    i32 7, label %_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12009
  store ptr %.sroa.42.0.copyload.i, ptr %i.b, align 8, !noalias !12009
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.8..sroa_idx.i, align 8, !noalias !12009
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.8..sroa_idx.i, align 8, !noalias !12009
  %i.c = call noundef zeroext i1 @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10const_kinds_1__INtB5_16UnevaluatedConstNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1l_E10visit_withNtNtB1p_4util18ContainsTypeErrorsEB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12009
  br label %_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12009
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  store ptr %.sroa.42.0.copyload.i, ptr %i.a, align 8, !noalias !12009
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %i.d, align 8, !noalias !12009
  %i.e = call noundef zeroext i1 @_RINvXNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtrees0_1__NtB5_10ValueConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNtB9_4util18ContainsTypeErrorsEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12009
  br label %_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit

_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNtB8_4util18ContainsTypeErrorsEBa_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver4util18ContainsTypeErrorsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit11TypeVisitorNtNtB6_8interner10DbInternerE12visit_regionB8_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #14 !guid !12010 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent5ConstNtNtB6_8interner10DbInternerE9is_ct_varB8_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 !guid !12011 {
  %.sroa.0.0.copyload = load i32, ptr %0, align 8
  %2 = icmp eq i32 %.sroa.0.0.copyload, 1
  br i1 %2, label %bb.a, label %3

bb.a:                                             ; preds = %1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %i.a = trunc nuw i32 %.sroa.4.0.copyload to i1
  %i.b = xor i1 %i.a, true
  br label %3

3:                                                ; preds = %1, %bb.a
  %.sroa.0.0 = phi i1 [ %i.b, %bb.a ], [ false, %1 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstNtNtB8_7display10HirDisplay19display_source_codeB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12016 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [192 x i8], align 8               ; 23 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12017)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !35, !alias.scope !12017, !nonnull !35 ; 2 uses
  %i.i = invoke noundef nonnull align 8 ptr %i.h(ptr noundef nonnull %2) #56
          to label %.noexc unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !78 ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.j = invoke noundef nonnull align 128 ptr @_RNvMs0_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLt11ingredient_(ptr noundef nonnull align 8 %i.i)
          to label %.noexc13 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc13:                                         ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  %i.l = invoke noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 %i.k, i32 noundef range(i32 1, 0) %4, i32 noundef %5)
          to label %.noexc14 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc14:                                         ; preds = %.noexc13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.n = load i64, ptr %i.m, align 8, !range !43, !noalias !12017, !noundef !35 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.noexc17, %.noexc14
  %i.p = invoke noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.o)
          to label %.noexc15 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc15:                                         ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !34

bb.c:                                             ; preds = %.noexc15
  %i.q = icmp eq i64 %i.p, %i.n
  br i1 %i.q, label %bb.f, label %bb.e

bb.d:                                             ; preds = %.noexc15
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @315, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316) #54
          to label %.noexc16 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = invoke { i64, i64 } @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr noundef nonnull align 8 %i.o, i64 noundef %i.p, i64 noundef range(i64 1, 0) %i.n)
          to label %.noexc17 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.e
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.b

.body:                                            ; preds = %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i27, %.body.i, %bb.q, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bk, %bb.q ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i28, %.body.i27 ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #52
          to label %common.resume unwind label %bb.ah

.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit.i31, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.d, %.noexc13, %.noexc, %bb.a, %bb.i, %bb.g, %bb.f
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %.noexc17, %bb.c
  %i.u = load i32, ptr %i.l, align 8, !range !38, !noalias !12017, !noundef !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.w = load i32, ptr %i.v, align 4, !noalias !12017, !noundef !35
  invoke void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner8new_with(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, i32 noundef %i.u, i32 noundef %i.w)
          to label %bb.g unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.a, align 8, !range !56, !noundef !35
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !58, !noundef !35 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.ab, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #51
          to label %bb.ag unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !35, !noundef !35
  %i.ae = icmp samesign ugt i64 %i.aa, 19
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.aa, ptr %i.c, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ad, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = invoke noundef nonnull align 8 ptr %i.h(ptr noundef nonnull %2) #56
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !78 ; 3 uses

.noexc19:                                         ; preds = %bb.j
  %i.ag = invoke noundef nonnull align 128 ptr @_RNvMs0_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLt11ingredient_(ptr noundef nonnull align 8 %i.af)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc20:                                         ; preds = %.noexc19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 328
  %i.ai = invoke noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 %i.ah, i32 noundef range(i32 1, 0) %4, i32 noundef %5)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc21:                                         ; preds = %.noexc20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.ak = load i64, ptr %i.aj, align 8, !range !43, !noalias !12018, !noundef !35 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.noexc24, %.noexc21
  %i.am = invoke noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.al)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc22:                                         ; preds = %bb.k
  %.not.i.i.i18 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i18, label %bb.m, label %bb.l, !prof !34

bb.l:                                             ; preds = %.noexc22
  %i.an = icmp eq i64 %i.am, %i.ak
  br i1 %i.an, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.noexc22
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @315, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316) #54
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ao = invoke { i64, i64 } @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr noundef nonnull align 8 %i.al, i64 noundef %i.am, i64 noundef range(i64 1, 0) %i.ak)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.n
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %bb.k

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k, %bb.m, %.noexc20, %.noexc19, %bb.j, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %.body unwind label %bb.ah

bb.o:                                             ; preds = %.noexc24, %bb.l
  %i.ar = load i32, ptr %i.ai, align 8, !range !38, !noalias !12018, !noundef !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noalias !12018, !noundef !35
  invoke void @_RNvMs2_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_13DisplayTarget10from_crate(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, i32 noundef %i.ar, i32 noundef %i.at)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.au = zext i1 %6 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %3, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.f, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr @802, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store i64 0, ptr %i.bb, align 8
  store i64 0, ptr %i.d, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  store i8 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 189
  store i8 3, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 160
end_hunk_0
