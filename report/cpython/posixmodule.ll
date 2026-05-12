inline.NumInlined: 798
inline.NumDeleted: 249
begin_hunk_0_@os_splice:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [6 x ptr], align 16               ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@os_splice:bb.a
  br i1 %.not65, label %.thread88, label %bb.n

.thread88:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.w
end_hunk_1
begin_hunk_2_@os_splice:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.aq = call i32 @_PyLong_UnsignedInt_Converter(ptr noundef %i.ap, ptr noundef nonnull %i.d) #19
  %.not69 = icmp eq i32 %i.aq, 0
  br i1 %.not69, label %.thread80, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre = load i32, ptr %i.d, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.q, %bb.o
  %4 = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %.148 = phi ptr [ %.047, %._crit_edge ], [ %.047, %bb.q ], [ %i.aj, %bb.o ] ; 2 uses
  %.1 = phi ptr [ %.046, %._crit_edge ], [ %i.am, %bb.q ], [ @_Py_NoneStruct, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not.i71 = icmp eq ptr %.148, @_Py_NoneStruct
end_hunk_2
begin_hunk_3_@os_splice:bb.a

bb.w:                                             ; preds = %.thread88, %bb.v, %bb.u
  %.016.i92 = phi ptr [ %.016.i, %bb.u ], [ %.016.i, %bb.v ], [ null, %.thread88 ]
  %i.av = phi i32 [ %4, %bb.u ], [ %4, %bb.v ], [ 0, %.thread88 ]
  %.017.i = phi ptr [ null, %bb.u ], [ %i.b, %bb.v ], [ null, %.thread88 ]
  br label %bb.x

end_hunk_3
begin_hunk_4_@os_pidfd_open:bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.r = call i32 @_PyLong_UnsignedInt_Converter(ptr noundef %i.q, ptr noundef nonnull %i.b) #19
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %os_pidfd_open_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr %i.b, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %4 = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.f ]
  %i.s = call i64 (i64, ...) @syscall(i64 noundef 434, i32 noundef %i.m, i32 noundef %4) #19 ; 2 uses
  %i.t = and i64 %i.s, 2147483648
  %.not.i = icmp eq i64 %i.t, 0
end_hunk_4
