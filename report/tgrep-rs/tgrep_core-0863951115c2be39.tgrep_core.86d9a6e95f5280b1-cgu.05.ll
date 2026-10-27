Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.05?download=true
inline.NumInlined: 1022
inline.NumDeleted: 483
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsbzNSmZPCnTx_10tgrep_core6walker18exceeds_size_limitNtCs30WoLBgco1_6ignore5ErrorNCNCNCNvB2_24walk_dir_with_ignorecases0_00s0_0EB4_:bb.a
  %i.f = load i64, ptr %i.e, align 8, !noalias !337, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !337
  br label %bb.f

_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases0_00s0_0B9_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload2 = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload4 = load i64, ptr %.sroa.6.0..sroa_idx3, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !337
  %.not = icmp eq i64 %.sroa.0.0.copyload2, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases0_00s0_0B9_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 %.sroa.0.0.copyload2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.copyload4, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases0_00s0_0B9_.exit.thread, %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases0_00s0_0B9_.exit
  %.sroa.6.010 = phi i64 [ %i.f, %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases0_00s0_0B9_.exit.thread ], [ %.sroa.6.0.copyload4, %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases0_00s0_0B9_.exit ]
  %i.i = icmp ugt i64 %.sroa.6.010, %2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbzNSmZPCnTx_10tgrep_core6walker18exceeds_size_limitNtCs30WoLBgco1_6ignore5ErrorNCNCNCNvB2_34walk_file_metadata_with_ignorecases0_00s0_0EB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 9)) %0, i64 noundef range(i64 0, 2) %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 9 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 4 uses
  %i.b = trunc nuw i64 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  call void @_RNvMNtCs30WoLBgco1_6ignore4walkNtB2_8DirEntry8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %3), !noalias !340
  %i.c = load i64, ptr %i.a, align 8, !range !7, !noalias !340, !noundef !4
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit, label %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit.thread

_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit.thread: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = load i64, ptr %i.e, align 8, !noalias !340, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  br label %bb.f

_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload2 = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload4 = load i64, ptr %.sroa.6.0..sroa_idx3, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  %.not = icmp eq i64 %.sroa.0.0.copyload2, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 %.sroa.0.0.copyload2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.copyload4, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit.thread, %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit
  %.sroa.6.010 = phi i64 [ %i.f, %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit.thread ], [ %.sroa.6.0.copyload4, %_RNCNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_00s0_0B9_.exit ]
  %i.i = icmp ugt i64 %.sroa.6.010, %2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !343, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !343, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !343 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !343 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g, !noalias !343

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !9, !invariant.load !4, !noalias !343 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !4, !noalias !343
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #31, !noalias !343
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !9, !invariant.load !4, !noalias !343 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !10, !invariant.load !4, !noalias !343
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #31, !noalias !343
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB1K_EEEEB3u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !346, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB1l_EEEB35_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !346 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !346, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !346 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !346

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !346 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB1l_EEEB35_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !346
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !346
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB1l_EEEB35_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !346 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !346
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !346
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEBC_EEB2l_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEBC_EEB2l_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB1l_EEEB35_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB1l_EEEB35_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEBC_EEB2l_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1K_EEEEB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !349, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1l_EEEB2J_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !349 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !349, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !349 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !349

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !349 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1l_EEEB2J_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !349
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !349
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1l_EEEB2J_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !349 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !349
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !349
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEBC_EEB1Z_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEBC_EEB1Z_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1l_EEEB2J_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1l_EEEB2J_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEBC_EEB1Z_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecTNtNtB1R_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB1K_EEEEB3v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !352, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB1l_EEEB36_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !352 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !352, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !352 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !352

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !352 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB1l_EEEB36_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !352
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !352
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB1l_EEEB36_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !352 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !352
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !352
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTNtNtBJ_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEBC_EEB2l_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTNtNtBJ_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEBC_EEB2l_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB1l_EEEB36_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB1l_EEEB36_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTNtNtBJ_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEBC_EEB2l_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecTmIB2O_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1K_EEEEB3f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !355, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTmIB2p_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1l_EEEB2Q_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !355 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !355, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !355 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !355

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !355 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTmIB2p_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1l_EEEB2Q_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !355
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !355
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTmIB2p_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1l_EEEB2Q_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !355 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !355
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !355
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTmIB1G_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEBC_EEB26_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTmIB1G_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEBC_EEB26_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTmIB2p_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1l_EEEB2Q_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTmIB2p_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1l_EEEB2Q_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecTmIB1G_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEBC_EEB26_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEB1K_EEEEB3e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !358, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEB1l_EEEB2P_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !358 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !358, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !358 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !358

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !358 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEB1l_EEEB2P_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !358
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !358
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEB1l_EEEB2P_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !358 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !358
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !358
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtB1h_3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEBC_EEB26_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtB1h_3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEBC_EEB26_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtB1h_3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEB1l_EEEB2P_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEB1l_EEEB2P_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEBC_EEB26_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEB1K_EEEEB2S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !361, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEB1l_EEEB2t_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !361 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !361, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !361 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !361

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !361 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEB1l_EEEB2t_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !361
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !361
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEB1l_EEEB2t_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !361 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !361
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !361
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEBC_EEB1K_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEBC_EEB1K_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEB1l_EEEB2t_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEB1l_EEEB2t_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEBC_EEB1K_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB1K_EEEEB3v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !364, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB1l_EEEB36_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !364 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !364, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !364 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !364

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !364 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB1l_EEEB36_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !364
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !364
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB1l_EEEB36_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !364 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !364
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !364
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEBC_EEB2n_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEBC_EEB2n_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB1l_EEEB36_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB1l_EEEB36_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEBC_EEB2n_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEB1K_EEEEB3r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !367, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEB1l_EEEB32_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !367 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !367, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !367 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !367

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !367 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEB1l_EEEB32_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !367
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !367
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEB1l_EEEB32_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !367 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !367
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !367
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEBC_EEB2j_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEBC_EEB2j_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEB1l_EEEB32_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEB1l_EEEB32_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEBC_EEB2j_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1S_3vec3VecyEEIB1M_IB2P_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1K_EEEEB3m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !370, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEIB1n_IB2q_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB2X_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !370 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !370, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !370 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !370

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !370 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEIB1n_IB2q_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB2X_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !370
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEIB1n_IB2q_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB2X_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !370 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !370
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !370
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.l, %.body.i.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.x, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i.i unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_.exit.i.i unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.q, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v) #29
          to label %common.resume.i unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBK_3vec3VecyEEIBE_IB1H_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEBC_EEB2c_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBK_3vec3VecyEEIBE_IB1H_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEBC_EEB2c_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEIB1n_IB2q_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB2X_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEIB1n_IB2q_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB2X_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBK_3vec3VecyEEIBE_IB1H_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEBC_EEB2c_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1S_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1K_EEEEB4g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !373, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB3R_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !373 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !373, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !373 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !373

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !373 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB3R_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !373
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !373
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB3R_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !373 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !373
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !373
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.l, %.body.i.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.x, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i.i unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_.exit.i.i unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.q, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v) #29
          to label %common.resume.i unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBK_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEBC_EEB37_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBK_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEBC_EEB37_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB3R_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB3R_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBK_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEBC_EEB37_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1M_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1K_EEEEB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !376, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1n_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB2B_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !376 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !376, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !376 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !376

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !376 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1n_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB2B_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !376
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !376
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1n_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB2B_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !376 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !376
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !376
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.l, %.body.i.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.x, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i.i unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_.exit.i.i unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.q, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v) #29
          to label %common.resume.i unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBE_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEBC_EEB1R_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBE_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEBC_EEB1R_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1n_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB2B_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1n_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1l_EEEB2B_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBE_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEBC_EEB1R_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2Y_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1K_EEEEB4f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !379, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2z_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB3Q_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !379 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !379, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !379 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !379

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !379 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2z_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB3Q_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !379
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !379
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2z_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB3Q_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !379 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !379
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !379
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.l, %.body.i.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.x, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i.i unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_.exit.i.i unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.q, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v) #29
          to label %common.resume.i unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEBC_EEB37_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEBC_EEB37_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2z_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB3Q_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2z_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1l_EEEB3Q_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEBC_EEB37_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore4walk6SorterEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk6SorterECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk6SorterECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !393, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !393
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk6SorterECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrRL0_B1v_EEp6OutputNtNtBR_3cmp8OrderingNtNtBR_6marker4SendNtB2O_4SyncEL_E9drop_slowCs30WoLBgco1_6ignore(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk6SorterECsbzNSmZPCnTx_10tgrep_core.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !396, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !396
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk6SorterECsbzNSmZPCnTx_10tgrep_core.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_NtNtCs5Xr050g3D4S_3std4path4PathRL0_B1v_EEp6OutputNtNtBR_3cmp8OrderingNtNtBR_6marker4SendNtB2F_4SyncEL_E9drop_slowCs30WoLBgco1_6ignore(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk6SorterECsbzNSmZPCnTx_10tgrep_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore13IgnoreMatcherEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore13IgnoreMatcherEBF_.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore13IgnoreMatcherEBF_.exit: ; preds = %bb.ab, %bb.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreEEB1c_.exit.i unwind label %bb.h
end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbzNSmZPCnTx_10tgrep_core:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.f) #29
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.body.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.h:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbzNSmZPCnTx_10tgrep_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #31
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #31
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !422
  store i8 3, ptr %i.a, align 8, !alias.scope !422
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3t_8for_each15ForEachConsumerNCNvMNtB5H_6hybridNtB79_11HybridIndex13full_snapshots0_0EE0NCB3m_s_0uuE0TuuEE00B8e_EEB5H_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !447, !noundef !4
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3g_8for_each15ForEachConsumerNCNvMNtB5u_6hybridNtB6W_11HybridIndex13full_snapshots0_0EE0NCB39_s_0uuE0TuuEE00EEEB5u_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !448
  store i64 0, ptr %i.e, align 8, !alias.scope !448
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !449
  store i64 0, ptr %i.g, align 8, !alias.scope !449
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3g_8for_each15ForEachConsumerNCNvMNtB5u_6hybridNtB6W_11HybridIndex13full_snapshots0_0EE0NCB39_s_0uuE0TuuEE00EEEB5u_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3g_8for_each15ForEachConsumerNCNvMNtB5u_6hybridNtB6W_11HybridIndex13full_snapshots0_0EE0NCB39_s_0uuE0TuuEE00EEEB5u_.exit: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.i = load i64, ptr %i.h, align 8, !range !7, !alias.scope !452, !noundef !4
  %switch.i.i = icmp samesign ult i64 %i.i, 2
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTuuEEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3g_8for_each15ForEachConsumerNCNvMNtB5u_6hybridNtB6W_11HybridIndex13full_snapshots0_0EE0NCB39_s_0uuE0TuuEE00EEEB5u_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !452 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !452, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.l = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !452 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.l(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !452

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !9, !invariant.load !4, !noalias !452 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTuuEEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !10, !invariant.load !4, !noalias !452
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #31, !noalias !452
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTuuEEEECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !9, !invariant.load !4, !noalias !452 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !10, !invariant.load !4, !noalias !452
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #31, !noalias !452
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.r

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTuuEEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3g_8for_each15ForEachConsumerNCNvMNtB5u_6hybridNtB6W_11HybridIndex13full_snapshots0_0EE0NCB39_s_0uuE0TuuEE00EEEB5u_.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3b_8for_each15ForEachConsumerNCNvMNtB5p_6hybridNtB6R_11HybridIndex13full_snapshots0_0EE0NCB34_s_0uuE0TuuEE0B7W_EEB5p_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !477, !noundef !4
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3f_8for_each15ForEachConsumerNCNvMNtB5t_6hybridNtB6V_11HybridIndex13full_snapshots0_0EE0NCB38_s_0uuE0TuuEE0EEEB5t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !478
  store i64 0, ptr %i.d, align 8, !alias.scope !478
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !479
  store i64 0, ptr %i.f, align 8, !alias.scope !479
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3f_8for_each15ForEachConsumerNCNvMNtB5t_6hybridNtB6V_11HybridIndex13full_snapshots0_0EE0NCB38_s_0uuE0TuuEE0EEEB5t_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3f_8for_each15ForEachConsumerNCNvMNtB5t_6hybridNtB6V_11HybridIndex13full_snapshots0_0EE0NCB38_s_0uuE0TuuEE0EEEB5t_.exit: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.h = load i64, ptr %i.g, align 8, !range !7, !alias.scope !482, !noundef !4
  %switch.i.i = icmp samesign ult i64 %i.h, 2
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTuuEEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3f_8for_each15ForEachConsumerNCNvMNtB5t_6hybridNtB6V_11HybridIndex13full_snapshots0_0EE0NCB38_s_0uuE0TuuEE0EEEB5t_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !482 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !482, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.k = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !482 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.k(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !482

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !482 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTuuEEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !482
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !482
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTuuEEEECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !9, !invariant.load !4, !noalias !482 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !10, !invariant.load !4, !noalias !482
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #31, !noalias !482
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTuuEEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB3f_8for_each15ForEachConsumerNCNvMNtB5t_6hybridNtB6V_11HybridIndex13full_snapshots0_0EE0NCB38_s_0uuE0TuuEE0EEEB5t_.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5A_3zip11ZipProducerINtNtB5C_5slice12IterProducerB4P_EIB78_yEEINtNtB5A_3map11MapConsumerNtNtB5A_6extend15ListVecConsumerNCNvB40_21build_index_for_files0EEs_0E0B2i_EEB42_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !489, !noundef !4
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEEB3t_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !489 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !489, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !489 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !489

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !4, !noalias !489 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEEB3t_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4, !noalias !489
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31, !noalias !489
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEEB3t_.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !489 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !489
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !489
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEEB3t_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEEB3t_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4E_3zip11ZipProducerINtNtB4G_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB6c_yEEINtNtB4E_10filter_map17FilterMapConsumerNtNtB4E_6extend15ListVecConsumerNCNvB3E_39build_index_with_options_and_ignorecase0EEs_0E0B2i_EEB3G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !496, !noundef !4
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEEB37_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !496 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !496, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !496 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !496

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !4, !noalias !496 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEEB37_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4, !noalias !496
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31, !noalias !496
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEEB37_.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !496 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !496
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !496
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEEB37_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEEB37_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTNtNtB2p_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4W_5slice12IterProducerB3D_EINtNtB4U_10filter_map17FilterMapConsumerNtNtB4U_6extend15ListVecConsumerNCNvB41_18collect_filestamps0EEs_0E0B2i_EEB43_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !503, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtB1Q_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEEB3u_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !503 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !503, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !503 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !503

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !503 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtB1Q_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEEB3u_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !503
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !503
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtB1Q_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEEB3u_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !503 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !503
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !503
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtB1Q_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEEB3u_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtB1Q_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEEB3u_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTmIB3m_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4N_5range12IterProducerjEINtNtB4L_10filter_map17FilterMapConsumerNtNtB4L_6extend15ListVecConsumerNCNvMNtB3N_6hybridNtB7C_11HybridIndex13full_snapshot0EEs_0E0B2i_EEB3N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !510, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTmIB2N_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEEB3e_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !510 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !510, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !510 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !510

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !510 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTmIB2N_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEEB3e_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !510
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !510
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTmIB2N_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEEB3e_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !510 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !510
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !510
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTmIB2N_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEEB3e_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTmIB2N_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEEB3e_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2p_3zip11ZipProducerINtNtB2r_5slice12IterProducerB4z_EIB6u_yEEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCNvB3K_21build_index_for_files0EEs_0E0B2i_EEB3M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !517, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEB3d_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !517 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !517, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !517 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !517

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !517 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEB3d_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !517
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !517
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEB3d_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !517 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !517
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !517
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtB1h_3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEB3d_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEEB3d_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2p_3zip11ZipProducerINtNtB2r_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5y_yEEINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvB3o_39build_index_with_options_and_ignorecase0EEs_0E0B2i_EEB3q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !524, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEB2R_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !524 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !524, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !524 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !524

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4, !noalias !524 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEB2R_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4, !noalias !524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #31, !noalias !524
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEB2R_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4, !noalias !524 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4, !noalias !524
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31, !noalias !524
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEB2R_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEEB2R_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerB3n_EINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvB41_18collect_filestamps0EEs_0E0B2i_EEB43_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !531, !noundef !4
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEB3u_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !531 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !531, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !531 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !531

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !4, !noalias !531 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEB3u_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4, !noalias !531
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31, !noalias !531
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEB3u_.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !531 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !531
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !531
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEB3u_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEEB3u_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5range12IterProducerjEINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvMNtB3Z_6hybridNtB7n_11HybridIndex13full_snapshot0EEs_0E0B2i_EEB3Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !538, !noundef !4
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEB3q_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !538 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !538, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !538 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !538

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !4, !noalias !538 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEB3q_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4, !noalias !538
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31, !noalias !538
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEB3q_.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !538 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !538
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !538
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEB3q_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEEB3q_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2q_3vec3VecyEEIB2k_IB3n_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4T_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4R_3map11MapConsumerINtNtB4R_5unzip13UnzipConsumerNtB7u_5UnzipNtNtB4R_6extend15ListVecConsumerB87_ENCNvB3S_23batch_sizes_and_charges0EEs_0E0B2i_EEB3U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !545, !noundef !4
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEIB1L_IB2O_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB3l_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !545 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !545, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !545 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !545

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !4, !noalias !545 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEIB1L_IB2O_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB3l_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4, !noalias !545
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31, !noalias !545
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEIB1L_IB2O_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB3l_.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !545 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !545
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !545
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEIB1L_IB2O_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB3l_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEIB1L_IB2O_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB3l_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2q_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3N_8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3N_3map11MapConsumerINtNtB3N_5unzip13UnzipConsumerNtB80_5UnzipNtNtB3N_6extend15ListVecConsumerINtB3J_15CollectConsumerB4K_EENCNvB4M_23batch_sizes_and_charges0EEs_0E0B2i_EEB4O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !552, !noundef !4
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB4f_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !552 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !552, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !552 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !552

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !4, !noalias !552 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB4f_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4, !noalias !552
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31, !noalias !552
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB4f_.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !552 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !552
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !552
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB4f_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB4f_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB2k_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB2q_8plumbing24bridge_producer_consumer6helperINtNtB2s_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2q_3map11MapConsumerINtNtB2q_5unzip13UnzipConsumerNtB6K_5UnzipINtB2m_15CollectConsumeryEIB7o_B3u_EENCNvB3w_23batch_sizes_and_charges0EEs_0E0B2i_EEB3y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !559, !noundef !4
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1L_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB2Z_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !559 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !559, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !559 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !559

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !4, !noalias !559 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1L_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB2Z_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4, !noalias !559
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31, !noalias !559
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1L_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB2Z_.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !559 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !559
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !559
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1L_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB2Z_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1L_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB2Z_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB3w_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB2q_8plumbing24bridge_producer_consumer6helperINtNtB2s_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2q_3map11MapConsumerINtNtB2q_5unzip13UnzipConsumerNtB80_5UnzipINtB2m_15CollectConsumeryENtNtB2q_6extend15ListVecConsumerENCNvB4L_23batch_sizes_and_charges0EEs_0E0B2i_EEB4N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !566, !noundef !4
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2X_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB4e_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !566 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !566, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !566 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !566

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !4, !noalias !566 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2X_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB4e_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4, !noalias !566
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31, !noalias !566
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2X_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB4e_.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4, !noalias !566 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4, !noalias !566
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31, !noalias !566
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2X_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB4e_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2X_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEEB4e_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB2s_8for_each15ForEachConsumerNCNvMNtB4G_6hybridNtB68_11HybridIndex13full_snapshots0_0EEs_0E0uEEB4G_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !583, !noundef !4
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2x_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB2v_8for_each15ForEachConsumerNCNvMNtB4J_6hybridNtB6b_11HybridIndex13full_snapshots0_0EEs_0E0EEEB4J_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !584
  store i64 0, ptr %i.d, align 8, !alias.scope !584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2x_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB2v_8for_each15ForEachConsumerNCNvMNtB4J_6hybridNtB6b_11HybridIndex13full_snapshots0_0EEs_0E0EEEB4J_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2x_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB2v_8for_each15ForEachConsumerNCNvMNtB4J_6hybridNtB6b_11HybridIndex13full_snapshots0_0EEs_0E0EEEB4J_.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.f = load i64, ptr %i.e, align 8, !range !7, !alias.scope !587, !noundef !4
  %switch.i.i = icmp samesign ult i64 %i.f, 2
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultuEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2x_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB2v_8for_each15ForEachConsumerNCNvMNtB4J_6hybridNtB6b_11HybridIndex13full_snapshots0_0EEs_0E0EEEB4J_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !587 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !587, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.i = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !587 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.i(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !587

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !4, !noalias !587 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultuEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !10, !invariant.load !4, !noalias !587
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #31, !noalias !587
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultuEEECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !4, !noalias !587 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !10, !invariant.load !4, !noalias !587
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #31, !noalias !587
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.o

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultuEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2x_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB2v_8for_each15ForEachConsumerNCNvMNtB4J_6hybridNtB6b_11HybridIndex13full_snapshots0_0EEs_0E0EEEB4J_.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_mEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_mEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_3vec3VecmEEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_3vec3VecmEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs30WoLBgco1_6ignore9gitignore4GlobEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs30WoLBgco1_6ignore9gitignore4GlobENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs30WoLBgco1_6ignore9gitignore4GlobENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs30WoLBgco1_6ignore9gitignore4GlobEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs30WoLBgco1_6ignore9gitignore4GlobENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs30WoLBgco1_6ignore9gitignore4GlobEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
end_hunk_1
begin_hunk_2_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtNtCs5Xr050g3D4S_3std6thread9lifecycle6PacketuEEECsbzNSmZPCnTx_10tgrep_core:bb.a
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std6thread9lifecycle6PacketuEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !10, !invariant.load !4, !noalias !622
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #31, !noalias !622
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std6thread9lifecycle6PacketuEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ac:                                            ; preds = %bb.z
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !9, !invariant.load !4, !noalias !622 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %common.resume.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !10, !invariant.load !4, !noalias !622
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #31, !noalias !622
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ad, %bb.ac, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs5Xr050g3D4S_3std6thread6scoped9ScopeDataEEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ay, %bb.ac ], [ %i.ay, %bb.ad ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs5Xr050g3D4S_3std6thread6scoped9ScopeDataEEECsbzNSmZPCnTx_10tgrep_core.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ae:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs5Xr050g3D4S_3std6thread6scoped9ScopeDataEEECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std6thread9lifecycle6PacketuEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs5Xr050g3D4S_3std6thread6scoped9ScopeDataEEECsbzNSmZPCnTx_10tgrep_core.exit4.i, %bb.x, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15P4IgnoreMatcherEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %common.resume.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15P4IgnoreMatcherEBF_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15P4IgnoreMatcherEBF_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.f

.body.i:                                          ; preds = %bb.f, %bb.d, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.h, %bb.f ], [ %i.f, %bb.d ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore17TrackedMembershipEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.a) #29
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.i = load i64, ptr %i.a, align 8, !range !8, !alias.scope !640, !noundef !4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i.i.i = load i32, ptr %i.k, align 8, !alias.scope !643, !noundef !4
  switch i32 %.val.i.i.i.i, label %bb.h [
    i32 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEBF_.exit
    i32 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEBF_.exit
    i32 0, label %bb.i
  ], !prof !14

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #27, !noalias !644
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !645, !noundef !4
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEBF_.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit.sink.split.i.i

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !646, !noundef !4
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEBF_.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit.sink.split.i.i: ; preds = %bb.j, %bb.i
  %.sink.i.i = phi ptr [ %i.l, %bb.i ], [ %i.o, %bb.j ]
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sink.i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEBF_.exit

bb.k:                                             ; preds = %.body.i, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.l:                                             ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEBF_.exit: ; preds = %bb.g, %bb.g, %bb.i, %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit.sink.split.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #31
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #31
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtCs30WoLBgco1_6ignore5ErrorEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs30WoLBgco1_6ignore5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjFxWRWgRcyr_5rayon3vec5DrainTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !649, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !649, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !alias.scope !649, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !649, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !649, !noundef !4 ; 4 uses
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.c, %i.e
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !649
  call void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRmQIBw_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEEBR_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.c, i64 noundef %i.e), !noalias !649
  call void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainTRmQINtB7_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !649
  br label %_RNvXs7_NtCsjFxWRWgRcyr_5rayon3vecINtB5_5DrainTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.e, %i.k
  br i1 %i.n, label %bb.f, label %_RNvXs7_NtCsjFxWRWgRcyr_5rayon3vecINtB5_5DrainTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_.exit

bb.e:                                             ; preds = %bb.b
  store i64 %i.k, ptr %i.g, align 8, !noalias !649
  br label %_RNvXs7_NtCsjFxWRWgRcyr_5rayon3vecINtB5_5DrainTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !649, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.c
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.e
  %i.s = sub nuw i64 %i.k, %i.e                   ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r, i64 %i.t, i1 false), !noalias !649
  %i.u = add i64 %i.s, %i.c
  store i64 %i.u, ptr %i.g, align 8, !noalias !649
  br label %_RNvXs7_NtCsjFxWRWgRcyr_5rayon3vecINtB5_5DrainTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_.exit

_RNvXs7_NtCsjFxWRWgRcyr_5rayon3vecINtB5_5DrainTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjFxWRWgRcyr_5rayon3vec8IntoIterTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRmQIBw_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRmQIBC_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1k_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRmQINtNtB7_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRmQINtNtBG_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1D_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRmQINtNtBG_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1D_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRmQIBC_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1k_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRmQINtNtB7_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_2
begin_hunk_3_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCs22empcGmRho_14regex_automata4util4pool4PoolINtNtB12_3vec3VecjEEEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.k, %.body6, %bb.l
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore17TrackedMembershipEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.i = load i32, ptr %i.c, align 8, !alias.scope !873, !noundef !4
  switch i32 %.val.i.i, label %bb.c [
    i32 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit
    i32 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit
    i32 0, label %bb.d
  ], !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #27, !noalias !873
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !874, !noundef !4
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !875, !noundef !4
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit.sink.split: ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.d, %bb.d ], [ %i.g, %bb.e ]
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sink)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync9once_lock8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotEEB1s_.exit.sink.split, %bb.e, %bb.d, %bb.b, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys6os_str5bytes3BufECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys6os_str5bytes3BufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9lifecycle10ThreadInitECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !888, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !888
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsbzNSmZPCnTx_10tgrep_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !4, !align !11, !noundef !4
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core(ptr %.val2, ptr nonnull %.val3) #29
          to label %common.resume unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !4, !align !11, !noundef !4 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsbzNSmZPCnTx_10tgrep_core.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !10, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #31
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.e, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook15ChildSpawnHooksECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCs5Xr050g3D4S_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !904, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !905
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #32
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !907, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !908
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #29
          to label %common.resume unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECsbzNSmZPCnTx_10tgrep_core.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread9spawnhook10SpawnHooksECsbzNSmZPCnTx_10tgrep_core.exit
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Y_.exit unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Y_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1J_.exit unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecyEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1J_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1J_.exit unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEB1J_.exit: ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtBY_8for_each15ForEachConsumerNCNvMNtB3c_6hybridNtB4D_11HybridIndex13full_snapshots0_0EE0NCBR_s_0uuE0B3c_:bb.a

bb.k:                                             ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc29, %bb.j
  %.sroa.5.0.i = phi ptr [ %i.ao, %bb.j ], [ undef, %.noexc29 ]
  %.sroa.0.0.i = phi ptr [ %i.an, %bb.j ], [ null, %.noexc29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.aq = insertvalue { ptr, ptr } %i.ap, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit:                                        ; preds = %__rust_try.exit, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB1Z_8for_each15ForEachConsumerNCNvMNtB4d_6hybridNtB5F_11HybridIndex13full_snapshots0_0EEs_0E0uE11into_resultB4d_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc28
  %.merged.i = phi { ptr, ptr } [ %i.ak, %.noexc28 ], [ %i.aq, %.loopexit.i ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.as = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.at = icmp eq ptr %i.d, %i.as
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB1Z_8for_each15ForEachConsumerNCNvMNtB4d_6hybridNtB5F_11HybridIndex13full_snapshots0_0EEs_0E0uENtB5_3Job7executeB4d_)
          to label %bb.o unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.l, %bb.p
  invoke void %i.ar(ptr noundef %i.as)
          to label %__rust_try.exit unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %i.av = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.ar)
          to label %bb.p unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB1Z_8for_each15ForEachConsumerNCNvMNtB4d_6hybridNtB5F_11HybridIndex13full_snapshots0_0EEs_0E0uE10run_inlineB4d_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.c, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.s:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.ax = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ay = icmp eq i64 %i.ax, 3
  br i1 %i.ay, label %.loopexit, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %1, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.h
  unreachable

bb.v:                                             ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.thread57:                                        ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5range12IterProducerjEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCNvMNtB4y_6hybridNtB5r_11HybridIndex13full_snapshot0EE0NCBR_s_0INtB3g_13CollectResultB3V_EB6o_E0B4y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3w_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.052.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx53, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx54, align 8
  %.sroa.6.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx55, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.052.0.copyload, align 8, !noalias !1125, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1125, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1125, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5range12IterProducerjEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCNvMNtB3F_6hybridNtB4y_11HybridIndex13full_snapshot0EEB3F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1125
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit72:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_E11into_resultB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3w_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_E10run_inlineB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit72, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit72
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46, %.thread
  %.pn3859 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5range12IterProducerjEINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvMNtB3Z_6hybridNtB7n_11HybridIndex13full_snapshot0EEs_0E0B2i_EEB3Z_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46, %bb.ab
  %.pn3858 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46 ], [ %.pn3859, %bb.ab ], [ %i.bi, %bb.x ]
  resume { ptr, i32 } %.pn3858
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5range12IterProducerjEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB3N_11HybridIndex13full_snapshot0EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB5d_3vec3VecTmIB6a_NtNtB3P_6ondisk12PostingEntryEEEEB56_E0B3P_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTmIB2T_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4k_5range12IterProducerjEINtNtB4i_10filter_map17FilterMapConsumerNtNtB4i_6extend15ListVecConsumerNCNvMNtB3k_6hybridNtB79_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3k_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.051.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ab = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !1135, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1135, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1135, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5range12IterProducerjEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2U_11HybridIndex13full_snapshot0EEB2W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %.sroa.6.0.copyload, i64 noundef %.sroa.7.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit71:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTmIB2T_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4k_5range12IterProducerjEINtNtB4i_10filter_map17FilterMapConsumerNtNtB4i_6extend15ListVecConsumerNCNvMNtB3k_6hybridNtB79_11HybridIndex13full_snapshot0EEs_0E0B1P_E11into_resultB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTmIB2T_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4k_5range12IterProducerjEINtNtB4i_10filter_map17FilterMapConsumerNtNtB4i_6extend15ListVecConsumerNCNvMNtB3k_6hybridNtB79_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3k_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTmIB2T_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4k_5range12IterProducerjEINtNtB4i_10filter_map17FilterMapConsumerNtNtB4i_6extend15ListVecConsumerNCNvMNtB3k_6hybridNtB79_11HybridIndex13full_snapshot0EEs_0E0B1P_E10run_inlineB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit71, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit71 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit71
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46, %.thread
  %.pn3858 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTmIB3m_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4N_5range12IterProducerjEINtNtB4L_10filter_map17FilterMapConsumerNtNtB4L_6extend15ListVecConsumerNCNvMNtB3N_6hybridNtB7C_11HybridIndex13full_snapshot0EEs_0E0B2i_EEB3N_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.i) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46, %bb.ab
  %.pn3857 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46 ], [ %.pn3858, %bb.ab ], [ %i.bi, %bb.x ]
  resume { ptr, i32 } %.pn3857
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_3map11MapConsumerINtNtBY_5unzip13UnzipConsumerNtB3A_5UnzipINtNtNtBY_7collect8consumer15CollectConsumeryEIB4d_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB53_23batch_sizes_and_charges0EE0NCBR_s_0TINtB4f_13CollectResultyEIB6D_B51_EEB6B_E0B55_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(168) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.16 = alloca [48 x i8], align 8           ; 6 uses
  %i.d = alloca [176 x i8], align 8               ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [176 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 11 uses
  %i.j = alloca [176 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.018.2, label %bb.ac, label %.thread69

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB35_, ptr noundef nonnull %i.j)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.f, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.048.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx49, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx50, align 8, !nonnull !4, !noundef !4
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx51, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.048.0.copyload, align 8, !noalias !1145, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1145, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1145, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipINtNtNtB6_7collect8consumer15CollectConsumeryEIB3k_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB4a_23batch_sizes_and_charges0EEB4c_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1145
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload46 = load ptr, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15.0.copyload47 = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16.0..sroa_idx, i64 16, i1 false)
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.13.0.copyload46, ptr %.sroa.512.0..sroa_idx, align 16
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.15.0.copyload47, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.ab unwind label %.thread

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.l
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc40, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc41
  unreachable

bb.m:                                             ; preds = %.noexc41
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc41, %bb.m
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.m ], [ undef, %.noexc41 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.m ], [ null, %.noexc41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit72:                                      ; preds = %bb.k, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %i.j, i64 176, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_E11into_resultB35_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.d)
          to label %bb.z unwind label %bb.y

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc40
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc40 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB35_)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.s
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.g, ptr noundef nonnull align 8 dereferenceable(176) %i.j, i64 176, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_E10run_inlineB35_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.g, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.w:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit72, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit72
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #29
          to label %.thread69 unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.aa:                                            ; preds = %bb.ac, %.loopexit.split-lp, %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.t
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.018.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #29
          to label %bb.b unwind label %bb.aa

bb.ab:                                            ; preds = %bb.j
  unreachable

bb.ac:                                            ; preds = %.thread, %bb.b
  %.pn3755 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB2k_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB2q_8plumbing24bridge_producer_consumer6helperINtNtB2s_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2q_3map11MapConsumerINtNtB2q_5unzip13UnzipConsumerNtB6K_5UnzipINtB2m_15CollectConsumeryEIB7o_B3u_EENCNvB3w_23batch_sizes_and_charges0EEs_0E0B2i_EEB3y_(ptr noalias nofree noundef align 8 dereferenceable(176) %i.j) #29
          to label %.thread69 unwind label %bb.aa

.thread69:                                        ; preds = %bb.y, %bb.b, %bb.ac
  %.pn3754 = phi { ptr, i32 } [ %lpad.phi, %bb.b ], [ %.pn3755, %bb.ac ], [ %i.bi, %bb.y ]
  resume { ptr, i32 } %.pn3754
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_3map11MapConsumerINtNtBY_5unzip13UnzipConsumerNtB3A_5UnzipINtNtNtBY_7collect8consumer15CollectConsumeryENtNtBY_6extend15ListVecConsumerENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EE0NCBR_s_0TINtB4f_13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7d_3vec3VecNtB5w_11BatchChargeEEEB6H_E0B5y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.16 = alloca [32 x i8], align 8           ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 11 uses
  %i.j = alloca [160 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.018.2, label %bb.ac, label %.thread69

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4k_, ptr noundef nonnull %i.j)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.f, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.048.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx49, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx50, align 8, !nonnull !4, !noundef !4
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx51, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.048.0.copyload, align 8, !noalias !1155, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1155, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1155, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipINtNtNtB6_7collect8consumer15CollectConsumeryENtNtB6_6extend15ListVecConsumerENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EEB4F_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1155
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload46 = load ptr, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15.0.copyload47 = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16.0..sroa_idx, i64 16, i1 false)
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.13.0.copyload46, ptr %.sroa.512.0..sroa_idx, align 16
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.15.0.copyload47, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.ab unwind label %.thread

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.l
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc40, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc41
  unreachable

bb.m:                                             ; preds = %.noexc41
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc41, %bb.m
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.m ], [ undef, %.noexc41 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.m ], [ null, %.noexc41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit72:                                      ; preds = %bb.k, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_E11into_resultB4k_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.d)
          to label %bb.z unwind label %bb.y

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc40
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc40 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4k_)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.s
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_E10run_inlineB4k_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.g, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.w:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit72, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit72
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #29
          to label %.thread69 unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.aa:                                            ; preds = %bb.ac, %.loopexit.split-lp, %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.t
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.018.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #29
          to label %bb.b unwind label %bb.aa

bb.ab:                                            ; preds = %bb.j
  unreachable

bb.ac:                                            ; preds = %.thread, %bb.b
  %.pn3755 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB3w_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB2q_8plumbing24bridge_producer_consumer6helperINtNtB2s_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2q_3map11MapConsumerINtNtB2q_5unzip13UnzipConsumerNtB80_5UnzipINtB2m_15CollectConsumeryENtNtB2q_6extend15ListVecConsumerENCNvB4L_23batch_sizes_and_charges0EEs_0E0B2i_EEB4N_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.j) #29
          to label %.thread69 unwind label %bb.aa

.thread69:                                        ; preds = %bb.y, %bb.b, %bb.ac
  %.pn3754 = phi { ptr, i32 } [ %lpad.phi, %bb.b ], [ %.pn3755, %bb.ac ], [ %i.bi, %bb.y ]
  resume { ptr, i32 } %.pn3754
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_3map11MapConsumerINtNtBY_5unzip13UnzipConsumerNtB3A_5UnzipNtNtBY_6extend15ListVecConsumerB4c_ENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EE0NCBR_s_0TINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB69_3vec3VecyEEIB63_IB76_NtB4Q_11BatchChargeEEEB61_E0B4S_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 16               ; 11 uses
  %i.i = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.018.2, label %bb.ac, label %.thread73

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB3r_, ptr noundef nonnull %i.i)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.f, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.050.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx51, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx52, align 8, !nonnull !4, !noundef !4
  %.sroa.6.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx53, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load i64, ptr %.sroa.050.0.copyload, align 8, !noalias !1165, !noundef !4
  %i.ac = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1165, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1165, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipNtNtB6_6extend15ListVecConsumerB3j_ENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EEB3Z_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, i64 noundef %i.ab, i1 noundef zeroext false, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0.copyload)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload46 = load ptr, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.15.0.copyload47 = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = load <2 x ptr>, ptr %i.a, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ak = load <2 x ptr>, ptr %.sroa.16.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.aj, ptr %i.h, align 16
  store ptr %.sroa.13.0.copyload46, ptr %.sroa.512.0..sroa_idx, align 16
  store i64 %.sroa.15.0.copyload47, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  store <2 x ptr> %i.ak, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.ab unwind label %.thread

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit76, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.l
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc40, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc41
  unreachable

bb.m:                                             ; preds = %.noexc41
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc41, %bb.m
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.m ], [ undef, %.noexc41 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.m ], [ null, %.noexc41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit76:                                      ; preds = %bb.k, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_E11into_resultB3r_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.z unwind label %bb.y

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc40
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc40 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB3r_)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.s
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_E10run_inlineB3r_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.f, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.w:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit76, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit76 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit76
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #29
          to label %.thread73 unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.aa:                                            ; preds = %bb.ac, %.loopexit.split-lp, %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.t
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.018.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #29
          to label %bb.b unwind label %bb.aa

bb.ab:                                            ; preds = %bb.j
  unreachable

bb.ac:                                            ; preds = %.thread, %bb.b
  %.pn3757 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2q_3vec3VecyEEIB2k_IB3n_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4T_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4R_3map11MapConsumerINtNtB4R_5unzip13UnzipConsumerNtB7u_5UnzipNtNtB4R_6extend15ListVecConsumerB87_ENCNvB3S_23batch_sizes_and_charges0EEs_0E0B2i_EEB3U_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.i) #29
          to label %.thread73 unwind label %bb.aa

.thread73:                                        ; preds = %bb.y, %bb.b, %bb.ac
  %.pn3756 = phi { ptr, i32 } [ %lpad.phi, %bb.b ], [ %.pn3757, %bb.ac ], [ %i.bi, %bb.y ]
  resume { ptr, i32 } %.pn3756
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_3map11MapConsumerINtNtBY_5unzip13UnzipConsumerNtB3A_5UnzipNtNtBY_6extend15ListVecConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB5r_23batch_sizes_and_charges0EE0NCBR_s_0TINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB77_3vec3VecyEEINtB4K_13CollectResultB5p_EEB6Z_E0B5t_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.16 = alloca [32 x i8], align 8           ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 11 uses
  %i.j = alloca [160 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.018.2, label %bb.ac, label %.thread69

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4l_, ptr noundef nonnull %i.j)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.f, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.048.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx49, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx50, align 8, !nonnull !4, !noundef !4
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx51, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.048.0.copyload, align 8, !noalias !1175, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1175, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1175, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipNtNtB6_6extend15ListVecConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB4y_23batch_sizes_and_charges0EEB4A_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1175
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload46 = load ptr, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15.0.copyload47 = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16.0..sroa_idx, i64 16, i1 false)
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.13.0.copyload46, ptr %.sroa.512.0..sroa_idx, align 16
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.15.0.copyload47, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.ab unwind label %.thread

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.l
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc40, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc41
  unreachable

bb.m:                                             ; preds = %.noexc41
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc41, %bb.m
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.m ], [ undef, %.noexc41 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.m ], [ null, %.noexc41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit72:                                      ; preds = %bb.k, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_E11into_resultB4l_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.d)
          to label %bb.z unwind label %bb.y

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc40
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc40 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4l_)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.s
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_E10run_inlineB4l_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.g, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.w:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit72, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit72
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #29
          to label %.thread69 unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.aa:                                            ; preds = %bb.ac, %.loopexit.split-lp, %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.t
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.018.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #29
          to label %bb.b unwind label %bb.aa

bb.ab:                                            ; preds = %bb.j
  unreachable

bb.ac:                                            ; preds = %.thread, %bb.b
  %.pn3755 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2q_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3N_8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3N_3map11MapConsumerINtNtB3N_5unzip13UnzipConsumerNtB80_5UnzipNtNtB3N_6extend15ListVecConsumerINtB3J_15CollectConsumerB4K_EENCNvB4M_23batch_sizes_and_charges0EEs_0E0B2i_EEB4O_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.j) #29
          to label %.thread69 unwind label %bb.aa

.thread69:                                        ; preds = %bb.y, %bb.b, %bb.ac
  %.pn3754 = phi { ptr, i32 } [ %lpad.phi, %bb.b ], [ %.pn3755, %bb.ac ], [ %i.bi, %bb.y ]
  resume { ptr, i32 } %.pn3754
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTB2y_NtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCNvB4D_18collect_filestamps0EE0NCBR_s_0INtB3R_13CollectResultB4w_EB60_E0B4F_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerB2U_EINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3y_18collect_filestamps0EEs_0E0B1P_ENtB5_3Job7executeB3A_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.ac = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !1185, !noundef !4
  %i.ae = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1185, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1185, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTB1F_NtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCNvB3K_18collect_filestamps0EEB3M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ac, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1185
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.al = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.al, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ap = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap), "nonnull"(ptr %i.aq) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.ar = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.as = icmp eq i64 %i.ar, 3
  br i1 %i.as, label %.loopexit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.av = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.aw = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.ax = load ptr, ptr %i.ao, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ax, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.aw, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.az = insertvalue { ptr, ptr } %i.ay, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit71:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerB2U_EINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3y_18collect_filestamps0EEs_0E0B1P_E11into_resultB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.at, %.noexc41 ], [ %i.az, %.loopexit.i ] ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bc = icmp eq ptr %i.j, %i.bb
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerB2U_EINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3y_18collect_filestamps0EEs_0E0B1P_ENtB5_3Job7executeB3A_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.ba(ptr noundef %i.bb)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.ba)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerB2U_EINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3y_18collect_filestamps0EEs_0E0B1P_E10run_inlineB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bh = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bi = icmp eq i64 %i.bh, 3
  br i1 %i.bi, label %.loopexit71, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit71 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit71
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46, %.thread
  %.pn3858 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerB3n_EINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvB41_18collect_filestamps0EEs_0E0B2i_EEB43_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46, %bb.ab
  %.pn3857 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46 ], [ %.pn3858, %bb.ab ], [ %i.bj, %bb.x ]
  resume { ptr, i32 } %.pn3857
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18collect_filestamps0EE0NCBR_s_0INtNtNtB2C_11collections11linked_list10LinkedListINtNtB2C_3vec3VecTB2y_NtB4n_9FileStampEEEB5q_E0B4p_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4t_5slice12IterProducerB3a_EINtNtB4r_10filter_map17FilterMapConsumerNtNtB4r_6extend15ListVecConsumerNCNvB3y_18collect_filestamps0EEs_0E0B1P_ENtB5_3Job7executeB3A_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.051.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.ab = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !1195, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1195, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1195, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18collect_filestamps0EEB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.7.0.copyload)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit71:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4t_5slice12IterProducerB3a_EINtNtB4r_10filter_map17FilterMapConsumerNtNtB4r_6extend15ListVecConsumerNCNvB3y_18collect_filestamps0EEs_0E0B1P_E11into_resultB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4t_5slice12IterProducerB3a_EINtNtB4r_10filter_map17FilterMapConsumerNtNtB4r_6extend15ListVecConsumerNCNvB3y_18collect_filestamps0EEs_0E0B1P_ENtB5_3Job7executeB3A_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4t_5slice12IterProducerB3a_EINtNtB4r_10filter_map17FilterMapConsumerNtNtB4r_6extend15ListVecConsumerNCNvB3y_18collect_filestamps0EEs_0E0B1P_E10run_inlineB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit71, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit71 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit71
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46, %.thread
  %.pn3858 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTNtNtB2p_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4W_5slice12IterProducerB3D_EINtNtB4U_10filter_map17FilterMapConsumerNtNtB4U_6extend15ListVecConsumerNCNvB41_18collect_filestamps0EEs_0E0B2i_EEB43_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.i) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46, %bb.ab
  %.pn3857 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46 ], [ %.pn3858, %bb.ab ], [ %i.bi, %bb.x ]
  resume { ptr, i32 } %.pn3857
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB2v_yEEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCNvB52_39build_index_with_options_and_ignorecase0EE0NCBR_s_0INtB4l_13CollectResultB50_EB6R_E0B54_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [144 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 16               ; 9 uses
  %i.k = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.n = load i64, ptr %i.m, align 128, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  store i64 0, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB55_yEEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB2V_39build_index_with_options_and_ignorecase0EEs_0E0B1P_ENtB5_3Job7executeB2X_, ptr noundef nonnull %i.k)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  %i.w = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.x = and i64 %i.w, 65535                      ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.r, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.u, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = lshr i64 %i.w, 16
  %i.aa = and i64 %i.z, 65535
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.056.0.copyload = load ptr, ptr %i.ac, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx57, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx58, align 8
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.056.0.copyload, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx59, i64 48, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.056.0.copyload, align 8, !noalias !1205, !noundef !4
  %i.ae = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1205, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1205, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1205
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB1D_yEEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCNvB49_39build_index_with_options_and_ignorecase0EEB4b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1205
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 16
  %i.am = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store <2 x ptr> %i.am, ptr %i.j, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.12.0.copyload55, ptr %.sroa.513.0..sroa_idx, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq), "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.o, ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.as = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %.loopexit76, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.aw = load i64, ptr %i.d, align 8, !range !7, !noundef !4
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ay, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.ax, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit76:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB55_yEEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB2V_39build_index_with_options_and_ignorecase0EEs_0E0B1P_E11into_resultB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.e)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.au, %.noexc41 ], [ %i.ba, %.loopexit.i ] ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bc = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bd = icmp eq ptr %i.k, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB55_yEEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB2V_39build_index_with_options_and_ignorecase0EEs_0E0B1P_ENtB5_3Job7executeB2X_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.bb(ptr noundef %i.bc)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bf = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB55_yEEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB2V_39build_index_with_options_and_ignorecase0EEs_0E0B1P_E10run_inlineB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.h, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %.loopexit76, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit76 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit76
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46, %.thread
  %.pn3863 = phi { ptr, i32 } [ %i.s, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2p_3zip11ZipProducerINtNtB2r_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5y_yEEINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvB3o_39build_index_with_options_and_ignorecase0EEs_0E0B2i_EEB3q_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.k) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46, %bb.ab
  %.pn3862 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46 ], [ %.pn3863, %bb.ab ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %.pn3862
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB2v_yEEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder39build_index_with_options_and_ignorecase0EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB6p_3vec3VecNtB4R_13ExtractedFileEEB6i_E0B4T_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4b_3zip11ZipProducerINtNtB4d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5J_yEEINtNtB4b_10filter_map17FilterMapConsumerNtNtB4b_6extend15ListVecConsumerNCNvB3b_39build_index_with_options_and_ignorecase0EEs_0E0B1P_ENtB5_3Job7executeB3d_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.057.0.copyload = load ptr, ptr %i.ab, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx58, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx59, align 8
  %.sroa.6.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx60, i64 32, i1 false)
  store ptr %.sroa.057.0.copyload, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.1356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %.sroa.1356.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %i.ac = load i64, ptr %.sroa.057.0.copyload, align 8, !noalias !1218, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1218, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1218, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1219, !nonnull !4, !align !11, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB1D_yEEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder39build_index_with_options_and_ignorecase0EEB40_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 16
  %i.am = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.am, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.12.0.copyload55, ptr %.sroa.513.0..sroa_idx, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq), "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.as = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %.loopexit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.aw = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ay, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.ax, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit77:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4b_3zip11ZipProducerINtNtB4d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5J_yEEINtNtB4b_10filter_map17FilterMapConsumerNtNtB4b_6extend15ListVecConsumerNCNvB3b_39build_index_with_options_and_ignorecase0EEs_0E0B1P_E11into_resultB3d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.au, %.noexc41 ], [ %i.ba, %.loopexit.i ] ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bc = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bd = icmp eq ptr %i.j, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4b_3zip11ZipProducerINtNtB4d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5J_yEEINtNtB4b_10filter_map17FilterMapConsumerNtNtB4b_6extend15ListVecConsumerNCNvB3b_39build_index_with_options_and_ignorecase0EEs_0E0B1P_ENtB5_3Job7executeB3d_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.bb(ptr noundef %i.bc)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bf = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4b_3zip11ZipProducerINtNtB4d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5J_yEEINtNtB4b_10filter_map17FilterMapConsumerNtNtB4b_6extend15ListVecConsumerNCNvB3b_39build_index_with_options_and_ignorecase0EEs_0E0B1P_E10run_inlineB3d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %.loopexit77, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit77 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit77
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46, %.thread
  %.pn3864 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4E_3zip11ZipProducerINtNtB4G_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB6c_yEEINtNtB4E_10filter_map17FilterMapConsumerNtNtB4E_6extend15ListVecConsumerNCNvB3E_39build_index_with_options_and_ignorecase0EEs_0E0B2i_EEB3G_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46, %bb.ab
  %.pn3863 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46 ], [ %.pn3864, %bb.ab ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %.pn3863
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB2v_yEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileB2X_EENCNvB5q_21build_index_for_files0EE0NCBR_s_0INtB47_13CollectResultB4M_EB72_E0B5s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [144 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 16               ; 9 uses
  %i.k = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.n = load i64, ptr %i.m, align 128, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  store i64 0, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerB4m_EIB6h_yEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3x_21build_index_for_files0EEs_0E0B1P_ENtB5_3Job7executeB3z_, ptr noundef nonnull %i.k)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  %i.w = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.x = and i64 %i.w, 65535                      ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.r, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.u, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = lshr i64 %i.w, 16
  %i.aa = and i64 %i.z, 65535
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.056.0.copyload = load ptr, ptr %i.ac, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx57, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx58, align 8
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.056.0.copyload, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx59, i64 48, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.056.0.copyload, align 8, !noalias !1229, !noundef !4
  %i.ae = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1229, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1229, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1229
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB1D_yEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileB24_EENCNvB4x_21build_index_for_files0EEB4z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1229
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 16
  %i.am = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store <2 x ptr> %i.am, ptr %i.j, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.12.0.copyload55, ptr %.sroa.513.0..sroa_idx, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq), "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.o, ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.as = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %.loopexit76, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.aw = load i64, ptr %i.d, align 8, !range !7, !noundef !4
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ay, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.ax, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit76:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerB4m_EIB6h_yEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3x_21build_index_for_files0EEs_0E0B1P_E11into_resultB3z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.e)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.au, %.noexc41 ], [ %i.ba, %.loopexit.i ] ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bc = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bd = icmp eq ptr %i.k, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerB4m_EIB6h_yEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3x_21build_index_for_files0EEs_0E0B1P_ENtB5_3Job7executeB3z_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.bb(ptr noundef %i.bc)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bf = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerB4m_EIB6h_yEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3x_21build_index_for_files0EEs_0E0B1P_E10run_inlineB3z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.h, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %.loopexit76, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit76 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit76
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtB1h_3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtB1h_3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46, %.thread
  %.pn3863 = phi { ptr, i32 } [ %i.s, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2p_3zip11ZipProducerINtNtB2r_5slice12IterProducerB4z_EIB6u_yEEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCNvB3K_21build_index_for_files0EEs_0E0B2i_EEB3M_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.k) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46, %bb.ab
  %.pn3862 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46 ], [ %.pn3863, %bb.ab ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %.pn3862
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB2v_yEEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_files0EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB5T_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtB4D_13ExtractedFileB2X_EEEB5M_E0B4F_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5n_3zip11ZipProducerINtNtB5p_5slice12IterProducerB4C_EIB6V_yEEINtNtB5n_3map11MapConsumerNtNtB5n_6extend15ListVecConsumerNCNvB3N_21build_index_for_files0EEs_0E0B1P_ENtB5_3Job7executeB3P_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.057.0.copyload = load ptr, ptr %i.ab, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx58, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx59, align 8
  %.sroa.6.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx60, i64 32, i1 false)
  store ptr %.sroa.057.0.copyload, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.1356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %.sroa.1356.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.ac = load i64, ptr %.sroa.057.0.copyload, align 8, !noalias !1242, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1242, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1242, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1243, !nonnull !4, !align !11, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB1D_yEEINtNtB6_3map11MapConsumerNtNtB6_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_files0EEB3M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 16
  %i.am = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.am, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.12.0.copyload55, ptr %.sroa.513.0..sroa_idx, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq), "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.as = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %.loopexit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.aw = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ay, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.ax, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit77:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5n_3zip11ZipProducerINtNtB5p_5slice12IterProducerB4C_EIB6V_yEEINtNtB5n_3map11MapConsumerNtNtB5n_6extend15ListVecConsumerNCNvB3N_21build_index_for_files0EEs_0E0B1P_E11into_resultB3P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.au, %.noexc41 ], [ %i.ba, %.loopexit.i ] ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bc = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bd = icmp eq ptr %i.j, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5n_3zip11ZipProducerINtNtB5p_5slice12IterProducerB4C_EIB6V_yEEINtNtB5n_3map11MapConsumerNtNtB5n_6extend15ListVecConsumerNCNvB3N_21build_index_for_files0EEs_0E0B1P_ENtB5_3Job7executeB3P_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.bb(ptr noundef %i.bc)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bf = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5n_3zip11ZipProducerINtNtB5p_5slice12IterProducerB4C_EIB6V_yEEINtNtB5n_3map11MapConsumerNtNtB5n_6extend15ListVecConsumerNCNvB3N_21build_index_for_files0EEs_0E0B1P_E10run_inlineB3P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %.loopexit77, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit77 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit77
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46, %.thread
  %.pn3864 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5A_3zip11ZipProducerINtNtB5C_5slice12IterProducerB4P_EIB78_yEEINtNtB5A_3map11MapConsumerNtNtB5A_6extend15ListVecConsumerNCNvB40_21build_index_for_files0EEs_0E0B2i_EEB42_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46, %bb.ab
  %.pn3863 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46 ], [ %.pn3864, %bb.ab ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %.pn3863
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCs5Xr050g3D4S_3std6thread9lifecycle15spawn_uncheckedNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB1b_9LiveIndex22try_drop_all_persisteds0_0uEs_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuE9call_once6vtableB1d_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 4 uses
  %i.b = alloca [272 x i8], align 8               ; 6 uses
  %i.c = alloca [272 x i8], align 8               ; 6 uses
  %.sroa.531.i = alloca [256 x i8], align 8       ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531.i)
  %.sroa.029.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !1260 ; 2 uses
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.430.0.copyload.i = load ptr, ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !1260 ; 2 uses
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.531.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.531.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.531.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1260
  store ptr %.sroa.029.0.copyload.i, ptr %i.c, align 8, !noalias !1260
  %.sroa.7.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.430.0.copyload.i, ptr %.sroa.7.0..sroa_idx18.i, align 8, !noalias !1260
  %.sroa.9.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.0..sroa_idx22.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.531.i, i64 256, i1 false), !noalias !1260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1261
  store ptr %.sroa.029.0.copyload.i, ptr %i.b, align 8, !noalias !1260
  %.sroa.7.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.430.0.copyload.i, ptr %.sroa.7.0..sroa_idx20.i, align 8, !noalias !1260
  %.sroa.9.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.0..sroa_idx23.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.531.i, i64 256, i1 false), !noalias !1260
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB23_9LiveIndex22try_drop_all_persisteds0_0uEs_000uEB25_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(272) %i.c)
end_hunk_4
begin_hunk_5_@_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker17record_visibility:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #29
          to label %.body unwind label %bb.z

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.bn = load i64, ptr %i.e, align 8, !range !12, !alias.scope !1289, !noundef !4
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body15 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  br i1 %i.ap, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.bs = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bt = and i64 %i.bs, 9223372036854775807
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  %i.bv = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #32
  br i1 %i.bv, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store atomic i8 1, ptr %i.br monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.bw = atomicrmw xchg ptr %i.am, i32 0 release, align 4
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB1A_.exit, !prof !6

bb.y:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.am)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEEB1A_.exit

bb.z:                                             ; preds = %.body15, %bb.o, %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker18walk_file_metadata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call fastcc noundef ptr @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker21git_ignorecase_filter(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %i.c, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecase(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = tail call { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.e)
  %i.f = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1294
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1295, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1294, !nonnull !4
  br label %bb.e

bb.e:                                             ; preds = %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i, %bb.d
  %.idx.i = phi i64 [ 0, %bb.d ], [ %.add.i, %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i ] ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr @78, i64 %.idx.i ; 2 uses
  %.add.i = add nuw nsw i64 %.idx.i, 16           ; 2 uses
  %i.q = getelementptr i8, ptr %.ptr.i, i64 8
  %.val3.i.i = load i64, ptr %i.q, align 8, !noalias !1295, !noundef !4
  %i.r = icmp eq i64 %.val3.i.i, %i.n
  br i1 %i.r, label %.split.i.i, label %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i

.split.i.i:                                       ; preds = %bb.e
  %.val2.i.i = load ptr, ptr %.ptr.i, align 8, !noalias !1295, !nonnull !4, !noundef !4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull %i.p, i64 %i.n), !noalias !1296
  %i.s = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.s, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i, label %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i

_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i: ; preds = %.split.i.i, %bb.e
  %.not7.i.i = icmp eq i64 %.add.i, 1040
  br i1 %.not7.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i, label %bb.e

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i: ; preds = %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i, %.split.i.i
  %.lcssa.ph.i.i = phi i1 [ true, %.split.i.i ], [ false, %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_0B5_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_0B5_.exit: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1294
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.a, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_0B5_.exit
  %.sroa.0.0 = phi i1 [ %.lcssa.ph.i.i, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_0B5_.exit ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 13) i64 @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = tail call { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef range(i64 1, 13) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.e, i64 12)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count0EB1R_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.h = and i64 %i.e, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.e, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !1299
  store i8 3, ptr %i.a, align 8, !alias.scope !1299
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count0EB1R_.exit

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count0EB1R_.exit: ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.010.i = phi i64 [ 4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.g, %bb.b ]
  ret i64 %.sroa.0.010.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker20display_ignore_error(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = load i64, ptr %1, align 8, !range !16, !noundef !4
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = tail call { ptr, i64 } @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path12strip_prefixRBw_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.v, 1
  %spec.select = select i1 %i.x, i64 %i.u, i64 %i.y
  %spec.select30 = select i1 %i.x, ptr %i.s, ptr %i.w
  store ptr %spec.select30, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1306
  store i64 0, ptr %i.e, align 8, !noalias !1306
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1306
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1306
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.aa, align 8, !noalias !1306
  store ptr %i.e, ptr %i.d, align 8, !noalias !1306
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @133, ptr %i.ab, align 8, !noalias !1306
  %i.ac = invoke noundef zeroext i1 @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !1307

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #29
          to label %common.resume unwind label %bb.f, !noalias !1307

bb.d:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.e, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #27
          to label %.noexc.i unwind label %bb.c, !noalias !1307

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1307
  unreachable

common.resume:                                    ; preds = %.body, %bb.ai, %bb.ae, %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.ae ], [ %i.ad, %bb.c ], [ %i.an, %bb.h ], [ %.pn, %bb.ai ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 4 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 8)
          to label %bb.m unwind label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1309
  store i64 0, ptr %i.c, align 8, !noalias !1309
  %.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i34, align 8, !noalias !1309
  %.sroa.5.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i35, align 8, !noalias !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1309
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.ak, align 8, !noalias !1309
  store ptr %i.c, ptr %i.b, align 8, !noalias !1309
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @133, ptr %i.al, align 8, !noalias !1309
  %i.am = invoke noundef zeroext i1 @_RNvXs1_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !1310

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %common.resume unwind label %bb.k, !noalias !1310

bb.i:                                             ; preds = %bb.g
  br i1 %i.am, label %bb.j, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtCs30WoLBgco1_6ignore5ErrorNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #27
          to label %.noexc.i36 unwind label %bb.h, !noalias !1310

.noexc.i36:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1310
  unreachable

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtCs30WoLBgco1_6ignore5ErrorNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1309
  br label %bb.ag

.body:                                            ; preds = %bb.aa, %bb.l, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.z ], [ %i.aq, %bb.l ], [ %i.bh, %bb.aa ] ; 2 uses
  %.sroa.08.0 = phi i8 [ %.sroa.08.2, %bb.z ], [ %.sroa.08.1, %bb.l ], [ %.sroa.08.2, %bb.aa ]
  %i.ap = trunc nuw i8 %.sroa.08.0 to i1
  br i1 %i.ap, label %bb.ai, label %common.resume

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.o, %bb.u, %bb.r, %bb.n, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.08.1 = phi i8 [ %.sroa.08.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ 1, %bb.o ], [ 1, %bb.u ], [ 1, %bb.r ], [ 1, %bb.n ], [ 1, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit ]
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4)
          to label %bb.p unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.as = add i64 %i.ai, -8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.at, ptr %i.j, align 8, !captures !1312
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
end_hunk_5
begin_hunk_6_@_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecase:bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #29
          to label %bb.dl unwind label %bb.ai, !noalias !1401

bb.ac:                                            ; preds = %.noexc124
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %.noexc124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1400
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 176
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs30WoLBgco1_6ignore9gitignore4GlobENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr)
          to label %bb.af unwind label %bb.ae, !noalias !1401

bb.ae:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #29
          to label %bb.ab unwind label %bb.ai, !noalias !1401

bb.af:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.du = load <2 x i64>, ptr %i.dt, align 8, !alias.scope !1399
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !1399, !noundef !4 ; 3 uses
  %.not.i = icmp eq ptr %i.dw, null
  br i1 %.not.i, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = atomicrmw add ptr %i.dw, i64 1 monotonic, align 8, !noalias !1401
  %i.dy = icmp slt i64 %i.dx, 0
  br i1 %i.dy, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.ab
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1401
  unreachable

bb.aj:                                            ; preds = %bb.z
  store i64 -1, ptr %i.ap, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder3newRNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.ao unwind label %bb.dj

bb.al:                                            ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.am:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0175, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !1399
  %.sroa.0175.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0175, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0175.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1399
  %.sroa.0175.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0175, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0175.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0175, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0175)
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store <2 x i64> %i.du, ptr %.sroa.4177.0..sroa_idx, align 8
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store ptr %i.dw, ptr %.sroa.6178.0..sroa_idx, align 8
  br label %bb.ak

bb.an:                                            ; preds = %bb.de
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.ao:                                            ; preds = %bb.ak
  %i.ec = xor i8 %i.cj, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  store i8 %i.ec, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 227
  %i.ef = load i8, ptr %i.ee, align 1, !range !15, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ao, i64 280
  store i8 %i.ef, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !range !8, !noundef !4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ek = load i64, ptr %i.ej, align 8            ; 2 uses
  store i64 %i.ei, ptr %i.ao, align 8, !alias.scope !1402
  %i.el = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store i64 %i.ek, ptr %i.el, align 8, !alias.scope !1402
  %i.em = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.en = load i64, ptr %i.em, align 8, !range !8, !alias.scope !1402, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.not.i127 = icmp ne i64 %i.en, 0
  %.not2.i = icmp ne i64 %i.ei, 0
  %or.cond.not5.i = and i1 %.not2.i, %.not.i127
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !1402 ; 2 uses
  %i.eq = icmp ult i64 %i.ek, %i.ep
  %or.cond4.i = select i1 %or.cond.not5.i, i1 %i.eq, i1 false
  br i1 %or.cond4.i, label %bb.ap, label %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit

bb.ap:                                            ; preds = %bb.ao
  store i64 1, ptr %i.ao, align 8, !alias.scope !1402
  store i64 %i.ep, ptr %i.el, align 8, !alias.scope !1402
  br label %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit

.body112:                                         ; preds = %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp, %bb.by, %bb.ay, %.body109, %bb.bp
  %.sroa.034.10 = phi i8 [ %.sroa.034.11, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.035.10 = phi i8 [ %.sroa.035.11, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.036.10 = phi i8 [ 0, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.037.10 = phi i8 [ 0, %.body109 ], [ 1, %bb.bp ], [ 0, %bb.by ], [ 1, %bb.ay ], [ %.sroa.037.11.ph, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.038.10 = phi i8 [ %.sroa.038.11, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.039.10 = phi i8 [ %.sroa.039.11, %.body109 ], [ 1, %bb.bp ], [ 1, %bb.by ], [ 1, %bb.ay ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body109 ], [ %i.hm, %bb.bp ], [ %i.ig, %bb.by ], [ %.pn.i130, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp285, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk11WalkBuilderECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ao) #29
          to label %.body119 unwind label %bb.bt

.loopexit.split-lp:                               ; preds = %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit, %bb.bl, %._crit_edge, %bb.bu, %bb.as, %bb.aw, %bb.ax, %bb.bv
  %.sroa.037.11.ph = phi i8 [ 1, %bb.bl ], [ 1, %bb.as ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %._crit_edge ], [ 1, %bb.bu ], [ 0, %bb.bv ], [ 1, %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body112

_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit: ; preds = %bb.ap, %bb.ao
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 229
  %i.es = load i8, ptr %i.er, align 1, !range !15, !noundef !4
  %i.et = getelementptr inbounds nuw i8, ptr %i.ao, i64 281
  store i8 %i.es, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 231
  %i.ev = load i8, ptr %i.eu, align 1, !range !15
  %i.ew = xor i8 %i.ev, 1
  %.sroa.016.0 = select i1 %i.cu, i8 0, i8 %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ao, i64 193
  store i8 %.sroa.016.0, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ao, i64 194
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 236
  %i.fa = load i8, ptr %i.ez, align 4, !range !15, !noundef !4 ; 2 uses
  %i.fb = xor i8 %i.fa, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ao, i64 199
  store i8 %i.fb, ptr %i.fc, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.fe = load <4 x i8>, ptr %i.fd, align 8
  %i.ff = xor <4 x i8> %i.fe, splat (i8 1)
  %i.fg = insertelement <4 x i1> poison, i1 %i.cu, i64 0
  %i.fh = shufflevector <4 x i1> %i.fg, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.fi = select <4 x i1> %i.fh, <4 x i8> zeroinitializer, <4 x i8> %i.ff
  %i.fj = shufflevector <4 x i8> %i.fi, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  store <4 x i8> %i.fj, ptr %i.ey, align 2
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 230
  %i.fl = load i8, ptr %i.fk, align 2, !range !15, !noundef !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ao, i64 198
  store i8 %i.fl, ptr %i.fm, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fn, ptr noundef nonnull align 8 dereferenceable(104) %i.ap, i64 104, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  store ptr %4, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  store ptr %i.dg, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %i.fr = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder12filter_entryNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecases_0EB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.an)
          to label %bb.aq unwind label %.loopexit.split-lp

bb.aq:                                            ; preds = %_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9max_depth.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ft = load i64, ptr %i.fs, align 8, !range !8, !noundef !4
  %i.fu = trunc nuw i64 %i.ft to i1
  br i1 %i.fu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

bb.as:                                            ; preds = %bb.aq
  %i.fy = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc128 unwind label %.loopexit.split-lp ; 2 uses

.noexc128:                                        ; preds = %bb.as
  %i.fz = extractvalue { i64, ptr } %i.fy, 0
  %i.ga = extractvalue { i64, ptr } %i.fy, 1      ; 4 uses
  %i.gb = ptrtoint ptr %i.ga to i64               ; 3 uses
  %i.gc = trunc nuw i64 %i.fz to i1
  br i1 %i.gc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.noexc128
  %i.gd = call noundef range(i64 1, 13) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.gb, i64 12)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

bb.au:                                            ; preds = %.noexc128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  %i.ge = and i64 %i.gb, 3
  switch i64 %i.ge, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i64 3, label %bb.av
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i64 1, label %bb.aw
  ], !prof !13

default.unreachable:                              ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.gf = icmp ult ptr %i.ga, inttoptr (i64 188978561024 to ptr)
  %i.gg = and i64 %i.gb, 1095216660480
  %i.gh = icmp ne i64 %i.gg, 1095216660480
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.assume(i1 %i.gh)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i

bb.aw:                                            ; preds = %bb.au
  %i.gi = getelementptr i8, ptr %i.ga, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gi) ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.gi, ptr %i.gj, align 8, !alias.scope !1403
  store i8 3, ptr %i.j, align 8, !alias.scope !1403
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.aw, %bb.av, %bb.au, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.at, %bb.ar
  %.sroa.021.0 = phi i64 [ %i.fx, %bb.ar ], [ 4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i ], [ %i.gd, %bb.at ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fr, i64 216
  store i64 %.sroa.021.0, ptr %i.gk, align 8
  br i1 %.not89, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0179)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1405
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !1404, !noundef !4
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9oNxn7AafV1_7globset20GlobSetMatchStrategyENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dk)
          to label %.noexc132 unwind label %.loopexit.split-lp

.noexc132:                                        ; preds = %bb.ax
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.gm, ptr %i.gn, align 8, !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1405
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 152
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.go)
          to label %bb.ba unwind label %bb.az, !noalias !1406

bb.ay:                                            ; preds = %bb.bb, %bb.az
  %.pn.i130 = phi { ptr, i32 } [ %i.gr, %bb.bb ], [ %i.gp, %bb.az ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset7GlobSetECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #29
          to label %.body112 unwind label %bb.bf, !noalias !1406

bb.az:                                            ; preds = %.noexc132
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %.noexc132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1405
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 176
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs30WoLBgco1_6ignore9gitignore4GlobENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gq)
          to label %bb.bc unwind label %bb.bb, !noalias !1406

bb.bb:                                            ; preds = %bb.ba
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #29
          to label %bb.ay unwind label %bb.bf, !noalias !1406

bb.bc:                                            ; preds = %bb.ba
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.gt = load <2 x i64>, ptr %i.gs, align 8, !alias.scope !1404
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !1404, !noundef !4 ; 3 uses
  %.not.i131 = icmp eq ptr %i.gv, null
  br i1 %.not.i131, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gw = atomicrmw add ptr %i.gv, i64 1 monotonic, align 8, !noalias !1406
  %i.gx = icmp slt i64 %i.gw, 0
  br i1 %i.gx, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  call void @llvm.trap()
  unreachable

bb.bf:                                            ; preds = %bb.bb, %bb.ay
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1406
  unreachable

bb.bg:                                            ; preds = %bb.bm, %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ha = load ptr, ptr %i.gz, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.hc = load i64, ptr %i.hb, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.hc, 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx ; 2 uses
  %i.he = icmp eq i64 %i.hc, 0
  br i1 %i.he, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bg
  %i.hf = trunc nuw i8 %i.cn to i1
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br i1 %i.hf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.bk
  %.sroa.025.0269.us = phi ptr [ %i.hg, %bb.bk ], [ %i.ha, %.lr.ph ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.025.0269.us, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder10add_ignoreRNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.025.0269.us)
          to label %bb.bh unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %.lr.ph.split.us
  %i.hh = load i64, ptr %i.al, align 8, !range !1407, !noundef !4
  %.not91.us = icmp eq i64 %i.hh, -1
  br i1 %.not91.us, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs30WoLBgco1_6ignore5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ak)
          to label %bb.bj unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.hi = icmp eq ptr %i.hg, %i.hd
  br i1 %i.hi, label %._crit_edge, label %.lr.ph.split.us

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %.lr.ph.split.us, %.lr.ph.split, %bb.bq
  %lpad.loopexit.split-lp285 = landingpad { ptr, i32 }
          cleanup
  br label %.body112

bb.bl:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0179, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1404
  %.sroa.0179.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0179, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0179.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1404
  %.sroa.0179.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0179, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0179.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0179, i64 80, i1 false)
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store <2 x i64> %i.gt, ptr %.sroa.6180.0..sroa_idx, align 8
  %.sroa.8182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store ptr %i.gv, ptr %.sroa.8182.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0179)
  %i.hj = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder9overrides(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ao, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.am)
          to label %bb.bm unwind label %.loopexit.split-lp ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.bg

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bs
  %.sroa.025.0269 = phi ptr [ %i.hk, %bb.bs ], [ %i.ha, %.lr.ph ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.025.0269, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder10add_ignoreRNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.025.0269)
          to label %bb.bn unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.bs, %bb.bk, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder14build_parallel(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ai, ptr noundef nonnull align 8 %i.ao)
          to label %bb.bu unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %.lr.ph.split
  %i.hl = load i64, ptr %i.al, align 8, !range !1407, !noundef !4
  %.not91 = icmp eq i64 %i.hl, -1
  br i1 %.not91, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.ak, ptr %i.aj, align 8
  store ptr @_RNvXs1_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.485.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @104, ptr noundef nonnull %i.aj)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
end_hunk_6
begin_hunk_7_@_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecase:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  %i.br = xor i8 %i.at, 1                         ; 5 uses
  br i1 %i.au, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore22build_p4ignore_matcher(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.n unwind label %bb.m

.body94:                                          ; preds = %bb.bt, %bb.cb, %bb.ca, %bb.cc, %.body113, %bb.q, %bb.m
  %.sroa.021.2 = phi i8 [ %.sroa.021.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.021.3.ph, %bb.cc ], [ %.sroa.021.3.ph, %bb.ca ], [ %.sroa.021.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.022.2 = phi i8 [ %.sroa.022.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.022.3.ph, %bb.cc ], [ %.sroa.022.3.ph, %bb.ca ], [ %.sroa.022.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.023.2 = phi i8 [ %.sroa.023.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.023.3.ph, %bb.cc ], [ %.sroa.023.3.ph, %bb.ca ], [ %.sroa.023.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.024.2 = phi i8 [ %.sroa.024.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.024.3.ph, %bb.cc ], [ %.sroa.024.3.ph, %bb.ca ], [ %.sroa.024.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.025.2 = phi i8 [ %.sroa.025.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.025.3.ph, %bb.cc ], [ %.sroa.025.3.ph, %bb.ca ], [ %.sroa.025.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.026.2 = phi i8 [ %.sroa.026.4, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.026.3.ph, %bb.cc ], [ %.sroa.026.3.ph, %bb.ca ], [ %.sroa.026.3.ph, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.sroa.027.2 = phi i8 [ 0, %.body113 ], [ 1, %bb.q ], [ 1, %bb.m ], [ 1, %bb.cc ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 0, %bb.bt ] ; 2 uses
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77, %.body113 ], [ %i.ca, %bb.q ], [ %i.bv, %bb.m ], [ %.pn77.pn.ph, %bb.cc ], [ %.pn77.pn.ph, %bb.ca ], [ %.pn77.pn.ph, %bb.cb ], [ %i.fx, %bb.bt ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %i.bs = load ptr, ptr %i.ai, align 8, !alias.scope !1514, !nonnull !4, !noundef !4
  %i.bt = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !noalias !1514
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.l, label %.body92

bb.l:                                             ; preds = %.body94
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtB7_6string6StringEE9drop_slowCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #32
          to label %.body92 unwind label %bb.bw

bb.m:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.n:                                             ; preds = %bb.k
  %.sroa.014.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.515.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not70 = icmp eq i64 %.sroa.014.0.copyload, -1
  br i1 %.not70, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.468.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.512, i64 120, i1 false)
  store i64 1, ptr %i.l, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.014.0.copyload, ptr %i.bx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1515
  %i.by = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 345) 144, i64 noundef 8) #31, !noalias !1515 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.p, label %bb.t, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #33
          to label %.noexc97 unwind label %bb.q

.noexc97:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15P4IgnoreMatcherEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l) #29
          to label %.body94 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.s:                                             ; preds = %bb.n, %bb.j, %bb.t
  %i.cc = phi ptr [ %i.by, %bb.t ], [ null, %bb.j ], [ null, %bb.n ] ; 4 uses
  store ptr %i.cc, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.by, ptr noundef nonnull align 8 dereferenceable(144) %i.l, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.x unwind label %bb.w

.body113:                                         ; preds = %bb.w, %.thread152
  %.sroa.021.4 = phi i8 [ %.sroa.021.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.022.4 = phi i8 [ %.sroa.022.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.023.4 = phi i8 [ %.sroa.023.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.024.4 = phi i8 [ %.sroa.024.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.025.4 = phi i8 [ %.sroa.025.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.026.4 = phi i8 [ %.sroa.026.6, %.thread152 ], [ %.sroa.027.5, %bb.w ] ; 2 uses
  %.sroa.027.4 = phi i8 [ %.sroa.027.6, %.thread152 ], [ %.sroa.027.5, %bb.w ]
  %.pn77 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.thread152 ], [ %i.cf, %bb.w ] ; 2 uses
  %i.ce = trunc nuw i8 %.sroa.027.4 to i1
  br i1 %i.ce, label %bb.bz, label %.body94

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.v
  %.sroa.027.5 = phi i8 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ 1, %bb.v ] ; 7 uses
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body113

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %bb.z unwind label %bb.y

.thread152:                                       ; preds = %.body83, %bb.am, %.thread175, %bb.ab, %bb.bx, %bb.by, %bb.y
  %.sroa.021.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ %.sroa.021.9, %.body83 ]
  %.sroa.022.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ %.sroa.022.9, %.body83 ]
  %.sroa.023.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ 0, %.body83 ]
  %.sroa.024.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ %.sroa.024.9.ph, %.thread175 ], [ 1, %bb.bx ], [ 0, %bb.am ], [ 0, %.body83 ]
  %.sroa.025.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ %.sroa.025.9, %.body83 ]
  %.sroa.026.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %.thread175 ], [ 1, %bb.bx ], [ 1, %bb.am ], [ %.sroa.026.9, %.body83 ]
  %.sroa.027.6 = phi i8 [ 1, %bb.by ], [ 1, %bb.y ], [ 0, %bb.ab ], [ 0, %.thread175 ], [ 0, %bb.bx ], [ 0, %bb.am ], [ 0, %.body83 ]
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.by ], [ %i.ch, %bb.y ], [ %i.cw, %bb.ab ], [ %lpad.thr_comm, %.thread175 ], [ %lpad.thr_comm.split-lp, %bb.bx ], [ %i.dw, %bb.am ], [ %.pn.pn.pn, %.body83 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #29
          to label %.body113 unwind label %bb.bw

bb.y:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread152

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder3newRNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.aa unwind label %bb.by

bb.aa:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  store i8 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 193
  store i8 %i.br, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ab, i64 194
  store i8 %i.br, ptr %i.ck, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 65
  %i.cm = load i8, ptr %i.cl, align 1, !range !15, !noundef !4 ; 2 uses
  %i.cn = xor i8 %i.cm, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 199
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 196
  store i8 %i.br, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 195
  store i8 %i.br, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 197
  store i8 %i.br, ptr %i.cr, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %4, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.cc, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.cv = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs30WoLBgco1_6ignore4walkNtB6_11WalkBuilder12filter_entryNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases_0EB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.aa)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %bb.ag, %bb.ac, %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit, %bb.aa
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk11WalkBuilderECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ab) #29
          to label %.thread152 unwind label %bb.bw

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.cx = invoke { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism()
          to label %.noexc99 unwind label %bb.ab  ; 2 uses

.noexc99:                                         ; preds = %bb.ac
  %i.cy = extractvalue { i64, ptr } %i.cx, 0
  %i.cz = extractvalue { i64, ptr } %i.cx, 1      ; 4 uses
  %i.da = ptrtoint ptr %i.cz to i64               ; 3 uses
  %i.db = trunc nuw i64 %i.cy to i1
  br i1 %i.db, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc99
  %i.dc = call noundef range(i64 1, 13) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.da, i64 12)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

bb.ae:                                            ; preds = %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %i.dd = and i64 %i.da, 3
  switch i64 %i.dd, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i64 3, label %bb.af
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i64 1, label %bb.ag
  ], !prof !13

default.unreachable:                              ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.de = icmp ult ptr %i.cz, inttoptr (i64 188978561024 to ptr)
  %i.df = and i64 %i.da, 1095216660480
  %i.dg = icmp ne i64 %i.df, 1095216660480
  call void @llvm.assume(i1 %i.de)
  call void @llvm.assume(i1 %i.dg)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dh = getelementptr i8, ptr %i.cz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !1516
  store i8 3, ptr %i.f, align 8, !alias.scope !1516
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.ab

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit

_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.ad
  %.sroa.0.010.i.i = phi i64 [ 4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i ], [ %i.dc, %bb.ad ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 216
  store i64 %.sroa.0.010.i.i, ptr %i.dj, align 8
  invoke void @_RNvMs3_NtCs30WoLBgco1_6ignore4walkNtB5_11WalkBuilder14build_parallel(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ac, ptr noundef nonnull align 8 %i.cv)
          to label %bb.ah unwind label %bb.ab

bb.ah:                                            ; preds = %_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore4walk11WalkBuilderECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ab)
          to label %bb.ai unwind label %bb.bx

.thread175:                                       ; preds = %bb.aj, %bb.ai
  %.sroa.024.9.ph = phi i8 [ 1, %bb.ai ], [ 0, %bb.aj ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread152

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ai, ptr %i.y, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ae, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ap, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.ao, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.an, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.am, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.al, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr %i.aj, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store ptr %i.aq, ptr %i.dr, align 8
  invoke void @_RINvMsd_NtCs30WoLBgco1_6ignore4walkNtB6_12WalkParallel3runNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker34walk_file_metadata_with_ignorecases0_0EB10_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.y)
          to label %bb.aj unwind label %.thread175

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.sroa.3.0.copyload = load i8, ptr %i.ba, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1517
  %i.ds = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  %.not.i = icmp ne i8 %.sroa.3.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB6_4path7PathBufENCNvMs5_NtB2_5mutexINtB1N_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, i1 noundef zeroext %.not.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ak unwind label %.thread175

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1517
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.dt = load i64, ptr %i.w, align 8, !range !8, !alias.scope !1519, !noundef !4
  %i.du = trunc nuw i64 %i.dt to i1
  br i1 %i.du, label %bb.al, label %bb.ap, !prof !6

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1520
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dv, i64 24, i1 false), !noalias !1521
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #33
          to label %bb.an unwind label %bb.am, !noalias !1522

bb.am:                                            ; preds = %bb.al
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #29
          to label %.thread152 unwind label %bb.ao, !noalias !1522

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1522
  unreachable

bb.ap:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !alias.scope !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.sroa.3124.0.copyload = load i8, ptr %i.bc, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1523
  %i.dz = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false)
  %.not.i102 = icmp ne i8 %.sroa.3124.0.copyload, 0
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB6_4path7PathBufENCNvMs5_NtB2_5mutexINtB1N_5MutexBN_E10into_inner0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, i1 noundef zeroext %.not.i102, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.ar unwind label %bb.aq

.body83:                                          ; preds = %bb.at, %bb.aq, %.body90
  %.sroa.021.9 = phi i8 [ %.sroa.021.10, %.body90 ], [ 1, %bb.aq ], [ 1, %bb.at ]
  %.sroa.022.9 = phi i8 [ 0, %.body90 ], [ 1, %bb.aq ], [ 1, %bb.at ]
  %.sroa.025.9 = phi i8 [ %.sroa.025.10, %.body90 ], [ 1, %bb.aq ], [ 1, %bb.at ]
  %.sroa.026.9 = phi i8 [ %.sroa.026.10, %.body90 ], [ 1, %bb.aq ], [ 1, %bb.at ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body90 ], [ %i.ea, %bb.aq ], [ %i.ee, %bb.at ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #29
          to label %.thread152 unwind label %bb.bw

bb.aq:                                            ; preds = %bb.ap
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body83

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1523
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.eb = load i64, ptr %i.u, align 8, !range !8, !alias.scope !1525, !noundef !4
  %i.ec = trunc nuw i64 %i.eb to i1
  br i1 %i.ec, label %bb.as, label %bb.aw, !prof !6

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1526
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ed, i64 24, i1 false), !noalias !1527
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #33
          to label %bb.au unwind label %bb.at, !noalias !1528

bb.at:                                            ; preds = %bb.as
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_4path7PathBufEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #29
          to label %.body83 unwind label %bb.av, !noalias !1528

bb.au:                                            ; preds = %bb.as
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1528
  unreachable

bb.aw:                                            ; preds = %bb.ar
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !alias.scope !1528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !4, !noundef !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !4
  %i.el = trunc nuw i8 %i.cm to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !4, !noundef !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.sroa.3127.0.copyload = load i8, ptr %i.be, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1529
  %i.eu = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 24, i1 false)
  %.not.i105 = icmp ne i8 %.sroa.3127.0.copyload, 0
end_hunk_7
