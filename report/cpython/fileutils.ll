inline.NumInlined: 47
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Py_GetLocaleconvNumeric:bb.a
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
define dso_local void @_Py_closerange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
  br i1 %.not11, label %.loopexit, label %.lr.ph, !llvm.loop !213

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
define hidden range(i32 -1, 1) i32 @_Py_GetTicksPerSecond(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 2) #17 ; 2 uses
  %i.b = icmp slt i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %0, align 8, !tbaa !192
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_Py_IsValidFD(i32 noundef %0) local_unnamed_addr #0 {
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
define internal fastcc range(i32 -3, 1) i32 @encode_current_locale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 10 uses
  %i.b = tail call i64 @wcslen(ptr noundef %0) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  switch i32 %5, label %get_surrogateescape.exit [
    i32 1, label %.sink.split.i
    i32 2, label %.thread
  ]

.sink.split.i:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !7
  %.not134 = icmp eq i64 %i.b, 0
  %.not56 = icmp eq i32 %4, 0                     ; 5 uses
  br i1 %.not134, label %.split92, label %.lr.ph.us.us

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %.not134165 = icmp eq i64 %i.b, 0
  %.not56166 = icmp eq i32 %4, 0                  ; 4 uses
  br i1 %.not134165, label %.split92, label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.sink.split.i, %bb.e
  %.048.us.us = phi ptr [ %.152.us.us, %bb.e ], [ null, %.sink.split.i ] ; 6 uses
  %.046.us.us = phi i64 [ %i.e, %bb.e ], [ 0, %.sink.split.i ]
  br label %bb.f

bb.b:                                             ; preds = %._crit_edge.split.us.us.us
  %i.e = add i64 %.2.us.us.us, 1                  ; 3 uses
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @PyMem_RawMalloc(i64 noundef %i.e) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = call ptr @PyMem_Malloc(i64 noundef %i.e) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.152.us.us = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.152.us.us, null
  br i1 %i.h, label %get_surrogateescape.exit, label %.lr.ph.us.us

bb.f:                                             ; preds = %bb.j, %.lr.ph.us.us
  %.180.us.us.us = phi i64 [ %.046.us.us, %.lr.ph.us.us ], [ %.2.us.us.us, %bb.j ] ; 3 uses
  %.04779.us.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.s, %bb.j ] ; 5 uses
  %.14978.us.us.us = phi ptr [ %.048.us.us, %.lr.ph.us.us ], [ %.250.us.us.us, %bb.j ] ; 3 uses
  %i.i = getelementptr [4 x i8], ptr %0, i64 %.04779.us.us.us
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 2 uses
  %i.k = and i32 %i.j, -128
  %or.cond.us.us.us = icmp eq i32 %i.k, 56448
  br i1 %or.cond.us.us.us, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.j, ptr %i.a, align 4, !tbaa !7
  %.not57.us.us.us = icmp eq ptr %.14978.us.us.us, null
  br i1 %.not57.us.us.us, label %bb.h, label %.thread.us.us.us

.thread.us.us.us:                                 ; preds = %bb.g
  %i.l = call i64 @wcstombs(ptr noundef nonnull %.14978.us.us.us, ptr noundef nonnull %i.a, i64 noundef %.180.us.us.us) #17 ; 3 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %.split.us, label %.thread69.us.us.us

.thread69.us.us.us:                               ; preds = %.thread.us.us.us
  %i.n = getelementptr i8, ptr %.14978.us.us.us, i64 %i.l
  %i.o = sub i64 %.180.us.us.us, %i.l
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0) #17 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %.split.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add i64 %i.p, %.180.us.us.us
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread69.us.us.us
  %.250.us.us.us = phi ptr [ null, %bb.i ], [ %i.n, %.thread69.us.us.us ] ; 2 uses
  %.2.us.us.us = phi i64 [ %i.r, %bb.i ], [ %i.o, %.thread69.us.us.us ] ; 2 uses
  %i.s = add nuw i64 %.04779.us.us.us, 1          ; 2 uses
  %exitcond152.not = icmp eq i64 %i.s, %i.b
  br i1 %exitcond152.not, label %._crit_edge.split.us.us.us, label %bb.f, !llvm.loop !214

._crit_edge.split.us.us.us:                       ; preds = %bb.j
  %.not.us.us = icmp eq ptr %.048.us.us, null
  br i1 %.not.us.us, label %bb.b, label %.split107.us

.lr.ph.us:                                        ; preds = %.thread, %12
  %.048.us = phi ptr [ %.152.us, %12 ], [ null, %.thread ] ; 5 uses
  %.046.us = phi i64 [ %7, %12 ], [ 0, %.thread ]
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.r
  %.180.us93 = phi i64 [ %.046.us, %.lr.ph.us ], [ %.2.us101, %bb.r ] ; 5 uses
  %.04779.us94 = phi i64 [ 0, %.lr.ph.us ], [ %i.ah, %bb.r ] ; 4 uses
  %.14978.us95 = phi ptr [ %.048.us, %.lr.ph.us ], [ %.250.us100, %bb.r ] ; 6 uses
  %i.t = getelementptr [4 x i8], ptr %0, i64 %.04779.us94
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 3 uses
  %i.v = and i32 %i.u, -128
  %or.cond.us96 = icmp eq i32 %i.v, 56448
  br i1 %or.cond.us96, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.u, ptr %i.a, align 4, !tbaa !7
  %.not57.us97 = icmp eq ptr %.14978.us95, null
  br i1 %.not57.us97, label %bb.m, label %.thread.us98

.thread.us98:                                     ; preds = %bb.l
  %i.w = call i64 @wcstombs(ptr noundef nonnull %.14978.us95, ptr noundef nonnull %i.a, i64 noundef %.180.us93) #17 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.split.us, label %.thread69.us99

.thread69.us99:                                   ; preds = %.thread.us98
  %i.y = getelementptr i8, ptr %.14978.us95, i64 %i.w
  %i.z = sub i64 %.180.us93, %i.w
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aa = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0) #17 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.split.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = add i64 %i.aa, %.180.us93
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %.not62.us = icmp eq ptr %.14978.us95, null
  br i1 %.not62.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = trunc i32 %i.u to i8
  %i.ae = getelementptr i8, ptr %.14978.us95, i64 1
  store i8 %i.ad, ptr %.14978.us95, align 1, !tbaa !187
  %i.af = add i64 %.180.us93, -1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ag = add i64 %.180.us93, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %.thread69.us99
  %.250.us100 = phi ptr [ %i.ae, %bb.p ], [ null, %bb.q ], [ %i.y, %.thread69.us99 ], [ null, %bb.n ] ; 2 uses
  %.2.us101 = phi i64 [ %i.af, %bb.p ], [ %i.ag, %bb.q ], [ %i.z, %.thread69.us99 ], [ %i.ac, %bb.n ] ; 2 uses
  %i.ah = add nuw i64 %.04779.us94, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.b
  br i1 %exitcond.not, label %._crit_edge.split.us102, label %bb.k, !llvm.loop !214

6:                                                ; preds = %._crit_edge.split.us102
  %7 = add i64 %.2.us101, 1                       ; 3 uses
  br i1 %.not56166, label %10, label %8

8:                                                ; preds = %6
  %9 = call ptr @PyMem_RawMalloc(i64 noundef %7) #17
  br label %12

10:                                               ; preds = %6
  %11 = call ptr @PyMem_Malloc(i64 noundef %7) #17
  br label %12

12:                                               ; preds = %10, %8
  %.152.us = phi ptr [ %9, %8 ], [ %11, %10 ]     ; 2 uses
  %13 = icmp eq ptr %.152.us, null
  br i1 %13, label %get_surrogateescape.exit, label %.lr.ph.us

._crit_edge.split.us102:                          ; preds = %bb.r
  %.not.us = icmp eq ptr %.048.us, null
  br i1 %.not.us, label %6, label %.split107.us

.split92:                                         ; preds = %.thread, %.sink.split.i
  %.not56169 = phi i1 [ %.not56166, %.thread ], [ %.not56, %.sink.split.i ]
  br i1 %.not56169, label %.split92.split.us, label %.split92.split

.split92.split.us:                                ; preds = %.split92, %bb.s
  %.048.us120 = phi ptr [ %i.aj, %bb.s ], [ null, %.split92 ] ; 3 uses
  %.046.us121 = phi i64 [ %i.ai, %bb.s ], [ 0, %.split92 ]
  %.not.us122 = icmp eq ptr %.048.us120, null
  br i1 %.not.us122, label %bb.s, label %.split107.us

bb.s:                                             ; preds = %.split92.split.us
  %i.ai = add i64 %.046.us121, 1                  ; 2 uses
  %i.aj = tail call ptr @PyMem_Malloc(i64 noundef %i.ai) #17 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %get_surrogateescape.exit, label %.split92.split.us

.split92.split:                                   ; preds = %.split92, %bb.t
  %.048 = phi ptr [ %i.am, %bb.t ], [ null, %.split92 ] ; 3 uses
  %.046 = phi i64 [ %i.al, %bb.t ], [ 0, %.split92 ]
  %.not = icmp eq ptr %.048, null
  br i1 %.not, label %bb.t, label %.split107.us

.split107.us:                                     ; preds = %._crit_edge.split.us102, %._crit_edge.split.us.us.us, %.split92.split, %.split92.split.us
  %.us-phi108 = phi ptr [ %.048, %.split92.split ], [ %.048.us120, %.split92.split.us ], [ %.048.us.us, %._crit_edge.split.us.us.us ], [ %.048.us, %._crit_edge.split.us102 ]
  %.us-phi109 = phi ptr [ %.048, %.split92.split ], [ %.048.us120, %.split92.split.us ], [ %.250.us.us.us, %._crit_edge.split.us.us.us ], [ %.250.us100, %._crit_edge.split.us102 ]
  store i8 0, ptr %.us-phi109, align 1, !tbaa !187
  store ptr %.us-phi108, ptr %1, align 8, !tbaa !193
  br label %get_surrogateescape.exit

bb.t:                                             ; preds = %.split92.split
  %i.al = add i64 %.046, 1                        ; 2 uses
  %i.am = tail call ptr @PyMem_RawMalloc(i64 noundef %i.al) #17 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %get_surrogateescape.exit, label %.split92.split

.split.us:                                        ; preds = %bb.m, %.thread.us98, %bb.f, %bb.h, %.thread.us.us.us
  %.not56170 = phi i1 [ %.not56, %bb.f ], [ %.not56, %.thread.us.us.us ], [ %.not56, %bb.h ], [ %.not56166, %.thread.us98 ], [ %.not56166, %bb.m ]
  %.us-phi = phi ptr [ %.048.us.us, %bb.f ], [ %.048.us.us, %.thread.us.us.us ], [ %.048.us.us, %bb.h ], [ %.048.us, %.thread.us98 ], [ %.048.us, %bb.m ] ; 2 uses
  %.us-phi82 = phi i64 [ %.04779.us.us.us, %bb.f ], [ %.04779.us.us.us, %.thread.us.us.us ], [ %.04779.us.us.us, %bb.h ], [ %.04779.us94, %.thread.us98 ], [ %.04779.us94, %bb.m ]
  br i1 %.not56170, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split.us
  call void @PyMem_RawFree(ptr noundef %.us-phi) #17
  br label %bb.w

bb.v:                                             ; preds = %.split.us
  call void @PyMem_Free(ptr noundef %.us-phi) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.us-phi82, ptr %2, align 8, !tbaa !192
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not61 = icmp eq ptr %3, null
  br i1 %.not61, label %get_surrogateescape.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr @.str.22, ptr %3, align 8, !tbaa !193
  br label %get_surrogateescape.exit

get_surrogateescape.exit:                         ; preds = %12, %bb.e, %bb.t, %bb.s, %bb.a, %bb.y, %bb.z, %.split107.us
  %.0 = phi i32 [ -2, %bb.y ], [ -3, %bb.a ], [ 0, %.split107.us ], [ -2, %bb.z ], [ -1, %bb.t ], [ -1, %bb.e ], [ -1, %bb.s ], [ -1, %12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare i32 @_Py_EncodeUTF8Ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_DecodeFSDefault(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #9

declare ptr @PyErr_SetFromErrnoWithFilenameObjects(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 10644}
!12 = !{!"pyruntimestate", !13, i64 0, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !35, i64 848, !14, i64 856, !37, i64 864, !14, i64 896, !35, i64 904, !40, i64 912, !44, i64 936, !50, i64 1240, !51, i64 1256, !53, i64 1280, !57, i64 1320, !60, i64 2400, !61, i64 2408, !64, i64 2424, !66, i64 2488, !67, i64 2760, !72, i64 2800, !78, i64 10144, !79, i64 10160, !81, i64 10168, !82, i64 10176, !88, i64 10352, !91, i64 10568, !18, i64 10584, !92, i64 10592, !95, i64 10616, !36, i64 10656, !36, i64 10664, !96, i64 10672, !98, i64 10688, !99, i64 10692, !100, i64 10704, !102, i64 10720, !103, i64 14120, !104, i64 14128, !105, i64 14136, !120, i64 119552}
!13 = !{!"_Py_DebugOffsets", !9, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 48, !17, i64 176, !18, i64 296, !19, i64 304, !20, i64 368, !21, i64 456, !22, i64 472, !23, i64 504, !24, i64 528, !25, i64 552, !26, i64 584, !27, i64 608, !28, i64 624, !29, i64 648, !30, i64 672, !31, i64 704, !32, i64 728, !33, i64 760, !34, i64 776}
!14 = !{!"long", !9, i64 0}
!15 = !{!"_runtime_state", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_interpreter_state", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120}
!17 = !{!"_thread_state", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112}
!18 = !{!"", !14, i64 0}
!19 = !{!"_interpreter_frame", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!20 = !{!"_code_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!21 = !{!"_pyobject", !14, i64 0, !14, i64 8}
!22 = !{!"_type_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!23 = !{!"_tuple_object", !14, i64 0, !14, i64 8, !14, i64 16}
!24 = !{!"_list_object", !14, i64 0, !14, i64 8, !14, i64 16}
!25 = !{!"_set_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!26 = !{!"_dict_object", !14, i64 0, !14, i64 8, !14, i64 16}
!27 = !{!"_float_object", !14, i64 0, !14, i64 8}
!28 = !{!"_long_object", !14, i64 0, !14, i64 8, !14, i64 16}
!29 = !{!"_bytes_object", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!"_unicode_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!31 = !{!"_gc", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_gen_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!33 = !{!"_llist_node", !14, i64 0, !14, i64 8}
!34 = !{!"_debugger_support", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!35 = !{!"p1 _ZTS3_ts", !36, i64 0}
!36 = !{!"any pointer", !9, i64 0}
!37 = !{!"pyinterpreters", !38, i64 0, !39, i64 8, !39, i64 16, !14, i64 24}
!38 = !{!"PyMutex", !9, i64 0}
!39 = !{!"p1 _ZTS3_is", !36, i64 0}
!40 = !{!"", !41, i64 0}
!41 = !{!"_xid_lookup_state", !42, i64 0}
!42 = !{!"", !8, i64 0, !8, i64 4, !38, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTS12_xid_regitem", !36, i64 0}
!44 = !{!"_pymem_allocators", !38, i64 0, !45, i64 8, !47, i64 128, !8, i64 272, !8, i64 276, !49, i64 280}
!45 = !{!"", !46, i64 0, !46, i64 40, !46, i64 80}
!46 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!47 = !{!"", !48, i64 0, !48, i64 48, !48, i64 96}
!48 = !{!"", !9, i64 0, !46, i64 8}
!49 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!50 = !{!"_obmalloc_global_state", !8, i64 0, !14, i64 8}
!51 = !{!"pyhash_runtime_state", !52, i64 0}
!52 = !{!"", !8, i64 0, !14, i64 8, !14, i64 16}
!53 = !{!"_pythread_runtime_state", !8, i64 0, !54, i64 8, !55, i64 24}
!54 = !{!"", !36, i64 0, !9, i64 8}
!55 = !{!"llist_node", !56, i64 0, !56, i64 8}
!56 = !{!"p1 _ZTS10llist_node", !36, i64 0}
!57 = !{!"_signals_runtime_state", !9, i64 0, !58, i64 1040, !8, i64 1048, !59, i64 1056, !59, i64 1064, !8, i64 1072}
!58 = !{!"", !8, i64 0, !8, i64 4}
!59 = !{!"p1 _ZTS7_object", !36, i64 0}
!60 = !{!"_Py_tss_t", !8, i64 0, !8, i64 4}
!61 = !{!"", !14, i64 0, !62, i64 8}
!62 = !{!"p2 int", !63, i64 0}
!63 = !{!"any p2 pointer", !36, i64 0}
!64 = !{!"_parser_runtime_state", !8, i64 0, !65, i64 8}
!65 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!66 = !{!"_atexit_runtime_state", !38, i64 0, !9, i64 8, !8, i64 264}
!67 = !{!"_import_runtime_state", !68, i64 0, !14, i64 8, !69, i64 16, !71, i64 32}
!68 = !{!"p1 _ZTS8_inittab", !36, i64 0}
!69 = !{!"", !38, i64 0, !70, i64 8}
!70 = !{!"p1 _ZTS15_Py_hashtable_t", !36, i64 0}
!71 = !{!"p1 omnipotent char", !36, i64 0}
!72 = !{!"_ceval_runtime_state", !73, i64 0, !77, i64 112}
!73 = !{!"", !8, i64 0, !8, i64 4, !14, i64 8, !74, i64 16, !75, i64 24, !76, i64 72, !14, i64 80, !36, i64 88, !14, i64 96, !8, i64 104}
!74 = !{!"p1 _ZTS13code_arena_st", !36, i64 0}
end_hunk_0
