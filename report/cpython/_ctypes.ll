inline.NumInlined: 552
inline.NumDeleted: 93
begin_hunk_0_@KeepRef:bb.a
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !53
  %.not15.i.i = icmp eq ptr %i.ae, null
  %.pre.i.i = ptrtoint ptr %i.a to i64            ; 2 uses
  br i1 %.not15.i.i, label %unique_key.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %.neg.i.i = add i64 %.pre.i.i, 255
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.i
  %i.af = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.ar, %bb.r ]
  %.01117.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.ap, %bb.r ] ; 3 uses
  %.01216.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.aq, %bb.r ]
  %i.ag = ptrtoint ptr %.01117.i.i to i64
  %i.ah = sub i64 %.neg.i.i, %i.ag
  %i.ai = icmp ult i64 %i.ah, 16
  br i1 %i.ai, label %unique_key.exit.thread.i, label %bb.r

unique_key.exit.thread.i:                         ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ctypes_CType_Type___sizeof__:bb.a

bb.g:                                             ; preds = %PyStgInfo_FromType.exit.i
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #20
  %i.v = add i64 %i.l, 1
  %i.w = add i64 %i.v, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %PyStgInfo_FromType.exit.i
end_hunk_1
begin_hunk_2_@_ctypes_CType_Type___sizeof__:bb.a
  %i.z = getelementptr i8, ptr %i.q, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = shl i64 %i.aa, 3
  %i.ac = add i64 %.011.i, 8
  %i.ad = add i64 %i.ac, %i.ab
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_2
begin_hunk_3_@_ctypes_alloc_format_string:bb.a

.thread:                                          ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %i.g = add i64 %i.b, 1
  %i.h = add i64 %i.g, %i.f
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef %i.h) #19 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e
end_hunk_3
begin_hunk_4_@PyCPointerType_SetProto:bb.a
.loopexit.i:                                      ; preds = %bb.r, %bb.p
  %i.av = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select) #20
  %i.aw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ak) #20
  %i.ax = add i64 %i.av, 1
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = tail call ptr @PyMem_Malloc(i64 noundef %i.ay) #19 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.s, label %bb.t
end_hunk_4
