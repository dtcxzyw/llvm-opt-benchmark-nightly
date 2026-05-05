inline.NumInlined: 552
inline.NumDeleted: 93
begin_hunk_0_@_ctypes_PyCArrayType_Type_value_get:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.078.i = phi i64 [ %i.h, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %.078.i
  %i.f = load i8, ptr %scevgep, align 1, !tbaa !28
  %i.g = icmp eq i8 %i.f, 0
end_hunk_0
begin_hunk_1_@_ctypes_PyCArrayType_Type_value_get:bb.a
  br i1 %exitcond.not.i, label %_ctypes_PyCArrayType_Type_value_get_impl.exit.loopexitsplit, label %.lr.ph.i, !llvm.loop !188

_ctypes_PyCArrayType_Type_value_get_impl.exit.loopexitsplit: ; preds = %bb.b
  br label %_ctypes_PyCArrayType_Type_value_get_impl.exit.loopexit

.lr.ph.i._ctypes_PyCArrayType_Type_value_get_impl.exit.loopexit_crit_edge: ; preds = %.lr.ph.i
  %.078.i.lcssa.a = phi i64 [ %.078.i, %.lr.ph.i ]
  br label %_ctypes_PyCArrayType_Type_value_get_impl.exit.loopexit

_ctypes_PyCArrayType_Type_value_get_impl.exit.loopexit: ; preds = %_ctypes_PyCArrayType_Type_value_get_impl.exit.loopexitsplit, %.lr.ph.i._ctypes_PyCArrayType_Type_value_get_impl.exit.loopexit_crit_edge
  %.07.lcssa.i.ph = phi i64 [ %.078.i.lcssa.a, %.lr.ph.i._ctypes_PyCArrayType_Type_value_get_impl.exit.loopexit_crit_edge ], [ %i.d, %_ctypes_PyCArrayType_Type_value_get_impl.exit.loopexitsplit ]
  br label %_ctypes_PyCArrayType_Type_value_get_impl.exit

_ctypes_PyCArrayType_Type_value_get_impl.exit:    ; preds = %_ctypes_PyCArrayType_Type_value_get_impl.exit.loopexit, %bb.a
end_hunk_1
begin_hunk_2_@WCharArray_get_value:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.089.i = phi i64 [ %i.j, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.g = shl i64 %.089.i, 2
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.g
  %i.h = load i32, ptr %scevgep, align 4, !tbaa !6
end_hunk_2
begin_hunk_3_@WCharArray_get_value:bb.a
  br i1 %exitcond.not.i, label %WCharArray_get_value_lock_held.exit.loopexitsplit, label %.lr.ph.i, !llvm.loop !189

WCharArray_get_value_lock_held.exit.loopexitsplit: ; preds = %bb.b
  br label %WCharArray_get_value_lock_held.exit.loopexit

.lr.ph.i.WCharArray_get_value_lock_held.exit.loopexit_crit_edge: ; preds = %.lr.ph.i
  %.089.i.lcssa.a = phi i64 [ %.089.i, %.lr.ph.i ]
  br label %WCharArray_get_value_lock_held.exit.loopexit

WCharArray_get_value_lock_held.exit.loopexit:     ; preds = %WCharArray_get_value_lock_held.exit.loopexitsplit, %.lr.ph.i.WCharArray_get_value_lock_held.exit.loopexit_crit_edge
  %.08.lcssa.i.ph = phi i64 [ %.089.i.lcssa.a, %.lr.ph.i.WCharArray_get_value_lock_held.exit.loopexit_crit_edge ], [ %i.e, %WCharArray_get_value_lock_held.exit.loopexitsplit ]
  br label %WCharArray_get_value_lock_held.exit

WCharArray_get_value_lock_held.exit:              ; preds = %WCharArray_get_value_lock_held.exit.loopexit, %bb.a
end_hunk_3
begin_hunk_4_@_validate_paramflags:bb.a
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph, %_check_outarg_type.exit.thread
  %.02450 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_check_outarg_type.exit.thread ] ; 7 uses
  %i.ab = shl i64 %.02450, 3
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.ac = load ptr, ptr %scevgep, align 8, !tbaa !32
end_hunk_4
begin_hunk_5_@_validate_paramflags:bb.a
bb.o:                                             ; preds = %bb.n
  %i.am = shl i64 %.02450, 3
  %scevgep98 = getelementptr i8, ptr %i.x, i64 %i.am
  %i.an = load ptr, ptr %scevgep98, align 8, !tbaa !32 ; 5 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !63  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 8      ; 4 uses
  %.val19.i = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %.not.i.i39 = icmp eq ptr %.val19.i, %i.ao
  br i1 %.not.i.i39, label %_check_outarg_type.exit.thread, label %PyObject_TypeCheck.exit.i
end_hunk_5
begin_hunk_6_@_validate_paramflags:bb.a

_check_outarg_type.exitsplit:                     ; preds = %bb.s, %PyStgInfo_FromType.exit.i, %bb.r
  %.02450.lcssa101.a = phi i64 [ %.02450, %bb.s ], [ %.02450, %PyStgInfo_FromType.exit.i ], [ %.02450, %bb.r ]
  br label %_check_outarg_type.exit

._check_outarg_type.exit_crit_edge:               ; preds = %bb.q
  %.02450.lcssa100 = phi i64 [ %.02450, %bb.q ]
  br label %_check_outarg_type.exit

_check_outarg_type.exit:                          ; preds = %_check_outarg_type.exitsplit, %._check_outarg_type.exit_crit_edge
  %.02450.lcssa93 = phi i64 [ %.02450.lcssa100, %._check_outarg_type.exit_crit_edge ], [ %.02450.lcssa101.a, %_check_outarg_type.exitsplit ]
  %.lcssa91 = phi ptr [ %i.an, %._check_outarg_type.exit_crit_edge ], [ %i.an, %_check_outarg_type.exitsplit ]
  %.lcssa = phi ptr [ %i.ap, %._check_outarg_type.exit_crit_edge ], [ %i.ap, %_check_outarg_type.exitsplit ]
  %i.bg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %i.bh = trunc i64 %.02450.lcssa93 to i32
  %i.bi = add i32 %i.bh, 1
end_hunk_6
