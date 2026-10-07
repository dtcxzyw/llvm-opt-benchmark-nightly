Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.15?download=true
inline.NumInlined: 752
inline.NumDeleted: 395
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB1e_
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !444 {
bb.a:
    #dbg_value(ptr %0, !2949, !DIExpression(), !6348)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !6349

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2954, !DIExpression(), !6345)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB1l_.exit unwind label %bb.d, !dbg !6350

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2954, !DIExpression(), !6347)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !6351
  ret void, !dbg !6349

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !6349
  unreachable, !dbg !6349

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6349
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !403 {
bb.a:
    #dbg_value(ptr %0, !2720, !DIExpression(), !6356)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !6357

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2725, !DIExpression(), !6353)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !6358

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2725, !DIExpression(), !6355)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !6359
  ret void, !dbg !6357

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !6357
  unreachable, !dbg !6357

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6357
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !446 {
bb.a:
    #dbg_value(ptr %0, !2963, !DIExpression(), !6368)
  %i.a = load i64, ptr %0, align 8, !dbg !6369, !range !2713, !noundef !1418
  %i.b = icmp eq i64 %i.a, -1, !dbg !6369
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !6369

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, %bb.a
  ret void, !dbg !6369

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2715, !DIExpression(), !6361)
    #dbg_value(ptr %0, !2720, !DIExpression(), !6363)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !6370

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2725, !DIExpression(), !6365)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.e, !dbg !6371

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !6370
  unreachable, !dbg !6370

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !6370

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !2725, !DIExpression(), !6367)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6372
  br label %bb.b, !dbg !6369
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6373 {
bb.a:
    #dbg_value(ptr %0, !6493, !DIExpression(), !6497)
  %i.a = load i8, ptr %0, align 8, !dbg !6541, !range !2967, !noundef !1418 ; 4 uses
  %i.b = icmp ne i8 %i.a, 10, !dbg !6541
  tail call void @llvm.assume(i1 %i.b), !dbg !6541
  %i.c = add nsw i8 %i.a, -2, !dbg !6541
  %i.d = icmp samesign ugt i8 %i.a, 1, !dbg !6541
  %narrow = select i1 %i.d, i8 %i.c, i8 8, !dbg !6541
  switch i8 %narrow, label %bb.b [
    i8 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit
    i8 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit
    i8 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit
    i8 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit
    i8 4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit
    i8 5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.i
    i8 10, label %bb.k
  ], !dbg !6541

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6541 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6498), !dbg !6541
    #dbg_value(ptr %i.e, !2969, !DIExpression(), !6377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6499), !dbg !6542
    #dbg_value(ptr %i.e, !2976, !DIExpression(), !6381)
    #dbg_value(ptr %i.e, !2979, !DIExpression(), !6383)
    #dbg_value(i64 1, !2987, !DIExpression(), !6385)
    #dbg_value(i8 1, !2993, !DIExpression(), !6385)
    #dbg_value(i64 1, !2995, !DIExpression(), !6387)
    #dbg_value(i8 1, !3000, !DIExpression(), !6387)
  %i.f = load ptr, ptr %i.e, align 8, !dbg !6543, !alias.scope !6500, !nonnull !1418, !noundef !1418
    #dbg_value(ptr %i.f, !2992, !DIExpression(), !6389)
    #dbg_value(ptr %i.f, !2999, !DIExpression(), !6387)
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !6544, !noalias !6500
  %i.h = icmp eq i64 %i.g, 1, !dbg !6545
  br i1 %i.h, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6545

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !3009, !DIExpression(), !6391)
  fence acquire, !dbg !6546
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #27, !dbg !6547
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6547

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c, %bb.b, %bb.e, %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void, !dbg !6541

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6541
  %.val = load ptr, ptr %i.i, align 8, !dbg !6541, !nonnull !1418, !noundef !1418
    #dbg_value(ptr poison, !6502, !DIExpression(), !6394)
    #dbg_value(ptr poison, !6508, !DIExpression(), !6402)
    #dbg_value(ptr %.val, !6509, !DIExpression(), !6403)
    #dbg_value(i64 16, !6510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6404)
    #dbg_value(i64 16, !6510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6404)
    #dbg_value(ptr poison, !3031, !DIExpression(), !6406)
    #dbg_value(ptr poison, !3038, !DIExpression(), !6408)
    #dbg_value(ptr %.val, !3035, !DIExpression(), !6406)
    #dbg_value(ptr %.val, !3041, !DIExpression(), !6408)
    #dbg_value(ptr %.val, !3044, !DIExpression(), !6410)
    #dbg_value(ptr %.val, !3050, !DIExpression(), !6412)
    #dbg_value(i64 16, !3036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6406)
    #dbg_value(i64 16, !3042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6408)
    #dbg_value(i64 16, !3048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6410)
    #dbg_value(i64 16, !3051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6412)
    #dbg_value(i64 16, !3036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6406)
    #dbg_value(i64 16, !3042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6408)
    #dbg_value(i64 16, !3048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6410)
    #dbg_value(i64 16, !3051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6412)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 16, i64 noundef 16) #28, !dbg !6548
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6541

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6541
  %.val1 = load ptr, ptr %i.j, align 8, !dbg !6541, !nonnull !1418, !noundef !1418
    #dbg_value(ptr poison, !6518, !DIExpression(), !6415)
    #dbg_value(ptr poison, !6524, !DIExpression(), !6421)
    #dbg_value(ptr %.val1, !6525, !DIExpression(), !6422)
    #dbg_value(i64 16, !6526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6423)
    #dbg_value(i64 16, !6526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6423)
    #dbg_value(ptr poison, !3031, !DIExpression(), !6425)
    #dbg_value(ptr poison, !3038, !DIExpression(), !6427)
    #dbg_value(ptr %.val1, !3035, !DIExpression(), !6425)
    #dbg_value(ptr %.val1, !3041, !DIExpression(), !6427)
    #dbg_value(ptr %.val1, !3044, !DIExpression(), !6429)
    #dbg_value(ptr %.val1, !3050, !DIExpression(), !6431)
    #dbg_value(i64 16, !3036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6425)
    #dbg_value(i64 16, !3042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6427)
    #dbg_value(i64 16, !3048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6429)
    #dbg_value(i64 16, !3051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6431)
    #dbg_value(i64 16, !3036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6425)
    #dbg_value(i64 16, !3042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6427)
    #dbg_value(i64 16, !3048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6429)
    #dbg_value(i64 16, !3051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6431)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 16, i64 noundef 16) #28, !dbg !6549
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6541

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6531), !dbg !6541
    #dbg_value(ptr %0, !3060, !DIExpression(), !6435)
  %1 = trunc nuw i8 %i.a to i1, !dbg !6550
  br i1 %1, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6550

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6550 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6532), !dbg !6550
    #dbg_value(ptr %i.k, !3067, !DIExpression(), !6439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6533), !dbg !6551
    #dbg_value(ptr %i.k, !3073, !DIExpression(), !6443)
    #dbg_value(ptr %i.k, !3075, !DIExpression(), !6445)
    #dbg_value(i64 1, !3084, !DIExpression(), !6447)
    #dbg_value(i8 1, !3086, !DIExpression(), !6447)
    #dbg_value(i64 1, !3088, !DIExpression(), !6449)
    #dbg_value(i8 1, !3090, !DIExpression(), !6449)
  %i.l = load ptr, ptr %i.k, align 8, !dbg !6552, !alias.scope !6534, !nonnull !1418, !noundef !1418
    #dbg_value(ptr %i.l, !3085, !DIExpression(), !6451)
    #dbg_value(ptr %i.l, !3089, !DIExpression(), !6449)
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !dbg !6553, !noalias !6534
  %i.n = icmp eq i64 %i.m, 1, !dbg !6554
  br i1 %i.n, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6554

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !3009, !DIExpression(), !6453)
  fence acquire, !dbg !6555
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #27, !dbg !6556
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6556

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6541 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6535), !dbg !6541
    #dbg_value(ptr %i.o, !3097, !DIExpression(), !6457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6536), !dbg !6557
    #dbg_value(ptr %i.o, !3103, !DIExpression(), !6461)
    #dbg_value(ptr %i.o, !3105, !DIExpression(), !6463)
    #dbg_value(i64 1, !3112, !DIExpression(), !6465)
    #dbg_value(i8 1, !3114, !DIExpression(), !6465)
    #dbg_value(i64 1, !3116, !DIExpression(), !6467)
    #dbg_value(i8 1, !3118, !DIExpression(), !6467)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !6558, !alias.scope !6537, !nonnull !1418, !noundef !1418
    #dbg_value(ptr %i.p, !3113, !DIExpression(), !6469)
    #dbg_value(ptr %i.p, !3117, !DIExpression(), !6467)
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !6559, !noalias !6537
  %i.r = icmp eq i64 %i.q, 1, !dbg !6560
  br i1 %i.r, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6560

bb.j:                                             ; preds = %bb.i
    #dbg_value(i8 2, !3009, !DIExpression(), !6471)
  fence acquire, !dbg !6561
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9drop_slowB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #27, !dbg !6562
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6562

bb.k:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6541 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6538), !dbg !6541
    #dbg_value(ptr %i.s, !3125, !DIExpression(), !6475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6539), !dbg !6563
    #dbg_value(ptr %i.s, !3131, !DIExpression(), !6479)
    #dbg_value(ptr %i.s, !3133, !DIExpression(), !6481)
    #dbg_value(i64 1, !3140, !DIExpression(), !6483)
    #dbg_value(i8 1, !3142, !DIExpression(), !6483)
    #dbg_value(i64 1, !3144, !DIExpression(), !6485)
    #dbg_value(i8 1, !3146, !DIExpression(), !6485)
  %i.t = load ptr, ptr %i.s, align 8, !dbg !6564, !alias.scope !6540, !nonnull !1418, !noundef !1418
    #dbg_value(ptr %i.t, !3141, !DIExpression(), !6487)
    #dbg_value(ptr %i.t, !3145, !DIExpression(), !6485)
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !6565, !noalias !6540
  %i.v = icmp eq i64 %i.u, 1, !dbg !6566
  br i1 %i.v, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6566

bb.l:                                             ; preds = %bb.k
    #dbg_value(i8 2, !3009, !DIExpression(), !6489)
  fence acquire, !dbg !6567
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #27, !dbg !6568
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6568
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !482 {
bb.a:
    #dbg_value(ptr %0, !3155, !DIExpression(), !6575)
    #dbg_value(ptr %0, !2720, !DIExpression(), !6570)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.b, !dbg !6576

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2725, !DIExpression(), !6572)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.c, !dbg !6577

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !6576
  unreachable, !dbg !6576

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6576

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a
    #dbg_value(ptr %0, !2725, !DIExpression(), !6574)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6578
  ret void, !dbg !6579
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !402 {
bb.a:
    #dbg_value(ptr %0, !2715, !DIExpression(), !6586)
    #dbg_value(ptr %0, !2720, !DIExpression(), !6581)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.b, !dbg !6587

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2725, !DIExpression(), !6583)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.c, !dbg !6588

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !6587
  unreachable, !dbg !6587

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6587

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a
    #dbg_value(ptr %0, !2725, !DIExpression(), !6585)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6589
  ret void, !dbg !6590
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera2vm8for_loop15ForLoopIteratorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 !dbg !6591 {
bb.a:
    #dbg_value(ptr %0, !6650, !DIExpression(), !6652)
  %i.a = load i64, ptr %0, align 8, !dbg !6662, !range !3193, !noundef !1418
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.d
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.b
  ], !dbg !6662

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6662 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6653), !dbg !6662
    #dbg_value(ptr %i.b, !2969, !DIExpression(), !6595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6654), !dbg !6663
    #dbg_value(ptr %i.b, !2976, !DIExpression(), !6599)
    #dbg_value(ptr %i.b, !2979, !DIExpression(), !6601)
    #dbg_value(i64 1, !2987, !DIExpression(), !6603)
    #dbg_value(i8 1, !2993, !DIExpression(), !6603)
    #dbg_value(i64 1, !2995, !DIExpression(), !6605)
    #dbg_value(i8 1, !3000, !DIExpression(), !6605)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !6664, !alias.scope !6655, !nonnull !1418, !noundef !1418
    #dbg_value(ptr %i.c, !2992, !DIExpression(), !6607)
    #dbg_value(ptr %i.c, !2999, !DIExpression(), !6605)
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !6665, !noalias !6655
  %i.e = icmp eq i64 %i.d, 1, !dbg !6666
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6666

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !3009, !DIExpression(), !6609)
  fence acquire, !dbg !6667
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #27, !dbg !6668
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6668

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6662 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6656), !dbg !6662
    #dbg_value(ptr %i.f, !3097, !DIExpression(), !6613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6657), !dbg !6669
    #dbg_value(ptr %i.f, !3103, !DIExpression(), !6617)
    #dbg_value(ptr %i.f, !3105, !DIExpression(), !6619)
    #dbg_value(i64 1, !3112, !DIExpression(), !6621)
    #dbg_value(i8 1, !3114, !DIExpression(), !6621)
    #dbg_value(i64 1, !3116, !DIExpression(), !6623)
    #dbg_value(i8 1, !3118, !DIExpression(), !6623)
  %i.g = load ptr, ptr %i.f, align 8, !dbg !6670, !alias.scope !6658, !nonnull !1418, !noundef !1418
    #dbg_value(ptr %i.g, !3113, !DIExpression(), !6625)
    #dbg_value(ptr %i.g, !3117, !DIExpression(), !6623)
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !6671, !noalias !6658
  %i.i = icmp eq i64 %i.h, 1, !dbg !6672
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6672

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !3009, !DIExpression(), !6627)
  fence acquire, !dbg !6673
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9drop_slowB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #27, !dbg !6674
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera.exit, !dbg !6674

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6662
    #dbg_value(ptr %i.j, !3195, !DIExpression(), !6629)
end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBG_5ValueEEBI_:bb.a
    #dbg_value(i8 2, !3009, !DIExpression(), !8607)
  fence acquire, !dbg !8623
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #27
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit unwind label %bb.d, !dbg !8624

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !8617
    #dbg_value(ptr %i.h, !3203, !DIExpression(), !8609)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit unwind label %bb.e, !dbg !8625

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !8617
    #dbg_value(ptr %i.i, !3203, !DIExpression(), !8611)
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !8626
  ret void, !dbg !8617

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !8617
  unreachable, !dbg !8617

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.g, !dbg !8617
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !503 {
bb.a:
    #dbg_value(ptr %0, !3271, !DIExpression(), !8635)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8636 ; 3 uses
    #dbg_value(ptr %i.a, !2715, !DIExpression(), !8628)
    #dbg_value(ptr %i.a, !2720, !DIExpression(), !8630)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.b, !dbg !8637

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2725, !DIExpression(), !8632)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.c, !dbg !8638

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !8637
  unreachable, !dbg !8637

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !8637

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !2725, !DIExpression(), !8634)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !8639
  ret void, !dbg !8636
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !505 {
bb.a:
    #dbg_value(ptr %0, !3281, !DIExpression(), !8648)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8649 ; 3 uses
    #dbg_value(ptr %i.a, !2715, !DIExpression(), !8641)
    #dbg_value(ptr %i.a, !2720, !DIExpression(), !8643)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.b, !dbg !8650

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2725, !DIExpression(), !8645)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.c, !dbg !8651

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !8650
  unreachable, !dbg !8650

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !8650

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !2725, !DIExpression(), !8647)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !8652
  ret void, !dbg !8649
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 !dbg !8657 {
bb.a:
    #dbg_value(ptr %0, !8673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8678)
    #dbg_value(i64 %1, !8673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8678)
    #dbg_value(ptr %2, !8674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8678)
    #dbg_value(i64 %3, !8674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8678)
    #dbg_value(i64 %1, !8679, !DIExpression(), !8688)
  %.not = icmp eq i64 %1, %3, !dbg !8689
  br i1 %.not, label %bb.b, label %bb.c, !dbg !8689, !prof !3303

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %2, !8684, !DIExpression(), !8688)
    #dbg_value(ptr %0, !8685, !DIExpression(), !8688)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false), !dbg !8690
  ret void, !dbg !8691

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #29, !dbg !8692
  unreachable, !dbg !8692
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 !dbg !8694 {
bb.a:
    #dbg_value(ptr %0, !8701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8704)
    #dbg_value(i64 %1, !8701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8704)
    #dbg_value(ptr %2, !8702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8704)
    #dbg_value(i64 %3, !8702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8704)
    #dbg_value(i64 %1, !8705, !DIExpression(), !8710)
  %.not = icmp eq i64 %1, %3, !dbg !8711
  br i1 %.not, label %bb.b, label %bb.c, !dbg !8711, !prof !3303

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %2, !8706, !DIExpression(), !8710)
    #dbg_value(ptr %0, !8707, !DIExpression(), !8710)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false), !dbg !8712
  ret void, !dbg !8713

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #29, !dbg !8714
  unreachable, !dbg !8714
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 !dbg !8720 {
bb.a:
    #dbg_value(ptr poison, !8762, !DIExpression(), !8772)
    #dbg_value(ptr poison, !8784, !DIExpression(), !8787)
    #dbg_value(ptr poison, !8779, !DIExpression(), !8788)
    #dbg_value(ptr %0, !8755, !DIExpression(), !8789)
    #dbg_value(ptr %0, !8790, !DIExpression(), !8798)
    #dbg_value(ptr %1, !8756, !DIExpression(), !8789)
    #dbg_value(ptr %1, !8790, !DIExpression(), !8800)
    #dbg_value(i64 %2, !8757, !DIExpression(), !8789)
    #dbg_value(i64 1, !8801, !DIExpression(), !8806)
    #dbg_value(i64 1, !8807, !DIExpression(), !8811)
    #dbg_value(i64 %2, !8758, !DIExpression(), !8812)
    #dbg_value(i64 0, !8759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8813)
    #dbg_value(i64 %2, !8759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8813)
    #dbg_value(ptr undef, !8779, !DIExpression(), !8788)
    #dbg_value(ptr undef, !8784, !DIExpression(), !8787)
    #dbg_value(ptr undef, !8762, !DIExpression(), !8772)
    #dbg_value(ptr undef, !8766, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8814)
  %min.iters.check = icmp ult i64 %2, 8, !dbg !8771
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !8771

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3, !dbg !8771                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a, !dbg !8771
  %i.c = getelementptr i8, ptr %1, i64 %i.a, !dbg !8771
  %bound0 = icmp ult ptr %0, %i.c, !dbg !8771
  %bound1 = icmp ult ptr %1, %i.b, !dbg !8771
  %found.conflict = and i1 %bound0, %bound1, !dbg !8771
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !8829

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body, !dbg !8829

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !8829 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !8830 ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !8831 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8815), !dbg !8832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8816), !dbg !8832
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8833 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !dbg !8833, !alias.scope !8823, !noalias !8824
  %wide.load14 = load <2 x i64>, ptr %i.f, align 1, !dbg !8833, !alias.scope !8823, !noalias !8824
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !8834 ; 2 uses
  %wide.load15 = load <2 x i64>, ptr %i.e, align 1, !dbg !8834, !alias.scope !8824, !noalias !8815
  %wide.load16 = load <2 x i64>, ptr %i.g, align 1, !dbg !8834, !alias.scope !8824, !noalias !8815
  store <2 x i64> %wide.load15, ptr %i.d, align 1, !dbg !8835, !alias.scope !8823, !noalias !8824
  store <2 x i64> %wide.load16, ptr %i.f, align 1, !dbg !8835, !alias.scope !8823, !noalias !8824
  store <2 x i64> %wide.load, ptr %i.e, align 1, !dbg !8836, !alias.scope !8824, !noalias !8815
  store <2 x i64> %wide.load14, ptr %i.g, align 1, !dbg !8836, !alias.scope !8824, !noalias !8815
  %index.next = add nuw i64 %index, 4, !dbg !8829 ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec, !dbg !8771
  br i1 %i.h, label %middle.block, label %vector.body, !dbg !8771, !llvm.loop !8736

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !8771
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader, !dbg !8771

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.012.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.012.ph, 1, !dbg !8771
  %lcmp.mod.not = trunc i64 %2 to i1, !dbg !8771
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit, !dbg !8771

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !8785, !DIExpression(), !8825)
    #dbg_value(i64 poison, !8803, !DIExpression(), !8806)
    #dbg_value(i64 poison, !8808, !DIExpression(), !8811)
  %i.i = or disjoint i64 %.sroa.0.012.ph, 1, !dbg !8829
    #dbg_value(i64 %i.i, !8759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8813)
    #dbg_value(i64 poison, !8760, !DIExpression(), !8826)
    #dbg_value(i64 poison, !8793, !DIExpression(), !8798)
    #dbg_value(i64 poison, !8793, !DIExpression(), !8800)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.012.ph, !dbg !8830 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.012.ph, !dbg !8831 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8815), !dbg !8832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8816), !dbg !8832
    #dbg_value(ptr %i.j, !8820, !DIExpression(), !8737)
    #dbg_value(ptr %i.k, !8821, !DIExpression(), !8737)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !dbg !8833, !alias.scope !8815, !noalias !8816
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !dbg !8834, !alias.scope !8816, !noalias !8815
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !dbg !8835, !alias.scope !8815, !noalias !8816
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !dbg !8836, !alias.scope !8816, !noalias !8815
    #dbg_value(ptr undef, !8779, !DIExpression(), !8788)
    #dbg_value(ptr undef, !8784, !DIExpression(), !8787)
    #dbg_value(ptr undef, !8762, !DIExpression(), !8772)
    #dbg_value(ptr undef, !8766, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8814)
  br label %scalar.ph.prol.loopexit, !dbg !8771

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.unr = phi i64 [ %.sroa.0.012.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg, !dbg !8771
  br i1 %i.l, label %.loopexit, label %scalar.ph, !dbg !8771

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void, !dbg !8837

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.012 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.012.unr, %scalar.ph.prol.loopexit ] ; 4 uses
    #dbg_value(i64 %.sroa.0.012, !8785, !DIExpression(), !8825)
    #dbg_value(i64 %.sroa.0.012, !8803, !DIExpression(), !8806)
    #dbg_value(i64 %.sroa.0.012, !8808, !DIExpression(), !8811)
  %i.m = add nuw i64 %.sroa.0.012, 1, !dbg !8829  ; 2 uses
    #dbg_value(i64 %i.m, !8759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8813)
    #dbg_value(i64 %.sroa.0.012, !8760, !DIExpression(), !8826)
    #dbg_value(i64 %.sroa.0.012, !8793, !DIExpression(), !8798)
    #dbg_value(i64 %.sroa.0.012, !8793, !DIExpression(), !8800)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.012, !dbg !8830 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.012, !dbg !8831 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8815), !dbg !8832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8816), !dbg !8832
    #dbg_value(ptr %i.n, !8820, !DIExpression(), !8737)
    #dbg_value(ptr %i.o, !8821, !DIExpression(), !8737)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !dbg !8833, !alias.scope !8815, !noalias !8816
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !dbg !8834, !alias.scope !8816, !noalias !8815
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !dbg !8835, !alias.scope !8815, !noalias !8816
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !dbg !8836, !alias.scope !8816, !noalias !8815
    #dbg_value(ptr undef, !8779, !DIExpression(), !8788)
    #dbg_value(ptr undef, !8784, !DIExpression(), !8787)
    #dbg_value(ptr undef, !8762, !DIExpression(), !8772)
    #dbg_value(ptr undef, !8766, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8814)
    #dbg_value(i64 %i.m, !8785, !DIExpression(), !8825)
    #dbg_value(i64 %i.m, !8803, !DIExpression(), !8806)
    #dbg_value(i64 %i.m, !8808, !DIExpression(), !8811)
  %i.p = add nuw i64 %.sroa.0.012, 2, !dbg !8829  ; 2 uses
    #dbg_value(i64 %i.p, !8759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8813)
    #dbg_value(i64 %i.m, !8760, !DIExpression(), !8826)
    #dbg_value(i64 %i.m, !8793, !DIExpression(), !8798)
    #dbg_value(i64 %i.m, !8793, !DIExpression(), !8800)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m, !dbg !8830 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m, !dbg !8831 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8827), !dbg !8832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8828), !dbg !8832
    #dbg_value(ptr %i.q, !8820, !DIExpression(), !8737)
    #dbg_value(ptr %i.r, !8821, !DIExpression(), !8737)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !dbg !8833, !alias.scope !8827, !noalias !8828
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !dbg !8834, !alias.scope !8828, !noalias !8827
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !dbg !8835, !alias.scope !8827, !noalias !8828
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !dbg !8836, !alias.scope !8828, !noalias !8827
  %exitcond.not.1 = icmp eq i64 %i.p, %2, !dbg !8838
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !dbg !8771, !llvm.loop !8740
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1D_8adapters3map12map_try_foldBX_BX_B2B_INtNtB1F_6result6ResultB2B_zENCNvXsz_BZ_BX_INtNtB1F_7convert4FromINtB8_3VecBX_EE4from0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B43_EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8853 {
bb.a:
    #dbg_value(ptr %1, !8895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8908)
    #dbg_value(ptr %2, !8895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8908)
    #dbg_value(ptr %3, !8896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8908)
    #dbg_value(ptr %4, !8896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8908)
    #dbg_value(ptr %0, !8894, !DIExpression(), !8908)
    #dbg_declare(ptr poison, !8900, !DIExpression(), !8909)
    #dbg_value(i64 1, !8910, !DIExpression(), !8917)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !1418, !noundef !1418 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
    #dbg_value(ptr %1, !8895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8908)
    #dbg_value(ptr %2, !8895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8908)
    #dbg_value(ptr %0, !8919, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8928)
    #dbg_value(ptr %0, !8929, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8933)
    #dbg_value(ptr poison, !8922, !DIExpression(), !8934)
    #dbg_value(ptr poison, !8930, !DIExpression(), !8935)
  %.not20 = icmp eq ptr %.promoted, %i.b, !dbg !8966
  br i1 %.not20, label %bb.b, label %.lr.ph, !dbg !8927

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.021 = phi ptr [ %i.f, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.4.021, !8895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8908)
    #dbg_value(ptr %i.d, !8936, !DIExpression(), !8942)
    #dbg_value(ptr %i.d, !8914, !DIExpression(), !8917)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !8967 ; 3 uses
    #dbg_value(ptr poison, !8943, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !8860)
    #dbg_value(ptr poison, !8949, !DIExpression(DW_OP_deref), !8860)
    #dbg_value(ptr %1, !8947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8860)
    #dbg_value(ptr %.sroa.4.021, !8947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8860)
    #dbg_declare(ptr undef, !8948, !DIExpression(), !8861)
    #dbg_value(ptr %1, !8955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8864)
    #dbg_value(ptr %.sroa.4.021, !8955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8864)
    #dbg_value(ptr poison, !8960, !DIExpression(DW_OP_deref), !8864)
    #dbg_declare(ptr undef, !8959, !DIExpression(), !8865)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.021, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !8968
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.021, i64 24, !dbg !8969 ; 2 uses
    #dbg_value(ptr %i.f, !8955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8864)
    #dbg_value(ptr %1, !8895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8908)
    #dbg_value(ptr %i.f, !8895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8908)
    #dbg_value(ptr %1, !8895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8908)
    #dbg_value(ptr %i.f, !8895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8908)
    #dbg_value(ptr %0, !8919, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8928)
    #dbg_value(ptr %0, !8929, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8933)
    #dbg_value(ptr poison, !8922, !DIExpression(), !8934)
    #dbg_value(ptr poison, !8930, !DIExpression(), !8935)
  %.not = icmp eq ptr %i.e, %i.b, !dbg !8966
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !8927

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.e, ptr %i.c, align 8, !dbg !8970
  br label %bb.b, !dbg !8927

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.f, %._crit_edge ], [ %2, %bb.a ]
    #dbg_value(ptr %1, !8962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8872)
    #dbg_value(ptr %.sroa.4.0.lcssa, !8962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8872)
  %i.g = insertvalue { ptr, ptr } poison, ptr %1, 0, !dbg !8971
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.lcssa, 1, !dbg !8971
  ret { ptr, ptr } %i.h, !dbg !8972
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldBX_TNtNtBa_6string6StringTBX_NtNtB11_12instructions5ChunkEEuNCNvMNtB13_8templateNtB4x_8Template3news_0NCINvNvB1U_8for_each4callB3x_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5L_7HashMapB3y_B3T_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1Y_7collect6ExtendB3x_E6extendINtB30_3MapBI_B4s_EE0E0E0EB13_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8979 {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !9566, !DIExpression(), !9048)
    #dbg_value(ptr poison, !9574, !DIExpression(), !9049)
    #dbg_value(ptr poison, !9712, !DIExpression(), !9052)
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 9 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !9566, !DIExpression(), !9057)
    #dbg_value(ptr poison, !9574, !DIExpression(), !9058)
    #dbg_value(ptr poison, !9712, !DIExpression(), !9060)
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 9 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !9566, !DIExpression(), !9065)
    #dbg_value(ptr poison, !9574, !DIExpression(), !9066)
    #dbg_value(ptr poison, !9712, !DIExpression(), !9068)
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [40 x i8], align 8                ; 9 uses
  %i.v = alloca [64 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !9566, !DIExpression(), !9073)
    #dbg_value(ptr poison, !9574, !DIExpression(), !9074)
    #dbg_value(ptr poison, !9712, !DIExpression(), !9076)
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [40 x i8], align 8                ; 9 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !9566, !DIExpression(), !9081)
    #dbg_value(ptr poison, !9574, !DIExpression(), !9082)
    #dbg_value(ptr poison, !9712, !DIExpression(), !9084)
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [40 x i8], align 8               ; 9 uses
  %i.ab = alloca [64 x i8], align 8               ; 4 uses
  %i.ac = alloca [168 x i8], align 8              ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [48 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 7 uses
  %i.ai = alloca [64 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtCs5yXxDE1DkoT_4tera5value6number3pow:bb.a
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20708

bb.i:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5615, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20381)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20709
  %i.am = load i64, ptr %i.al, align 8, !dbg !20709, !alias.scope !20581, !noalias !20582, !noundef !1418
  %i.an = sext i64 %i.am to i128, !dbg !20709
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20710

bb.j:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5616, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20382)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20711
  %i.ap = load double, ptr %i.ao, align 8, !dbg !20711, !alias.scope !20581, !noalias !20582, !noundef !1418
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20712

bb.k:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5617, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20383)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20713
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !20713, !alias.scope !20581, !noalias !20582, !nonnull !1418, !noundef !1418
  %i.as = load i128, ptr %i.ar, align 16, !dbg !20713, !noalias !20583, !noundef !1418 ; 2 uses
    #dbg_value(i128 %i.as, !5641, !DIExpression(), !20385)
  %i.at = icmp slt i128 %i.as, 0, !dbg !20714
  br i1 %i.at, label %bb.m, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20714

bb.l:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5618, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20386)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20715
  %i.av = load ptr, ptr %i.au, align 8, !dbg !20715, !alias.scope !20581, !noalias !20582, !nonnull !1418, !noundef !1418
  %i.aw = load i128, ptr %i.av, align 16, !dbg !20715, !noalias !20583, !noundef !1418
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20716

bb.m:                                             ; preds = %bb.k
    #dbg_value(i128 poison, !5637, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !20387)
    #dbg_value(i128 poison, !5637, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20387)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20717

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126: ; preds = %bb.k, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %.sroa.10130.0 = phi i128 [ %i.aw, %bb.l ], [ %i.ak, %bb.h ], [ %i.an, %bb.i ], [ undef, %bb.j ], [ undef, %bb.m ], [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit ], [ %i.as, %bb.k ] ; 7 uses
  %.sroa.8129.0 = phi double [ undef, %bb.l ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.ap, %bb.j ], [ undef, %bb.m ], [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit ], [ undef, %bb.k ] ; 2 uses
  %.not116 = phi i1 [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ true, %bb.m ], [ true, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit ], [ false, %bb.k ], !dbg !20718
  %i.ax = phi i1 [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %bb.m ], [ false, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit ], [ false, %bb.k ], !dbg !20718 ; 3 uses
  br i1 %.not115, label %bb.o, label %bb.n, !dbg !20719

bb.n:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126
  br i1 %.not116, label %bb.r, label %bb.q, !dbg !20719

bb.o:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126
    #dbg_value(ptr %1, !20475, !DIExpression(), !20566)
  tail call fastcc void @_RNvNtNtCs5yXxDE1DkoT_4tera5value6number9arg_error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !20720
  br label %bb.p, !dbg !20721

bb.p:                                             ; preds = %bb.ae, %bb.ad, %bb.r, %bb.o
  ret void, !dbg !20722

bb.q:                                             ; preds = %bb.n
    #dbg_value(i64 poison, !20477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 poison, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20592)
    #dbg_value(double %.sroa.8127.0, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %.sroa.8127.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20592)
    #dbg_value(i128 %.sroa.10.0, !20477, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20584)
    #dbg_value(i128 %.sroa.10.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20592)
    #dbg_value(i64 poison, !20478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 poison, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20594)
    #dbg_value(double %.sroa.8129.0, !20478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %.sroa.8129.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(i128 %.sroa.10130.0, !20478, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20584)
    #dbg_value(i128 %.sroa.10130.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20594)
  %i.ay = icmp sgt i128 %.sroa.10130.0, -1
  %or.cond.not = or i1 %i.ay, %i.ax, !dbg !20723
  br i1 %or.cond.not, label %bb.s, label %bb.t, !dbg !20723

bb.r:                                             ; preds = %bb.n
    #dbg_value(ptr %2, !20476, !DIExpression(), !20566)
  tail call fastcc void @_RNvNtNtCs5yXxDE1DkoT_4tera5value6number9arg_error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !dbg !20724
  br label %bb.p, !dbg !20725

bb.s:                                             ; preds = %bb.q
    #dbg_value(i8 0, !20479, !DIExpression(), !20595)
  br i1 %cond, label %bb.v, label %bb.u, !dbg !20726

bb.t:                                             ; preds = %bb.q
    #dbg_value(i8 1, !20479, !DIExpression(), !20595)
  br i1 %cond118, label %bb.w, label %.thread133, !dbg !20726

bb.u:                                             ; preds = %bb.s
  br i1 %i.ax, label %.thread134, label %bb.x, !dbg !20727

.thread134:                                       ; preds = %bb.u
    #dbg_value(i128 %.sroa.10.0, !20587, !DIExpression(), !20596)
  %i.az = sitofp i128 %.sroa.10.0 to double, !dbg !20728
    #dbg_value(double %i.az, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %i.az, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20592)
    #dbg_value(i64 1, !20477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 1, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20592)
  br label %.thread, !dbg !20729

bb.v:                                             ; preds = %bb.s
  br i1 %i.ax, label %.thread, label %.thread133, !dbg !20729

bb.w:                                             ; preds = %bb.t
    #dbg_value(i128 %.sroa.10.0, !20587, !DIExpression(), !20596)
  %i.ba = sitofp i128 %.sroa.10.0 to double, !dbg !20728
    #dbg_value(double %i.ba, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %i.ba, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20592)
    #dbg_value(i64 1, !20477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 1, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20592)
    #dbg_value(i128 %.sroa.10130.0, !20589, !DIExpression(), !20597)
  %i.bb = sitofp i128 %.sroa.10130.0 to double, !dbg !20730
    #dbg_value(double %i.bb, !20478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %i.bb, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(i64 1, !20478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 1, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20594)
  br label %.thread, !dbg !20731

.thread133:                                       ; preds = %bb.t, %bb.v
    #dbg_value(i128 %.sroa.10130.0, !20589, !DIExpression(), !20597)
  %i.bc = sitofp i128 %.sroa.10130.0 to double, !dbg !20730
    #dbg_value(double %i.bc, !20478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %i.bc, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(i64 1, !20478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 1, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20594)
  br label %.thread, !dbg !20731

.thread:                                          ; preds = %bb.v, %.thread134, %.thread133, %bb.w
  %.sroa.1020.0 = phi double [ %i.bb, %bb.w ], [ %i.bc, %.thread133 ], [ %.sroa.8129.0, %.thread134 ], [ %.sroa.8129.0, %bb.v ], !dbg !20566
  %.sroa.7.1 = phi double [ %i.ba, %bb.w ], [ %.sroa.8127.0, %.thread133 ], [ %i.az, %.thread134 ], [ %.sroa.8127.0, %bb.v ], !dbg !20566
    #dbg_value(double %.sroa.7.1, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20592)
    #dbg_value(double %.sroa.7.1, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %.sroa.1020.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(double %.sroa.1020.0, !20478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %.sroa.7.1, !20494, !DIExpression(), !20598)
    #dbg_value(double %.sroa.7.1, !20599, !DIExpression(), !20603)
    #dbg_value(double %.sroa.1020.0, !20495, !DIExpression(), !20598)
    #dbg_value(double %.sroa.1020.0, !20600, !DIExpression(), !20603)
  %i.bd = tail call double @llvm.pow.f64(double %.sroa.7.1, double %.sroa.1020.0), !dbg !20732
    #dbg_value(double %i.bd, !20604, !DIExpression(), !20607)
  store i8 7, ptr %i.i, align 8, !dbg !20733
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !20733
  store double %i.bd, ptr %.sroa.488.0..sroa_idx, align 8, !dbg !20733
  br label %bb.ae, !dbg !20734

bb.x:                                             ; preds = %bb.u
    #dbg_value(i128 %.sroa.10.0, !20484, !DIExpression(), !20608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20735
    #dbg_value(i128 %.sroa.10130.0, !20485, !DIExpression(), !20608)
    #dbg_value(i128 %.sroa.10130.0, !20572, !DIExpression(), !20609)
  store i128 %.sroa.10130.0, ptr %i.h, align 16, !dbg !20735
  %or.cond.not137 = icmp ult i128 %.sroa.10130.0, 4294967296, !dbg !20736
  br i1 %or.cond.not137, label %bb.y, label %bb.af, !dbg !20736

bb.y:                                             ; preds = %bb.x
    #dbg_value(i128 %.sroa.10130.0, !20540, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !20611)
    #dbg_value(i8 0, !20540, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20611)
    #dbg_value(ptr %i.h, !20559, !DIExpression(), !20611)
    #dbg_value(i128 %.sroa.10130.0, !20530, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !20612)
    #dbg_value(i8 -1, !20530, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20612)
    #dbg_value(i128 %.sroa.10130.0, !20486, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !20614)
    #dbg_value(i128 %.sroa.10.0, !20615, !DIExpression(), !20406)
    #dbg_value(i128 %.sroa.10.0, !20619, !DIExpression(), !20407)
    #dbg_value(i128 %.sroa.10.0, !20629, !DIExpression(), !20415)
    #dbg_value(i128 %.sroa.10.0, !20642, !DIExpression(), !20418)
    #dbg_value(i128 %.sroa.10.0, !20629, !DIExpression(), !20420)
    #dbg_value(i128 %.sroa.10.0, !20642, !DIExpression(), !20422)
    #dbg_value(i128 %.sroa.10.0, !20629, !DIExpression(), !20424)
    #dbg_value(i128 %.sroa.10.0, !20642, !DIExpression(), !20426)
    #dbg_value(i128 %.sroa.10130.0, !20618, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !20406)
    #dbg_value(i128 -1, !20648, !DIExpression(), !20429)
    #dbg_value(i128 -1, !20651, !DIExpression(), !20432)
    #dbg_value(i128 1, !20648, !DIExpression(), !20434)
    #dbg_value(i128 1, !20651, !DIExpression(), !20436)
    #dbg_value(i128 1, !20620, !DIExpression(), !20437)
    #dbg_value(i128 1, !20630, !DIExpression(), !20439)
    #dbg_value(i128 1, !20643, !DIExpression(), !20441)
    #dbg_value(i128 1, !20630, !DIExpression(), !20420)
    #dbg_value(i128 1, !20643, !DIExpression(), !20422)
    #dbg_value(i128 1, !20630, !DIExpression(), !20443)
    #dbg_value(i128 1, !20643, !DIExpression(), !20445)
  %i.be = icmp eq i128 %.sroa.10130.0, 0, !dbg !20737
  br i1 %i.be, label %_RNvMs2_NtCsf3Ta7LF998c_4core3numn11checked_pow.exit, label %.preheader88.i.preheader, !dbg !20737

.preheader88.i.preheader:                         ; preds = %bb.y
  %i.bf = trunc nuw i128 %.sroa.10130.0 to i32, !dbg !20738
    #dbg_value(i32 %i.bf, !20540, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20611)
    #dbg_value(i32 %i.bf, !20530, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20612)
    #dbg_value(i32 %i.bf, !20486, !DIExpression(), !20614)
    #dbg_value(i32 %i.bf, !20618, !DIExpression(), !20406)
  br label %.preheader88.i, !dbg !20739

.preheader88.i:                                   ; preds = %.preheader88.i.preheader, %bb.ac
  %.sroa.033.0.i = phi i128 [ %.sroa.033.1.i, %bb.ac ], [ 1, %.preheader88.i.preheader ], !dbg !20740 ; 2 uses
  %.sroa.016.0.i = phi i32 [ %i.bn, %bb.ac ], [ %i.bf, %.preheader88.i.preheader ] ; 3 uses
  %.sroa.0.0.i = phi i128 [ %i.bm, %bb.ac ], [ %.sroa.10.0, %.preheader88.i.preheader ] ; 3 uses
    #dbg_value(i128 %.sroa.0.0.i, !20642, !DIExpression(), !20418)
    #dbg_value(i128 %.sroa.0.0.i, !20629, !DIExpression(), !20415)
    #dbg_value(i128 %.sroa.0.0.i, !20619, !DIExpression(), !20407)
    #dbg_value(i128 %.sroa.0.0.i, !20615, !DIExpression(), !20406)
    #dbg_value(i32 %.sroa.016.0.i, !20618, !DIExpression(), !20406)
    #dbg_value(i128 %.sroa.033.0.i, !20643, !DIExpression(), !20441)
    #dbg_value(i128 %.sroa.033.0.i, !20630, !DIExpression(), !20439)
    #dbg_value(i128 %.sroa.033.0.i, !20620, !DIExpression(), !20437)
  %3 = trunc i32 %.sroa.016.0.i to i1, !dbg !20739
  br i1 %3, label %bb.z, label %bb.ab, !dbg !20739

bb.z:                                             ; preds = %.preheader88.i
    #dbg_value(i128 %.sroa.0.0.i, !20629, !DIExpression(), !20443)
    #dbg_value(i128 %.sroa.0.0.i, !20642, !DIExpression(), !20445)
  %i.bg = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.033.0.i, i128 %.sroa.0.0.i), !dbg !20741 ; 2 uses
  %i.bh = extractvalue { i128, i1 } %i.bg, 1, !dbg !20741
    #dbg_value(i128 poison, !20637, !DIExpression(), !20446)
    #dbg_value(i1 %i.bh, !20638, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20446)
    #dbg_value(i1 %i.bh, !20658, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20449)
  br i1 %i.bh, label %.split, label %bb.aa, !dbg !20742, !prof !4698

bb.aa:                                            ; preds = %bb.z
  %i.bi = extractvalue { i128, i1 } %i.bg, 0, !dbg !20741 ; 2 uses
    #dbg_value(i128 %i.bi, !20637, !DIExpression(), !20446)
    #dbg_value(i128 %i.bi, !20620, !DIExpression(), !20437)
    #dbg_value(i128 %i.bi, !20630, !DIExpression(), !20439)
    #dbg_value(i128 %i.bi, !20643, !DIExpression(), !20441)
    #dbg_value(i128 %i.bi, !20630, !DIExpression(), !20420)
    #dbg_value(i128 %i.bi, !20643, !DIExpression(), !20422)
    #dbg_value(i128 %i.bi, !20630, !DIExpression(), !20443)
    #dbg_value(i128 %i.bi, !20643, !DIExpression(), !20445)
  %i.bj = icmp eq i32 %.sroa.016.0.i, 1, !dbg !20743
  br i1 %i.bj, label %_RNvMs2_NtCsf3Ta7LF998c_4core3numn11checked_pow.exit, label %bb.ab, !dbg !20743

bb.ab:                                            ; preds = %bb.aa, %.preheader88.i
  %.sroa.033.1.i = phi i128 [ %i.bi, %bb.aa ], [ %.sroa.033.0.i, %.preheader88.i ], !dbg !20740
    #dbg_value(i128 %.sroa.033.1.i, !20643, !DIExpression(), !20441)
    #dbg_value(i128 %.sroa.033.1.i, !20630, !DIExpression(), !20439)
    #dbg_value(i128 %.sroa.033.1.i, !20620, !DIExpression(), !20437)
    #dbg_value(i32 poison, !20618, !DIExpression(), !20406)
    #dbg_value(i128 %.sroa.0.0.i, !20630, !DIExpression(), !20424)
    #dbg_value(i128 %.sroa.0.0.i, !20643, !DIExpression(), !20426)
  %i.bk = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.0.0.i, i128 %.sroa.0.0.i), !dbg !20744 ; 2 uses
  %i.bl = extractvalue { i128, i1 } %i.bk, 1, !dbg !20744
    #dbg_value(i128 poison, !20639, !DIExpression(), !20450)
    #dbg_value(i1 %i.bl, !20640, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20450)
    #dbg_value(i1 %i.bl, !20658, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20452)
  br i1 %i.bl, label %.split, label %bb.ac, !dbg !20745, !prof !4698

bb.ac:                                            ; preds = %bb.ab
  %i.bm = extractvalue { i128, i1 } %i.bk, 0, !dbg !20744
    #dbg_value(i128 %i.bm, !20639, !DIExpression(), !20450)
  %i.bn = lshr i32 %.sroa.016.0.i, 1, !dbg !20746
    #dbg_value(i32 %i.bn, !20618, !DIExpression(), !20406)
    #dbg_value(i128 %i.bm, !20615, !DIExpression(), !20406)
    #dbg_value(i128 %i.bm, !20619, !DIExpression(), !20407)
    #dbg_value(i128 %i.bm, !20629, !DIExpression(), !20415)
    #dbg_value(i128 %i.bm, !20642, !DIExpression(), !20418)
    #dbg_value(i128 %i.bm, !20629, !DIExpression(), !20420)
    #dbg_value(i128 %i.bm, !20642, !DIExpression(), !20422)
    #dbg_value(i128 %i.bm, !20629, !DIExpression(), !20424)
    #dbg_value(i128 %i.bm, !20642, !DIExpression(), !20426)
  br label %.preheader88.i, !dbg !20747

_RNvMs2_NtCsf3Ta7LF998c_4core3numn11checked_pow.exit: ; preds = %bb.aa, %bb.y
  %.sroa.17.0 = phi i128 [ 1, %bb.y ], [ %i.bi, %bb.aa ], !dbg !20748
    #dbg_value(i128 %.sroa.17.0, !20489, !DIExpression(), !20662)
  call void @_RNvXsp_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromnE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i128 noundef %.sroa.17.0), !dbg !20749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20750
  br label %bb.ae, !dbg !20750

.split:                                           ; preds = %bb.ab, %bb.z
    #dbg_value(ptr %i.k, !20491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20663)
    #dbg_value(ptr %i.j, !20491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20751
  store ptr %i.k, ptr %i.f, align 8, !dbg !20751
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !20751
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_, ptr %.sroa.479.0..sroa_idx, align 8, !dbg !20751
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !20751
  store ptr %i.j, ptr %i.bo, align 8, !dbg !20751
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !20751
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_, ptr %.sroa.483.0..sroa_idx, align 8, !dbg !20751
    #dbg_value(ptr @21, !20664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20668)
    #dbg_value(ptr %i.f, !20664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20668)
    #dbg_value(ptr null, !4712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20455)
    #dbg_value(i64 undef, !4712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20455)
    #dbg_value(ptr poison, !4728, !DIExpression(), !20455)
    #dbg_declare(ptr poison, !4729, !DIExpression(), !20456)
    #dbg_value(ptr poison, !4732, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20458)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @21, ptr noundef nonnull %i.f), !dbg !20752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20753
  call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !20754
  br label %bb.ad, !dbg !20755

bb.ad:                                            ; preds = %bb.af, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20750
  br label %bb.p, !dbg !20722

bb.ae:                                            ; preds = %_RNvMs2_NtCsf3Ta7LF998c_4core3numn11checked_pow.exit, %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !20756
  store i8 -1, ptr %0, align 8, !dbg !20756
  br label %bb.p, !dbg !20757

bb.af:                                            ; preds = %bb.x
    #dbg_value(i8 poison, !20540, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !20611)
    #dbg_value(ptr %i.h, !20559, !DIExpression(), !20611)
    #dbg_value(i8 poison, !20561, !DIExpression(), !20670)
    #dbg_value(ptr %i.h, !20485, !DIExpression(DW_OP_deref), !20608)
    #dbg_value(ptr %i.h, !20572, !DIExpression(DW_OP_deref), !20609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20758
    #dbg_value(ptr poison, !20674, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20463)
    #dbg_value(i8 poison, !20678, !DIExpression(), !20463)
    #dbg_value(ptr %i.h, !20675, !DIExpression(), !20464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20758, !noalias !20680
  store ptr %i.h, ptr %i.a, align 8, !dbg !20758, !noalias !20680
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20758
  store ptr @_RNvXs_NtNtCsf3Ta7LF998c_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !20758, !noalias !20680
    #dbg_value(ptr @1, !20681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20469)
    #dbg_value(ptr %i.a, !20681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20469)
    #dbg_value(ptr null, !4712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20471)
    #dbg_value(i64 undef, !4712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20471)
    #dbg_value(ptr poison, !4728, !DIExpression(), !20471)
    #dbg_declare(ptr poison, !4729, !DIExpression(), !20472)
    #dbg_value(ptr poison, !4732, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20474)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1, ptr noundef nonnull %i.a), !dbg !20759, !noalias !20680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20760, !noalias !20680
  call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !20761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20762
  %.sroa.036.0.copyload = load i8, ptr %i.c, align 8, !dbg !20763
    #dbg_value(i8 %.sroa.036.0.copyload, !20530, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20612)
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !20763
  %.sroa.640.0.copyload = load i32, ptr %.sroa.640.0..sroa_idx, align 4, !dbg !20763
    #dbg_value(i32 %.sroa.640.0.copyload, !20530, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20612)
    #dbg_value(i8 %.sroa.036.0.copyload, !20506, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20684)
    #dbg_value(i32 %.sroa.640.0.copyload, !20506, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20684)
    #dbg_value(i8 %.sroa.036.0.copyload, !20487, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20685)
    #dbg_value(i8 %.sroa.036.0.copyload, !20499, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20686)
    #dbg_value(i32 %.sroa.640.0.copyload, !20487, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20685)
    #dbg_value(i32 %.sroa.640.0.copyload, !20499, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20686)
    #dbg_value(i8 %.sroa.036.0.copyload, !20498, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20687)
    #dbg_value(i32 %.sroa.640.0.copyload, !20498, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20687)
  store i8 %.sroa.036.0.copyload, ptr %0, align 8, !dbg !20764
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !20764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.473.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.d, i64 3, i1 false), !dbg !20764
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !20764
  store i32 %.sroa.640.0.copyload, ptr %.sroa.574.0..sroa_idx, align 4, !dbg !20764
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.675.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !dbg !20764
  br label %bb.ad, !dbg !20765
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs5yXxDE1DkoT_4tera5value6number3rem(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20773 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !20873, !DIExpression(), !20878)
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
    #dbg_value(ptr %1, !20858, !DIExpression(), !20879)
  store ptr %1, ptr %i.g, align 8
    #dbg_value(ptr %2, !20859, !DIExpression(), !20879)
  store ptr %2, ptr %i.f, align 8
    #dbg_declare(ptr %i.d, !20862, !DIExpression(), !20880)
    #dbg_value(ptr @19, !20881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20884)
    #dbg_value(i64 18, !20881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20884)
    #dbg_value(ptr @19, !20885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20889)
    #dbg_value(i64 18, !20885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20889)
    #dbg_value(ptr @19, !20886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20890)
    #dbg_value(i64 18, !20886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20890)
    #dbg_value(ptr @19, !20891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20894)
    #dbg_value(i64 18, !20891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20894)
    #dbg_value(ptr @19, !20895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20898)
    #dbg_value(i64 18, !20895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20898)
    #dbg_declare(ptr poison, !20899, !DIExpression(), !20905)
    #dbg_declare(ptr poison, !20910, !DIExpression(), !20916)
    #dbg_declare(ptr poison, !20917, !DIExpression(), !20921)
    #dbg_declare(ptr poison, !20922, !DIExpression(), !20926)
    #dbg_declare(ptr poison, !20927, !DIExpression(), !20934)
    #dbg_value(i64 0, !20935, !DIExpression(), !20941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20942), !dbg !21055
    #dbg_value(ptr %1, !5601, !DIExpression(), !20797)
    #dbg_declare(ptr poison, !5623, !DIExpression(), !20799)
  %i.h = load i8, ptr %1, align 8, !dbg !21056, !range !2967, !alias.scope !20942, !noalias !20943, !noundef !1418 ; 3 uses
  %i.i = icmp ne i8 %i.h, 10, !dbg !21056
  tail call void @llvm.assume(i1 %i.i), !dbg !21056
  %i.j = add nsw i8 %i.h, -2, !dbg !21056
  %i.k = icmp samesign ugt i8 %i.h, 1, !dbg !21056
  %narrow.i = select i1 %i.k, i8 %i.j, i8 8, !dbg !21056
  switch i8 %narrow.i, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit [
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
  ], !dbg !21057

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5614, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20801)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21058
  %i.m = load i64, ptr %i.l, align 8, !dbg !21058, !alias.scope !20942, !noalias !20943, !noundef !1418
  %i.n = zext i64 %i.m to i128, !dbg !21058
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit, !dbg !21059

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5615, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20802)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21060
  %i.p = load i64, ptr %i.o, align 8, !dbg !21060, !alias.scope !20942, !noalias !20943, !noundef !1418
  %i.q = sext i64 %i.p to i128, !dbg !21060
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit, !dbg !21061

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5616, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20803)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21062
  %i.s = load double, ptr %i.r, align 8, !dbg !21062, !alias.scope !20942, !noalias !20943, !noundef !1418
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit, !dbg !21063

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5617, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20804)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21064
  %i.u = load ptr, ptr %i.t, align 8, !dbg !21064, !alias.scope !20942, !noalias !20943, !nonnull !1418, !noundef !1418
  %i.v = load i128, ptr %i.u, align 16, !dbg !21064, !noalias !20944, !noundef !1418 ; 2 uses
    #dbg_value(i128 %i.v, !5641, !DIExpression(), !20806)
  %i.w = icmp slt i128 %i.v, 0, !dbg !21065
  br i1 %i.w, label %bb.g, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit, !dbg !21065

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5618, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20807)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21066
  %i.y = load ptr, ptr %i.x, align 8, !dbg !21066, !alias.scope !20942, !noalias !20943, !nonnull !1418, !noundef !1418
  %i.z = load i128, ptr %i.y, align 16, !dbg !21066, !noalias !20944, !noundef !1418
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit, !dbg !21067

bb.g:                                             ; preds = %bb.e
    #dbg_value(i128 poison, !5637, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !20808)
    #dbg_value(i128 poison, !5637, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20808)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit, !dbg !21068

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit: ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.10.0 = phi i128 [ %i.z, %bb.f ], [ %i.n, %bb.b ], [ %i.q, %bb.c ], [ undef, %bb.d ], [ undef, %bb.g ], [ undef, %bb.a ], [ %i.v, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi double [ undef, %bb.f ], [ undef, %bb.b ], [ undef, %bb.c ], [ %i.s, %bb.d ], [ undef, %bb.g ], [ undef, %bb.a ], [ undef, %bb.e ] ; 2 uses
  %.not = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.g ], [ true, %bb.a ], [ false, %bb.e ], !dbg !21069
  %i.aa = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.g ], [ false, %bb.a ], [ false, %bb.e ], !dbg !21069 ; 2 uses
    #dbg_value(ptr %2, !20859, !DIExpression(), !20879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20945), !dbg !21070
    #dbg_value(ptr %2, !5601, !DIExpression(), !20812)
    #dbg_declare(ptr poison, !5623, !DIExpression(), !20814)
  %i.ab = load i8, ptr %2, align 8, !dbg !21071, !range !2967, !alias.scope !20945, !noalias !20946, !noundef !1418 ; 3 uses
  %i.ac = icmp ne i8 %i.ab, 10, !dbg !21071
  tail call void @llvm.assume(i1 %i.ac), !dbg !21071
  %i.ad = add nsw i8 %i.ab, -2, !dbg !21071
  %i.ae = icmp samesign ugt i8 %i.ab, 1, !dbg !21071
  %narrow.i105 = select i1 %i.ae, i8 %i.ad, i8 8, !dbg !21071
  switch i8 %narrow.i105, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit111 [
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
  ], !dbg !21072

bb.h:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5614, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20816)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21073
  %i.ag = load i64, ptr %i.af, align 8, !dbg !21073, !alias.scope !20945, !noalias !20946, !noundef !1418
  %i.ah = zext i64 %i.ag to i128, !dbg !21073
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit111, !dbg !21074

end_hunk_2
begin_hunk_3_@_RNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB2_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next:bb.a
    #dbg_declare(ptr poison, !22808, !DIExpression(), !22222)
    #dbg_declare(ptr %i.c, !22814, !DIExpression(), !22223)
    #dbg_declare(ptr %i.c, !22811, !DIExpression(), !22224)
    #dbg_declare(ptr %i.c, !22816, !DIExpression(), !22227)
    #dbg_declare(ptr %i.b, !22812, !DIExpression(), !22228)
    #dbg_declare(ptr %i.a, !22813, !DIExpression(), !22229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23112, !noalias !22821
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !23112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.ch, i64 24, i1 false), !dbg !23112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23113, !noalias !22821
  invoke void @_RNvXsw_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB5_3key3KeyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %i.c)
          to label %_RNCNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB4_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0B8_.exit unwind label %bb.ag, !dbg !23114, !noalias !22806

bb.ag:                                            ; preds = %bb.af
  %i.ci = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !3203, !DIExpression(), !22231)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ah, !dbg !23115, !noalias !22821

bb.ah:                                            ; preds = %bb.ag
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !23116, !noalias !22821
  unreachable, !dbg !23116

common.resume:                                    ; preds = %bb.ag
  resume { ptr, i32 } %i.ci, !dbg !22644

_RNCNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB4_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0B8_.exit: ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !23112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !23117, !noalias !22807
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !23118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.ck, i64 24, i1 false), !dbg !23119, !alias.scope !22821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23120, !noalias !22821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23121, !noalias !22821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !23123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23124
  br label %bb.ae, !dbg !23125

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB11_5ValueEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread: ; preds = %bb.c, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB11_5ValueEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB13_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23126
  store i8 -1, ptr %i.cm, align 8, !dbg !23126
  br label %bb.ae, !dbg !23127

bb.ai:                                            ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23054
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23128 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !dbg !23128, !noundef !1418
  %i.cq = add i64 %i.cp, -1, !dbg !23128
  store i64 %i.cq, ptr %i.co, align 8, !dbg !23128
  %i.cr = load ptr, ptr %i.cn, align 8, !dbg !23129, !nonnull !1418, !noundef !1418
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !23130 ; 5 uses
    #dbg_value(ptr %i.cs, !22824, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22832)
    #dbg_value(ptr %i.cs, !22833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22843)
    #dbg_value(i64 %i.y, !22824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22832)
    #dbg_value(i64 %i.y, !22833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22843)
    #dbg_value(i64 %i.w, !22838, !DIExpression(), !22844)
    #dbg_value(i64 %i.w, !22828, !DIExpression(), !22832)
    #dbg_value(i64 %i.w, !22837, !DIExpression(), !22843)
    #dbg_value(i64 %i.y, !22839, !DIExpression(), !22844)
    #dbg_value(i64 %i.w, !22845, !DIExpression(), !22238)
    #dbg_value(ptr %i.cs, !22848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22238)
    #dbg_value(ptr %i.cs, !22851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22241)
    #dbg_value(ptr %i.cs, !22857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22245)
    #dbg_value(ptr %i.cs, !22863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22250)
    #dbg_value(i64 %i.y, !22848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22238)
    #dbg_value(i64 %i.y, !22851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22241)
    #dbg_value(i64 %i.y, !22857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22245)
    #dbg_value(i64 %i.y, !22863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22250)
    #dbg_value(i64 %i.w, !22855, !DIExpression(), !22241)
    #dbg_value(i64 %i.w, !22860, !DIExpression(), !22245)
    #dbg_value(i64 %i.w, !22867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22250)
    #dbg_value(i64 %i.w, !22871, !DIExpression(), !22253)
  %i.ct = icmp eq i64 %i.w, 0, !dbg !23131
  br i1 %i.ct, label %._crit_edge, label %bb.aj, !dbg !23131

._crit_edge:                                      ; preds = %bb.ai
  %.pre = load i8, ptr %i.cs, align 1, !dbg !23132, !noalias !22876
  br label %bb.al, !dbg !23131

bb.aj:                                            ; preds = %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.w, !dbg !23133
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !23133, !alias.scope !22877, !noundef !1418 ; 2 uses
    #dbg_value(i8 %i.cv, !22878, !DIExpression(), !22264)
  %i.cw = icmp sgt i8 %i.cv, -65, !dbg !23134
  br i1 %i.cw, label %bb.al, label %bb.an, !dbg !23135

bb.ak:                                            ; preds = %bb.d
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23136
  store i8 -1, ptr %i.cx, align 8, !dbg !23136
  br label %bb.ae, !dbg !23109

bb.al:                                            ; preds = %._crit_edge, %bb.aj
  %i.cy = phi i8 [ %.pre, %._crit_edge ], [ %i.cv, %bb.aj ], !dbg !23132 ; 3 uses
    #dbg_value(ptr %i.cs, !22868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22265)
    #dbg_value(i64 %i.y, !22868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22265)
    #dbg_value(i64 %i.y, !22861, !DIExpression(), !22266)
    #dbg_value(i64 %i.y, !22867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22250)
  %i.cz = sub nuw i64 %i.y, %i.w, !dbg !23137     ; 4 uses
    #dbg_value(i64 %i.cz, !22869, !DIExpression(), !22267)
    #dbg_value(ptr %i.cs, !22874, !DIExpression(), !22253)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.w, !dbg !23138 ; 8 uses
    #dbg_value(ptr %i.da, !22472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22883)
    #dbg_value(ptr %i.da, !22884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22889)
    #dbg_value(ptr %i.da, !22890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22895)
    #dbg_value(ptr %i.da, !22896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22906)
    #dbg_value(ptr %i.da, !22907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22917)
    #dbg_value(i64 %i.cz, !22472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22883)
    #dbg_value(i64 %i.cz, !22884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22889)
    #dbg_value(i64 %i.cz, !22890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22895)
    #dbg_value(i64 %i.cz, !22896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22906)
    #dbg_value(i64 %i.cz, !22907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22917)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.y, !dbg !23139 ; 4 uses
    #dbg_value(ptr undef, !22527, !DIExpression(), !22641)
    #dbg_value(ptr undef, !22636, !DIExpression(), !22640)
    #dbg_value(ptr undef, !22626, !DIExpression(), !22639)
    #dbg_value(ptr undef, !22601, !DIExpression(), !22084)
    #dbg_value(i64 1, !22602, !DIExpression(), !22084)
    #dbg_declare(ptr poison, !22603, !DIExpression(), !22278)
    #dbg_value(i64 1, !22604, !DIExpression(), !22279)
    #dbg_value(ptr undef, !22519, !DIExpression(), !22083)
    #dbg_declare(ptr poison, !22924, !DIExpression(), !22284)
    #dbg_value(ptr undef, !3986, !DIExpression(), !22082)
    #dbg_value(i64 1, !3993, !DIExpression(), !22288)
    #dbg_value(ptr %i.db, !3991, !DIExpression(), !22289)
    #dbg_value(ptr %i.db, !4007, !DIExpression(), !22290)
    #dbg_value(ptr %i.da, !4008, !DIExpression(), !22290)
    #dbg_value(ptr %i.db, !4001, !DIExpression(), !22291)
    #dbg_value(ptr %i.da, !4002, !DIExpression(), !22291)
    #dbg_value(ptr %i.da, !3997, !DIExpression(), !22292)
    #dbg_value(ptr %i.db, !3996, !DIExpression(), !22292)
  %i.dc = ptrtoint ptr %i.da to i64, !dbg !23140
    #dbg_value(!DIArgList(ptr %i.db, i64 %i.dc), !22520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !22293)
    #dbg_value(ptr undef, !22585, !DIExpression(), !22080)
    #dbg_value(ptr undef, !22562, !DIExpression(), !22079)
    #dbg_value(i32 2, !22935, !DIExpression(), !22296)
    #dbg_value(ptr undef, !22536, !DIExpression(), !22078)
    #dbg_value(i64 1, !22940, !DIExpression(), !22299)
    #dbg_value(ptr %i.da, !22546, !DIExpression(), !22300)
    #dbg_value(ptr %i.da, !22941, !DIExpression(), !22299)
    #dbg_value(ptr %i.db, !22547, !DIExpression(), !22301)
    #dbg_value(ptr poison, !22943, !DIExpression(), !22304)
    #dbg_value(ptr poison, !22944, !DIExpression(), !22305)
    #dbg_value(i8 %i.cy, !22563, !DIExpression(), !22306)
    #dbg_value(i8 %i.cy, !22938, !DIExpression(), !22296)
  %i.dd = icmp sgt i8 %i.cy, -1, !dbg !23141
  br i1 %i.dd, label %bb.am, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i, !dbg !23141

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i: ; preds = %bb.al
    #dbg_value(i8 %i.cy, !22566, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !22307)
    #dbg_value(i8 %i.cy, !22947, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !22310)
    #dbg_value(ptr undef, !22536, !DIExpression(), !22076)
    #dbg_value(i64 1, !22940, !DIExpression(), !22312)
    #dbg_value(ptr %i.di, !22546, !DIExpression(), !22313)
    #dbg_value(ptr %i.di, !22941, !DIExpression(), !22312)
    #dbg_value(ptr %i.db, !22547, !DIExpression(), !22314)
    #dbg_value(ptr poison, !22943, !DIExpression(), !22316)
    #dbg_value(ptr poison, !22944, !DIExpression(), !22317)
  %i.de = add nuw nsw i64 %i.w, 1, !dbg !23142
  %i.df = icmp samesign ne i64 %i.de, %i.y, !dbg !23142
  tail call void @llvm.assume(i1 %i.df), !dbg !23143
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 2, !dbg !23144
    #dbg_value(i8 poison, !22567, !DIExpression(), !22318)
    #dbg_value(i8 poison, !22950, !DIExpression(), !22310)
    #dbg_value(!DIArgList(i8 poison, i8 poison), !22568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 6, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !22319)
  %i.dh = icmp samesign ugt i8 %i.cy, -33, !dbg !23145
  br i1 %i.dh, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i, !dbg !23145

bb.am:                                            ; preds = %bb.al
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 1, !dbg !23146
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i, !dbg !23147

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i
    #dbg_value(ptr undef, !22536, !DIExpression(), !22074)
    #dbg_value(i64 1, !22940, !DIExpression(), !22321)
    #dbg_value(ptr %i.dg, !22546, !DIExpression(), !22322)
    #dbg_value(ptr %i.dg, !22941, !DIExpression(), !22321)
    #dbg_value(ptr %i.db, !22547, !DIExpression(), !22323)
    #dbg_value(ptr poison, !22943, !DIExpression(), !22325)
    #dbg_value(ptr poison, !22944, !DIExpression(), !22326)
  %i.dj = add nuw nsw i64 %i.w, 2, !dbg !23148
  %i.dk = icmp samesign ne i64 %i.dj, %i.y, !dbg !23148
  tail call void @llvm.assume(i1 %i.dk), !dbg !23149
    #dbg_value(i8 poison, !22569, !DIExpression(), !22327)
    #dbg_value(i8 poison, !22950, !DIExpression(), !22329)
    #dbg_value(i8 poison, !22947, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !22329)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !22570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !22330)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !22947, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !22332)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !22568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !22319)
  %i.dl = icmp samesign ugt i8 %i.cy, -17, !dbg !23150
  %spec.select.v = select i1 %i.dl, i64 4, i64 3, !dbg !23150
  %spec.select = getelementptr inbounds nuw i8, ptr %i.da, i64 %spec.select.v, !dbg !23150
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i, !dbg !23150

bb.an:                                            ; preds = %bb.aj
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.y, i64 noundef %i.w, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #29, !dbg !23151
  unreachable, !dbg !23151

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i, %bb.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i
  %.sroa.083.0 = phi ptr [ %i.di, %bb.am ], [ %i.dg, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i ], [ %spec.select, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i ], !dbg !23152 ; 6 uses
    #dbg_value(i32 1, !22932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22333)
    #dbg_value(i32 poison, !22932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22333)
    #dbg_value(i32 poison, !22933, !DIExpression(), !22334)
    #dbg_value(i32 poison, !22958, !DIExpression(), !22337)
    #dbg_value(i32 poison, !22962, !DIExpression(), !22340)
    #dbg_value(i32 poison, !22967, !DIExpression(), !22343)
    #dbg_value(i32 poison, !22521, !DIExpression(), !22344)
    #dbg_value(i64 0, !22522, !DIExpression(), !22345)
    #dbg_value(ptr undef, !3986, !DIExpression(), !22068)
    #dbg_value(i64 1, !3993, !DIExpression(), !22349)
    #dbg_value(ptr %i.db, !3991, !DIExpression(), !22350)
    #dbg_value(ptr %i.db, !4007, !DIExpression(), !22351)
    #dbg_value(ptr %.sroa.083.0, !4008, !DIExpression(), !22351)
    #dbg_value(ptr %i.db, !4001, !DIExpression(), !22352)
    #dbg_value(ptr %.sroa.083.0, !4002, !DIExpression(), !22352)
    #dbg_value(ptr %.sroa.083.0, !3997, !DIExpression(), !22353)
    #dbg_value(ptr %i.db, !3996, !DIExpression(), !22353)
  %i.dm = ptrtoint ptr %.sroa.083.0 to i64, !dbg !23153
    #dbg_value(!DIArgList(ptr %i.db, i64 %i.dm), !22523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !22354)
  %i.dn = sub i64 %i.dm, %i.dc, !dbg !23154       ; 6 uses
    #dbg_value(i64 poison, !22605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22355)
    #dbg_value(i32 poison, !22605, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !22355)
    #dbg_value(ptr undef, !22519, !DIExpression(), !22045)
    #dbg_declare(ptr poison, !22924, !DIExpression(), !22357)
    #dbg_value(ptr undef, !3986, !DIExpression(), !22044)
    #dbg_value(i64 1, !3993, !DIExpression(), !22361)
    #dbg_value(ptr %i.db, !3991, !DIExpression(), !22362)
    #dbg_value(ptr %i.db, !4007, !DIExpression(), !22363)
    #dbg_value(ptr %.sroa.083.0, !4008, !DIExpression(), !22363)
    #dbg_value(ptr %i.db, !4001, !DIExpression(), !22364)
    #dbg_value(ptr %.sroa.083.0, !4002, !DIExpression(), !22364)
    #dbg_value(ptr %.sroa.083.0, !3997, !DIExpression(), !22365)
    #dbg_value(ptr %i.db, !3996, !DIExpression(), !22365)
    #dbg_value(!DIArgList(ptr %i.db, ptr %.sroa.083.0), !22520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !22366)
    #dbg_value(ptr undef, !22585, !DIExpression(), !22042)
    #dbg_value(ptr undef, !22562, !DIExpression(), !22041)
    #dbg_value(i32 2, !22935, !DIExpression(), !22368)
    #dbg_value(ptr undef, !22536, !DIExpression(), !22040)
    #dbg_value(i64 1, !22940, !DIExpression(), !22370)
    #dbg_value(ptr %.sroa.083.0, !22546, !DIExpression(), !22371)
    #dbg_value(ptr %.sroa.083.0, !22941, !DIExpression(), !22370)
    #dbg_value(ptr %i.db, !22547, !DIExpression(), !22372)
    #dbg_value(ptr poison, !22943, !DIExpression(), !22374)
    #dbg_value(ptr poison, !22944, !DIExpression(), !22375)
  %i.do = icmp eq ptr %.sroa.083.0, %i.db, !dbg !23155
  br i1 %i.do, label %_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs5yXxDE1DkoT_4tera.exit, label %bb.ao, !dbg !23156

bb.ao:                                            ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i
  %i.dp = load i8, ptr %.sroa.083.0, align 1, !dbg !23157, !noalias !22973, !noundef !1418 ; 3 uses
    #dbg_value(i8 %i.dp, !22563, !DIExpression(), !22380)
    #dbg_value(i8 %i.dp, !22938, !DIExpression(), !22368)
  %i.dq = icmp sgt i8 %i.dp, -1, !dbg !23158
  br i1 %i.dq, label %bb.ap, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i, !dbg !23158

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i: ; preds = %bb.ao
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.083.0, i64 1, !dbg !23159
    #dbg_value(i8 %i.dp, !22566, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !22381)
    #dbg_value(i8 %i.dp, !22947, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !22383)
    #dbg_value(ptr undef, !22536, !DIExpression(), !22038)
    #dbg_value(i64 1, !22940, !DIExpression(), !22385)
    #dbg_value(ptr %i.dr, !22546, !DIExpression(), !22386)
    #dbg_value(ptr %i.dr, !22941, !DIExpression(), !22385)
    #dbg_value(ptr %i.db, !22547, !DIExpression(), !22387)
    #dbg_value(ptr poison, !22943, !DIExpression(), !22389)
    #dbg_value(ptr poison, !22944, !DIExpression(), !22390)
  %i.ds = icmp ne ptr %i.dr, %i.db, !dbg !23160
  tail call void @llvm.assume(i1 %i.ds), !dbg !23161
    #dbg_value(i8 poison, !22567, !DIExpression(), !22391)
    #dbg_value(i8 poison, !22950, !DIExpression(), !22383)
    #dbg_value(!DIArgList(i8 poison, i8 poison), !22568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 6, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !22392)
  %i.dt = icmp samesign ugt i8 %i.dp, -33, !dbg !23162
  br i1 %i.dt, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i, label %bb.ap, !dbg !23162

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.083.0, i64 2, !dbg !23163
    #dbg_value(ptr undef, !22536, !DIExpression(), !22036)
    #dbg_value(i64 1, !22940, !DIExpression(), !22394)
    #dbg_value(ptr %i.du, !22546, !DIExpression(), !22395)
    #dbg_value(ptr %i.du, !22941, !DIExpression(), !22394)
    #dbg_value(ptr %i.db, !22547, !DIExpression(), !22396)
    #dbg_value(ptr poison, !22943, !DIExpression(), !22398)
    #dbg_value(ptr poison, !22944, !DIExpression(), !22399)
  %i.dv = icmp ne ptr %i.du, %i.db, !dbg !23164
  tail call void @llvm.assume(i1 %i.dv), !dbg !23165
    #dbg_value(i8 poison, !22569, !DIExpression(), !22400)
    #dbg_value(i8 poison, !22950, !DIExpression(), !22402)
    #dbg_value(i8 poison, !22947, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !22402)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !22570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !22403)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !22947, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !22405)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !22568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !22392)
  %i.dw = icmp samesign ugt i8 %i.dp, -17, !dbg !23166
  br i1 %i.dw, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i, label %bb.ap, !dbg !23166

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.083.0, i64 3, !dbg !23167
    #dbg_value(ptr undef, !22536, !DIExpression(), !22034)
    #dbg_value(i64 1, !22940, !DIExpression(), !22407)
    #dbg_value(ptr %i.dx, !22546, !DIExpression(), !22408)
    #dbg_value(ptr %i.dx, !22941, !DIExpression(), !22407)
    #dbg_value(ptr %i.db, !22547, !DIExpression(), !22409)
    #dbg_value(ptr poison, !22943, !DIExpression(), !22411)
    #dbg_value(ptr poison, !22944, !DIExpression(), !22412)
  %i.dy = icmp ne ptr %i.dx, %i.db, !dbg !23168
  tail call void @llvm.assume(i1 %i.dy), !dbg !23169
    #dbg_value(i8 poison, !22571, !DIExpression(), !22413)
    #dbg_value(i8 poison, !22950, !DIExpression(), !22405)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i8 poison), !22568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 18, DW_OP_shl, DW_OP_constu, 1835008, DW_OP_and, DW_OP_or, DW_OP_stack_value), !22392)
  br label %bb.ap, !dbg !23170

bb.ap:                                            ; preds = %bb.ao, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i
    #dbg_value(i32 1, !22932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22414)
    #dbg_value(i32 poison, !22932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22414)
    #dbg_value(i32 poison, !22933, !DIExpression(), !22415)
    #dbg_value(i32 poison, !22958, !DIExpression(), !22417)
    #dbg_value(i32 poison, !22962, !DIExpression(), !22419)
    #dbg_value(i32 poison, !22967, !DIExpression(), !22421)
    #dbg_value(i32 poison, !22521, !DIExpression(), !22422)
    #dbg_value(i64 %i.dn, !22522, !DIExpression(), !22423)
    #dbg_value(ptr undef, !3986, !DIExpression(), !22003)
    #dbg_value(i64 1, !3993, !DIExpression(), !22427)
    #dbg_value(ptr %i.db, !3991, !DIExpression(), !22428)
    #dbg_value(ptr %i.db, !4007, !DIExpression(), !22429)
    #dbg_value(ptr poison, !4008, !DIExpression(), !22429)
    #dbg_value(ptr %i.db, !4001, !DIExpression(), !22430)
    #dbg_value(ptr poison, !4002, !DIExpression(), !22430)
    #dbg_value(ptr poison, !3997, !DIExpression(), !22431)
    #dbg_value(ptr %i.db, !3996, !DIExpression(), !22431)
    #dbg_value(!DIArgList(ptr poison, ptr poison), !22523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !22432)
    #dbg_value(i64 %i.dn, !22473, !DIExpression(), !22975)
    #dbg_value(i64 %i.dn, !22912, !DIExpression(), !22976)
    #dbg_value(i64 %i.dn, !22901, !DIExpression(), !22906)
    #dbg_value(i64 %i.dn, !22911, !DIExpression(), !22917)
    #dbg_value(i64 %i.dn, !22977, !DIExpression(), !22435)
    #dbg_value(ptr %i.da, !22980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22435)
    #dbg_value(ptr %i.da, !22982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22438)
    #dbg_value(i64 %i.cz, !22980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22435)
    #dbg_value(i64 %i.cz, !22982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22438)
    #dbg_value(i64 %i.dn, !22983, !DIExpression(), !22438)
  %.not.i77 = icmp ult i64 %i.dn, %i.cz, !dbg !23171
  br i1 %.not.i77, label %bb.aq, label %.split, !dbg !23171

.split:                                           ; preds = %bb.ap
  %i.dz = icmp eq i64 %i.dn, %i.cz, !dbg !23172
  br i1 %i.dz, label %select.unfold, label %bb.ar, !dbg !23173

bb.aq:                                            ; preds = %bb.ap
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dn, !dbg !23174
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !23174, !alias.scope !22985, !noundef !1418
    #dbg_value(i8 %i.eb, !22986, !DIExpression(), !22443)
  %i.ec = icmp sgt i8 %i.eb, -65, !dbg !23175
  br i1 %i.ec, label %select.unfold, label %bb.ar, !dbg !23173

_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs5yXxDE1DkoT_4tera.exit: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i
  store i64 %i.y, ptr %i.v, align 8, !dbg !23176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5141), !dbg !23177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !23178
  call void @_RNvXsc_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.cz), !dbg !23178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5141, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !23177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23179
  store i8 -1, ptr %0, align 8, !dbg !23180
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5141.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5141, i64 24, i1 false), !dbg !23180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5141), !dbg !23181
  br label %bb.ae, !dbg !23182

select.unfold:                                    ; preds = %bb.aq, %.split
    #dbg_value(ptr %i.da, !22474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22988)
    #dbg_value(i64 %i.dn, !22474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22988)
  %i.ed = add i64 %i.dn, %i.w, !dbg !23183
  store i64 %i.ed, ptr %i.v, align 8, !dbg !23183
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !23184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !23185
  call void @_RNvXsc_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.dn), !dbg !23185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !23184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23186
  store i8 -1, ptr %0, align 8, !dbg !23187
  %.sroa.5.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx136, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !23187
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !23188
  br label %bb.ae, !dbg !23182

bb.ar:                                            ; preds = %.split, %bb.aq
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.cz, i64 noundef 0, i64 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #29, !dbg !23189
  unreachable, !dbg !23189

bb.as:                                            ; preds = %bb.e
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23190
  store i8 -1, ptr %i.ee, align 8, !dbg !23190
  br label %bb.ae, !dbg !23191

bb.at:                                            ; preds = %bb.e
    #dbg_value(ptr %i.ac, !22989, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22996)
    #dbg_value(ptr %i.ac, !22997, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23001)
    #dbg_value(ptr %i.ac, !23002, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23006)
    #dbg_value(ptr %i.ac, !23007, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23011)
    #dbg_value(i64 %i.aa, !22992, !DIExpression(), !23012)
    #dbg_value(i64 %i.aa, !23013, !DIExpression(), !23020)
    #dbg_value(i64 %i.aa, !23021, !DIExpression(), !23028)
    #dbg_value(ptr poison, !23016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23020)
end_hunk_3
