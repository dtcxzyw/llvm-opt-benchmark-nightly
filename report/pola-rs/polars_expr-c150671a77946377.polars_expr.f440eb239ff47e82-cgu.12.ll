inline.NumInlined: 9660
inline.NumDeleted: 4069
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEj1_NtB4_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr:bb.a
          cleanup
  %i.k = icmp eq i64 %i.e, %i.b, !dbg !176662
  br i1 %i.k, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !176662

.lr.ph.i.i:                                       ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit8.i.i ], [ %i.e, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.110.i.i, !dbg !176662 ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1, !dbg !176662 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 23, !dbg !176687
  %i.o = load i8, ptr %i.n, align 1, !dbg !176687, !range !2411, !alias.scope !176694, !noundef !11
  %i.p = icmp eq i8 %i.o, -40, !dbg !176703
  br i1 %i.p, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit8.i.i, !dbg !176703, !prof !103

bb.f:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit8.i.i unwind label %bb.g, !dbg !176704

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit8.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.q = icmp eq i64 %i.m, %i.b, !dbg !176662
  br i1 %i.q, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !176662

._crit_edge.i.i:                                  ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit8.i.i, %bb.e
  resume { ptr, i32 } %i.j, !dbg !176662

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !176662
  unreachable, !dbg !176662

_RNvXNtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtB2_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.a
  ret void, !dbg !176705
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayEj1_NtB4_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !176706 {
bb.a:
  %i.a = icmp eq i64 %2, %1, !dbg !176707
  br i1 %i.a, label %_RNvXNtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayENtB2_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph, !dbg !176707

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1, !dbg !176713         ; 3 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1, !dbg !176720 ; 2 uses
  br label %bb.c, !dbg !176724

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b, !dbg !176724
  br i1 %i.d, label %_RNvXNtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayENtB2_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !176724

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3, !dbg !176724
  %i.f = add i64 %.sroa.0.0.i.i3, 1, !dbg !176724 ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %i.e)
          to label %bb.b unwind label %bb.e, !dbg !176724

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i.i4, 1, !dbg !176724 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b, !dbg !176724
  br i1 %i.h, label %._crit_edge, label %.lr.ph5, !dbg !176724

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b, !dbg !176724
  br i1 %i.j, label %._crit_edge, label %.lr.ph5, !dbg !176724

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4, !dbg !176724
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %i.k) #46
          to label %bb.d unwind label %bb.f, !dbg !176724

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i, !dbg !176724

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !176724
  unreachable, !dbg !176724

_RNvXNtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayENtB2_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.a
  ret void, !dbg !176727
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayEj1_NtB4_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !176728 {
bb.a:
  %i.a = icmp eq i64 %2, %1, !dbg !176729
  br i1 %i.a, label %_RNvXNtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayENtB2_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !176729

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1, !dbg !176735         ; 3 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1, !dbg !176742 ; 2 uses
  br label %bb.c, !dbg !176746

bb.c:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.b
  %.sroa.0.012.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECskY9G75ZWc4U_11polars_expr.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %.sroa.0.012.i.i, !dbg !176746 ; 5 uses
  %i.e = add nuw i64 %.sroa.0.012.i.i, 1, !dbg !176746 ; 4 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.e unwind label %bb.d, !dbg !176749

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !176749
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit.i.i.i unwind label %bb.i, !dbg !176751

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !176749
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit2.i.i.i unwind label %bb.g, !dbg !176754

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %bb.g, %bb.d
  %.pn.i.i.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.f, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !176749 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !176757, !alias.scope !176759, !noundef !11
  %i.k = icmp eq ptr %i.j, null, !dbg !176757
  br i1 %i.k, label %.body.i.i, label %bb.f, !dbg !176757

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit.i.i.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body.i.i unwind label %bb.i, !dbg !176768

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit2.i.i.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !176749 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !176771, !alias.scope !176773, !noundef !11
  %i.o = icmp eq ptr %i.n, null, !dbg !176771
  br i1 %i.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.h, !dbg !176771

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit2.i.i.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.k, !dbg !176776

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !176749
  unreachable, !dbg !176749

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit2.i.i.i
  %i.q = icmp eq i64 %i.e, %i.b, !dbg !176746
  br i1 %i.q, label %_RNvXNtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayENtB2_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !176746

bb.j:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.0.1.i.i31, 1, !dbg !176746 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.b, !dbg !176746
  br i1 %i.s, label %._crit_edge, label %.lr.ph, !dbg !176746

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.t, %bb.k ], [ %.pn.i.i.i, %bb.f ], [ %.pn.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit.i.i.i ]
  %i.u = icmp eq i64 %i.e, %i.b, !dbg !176746
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !176746

.lr.ph:                                           ; preds = %.body.i.i, %bb.j
  %.sroa.0.1.i.i31 = phi i64 [ %i.r, %bb.j ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %.sroa.0.1.i.i31, !dbg !176746
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.v) #46
          to label %bb.j unwind label %bb.l, !dbg !176746

._crit_edge:                                      ; preds = %bb.j, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i, !dbg !176746

bb.l:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !176746
  unreachable, !dbg !176746

_RNvXNtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayENtB2_11PartialDrop12partial_dropCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.a
  ret void, !dbg !176779
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtB4_13SpecAdvanceBy15spec_advance_byB1j_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #22 personality ptr @rust_eh_personality !dbg !176780 {
bb.a:
  %.not = icmp eq i64 %1, 0, !dbg !176783
  br i1 %.not, label %_RINvYNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1f_3num7nonzero7NonZerojENCNvXs_NvB17_10advance_byB3_NtB2P_13SpecAdvanceBy15spec_advance_by0INtNtB1f_6option6OptionB2b_EEB9_.exit, label %bb.b, !dbg !176784

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176785), !dbg !176788
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !176790, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !176790 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !176785, !nonnull !11
  %2 = add i64 %.promoted.i, %1, !dbg !176793
  %3 = sub i64 %2, %i.b, !dbg !176793
  br label %bb.c, !dbg !176793

bb.c:                                             ; preds = %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i, %bb.b
  %i.f = phi i64 [ %.promoted.i, %bb.b ], [ %i.h, %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %1, %bb.b ], [ %i.l, %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i ], !dbg !176797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176798), !dbg !176799
  %i.g = icmp eq i64 %i.b, %i.f, !dbg !176801
  br i1 %i.g, label %_RINvYNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1f_3num7nonzero7NonZerojENCNvXs_NvB17_10advance_byB3_NtB2P_13SpecAdvanceBy15spec_advance_by0INtNtB1f_6option6OptionB2b_EEB9_.exit, label %bb.d, !dbg !176801

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.f, 1, !dbg !176805            ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !dbg !176805, !alias.scope !176790
  %i.i = load i64, ptr %i.e, align 8, !dbg !176806, !noalias !176790, !noundef !11 ; 2 uses
  %i.j = icmp ne i64 %i.i, 0, !dbg !176817
  tail call void @llvm.assume(i1 %i.j), !dbg !176819
  %i.k = icmp eq i64 %i.i, -1, !dbg !176822
  br i1 %i.k, label %bb.e, label %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i, !dbg !176822, !prof !103

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !176826
  unreachable, !dbg !176826

_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i: ; preds = %bb.d
  %i.l = add i64 %.sroa.01.0.i, -1, !dbg !176827  ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !176833
  br i1 %i.m, label %_RINvYNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1f_3num7nonzero7NonZerojENCNvXs_NvB17_10advance_byB3_NtB2P_13SpecAdvanceBy15spec_advance_by0INtNtB1f_6option6OptionB2b_EEB9_.exit, label %bb.c, !dbg !176833

_RINvYNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1f_3num7nonzero7NonZerojENCNvXs_NvB17_10advance_byB3_NtB2P_13SpecAdvanceBy15spec_advance_by0INtNtB1f_6option6OptionB2b_EEB9_.exit: ; preds = %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i, %bb.c, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %3, %bb.c ], [ 0, %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter7LitIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i ], !dbg !176834
  ret i64 %.sroa.0.1, !dbg !176835
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB4_13SpecAdvanceBy15spec_advance_byB1j_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !176836 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq i64 %1, 0, !dbg !176837
  br i1 %.not, label %_RINvYNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1g_3num7nonzero7NonZerojENCNvXs_NvB18_10advance_byB3_NtB2Q_13SpecAdvanceBy15spec_advance_by0INtNtB1g_6option6OptionB2c_EEB9_.exit, label %.preheader, !dbg !176838

.preheader:                                       ; preds = %bb.a, %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i
  %.sroa.01.0.i = phi i64 [ %i.j, %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i ], [ %1, %bb.a ], !dbg !176839 ; 2 uses
  %i.b = call { i64, ptr } @_RNvXs3_NtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iterNtB5_8FlatIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(80) %0), !dbg !176843 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0, !dbg !176846
  %i.d = trunc nuw i64 %i.c to i1, !dbg !176847
  br i1 %i.d, label %bb.b, label %_RINvYNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1g_3num7nonzero7NonZerojENCNvXs_NvB18_10advance_byB3_NtB2Q_13SpecAdvanceBy15spec_advance_by0INtNtB1g_6option6OptionB2c_EEB9_.exit, !dbg !176847

bb.b:                                             ; preds = %.preheader
  %i.e = extractvalue { i64, ptr } %i.b, 1, !dbg !176846 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176848
  store ptr %i.e, ptr %i.a, align 8, !noalias !176848
  %i.f = icmp eq ptr %i.e, null, !dbg !176851
  br i1 %i.f, label %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i, label %bb.c, !dbg !176851

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !dbg !176855, !noalias !176862, !noundef !11
  %i.h = add i64 %i.g, -1, !dbg !176871           ; 2 uses
  store i64 %i.h, ptr %i.e, align 8, !dbg !176872, !noalias !176862
  %i.i = icmp eq i64 %i.h, 0, !dbg !176876
  br i1 %i.i, label %bb.d, label %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i, !dbg !176876

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs6_NtCsgZ49sUHp3tW_5alloc2rcINtB5_2RcNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE9drop_slowCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #44, !dbg !176877, !noalias !176848
  br label %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i, !dbg !176877

_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.j = add i64 %.sroa.01.0.i, -1, !dbg !176878  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !176881, !noalias !176848
  %i.k = icmp eq i64 %i.j, 0, !dbg !176882
  br i1 %i.k, label %_RINvYNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1g_3num7nonzero7NonZerojENCNvXs_NvB18_10advance_byB3_NtB2Q_13SpecAdvanceBy15spec_advance_by0INtNtB1g_6option6OptionB2c_EEB9_.exit, label %.preheader, !dbg !176882

_RINvYNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1g_3num7nonzero7NonZerojENCNvXs_NvB18_10advance_byB3_NtB2Q_13SpecAdvanceBy15spec_advance_by0INtNtB1g_6option6OptionB2c_EEB9_.exit: ; preds = %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i, %.preheader, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %_RNCNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10group_iter8FlatIterNtB6_13SpecAdvanceBy15spec_advance_by0B1l_.exit.i ], [ %.sroa.01.0.i, %.preheader ], !dbg !176883
  ret i64 %.sroa.0.1, !dbg !176884
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10arithmetic7numericRINtB9_12ChunkedArrayNtNtBb_9datatypes10Int128TypeEINtNtNtCscgRAwXFJnXP_4core3ops5arith3MuldE3mulCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, double noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !176885 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = fcmp oge double %2, f0xC7E0000000000000, !dbg !176887
  %i.i = fcmp olt double %2, f0x47E0000000000000
  %or.cond.i.i = and i1 %i.h, %i.i, !dbg !176887
  br i1 %or.cond.i.i, label %bb.b, label %_RINvXsD_NtCslmKYcnV0hjo_10num_traits4castnNtB6_7NumCast4fromdECskY9G75ZWc4U_11polars_expr.exit, !dbg !176887

bb.b:                                             ; preds = %bb.a
  %i.j = fptosi double %2 to i128, !dbg !176893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !176901
  store i128 %i.j, ptr %i.g, align 16, !dbg !176901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !176903
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !176903
  %i.l = load ptr, ptr %i.k, align 8, !dbg !176903, !noalias !176923, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !176927
  %i.n = load i64, ptr %i.m, align 8, !dbg !176927, !noalias !176923, !noundef !11
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.n, !dbg !176928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !176937, !noalias !176923
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !176939
  %i.q = load ptr, ptr %i.p, align 8, !dbg !176939, !noalias !176923, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64, !dbg !176948 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 87, !dbg !176953
  %i.t = load i8, ptr %i.s, align 1, !dbg !176953, !range !2411, !noalias !176923, !noundef !11
  %i.u = icmp eq i8 %i.t, -40, !dbg !176960
  br i1 %i.u, label %bb.c, label %bb.d, !dbg !176960

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !dbg !176961, !noalias !176923
  br label %bb.e, !dbg !176961

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !176962, !noalias !176923
  br label %bb.e, !dbg !176965

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !176966, !noalias !176923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176967), !dbg !176970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !176971, !noalias !176923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !176971, !noalias !176923
  store ptr %i.l, ptr %i.c, align 8, !dbg !176971, !alias.scope !176978, !noalias !176982
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !176971
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx4.i, align 8, !dbg !176971, !alias.scope !176978, !noalias !176982
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !176971
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !176971, !alias.scope !176978, !noalias !176982
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2o_IB2o_INtNtNtB2w_5slice4iter4IterBU_ENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB41_12ChunkedArrayNtNtB43_9datatypes10Int128TypeE13downcast_iter0ENCNvXs_NtNtB41_10arithmetic7numericRB4W_NtB6a_17ArithmeticChunked19wrapping_mul_scalar0ENCINvMs_NtB41_4fromB4W_15from_chunk_iterB3b_E0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity12unary_kernelNtNtB8_9datatypes10Int128TypeB1c_NCNvXs_NtNtB6_10arithmetic7numericRINtB6_12ChunkedArrayB1c_ENtB1Q_17ArithmeticChunked19wrapping_mul_scalar0INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.f, !dbg !176984, !noalias !176989

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.v, !dbg !176991

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !176992
  %i.x = load i8, ptr %i.w, align 1, !dbg !176992, !range !2411, !alias.scope !176999, !noalias !177008, !noundef !11
  %i.y = icmp eq i8 %i.x, -40, !dbg !177009
  br i1 %i.y, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !177009, !prof !103

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.h, !dbg !177010, !noalias !177011

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !176991, !noalias !177011
  unreachable, !dbg !176991

_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity12unary_kernelNtNtB8_9datatypes10Int128TypeB1c_NCNvXs_NtNtB6_10arithmetic7numericRINtB6_12ChunkedArrayB1c_ENtB1Q_17ArithmeticChunked19wrapping_mul_scalar0INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !177012, !noalias !177015
  store i8 10, ptr %i.b, align 16, !dbg !177012, !noalias !177016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !177021, !noalias !177016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !177021, !noalias !177022
  call fastcc void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB6_12ChunkedArrayNtNtB8_9datatypes10Int128TypeE31from_chunks_and_dtype_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 16 captures(none) dereferenceable(48) %i.b), !dbg !177023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !177025, !noalias !177016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !177026, !noalias !177015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !177027, !noalias !176923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !177027, !noalias !176923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !177028, !noalias !176923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !177029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !177030
  ret void, !dbg !177031

_RINvXsD_NtCslmKYcnV0hjo_10num_traits4castnNtB6_7NumCast4fromdECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @523) #50, !dbg !177032
  unreachable, !dbg !177032
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10arithmetic7numericRINtB9_12ChunkedArrayNtNtBb_9datatypes10Int128TypeEINtNtNtCscgRAwXFJnXP_4core3ops5arith3MullE3mulCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !177035 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = sext i32 %2 to i128, !dbg !177036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !177039
  store i128 %i.h, ptr %i.g, align 16, !dbg !177039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !177041
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !177041
  %i.j = load ptr, ptr %i.i, align 8, !dbg !177041, !noalias !177052, !nonnull !11, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !177056
  %i.l = load i64, ptr %i.k, align 8, !dbg !177056, !noalias !177052, !noundef !11
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l, !dbg !177057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !177061, !noalias !177052
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !177062
  %i.o = load ptr, ptr %i.n, align 8, !dbg !177062, !noalias !177052, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64, !dbg !177067 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 87, !dbg !177070
  %i.r = load i8, ptr %i.q, align 1, !dbg !177070, !range !2411, !noalias !177052, !noundef !11
  %i.s = icmp eq i8 %i.r, -40, !dbg !177074
  br i1 %i.s, label %bb.b, label %bb.c, !dbg !177074

bb.b:                                             ; preds = %bb.a
end_hunk_0
