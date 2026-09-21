Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.12?download=true
inline.NumInlined: 642
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBG_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1y_:bb.a
    #dbg_value(i64 24, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6607)
    #dbg_value(i64 24, !2798, !DIExpression(), !6609)
  %i.c = icmp eq i64 %.val3.i, 0
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1j_.exit.i, label %bb.c, !dbg !6654

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6653
  %.val4.i = load ptr, ptr %i.d, align 8, !dbg !6653, !alias.scope !6649, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val3.i, !2802, !DIExpression(), !6609)
  %i.e = mul nuw i64 %.val3.i, 24, !dbg !6655
    #dbg_value(ptr %.val4.i, !2625, !DIExpression(), !6610)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6610)
    #dbg_value(i64 %i.e, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6610)
    #dbg_value(ptr poison, !2652, !DIExpression(), !6612)
    #dbg_value(ptr poison, !2659, !DIExpression(), !6614)
    #dbg_value(ptr %.val4.i, !2656, !DIExpression(), !6612)
    #dbg_value(ptr %.val4.i, !2662, !DIExpression(), !6614)
    #dbg_value(ptr %.val4.i, !2665, !DIExpression(), !6616)
    #dbg_value(ptr %.val4.i, !2671, !DIExpression(), !6618)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6612)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6614)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6616)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6618)
    #dbg_value(i64 %i.e, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6612)
    #dbg_value(i64 %i.e, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6614)
    #dbg_value(i64 %i.e, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
    #dbg_value(i64 %i.e, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6618)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !6656, !noalias !6650
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1j_.exit.i, !dbg !6657

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !dbg !6653, !alias.scope !6648 ; 2 uses
    #dbg_value(ptr poison, !2822, !DIExpression(), !6622)
    #dbg_value(ptr poison, !2828, !DIExpression(), !6624)
    #dbg_value(ptr poison, !2612, !DIExpression(), !6626)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6626)
    #dbg_value(i64 24, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6626)
    #dbg_value(ptr poison, !2629, !DIExpression(), !6628)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6628)
    #dbg_value(i64 24, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
    #dbg_value(i64 24, !2798, !DIExpression(), !6630)
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1c_.exit, label %bb.e, !dbg !6658

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6653
  %.val2.i = load ptr, ptr %i.g, align 8, !dbg !6653, !alias.scope !6649, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val.i, !2802, !DIExpression(), !6630)
  %i.h = mul nuw i64 %.val.i, 24, !dbg !6659
    #dbg_value(ptr %.val2.i, !2625, !DIExpression(), !6631)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6631)
    #dbg_value(i64 %i.h, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6631)
    #dbg_value(ptr poison, !2652, !DIExpression(), !6633)
    #dbg_value(ptr poison, !2659, !DIExpression(), !6635)
    #dbg_value(ptr %.val2.i, !2656, !DIExpression(), !6633)
    #dbg_value(ptr %.val2.i, !2662, !DIExpression(), !6635)
    #dbg_value(ptr %.val2.i, !2665, !DIExpression(), !6637)
    #dbg_value(ptr %.val2.i, !2671, !DIExpression(), !6639)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6633)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6635)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6637)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6639)
    #dbg_value(i64 %i.h, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6633)
    #dbg_value(i64 %i.h, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6635)
    #dbg_value(i64 %i.h, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6637)
    #dbg_value(i64 %i.h, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6639)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !6660, !noalias !6651
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1c_.exit, !dbg !6661

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1j_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b, !dbg !6653

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1c_.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !6652
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBG_3vec3VechEEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6662 {
bb.a:
    #dbg_value(ptr %0, !6710, !DIExpression(), !6712)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6717 ; 3 uses
    #dbg_value(ptr %i.a, !2595, !DIExpression(), !6664)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b, !dbg !6718

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %i.a, align 8, !dbg !6718, !alias.scope !6713 ; 2 uses
    #dbg_value(ptr poison, !2600, !DIExpression(), !6670)
    #dbg_value(ptr poison, !2607, !DIExpression(), !6672)
    #dbg_value(ptr poison, !2612, !DIExpression(), !6674)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6674)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6674)
    #dbg_value(ptr poison, !2629, !DIExpression(), !6676)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6676)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6676)
  %i.c = icmp eq i64 %.val3.i, 0
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i, label %bb.c, !dbg !6719

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6718
  %.val4.i = load ptr, ptr %i.d, align 8, !dbg !6718, !alias.scope !6714, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %.val4.i, !2625, !DIExpression(), !6677)
    #dbg_value(i64 1, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6677)
    #dbg_value(i64 %.val3.i, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6677)
    #dbg_value(ptr poison, !2652, !DIExpression(), !6679)
    #dbg_value(ptr poison, !2659, !DIExpression(), !6681)
    #dbg_value(ptr %.val4.i, !2656, !DIExpression(), !6679)
    #dbg_value(ptr %.val4.i, !2662, !DIExpression(), !6681)
    #dbg_value(ptr %.val4.i, !2665, !DIExpression(), !6683)
    #dbg_value(ptr %.val4.i, !2671, !DIExpression(), !6685)
    #dbg_value(i64 1, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6679)
    #dbg_value(i64 1, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6681)
    #dbg_value(i64 1, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6683)
    #dbg_value(i64 1, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6685)
    #dbg_value(i64 %.val3.i, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6679)
    #dbg_value(i64 %.val3.i, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6681)
    #dbg_value(i64 %.val3.i, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6683)
    #dbg_value(i64 %.val3.i, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6685)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !6720, !noalias !6715
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i, !dbg !6721

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !dbg !6718, !alias.scope !6713 ; 2 uses
    #dbg_value(ptr poison, !2600, !DIExpression(), !6689)
    #dbg_value(ptr poison, !2607, !DIExpression(), !6691)
    #dbg_value(ptr poison, !2612, !DIExpression(), !6693)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6693)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6693)
    #dbg_value(ptr poison, !2629, !DIExpression(), !6695)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6695)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6695)
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, label %bb.e, !dbg !6722

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6718
  %.val2.i = load ptr, ptr %i.f, align 8, !dbg !6718, !alias.scope !6714, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %.val2.i, !2625, !DIExpression(), !6696)
    #dbg_value(i64 1, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6696)
    #dbg_value(i64 %.val.i, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6696)
    #dbg_value(ptr poison, !2652, !DIExpression(), !6698)
    #dbg_value(ptr poison, !2659, !DIExpression(), !6700)
    #dbg_value(ptr %.val2.i, !2656, !DIExpression(), !6698)
    #dbg_value(ptr %.val2.i, !2662, !DIExpression(), !6700)
    #dbg_value(ptr %.val2.i, !2665, !DIExpression(), !6702)
    #dbg_value(ptr %.val2.i, !2671, !DIExpression(), !6704)
    #dbg_value(i64 1, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6698)
    #dbg_value(i64 1, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6700)
    #dbg_value(i64 1, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6702)
    #dbg_value(i64 1, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6704)
    #dbg_value(i64 %.val.i, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6698)
    #dbg_value(i64 %.val.i, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6700)
    #dbg_value(i64 %.val.i, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6702)
    #dbg_value(i64 %.val.i, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6704)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !6723, !noalias !6716
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, !dbg !6724

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b, !dbg !6718

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !6717
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs5yXxDE1DkoT_4tera5value5ValueB1L_EEB1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6725 {
bb.a:
    #dbg_value(ptr %0, !6789, !DIExpression(), !6793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6794), !dbg !6820
    #dbg_value(ptr %0, !6795, !DIExpression(), !6731)
  %i.a = load ptr, ptr %0, align 8, !dbg !6821, !alias.scope !6794, !nonnull !1394, !noundef !1394 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6822
  %i.c = load i64, ptr %i.b, align 8, !dbg !6822, !alias.scope !6794, !noundef !1394 ; 4 uses
    #dbg_value(i64 %i.c, !6796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6732)
    #dbg_value(ptr %i.a, !6796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6732)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6823
  %i.e = load i64, ptr %i.d, align 8, !dbg !6823, !alias.scope !6794, !noundef !1394 ; 4 uses
    #dbg_value(ptr %i.a, !6798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6736)
    #dbg_value(ptr %i.a, !6809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6739)
    #dbg_value(i64 %i.e, !6798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6736)
    #dbg_value(i64 %i.e, !6809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6739)
    #dbg_value(ptr %i.a, !6811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6743)
    #dbg_value(i64 %i.e, !6811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6743)
  %i.f = icmp eq i64 %i.e, 0, !dbg !6824
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs5yXxDE1DkoT_4tera5value5ValueEBG_.exit.i, label %.lr.ph, !dbg !6824

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e, !dbg !6824
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs5yXxDE1DkoT_4tera5value5ValueEBG_.exit.i, label %.lr.ph, !dbg !6824

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i2 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i.i2, !dbg !6824
  %i.i = add nuw nsw i64 %.sroa.0.0.i.i2, 1, !dbg !6824 ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.b unwind label %bb.d, !dbg !6824, !noalias !6794

bb.c:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i.i3, 1, !dbg !6824   ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !6824
  br i1 %i.k, label %.body.i, label %.lr.ph4, !dbg !6824

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e, !dbg !6824
  br i1 %i.m, label %.body.i, label %.lr.ph4, !dbg !6824

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i3 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i.i3, !dbg !6824
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #30
          to label %bb.c unwind label %bb.e, !dbg !6824, !noalias !6794

bb.e:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !6824, !noalias !6794
  unreachable, !dbg !6824

.body.i:                                          ; preds = %bb.c, %bb.d
    #dbg_value(ptr poison, !2822, !DIExpression(), !6745)
    #dbg_value(ptr poison, !2828, !DIExpression(), !6747)
    #dbg_value(ptr poison, !2612, !DIExpression(), !6749)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6749)
    #dbg_value(i64 24, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6749)
    #dbg_value(ptr poison, !2629, !DIExpression(), !6751)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6751)
    #dbg_value(i64 24, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6751)
    #dbg_value(i64 24, !2798, !DIExpression(), !6753)
  %i.p = icmp eq i64 %i.c, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1j_.exit.i, label %bb.f, !dbg !6825

bb.f:                                             ; preds = %.body.i
    #dbg_value(i64 %i.c, !2802, !DIExpression(), !6753)
  %i.q = mul nuw i64 %i.c, 24, !dbg !6826
    #dbg_value(ptr %i.a, !2625, !DIExpression(), !6754)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6754)
    #dbg_value(i64 %i.q, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6754)
    #dbg_value(ptr poison, !2652, !DIExpression(), !6756)
    #dbg_value(ptr poison, !2659, !DIExpression(), !6758)
    #dbg_value(ptr %i.a, !2656, !DIExpression(), !6756)
    #dbg_value(ptr %i.a, !2662, !DIExpression(), !6758)
    #dbg_value(ptr %i.a, !2665, !DIExpression(), !6760)
    #dbg_value(ptr %i.a, !2671, !DIExpression(), !6762)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6756)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6758)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6760)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6762)
    #dbg_value(i64 %i.q, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6756)
    #dbg_value(i64 %i.q, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6758)
    #dbg_value(i64 %i.q, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6760)
    #dbg_value(i64 %i.q, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6762)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !6827, !noalias !6818
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1j_.exit.i, !dbg !6828

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs5yXxDE1DkoT_4tera5value5ValueEBG_.exit.i: ; preds = %bb.b, %bb.a
    #dbg_value(ptr poison, !2822, !DIExpression(), !6766)
    #dbg_value(ptr poison, !2828, !DIExpression(), !6768)
    #dbg_value(ptr poison, !2612, !DIExpression(), !6770)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6770)
    #dbg_value(i64 24, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6770)
    #dbg_value(ptr poison, !2629, !DIExpression(), !6772)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6772)
    #dbg_value(i64 24, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6772)
    #dbg_value(i64 24, !2798, !DIExpression(), !6774)
  %i.r = icmp eq i64 %i.c, 0
  br i1 %i.r, label %_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCs5yXxDE1DkoT_4tera5value5ValueB1i_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_.exit, label %bb.g, !dbg !6829

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs5yXxDE1DkoT_4tera5value5ValueEBG_.exit.i
    #dbg_value(i64 %i.c, !2802, !DIExpression(), !6774)
  %i.s = mul nuw i64 %i.c, 24, !dbg !6830
    #dbg_value(ptr %i.a, !2625, !DIExpression(), !6775)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6775)
    #dbg_value(i64 %i.s, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6775)
    #dbg_value(ptr poison, !2652, !DIExpression(), !6777)
    #dbg_value(ptr poison, !2659, !DIExpression(), !6779)
    #dbg_value(ptr %i.a, !2656, !DIExpression(), !6777)
    #dbg_value(ptr %i.a, !2662, !DIExpression(), !6779)
    #dbg_value(ptr %i.a, !2665, !DIExpression(), !6781)
    #dbg_value(ptr %i.a, !2671, !DIExpression(), !6783)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6777)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6779)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6781)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6783)
    #dbg_value(i64 %i.s, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6777)
    #dbg_value(i64 %i.s, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6779)
    #dbg_value(i64 %i.s, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6781)
    #dbg_value(i64 %i.s, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6783)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !6831, !noalias !6819
  br label %_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCs5yXxDE1DkoT_4tera5value5ValueB1i_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_.exit, !dbg !6832

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1j_.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.l, !dbg !6833

_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCs5yXxDE1DkoT_4tera5value5ValueB1i_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1m_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs5yXxDE1DkoT_4tera5value5ValueEBG_.exit.i, %bb.g
  ret void, !dbg !6820
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTRejNtNtBI_6string6StringEB1P_EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6834 {
bb.a:
    #dbg_value(ptr %0, !6894, !DIExpression(), !6898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6899), !dbg !6914
    #dbg_value(ptr %0, !6900, !DIExpression(), !6840)
  %i.a = load ptr, ptr %0, align 8, !dbg !6915, !alias.scope !6899, !nonnull !1394, !noundef !1394 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6916
  %i.c = load i64, ptr %i.b, align 8, !dbg !6916, !alias.scope !6899, !noundef !1394 ; 4 uses
    #dbg_value(i64 %i.c, !6901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6841)
    #dbg_value(ptr %i.a, !6901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6841)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6917
  %i.e = load i64, ptr %i.d, align 8, !dbg !6917, !alias.scope !6899, !noundef !1394
    #dbg_value(ptr %i.a, !6903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6844)
    #dbg_value(ptr %i.a, !6905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6847)
    #dbg_value(i64 %i.e, !6903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6844)
    #dbg_value(i64 %i.e, !6905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6847)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.a, i64 noundef %i.e)
          to label %bb.d unwind label %bb.b, !dbg !6918, !noalias !6899

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !6907, !DIExpression(), !6850)
    #dbg_value(ptr poison, !2975, !DIExpression(), !6852)
    #dbg_value(ptr poison, !2612, !DIExpression(), !6854)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6854)
    #dbg_value(i64 48, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6854)
    #dbg_value(ptr poison, !2629, !DIExpression(), !6856)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6856)
    #dbg_value(i64 48, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6856)
    #dbg_value(i64 48, !2798, !DIExpression(), !6858)
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRejNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera.exit.i, label %bb.c, !dbg !6919

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.c, !2802, !DIExpression(), !6858)
  %i.h = mul nuw i64 %i.c, 48, !dbg !6920
    #dbg_value(ptr %i.a, !2625, !DIExpression(), !6859)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6859)
    #dbg_value(i64 %i.h, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6859)
    #dbg_value(ptr poison, !2652, !DIExpression(), !6861)
    #dbg_value(ptr poison, !2659, !DIExpression(), !6863)
    #dbg_value(ptr %i.a, !2656, !DIExpression(), !6861)
    #dbg_value(ptr %i.a, !2662, !DIExpression(), !6863)
    #dbg_value(ptr %i.a, !2665, !DIExpression(), !6865)
    #dbg_value(ptr %i.a, !2671, !DIExpression(), !6867)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6861)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6863)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6865)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6867)
    #dbg_value(i64 %i.h, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6861)
    #dbg_value(i64 %i.h, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6863)
    #dbg_value(i64 %i.h, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6865)
    #dbg_value(i64 %i.h, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6867)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !6921, !noalias !6912
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRejNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera.exit.i, !dbg !6922

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !6907, !DIExpression(), !6871)
    #dbg_value(ptr poison, !2975, !DIExpression(), !6873)
    #dbg_value(ptr poison, !2612, !DIExpression(), !6875)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6875)
    #dbg_value(i64 48, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6875)
    #dbg_value(ptr poison, !2629, !DIExpression(), !6877)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6877)
    #dbg_value(i64 48, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6877)
    #dbg_value(i64 48, !2798, !DIExpression(), !6879)
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropTRejNtNtB9_6string6StringEB1m_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, label %bb.e, !dbg !6923

bb.e:                                             ; preds = %bb.d
    #dbg_value(i64 %i.c, !2802, !DIExpression(), !6879)
  %i.j = mul nuw i64 %i.c, 48, !dbg !6924
    #dbg_value(ptr %i.a, !2625, !DIExpression(), !6880)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6880)
    #dbg_value(i64 %i.j, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6880)
    #dbg_value(ptr poison, !2652, !DIExpression(), !6882)
    #dbg_value(ptr poison, !2659, !DIExpression(), !6884)
    #dbg_value(ptr %i.a, !2656, !DIExpression(), !6882)
    #dbg_value(ptr %i.a, !2662, !DIExpression(), !6884)
    #dbg_value(ptr %i.a, !2665, !DIExpression(), !6886)
    #dbg_value(ptr %i.a, !2671, !DIExpression(), !6888)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6882)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6884)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6886)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6888)
    #dbg_value(i64 %i.j, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6882)
    #dbg_value(i64 %i.j, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6884)
    #dbg_value(i64 %i.j, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6886)
    #dbg_value(i64 %i.j, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6888)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !6925, !noalias !6913
  br label %_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropTRejNtNtB9_6string6StringEB1m_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, !dbg !6926

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRejNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f, !dbg !6927

_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropTRejNtNtB9_6string6StringEB1m_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !6914
}
end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEBH_
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !390 {
bb.a:
    #dbg_value(ptr %0, !2776, !DIExpression(), !9613)
  %i.a = load i64, ptr %0, align 8, !dbg !9618, !range !3473, !noundef !1394 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807, !dbg !9618
  tail call void @llvm.assume(i1 %i.b), !dbg !9618
  %i.c = icmp sgt i64 %i.a, -1, !dbg !9618
  br i1 %i.c, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit, !dbg !9618

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2781, !DIExpression(), !9566)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c, !dbg !9619

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %0, align 8, !dbg !9619, !alias.scope !9614 ; 2 uses
    #dbg_value(ptr poison, !2788, !DIExpression(), !9572)
    #dbg_value(ptr poison, !2794, !DIExpression(), !9574)
    #dbg_value(ptr poison, !2612, !DIExpression(), !9576)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9576)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9576)
    #dbg_value(ptr poison, !2629, !DIExpression(), !9578)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9578)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9578)
    #dbg_value(i64 8, !2798, !DIExpression(), !9580)
  %i.e = icmp eq i64 %.val3.i, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECs5yXxDE1DkoT_4tera.exit.i, label %bb.d, !dbg !9620

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9619
  %.val4.i = load ptr, ptr %i.f, align 8, !dbg !9619, !alias.scope !9615, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val3.i, !2802, !DIExpression(), !9580)
  %i.g = shl nuw i64 %.val3.i, 3, !dbg !9621
    #dbg_value(ptr %.val4.i, !2625, !DIExpression(), !9581)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9581)
    #dbg_value(i64 %i.g, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9581)
    #dbg_value(ptr poison, !2652, !DIExpression(), !9583)
    #dbg_value(ptr poison, !2659, !DIExpression(), !9585)
    #dbg_value(ptr %.val4.i, !2656, !DIExpression(), !9583)
    #dbg_value(ptr %.val4.i, !2662, !DIExpression(), !9585)
    #dbg_value(ptr %.val4.i, !2665, !DIExpression(), !9587)
    #dbg_value(ptr %.val4.i, !2671, !DIExpression(), !9589)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9583)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9585)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9587)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9589)
    #dbg_value(i64 %i.g, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9583)
    #dbg_value(i64 %i.g, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9585)
    #dbg_value(i64 %i.g, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9587)
    #dbg_value(i64 %i.g, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9589)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !9622, !noalias !9616
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECs5yXxDE1DkoT_4tera.exit.i, !dbg !9623

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %0, align 8, !dbg !9619, !alias.scope !9614 ; 2 uses
    #dbg_value(ptr poison, !2788, !DIExpression(), !9593)
    #dbg_value(ptr poison, !2794, !DIExpression(), !9595)
    #dbg_value(ptr poison, !2612, !DIExpression(), !9597)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9597)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9597)
    #dbg_value(ptr poison, !2629, !DIExpression(), !9599)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9599)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9599)
    #dbg_value(i64 8, !2798, !DIExpression(), !9601)
  %i.h = icmp eq i64 %.val.i, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit, label %bb.f, !dbg !9624

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9619
  %.val2.i = load ptr, ptr %i.i, align 8, !dbg !9619, !alias.scope !9615, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val.i, !2802, !DIExpression(), !9601)
  %i.j = shl nuw i64 %.val.i, 3, !dbg !9625
    #dbg_value(ptr %.val2.i, !2625, !DIExpression(), !9602)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9602)
    #dbg_value(i64 %i.j, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9602)
    #dbg_value(ptr poison, !2652, !DIExpression(), !9604)
    #dbg_value(ptr poison, !2659, !DIExpression(), !9606)
    #dbg_value(ptr %.val2.i, !2656, !DIExpression(), !9604)
    #dbg_value(ptr %.val2.i, !2662, !DIExpression(), !9606)
    #dbg_value(ptr %.val2.i, !2665, !DIExpression(), !9608)
    #dbg_value(ptr %.val2.i, !2671, !DIExpression(), !9610)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9604)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9606)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9608)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9610)
    #dbg_value(i64 %i.j, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9604)
    #dbg_value(i64 %i.j, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9606)
    #dbg_value(i64 %i.j, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9608)
    #dbg_value(i64 %i.j, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9610)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !9626, !noalias !9617
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit, !dbg !9627

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d, !dbg !9619

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void, !dbg !9618
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9629 {
bb.a:
    #dbg_value(ptr %0, !9683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9685)
    #dbg_value(i64 %1, !9683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9685)
  %i.a = icmp eq i64 %1, 0, !dbg !9690
  br i1 %i.a, label %._crit_edge, label %.lr.ph, !dbg !9690

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit
  %.sroa.0.09 = phi i64 [ %i.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.09, !dbg !9690 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.09, 1, !dbg !9690 ; 4 uses
    #dbg_value(ptr %i.b, !2591, !DIExpression(), !9631)
    #dbg_value(ptr %i.b, !2595, !DIExpression(), !9633)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !dbg !9691

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val3.i.i = load i64, ptr %i.b, align 8, !dbg !9691, !alias.scope !9686 ; 2 uses
    #dbg_value(ptr poison, !2600, !DIExpression(), !9641)
    #dbg_value(ptr poison, !2607, !DIExpression(), !9643)
    #dbg_value(ptr poison, !2612, !DIExpression(), !9645)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9645)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9645)
    #dbg_value(ptr poison, !2629, !DIExpression(), !9647)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9647)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9647)
  %i.e = icmp eq i64 %.val3.i.i, 0
  br i1 %i.e, label %.body, label %bb.c, !dbg !9692

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9691
  %.val4.i.i = load ptr, ptr %i.f, align 8, !dbg !9691, !alias.scope !9687, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %.val4.i.i, !2625, !DIExpression(), !9648)
    #dbg_value(i64 1, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9648)
    #dbg_value(i64 %.val3.i.i, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9648)
    #dbg_value(ptr poison, !2652, !DIExpression(), !9650)
    #dbg_value(ptr poison, !2659, !DIExpression(), !9652)
    #dbg_value(ptr %.val4.i.i, !2656, !DIExpression(), !9650)
    #dbg_value(ptr %.val4.i.i, !2662, !DIExpression(), !9652)
    #dbg_value(ptr %.val4.i.i, !2665, !DIExpression(), !9654)
    #dbg_value(ptr %.val4.i.i, !2671, !DIExpression(), !9656)
    #dbg_value(i64 1, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9650)
    #dbg_value(i64 1, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9652)
    #dbg_value(i64 1, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9654)
    #dbg_value(i64 1, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9656)
    #dbg_value(i64 %.val3.i.i, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9650)
    #dbg_value(i64 %.val3.i.i, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9652)
    #dbg_value(i64 %.val3.i.i, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9654)
    #dbg_value(i64 %.val3.i.i, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9656)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %.val3.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !9693, !noalias !9688
  br label %.body, !dbg !9694

bb.d:                                             ; preds = %.lr.ph
  %.val.i.i = load i64, ptr %i.b, align 8, !dbg !9691, !alias.scope !9686 ; 2 uses
    #dbg_value(ptr poison, !2600, !DIExpression(), !9660)
    #dbg_value(ptr poison, !2607, !DIExpression(), !9662)
    #dbg_value(ptr poison, !2612, !DIExpression(), !9664)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9664)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9664)
    #dbg_value(ptr poison, !2629, !DIExpression(), !9666)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9666)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9666)
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, label %bb.e, !dbg !9695

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9691
  %.val2.i.i = load ptr, ptr %i.h, align 8, !dbg !9691, !alias.scope !9687, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %.val2.i.i, !2625, !DIExpression(), !9667)
    #dbg_value(i64 1, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9667)
    #dbg_value(i64 %.val.i.i, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9667)
    #dbg_value(ptr poison, !2652, !DIExpression(), !9669)
    #dbg_value(ptr poison, !2659, !DIExpression(), !9671)
    #dbg_value(ptr %.val2.i.i, !2656, !DIExpression(), !9669)
    #dbg_value(ptr %.val2.i.i, !2662, !DIExpression(), !9671)
    #dbg_value(ptr %.val2.i.i, !2665, !DIExpression(), !9673)
    #dbg_value(ptr %.val2.i.i, !2671, !DIExpression(), !9675)
    #dbg_value(i64 1, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9669)
    #dbg_value(i64 1, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9671)
    #dbg_value(i64 1, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9673)
    #dbg_value(i64 1, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9675)
    #dbg_value(i64 %.val.i.i, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9669)
    #dbg_value(i64 %.val.i.i, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9671)
    #dbg_value(i64 %.val.i.i, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9673)
    #dbg_value(i64 %.val.i.i, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9675)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !9696, !noalias !9689
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, !dbg !9697

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.d, %bb.e
  %i.i = icmp eq i64 %i.c, %1, !dbg !9690
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !9690

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, %bb.a
  ret void, !dbg !9690

bb.f:                                             ; preds = %.lr.ph21
  %i.j = add i64 %.sroa.0.120, 1, !dbg !9690      ; 2 uses
  %i.k = icmp eq i64 %i.j, %1, !dbg !9690
  br i1 %i.k, label %._crit_edge22, label %.lr.ph21, !dbg !9690

.body:                                            ; preds = %bb.b, %bb.c
  %i.l = icmp eq i64 %i.c, %1, !dbg !9690
  br i1 %i.l, label %._crit_edge22, label %.lr.ph21, !dbg !9690

.lr.ph21:                                         ; preds = %.body, %bb.f
  %.sroa.0.120 = phi i64 [ %i.j, %bb.f ], [ %i.c, %.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.120, !dbg !9690
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #30
          to label %bb.f unwind label %bb.g, !dbg !9690

._crit_edge22:                                    ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.d, !dbg !9690

bb.g:                                             ; preds = %.lr.ph21
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !9690
  unreachable, !dbg !9690
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvXsz_B2n_B2l_INtNtB1f_7convert4FromINtB4_3VecB2l_EE4from0EB2l_EB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9723 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !9769, !DIExpression(), !9814)
    #dbg_declare(ptr %i.a, !9786, !DIExpression(), !9815)
    #dbg_declare(ptr poison, !9816, !DIExpression(), !9826)
    #dbg_value(ptr %1, !9777, !DIExpression(), !9834)
    #dbg_value(ptr poison, !9770, !DIExpression(), !9835)
    #dbg_value(ptr poison, !9771, !DIExpression(), !9835)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9876
  %i.c = load i64, ptr %i.b, align 8, !dbg !9876, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.c, !9772, !DIExpression(), !9835)
  %i.d = load ptr, ptr %1, align 8, !dbg !9877, !nonnull !1394, !noundef !1394 ; 5 uses
    #dbg_value(ptr %i.d, !9773, !DIExpression(), !9835)
    #dbg_value(ptr %i.d, !9830, !DIExpression(), !9836)
    #dbg_value(ptr %i.d, !9820, !DIExpression(), !9837)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9878
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9878, !noundef !1394
    #dbg_value(ptr %i.f, !9774, !DIExpression(), !9835)
    #dbg_value(i64 %i.c, !9775, !DIExpression(), !9835)
    #dbg_value(i64 %i.c, !9832, !DIExpression(), !9836)
    #dbg_value(i64 %i.c, !9822, !DIExpression(), !9837)
    #dbg_value(ptr %1, !9839, !DIExpression(), !9731)
    #dbg_value(ptr %i.d, !9842, !DIExpression(), !9731)
    #dbg_value(ptr %i.f, !9843, !DIExpression(), !9731)
    #dbg_value(i64 24, !9851, !DIExpression(), !9737)
    #dbg_value(ptr %i.d, !9844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9738)
    #dbg_value(ptr %i.d, !9844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9738)
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvXsz_B1N_B1L_INtNtBc_7convert4FromINtB12_3VecB1L_EE4from0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB41_zEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c, !dbg !9879

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
    #dbg_value(ptr %1, !9862, !DIExpression(), !9741)
    #dbg_value(ptr %1, !9868, !DIExpression(), !9744)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvXsz_B1Z_B1X_INtNtB4_7convert4FromINtB1e_3VecB1X_EE4from0EEB21_.exit unwind label %bb.g, !dbg !9880

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1, !dbg !9879
    #dbg_value(ptr poison, !9845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9745)
    #dbg_value(ptr %i.i, !9845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9745)
    #dbg_value(ptr %i.i, !9859, !DIExpression(), !9746)
    #dbg_value(ptr %i.d, !9860, !DIExpression(), !9746)
    #dbg_value(ptr %i.d, !9855, !DIExpression(), !9747)
    #dbg_value(ptr %i.i, !9854, !DIExpression(), !9747)
  %i.j = ptrtoint ptr %i.i to i64, !dbg !9881
  %i.k = ptrtoint ptr %i.d to i64, !dbg !9881
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !9881
  %i.m = udiv exact i64 %i.l, 24, !dbg !9881      ; 2 uses
    #dbg_value(i64 %i.m, !9778, !DIExpression(), !9874)
    #dbg_value(i64 %i.m, !9831, !DIExpression(), !9836)
    #dbg_value(i64 %i.m, !9821, !DIExpression(), !9837)
    #dbg_value(ptr %1, !9779, !DIExpression(), !9875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9882
  store ptr %i.d, ptr %i.a, align 8, !dbg !9883
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9883
  store i64 %i.m, ptr %i.n, align 8, !dbg !9883
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9883
  store i64 %i.c, ptr %i.o, align 8, !dbg !9883
  invoke void @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5yXxDE1DkoT_4tera5value5ValueE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e, !dbg !9884

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs5yXxDE1DkoT_4tera5value5ValueB1L_EEB1P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #30
          to label %bb.b unwind label %bb.g, !dbg !9885

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr %i.d, !9820, !DIExpression(), !9837)
    #dbg_value(ptr %i.d, !9830, !DIExpression(), !9836)
    #dbg_value(ptr %i.d, !9773, !DIExpression(), !9835)
  store i64 %i.c, ptr %0, align 8, !dbg !9886
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9886
  store ptr %i.d, ptr %i.q, align 8, !dbg !9886
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9886
  store i64 %i.m, ptr %i.r, align 8, !dbg !9886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9885
    #dbg_value(ptr %1, !9862, !DIExpression(), !9749)
    #dbg_value(ptr %1, !9868, !DIExpression(), !9751)
  tail call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !9887
  ret void, !dbg !9888

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !9889
  unreachable, !dbg !9889

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvXsz_B1Z_B1X_INtNtB4_7convert4FromINtB1e_3VecB1X_EE4from0EEB21_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !9889
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTRejNtNtB6_6string6StringEENCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2R_4Tera18finalize_templatess2_0EB2p_EB2T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9916 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !9963, !DIExpression(), !10008)
    #dbg_declare(ptr %i.a, !9980, !DIExpression(), !10009)
    #dbg_declare(ptr poison, !10010, !DIExpression(), !10017)
    #dbg_value(ptr %1, !9971, !DIExpression(), !10022)
    #dbg_value(ptr poison, !9964, !DIExpression(), !10023)
    #dbg_value(ptr poison, !9965, !DIExpression(), !10023)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10058
  %i.c = load i64, ptr %i.b, align 8, !dbg !10058, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.c, !9966, !DIExpression(), !10023)
  %i.d = load ptr, ptr %1, align 8, !dbg !10059, !nonnull !1394, !noundef !1394 ; 5 uses
    #dbg_value(ptr %i.d, !9967, !DIExpression(), !10023)
    #dbg_value(ptr %i.d, !10018, !DIExpression(), !10024)
    #dbg_value(ptr %i.d, !10011, !DIExpression(), !10025)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10060
  %i.f = load ptr, ptr %i.e, align 8, !dbg !10060, !noundef !1394
    #dbg_value(ptr %i.f, !9968, !DIExpression(), !10023)
    #dbg_value(i64 %i.c, !9969, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !10023)
    #dbg_value(i64 %i.c, !10020, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !10024)
    #dbg_value(i64 %i.c, !10013, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !10025)
    #dbg_value(ptr %1, !10028, !DIExpression(), !9923)
    #dbg_value(ptr %i.d, !10031, !DIExpression(), !9923)
    #dbg_value(ptr %i.f, !10032, !DIExpression(), !9923)
    #dbg_value(i64 24, !10037, !DIExpression(), !9929)
    #dbg_value(ptr %i.d, !10033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9930)
    #dbg_value(ptr %i.d, !10033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9930)
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRejNtNtB14_6string6StringEENCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2i_4Tera18finalize_templatess2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1P_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1P_E0INtNtBc_6result6ResultB3Z_zEEB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c, !dbg !10061

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
    #dbg_value(ptr %1, !10044, !DIExpression(), !9933)
    #dbg_value(ptr %1, !10050, !DIExpression(), !9936)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRejNtNtB9_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRejNtNtB1g_6string6StringEENCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2u_4Tera18finalize_templatess2_0EEB2w_.exit unwind label %bb.g, !dbg !10062

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1, !dbg !10061
    #dbg_value(ptr poison, !10034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9937)
    #dbg_value(ptr %i.i, !10034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9937)
    #dbg_value(ptr %i.i, !10041, !DIExpression(), !9938)
    #dbg_value(ptr %i.d, !10042, !DIExpression(), !9938)
    #dbg_value(ptr %i.d, !10039, !DIExpression(), !9939)
    #dbg_value(ptr %i.i, !10038, !DIExpression(), !9939)
  %i.j = ptrtoint ptr %i.i to i64, !dbg !10063
  %i.k = ptrtoint ptr %i.d to i64, !dbg !10063
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !10063
  %i.m = udiv exact i64 %i.l, 24, !dbg !10063     ; 2 uses
    #dbg_value(i64 %i.m, !9972, !DIExpression(), !10056)
    #dbg_value(i64 %i.m, !10019, !DIExpression(), !10024)
    #dbg_value(i64 %i.m, !10012, !DIExpression(), !10025)
    #dbg_value(ptr %1, !9973, !DIExpression(), !10057)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10064
  store ptr %i.d, ptr %i.a, align 8, !dbg !10065
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10065
  store i64 %i.m, ptr %i.n, align 8, !dbg !10065
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10065
  store i64 %i.c, ptr %i.o, align 8, !dbg !10065
  invoke void @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRejNtNtB9_6string6StringEE32forget_allocation_drop_remainingCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e, !dbg !10066

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTRejNtNtBI_6string6StringEB1P_EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #30
          to label %bb.b unwind label %bb.g, !dbg !10067

bb.f:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %i.c, 1, !dbg !10068
end_hunk_1
