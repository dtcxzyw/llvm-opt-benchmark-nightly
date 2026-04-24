inline.NumInlined: 454
inline.NumDeleted: 130
begin_hunk_0_@py_buffer_converter:bb.a
  %i.h = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.f) #11
  %i.i = load i64, ptr %i.d, align 8, !tbaa !59
  %i.j = call i32 @PyBuffer_ToContiguous(ptr noundef %i.h, ptr noundef nonnull %3, i64 noundef %i.i, i8 noundef signext 67) #11
  %i.k = icmp slt i32 %i.j, 0                     ; 2 uses
  br i1 %i.k, label %bb.f, label %bytes_from_buffer.exit.i

bb.f:                                             ; preds = %bb.j, %bb.e
end_hunk_0
begin_hunk_1_@py_buffer_converter:bb.a
  %i.l = call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.f) #11 ; 7 uses
  store ptr %i.l, ptr %i.a, align 16, !tbaa !11
  %.not29.i = icmp eq ptr %i.l, null
  br i1 %.not29.i, label %.loopexit10.thread.i.a, label %bb.i

.loopexit10.i:                                    ; preds = %bb.d, %bb.f
  %.0272140.i = phi i1 [ %i.k, %bb.f ], [ true, %bb.d ]
  %5 = phi i64 [ %.02721.lcssa36.wide.i, %bb.f ], [ 0, %bb.d ]
  %i.m = getelementptr [8 x i8], ptr %i.a, i64 %5
  store ptr null, ptr %i.m, align 8, !tbaa !11
  %i.n = call ptr @PyErr_Occurred() #11
  %.not30.i = icmp eq ptr %i.n, null
  br i1 %.not30.i, label %bb.g, label %.preheader8.i

.loopexit10.i.thread.a:                           ; preds = %bb.i
  %i.o = call ptr @PyErr_Occurred() #11
  %.not30.i6.a = icmp eq ptr %i.o, null
  br i1 %.not30.i6.a, label %bb.g, label %.preheader8.i..lr.ph.i_crit_edge

.loopexit10.thread.i.a:                           ; preds = %bytes_from_buffer.exit.i
  %i.p = call ptr @PyErr_Occurred() #11
  %.not3052.i.a = icmp eq ptr %i.p, null
  br i1 %.not3052.i.a, label %bb.g, label %py_buffer_converter_impl.exit

.preheader8.i.a:                                  ; preds = %bytes_from_buffer.exit.1.i
  %6 = call ptr @PyErr_Occurred() #11
  %i.q = icmp eq ptr %6, null
  br i1 %i.q, label %bb.g, label %.lr.ph.i

.preheader8.i:                                    ; preds = %.loopexit10.i
  br i1 %.0272140.i, label %py_buffer_converter_impl.exit, label %.preheader8.i..lr.ph.i_crit_edge

.preheader8.i..lr.ph.i_crit_edge:                 ; preds = %.loopexit10.i.thread.a, %.preheader8.i
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !11
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader8.i..lr.ph.i_crit_edge, %.preheader8.i.a
  %i.r = phi ptr [ %.pre, %.preheader8.i..lr.ph.i_crit_edge ], [ %i.l, %.preheader8.i.a ] ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !10   ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %.lr.ph.split.i, label %py_buffer_converter_impl.exit

bb.g:                                             ; preds = %.loopexit10.i.thread.a, %.loopexit10.thread.i.a, %.preheader8.i.a, %.loopexit10.i
  call void @__assert_fail(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.91, i32 noundef 691, ptr noundef nonnull @__PRETTY_FUNCTION__.py_buffer_converter_impl) #12
  unreachable

end_hunk_1
begin_hunk_2_@py_buffer_converter:bb.a
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = call ptr @PyBytesWriter_Create(i64 noundef %i.x) #11 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit10.i.thread.a, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.y) #11
end_hunk_2
begin_hunk_3_@py_buffer_converter:bb.a
bytes_from_buffer.exit.1.i:                       ; preds = %bb.j
  %i.ae = call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.y) #11 ; 5 uses
  %.not29.1.i = icmp eq ptr %i.ae, null
  br i1 %.not29.1.i, label %.preheader8.i.a, label %.critedge.i

.critedge.i:                                      ; preds = %bytes_from_buffer.exit.1.i
  %i.af = call ptr @PyTuple_New(i64 noundef 2) #11 ; 6 uses
end_hunk_3
begin_hunk_4_@py_buffer_converter:bb.a
  store ptr %i.ae, ptr %i.as, align 8, !tbaa !11
  br label %py_buffer_converter_impl.exit

py_buffer_converter_impl.exit:                    ; preds = %.loopexit10.thread.i.a, %.preheader8.i, %.lr.ph.i, %.lr.ph.split.i, %bb.h, %Py_DECREF.exit.i, %bb.m, %bb.n, %PyTuple_SET_ITEM.exit.1.i
  %.2.i = phi ptr [ null, %.lr.ph.i ], [ null, %Py_DECREF.exit.i ], [ %i.af, %PyTuple_SET_ITEM.exit.1.i ], [ null, %.preheader8.i ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.h ], [ null, %.lr.ph.split.i ], [ null, %.loopexit10.thread.i.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.s

end_hunk_4
