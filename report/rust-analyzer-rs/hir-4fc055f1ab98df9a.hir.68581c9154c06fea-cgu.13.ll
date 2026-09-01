Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.13?download=true
inline.NumInlined: 1152
inline.NumDeleted: 749
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtCscFGNKo4Sl5v_9itertools11groupbylazyINtB5_7ChunkByRNtCsileJQcQObtj_7hir_def7MacroIdINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameBX_INtCs83ee1IJTiSq_6either6EitherNtB2e_11MacroCallIdNtBZ_19BuiltinDeriveImplIdEEENCNvMNtCs8Xq8PKFYOms_3hir15source_analyzerNtB4d_14SourceAnalyzer12resolve_pathsb_0E4stepB4f_:bb.a
bb.o:                                             ; preds = %bb.e, %bb.c
  %i.aw = invoke noundef align 8 ptr @_RNvMs2_NtCscFGNKo4Sl5v_9itertools11groupbylazyINtB5_10GroupInnerRNtCsileJQcQObtj_7hir_def7MacroIdINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameB11_INtCs83ee1IJTiSq_6either6EitherNtB2i_11MacroCallIdNtB13_19BuiltinDeriveImplIdEEENCNvMNtCs8Xq8PKFYOms_3hir15source_analyzerNtB4j_14SourceAnalyzer12resolve_pathsb_0E13lookup_bufferB4l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, i64 noundef %1) #34
          to label %_RNvMs2_NtCscFGNKo4Sl5v_9itertools11groupbylazyINtB5_10GroupInnerRNtCsileJQcQObtj_7hir_def7MacroIdINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameB11_INtCs83ee1IJTiSq_6either6EitherNtB2i_11MacroCallIdNtB13_19BuiltinDeriveImplIdEEENCNvMNtCs8Xq8PKFYOms_3hir15source_analyzerNtB4j_14SourceAnalyzer12resolve_pathsb_0E4stepB4l_.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #30
  unreachable

_RNvMs2_NtCscFGNKo4Sl5v_9itertools11groupbylazyINtB5_10GroupInnerRNtCsileJQcQObtj_7hir_def7MacroIdINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameB11_INtCs83ee1IJTiSq_6either6EitherNtB2i_11MacroCallIdNtB13_19BuiltinDeriveImplIdEEENCNvMNtCs8Xq8PKFYOms_3hir15source_analyzerNtB4j_14SourceAnalyzer12resolve_pathsb_0E4stepB4l_.exit: ; preds = %bb.f, %bb.b, %.thread, %bb.g, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtCsileJQcQObtj_7hir_def7MacroIdNtB7_9PartialEq2neCs8Xq8PKFYOms_3hir.exit.thread.i, %bb.n, %bb.j, %bb.h, %bb.o
  %.sroa.0.0.i = phi ptr [ null, %.thread ], [ null, %bb.j ], [ null, %bb.b ], [ %i.x, %bb.g ], [ null, %bb.f ], [ %i.z, %bb.h ], [ null, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtCsileJQcQObtj_7hir_def7MacroIdNtB7_9PartialEq2neCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %i.ab, %bb.n ], [ %i.aw, %bb.o ]
  %i.ax = load i64, ptr %0, align 8, !noundef !4
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %0, align 8
  ret ptr %.sroa.0.0.i

bb.q:                                             ; preds = %bb.g, %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i64, ptr %0, align 8, !noundef !4
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %0, align 8
  resume { ptr, i32 } %i.az
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -2, 4) i8 @_RNvNtCs8Xq8PKFYOms_3hir7display12write_fields(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i64 noundef %4, i1 noundef zeroext %5, ptr noalias nofree noundef align 8 dereferenceable(192) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %1) ; 2 uses
  %. = select i1 %5, ptr inttoptr (i64 1 to ptr), ptr @78 ; 2 uses
  %.57 = select i1 %5, i64 0, i64 4               ; 2 uses
  %.58 = select i1 %5, i32 32, i32 10             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %., ptr %i.d, align 8, !captures !499
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.57, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.58, ptr %i.c, align 4
  %.sroa.05.0 = select i1 %3, i32 %.58, i32 32
  %i.f = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6, i32 noundef %.sroa.05.0) ; 2 uses
  %.not48 = icmp eq i8 %i.f, -2
  br i1 %.not48, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %..i, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i64 %1, 0
  %brmerge = or i1 %i.h, %2                       ; 2 uses
  %.59 = select i1 %brmerge, i64 13, i64 2
  %.60 = select i1 %brmerge, ptr @80, ptr @79
  %i.i = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.60, i64 noundef %.59) ; 2 uses
  %.not = icmp eq i8 %i.i, -2
  br i1 %.not, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6, i32 noundef 123) ; 2 uses
  %.not49 = icmp eq i8 %i.j, -2
  br i1 %.not49, label %bb.g, label %.loopexit

bb.e:                                             ; preds = %bb.f, %bb.c
  br label %.loopexit

bb.f:                                             ; preds = %bb.l, %._crit_edge
  %i.k = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 1) ; 2 uses
  %.not56 = icmp eq i8 %i.k, -2
  br i1 %.not56, label %bb.e, label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.l = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6, i32 noundef %.58) ; 2 uses
  %.not50 = icmp eq i8 %i.l, -2
  br i1 %.not50, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %.idx = shl nuw nsw i64 %..i, 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.016.061 = phi ptr [ %0, %.lr.ph ], [ %i.n, %bb.k ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.061, i64 16 ; 2 uses
  %i.o = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef %.57) ; 2 uses
  %.not52 = icmp eq i8 %i.o, -2
  br i1 %.not52, label %bb.i, label %.loopexit

._crit_edge:                                      ; preds = %bb.k
  %i.p = icmp ult i64 %4, %1
  %brmerge1 = or i1 %2, %i.p
  br i1 %brmerge1, label %bb.l, label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.q = call noundef i8 @_RNvXs4_NtCs8Xq8PKFYOms_3hir7displayNtB7_5FieldNtNtCs8K4cjrcxBsw_6hir_ty7display10HirDisplay7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %.sroa.016.061, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6) ; 2 uses
  %.not53 = icmp eq i8 %i.q, -2
  br i1 %.not53, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  %i.r = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6, ptr noundef nonnull @81, ptr noundef nonnull %i.b) ; 2 uses
  %.not54 = icmp eq i8 %i.r, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not54, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.s = icmp eq ptr %i.n, %i.m
  br i1 %i.s, label %._crit_edge, label %bb.h

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8Xq8PKFYOms_3hir, ptr %.sroa.439.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.t, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.u = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %6, ptr noundef nonnull @82, ptr noundef nonnull %i.a) ; 2 uses
  %.not55 = icmp eq i8 %i.u, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not55, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.j, %bb.a, %bb.c, %bb.d, %bb.g, %bb.f, %bb.l, %bb.e
  %.sroa.0.1 = phi i8 [ -2, %bb.e ], [ %i.l, %bb.g ], [ %i.f, %bb.a ], [ %i.i, %bb.c ], [ %i.k, %bb.f ], [ %i.j, %bb.d ], [ %i.u, %bb.l ], [ %i.o, %bb.h ], [ %i.q, %bb.i ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i8 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs8Xq8PKFYOms_3hir7display14visible_fields(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(192) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 185
  %i.h = load i8, ptr %i.g, align 1, !range !369, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.l = load i64, ptr %1, align 8, !range !52, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %i.n, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %.idx = shl nuw nsw i64 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !5, !noundef !4
  %.not9.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not9.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EEB1N_.exit.i, %bb.d
  %.val12.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EEB1N_.exit.i ], [ %i.l, %bb.d ]
  %.val11.i = phi ptr [ inttoptr (i64 4 to ptr), %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EEB1N_.exit.i ], [ %i.k, %bb.d ]
  %.pn.i = phi { ptr, i32 } [ %i.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EEB1N_.exit.i ], [ %i.v, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !579
  store i64 %.val12.i, ptr %i.f, align 8, !noalias !579
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.val11.i, ptr %i.u, align 8, !noalias !579
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.i unwind label %bb.h, !noalias !585

bb.d:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.0 = phi i8 [ 0, %.lr.ph.i.i.i.i ], [ %i.ab, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i ]
  %i.y = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.z, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.010.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %.pn6.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !noalias !586
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !noalias !586
  store ptr %.sroa.4.010.i.i.i.i, ptr %i.w, align 8, !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !594
  invoke void @_RNvXs9_Cs8Xq8PKFYOms_3hirNtB5_5FieldNtB5_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.t)
          to label %.noexc.i unwind label %bb.d, !noalias !585

.noexc.i:                                         ; preds = %bb.e
  %.val.i.i.i.i.i.i = load i8, ptr %i.d, align 4, !range !450, !noalias !594, !noundef !4 ; 2 uses
  %3 = icmp eq i8 %.val.i.i.i.i.i.i, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !594
  %4 = icmp ne i8 %.val.i.i.i.i.i.i, 2
  %i.aa = zext i1 %4 to i8
  %i.ab = or i8 %.sroa.0.0, %i.aa                 ; 2 uses
  br i1 %3, label %bb.f, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.010.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.x, i64 16, i1 false), !noalias !586
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i, i64 16
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i: ; preds = %bb.f, %.noexc.i
  %.pn6.i.i.i.i.i = phi ptr [ %i.ac, %bb.f ], [ %.sroa.4.010.i.i.i.i, %.noexc.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !586
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.p
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %bb.e

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i, %bb.b
  %.sroa.0.1 = phi i8 [ 0, %bb.b ], [ %i.ab, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i ]
  %.sroa.4.0.lcssa.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ %.pn6.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir5FieldINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1v_zENCNvNtB17_7display14visible_fields0NCINvNtB1A_16in_place_collect24write_in_place_with_dropB15_E0E0B17_.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !600
  store i64 0, ptr %i.c, align 8, !noalias !600
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ad, align 8, !noalias !600
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtB2t_7display14visible_fields0EB2r_EB2t_.exit unwind label %bb.g, !noalias !585

bb.g:                                             ; preds = %.loopexit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !585
  store i64 %i.l, ptr %i.b, align 8, !noalias !585
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.af, align 8, !noalias !585
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EEB1N_.exit.i unwind label %bb.h, !noalias !585

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EEB1N_.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !585
  br label %bb.c

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !585
  unreachable

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !579
  resume { ptr, i32 } %.pn.i

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtB2t_7display14visible_fields0EB2r_EB2t_.exit: ; preds = %.loopexit.i
  %i.ah = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i to i64
  %i.ai = ptrtoint ptr %i.k to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !603
  store i64 0, ptr %i.a, align 8, !noalias !603
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.al, align 8, !noalias !603
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !603
  store i64 %i.l, ptr %0, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx5, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtB2t_7display14visible_fields0EB2r_EB2t_.exit
  %.sink = phi i8 [ 0, %bb.j ], [ %.sroa.0.1, %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtB2t_7display14visible_fields0EB2r_EB2t_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.am, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvNtCs8Xq8PKFYOms_3hir7display14write_function(ptr noalias nofree noundef align 8 dereferenceable(192) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [16 x i8], align 4                ; 8 uses
  %i.f = alloca [12 x i8], align 4                ; 6 uses
  %i.g = alloca [12 x i8], align 4                ; 5 uses
  %i.h = alloca [96 x i8], align 8                ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 15 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 4                ; 11 uses
  %i.n = alloca [12 x i8], align 4                ; 4 uses
  %i.o = alloca [12 x i8], align 4                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [12 x i8], align 4                ; 4 uses
  %i.u = alloca [12 x i8], align 4                ; 4 uses
  %i.v = alloca [12 x i8], align 4                ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !5, !noundef !4 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 0, ptr %i.v, align 4
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %1, ptr %.sroa.499.0..sroa_idx, align 4
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %.sroa.5100.0..sroa_idx, align 4
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs1z_NtCsileJQcQObtj_7hir_def10signaturesNtB6_17FunctionSignature2of(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.z, i32 noundef %1, i32 noundef %2) ; 14 uses
  %i.ab = call { i32, i32 } @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function6module(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.v, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.z) ; 2 uses
  %i.ac = extractvalue { i32, i32 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { i32, i32 } %i.ab, 1      ; 2 uses
  %i.ae = tail call noundef nonnull align 4 ptr @_RINvMs9_NvCsileJQcQObtj_7hir_defs_1__NtB8_10FunctionId3locDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_ECs8Xq8PKFYOms_3hir(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.z)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !range !606, !noundef !4
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = tail call { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module24nearest_non_block_module(i32 noundef %i.ac, i32 noundef %i.ad, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.z) ; 2 uses
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  %i.ak = extractvalue { i32, i32 } %i.ai, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i32 [ %i.ak, %bb.b ], [ %i.ad, %bb.a ]
  %.sroa.01.0 = phi i32 [ %i.aj, %bb.b ], [ %i.ac, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXsv_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.v, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.z)
  %i.al = call noundef i8 @_RNvNtCs8K4cjrcxBsw_6hir_ty7display16write_visibility(i32 noundef %.sroa.01.0, i32 noundef %.sroa.4.0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not = icmp eq i8 %i.al, -2
  br i1 %.not, label %bb.d, label %bb.cs

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 154 ; 6 uses
  %i.an = load i16, ptr %i.am, align 2, !noundef !4 ; 2 uses
  %i.ao = and i16 %i.an, 4
  %.not123 = icmp eq i16 %i.ao, 0
  br i1 %.not123, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ap = phi i16 [ %.pre, %._crit_edge ], [ %i.an, %bb.d ] ; 2 uses
  %i.aq = and i16 %i.ap, 8
  %.not125 = icmp eq i16 %i.aq, 0
  br i1 %.not125, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ar = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 8) ; 2 uses
  %.not124 = icmp eq i8 %i.ar, -2
  br i1 %.not124, label %._crit_edge, label %bb.cs

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i16, ptr %i.am, align 2
  br label %bb.e

bb.g:                                             ; preds = %._crit_edge257, %bb.e
  %i.as = phi i16 [ %.pre258, %._crit_edge257 ], [ %i.ap, %bb.e ] ; 2 uses
  %i.at = and i16 %i.as, 16
  %.not127 = icmp eq i16 %i.at, 0
  br i1 %.not127, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.au = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 6) ; 2 uses
  %.not126 = icmp eq i8 %i.au, -2
  br i1 %.not126, label %._crit_edge257, label %bb.cs

._crit_edge257:                                   ; preds = %bb.h
  %.pre258 = load i16, ptr %i.am, align 2
  br label %bb.g

bb.i:                                             ; preds = %._crit_edge259, %bb.g
  %i.av = phi i16 [ %.pre260, %._crit_edge259 ], [ %i.as, %bb.g ]
  %i.aw = and i16 %i.av, 32
  %.not129 = icmp eq i16 %i.aw, 0
  br i1 %.not129, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ax = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 6) ; 2 uses
  %.not128 = icmp eq i8 %i.ax, -2
  br i1 %.not128, label %._crit_edge259, label %bb.cs

._crit_edge259:                                   ; preds = %bb.j
  %.pre260 = load i16, ptr %i.am, align 2
  br label %bb.i

bb.k:                                             ; preds = %bb.l, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 2, ptr %i.t, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.az = load i8, ptr %i.ay, align 4, !range !473, !noundef !4
  %i.ba = call noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function17is_unsafe_to_call(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.v, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.t, i8 noundef %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.ba, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bb = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 4) ; 2 uses
end_hunk_0
