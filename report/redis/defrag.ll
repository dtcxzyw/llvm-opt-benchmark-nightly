inline.NumInlined: 88
inline.NumDeleted: 12
begin_hunk_0_@activeDefragSds:bb.a
  %i.f = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.e) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.a, i64 %i.e, i1 false)
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.h = add nsw i64 %i.g, 1
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %activeDefragAlloc.exit, label %bb.b

bb.b:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  tail call void @zfree_no_tcache(ptr noundef %i.a) #11
  br label %activeDefragAlloc.exit

activeDefragAlloc.exit:                           ; preds = %activeDefragAllocWithoutFree.exit.thread.i, %activeDefragAllocWithoutFree.exit.i, %bb.b
  %.0.i6.i = phi ptr [ null, %activeDefragAllocWithoutFree.exit.thread.i ], [ %i.f, %bb.b ], [ null, %activeDefragAllocWithoutFree.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i6.i, null
  %i.i = ptrtoint ptr %0 to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i6.i, i64 %i.k
  %.0 = select i1 %.not, ptr null, ptr %i.l
  ret ptr %.0
}

declare ptr @sdsAllocPtr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @activeDefragEntry(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @entryGetAllocPtr(ptr noundef %0) #11 ; 5 uses
  %i.b = tail call i32 @je_get_defrag_hint(ptr noundef %i.a) #11
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %activeDefragAllocWithoutFree.exit.thread.i, label %activeDefragAllocWithoutFree.exit.i

activeDefragAllocWithoutFree.exit.thread.i:       ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.d = add nsw i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.a
  %i.e = tail call i64 @je_malloc_usable_size(ptr noundef %i.a) #11 ; 2 uses
  %i.f = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.e) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.a, i64 %i.e, i1 false)
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.h = add nsw i64 %i.g, 1
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %activeDefragAlloc.exit, label %bb.b

bb.b:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  tail call void @zfree_no_tcache(ptr noundef %i.a) #11
  br label %activeDefragAlloc.exit

activeDefragAlloc.exit:                           ; preds = %activeDefragAllocWithoutFree.exit.thread.i, %activeDefragAllocWithoutFree.exit.i, %bb.b
  %.0.i6.i = phi ptr [ null, %activeDefragAllocWithoutFree.exit.thread.i ], [ %i.f, %bb.b ], [ null, %activeDefragAllocWithoutFree.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i6.i, null              ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i6.i, i64 %i.k ; 2 uses
  %.0 = select i1 %.not, ptr %0, ptr %i.l
  %i.m = tail call ptr @entryGetValuePtrRef(ptr noundef %.0) #11 ; 3 uses
  %.not18 = icmp eq ptr %i.m, null
  br i1 %.not18, label %activeDefragSds.exit.thread, label %bb.c

bb.c:                                             ; preds = %activeDefragAlloc.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.o = tail call ptr @sdsAllocPtr(ptr noundef %i.n) #11 ; 5 uses
  %i.p = tail call i32 @je_get_defrag_hint(ptr noundef %i.o) #11
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %activeDefragAllocWithoutFree.exit.thread.i.i, label %activeDefragAllocWithoutFree.exit.i.i

activeDefragAllocWithoutFree.exit.thread.i.i:     ; preds = %bb.c
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragSds.exit.thread

activeDefragAllocWithoutFree.exit.i.i:            ; preds = %bb.c
  %i.s = tail call i64 @je_malloc_usable_size(ptr noundef %i.o) #11 ; 2 uses
  %i.t = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.s) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.o, i64 %i.s, i1 false)
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i.i20 = icmp eq ptr %i.t, null
  br i1 %.not.i.i20, label %activeDefragSds.exit.thread, label %bb.d

bb.d:                                             ; preds = %activeDefragAllocWithoutFree.exit.i.i
  tail call void @zfree_no_tcache(ptr noundef %i.o) #11
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  store ptr %i.z, ptr %i.m, align 8, !tbaa !48
  br label %activeDefragSds.exit.thread

activeDefragSds.exit.thread:                      ; preds = %activeDefragAllocWithoutFree.exit.i.i, %activeDefragAllocWithoutFree.exit.thread.i.i, %bb.d, %activeDefragAlloc.exit
  %.014 = select i1 %.not, ptr null, ptr %i.l
  ret ptr %.014
}

declare ptr @entryGetAllocPtr(ptr noundef) local_unnamed_addr #2

declare ptr @entryGetValuePtrRef(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @activeDefragHfieldAndUpdateRef(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call ptr @dictFindLink(ptr noundef %1, ptr noundef %0, ptr noundef null) #11 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !49
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !51

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 281) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @activeDefragEntry(ptr noundef %0) ; 3 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @dictSetKeyAtLink(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i32 noundef 0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.c
}

declare ptr @dictFindLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @dictSetKeyAtLink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @activeDefragStringObEx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 8388607
  %.not = icmp eq i32 %i.d, %1
  br i1 %.not, label %bb.b, label %activeDefragAlloc.exit42.thread

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.a, 255
  %or.cond = icmp eq i64 %i.e, 128
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %0) #11
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %activeDefragAllocWithoutFree.exit.thread.i, label %activeDefragAllocWithoutFree.exit.i

activeDefragAllocWithoutFree.exit.thread.i:       ; preds = %bb.c
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.h = add nsw i64 %i.g, 1
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.c
  %i.i = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #11 ; 2 uses
  %i.j = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.i) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %0, i64 %i.i, i1 false)
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %activeDefragAlloc.exit, label %bb.d

bb.d:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  tail call void @zfree_no_tcache(ptr noundef nonnull %0) #11
  br label %activeDefragAlloc.exit

activeDefragAlloc.exit:                           ; preds = %activeDefragAllocWithoutFree.exit.thread.i, %activeDefragAllocWithoutFree.exit.i, %bb.d
  %.0.i6.i = phi ptr [ null, %activeDefragAllocWithoutFree.exit.thread.i ], [ %i.j, %bb.d ], [ null, %activeDefragAllocWithoutFree.exit.i ] ; 3 uses
  %.not30 = icmp eq ptr %.0.i6.i, null
  %spec.select34 = select i1 %.not30, ptr %0, ptr %.0.i6.i ; 2 uses
  %.pre = load i64, ptr %spec.select34, align 8
  br label %bb.e

bb.e:                                             ; preds = %activeDefragAlloc.exit, %bb.b
  %i.m = phi i64 [ %i.a, %bb.b ], [ %.pre, %activeDefragAlloc.exit ] ; 2 uses
  %.022 = phi ptr [ null, %bb.b ], [ %.0.i6.i, %activeDefragAlloc.exit ] ; 5 uses
  %.021 = phi ptr [ %0, %bb.b ], [ %spec.select34, %activeDefragAlloc.exit ] ; 7 uses
  %i.n = and i64 %i.m, 15
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %activeDefragAlloc.exit42.thread

bb.f:                                             ; preds = %bb.e
  %2 = trunc i64 %i.m to i8
  switch i8 %2, label %bb.k [
    i8 0, label %bb.g
    i8 -128, label %bb.i
    i8 16, label %activeDefragAlloc.exit42.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = tail call ptr @sdsAllocPtr(ptr noundef %i.q) #11 ; 5 uses
  %i.s = tail call i32 @je_get_defrag_hint(ptr noundef %i.r) #11
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %activeDefragAllocWithoutFree.exit.thread.i.i, label %activeDefragAllocWithoutFree.exit.i.i

activeDefragAllocWithoutFree.exit.thread.i.i:     ; preds = %bb.g
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.u = add nsw i64 %i.t, 1
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit42.thread

activeDefragAllocWithoutFree.exit.i.i:            ; preds = %bb.g
  %i.v = tail call i64 @je_malloc_usable_size(ptr noundef %i.r) #11 ; 2 uses
  %i.w = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.v) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.v, i1 false)
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i.i35 = icmp eq ptr %i.w, null
  br i1 %.not.i.i35, label %activeDefragAlloc.exit42.thread, label %bb.h

bb.h:                                             ; preds = %activeDefragAllocWithoutFree.exit.i.i
  tail call void @zfree_no_tcache(ptr noundef %i.r) #11
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab
  store ptr %i.ac, ptr %i.p, align 8, !tbaa !52
  br label %activeDefragAlloc.exit42.thread

bb.i:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.af = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %.021) #11
  %.not.i.i37 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i37, label %activeDefragAllocWithoutFree.exit.thread.i41, label %activeDefragAllocWithoutFree.exit.i38

activeDefragAllocWithoutFree.exit.thread.i41:     ; preds = %bb.i
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit42.thread

activeDefragAllocWithoutFree.exit.i38:            ; preds = %bb.i
  %i.ai = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %.021) #11 ; 2 uses
  %i.aj = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.ai) #11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %.021, i64 %i.ai, i1 false)
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i39 = icmp eq ptr %i.aj, null
  br i1 %.not.i39, label %activeDefragAlloc.exit42.thread, label %bb.j

bb.j:                                             ; preds = %activeDefragAllocWithoutFree.exit.i38
  tail call void @zfree_no_tcache(ptr noundef nonnull %.021) #11
  %i.am = ptrtoint ptr %i.ae to i64
  %i.an = ptrtoint ptr %.021 to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = add nsw i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !52
  br label %activeDefragAlloc.exit42.thread

bb.k:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 323, ptr noundef nonnull @.str.2) #11
  tail call void @abort() #12
  unreachable

activeDefragAlloc.exit42.thread:                  ; preds = %activeDefragAllocWithoutFree.exit.i.i, %activeDefragAllocWithoutFree.exit.thread.i.i, %activeDefragAllocWithoutFree.exit.i38, %activeDefragAllocWithoutFree.exit.thread.i41, %bb.e, %bb.h, %bb.j, %bb.f, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.022, %bb.e ], [ null, %activeDefragAllocWithoutFree.exit.i38 ], [ %.022, %bb.f ], [ %.022, %bb.h ], [ %i.aj, %bb.j ], [ null, %activeDefragAllocWithoutFree.exit.thread.i41 ], [ %.022, %activeDefragAllocWithoutFree.exit.thread.i.i ], [ %.022, %activeDefragAllocWithoutFree.exit.i.i ]
  ret ptr %.0
}

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @activeDefragStringOb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @activeDefragStringObEx(ptr noundef %0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @activeDefragLuaScript(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @je_get_defrag_hint(ptr noundef %0) #11
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %activeDefragAllocWithoutFree.exit.thread.i, label %activeDefragAllocWithoutFree.exit.i

activeDefragAllocWithoutFree.exit.thread.i:       ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.a
  %i.d = tail call i64 @je_malloc_usable_size(ptr noundef %0) #11 ; 2 uses
  %i.e = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.d) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %0, i64 %i.d, i1 false)
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.g = add nsw i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %activeDefragAlloc.exit, label %bb.b

bb.b:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  tail call void @zfree_no_tcache(ptr noundef %0) #11
  br label %activeDefragAlloc.exit

activeDefragAlloc.exit:                           ; preds = %activeDefragAllocWithoutFree.exit.thread.i, %activeDefragAllocWithoutFree.exit.i, %bb.b
  %.0.i6.i = phi ptr [ null, %activeDefragAllocWithoutFree.exit.thread.i ], [ %i.e, %bb.b ], [ null, %activeDefragAllocWithoutFree.exit.i ] ; 3 uses
  %.not = icmp eq ptr %.0.i6.i, null
  %spec.select = select i1 %.not, ptr %0, ptr %.0.i6.i
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call ptr @activeDefragStringObEx(ptr noundef %i.i, i32 noundef 1) ; 2 uses
  %.not9 = icmp eq ptr %i.j, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %activeDefragAlloc.exit
  store ptr %i.j, ptr %i.h, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %activeDefragAlloc.exit
  ret ptr %.0.i6.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dictDefragTables(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @je_get_defrag_hint(ptr noundef %0) #11
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %activeDefragAllocWithoutFree.exit.thread.i, label %activeDefragAllocWithoutFree.exit.i

activeDefragAllocWithoutFree.exit.thread.i:       ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.a
  %i.d = tail call i64 @je_malloc_usable_size(ptr noundef %0) #11 ; 2 uses
  %i.e = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.d) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %0, i64 %i.d, i1 false)
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.g = add nsw i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %activeDefragAlloc.exit, label %bb.b

bb.b:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  tail call void @zfree_no_tcache(ptr noundef %0) #11
  br label %activeDefragAlloc.exit

activeDefragAlloc.exit:                           ; preds = %activeDefragAllocWithoutFree.exit.thread.i, %activeDefragAllocWithoutFree.exit.i, %bb.b
  %.0.i6.i = phi ptr [ null, %activeDefragAllocWithoutFree.exit.thread.i ], [ %i.e, %bb.b ], [ null, %activeDefragAllocWithoutFree.exit.i ] ; 3 uses
  %.not = icmp eq ptr %.0.i6.i, null
  %spec.select = select i1 %.not, ptr %0, ptr %.0.i6.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 5 uses
  %.not21 = icmp eq ptr %i.i, null
  br i1 %.not21, label %activeDefragAlloc.exit36.thread, label %bb.c

bb.c:                                             ; preds = %activeDefragAlloc.exit
  %i.j = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %i.i) #11
  %.not.i.i25 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i25, label %activeDefragAllocWithoutFree.exit.thread.i29, label %activeDefragAllocWithoutFree.exit.i26

activeDefragAllocWithoutFree.exit.thread.i29:     ; preds = %bb.c
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit30.thread

activeDefragAllocWithoutFree.exit.i26:            ; preds = %bb.c
  %i.m = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.i) #11 ; 2 uses
  %i.n = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.m) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.i, i64 %i.m, i1 false)
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.p = add nsw i64 %i.o, 1
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i27 = icmp eq ptr %i.n, null
  br i1 %.not.i27, label %activeDefragAlloc.exit30.thread, label %bb.d

bb.d:                                             ; preds = %activeDefragAllocWithoutFree.exit.i26
  tail call void @zfree_no_tcache(ptr noundef nonnull %i.i) #11
  store ptr %i.n, ptr %i.h, align 8, !tbaa !49
  br label %activeDefragAlloc.exit30.thread

activeDefragAlloc.exit30.thread:                  ; preds = %activeDefragAllocWithoutFree.exit.i26, %activeDefragAllocWithoutFree.exit.thread.i29, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 5 uses
  %.not23 = icmp eq ptr %i.r, null
end_hunk_0
begin_hunk_1_@activeDefragKvobj:bb.a
  %i.q = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %i.p) #11
  %.not.i.i = icmp eq i32 %i.q, 0                 ; 2 uses
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %bb.f, label %activeDefragAllocWithoutFree.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.s = add nsw i64 %i.r, 1
  store i64 %i.s, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAllocWithoutFree.exit.thread

bb.g:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %activeDefragAllocWithoutFree.exit.thread.i, label %activeDefragAllocWithoutFree.exit.i

activeDefragAllocWithoutFree.exit.thread.i:       ; preds = %bb.g
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.u = add nsw i64 %i.t, 1
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAllocWithoutFree.exit.thread

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.g
  %i.v = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.p) #11 ; 2 uses
  %i.w = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.v) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.p, i64 %i.v, i1 false)
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i25 = icmp eq ptr %i.w, null
  br i1 %.not.i25, label %activeDefragAllocWithoutFree.exit.thread, label %activeDefragAllocWithoutFree.exit.thread28

activeDefragAllocWithoutFree.exit.thread28:       ; preds = %activeDefragAllocWithoutFree.exit.i
  tail call void @zfree_no_tcache(ptr noundef nonnull %i.p) #11
  br label %bb.h

activeDefragAllocWithoutFree.exit:                ; preds = %bb.e
  %i.z = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.p) #11 ; 2 uses
  %i.aa = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.z) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %i.p, i64 %i.z, i1 false)
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %activeDefragAllocWithoutFree.exit.thread, label %bb.h

bb.h:                                             ; preds = %activeDefragAllocWithoutFree.exit.thread28, %activeDefragAllocWithoutFree.exit
  %.02031 = phi ptr [ %i.w, %activeDefragAllocWithoutFree.exit.thread28 ], [ %i.aa, %activeDefragAllocWithoutFree.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.02031, i64 %i.n ; 4 uses
  %.not23 = icmp eq i64 %.019, -9223372036854775808
  br i1 %.not23, label %activeDefragAllocWithoutFree.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add nsw i64 %.019, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !52
  br label %activeDefragAllocWithoutFree.exit.thread

activeDefragAllocWithoutFree.exit.thread:         ; preds = %activeDefragAllocWithoutFree.exit.i, %activeDefragAllocWithoutFree.exit.thread.i, %bb.f, %activeDefragAllocWithoutFree.exit, %bb.i, %bb.h, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %activeDefragAllocWithoutFree.exit ], [ %i.ad, %bb.i ], [ %i.ad, %bb.h ], [ null, %bb.f ], [ null, %activeDefragAllocWithoutFree.exit.thread.i ], [ null, %activeDefragAllocWithoutFree.exit.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @defragKey(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %i.c = tail call ptr @dictGetKey(ptr noundef %1) #11 ; 13 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !166
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !167
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [96 x i8], ptr %i.d, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !168  ; 4 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !169
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i64 @kvobjAllocSize(ptr noundef %i.c) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.083 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.m = tail call i64 @kvobjGetExpire(ptr noundef %i.c) #11
  %.not96 = icmp eq i64 %i.m, -1                  ; 2 uses
  br i1 %.not96, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170
  %i.p = tail call ptr @kvobjGetKey(ptr noundef %i.c) #11
  %i.q = tail call ptr @kvstoreDictFindLink(ptr noundef %i.o, i32 noundef %i.j, ptr noundef %i.p, ptr noundef null) #11 ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !49
  %.not97 = icmp eq ptr %i.q, null
  br i1 %.not97, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1114) #11
  tail call void @abort() #12
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.r = load i64, ptr %i.c, align 8              ; 2 uses
  %i.s = and i64 %i.r, 15
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i64 @hashTypeGetMinExpire(ptr noundef nonnull %i.c, i32 noundef 0) #11
  %.not98 = icmp eq i64 %i.u, 281474976710656
  br i1 %.not98, label %._crit_edge, label %activeDefragKvobj.exit.thread

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.v = phi i64 [ %.pre, %._crit_edge ], [ %i.r, %bb.f ] ; 3 uses
  %i.w = and i64 %i.v, 2147483392
  %.not.i = icmp eq i64 %i.w, 256
  br i1 %.not.i, label %bb.i, label %activeDefragKvobj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.v, 255
  %or.cond.i = icmp eq i64 %i.x, 128
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.c to i64
  %i.ac = sub nsw i64 %i.aa, %i.ab
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.019.i = phi i64 [ %i.ac, %bb.j ], [ -9223372036854775808, %bb.i ] ; 2 uses
  %i.ad = lshr i64 %i.v, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 255
  %i.ag = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.af)
  %i.ah = shl nuw nsw i32 %i.ag, 3
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.c, i64 %i.aj ; 4 uses
  %i.al = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %i.ak) #11
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %activeDefragAllocWithoutFree.exit.thread.i.i, label %activeDefragAllocWithoutFree.exit.i.i

activeDefragAllocWithoutFree.exit.thread.i.i:     ; preds = %bb.k
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.an = add nsw i64 %i.am, 1
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragKvobj.exit.thread

activeDefragAllocWithoutFree.exit.i.i:            ; preds = %bb.k
  %i.ao = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.ak) #11 ; 2 uses
  %i.ap = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.ao) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ak, i64 %i.ao, i1 false)
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i25.i = icmp eq ptr %i.ap, null
  br i1 %.not.i25.i, label %activeDefragKvobj.exit.thread, label %activeDefragAllocWithoutFree.exit.thread28.i

activeDefragAllocWithoutFree.exit.thread28.i:     ; preds = %activeDefragAllocWithoutFree.exit.i.i
  tail call void @zfree_no_tcache(ptr noundef nonnull %i.ak) #11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ai ; 6 uses
  %.not23.i = icmp eq i64 %.019.i, -9223372036854775808
  br i1 %.not23.i, label %activeDefragKvobj.exit, label %activeDefragKvobj.exit.thread147

activeDefragKvobj.exit.thread147:                 ; preds = %activeDefragAllocWithoutFree.exit.thread28.i
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = add nsw i64 %.019.i, %i.at
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !52
  br label %activeDefragKvobj.exit

activeDefragKvobj.exit:                           ; preds = %activeDefragAllocWithoutFree.exit.thread28.i, %activeDefragKvobj.exit.thread147
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !171
  call void @kvstoreDictSetAtLink(ptr noundef %i.ax, i32 noundef %i.j, ptr noundef nonnull %i.as, ptr noundef nonnull %i.a, i32 noundef 0) #11
  br i1 %.not96, label %activeDefragKvobj.exit.thread, label %bb.l

bb.l:                                             ; preds = %activeDefragKvobj.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !170
  call void @kvstoreDictSetAtLink(ptr noundef %i.az, i32 noundef %i.j, ptr noundef nonnull %i.as, ptr noundef nonnull %i.b, i32 noundef 0) #11
  br label %activeDefragKvobj.exit.thread

activeDefragKvobj.exit.thread:                    ; preds = %activeDefragAllocWithoutFree.exit.i.i, %activeDefragAllocWithoutFree.exit.thread.i.i, %bb.h, %bb.g, %activeDefragKvobj.exit, %bb.l
  %.082 = phi ptr [ %i.c, %activeDefragAllocWithoutFree.exit.i.i ], [ %i.as, %bb.l ], [ %i.as, %activeDefragKvobj.exit ], [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ %i.c, %activeDefragAllocWithoutFree.exit.thread.i.i ] ; 15 uses
  %i.ba = load i64, ptr %.082, align 8            ; 6 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 15
  switch i32 %i.bc, label %bb.ao [
    i32 0, label %bb.m
    i32 1, label %bb.p
    i32 2, label %bb.u
    i32 3, label %bb.z
    i32 4, label %bb.ae
    i32 6, label %bb.am
    i32 5, label %bb.an
  ]

bb.m:                                             ; preds = %activeDefragKvobj.exit.thread
  %i.bd = and i64 %i.ba, 2147483632
  %or.cond = icmp eq i64 %i.bd, 256
  br i1 %or.cond, label %bb.n, label %activeDefragAlloc.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52 ; 2 uses
  %i.bg = call ptr @sdsAllocPtr(ptr noundef %i.bf) #11 ; 5 uses
  %i.bh = call i32 @je_get_defrag_hint(ptr noundef %i.bg) #11
  %.not.i.i.i109 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i109, label %activeDefragAllocWithoutFree.exit.thread.i.i112, label %activeDefragAllocWithoutFree.exit.i.i110

activeDefragAllocWithoutFree.exit.thread.i.i112:  ; preds = %bb.n
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.bj = add nsw i64 %i.bi, 1
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i.i110:         ; preds = %bb.n
  %i.bk = call i64 @je_malloc_usable_size(ptr noundef %i.bg) #11 ; 2 uses
  %i.bl = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.bk) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bg, i64 %i.bk, i1 false)
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.bn = add nsw i64 %i.bm, 1
  store i64 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %activeDefragAlloc.exit.thread, label %bb.o

bb.o:                                             ; preds = %activeDefragAllocWithoutFree.exit.i.i110
  call void @zfree_no_tcache(ptr noundef %i.bg) #11
  %i.bo = ptrtoint ptr %i.bf to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  store ptr %i.br, ptr %i.be, align 8, !tbaa !52
  br label %activeDefragAlloc.exit.thread

bb.p:                                             ; preds = %activeDefragKvobj.exit.thread
  %3 = trunc i64 %i.ba to i8
  %trunc165 = and i8 %3, -16
  switch i8 %trunc165, label %bb.t [
    i8 -112, label %bb.q
    i8 -80, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  call void @defragQuicklist(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52 ; 4 uses
  %i.bu = call i32 @je_get_defrag_hint(ptr noundef %i.bt) #11
  %.not.i.i113 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i113, label %activeDefragAllocWithoutFree.exit.thread.i, label %activeDefragAllocWithoutFree.exit.i

activeDefragAllocWithoutFree.exit.thread.i:       ; preds = %bb.r
  %i.bv = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.r
  %i.bx = call i64 @je_malloc_usable_size(ptr noundef %i.bt) #11 ; 2 uses
  %i.by = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.bx) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bt, i64 %i.bx, i1 false)
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.ca = add nsw i64 %i.bz, 1
  store i64 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i114 = icmp eq ptr %i.by, null
  br i1 %.not.i114, label %activeDefragAlloc.exit.thread, label %bb.s

bb.s:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  call void @zfree_no_tcache(ptr noundef %i.bt) #11
  store ptr %i.by, ptr %i.bs, align 8, !tbaa !52
  br label %activeDefragAlloc.exit.thread

bb.t:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1146, ptr noundef nonnull @.str.20) #11
  call void @abort() #12
  unreachable

bb.u:                                             ; preds = %activeDefragKvobj.exit.thread
  %4 = trunc i64 %i.ba to i8
  %trunc164 = and i8 %4, -16
  switch i8 %trunc164, label %bb.y [
    i8 32, label %bb.v
    i8 96, label %bb.w
    i8 -80, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  call void @defragSet(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.w:                                             ; preds = %bb.u, %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !52 ; 4 uses
  %i.cd = call i32 @je_get_defrag_hint(ptr noundef %i.cc) #11
  %.not.i.i115 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i115, label %activeDefragAllocWithoutFree.exit.thread.i119, label %activeDefragAllocWithoutFree.exit.i116

activeDefragAllocWithoutFree.exit.thread.i119:    ; preds = %bb.w
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.cf = add nsw i64 %i.ce, 1
  store i64 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i116:           ; preds = %bb.w
  %i.cg = call i64 @je_malloc_usable_size(ptr noundef %i.cc) #11 ; 2 uses
  %i.ch = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.cg) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cc, i64 %i.cg, i1 false)
  %i.ci = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.cj = add nsw i64 %i.ci, 1
  store i64 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i117 = icmp eq ptr %i.ch, null
  br i1 %.not.i117, label %activeDefragAlloc.exit.thread, label %bb.x

bb.x:                                             ; preds = %activeDefragAllocWithoutFree.exit.i116
  call void @zfree_no_tcache(ptr noundef %i.cc) #11
  store ptr %i.ch, ptr %i.cb, align 8, !tbaa !52
  br label %activeDefragAlloc.exit.thread

bb.y:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1158, ptr noundef nonnull @.str.21) #11
  call void @abort() #12
  unreachable

bb.z:                                             ; preds = %activeDefragKvobj.exit.thread
  %5 = trunc i64 %i.ba to i8
  %trunc163 = and i8 %5, -16
  switch i8 %trunc163, label %bb.ad [
    i8 -80, label %bb.aa
    i8 112, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !52 ; 4 uses
  %i.cm = call i32 @je_get_defrag_hint(ptr noundef %i.cl) #11
  %.not.i.i121 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i121, label %activeDefragAllocWithoutFree.exit.thread.i125, label %activeDefragAllocWithoutFree.exit.i122

activeDefragAllocWithoutFree.exit.thread.i125:    ; preds = %bb.aa
  %i.cn = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.co = add nsw i64 %i.cn, 1
  store i64 %i.co, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i122:           ; preds = %bb.aa
  %i.cp = call i64 @je_malloc_usable_size(ptr noundef %i.cl) #11 ; 2 uses
  %i.cq = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.cp) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cl, i64 %i.cp, i1 false)
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.cs = add nsw i64 %i.cr, 1
  store i64 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i123 = icmp eq ptr %i.cq, null
  br i1 %.not.i123, label %activeDefragAlloc.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %activeDefragAllocWithoutFree.exit.i122
  call void @zfree_no_tcache(ptr noundef %i.cl) #11
  store ptr %i.cq, ptr %i.ck, align 8, !tbaa !52
  br label %activeDefragAlloc.exit.thread

bb.ac:                                            ; preds = %bb.z
  call void @defragZsetSkiplist(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.ad:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1167, ptr noundef nonnull @.str.22) #11
  call void @abort() #12
  unreachable

bb.ae:                                            ; preds = %activeDefragKvobj.exit.thread
  %6 = trunc i64 %i.ba to i8
  %trunc = and i8 %6, -16
  switch i8 %trunc, label %bb.al [
    i8 -80, label %bb.af
    i8 -64, label %bb.ah
    i8 32, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !52 ; 4 uses
  %i.cv = call i32 @je_get_defrag_hint(ptr noundef %i.cu) #11
  %.not.i.i127 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i127, label %activeDefragAllocWithoutFree.exit.thread.i131, label %activeDefragAllocWithoutFree.exit.i128

activeDefragAllocWithoutFree.exit.thread.i131:    ; preds = %bb.af
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i128:           ; preds = %bb.af
  %i.cy = call i64 @je_malloc_usable_size(ptr noundef %i.cu) #11 ; 2 uses
  %i.cz = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.cy) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cu, i64 %i.cy, i1 false)
  %i.da = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.db = add nsw i64 %i.da, 1
  store i64 %i.db, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i129 = icmp eq ptr %i.cz, null
  br i1 %.not.i129, label %activeDefragAlloc.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %activeDefragAllocWithoutFree.exit.i128
  call void @zfree_no_tcache(ptr noundef %i.cu) #11
  store ptr %i.cz, ptr %i.ct, align 8, !tbaa !52
  br label %activeDefragAlloc.exit.thread

bb.ah:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !52 ; 6 uses
  %i.de = call i32 @je_get_defrag_hint(ptr noundef %i.dd) #11
  %.not.i.i133 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i133, label %activeDefragAllocWithoutFree.exit.thread.i137, label %activeDefragAllocWithoutFree.exit.i134

activeDefragAllocWithoutFree.exit.thread.i137:    ; preds = %bb.ah
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.dg = add nsw i64 %i.df, 1
  store i64 %i.dg, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit138.thread

activeDefragAllocWithoutFree.exit.i134:           ; preds = %bb.ah
  %i.dh = call i64 @je_malloc_usable_size(ptr noundef %i.dd) #11 ; 2 uses
  %i.di = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.dh) #11 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dd, i64 %i.dh, i1 false)
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.dk = add nsw i64 %i.dj, 1
  store i64 %i.dk, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i135 = icmp eq ptr %i.di, null
  br i1 %.not.i135, label %activeDefragAlloc.exit138.thread, label %bb.ai

bb.ai:                                            ; preds = %activeDefragAllocWithoutFree.exit.i134
  call void @zfree_no_tcache(ptr noundef %i.dd) #11
  store ptr %i.di, ptr %i.dc, align 8, !tbaa !52
  br label %activeDefragAlloc.exit138.thread

activeDefragAlloc.exit138.thread:                 ; preds = %activeDefragAllocWithoutFree.exit.i134, %activeDefragAllocWithoutFree.exit.thread.i137, %bb.ai
  %.0 = phi ptr [ %i.di, %bb.ai ], [ %i.dd, %activeDefragAllocWithoutFree.exit.thread.i137 ], [ %i.dd, %activeDefragAllocWithoutFree.exit.i134 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !172 ; 4 uses
  %i.dn = call i32 @je_get_defrag_hint(ptr noundef %i.dm) #11
  %.not.i.i139 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i139, label %activeDefragAllocWithoutFree.exit.thread.i143, label %activeDefragAllocWithoutFree.exit.i140

activeDefragAllocWithoutFree.exit.thread.i143:    ; preds = %activeDefragAlloc.exit138.thread
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.dp = add nsw i64 %i.do, 1
  store i64 %i.dp, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i140:           ; preds = %activeDefragAlloc.exit138.thread
  %i.dq = call i64 @je_malloc_usable_size(ptr noundef %i.dm) #11 ; 2 uses
  %i.dr = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.dq) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dm, i64 %i.dq, i1 false)
  %i.ds = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.dt = add nsw i64 %i.ds, 1
  store i64 %i.dt, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i141 = icmp eq ptr %i.dr, null
  br i1 %.not.i141, label %activeDefragAlloc.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %activeDefragAllocWithoutFree.exit.i140
  call void @zfree_no_tcache(ptr noundef %i.dm) #11
  store ptr %i.dr, ptr %i.dl, align 8, !tbaa !172
  br label %activeDefragAlloc.exit.thread

bb.ak:                                            ; preds = %bb.ae
  call void @defragHash(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.al:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1182, ptr noundef nonnull @.str.23) #11
  call void @abort() #12
  unreachable

bb.am:                                            ; preds = %activeDefragKvobj.exit.thread
  call void @defragStream(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.an:                                            ; preds = %activeDefragKvobj.exit.thread
  call void @defragModule(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.ao:                                            ; preds = %activeDefragKvobj.exit.thread
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1189, ptr noundef nonnull @.str.24) #11
  call void @abort() #12
  unreachable

activeDefragAlloc.exit.thread:                    ; preds = %activeDefragAllocWithoutFree.exit.i.i110, %activeDefragAllocWithoutFree.exit.thread.i.i112, %activeDefragAllocWithoutFree.exit.i140, %activeDefragAllocWithoutFree.exit.thread.i143, %activeDefragAllocWithoutFree.exit.i128, %activeDefragAllocWithoutFree.exit.thread.i131, %activeDefragAllocWithoutFree.exit.i122, %activeDefragAllocWithoutFree.exit.thread.i125, %activeDefragAllocWithoutFree.exit.i116, %activeDefragAllocWithoutFree.exit.thread.i119, %activeDefragAllocWithoutFree.exit.i, %activeDefragAllocWithoutFree.exit.thread.i, %bb.aj, %bb.x, %bb.o, %bb.s, %bb.q, %bb.ab, %bb.ac, %bb.am, %bb.an, %bb.ag, %bb.ak, %bb.v, %bb.m
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !169
  %.not107 = icmp eq i32 %i.du, 0
  br i1 %.not107, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %activeDefragAlloc.exit.thread
  %i.dv = call i64 @kvobjAllocSize(ptr noundef nonnull %.082) #11
  call void @updateSlotAllocSize(ptr noundef %i.h, i32 noundef %i.j, ptr noundef nonnull %.082, i64 noundef %.083, i64 noundef %i.dv) #11
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %activeDefragAlloc.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #2

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #2

declare ptr @kvstoreDictFindLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @hashTypeGetMinExpire(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @kvstoreDictSetAtLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @getAllocatorFragmentation(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.i = call i32 @zmalloc_get_allocator_info(i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8328), align 8, !tbaa !176 ; 2 uses
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.d, align 8, !tbaa !87
  %.pre6 = load i64, ptr %i.c, align 8, !tbaa !87
  %.pre7 = load i64, ptr %i.a, align 8, !tbaa !87
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.k = call i32 @zmalloc_get_allocator_info_by_arena(i32 noundef %i.j, i32 noundef 0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #11 ; 0 uses
  %i.l = load i64, ptr %i.e, align 8, !tbaa !87
  %i.m = load i64, ptr %i.a, align 8, !tbaa !87
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !87
  %i.o = load i64, ptr %i.f, align 8, !tbaa !87
  %i.p = load i64, ptr %i.b, align 8, !tbaa !87
  %i.q = sub i64 %i.p, %i.o
  store i64 %i.q, ptr %i.b, align 8, !tbaa !87
  %i.r = load i64, ptr %i.g, align 8, !tbaa !87
  %i.s = load i64, ptr %i.c, align 8, !tbaa !87
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  store i64 %i.t, ptr %i.c, align 8, !tbaa !87
  %i.u = load i64, ptr %i.h, align 8, !tbaa !87
  %i.v = load i64, ptr %i.d, align 8, !tbaa !87
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  store i64 %i.w, ptr %i.d, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.x = phi i64 [ %.pre7, %._crit_edge ], [ %i.n, %bb.b ] ; 3 uses
  %i.y = phi i64 [ %.pre6, %._crit_edge ], [ %i.t, %bb.b ] ; 3 uses
  %i.z = phi i64 [ %.pre, %._crit_edge ], [ %i.w, %bb.b ] ; 3 uses
  %i.aa = uitofp i64 %i.z to float
  %i.ab = uitofp i64 %i.y to float                ; 2 uses
  %i.ac = fdiv float %i.aa, %i.ab
  %i.ad = fmul float %i.ac, 1.000000e+02          ; 2 uses
  %i.ae = uitofp i64 %i.x to float
  %i.af = fdiv float %i.ae, %i.ab
end_hunk_1
