begin_hunk_0
inline.NumInlined: 798
inline.NumDeleted: 249
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %i.c = tail call ptr @PyOS_setsig(i32 noundef 17, ptr noundef null) #20 ; 2 uses
  %i.d = tail call i32 @grantpt(i32 noundef range(i32 0, -2147483648) %i.a) #20
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %2

2:                                                ; preds = %bb.b
  %3 = tail call ptr @PyOS_setsig(i32 noundef 17, ptr noundef %i.c) #20 ; 0 uses
  br label %os_grantpt_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #22    ; 2 uses
end_hunk_1
begin_hunk_2
  %i.j = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.i) #20
  br label %os_grantpt_impl.exit

os_grantpt_impl.exit:                             ; preds = %bb.c, %2, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ], [ @_Py_NoneStruct, %2 ]
  ret ptr %.0
}

end_hunk_2
begin_hunk_3
define internal ptr @os_preadv(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = add i64 %2, -3
  %or.cond = icmp ult i64 %i.c, 2
  br i1 %or.cond, label %bb.c, label %bb.b
end_hunk_3
begin_hunk_4
bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.351) #20
  br label %.lr.ph.i25.i

bb.k:                                             ; preds = %bb.i
  %i.w = tail call i64 @PySequence_Size(ptr noundef %i.j) #20 ; 4 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i25.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = call fastcc i32 @iov_setup(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.j, i64 noundef %i.w, i32 noundef 1)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i25.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = trunc i64 %i.w to i32                   ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.preheader.i
  %i.ac = tail call ptr @PyEval_SaveThread() #20
  %i.ad = tail call i64 @preadv64v2(i32 noundef %i.f, ptr noundef %i.aa, i32 noundef %i.ab, i64 noundef %i.m, i32 noundef %.017) #20 ; 3 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.ac) #20
  %3 = icmp sgt i64 %i.ad, -1
  %.pre.i = tail call ptr @__errno_location() #22 ; 3 uses
  br i1 %3, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr %.pre.i, align 4, !tbaa !7
  %.not1.i = icmp eq i32 %i.ae, 4
  br i1 %.not1.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.af = tail call i32 @PyErr_CheckSignals() #20
  %.not20.i = icmp eq i32 %i.af, 0
  br i1 %.not20.i, label %bb.m, label %.critedge.i, !llvm.loop !187

.critedge.i:                                      ; preds = %bb.o, %bb.n, %bb.m
  %.117.not.i = phi i1 [ true, %bb.m ], [ false, %bb.n ], [ true, %bb.o ]
  %4 = load i32, ptr %.pre.i, align 4, !tbaa !7
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !188 ; 2 uses
  tail call void @PyMem_Free(ptr noundef %i.aa) #20
  %i.ah = icmp sgt i32 %i.ab, 0
end_hunk_4
begin_hunk_5

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.critedge.i
  tail call void @PyMem_Free(ptr noundef %i.ag) #20
  br i1 %.117.not.i, label %os_preadv_impl.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit.i
  store i32 %4, ptr %.pre.i, align 4, !tbaa !7
  %i.aj = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.ak = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.aj) #20 ; 0 uses
  br label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.j, %bb.k, %bb.l, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.q

os_preadv_impl.exit:                              ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %5 = icmp slt i64 %i.ad, 0
  br i1 %5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i25.i, %os_preadv_impl.exit
  %i.al = tail call ptr @PyErr_Occurred() #20
  %.not22 = icmp eq ptr %i.al, null
  br i1 %.not22, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %os_preadv_impl.exit
  %.1.i25 = phi i64 [ -1, %bb.q ], [ %i.ad, %os_preadv_impl.exit ]
  %i.am = tail call ptr @PyLong_FromSsize_t(i64 noundef %.1.i25) #20
  br label %bb.s
end_hunk_5
begin_hunk_6
  br label %Py_DECREF.exit35.thread

Py_DECREF.exit35.thread:                          ; preds = %Py_DECREF.exit31, %bb.s, %bb.t, %bb.a
  %.321 = phi i64 [ %1, %bb.a ], [ %i.s, %bb.t ], [ %i.s, %Py_DECREF.exit31 ], [ %i.s, %bb.s ]
  %i.z = icmp sgt i64 %.321, 1
  br i1 %i.z, label %bb.u, label %.critedge

end_hunk_6
begin_hunk_7
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.aa, i64 noundef 1, ptr noundef nonnull @.str.312, i32 noundef %i.ab, ptr noundef %0) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %Py_DECREF.exit37, %bb.f, %bb.e, %bb.m, %bb.g, %bb.c, %Py_DECREF.exit35.thread, %bb.u
  %.3 = phi i32 [ %i.ac, %bb.u ], [ 0, %Py_DECREF.exit35.thread ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.m ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %Py_DECREF.exit37 ], [ 0, %bb.l ]
  ret i32 %.3
}

end_hunk_7
begin_hunk_8
define internal fastcc range(i64 -1, -9223372036854775808) i64 @os_readv_impl(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = tail call i32 @PySequence_Check(ptr noundef %1) #20
end_hunk_8
begin_hunk_9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @PySequence_Size(ptr noundef %1) #20 ; 4 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.d

end_hunk_9
begin_hunk_10
  br i1 %i.h, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = trunc i64 %i.e to i32                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.g
  %i.k = tail call ptr @PyEval_SaveThread() #20
  %i.l = tail call i64 @readv(i32 noundef %0, ptr noundef %i.i, i32 noundef %i.j) #20 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.k) #20
  %2 = icmp sgt i64 %i.l, -1
  %.pre = tail call ptr @__errno_location() #22   ; 3 uses
  br i1 %2, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %.pre, align 4, !tbaa !7
  %.not1 = icmp eq i32 %i.m, 4
  br i1 %.not1, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @PyErr_CheckSignals() #20
  %.not18 = icmp eq i32 %i.n, 0
  br i1 %.not18, label %bb.e, label %.critedge, !llvm.loop !273

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.e
  %.115.not = phi i1 [ true, %bb.e ], [ true, %bb.g ], [ false, %bb.f ]
  %3 = load i32, ptr %.pre, align 4, !tbaa !7
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  tail call void @PyMem_Free(ptr noundef %i.i) #20
  %i.p = icmp sgt i32 %i.j, 0
end_hunk_10
begin_hunk_11

.loopexit:                                        ; preds = %.lr.ph.i, %.critedge
  tail call void @PyMem_Free(ptr noundef %i.o) #20
  %.mux = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -1)
  br i1 %.115.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  store i32 %3, ptr %.pre, align 4, !tbaa !7
  %i.r = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.s = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.r) #20 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h, %bb.d, %bb.c, %bb.b
  %.1 = phi i64 [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ %.mux, %.loopexit ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %.1
end_hunk_11
begin_hunk_12
bb.a:
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_12
