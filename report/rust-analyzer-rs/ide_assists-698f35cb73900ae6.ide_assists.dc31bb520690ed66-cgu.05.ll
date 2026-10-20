Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.05?download=true
inline.NumInlined: 5238
inline.NumDeleted: 1067
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31replace_qualified_name_with_use31replace_qualified_name_with_use0B7_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ai = load i8, ptr %i.ah, align 4, !range !22, !noundef !5
  %.sroa.67.0.insert.shift = select i1 %i.w, i32 16777216, i32 0
  %.sroa.56.0.insert.ext = zext nneg i8 %i.ac to i32
  %.sroa.56.0.insert.shift = shl nuw nsw i32 %.sroa.56.0.insert.ext, 16
  %.sroa.56.0.insert.insert = or disjoint i32 %.sroa.56.0.insert.shift, %.sroa.67.0.insert.shift
  %.sroa.45.0.insert.ext = zext nneg i8 %i.aa to i32
  %.sroa.45.0.insert.shift = shl nuw nsw i32 %.sroa.45.0.insert.ext, 8
  %.sroa.45.0.insert.insert = or disjoint i32 %.sroa.56.0.insert.insert, %.sroa.45.0.insert.shift
  %.sroa.04.0.insert.ext = zext nneg i8 %i.y to i32
  %.sroa.04.0.insert.insert = or disjoint i32 %.sroa.45.0.insert.insert, %.sroa.04.0.insert.ext
  call void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module13find_use_pathNtB6_9ModuleDefECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i32 noundef %i.p, i32 noundef %i.o, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @69, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, i8 noundef %i.ai, i32 noundef %.sroa.04.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.i:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31replace_qualified_name_with_use31replace_qualified_name_with_uses0_0B7_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  invoke void @_RNvMse_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes11PathSegment4kind(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.e, ptr %i.c, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noundef !5
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit2

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit2: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17convert_bool_then15is_invalid_body0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEE9call_once6vtableBc_(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.b = trunc nuw i64 %.sroa.0.0.copyload to i1
  %i.c = and i64 %.sroa.2.0.copyload, 62
  %switch.i.i = icmp eq i64 %i.c, 30
  %not..i.i = xor i1 %i.b, true
  %narrow.i.i = select i1 %not..i.i, i1 %switch.i.i, i1 false
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i8
  %i.d = load i8, ptr %i.a, align 1, !range !17, !alias.scope !625, !noalias !626, !noundef !5
  %i.e = or i8 %i.d, %.sroa.0.0.i.i               ; 2 uses
  store i8 %i.e, ptr %i.a, align 1, !alias.scope !625, !noalias !626
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !627, !noundef !5
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !627
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i, label %_RNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17convert_bool_then15is_invalid_body0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEE9call_onceBa_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i: ; preds = %bb.a
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.3.0.copyload) #30, !noalias !627
  br label %_RNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17convert_bool_then15is_invalid_body0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEE9call_onceBa_.exit

_RNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17convert_bool_then15is_invalid_body0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEE9call_onceBa_.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i
  %i.j = trunc nuw i8 %i.e to i1
  ret i1 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17convert_bool_then15is_invalid_bodys_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBc_(ptr nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17convert_bool_then15is_invalid_bodys_0B7_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #33
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type12tail_cb_impl0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBc_(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  tail call void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type12tail_cb_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !noalias !631, !inline_history !630
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoESNtB1x_6ClauseEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %2, 1152921504606846973
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !638
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %2, 1152921504606846973
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !639
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.b = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 24                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoESNtB1A_6ClauseEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoESNtB1A_6ClauseEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 461168601842738791) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp samesign ugt i64 %2, 461168601842738789
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !643
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.a
  %i.b = mul nuw nsw i64 %2, 20                   ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 20
  %i.d = and i64 %i.c, 9223372036854775800        ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.e = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef 8) #34 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.d) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.e, align 8
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %2, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 4 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1D_9predicate20ExistentialPredicateB2q_EEEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp samesign ugt i64 %2, 230584300921369394
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !647
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.a
  %i.b = mul nuw nsw i64 %2, 40                   ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1G_9predicate20ExistentialPredicateB2t_EEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1G_9predicate20ExistentialPredicateB2t_EEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 329406144173384851) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp samesign ugt i64 %2, 329406144173384849
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !651
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.a
  %i.b = mul nuw nsw i64 %2, 28                   ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 20
  %i.d = and i64 %i.c, 9223372036854775800        ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.e = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef 8) #34 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.d) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.e, align 8
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %2, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 4 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2J_11generic_arg10GenericArgEEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i.i = icmp eq i64 %2, 576460752303423487
  br i1 %.not.i.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !655
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.a
  %i.b = shl nuw nsw i64 %2, 4                    ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2M_11generic_arg10GenericArgEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2M_11generic_arg10GenericArgEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1B_5LocalEEEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp samesign ugt i64 %2, 384307168202282324
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !659
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.a
  %i.b = mul nuw nsw i64 %2, 24                   ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1E_5LocalEEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1E_5LocalEEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %2, 9223372036854775792
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !666
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.a
  %3 = add nuw nsw i64 %2, 15
  %4 = and i64 %3, 9223372036854775800
  %.not.i.i.i = icmp samesign ugt i64 %4, 9223372036854775792
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !667
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.b = add nuw i64 %2, 23
  %i.c = and i64 %i.b, -8                         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.not.i.i = icmp eq i64 %2, 1152921504606846975
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !674
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.a
  %.not.i.i.i = icmp samesign ugt i64 %2, 1152921504606846973
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !675
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.b = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.not.i.i = icmp eq i64 %2, 1152921504606846975
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !682
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.a
  %.not.i.i.i = icmp samesign ugt i64 %2, 1152921504606846973
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !683
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.b = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.not.i.i = icmp eq i64 %2, 1152921504606846975
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !690
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.a
  %.not.i.i.i = icmp samesign ugt i64 %2, 1152921504606846973
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !691
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.b = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i.i = icmp eq i64 %2, 576460752303423487
  br i1 %.not.i.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !695
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.a
  %i.b = shl nuw nsw i64 %2, 4                    ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 4 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.not.i.i = icmp eq i64 %2, 1152921504606846975
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !702
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.a
  %.not.i.i.i = icmp samesign ugt i64 %2, 1152921504606846973
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !703
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.b = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs50pZefIA5Ye_8triomphe6headerINtNtB4_3arc3ArcINtB2_11HeaderSliceINtB2_16HeaderWithLengthuESTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2G_2ty2TyEEE21from_header_and_sliceCsiU5vK8fN4ZC_11ide_assists(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp samesign ugt i64 %2, 384307168202282324
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !707
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.a
  %i.b = mul nuw nsw i64 %2, 24                   ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #34 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2J_2ty2TyEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #29
  unreachable

_RNvMs7_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header11HeaderSliceINtBL_16HeaderWithLengthuESTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2J_2ty2TyEEE29allocate_for_header_and_sliceCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultTNtNtNtB4_5alloc6layout6LayoutjENtBK_11LayoutErrorE6unwrapCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  store i64 1, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %1, i64 %i.b, i1 false)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18expand_glob_importNtB2_3Ref14from_scope_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 10 uses
  %i.e = load i32, ptr %3, align 4, !range !714, !noundef !5 ; 2 uses
  %i.f = icmp ne i32 %i.e, 7
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i32 %i.e, 3
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.0.0.copyload = load i8, ptr %i.d, align 4
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.619.0.copyload = load i32, ptr %.sroa.619.0..sroa_idx, align 4 ; 9 uses
  %.sroa.1525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1525.0.copyload = load i32, ptr %.sroa.1525.0..sroa_idx, align 4 ; 9 uses
  %.sroa.2431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.2431.0.copyload = load i32, ptr %.sroa.2431.0..sroa_idx, align 4 ; 3 uses
  switch i8 %.sroa.0.0.copyload, label %default.unreachable1.i [
    i8 0, label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
  ]

default.unreachable1.i:                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.d:                                             ; preds = %bb.b
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.e:                                             ; preds = %bb.b
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.f:                                             ; preds = %bb.b
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.g:                                             ; preds = %bb.b
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.h:                                             ; preds = %bb.b
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.i:                                             ; preds = %bb.b
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.j:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx18, align 2
  %.sroa.4.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx17, align 1
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.k:                                             ; preds = %bb.b
  br label %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit

bb.l:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 2, ptr %i.i, align 8
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %2, i64 -9         ; 5 uses
  %.not1.i.i.i = icmp eq ptr %i.l, null
  %.not.i.i.i = or i1 %.not1.i.i.i, %.not.i.i.i.i
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %i.m = load atomic i64, ptr %i.l acquire, align 8
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.n, label %bb.o, !prof !4

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.o = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !715
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE9drop_slowCs39E2wp1vf7X_6intern(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists.exit

bb.q:                                             ; preds = %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %2) #32
          to label %bb.t unwind label %bb.s

_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.30.sroa.0.0 = phi i32 [ %.sroa.2431.0.copyload, %bb.k ], [ %.sroa.2431.0.copyload, %bb.c ], [ %.sroa.2431.0.copyload, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.b ]
  %.sroa.24.0 = phi i32 [ %.sroa.1525.0.copyload, %bb.k ], [ %.sroa.1525.0.copyload, %bb.c ], [ %.sroa.1525.0.copyload, %bb.d ], [ %.sroa.1525.0.copyload, %bb.e ], [ %.sroa.1525.0.copyload, %bb.f ], [ %.sroa.1525.0.copyload, %bb.g ], [ %.sroa.1525.0.copyload, %bb.h ], [ %.sroa.1525.0.copyload, %bb.i ], [ undef, %bb.j ], [ %.sroa.1525.0.copyload, %bb.b ]
  %.sroa.158.0 = phi i32 [ %.sroa.619.0.copyload, %bb.k ], [ %.sroa.619.0.copyload, %bb.c ], [ %.sroa.619.0.copyload, %bb.d ], [ %.sroa.619.0.copyload, %bb.e ], [ %.sroa.619.0.copyload, %bb.f ], [ %.sroa.619.0.copyload, %bb.g ], [ %.sroa.619.0.copyload, %bb.h ], [ %.sroa.619.0.copyload, %bb.i ], [ undef, %bb.j ], [ %.sroa.619.0.copyload, %bb.b ]
  %.sroa.14.0 = phi i8 [ undef, %bb.k ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.5.0.copyload, %bb.j ], [ undef, %bb.b ]
  %.sroa.13.0 = phi i8 [ undef, %bb.k ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.4.0.copyload, %bb.j ], [ undef, %bb.b ]
  %.sroa.07.0 = phi i8 [ 0, %bb.k ], [ 5, %bb.c ], [ 6, %bb.d ], [ 7, %bb.e ], [ 8, %bb.f ], [ 9, %bb.g ], [ 10, %bb.h ], [ 11, %bb.i ], [ 17, %bb.j ], [ 3, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !align !13, !noundef !5
  invoke void @_RNvXs3_Cs8Xq8PKFYOms_3hirNtB5_9ModuleDefNtB5_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @68)
          to label %bb.r unwind label %bb.q

bb.r:                                             ; preds = %_RNvXs9_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromNtCs8Xq8PKFYOms_3hir9ModuleDefE4from.exit
  %i.t = load i8, ptr %i.c, align 4, !range !22, !noundef !5
  %i.u = icmp eq i8 %i.t, 2
  %i.v = zext i1 %i.u to i8
  store i8 %.sroa.07.0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.13.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.14.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 2
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.158.0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 4
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.24.0, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.30.sroa.0.0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %bb.l, %bb.r
  ret void

bb.s:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.t:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs0_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes10SourceFileE4treeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
