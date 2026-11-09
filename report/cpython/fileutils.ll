Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/fileutils?download=true
inline.NumInlined: 47
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@decode_current_locale:bb.a
_Py_mbrtowc.exit:                                 ; preds = %.lr.ph.split
  %i.af = icmp eq i64 %i.aa, 0
  br i1 %i.af, label %.thread91, label %_Py_mbrtowc.exit.thread

_Py_mbrtowc.exit.thread:                          ; preds = %bb.n, %_Py_mbrtowc.exit
  %i.ag = getelementptr i8, ptr %.053106, i64 1
  %i.ah = load i8, ptr %.053106, align 1, !tbaa !199
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ai, 56320
  store i32 %i.aj, ptr %.052107, align 4, !tbaa !10
  %i.ak = add i64 %.055105, -1
  store i64 0, ptr %5, align 8
  br label %bb.p, !llvm.loop !215

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr i8, ptr %.053106, i64 %i.aa
  %i.am = sub i64 %.055105, %i.aa
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_Py_mbrtowc.exit.thread
  %.156 = phi i64 [ %i.am, %bb.o ], [ %i.ak, %_Py_mbrtowc.exit.thread ] ; 2 uses
  %.154 = phi ptr [ %i.al, %bb.o ], [ %i.ag, %_Py_mbrtowc.exit.thread ]
  %.1 = getelementptr i8, ptr %.052107, i64 4     ; 2 uses
  %.not71 = icmp eq i64 %.156, 0
  br i1 %.not71, label %.thread91, label %.lr.ph.split

.thread91:                                        ; preds = %bb.p, %_Py_mbrtowc.exit, %bb.m, %_Py_mbrtowc.exit.us, %bb.k
  %.052.lcssa = phi ptr [ %i.r, %bb.k ], [ %.1.us, %bb.m ], [ %.052107.us, %_Py_mbrtowc.exit.us ], [ %.1, %bb.p ], [ %.052107, %_Py_mbrtowc.exit ]
  %.not75 = icmp eq ptr %2, null
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread91
  %i.an = ptrtoint ptr %.052.lcssa to i64
  %i.ao = ptrtoint ptr %i.r to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  store i64 %i.aq, ptr %2, align 8, !tbaa !202
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread91
  store ptr %i.r, ptr %1, align 8, !tbaa !204
  br label %get_surrogateescape.exit

.split.us:                                        ; preds = %bb.l, %_Py_mbrtowc.exit.us
  call void @PyMem_RawFree(ptr noundef nonnull %i.r) #17
  %.not73 = icmp eq ptr %2, null
  br i1 %.not73, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.split.us
  %i.ar = ptrtoint ptr %.053106.us to i64
  %i.as = ptrtoint ptr %0 to i64
  %i.at = sub i64 %i.ar, %i.as
  store i64 %i.at, ptr %2, align 8, !tbaa !202
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.us
  %.not74 = icmp eq ptr %3, null
  br i1 %.not74, label %get_surrogateescape.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr @.str.21, ptr %3, align 8, !tbaa !203
  br label %get_surrogateescape.exit

get_surrogateescape.exit:                         ; preds = %bb.a, %bb.t, %bb.u, %bb.j, %bb.i, %bb.g, %bb.h, %bb.d, %bb.c, %bb.r
  %.057 = phi i32 [ -1, %bb.c ], [ -2, %bb.t ], [ -1, %bb.d ], [ 0, %bb.g ], [ -1, %bb.j ], [ 0, %bb.r ], [ 0, %bb.h ], [ -1, %bb.i ], [ -2, %bb.u ], [ -3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.057
}

declare i32 @_Py_DecodeUTF8Ex(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @Py_DecodeLocale(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !217 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call i32 @_Py_DecodeLocaleEx(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = sext i32 %i.b to i64
  store i64 %i.c, ptr %1, align 8, !tbaa !202
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !204
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.d, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Py_EncodeLocale(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !218 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 2) ; 2 uses
  %i.c = icmp ne i32 %i.b, -2
  %i.d = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %encode_locale.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8, !tbaa !202
  br label %encode_locale.exit

encode_locale.exit:                               ; preds = %bb.a, %bb.b
  %.not.i = icmp eq i32 %i.b, 0
  %i.e = load ptr, ptr %i.a, align 8
  %.0.i = select i1 %.not.i, ptr %i.e, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_EncodeLocaleRaw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !219 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 2) ; 2 uses
  %i.c = icmp ne i32 %i.b, -2
  %i.d = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %encode_locale.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8, !tbaa !202
  br label %encode_locale.exit

encode_locale.exit:                               ; preds = %bb.a, %bb.b
  %.not.i = icmp eq i32 %i.b, 0
  %i.e = load ptr, ptr %i.a, align 8
  %.0.i = select i1 %.not.i, ptr %i.e, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_Py_EncodeLocaleEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !guid !220 {
bb.a:
  %i.a = tail call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %4, i32 noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !guid !222 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @encode_current_locale(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %6)
  br label %encode_ascii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10644), align 4, !tbaa !198
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @_Py_EncodeUTF8Ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %6) #17
  br label %encode_ascii.exit

bb.e:                                             ; preds = %bb.c
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10168), align 8, !tbaa !200 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call fastcc i32 @check_force_ascii() ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10168), align 8, !tbaa !200
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = phi i32 [ %i.g, %bb.f ], [ %i.e, %bb.e ]
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %6, label %encode_ascii.exit [
    i32 1, label %.sink.split.i.i
    i32 2, label %bb.i
  ]

.sink.split.i.i:                                  ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i, %bb.h
  %i.i = phi i1 [ false, %.sink.split.i.i ], [ true, %bb.h ]
  %i.j = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #18 ; 4 uses
  %.not.i = icmp eq i32 %4, 0                     ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = tail call ptr @PyMem_RawMalloc(i64 noundef %i.k) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.k) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.034.i = phi ptr [ %i.l, %bb.j ], [ %i.m, %bb.k ] ; 7 uses
  %i.n = icmp eq ptr %.034.i, null
  br i1 %i.n, label %encode_ascii.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %.not53.i = icmp eq i64 %i.j, 0
  br i1 %.not53.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  br i1 %i.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.m
  %.049.us.i = phi i64 [ %i.r, %bb.m ], [ 0, %.lr.ph.i ] ; 3 uses
  %.03348.us.i = phi ptr [ %.1.us.i, %bb.m ], [ %.034.i, %.lr.ph.i ] ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %0, i64 %.049.us.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10   ; 2 uses
  %i.q = icmp slt i32 %i.p, 128
  br i1 %i.q, label %bb.m, label %.split.us.i

bb.m:                                             ; preds = %.lr.ph.split.us.i
  %.1.us.i = getelementptr i8, ptr %.03348.us.i, i64 1 ; 2 uses
  %storemerge.us.i = trunc i32 %i.p to i8
  store i8 %storemerge.us.i, ptr %.03348.us.i, align 1, !tbaa !199
  %i.r = add nuw i64 %.049.us.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !221

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.049.i = phi i64 [ %i.x, %bb.t ], [ 0, %.lr.ph.i ] ; 3 uses
  %.03348.i = phi ptr [ %.1.i, %bb.t ], [ %.034.i, %.lr.ph.i ] ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %0, i64 %.049.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10   ; 3 uses
  %i.u = icmp slt i32 %i.t, 128
  %i.v = and i32 %i.t, 2147483520
  %i.w = icmp eq i32 %i.v, 56448
  %or.cond.i = or i1 %i.u, %i.w
  br i1 %or.cond.i, label %bb.t, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %.lr.ph.split.i
  %.us-phi.i = phi i64 [ %.049.i, %.lr.ph.split.i ], [ %.049.us.i, %.lr.ph.split.us.i ]
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split.us.i
  tail call void @PyMem_RawFree(ptr noundef nonnull %.034.i) #17
  br label %bb.p

bb.o:                                             ; preds = %.split.us.i
  tail call void @PyMem_Free(ptr noundef nonnull %.034.i) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not40.i = icmp eq ptr %2, null
  br i1 %.not40.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.us-phi.i, ptr %2, align 8, !tbaa !202
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not41.i = icmp eq ptr %3, null
  br i1 %.not41.i, label %encode_ascii.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr @.str.22, ptr %3, align 8, !tbaa !203
  br label %encode_ascii.exit

bb.t:                                             ; preds = %.lr.ph.split.i
  %.1.i = getelementptr i8, ptr %.03348.i, i64 1  ; 2 uses
  %storemerge.i = trunc i32 %i.t to i8
  store i8 %storemerge.i, ptr %.03348.i, align 1, !tbaa !199
  %i.x = add nuw i64 %.049.i, 1                   ; 2 uses
  %exitcond58.not.i = icmp eq i64 %i.x, %i.j
  br i1 %exitcond58.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !221

._crit_edge.i:                                    ; preds = %bb.m, %bb.t, %.preheader.i
  %.033.lcssa.i = phi ptr [ %.034.i, %.preheader.i ], [ %.1.i, %bb.t ], [ %.1.us.i, %bb.m ]
  store i8 0, ptr %.033.lcssa.i, align 1, !tbaa !199
  store ptr %.034.i, ptr %1, align 8, !tbaa !203
  br label %encode_ascii.exit

bb.u:                                             ; preds = %bb.g
  %i.y = tail call fastcc i32 @encode_current_locale(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %6)
  br label %encode_ascii.exit

encode_ascii.exit:                                ; preds = %._crit_edge.i, %bb.s, %bb.r, %bb.l, %bb.h, %bb.d, %bb.u, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.d, %bb.d ], [ %i.y, %bb.u ], [ 0, %._crit_edge.i ], [ -2, %bb.r ], [ -1, %bb.l ], [ -2, %bb.s ], [ -3, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_GetLocaleEncoding() local_unnamed_addr #0 !guid !223 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @nl_langinfo(i32 noundef 14) #17 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !199
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @_PyMem_RawWcsdup(ptr noundef nonnull @.str) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = call fastcc i32 @decode_current_locale(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 2)
  %i.g = icmp slt i32 %i.f, 0
  %i.h = load ptr, ptr %i.a, align 8
  %.0 = select i1 %i.g, ptr null, ptr %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.e, %bb.c ], [ %.0, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare ptr @nl_langinfo(i32 noundef) local_unnamed_addr #3

declare ptr @_PyMem_RawWcsdup(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

declare ptr @PyUnicode_FromWideChar(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @_Py_fstat_noraise(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 !guid !224 {
bb.a:
  %i.a = tail call i32 @fstat64(i32 noundef %0, ptr noundef %1) #17
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_fstat(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !225 {
bb.a:
  %i.a = tail call ptr @PyEval_SaveThread() #17
  %i.b = tail call noundef i32 @fstat64(i32 noundef %0, ptr noundef %1) #17
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !205
  %i.d = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.c) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_Py_wstat(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !226 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i.i, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.f, align 4, !tbaa !10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = call i32 @stat64(ptr noundef nonnull %i.c, ptr noundef %1) #17
  call void @PyMem_RawFree(ptr noundef nonnull %i.c) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ]
end_hunk_0
begin_hunk_1_@_Py_wrealpath:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.h, align 4, !tbaa !10
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = call ptr @realpath(ptr noundef nonnull %i.e, ptr noundef null) #17 ; 4 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.e) #17
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.k = call i32 @_Py_DecodeLocaleEx(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 0, i32 noundef 2)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %Py_DecodeLocale.exit, label %Py_DecodeLocale.exit.thread

Py_DecodeLocale.exit.thread:                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @free(ptr noundef nonnull %i.i) #17
  br label %bb.e

Py_DecodeLocale.exit:                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @free(ptr noundef nonnull %i.i) #17
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %Py_DecodeLocale.exit.thread, %Py_DecodeLocale.exit
  %i.n = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.n, align 4, !tbaa !10
  br label %bb.i

bb.f:                                             ; preds = %Py_DecodeLocale.exit
  %i.o = load i64, ptr %i.c, align 8, !tbaa !202
  %.not = icmp ugt i64 %2, %i.o
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @PyMem_RawFree(ptr noundef nonnull %i.l) #17
  %i.p = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.p, align 4, !tbaa !10
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = call ptr @wcsncpy(ptr noundef %1, ptr noundef nonnull %i.l, i64 noundef %2) #17 ; 0 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.l) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %1, %bb.h ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @_Py_isabs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 !guid !248 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 47
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_Py_abspath(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 !guid !249 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca [4097 x i32], align 16            ; 5 uses
  %i.h = alloca [4097 x i32], align 16            ; 6 uses
  %i.i = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #18
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16384
  store i32 0, ptr %i.l, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.m = call ptr @getcwd(ptr noundef nonnull %i.e, i64 noundef 4096) #17
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Py_wgetcwd.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.o = call i32 @_Py_DecodeLocaleEx(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0, i32 noundef 2)
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %Py_DecodeLocale.exit.i, label %Py_DecodeLocale.exit.thread.i

Py_DecodeLocale.exit.thread.i:                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %_Py_wgetcwd.exit.thread

Py_DecodeLocale.exit.i:                           ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Py_wgetcwd.exit.thread, label %bb.e

bb.e:                                             ; preds = %Py_DecodeLocale.exit.i
  %i.r = load i64, ptr %i.f, align 8, !tbaa !202
  %.not.i = icmp ult i64 %i.r, 4096
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @PyMem_RawFree(ptr noundef nonnull %i.p) #17
  br label %_Py_wgetcwd.exit.thread

_Py_wgetcwd.exit.thread:                          ; preds = %bb.c, %bb.f, %Py_DecodeLocale.exit.i, %Py_DecodeLocale.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = call ptr @wcsncpy(ptr noundef nonnull %i.g, ptr noundef nonnull %i.p, i64 noundef 4096) #17 ; 0 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.p) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.t = call ptr @_PyMem_RawWcsdup(ptr noundef nonnull %i.g) #17
  store ptr %i.t, ptr %1, align 8, !tbaa !204
  br label %bb.h

bb.h:                                             ; preds = %_Py_wgetcwd.exit.thread, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -1, %_Py_wgetcwd.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.s

bb.i:                                             ; preds = %bb.b
  %.not43 = icmp eq i32 %i.i, 47
  br i1 %.not43, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @_PyMem_RawWcsdup(ptr noundef nonnull %0) #17
  store ptr %i.u, ptr %1, align 8, !tbaa !204
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16384
  store i32 0, ptr %i.v, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.w = call ptr @getcwd(ptr noundef nonnull %i.b, i64 noundef 4096) #17
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_Py_wgetcwd.exit37.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.y = call i32 @_Py_DecodeLocaleEx(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 0, i32 noundef 2)
  %.not.i.i32 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i32, label %Py_DecodeLocale.exit.i35, label %Py_DecodeLocale.exit.thread.i33

Py_DecodeLocale.exit.thread.i33:                  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_Py_wgetcwd.exit37.thread

Py_DecodeLocale.exit.i35:                         ; preds = %bb.l
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_Py_wgetcwd.exit37.thread, label %bb.m

bb.m:                                             ; preds = %Py_DecodeLocale.exit.i35
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !202
  %.not.i36 = icmp ult i64 %i.ab, 4096
  br i1 %.not.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @PyMem_RawFree(ptr noundef nonnull %i.z) #17
  br label %_Py_wgetcwd.exit37.thread

_Py_wgetcwd.exit37.thread:                        ; preds = %bb.k, %bb.n, %Py_DecodeLocale.exit.i35, %Py_DecodeLocale.exit.thread.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ac = call ptr @wcsncpy(ptr noundef nonnull %i.h, ptr noundef nonnull %i.z, i64 noundef 4096) #17 ; 0 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.z) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ad = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.h) #18 ; 3 uses
  %i.ae = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #18 ; 3 uses
  %i.af = add i64 %i.ad, 2
  %i.ag = add i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 2305843009213693952
  br i1 %i.ah, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.o
  store ptr null, ptr %1, align 8, !tbaa !204
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = call ptr @PyMem_RawMalloc(i64 noundef %i.ai) #17 ; 4 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !204
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = shl i64 %i.ad, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 16 %i.h, i64 %i.al, i1 false)
  %i.am = getelementptr [4 x i8], ptr %i.aj, i64 %i.ad ; 2 uses
  store i32 47, ptr %i.am, align 4, !tbaa !10
  %i.an = getelementptr i8, ptr %i.am, i64 4      ; 2 uses
  %i.ao = shl i64 %i.ae, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.an, ptr nonnull align 4 %0, i64 %i.ao, i1 false)
  %i.ap = getelementptr [4 x i8], ptr %i.an, i64 %i.ae
  store i32 0, ptr %i.ap, align 4, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %.thread, %_Py_wgetcwd.exit37.thread, %bb.q, %bb.p
  %.2 = phi i32 [ -1, %_Py_wgetcwd.exit37.thread ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %bb.h
  %.3 = phi i32 [ %.0, %bb.h ], [ 0, %bb.j ], [ %.2, %bb.r ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_Py_wgetcwd(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !250 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = call ptr @getcwd(ptr noundef nonnull %i.b, i64 noundef 4096) #17
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = call i32 @_Py_DecodeLocaleEx(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 0, i32 noundef 2)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %Py_DecodeLocale.exit, label %Py_DecodeLocale.exit.thread

Py_DecodeLocale.exit.thread:                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.f

Py_DecodeLocale.exit:                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %Py_DecodeLocale.exit
  %i.i = load i64, ptr %i.c, align 8, !tbaa !202
  %.not = icmp ugt i64 %1, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyMem_RawFree(ptr noundef nonnull %i.g) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = call ptr @wcsncpy(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef %1) #17 ; 0 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.g) #17
  br label %bb.f

bb.f:                                             ; preds = %Py_DecodeLocale.exit.thread, %Py_DecodeLocale.exit, %bb.a, %bb.e, %bb.d
  %.0 = phi ptr [ %0, %bb.e ], [ null, %bb.a ], [ null, %bb.d ], [ null, %Py_DecodeLocale.exit ], [ null, %Py_DecodeLocale.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PyMem_RawMalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_skiproot(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #13 !guid !251 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !202
  %i.a = load i32, ptr %0, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 47
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 47
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 47
  %spec.select = select i1 %i.h, i64 1, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.c ]
  store i64 %.sink, ptr %3, align 8, !tbaa !202
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_join_relfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !252 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #18
  %i.b = add i64 %i.a, 1
  %i.c = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #18
  %i.d = add i64 %i.b, %i.c                       ; 4 uses
  %i.e = shl i64 %i.d, 2
  %i.f = add i64 %i.e, 4
  %i.g = tail call ptr @PyMem_RawMalloc(i64 noundef %i.f) #17 ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #18 ; 8 uses
  %i.j = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #18
  %i.k = icmp ult i64 %i.d, 4097
  %.not.i = icmp ult i64 %i.i, %i.d
  %or.cond.i = select i1 %i.k, i1 %.not.i, i1 false
  %i.l = sub nuw nsw i64 %i.d, %i.i
  %.not31.i = icmp ult i64 %i.j, %i.l
  %or.cond35.i = select i1 %or.cond.i, i1 %.not31.i, i1 false
  br i1 %or.cond35.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %join_relfile.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not32.i = icmp eq ptr %0, %i.g
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @wcscpy(ptr noundef nonnull %i.g, ptr noundef nonnull %0) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not33.i = icmp eq i64 %i.i, 1
  br i1 %.not33.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !10
  %.not34.i = icmp eq i32 %i.q, 47
  br i1 %.not34.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr [4 x i8], ptr %i.g, i64 %i.i
  store i32 47, ptr %i.r, align 4, !tbaa !10
  %i.s = add nuw nsw i64 %i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i = phi i64 [ %i.s, %bb.h ], [ %i.i, %bb.g ], [ 1, %bb.f ]
  %i.t = getelementptr [4 x i8], ptr %i.g, i64 %.0.i
  br label %join_relfile.exit

join_relfile.exit:                                ; preds = %bb.c, %bb.i
  %.sink.i = phi ptr [ %i.t, %bb.i ], [ %i.g, %bb.c ]
  %i.u = tail call ptr @wcscpy(ptr noundef %.sink.i, ptr noundef nonnull %1) #17 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.g) #17
  br label %bb.k

bb.k:                                             ; preds = %join_relfile.exit, %bb.a, %bb.j
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ %i.g, %join_relfile.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_Py_add_relfile(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !253 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #18 ; 7 uses
  %i.b = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #18
  %i.c = add i64 %2, -1                           ; 3 uses
  %i.d = icmp ult i64 %i.c, 4097
  %.not.i = icmp ult i64 %i.a, %i.c
  %or.cond.i = select i1 %i.d, i1 %.not.i, i1 false
  %i.e = sub nuw nsw i64 %i.c, %i.a
  %.not31.i = icmp ult i64 %i.b, %i.e
  %or.cond35.i = select i1 %or.cond.i, i1 %.not31.i, i1 false
  br i1 %or.cond35.i, label %bb.b, label %join_relfile.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.c [
    i64 0, label %.sink.split.i
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %.not34.i = icmp eq i32 %i.h, 47
  br i1 %.not34.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 47, ptr %i.f, align 4, !tbaa !10
  %i.i = add nuw nsw i64 %i.a, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.d ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %i.j = getelementptr [4 x i8], ptr %0, i64 %.0.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %bb.e
  %.sink.i = phi ptr [ %i.j, %bb.e ], [ %0, %bb.b ]
  %i.k = tail call ptr @wcscpy(ptr noundef %.sink.i, ptr noundef nonnull %1) #17 ; 0 uses
  br label %join_relfile.exit

join_relfile.exit:                                ; preds = %bb.a, %.sink.split.i
  %.026.i = phi i32 [ -1, %bb.a ], [ 0, %.sink.split.i ]
  ret i32 %.026.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i64 2, 1) i64 @_Py_find_basename(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 !guid !255 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #18 ; 2 uses
  %.not12 = icmp eq i64 %i.a, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0713 = phi i64 [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr [4 x i8], ptr %0, i64 %.0713
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = icmp eq i32 %i.c, 47
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i64 %.0713, -1                       ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !254

bb.c:                                             ; preds = %.lr.ph
  %i.f = add i64 %.0713, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.g = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_Py_normpath_and_size(ptr noundef returned %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #15 !guid !261 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  switch i32 %i.b, label %_Py_skiproot.exit [
    i32 0, label %bb.ae
    i32 47, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 47
  br i1 %i.e, label %.sink.split, label %bb.f

bb.d:                                             ; preds = %bb.a
  %.old1 = icmp eq i64 %1, 0
  br i1 %.old1, label %bb.ae, label %.split

.split:                                           ; preds = %bb.d
  %i.f = getelementptr [4 x i8], ptr %0, i64 %1   ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  %i.h = icmp eq i32 %i.g, 47
  br i1 %i.h, label %bb.e, label %_Py_skiproot.exit

bb.e:                                             ; preds = %.split
  %i.i = getelementptr i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 47
  br i1 %i.k, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.c
  %.ph.ph = phi ptr [ null, %bb.c ], [ %i.f, %bb.e ]
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  %i.n = icmp eq i32 %i.m, 47
  %spec.select.i = select i1 %i.n, i64 1, i64 2
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c, %bb.e
  %.0147.ph = phi i64 [ 1, %bb.c ], [ 1, %bb.e ], [ %spec.select.i, %.sink.split ]
  %.ph = phi ptr [ null, %bb.c ], [ %i.f, %bb.e ], [ %.ph.ph, %.sink.split ]
  %i.o = getelementptr [4 x i8], ptr %0, i64 %.0147.ph ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -4       ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !10
  %.pr = load i32, ptr %i.o, align 4, !tbaa !10
  br label %_Py_skiproot.exit

_Py_skiproot.exit:                                ; preds = %bb.b, %.split, %bb.f
  %i.r = phi i32 [ %i.b, %bb.b ], [ %i.g, %.split ], [ %.pr, %bb.f ]
  %i.s = phi ptr [ null, %bb.b ], [ %i.f, %.split ], [ %.ph, %bb.f ] ; 6 uses
  %.099 = phi ptr [ %0, %bb.b ], [ %0, %.split ], [ %i.o, %bb.f ] ; 5 uses
  %.098 = phi ptr [ %0, %bb.b ], [ %0, %.split ], [ %i.p, %bb.f ] ; 10 uses
  %.095 = phi i32 [ 0, %bb.b ], [ 0, %.split ], [ %i.q, %bb.f ] ; 3 uses
  %i.t = icmp eq i32 %i.r, 46
  br i1 %i.t, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_Py_skiproot.exit
  %i.u = getelementptr i8, ptr %.099, i64 4       ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !10   ; 3 uses
  %i.w = icmp eq i32 %i.v, 47
  br i1 %i.w, label %.preheader168, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.u, %i.s
  br i1 %i.x, label %.preheader168, label %.loopexit

bb.j:                                             ; preds = %bb.h
  %.not126 = icmp eq i32 %i.v, 0
  br i1 %.not126, label %.preheader168, label %.loopexit

.preheader168:                                    ; preds = %bb.j, %bb.i, %bb.g
  br label %bb.k

bb.k:                                             ; preds = %.preheader168, %bb.k
  %.1106 = phi ptr [ %i.aa, %bb.k ], [ %i.u, %.preheader168 ] ; 3 uses
  %i.y = load i32, ptr %.1106, align 4, !tbaa !10
  %i.z = icmp eq i32 %i.y, 47
  %i.aa = getelementptr i8, ptr %.1106, i64 4
  br i1 %i.z, label %bb.k, label %.loopexit, !llvm.loop !256

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.i, %_Py_skiproot.exit
  %.2107 = phi ptr [ %.099, %_Py_skiproot.exit ], [ %.099, %bb.i ], [ %.099, %bb.j ], [ %.1106, %bb.k ]
  %.196 = phi i32 [ %.095, %_Py_skiproot.exit ], [ %.095, %bb.i ], [ %.095, %bb.j ], [ %i.v, %bb.k ]
  %.not127 = icmp eq ptr %i.s, null               ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge142, %.loopexit
  %.3108 = phi ptr [ %.2107, %.loopexit ], [ %i.bj, %.critedge142 ] ; 10 uses
  %.1100 = phi ptr [ %.099, %.loopexit ], [ %.4103, %.critedge142 ] ; 16 uses
  %.297 = phi i32 [ %.196, %.loopexit ], [ %.5, %.critedge142 ]
  br i1 %.not127, label %bb.m, label %.split151

.split151:                                        ; preds = %bb.l
  %i.ab = icmp eq ptr %.3108, %i.s
  br i1 %i.ab, label %bb.ab, label %thread-pre-split

bb.m:                                             ; preds = %bb.l
  %i.ac = load i32, ptr %.3108, align 4, !tbaa !10 ; 2 uses
  %.not128 = icmp eq i32 %i.ac, 0
  br i1 %.not128, label %bb.ab, label %bb.n

thread-pre-split:                                 ; preds = %.split151
  %.pr152 = load i32, ptr %.3108, align 4, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.m
  %i.ad = phi i32 [ %.pr152, %thread-pre-split ], [ %i.ac, %bb.m ] ; 6 uses
  %i.ae = icmp eq i32 %.297, 47
  br i1 %i.ae, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  switch i32 %i.ad, label %bb.z [
    i32 46, label %bb.p
    i32 47, label %.critedge142
  ]

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr i8, ptr %.3108, i64 4     ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10 ; 4 uses
  %i.ah = icmp eq i32 %i.ag, 47
  %i.ai = icmp eq ptr %i.af, %i.s
  %.not131 = icmp eq i32 %i.ag, 0
  %.in132 = select i1 %.not127, i1 %.not131, i1 %i.ai
  %i.aj = or i1 %i.ah, %.in132
  br i1 %i.aj, label %.critedge142, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr i8, ptr %.3108, i64 8     ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10 ; 2 uses
  %i.am = icmp eq i32 %i.al, 47
  br i1 %i.am, label %.critedge141, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = icmp eq ptr %i.ak, %i.s
  %.not133 = icmp eq i32 %i.al, 0
  %.in134 = select i1 %.not127, i1 %.not133, i1 %i.an
  %i.ao = icmp eq i32 %i.ag, 46
  %or.cond = and i1 %i.ao, %.in134
  br i1 %or.cond, label %.preheader153.preheader, label %.critedge139

.critedge141:                                     ; preds = %bb.q
  %.old = icmp eq i32 %i.ag, 46
  br i1 %.old, label %.preheader153.preheader, label %.critedge139

.preheader153.preheader:                          ; preds = %.critedge141, %bb.r
  br label %.preheader153

.preheader153:                                    ; preds = %.preheader153.preheader, %bb.s
  %.0 = phi ptr [ %i.ap, %bb.s ], [ %.1100, %.preheader153.preheader ] ; 2 uses
  %.not135 = icmp eq ptr %.0, %.098
  br i1 %.not135, label %.critedge.preheader, label %bb.s

bb.s:                                             ; preds = %.preheader153
  %i.ap = getelementptr i8, ptr %.0, i64 -4       ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10
  %i.ar = icmp eq i32 %i.aq, 47
  br i1 %i.ar, label %.preheader153, label %.critedge.preheader, !llvm.loop !257

.critedge.preheader:                              ; preds = %.preheader153, %bb.s
  %.2.ph = phi ptr [ %.098, %.preheader153 ], [ %i.ap, %bb.s ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.t
  %.2 = phi ptr [ %i.as, %bb.t ], [ %.2.ph, %.critedge.preheader ] ; 6 uses
  %.not136 = icmp eq ptr %.2, %.098
  br i1 %.not136, label %.critedge6, label %bb.t

end_hunk_1
begin_hunk_2_@ioctl
; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_Py_GetLocaleconvNumeric(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !266 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !268    ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !199
  %i.e = icmp slt i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !269  ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #18
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.g, align 1, !tbaa !199
  %i.k = icmp sgt i8 %i.j, -1
  %or.cond = and i1 %.not, %i.k
  br i1 %or.cond, label %.thread39, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %i.l = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #17 ; 2 uses
  %.not32 = icmp eq ptr %i.l, null
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.m = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !205
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.5) #17
  br label %bb.p

bb.g:                                             ; preds = %.thread
  %i.n = tail call ptr @_PyMem_Strdup(ptr noundef nonnull %i.l) #17 ; 5 uses
  %.not33 = icmp eq ptr %i.n, null
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @PyErr_NoMemory() #17      ; 0 uses
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.p = tail call ptr @setlocale(i32 noundef 1, ptr noundef null) #17 ; 3 uses
  %.not34 = icmp eq ptr %i.p, null
  br i1 %.not34, label %.thread39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %i.n) #18
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread39, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull %i.p) #17 ; 0 uses
  br label %.thread39

.thread39:                                        ; preds = %bb.e, %bb.j, %bb.i, %bb.k
  %.024 = phi ptr [ %i.n, %bb.k ], [ null, %bb.e ], [ %i.n, %bb.i ], [ %i.n, %bb.j ] ; 2 uses
  %.1 = phi i1 [ false, %bb.k ], [ true, %bb.e ], [ true, %bb.i ], [ true, %bb.j ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !268
  %i.u = tail call ptr @PyUnicode_DecodeLocale(ptr noundef %i.t, ptr noundef null) #17 ; 2 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !205
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread39
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !269
  %i.x = tail call ptr @PyUnicode_DecodeLocale(ptr noundef %i.w, ptr noundef null) #17 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !205
  %i.y = icmp eq ptr %i.x, null
  %spec.select = sext i1 %i.y to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread39
  %.0 = phi i32 [ -1, %.thread39 ], [ %spec.select, %bb.l ]
  br i1 %.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call ptr @setlocale(i32 noundef 0, ptr noundef %.024) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @PyMem_Free(ptr noundef %.024) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h, %bb.f
  %.027 = phi i32 [ %.0, %bb.o ], [ -1, %bb.h ], [ -1, %bb.f ]
  ret i32 %.027
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyMem_Strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PyUnicode_DecodeLocale(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @_Py_closerange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !guid !271 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %0, i32 0) ; 4 uses
  %i.b = tail call i32 @close_range(i32 noundef %i.a, i32 noundef %1, i32 noundef 0) #17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  %i.e = tail call i64 @sysconf(i32 noundef 4) #17
  %.not = icmp sgt i64 %i.e, %i.d
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not1112 = icmp sgt i32 %i.a, %1
  br i1 %.not1112, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @closefrom(i32 noundef %i.a) #17
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.013 = phi i32 [ %i.g, %.lr.ph ], [ %i.a, %.preheader ] ; 2 uses
  %i.f = tail call i32 @close(i32 noundef %.013) #17 ; 0 uses
  %i.g = add i32 %.013, 1                         ; 2 uses
  %.not11 = icmp sgt i32 %i.g, %1
  br i1 %.not11, label %.loopexit, label %.lr.ph, !llvm.loop !270

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @close_range(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @closefrom(i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_Py_GetTicksPerSecond(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 !guid !272 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 2) #17 ; 2 uses
  %i.b = icmp slt i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %0, align 8, !tbaa !202
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_Py_IsValidFD(i32 noundef %0) local_unnamed_addr #0 !guid !273 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1) #17
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @_Py_normalize_encoding(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @mbstowcs(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 1) i32 @encode_current_locale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #0 !guid !275 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 10 uses
  %i.b = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  switch i32 %5, label %get_surrogateescape.exit [
    i32 1, label %.sink.split.i
    i32 2, label %.thread
  ]

.sink.split.i:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !10
  %.not134 = icmp eq i64 %i.b, 0
  %.not56 = icmp eq i32 %4, 0                     ; 5 uses
  br i1 %.not134, label %.split92, label %.lr.ph.us.us

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %.not134164 = icmp eq i64 %i.b, 0
  %.not56165 = icmp eq i32 %4, 0                  ; 4 uses
  br i1 %.not134164, label %.split92, label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.sink.split.i, %bb.j
  %.047.us.us = phi ptr [ %.151.us.us, %bb.j ], [ null, %.sink.split.i ] ; 6 uses
  %.045.us.us = phi i64 [ %i.p, %bb.j ], [ 0, %.sink.split.i ]
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.us.us
  %.180.us.us.us = phi i64 [ %.045.us.us, %.lr.ph.us.us ], [ %.2.us.us.us, %bb.f ] ; 3 uses
  %.04679.us.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.o, %bb.f ] ; 5 uses
  %.14878.us.us.us = phi ptr [ %.047.us.us, %.lr.ph.us.us ], [ %.249.us.us.us, %bb.f ] ; 3 uses
  %i.e = getelementptr [4 x i8], ptr %0, i64 %.04679.us.us.us
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10   ; 2 uses
  %i.g = and i32 %i.f, -128
  %or.cond.us.us.us = icmp eq i32 %i.g, 56448
  br i1 %or.cond.us.us.us, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.a, align 4, !tbaa !10
  %.not57.us.us.us = icmp eq ptr %.14878.us.us.us, null
  br i1 %.not57.us.us.us, label %bb.d, label %.thread.us.us.us

.thread.us.us.us:                                 ; preds = %bb.c
  %i.h = call i64 @wcstombs(ptr noundef nonnull %.14878.us.us.us, ptr noundef nonnull %i.a, i64 noundef %.180.us.us.us) #17 ; 3 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %.split.us, label %.thread69.us.us.us

.thread69.us.us.us:                               ; preds = %.thread.us.us.us
  %i.j = getelementptr i8, ptr %.14878.us.us.us, i64 %i.h
  %i.k = sub i64 %.180.us.us.us, %i.h
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0) #17 ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %i.l, %.180.us.us.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread69.us.us.us
  %.249.us.us.us = phi ptr [ null, %bb.e ], [ %i.j, %.thread69.us.us.us ] ; 2 uses
  %.2.us.us.us = phi i64 [ %i.n, %bb.e ], [ %i.k, %.thread69.us.us.us ] ; 2 uses
  %i.o = add nuw i64 %.04679.us.us.us, 1          ; 2 uses
  %exitcond152.not = icmp eq i64 %i.o, %i.b
  br i1 %exitcond152.not, label %._crit_edge.split.us.us.us, label %bb.b, !llvm.loop !274

._crit_edge.split.us.us.us:                       ; preds = %bb.f
  %.not.us.us = icmp eq ptr %.047.us.us, null
  br i1 %.not.us.us, label %bb.g, label %.split117.us

bb.g:                                             ; preds = %._crit_edge.split.us.us.us
  %i.p = add i64 %.2.us.us.us, 1                  ; 3 uses
  br i1 %.not56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = call ptr @PyMem_RawMalloc(i64 noundef %i.p) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = call ptr @PyMem_Malloc(i64 noundef %i.p) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.151.us.us = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %i.s = icmp eq ptr %.151.us.us, null
  br i1 %i.s, label %get_surrogateescape.exit, label %.lr.ph.us.us

.lr.ph.us:                                        ; preds = %.thread, %bb.v
  %.047.us = phi ptr [ %.151.us, %bb.v ], [ null, %.thread ] ; 5 uses
  %.045.us = phi i64 [ %i.ai, %bb.v ], [ 0, %.thread ]
  br label %bb.k

bb.k:                                             ; preds = %bb.r, %.lr.ph.us
  %.180.us94 = phi i64 [ %.045.us, %.lr.ph.us ], [ %.2.us102, %bb.r ] ; 5 uses
  %.04679.us95 = phi i64 [ 0, %.lr.ph.us ], [ %i.ah, %bb.r ] ; 4 uses
  %.14878.us96 = phi ptr [ %.047.us, %.lr.ph.us ], [ %.249.us101, %bb.r ] ; 6 uses
  %i.t = getelementptr [4 x i8], ptr %0, i64 %.04679.us95
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10   ; 3 uses
  %i.v = and i32 %i.u, -128
  %or.cond.us97 = icmp eq i32 %i.v, 56448
  br i1 %or.cond.us97, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.u, ptr %i.a, align 4, !tbaa !10
  %.not57.us98 = icmp eq ptr %.14878.us96, null
  br i1 %.not57.us98, label %bb.m, label %.thread.us99

.thread.us99:                                     ; preds = %bb.l
  %i.w = call i64 @wcstombs(ptr noundef nonnull %.14878.us96, ptr noundef nonnull %i.a, i64 noundef %.180.us94) #17 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.split.us, label %.thread69.us100

.thread69.us100:                                  ; preds = %.thread.us99
  %i.y = getelementptr i8, ptr %.14878.us96, i64 %i.w
  %i.z = sub i64 %.180.us94, %i.w
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aa = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0) #17 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.split.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = add i64 %i.aa, %.180.us94
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %.not62.us = icmp eq ptr %.14878.us96, null
  br i1 %.not62.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = trunc i32 %i.u to i8
  %i.ae = getelementptr i8, ptr %.14878.us96, i64 1
  store i8 %i.ad, ptr %.14878.us96, align 1, !tbaa !199
  %i.af = add i64 %.180.us94, -1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ag = add i64 %.180.us94, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %.thread69.us100
  %.249.us101 = phi ptr [ %i.ae, %bb.p ], [ null, %bb.q ], [ %i.y, %.thread69.us100 ], [ null, %bb.n ] ; 2 uses
  %.2.us102 = phi i64 [ %i.af, %bb.p ], [ %i.ag, %bb.q ], [ %i.z, %.thread69.us100 ], [ %i.ac, %bb.n ] ; 2 uses
  %i.ah = add nuw i64 %.04679.us95, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.b
  br i1 %exitcond.not, label %._crit_edge.split.us103, label %bb.k, !llvm.loop !274

._crit_edge.split.us103:                          ; preds = %bb.r
  %.not.us = icmp eq ptr %.047.us, null
  br i1 %.not.us, label %bb.s, label %.split117.us

bb.s:                                             ; preds = %._crit_edge.split.us103
  %i.ai = add i64 %.2.us102, 1                    ; 3 uses
  br i1 %.not56165, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = call ptr @PyMem_RawMalloc(i64 noundef %i.ai) #17
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ak = call ptr @PyMem_Malloc(i64 noundef %i.ai) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.151.us = phi ptr [ %i.aj, %bb.t ], [ %i.ak, %bb.u ] ; 2 uses
  %i.al = icmp eq ptr %.151.us, null
  br i1 %i.al, label %get_surrogateescape.exit, label %.lr.ph.us

.split92:                                         ; preds = %.thread, %.sink.split.i
  %.not56168 = phi i1 [ %.not56165, %.thread ], [ %.not56, %.sink.split.i ]
  br i1 %.not56168, label %.split92.split.us, label %.split92.split

.split92.split.us:                                ; preds = %.split92, %bb.w
  %.047.us120 = phi ptr [ %i.an, %bb.w ], [ null, %.split92 ] ; 3 uses
  %.045.us121 = phi i64 [ %i.am, %bb.w ], [ 0, %.split92 ]
  %.not.us122 = icmp eq ptr %.047.us120, null
  br i1 %.not.us122, label %bb.w, label %.split117.us

bb.w:                                             ; preds = %.split92.split.us
  %i.am = add i64 %.045.us121, 1                  ; 2 uses
  %i.an = tail call ptr @PyMem_Malloc(i64 noundef %i.am) #17 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %get_surrogateescape.exit, label %.split92.split.us

.split92.split:                                   ; preds = %.split92, %bb.x
  %.047 = phi ptr [ %i.aq, %bb.x ], [ null, %.split92 ] ; 3 uses
  %.045 = phi i64 [ %i.ap, %bb.x ], [ 0, %.split92 ]
  %.not = icmp eq ptr %.047, null
  br i1 %.not, label %bb.x, label %.split117.us

.split117.us:                                     ; preds = %._crit_edge.split.us103, %._crit_edge.split.us.us.us, %.split92.split, %.split92.split.us
  %.us-phi118 = phi ptr [ %.047, %.split92.split ], [ %.047.us120, %.split92.split.us ], [ %.047.us.us, %._crit_edge.split.us.us.us ], [ %.047.us, %._crit_edge.split.us103 ]
  %.us-phi119 = phi ptr [ %.047, %.split92.split ], [ %.047.us120, %.split92.split.us ], [ %.249.us.us.us, %._crit_edge.split.us.us.us ], [ %.249.us101, %._crit_edge.split.us103 ]
  store i8 0, ptr %.us-phi119, align 1, !tbaa !199
  store ptr %.us-phi118, ptr %1, align 8, !tbaa !203
  br label %get_surrogateescape.exit

bb.x:                                             ; preds = %.split92.split
  %i.ap = add i64 %.045, 1                        ; 2 uses
end_hunk_2
