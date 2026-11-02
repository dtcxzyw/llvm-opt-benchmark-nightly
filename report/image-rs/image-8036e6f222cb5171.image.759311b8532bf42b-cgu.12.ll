Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.12?download=true
inline.NumInlined: 1137
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvNtNtCsdsTQD3x2eOp_3exr4meta12sequence_end8has_comeINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.val4.pre.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !685, !noalias !684
  store i8 3, ptr %i.a, align 8, !alias.scope !685, !noalias !684
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i unwind label %common.resume.i.i, !noalias !680

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !684
  br label %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE7peek_u8Csa5QsYiPB8Gl_5image.exit.i

common.resume.i.i:                                ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i8 %spec.select2.i.i.i.i, ptr %1, align 8, !alias.scope !679
  store i8 %spec.select.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !679
  store ptr %i.d, ptr %.sroa.718.0..sroa_idx.i.i, align 8, !alias.scope !679
  resume { ptr, i32 } %i.n

_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE7peek_u8Csa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResulthNtNtNtB5_2io5error5ErrorEE7or_elseNCNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB1L_8PeekReadINtB1L_8TrackingINtNtB19_6cursor6CursorRShEEE7peek_u80ECsa5QsYiPB8Gl_5image.exit.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResulthNtNtNtB5_2io5error5ErrorEE7or_elseNCNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB1L_8PeekReadINtB1L_8TrackingINtNtB19_6cursor6CursorRShEEE7peek_u80ECsa5QsYiPB8Gl_5image.exit.thread.i.i
  %.sroa.08.028.i.i = phi i8 [ %.sroa.016.0.copyload.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResulthNtNtNtB5_2io5error5ErrorEE7or_elseNCNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB1L_8PeekReadINtB1L_8TrackingINtNtB19_6cursor6CursorRShEEE7peek_u80ECsa5QsYiPB8Gl_5image.exit.thread.i.i ], [ %spec.select2.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResulthNtNtNtB5_2io5error5ErrorEE7or_elseNCNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB1L_8PeekReadINtB1L_8TrackingINtNtB19_6cursor6CursorRShEEE7peek_u80ECsa5QsYiPB8Gl_5image.exit.i.i ], [ %spec.select2.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.027.i.i = phi i8 [ %.sroa.5.0.copyload.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResulthNtNtNtB5_2io5error5ErrorEE7or_elseNCNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB1L_8PeekReadINtB1L_8TrackingINtNtB19_6cursor6CursorRShEEE7peek_u80ECsa5QsYiPB8Gl_5image.exit.thread.i.i ], [ %spec.select.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResulthNtNtNtB5_2io5error5ErrorEE7or_elseNCNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB1L_8PeekReadINtB1L_8TrackingINtNtB19_6cursor6CursorRShEEE7peek_u80ECsa5QsYiPB8Gl_5image.exit.i.i ], [ %spec.select.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i ] ; 2 uses
  %.sroa.57.sroa.4.0.copyload.i = phi ptr [ %.sroa.718.0.copyload.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResulthNtNtNtB5_2io5error5ErrorEE7or_elseNCNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB1L_8PeekReadINtB1L_8TrackingINtNtB19_6cursor6CursorRShEEE7peek_u80ECsa5QsYiPB8Gl_5image.exit.thread.i.i ], [ %i.d, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtB5_6result6ResulthNtNtNtB5_2io5error5ErrorEE7or_elseNCNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB1L_8PeekReadINtB1L_8TrackingINtNtB19_6cursor6CursorRShEEE7peek_u80ECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i ] ; 3 uses
  store i8 %.sroa.08.028.i.i, ptr %1, align 8, !alias.scope !679
  store i8 %.sroa.6.027.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.617.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.i, i64 6, i1 false), !noalias !680
  store ptr %.sroa.57.sroa.4.0.copyload.i, ptr %.sroa.718.0..sroa_idx.i.i, align 8, !alias.scope !679
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.o = trunc nuw i8 %.sroa.08.028.i.i to i1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE7peek_u8Csa5QsYiPB8Gl_5image.exit.i
  %i.p = icmp eq i8 %.sroa.6.027.i.i, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i, label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.e
  store i8 2, ptr %1, align 8, !alias.scope !677
  br label %bb.h

bb.f:                                             ; preds = %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE7peek_u8Csa5QsYiPB8Gl_5image.exit.i
  store i8 2, ptr %1, align 8, !alias.scope !677
  %.not12.i = icmp eq ptr %.sroa.57.sroa.4.0.copyload.i, null
  br i1 %.not12.i, label %bb.g, label %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE10skip_if_eqCsa5QsYiPB8Gl_5image.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #20, !noalias !680
  unreachable

_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE10skip_if_eqCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.f
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %.sroa.57.sroa.4.0.copyload.i)
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.5.0.ph = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.ph, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE10skip_if_eqCsa5QsYiPB8Gl_5image.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdsTQD3x2eOp_3exr4meta12sequence_end8has_comeRShECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i.i = alloca [6 x i8], align 2         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.016.0.copyload.i.i = load i8, ptr %1, align 8, !alias.scope !707 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.sroa.617.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %.sroa.718.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.sroa.016.0.copyload.i.i, 2
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.718.0.copyload.i.i = load ptr, ptr %.sroa.718.0..sroa_idx.i.i, align 8, !alias.scope !707
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.617.0..sroa_idx.i.i, i64 6, i1 false), !noalias !708
  br label %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !712, !noalias !713, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !712, !noalias !713, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = add nsw i64 %i.c, -1
  %i.h = load i8, ptr %i.e, align 1, !noalias !714, !noundef !5
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.4.0.i.i.i.i = phi i8 [ %i.h, %bb.d ], [ undef, %bb.c ]
  %.sink9.i.i.i.i.i = phi ptr [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  %.sink.i.i.i.i.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.c ]
  %storemerge.i.i.i.i.i = phi i8 [ 0, %bb.d ], [ 1, %bb.c ]
  store ptr %.sink9.i.i.i.i.i, ptr %i.a, align 8, !alias.scope !712, !noalias !713
  store i64 %.sink.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !712, !noalias !713
  br label %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i

_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.b
  %.sroa.57.sroa.4.0.copyload.i = phi ptr [ @45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.718.0.copyload.i.i, %bb.b ] ; 3 uses
  %.sroa.6.0.i.i = phi i8 [ %.sroa.4.0.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.b ] ; 2 uses
  %.sroa.08.0.i.i = phi i8 [ %storemerge.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.016.0.copyload.i.i, %bb.b ] ; 2 uses
  store i8 %.sroa.08.0.i.i, ptr %1, align 8, !alias.scope !707
  store i8 %.sroa.6.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.617.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.i, i64 6, i1 false), !noalias !708
  store ptr %.sroa.57.sroa.4.0.copyload.i, ptr %.sroa.718.0..sroa_idx.i.i, align 8, !alias.scope !707
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.i = trunc nuw i8 %.sroa.08.0.i.i to i1
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i
  %i.j = icmp eq i8 %.sroa.6.0.i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i, label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.e
  store i8 2, ptr %1, align 8, !alias.scope !705
  br label %bb.h

bb.f:                                             ; preds = %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i
  store i8 2, ptr %1, align 8, !alias.scope !705
  %.not12.i = icmp eq ptr %.sroa.57.sroa.4.0.copyload.i, null
  br i1 %.not12.i, label %bb.g, label %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE10skip_if_eqCsa5QsYiPB8Gl_5image.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #20, !noalias !715
  unreachable

_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE10skip_if_eqCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.f
  tail call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %.sroa.57.sroa.4.0.copyload.i)
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.5.0.ph = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.ph, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE10skip_if_eqCsa5QsYiPB8Gl_5image.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj1_KB12_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.f = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %i.f, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !24

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !724
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  store ptr %.sroa.06.0.copyload, ptr %i.c, align 8, !alias.scope !724
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.47.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8, !alias.scope !724
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhBB_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KBB_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !725
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj1_BC_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBC_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d), !noalias !726
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.h = icmp samesign eq i64 %1, 0
  br i1 %i.h, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_KBU_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.i = ptrtoint ptr %i.b to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit
  %.sroa.09.0.i17 = phi ptr [ %0, %.lr.ph ], [ %i.j, %.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i17, i64 1 ; 2 uses
  %i.k = call i16 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj1_EEB1F_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Z_B1W_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(i64 noundef %i.i), !noalias !727 ; 2 uses
  %.sroa.413.0.extract.shift = lshr i16 %i.k, 8
  %.sroa.413.0.extract.trunc = trunc nuw i16 %.sroa.413.0.extract.shift to i8
  %.sroa.06.0.copyload.i = load i8, ptr %.sroa.09.0.i17, align 1, !noalias !727
  %5 = trunc i16 %i.k to i1
  %.us-phi = select i1 %5, i8 %.sroa.413.0.extract.trunc, i8 %.sroa.06.0.copyload.i
  store i8 %.us-phi, ptr %.sroa.09.0.i17, align 1, !noalias !727
  %i.l = icmp eq ptr %i.j, %i.g
  br i1 %i.l, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_KBU_EB4_.exit, label %.loopexit

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_KBU_EB4_.exit: ; preds = %.loopexit, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj1_Kj2_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %.idx = and i64 %1, 9223372036854775806         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.f = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %i.f, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !24

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !736
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  store ptr %.sroa.06.0.copyload, ptr %i.c, align 8, !alias.scope !736
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.47.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8, !alias.scope !736
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj2_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !737
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj2_j1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d), !noalias !738
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_Kj2_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.i = ptrtoint ptr %i.b to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit
  %.sroa.09.0.i17 = phi ptr [ %0, %.lr.ph ], [ %i.j, %.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i17, i64 2 ; 2 uses
  %i.k = call i24 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj2_EEj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(i64 noundef %i.i), !noalias !739 ; 2 uses
  %.sroa.413.0.extract.shift = lshr i24 %i.k, 8
  %.sroa.413.0.extract.trunc = trunc nuw i24 %.sroa.413.0.extract.shift to i16
  %.sroa.06.0.copyload.i = load i16, ptr %.sroa.09.0.i17, align 1, !noalias !739
  %5 = trunc i24 %i.k to i1
  %.us-phi = select i1 %5, i16 %.sroa.413.0.extract.trunc, i16 %.sroa.06.0.copyload.i
  store i16 %.us-phi, ptr %.sroa.09.0.i17, align 1, !noalias !739
  %i.l = icmp eq ptr %i.j, %i.g
  br i1 %i.l, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_Kj2_EB4_.exit, label %.loopexit

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_Kj2_EB4_.exit: ; preds = %.loopexit, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj2_KB12_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = icmp eq i64 %3, 2
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.g = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.g, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !24

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !750
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.d, align 8, !alias.scope !750
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.46.0..sroa_idx, i64 24, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhBB_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KBB_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !751
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj2_BC_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBC_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e), !noalias !752
  %.idx = and i64 %1, 9223372036854775804         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.i = icmp samesign eq i64 %.idx, 0
  br i1 %i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_KBU_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.l = insertelement <2 x ptr> %i.k, ptr %i.j, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.q, %.cont ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !751
  store <2 x ptr> %i.l, ptr %i.b, align 16, !alias.scope !753, !noalias !754
  %i.m = call i48 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj2_EEB1F_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Z_B1W_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b), !noalias !754 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i48 %i.m, 8
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  %.sroa.6.0.extract.shift = lshr i48 %i.m, 32
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !751
  %i.n = trunc i48 %i.m to i1
  br i1 %i.n, label %.cont14, label %.else15

.else15:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i16, ptr %.sroa.07.0.i13, align 1, !noalias !754
  br label %.cont14

.cont14:                                          ; preds = %bb.c, %.else15
  %.sroa.04.0.i = phi i16 [ %.sroa.4.0.extract.trunc, %bb.c ], [ %.sroa.04.0.i.else.val, %.else15 ]
  store i16 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !754
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %i.p = and i48 %i.m, 16777216
  %.not = icmp eq i48 %i.p, 0
  br i1 %.not, label %.else, label %.cont

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.1.else.val = load i16, ptr %i.o, align 1, !noalias !754
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.1 = phi i16 [ %.sroa.6.0.extract.trunc, %.cont14 ], [ %.sroa.04.0.i.1.else.val, %.else ]
  store i16 %.sroa.04.0.i.1, ptr %i.o, align 1, !noalias !754
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_KBU_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_KBU_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj2_Kj1_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = icmp eq i64 %3, 2
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.g = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.g, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !24

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !765
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.d, align 8, !alias.scope !765
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.46.0..sroa_idx, i64 24, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj1_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !766
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj1_j2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e), !noalias !767
  %.idx = and i64 %1, 9223372036854775806         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.i = icmp samesign eq i64 %.idx, 0
  br i1 %i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_Kj1_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.l = insertelement <2 x ptr> %i.k, ptr %i.j, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.q, %.cont ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !766
  store <2 x ptr> %i.l, ptr %i.b, align 16, !alias.scope !768, !noalias !769
  %i.m = call i32 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj1_EEj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b), !noalias !769 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i32 %i.m, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i32 %i.m, 24
  %.sroa.6.0.extract.trunc = trunc nuw i32 %.sroa.6.0.extract.shift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !766
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %.cont14, label %.else15

.else15:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i8, ptr %.sroa.07.0.i13, align 1, !noalias !769
  br label %.cont14

.cont14:                                          ; preds = %bb.c, %.else15
  %.sroa.04.0.i = phi i8 [ %.sroa.4.0.extract.trunc, %bb.c ], [ %.sroa.04.0.i.else.val, %.else15 ]
  store i8 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !769
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 1 ; 2 uses
  %i.p = and i32 %i.m, 65536
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.else, label %.cont

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.1.else.val = load i8, ptr %i.o, align 1, !noalias !769
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.1 = phi i8 [ %.sroa.6.0.extract.trunc, %.cont14 ], [ %.sroa.04.0.i.1.else.val, %.else ]
  store i8 %.sroa.04.0.i.1, ptr %i.o, align 1, !noalias !769
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_Kj1_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_Kj1_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj3_Kj1_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = icmp eq i64 %3, 3
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.g = icmp eq ptr %.sroa.05.0.copyload, null
end_hunk_0
