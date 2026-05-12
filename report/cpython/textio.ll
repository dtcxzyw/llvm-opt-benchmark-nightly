inline.NumInlined: 326
inline.NumDeleted: 79
begin_hunk_0_@_io_TextIOWrapper_read
define internal ptr @_io_TextIOWrapper_read(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 -1, ptr %i.c, align 8, !tbaa !40
end_hunk_0
begin_hunk_1_@_io_TextIOWrapper_read:bb.a
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %i.cz = phi ptr [ %.0.i126139.i, %.outer.split.lr.ph.i ], [ %.0.i132143.i, %.outer.i ] ; 6 uses
  %.070.ph158.i = phi i64 [ %i.cw, %.outer.split.lr.ph.i ], [ %i.eg, %.outer.i ] ; 4 uses
  %.0.ph157.i = phi ptr [ null, %.outer.split.lr.ph.i ], [ %.178.i, %.outer.i ] ; 4 uses
  br label %bb.aw
end_hunk_1
begin_hunk_2_@_io_TextIOWrapper_read:bb.a

.loopexit.thread191.i:                            ; preds = %.outer.i, %.loopexit.i
  %.0.ph156194.i = phi ptr [ %.0.ph157.i, %.loopexit.i ], [ %.178.i, %.outer.i ] ; 7 uses
  %i.ei = phi ptr [ %i.cz, %.loopexit.i ], [ %.0.i132143.i, %.outer.i ] ; 4 uses
  %i.ej = call i32 @PyList_Append(ptr noundef nonnull %.0.ph156194.i, ptr noundef nonnull %i.ei) #10
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %Py_DECREF.exit107.i, label %bb.bk
end_hunk_2
begin_hunk_3_@_io_TextIOWrapper_read:bb.a
  br label %Py_DECREF.exit107.i

Py_DECREF.exit107.i:                              ; preds = %textiowrapper_get_decoded_chars.exit133.i, %bb.bc, %bb.ba, %bb.ax, %Py_DECREF.exit107.sink.split.i, %Py_XDECREF.exit, %.loopexit.thread191.i, %textiowrapper_get_decoded_chars.exit.i, %bb.ak, %Py_DECREF.exit109.i, %bb.v
  %i.eu = phi ptr [ null, %bb.v ], [ null, %Py_DECREF.exit109.i ], [ null, %bb.ak ], [ %.5.ph.i, %Py_DECREF.exit107.sink.split.i ], [ %.0.ph157.i, %bb.ax ], [ %.0.ph156194.i, %Py_XDECREF.exit ], [ %.0.ph156194.i, %.loopexit.thread191.i ], [ null, %textiowrapper_get_decoded_chars.exit.i ], [ null, %bb.ba ], [ %.178.i, %bb.bc ], [ %.178.i, %textiowrapper_get_decoded_chars.exit133.i ]
  %3 = load ptr, ptr %i.b, align 8, !tbaa !17
  call fastcc void @Py_XDECREF(ptr noundef %3)
  call fastcc void @Py_XDECREF(ptr noundef %i.eu)
  br label %_io_TextIOWrapper_read_impl.exit

_io_TextIOWrapper_read_impl.exit:                 ; preds = %bb.f, %bb.h, %_io_TextIOWrapper_closed_get_impl.exit.i, %Py_DECREF.exit113.i, %bb.p, %bb.q, %bb.s, %bb.t, %Py_DECREF.exit111.i, %bb.ah, %bb.ai, %bb.aj, %Py_DECREF.exit105.i, %.loopexit.thread.i, %Py_DECREF.exit107.i
end_hunk_3
begin_hunk_4_@_textiowrapper_set_encoder
define internal fastcc range(i32 -1, 1) i32 @_textiowrapper_set_encoder(ptr noundef captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104776), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.b, align 8, !tbaa !17
  %i.f = icmp eq ptr %i.e, null
end_hunk_4
begin_hunk_5_@_textiowrapper_set_encoder:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.e) #10 ; 2 uses
  %3 = load ptr, ptr %i.b, align 8, !tbaa !17     ; 3 uses
  %i.h = load i32, ptr %3, align 8, !tbaa !19     ; 2 uses
  %.not.i30 = icmp sgt i32 %i.h, -1
  br i1 %.not.i30, label %bb.c, label %Py_DECREF.exit31

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %3, align 8, !tbaa !19
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %Py_DECREF.exit31

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %3) #10
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.b, %bb.c, %bb.d
end_hunk_5
