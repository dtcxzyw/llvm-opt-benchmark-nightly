inline.NumInlined: 88
inline.NumDeleted: 12
begin_hunk_0_@defragStream:bb.a
  %i.c = icmp eq i64 %i.b, 166
  br i1 %i.c, label %bb.c, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1002) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 6 uses
  %i.f = tail call i32 @je_get_defrag_hint(ptr noundef %i.e) #11
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %activeDefragAllocWithoutFree.exit.thread.i, label %activeDefragAllocWithoutFree.exit.i

activeDefragAllocWithoutFree.exit.thread.i:       ; preds = %bb.c
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.h = add nsw i64 %i.g, 1
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.c
  %i.i = tail call i64 @je_malloc_usable_size(ptr noundef %i.e) #11 ; 2 uses
  %i.j = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.i) #11 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.e, i64 %i.i, i1 false)
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %activeDefragAlloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  tail call void @zfree_no_tcache(ptr noundef %i.e) #11
  store ptr %i.j, ptr %i.d, align 8, !tbaa !52
  br label %activeDefragAlloc.exit.thread

activeDefragAlloc.exit.thread:                    ; preds = %activeDefragAllocWithoutFree.exit.i, %activeDefragAllocWithoutFree.exit.thread.i, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %i.e, %activeDefragAllocWithoutFree.exit.thread.i ], [ %i.e, %activeDefragAllocWithoutFree.exit.i ] ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 72 ; 3 uses
  %i.n = load ptr, ptr %.0, align 8, !tbaa !114   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.m, ptr %i.o, align 8, !tbaa !149
  %i.p = tail call i64 @raxSize(ptr noundef %i.n) #11
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6496), align 8, !tbaa !110
  %i.r = icmp ugt i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %activeDefragAlloc.exit.thread
  %i.s = load ptr, ptr %.0, align 8, !tbaa !114   ; 4 uses
  %i.t = tail call i32 @je_get_defrag_hint(ptr noundef %i.s) #11
  %.not.i.i34 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i34, label %activeDefragAllocWithoutFree.exit.thread.i38, label %activeDefragAllocWithoutFree.exit.i35

activeDefragAllocWithoutFree.exit.thread.i38:     ; preds = %bb.e
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit39.thread

activeDefragAllocWithoutFree.exit.i35:            ; preds = %bb.e
  %i.w = tail call i64 @je_malloc_usable_size(ptr noundef %i.s) #11 ; 2 uses
  %i.x = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.w) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.w, i1 false)
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.z = add nsw i64 %i.y, 1
  store i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i36 = icmp eq ptr %i.x, null
  br i1 %.not.i36, label %activeDefragAlloc.exit39.thread, label %bb.f

bb.f:                                             ; preds = %activeDefragAllocWithoutFree.exit.i35
  tail call void @zfree_no_tcache(ptr noundef %i.s) #11
  store ptr %i.x, ptr %.0, align 8, !tbaa !114
  br label %activeDefragAlloc.exit39.thread

activeDefragAlloc.exit39.thread:                  ; preds = %activeDefragAllocWithoutFree.exit.i35, %activeDefragAllocWithoutFree.exit.thread.i38, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96
  %.not.i40 = icmp eq ptr %i.ab, null
  br i1 %.not.i40, label %bb.g, label %defragLater.exit

bb.g:                                             ; preds = %activeDefragAlloc.exit39.thread
  %i.ac = tail call ptr @listCreate() #11         ; 2 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @sdsfreegeneric, ptr %i.ad, align 8, !tbaa !99
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ae, align 8, !tbaa !101
  br label %defragLater.exit

defragLater.exit:                                 ; preds = %activeDefragAlloc.exit39.thread, %bb.g
  %i.af = tail call ptr @kvobjGetKey(ptr noundef nonnull %1) #11
  %i.ag = tail call ptr @sdsdup(ptr noundef %i.af) #11
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !96
  %i.ai = tail call ptr @listAddNodeTail(ptr noundef %i.ah, ptr noundef %i.ag) #11 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %activeDefragAlloc.exit.thread
  tail call void @defragRadixTree(ptr noundef nonnull %.0, i32 noundef 1, ptr noundef null, ptr noundef null)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %defragLater.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !161 ; 2 uses
  %.not31 = icmp eq ptr %i.ak, null
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.m, ptr %i.al, align 8, !tbaa !149
  tail call void @defragRadixTree(ptr noundef nonnull %i.aj, i32 noundef 0, ptr noundef nonnull @defragStreamConsumerGroup, ptr noundef nonnull %.0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !162 ; 2 uses
  %.not32 = icmp eq ptr %i.an, null
  br i1 %.not32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !149
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !152
  %.not33 = icmp eq ptr %i.aq, null
  br i1 %.not33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @defragStreamIdmpProducers(ptr noundef nonnull %.0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

declare i64 @raxSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @defragModule(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.redisObject, align 8        ; 5 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1040) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 2147483136, ptr %3, align 8
  %i.d = tail call ptr @kvobjGetKey(ptr noundef nonnull %2) #11
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !163
  %i.h = call i32 @moduleDefragValue(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %i.g) #11
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %defragLater.exit

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @listCreate() #11               ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @sdsfreegeneric, ptr %i.l, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !101
  br label %defragLater.exit

defragLater.exit:                                 ; preds = %bb.d, %bb.e
  %i.n = call ptr @kvobjGetKey(ptr noundef nonnull %2) #11
  %i.o = call ptr @sdsdup(ptr noundef %i.n) #11
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.q = call ptr @listAddNodeTail(ptr noundef %i.p, ptr noundef %i.o) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %defragLater.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare i32 @moduleDefragValue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @activeDefragKvobj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 2147483392
  %.not = icmp eq i64 %i.b, 256
  %2 = lshr i64 %i.a, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %.not, label %bb.b, label %activeDefragAllocWithoutFree.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 255
  %or.cond = icmp eq i64 %i.c, 128
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nsw i64 %i.f, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.019 = phi i64 [ %i.h, %bb.c ], [ -9223372036854775808, %bb.b ] ; 2 uses
  %i.i = and i32 %3, 255
  %i.j = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.k = shl nuw nsw i32 %i.j, 3
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 6 uses
  %.not21 = icmp eq i32 %1, 0
  %i.o = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %i.n) #11
  %.not.i.i = icmp eq i32 %i.o, 0                 ; 2 uses
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %bb.f, label %activeDefragAllocWithoutFree.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.q = add nsw i64 %i.p, 1
  store i64 %i.q, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAllocWithoutFree.exit.thread

bb.g:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %activeDefragAllocWithoutFree.exit.thread.i, label %activeDefragAllocWithoutFree.exit.i

activeDefragAllocWithoutFree.exit.thread.i:       ; preds = %bb.g
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.s = add nsw i64 %i.r, 1
  store i64 %i.s, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAllocWithoutFree.exit.thread

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.g
  %i.t = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.n) #11 ; 2 uses
  %i.u = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.t) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.n, i64 %i.t, i1 false)
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.w = add nsw i64 %i.v, 1
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i25 = icmp eq ptr %i.u, null
  br i1 %.not.i25, label %activeDefragAllocWithoutFree.exit.thread, label %activeDefragAllocWithoutFree.exit.thread28

activeDefragAllocWithoutFree.exit.thread28:       ; preds = %activeDefragAllocWithoutFree.exit.i
  tail call void @zfree_no_tcache(ptr noundef nonnull %i.n) #11
  br label %bb.h

activeDefragAllocWithoutFree.exit:                ; preds = %bb.e
  %i.x = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.n) #11 ; 2 uses
  %i.y = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.x) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %i.n, i64 %i.x, i1 false)
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.aa = add nsw i64 %i.z, 1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not22 = icmp eq ptr %i.y, null
  br i1 %.not22, label %activeDefragAllocWithoutFree.exit.thread, label %bb.h

bb.h:                                             ; preds = %activeDefragAllocWithoutFree.exit.thread28, %activeDefragAllocWithoutFree.exit
  %.02031 = phi ptr [ %i.u, %activeDefragAllocWithoutFree.exit.thread28 ], [ %i.y, %activeDefragAllocWithoutFree.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.02031, i64 %i.l ; 4 uses
  %.not23 = icmp eq i64 %.019, -9223372036854775808
  br i1 %.not23, label %activeDefragAllocWithoutFree.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add nsw i64 %.019, %i.ac
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !52
  br label %activeDefragAllocWithoutFree.exit.thread

activeDefragAllocWithoutFree.exit.thread:         ; preds = %activeDefragAllocWithoutFree.exit.i, %activeDefragAllocWithoutFree.exit.thread.i, %bb.f, %activeDefragAllocWithoutFree.exit, %bb.i, %bb.h, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %activeDefragAllocWithoutFree.exit ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ], [ null, %bb.f ], [ null, %activeDefragAllocWithoutFree.exit.thread.i ], [ null, %activeDefragAllocWithoutFree.exit.i ]
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
  %3 = lshr i64 %i.v, 32
  %4 = trunc nuw i64 %3 to i32
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
  %i.ad = and i32 %4, 255
  %i.ae = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = shl nuw nsw i32 %i.ae, 3
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.c, i64 %i.ah ; 4 uses
  %i.aj = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %i.ai) #11
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %activeDefragAllocWithoutFree.exit.thread.i.i, label %activeDefragAllocWithoutFree.exit.i.i

activeDefragAllocWithoutFree.exit.thread.i.i:     ; preds = %bb.k
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragKvobj.exit.thread

activeDefragAllocWithoutFree.exit.i.i:            ; preds = %bb.k
  %i.am = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.ai) #11 ; 2 uses
  %i.an = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.am) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ai, i64 %i.am, i1 false)
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i25.i = icmp eq ptr %i.an, null
  br i1 %.not.i25.i, label %activeDefragKvobj.exit.thread, label %activeDefragAllocWithoutFree.exit.thread28.i

activeDefragAllocWithoutFree.exit.thread28.i:     ; preds = %activeDefragAllocWithoutFree.exit.i.i
  tail call void @zfree_no_tcache(ptr noundef nonnull %i.ai) #11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag ; 6 uses
  %.not23.i = icmp eq i64 %.019.i, -9223372036854775808
  br i1 %.not23.i, label %activeDefragKvobj.exit, label %activeDefragKvobj.exit.thread147

activeDefragKvobj.exit.thread147:                 ; preds = %activeDefragAllocWithoutFree.exit.thread28.i
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add nsw i64 %.019.i, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !52
  br label %activeDefragKvobj.exit

activeDefragKvobj.exit:                           ; preds = %activeDefragAllocWithoutFree.exit.thread28.i, %activeDefragKvobj.exit.thread147
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !171
  call void @kvstoreDictSetAtLink(ptr noundef %i.av, i32 noundef %i.j, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.a, i32 noundef 0) #11
  br i1 %.not96, label %activeDefragKvobj.exit.thread, label %bb.l

bb.l:                                             ; preds = %activeDefragKvobj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !170
  call void @kvstoreDictSetAtLink(ptr noundef %i.ax, i32 noundef %i.j, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.b, i32 noundef 0) #11
  br label %activeDefragKvobj.exit.thread

activeDefragKvobj.exit.thread:                    ; preds = %activeDefragAllocWithoutFree.exit.i.i, %activeDefragAllocWithoutFree.exit.thread.i.i, %bb.h, %bb.g, %activeDefragKvobj.exit, %bb.l
  %.082 = phi ptr [ %i.c, %activeDefragAllocWithoutFree.exit.i.i ], [ %i.aq, %bb.l ], [ %i.aq, %activeDefragKvobj.exit ], [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ %i.c, %activeDefragAllocWithoutFree.exit.thread.i.i ] ; 15 uses
  %i.ay = load i64, ptr %.082, align 8            ; 2 uses
  %i.az = trunc i64 %i.ay to i32                  ; 5 uses
  %i.ba = and i32 %i.az, 15
  switch i32 %i.ba, label %bb.ao [
    i32 0, label %bb.m
    i32 1, label %bb.p
    i32 2, label %bb.u
    i32 3, label %bb.z
    i32 4, label %bb.ae
    i32 6, label %bb.am
    i32 5, label %bb.an
  ]

bb.m:                                             ; preds = %activeDefragKvobj.exit.thread
  %i.bb = and i64 %i.ay, 2147483632
  %or.cond = icmp eq i64 %i.bb, 256
  br i1 %or.cond, label %bb.n, label %activeDefragAlloc.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52 ; 2 uses
  %i.be = call ptr @sdsAllocPtr(ptr noundef %i.bd) #11 ; 5 uses
  %i.bf = call i32 @je_get_defrag_hint(ptr noundef %i.be) #11
  %.not.i.i.i109 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i109, label %activeDefragAllocWithoutFree.exit.thread.i.i112, label %activeDefragAllocWithoutFree.exit.i.i110

activeDefragAllocWithoutFree.exit.thread.i.i112:  ; preds = %bb.n
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.bh = add nsw i64 %i.bg, 1
  store i64 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i.i110:         ; preds = %bb.n
  %i.bi = call i64 @je_malloc_usable_size(ptr noundef %i.be) #11 ; 2 uses
  %i.bj = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.bi) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.be, i64 %i.bi, i1 false)
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.bl = add nsw i64 %i.bk, 1
  store i64 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %activeDefragAlloc.exit.thread, label %bb.o

bb.o:                                             ; preds = %activeDefragAllocWithoutFree.exit.i.i110
  call void @zfree_no_tcache(ptr noundef %i.be) #11
  %i.bm = ptrtoint ptr %i.bd to i64
  %i.bn = ptrtoint ptr %i.be to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bo
  store ptr %i.bp, ptr %i.bc, align 8, !tbaa !52
  br label %activeDefragAlloc.exit.thread

bb.p:                                             ; preds = %activeDefragKvobj.exit.thread
  %i.bq = lshr i32 %i.az, 4
  %i.br = and i32 %i.bq, 15
  switch i32 %i.br, label %bb.t [
    i32 9, label %bb.q
    i32 11, label %bb.r
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
  %i.cb = lshr i32 %i.az, 4
  %i.cc = and i32 %i.cb, 15
  switch i32 %i.cc, label %bb.y [
    i32 2, label %bb.v
    i32 6, label %bb.w
    i32 11, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  call void @defragSet(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.w:                                             ; preds = %bb.u, %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !52 ; 4 uses
  %i.cf = call i32 @je_get_defrag_hint(ptr noundef %i.ce) #11
  %.not.i.i115 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i115, label %activeDefragAllocWithoutFree.exit.thread.i119, label %activeDefragAllocWithoutFree.exit.i116

activeDefragAllocWithoutFree.exit.thread.i119:    ; preds = %bb.w
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.ch = add nsw i64 %i.cg, 1
  store i64 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i116:           ; preds = %bb.w
  %i.ci = call i64 @je_malloc_usable_size(ptr noundef %i.ce) #11 ; 2 uses
  %i.cj = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.ci) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ce, i64 %i.ci, i1 false)
  %i.ck = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.cl = add nsw i64 %i.ck, 1
  store i64 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i117 = icmp eq ptr %i.cj, null
  br i1 %.not.i117, label %activeDefragAlloc.exit.thread, label %bb.x

bb.x:                                             ; preds = %activeDefragAllocWithoutFree.exit.i116
  call void @zfree_no_tcache(ptr noundef %i.ce) #11
  store ptr %i.cj, ptr %i.cd, align 8, !tbaa !52
  br label %activeDefragAlloc.exit.thread

bb.y:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1158, ptr noundef nonnull @.str.21) #11
  call void @abort() #12
  unreachable

bb.z:                                             ; preds = %activeDefragKvobj.exit.thread
  %i.cm = lshr i32 %i.az, 4
  %i.cn = and i32 %i.cm, 15
  switch i32 %i.cn, label %bb.ad [
    i32 11, label %bb.aa
end_hunk_0
begin_hunk_1_@defragLaterItem:bb.a
  %6 = alloca %struct.dictDefragFunctions, align 8 ; 4 uses
  %7 = alloca %struct.redisObject, align 8        ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %trunc = trunc i64 %i.a to i8
  switch i8 %trunc, label %bb.f [
    i8 -111, label %bb.c
    i8 34, label %scanLaterSet.exit
    i8 115, label %scanLaterZset.exit
    i8 36, label %bb.d
    i8 -90, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @scanLaterList(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  %i.c = trunc nuw nsw i64 %i.b to i32
  br label %bb.j

scanLaterSet.exit:                                ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.scanLaterSet.defragfns, i64 24, i1 false)
  %i.f = load i64, ptr %1, align 8, !tbaa !87
  %i.g = call i64 @dictScanDefrag(ptr noundef %i.e, i64 noundef %i.f, ptr noundef nonnull @scanCallbackCountScanned, ptr noundef nonnull %6, ptr noundef null) #11
  store i64 %i.g, ptr %1, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.j

scanLaterZset.exit:                               ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr %i.i, ptr %4, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.defragZsetSkiplist.defragfns, i64 24, i1 false)
  %i.k = load i64, ptr %1, align 8, !tbaa !87
  %i.l = call i64 @dictScanDefrag(ptr noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @scanZsetCallback, ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  store i64 %i.l, ptr %1, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  tail call void @scanLaterHash(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.m = tail call i32 @scanLaterStreamListpacks(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.n = and i64 %i.a, 15
  %i.o = icmp eq i64 %i.n, 5
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store i64 2147483136, ptr %7, align 8
  %i.p = tail call ptr @kvobjGetKey(ptr noundef nonnull %0) #11
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !52
  %i.r = call i32 @moduleLateDefrag(ptr noundef nonnull %7, ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 0, ptr %1, align 8, !tbaa !87
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %scanLaterSet.exit, %bb.d, %bb.h, %scanLaterZset.exit, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ %i.r, %bb.g ], [ %i.m, %bb.e ], [ 0, %scanLaterZset.exit ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %scanLaterSet.exit ], [ 0, %bb.i ]
  ret i32 %.0
}

declare i32 @moduleLateDefrag(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @computeDefragCycles() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call float @getAllocatorFragmentation(ptr noundef nonnull %i.a) ; 3 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 140), align 4, !tbaa !183 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6480), align 8, !tbaa !184 ; 2 uses
  %i.d = sitofp i32 %.pre to float                ; 2 uses
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt float %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !87
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6472), align 8, !tbaa !185
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6488), align 8, !tbaa !186 ; 4 uses
  %i.j = sitofp i32 %i.i to float
  %i.k = fsub float %i.b, %i.d
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6492), align 4, !tbaa !187 ; 2 uses
  %i.m = sub nsw i32 %i.l, %i.i
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %i.k, %i.n
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6484), align 4, !tbaa !188
  %i.q = sub nsw i32 %i.p, %.pre
  %i.r = sitofp i32 %i.q to float
  %i.s = fdiv float %i.o, %i.r
  %i.t = fadd float %i.s, %i.j
  %i.u = fptosi float %i.t to i32
  %i.v = load float, ptr @defrag.4, align 4, !tbaa !189
  %i.w = sitofp i32 %i.u to float
  %i.x = fmul float %i.v, %i.w
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %i.z = icmp sgt i32 %i.i, %i.y
  %i.aa = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.y)
  %i.ab = select i1 %i.z, i32 %i.i, i32 %i.aa     ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, %i.c
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6464), align 8
  %i.ae = icmp ne i32 %i.ad, 0
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6464), align 8, !tbaa !192
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !177
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d
  %i.ah = load i64, ptr @defrag.7, align 8, !tbaa !193
  %i.ai = icmp slt i64 %i.ah, 1
  %.str.29..str.28 = select i1 %i.ai, ptr @.str.29, ptr @.str.28
  %i.aj = fpext float %i.b to double
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !87
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull %.str.29..str.28, double noundef %i.aj, i64 noundef %i.ak, i32 noundef %i.ab) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.sink.split
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @server, i64 140), align 4, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @activeDefragSubexpiresOB(ptr noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %i.c = tail call ptr @kvobjGetKey(ptr noundef %0) #11 ; 3 uses
  %i.d = tail call i32 @calculateKeySlot(ptr noundef %i.c) #11 ; 4 uses
  %i.e = load i64, ptr %0, align 8
  %i.f = and i64 %i.e, 15
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %bb.c, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1508) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @kvobjGetExpire(ptr noundef nonnull %0) #11
  %.not = icmp eq i64 %i.h, -1                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170
  %i.k = tail call ptr @kvstoreDictFindLink(ptr noundef %i.j, i32 noundef %i.d, ptr noundef %i.c, ptr noundef null) #11 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !49
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1516) #11
  tail call void @abort() #12
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr %0, align 8                ; 3 uses
  %i.m = and i64 %i.l, 2147483392
  %.not.i = icmp eq i64 %i.m, 256
  %2 = lshr i64 %i.l, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %.not.i, label %bb.g, label %activeDefragKvobj.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = and i64 %i.l, 255
  %or.cond.i = icmp eq i64 %i.n, 128
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub nsw i64 %i.q, %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.019.i = phi i64 [ %i.s, %bb.h ], [ -9223372036854775808, %bb.g ] ; 2 uses
  %i.t = and i32 %3, 255
  %i.u = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.t)
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x ; 3 uses
  %i.z = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %i.y) #11
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %bb.j, label %activeDefragAllocWithoutFree.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragKvobj.exit.thread

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.i
  %i.ac = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.y) #11 ; 2 uses
  %i.ad = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.ac) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.y, i64 %i.ac, i1 false)
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not22.i = icmp eq ptr %i.ad, null
  br i1 %.not22.i, label %activeDefragKvobj.exit.thread, label %bb.k

bb.k:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.w ; 5 uses
  %.not23.i = icmp eq i64 %.019.i, -9223372036854775808
  br i1 %.not23.i, label %activeDefragKvobj.exit, label %activeDefragKvobj.exit.thread28

activeDefragKvobj.exit.thread28:                  ; preds = %bb.k
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add nsw i64 %.019.i, %i.ah
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !52
  br label %activeDefragKvobj.exit

activeDefragKvobj.exit:                           ; preds = %bb.k, %activeDefragKvobj.exit.thread28
  %i.al = load ptr, ptr %1, align 8, !tbaa !171
  %i.am = tail call ptr @kvstoreDictFindLink(ptr noundef %i.al, i32 noundef %i.d, ptr noundef %i.c, ptr noundef null) #11 ; 2 uses
  store ptr %i.am, ptr %i.a, align 8, !tbaa !49
  %.not24 = icmp eq ptr %i.am, null
  br i1 %.not24, label %bb.l, label %bb.m, !prof !51

bb.l:                                             ; preds = %activeDefragKvobj.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1522) #11
  tail call void @abort() #12
  unreachable

bb.m:                                             ; preds = %activeDefragKvobj.exit
  %i.an = load ptr, ptr %1, align 8, !tbaa !171
  call void @kvstoreDictSetAtLink(ptr noundef %i.an, i32 noundef %i.d, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a, i32 noundef 0) #11
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !170
  call void @kvstoreDictSetAtLink(ptr noundef %i.ap, i32 noundef %i.d, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.b, i32 noundef 0) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %4 = load i32, ptr %.shift.i, align 4
  %i.aq = and i32 %4, 255
  %i.ar = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.aq)
  %i.as = shl nuw nsw i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  call void @zfree_no_tcache(ptr noundef nonnull %i.av) #11
  br label %activeDefragKvobj.exit.thread

activeDefragKvobj.exit.thread:                    ; preds = %bb.j, %activeDefragAllocWithoutFree.exit.i, %bb.f, %bb.o
  %.1.i27 = phi ptr [ null, %bb.j ], [ %i.ag, %bb.o ], [ null, %bb.f ], [ null, %activeDefragAllocWithoutFree.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.1.i27
}

declare i32 @calculateKeySlot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @defragWhileBlocked() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @defrag.7, align 8, !tbaa !193 ; 2 uses
  %i.b = icmp slt i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @activeDefragCycle()
  %.pre = load i64, ptr @defrag.7, align 8, !tbaa !193 ; 2 uses
  %i.c = icmp slt i64 %.pre, 1
  br i1 %i.c, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.e = tail call i32 @activeDefragTimeProc(ptr poison, i64 poison, ptr poison)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !194
  %i.h = tail call i32 @aeDeleteTimeEvent(ptr noundef %i.g, i64 noundef %i.d) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @activeDefragCycle() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6448), align 8, !tbaa !195
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @hasActiveChildProcess() #11
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @computeDefragCycles()
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 140), align 4, !tbaa !183
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = load i64, ptr @defrag.7, align 8
  %i.f = icmp slt i64 %i.e, 1
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  tail call void @moduleDefragStart() #11, !inline_history !196
  %i.g = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 1886) #11, !inline_history !196
  tail call void @abort() #12, !inline_history !196
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = tail call ptr @listCreate() #11, !inline_history !196 ; 2 uses
  store ptr %i.i, ptr @defrag.5, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @freeDefragContext, ptr %i.j, align 8, !tbaa !99
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !198
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %i.m = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #13, !inline_history !196 ; 6 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8120), align 8, !tbaa !199
  store ptr %i.n, ptr %i.m, align 8, !tbaa !200
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 -2, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i, align 4
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @getClientPubSubChannels, ptr %i.o, align 8, !tbaa !181
  %i.p = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 4 uses
  store ptr @defragStagePubsubKvstore, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @zfree, ptr %i.q, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.m, ptr %i.r, align 8, !tbaa !82
  %i.s = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.t = tail call ptr @listAddNodeTail(ptr noundef %i.s, ptr noundef nonnull %i.p) #11, !inline_history !196 ; 0 uses
  %i.u = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #13, !inline_history !196 ; 6 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !201
  store ptr %i.v, ptr %i.u, align 8, !tbaa !200
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 -2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @getClientPubSubShardChannels, ptr %i.w, align 8, !tbaa !181
  %i.x = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 4 uses
  store ptr @defragStagePubsubKvstore, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @zfree, ptr %i.y, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.u, ptr %i.z, align 8, !tbaa !82
  %i.aa = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.ab = tail call ptr @listAddNodeTail(ptr noundef %i.aa, ptr noundef nonnull %i.x) #11, !inline_history !196 ; 0 uses
  %i.ac = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store ptr @defragLuaScripts, ptr %i.ac, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.af = tail call ptr @listAddNodeTail(ptr noundef %i.ae, ptr noundef nonnull %i.ac) #11, !inline_history !196 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  %i.ag = load ptr, ptr @modules, align 8, !tbaa !202
  call void @dictInitIterator(ptr noundef nonnull %0, ptr noundef %i.ag) #11, !inline_history !196
  %i.ah = call ptr @dictNext(ptr noundef nonnull %0) #11, !inline_history !196 ; 2 uses
  %.not4549.i = icmp eq ptr %i.ah, null
  br i1 %.not4549.i, label %beginDefragCycle.exit, label %.lr.ph51.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.f ] ; 3 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !166
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.ai, i64 %indvars.iv.i ; 3 uses
  %i.ak = tail call noalias dereferenceable_or_null(48) ptr @zcalloc(i64 noundef 48) #13, !inline_history !196 ; 6 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !171
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !200
  %.sroa.230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 -2, ptr %.sroa.230.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %.sroa.331.0..sroa_idx.i, align 4
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %.sroa.432.0..sroa_idx.i, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  store i32 %i.an, ptr %i.am, align 8, !tbaa !167
  %i.ao = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store <2 x ptr> <ptr @defragStageDbKeys, ptr @freeDefragKeysContext>, ptr %i.ao, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !82
  %i.aq = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.ar = tail call ptr @listAddNodeTail(ptr noundef %i.aq, ptr noundef nonnull %i.ao) #11, !inline_history !196 ; 0 uses
  %i.as = tail call noalias dereferenceable_or_null(48) ptr @zcalloc(i64 noundef 48) #13, !inline_history !196 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !170
  store ptr %i.au, ptr %i.as, align 8, !tbaa !200
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 -2, ptr %.sroa.223.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.324.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %.sroa.324.0..sroa_idx.i, align 4
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 0, ptr %.sroa.425.0..sroa_idx.i, align 8, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 %i.an, ptr %i.av, align 8, !tbaa !167
  %i.aw = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store <2 x ptr> <ptr @defragStageExpiresKvstore, ptr @freeDefragKeysContext>, ptr %i.aw, align 8, !tbaa !105
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !82
  %i.ay = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.az = tail call ptr @listAddNodeTail(ptr noundef %i.ay, ptr noundef nonnull %i.aw) #11, !inline_history !196 ; 0 uses
  %i.ba = tail call noalias dereferenceable_or_null(24) ptr @zcalloc(i64 noundef 24) #13, !inline_history !196 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !203
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !204
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 -1, ptr %i.bd, align 8, !tbaa !206
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 0, ptr %i.be, align 8, !tbaa !207
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 %i.an, ptr %i.bf, align 4, !tbaa !208
  %i.bg = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store <2 x ptr> <ptr @defragStageSubexpires, ptr @zfree>, ptr %i.bg, align 8, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.ba, ptr %i.bh, align 8, !tbaa !82
  %i.bi = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.bj = tail call ptr @listAddNodeTail(ptr noundef %i.bi, ptr noundef nonnull %i.bg) #11, !inline_history !196 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !198
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i, %i.bl
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !209
end_hunk_1
