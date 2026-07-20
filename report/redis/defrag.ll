inline.NumInlined: 88
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@activeDefragStringObEx:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ai = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %.021) #11
  %.not.i.i37 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i37, label %activeDefragAllocWithoutFree.exit.thread.i41, label %activeDefragAllocWithoutFree.exit.i38

activeDefragAllocWithoutFree.exit.thread.i41:     ; preds = %bb.i
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit42.thread

activeDefragAllocWithoutFree.exit.i38:            ; preds = %bb.i
  %i.al = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %.021) #11 ; 2 uses
  %i.am = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.al) #11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 1 %.021, i64 %i.al, i1 false)
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i39 = icmp eq ptr %i.am, null
  br i1 %.not.i39, label %activeDefragAlloc.exit42.thread, label %bb.j

bb.j:                                             ; preds = %activeDefragAllocWithoutFree.exit.i38
  tail call void @zfree_no_tcache(ptr noundef nonnull %.021) #11
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = ptrtoint ptr %.021 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = add nsw i64 %i.ar, %i.as
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !52
  br label %activeDefragAlloc.exit42.thread

bb.k:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 323, ptr noundef nonnull @.str.2) #11
  tail call void @abort() #12
  unreachable

activeDefragAlloc.exit42.thread:                  ; preds = %activeDefragAllocWithoutFree.exit.i.i, %activeDefragAllocWithoutFree.exit.thread.i.i, %activeDefragAllocWithoutFree.exit.i38, %activeDefragAllocWithoutFree.exit.thread.i41, %bb.e, %bb.h, %bb.j, %bb.f, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.022, %bb.e ], [ null, %activeDefragAllocWithoutFree.exit.i38 ], [ %.022, %bb.f ], [ %.022, %bb.h ], [ %i.am, %bb.j ], [ null, %activeDefragAllocWithoutFree.exit.thread.i41 ], [ %.022, %activeDefragAllocWithoutFree.exit.thread.i.i ], [ %.022, %activeDefragAllocWithoutFree.exit.i.i ]
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
  br i1 %.not23, label %activeDefragAlloc.exit36.thread, label %bb.e

bb.e:                                             ; preds = %activeDefragAlloc.exit30.thread
  %i.s = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %i.r) #11
  %.not.i.i31 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i31, label %activeDefragAllocWithoutFree.exit.thread.i35, label %activeDefragAllocWithoutFree.exit.i32

activeDefragAllocWithoutFree.exit.thread.i35:     ; preds = %bb.e
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.u = add nsw i64 %i.t, 1
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragAlloc.exit36.thread

activeDefragAllocWithoutFree.exit.i32:            ; preds = %bb.e
  %i.v = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.w = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.v) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.r, i64 %i.v, i1 false)
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not.i33 = icmp eq ptr %i.w, null
  br i1 %.not.i33, label %activeDefragAlloc.exit36.thread, label %bb.f

bb.f:                                             ; preds = %activeDefragAllocWithoutFree.exit.i32
  tail call void @zfree_no_tcache(ptr noundef nonnull %i.r) #11
  store ptr %i.w, ptr %i.q, align 8, !tbaa !49
  br label %activeDefragAlloc.exit36.thread

activeDefragAlloc.exit36.thread:                  ; preds = %activeDefragAllocWithoutFree.exit.i32, %activeDefragAllocWithoutFree.exit.thread.i35, %activeDefragAlloc.exit30.thread, %bb.f, %activeDefragAlloc.exit
  ret ptr %.0.i6.i
}

; Function Attrs: nounwind uwtable
define dso_local void @zslUpdateNode(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %4 = and i32 %i.b, 2147483646
  %unroll_iter = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %bb.b, label %.lr.ph.1

bb.b:                                             ; preds = %.lr.ph
  store ptr %2, ptr %i.h, align 8, !tbaa !62
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.1
  store ptr %2, ptr %i.n, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !64

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = trunc i32 %i.b to i1
  br i1 %lcmp.mod.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.epil.init ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  store ptr %2, ptr %i.t, align 8, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !66
  %.not = icmp eq ptr %i.w, %1
  br i1 %.not, label %bb.f, label %bb.g, !prof !51

bb.f:                                             ; preds = %._crit_edge
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 392) #11
  tail call void @abort() #12
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 2 uses
  %.not23 = icmp eq ptr %i.y, null
  br i1 %.not23, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %bb.j, label %bb.i, !prof !67

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 394) #11
  tail call void @abort() #12
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr %2, ptr %i.z, align 8, !tbaa !61
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %bb.m, label %bb.l, !prof !67

bb.l:                                             ; preds = %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 397) #11
  tail call void @abort() #12
  unreachable

bb.m:                                             ; preds = %bb.k
  store ptr %2, ptr %i.ac, align 8, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @activeDefragZsetNode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca [32 x ptr], align 16              ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !49
  %i.c = tail call ptr @dictGetKey(ptr noundef %1) #11 ; 8 uses
  %i.d = tail call i32 @je_get_defrag_hint(ptr noundef %i.c) #11
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %activeDefragAllocWithoutFree.exit.thread, label %activeDefragAllocWithoutFree.exit

activeDefragAllocWithoutFree.exit.thread:         ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.f = add nsw i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %bb.e

activeDefragAllocWithoutFree.exit:                ; preds = %bb.a
  %i.g = tail call i64 @je_malloc_usable_size(ptr noundef %i.c) #11 ; 2 uses
  %i.h = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.g) #11 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.c, i64 %i.g, i1 false)
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.j = add nsw i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %activeDefragAllocWithoutFree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.k = load double, ptr %i.h, align 8, !tbaa !69 ; 2 uses
  %i.l = tail call ptr @zslGetNodeElement(ptr noundef nonnull %i.h) #11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.b
  %i.s = zext nneg i32 %i.q to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %indvars.iv = phi i64 [ %i.s, %.preheader.preheader ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %.048 = phi ptr [ %i.o, %.preheader.preheader ], [ %.1.lcssa, %.critedge ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.t = getelementptr [16 x i8], ptr %.048, i64 %indvars.iv ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 3 uses
  %.not3539 = icmp eq ptr %i.u, null
  %.not3640 = icmp eq ptr %i.u, %i.c
  %or.cond41 = or i1 %.not3539, %.not3640
  br i1 %or.cond41, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.v = tail call i32 @zslCompareWithNode(double noundef %i.k, ptr noundef %i.l, ptr noundef nonnull %i.u) #11
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph56, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph56
  %i.x = tail call i32 @zslCompareWithNode(double noundef %i.k, ptr noundef %i.l, ptr noundef nonnull %i.ac) #11
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph56, label %.critedge, !llvm.loop !73

.lr.ph56:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.z = phi ptr [ %i.ab, %.lr.ph ], [ %i.t, %.lr.ph.preheader ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62  ; 3 uses
  %i.ab = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62 ; 3 uses
  %.not35 = icmp eq ptr %i.ac, null
  %.not36 = icmp eq ptr %i.ac, %i.c
  %or.cond = or i1 %.not35, %.not36
  br i1 %or.cond, label %..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !73

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph56
  br label %.critedge, !llvm.loop !73

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %.preheader
  %.1.lcssa = phi ptr [ %.048, %.preheader ], [ %.048, %.lr.ph.preheader ], [ %i.aa, %..critedge.loopexit_crit_edge ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.ad, align 8, !tbaa !61
  %i.ae = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ae, label %.preheader, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %.0.lcssa = phi ptr [ %i.o, %bb.b ], [ %.1.lcssa, %.critedge ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = icmp eq ptr %i.ag, %i.c
  %i.aj = and i1 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c, !prof !67

bb.c:                                             ; preds = %._crit_edge
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 428) #11
  tail call void @abort() #12
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !70
  call void @zslUpdateNode(ptr noundef %i.ak, ptr noundef %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b)
  %i.al = load ptr, ptr %0, align 8, !tbaa !75
  call void @dictSetKeyAtLink(ptr noundef %i.al, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 0) #11
  call void @zfree_no_tcache(ptr noundef %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.e

bb.e:                                             ; preds = %activeDefragAllocWithoutFree.exit.thread, %activeDefragAllocWithoutFree.exit, %bb.d
  ret void
}

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #2

declare ptr @zslGetNodeElement(ptr noundef) local_unnamed_addr #2

declare i32 @zslCompareWithNode(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @activeDefragSdsDictCallback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @activeDefragLuaScriptDictCallback(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @dictGetVal(ptr noundef %1) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@defragPubsubScanCallback:bb.a

bb.f:                                             ; preds = %bb.e
  call void @_serverAssert(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 1273) #11
  call void @abort() #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !181
  %i.ab = call ptr %i.aa(ptr noundef %i.v) #11
  call void @dictSetKey(ptr noundef %i.ab, ptr noundef nonnull %i.z, ptr noundef nonnull %i.p) #11
  %i.ac = call ptr @dictNext(ptr noundef nonnull %3) #11 ; 2 uses
  %.not36 = icmp eq ptr %i.ac, null
  br i1 %.not36, label %._crit_edge, label %bb.e, !llvm.loop !182

._crit_edge:                                      ; preds = %bb.g, %bb.d
  call void @dictResetIterator(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.c
  %i.ad = call ptr @dictDefragTables(ptr noundef %i.c) ; 2 uses
  %.not37 = icmp eq ptr %i.ad, null
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !180
  call void @kvstoreDictSetVal(ptr noundef %i.a, i32 noundef %i.af, ptr noundef %1, ptr noundef nonnull %i.ad) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2696), align 8, !tbaa !104
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2696), align 8, !tbaa !104
  ret void
}

declare void @kvstoreDictSetKey(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictNext(ptr noundef) local_unnamed_addr #2

declare i64 @dictGetHash(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictFindByHashAndPtr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @dictSetKey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #2

declare void @kvstoreDictSetVal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @defragLaterItem(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.scanLaterZsetData, align 8  ; 4 uses
  %5 = alloca %struct.dictDefragFunctions, align 8 ; 4 uses
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
  %0 = icmp sgt i64 %i.ah, 0
  %.str.29..str.28 = select i1 %0, ptr @.str.28, ptr @.str.29
  %i.ai = fpext float %i.b to double
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !87
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull %.str.29..str.28, double noundef %i.ai, i64 noundef %i.aj, i32 noundef %i.ab) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.sink.split
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @server, i64 140), align 4, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @activeDefragSubexpiresOB(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
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
  %i.t = lshr i64 %i.l, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = and i32 %i.u, 255
  %i.w = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.v)
  %i.x = shl nuw nsw i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z ; 3 uses
  %i.ab = tail call i32 @je_get_defrag_hint(ptr noundef nonnull %i.aa) #11
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.j, label %activeDefragAllocWithoutFree.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  br label %activeDefragKvobj.exit.thread

activeDefragAllocWithoutFree.exit.i:              ; preds = %bb.i
  %i.ae = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.aa) #11 ; 2 uses
  %i.af = tail call noalias ptr @zmalloc_no_tcache(i64 noundef %i.ae) #11 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.aa, i64 %i.ae, i1 false)
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %.not22.i = icmp eq ptr %i.af, null
  br i1 %.not22.i, label %activeDefragKvobj.exit.thread, label %bb.k

bb.k:                                             ; preds = %activeDefragAllocWithoutFree.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.y ; 5 uses
  %.not23.i = icmp eq i64 %.019.i, -9223372036854775808
  br i1 %.not23.i, label %activeDefragKvobj.exit, label %activeDefragKvobj.exit.thread28

activeDefragKvobj.exit.thread28:                  ; preds = %bb.k
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add nsw i64 %.019.i, %i.aj
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !52
  br label %activeDefragKvobj.exit

activeDefragKvobj.exit:                           ; preds = %bb.k, %activeDefragKvobj.exit.thread28
  %i.an = load ptr, ptr %1, align 8, !tbaa !171
  %i.ao = tail call ptr @kvstoreDictFindLink(ptr noundef %i.an, i32 noundef %i.d, ptr noundef %i.c, ptr noundef null) #11 ; 2 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !49
  %.not24 = icmp eq ptr %i.ao, null
  br i1 %.not24, label %bb.l, label %bb.m, !prof !51

bb.l:                                             ; preds = %activeDefragKvobj.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1522) #11
  tail call void @abort() #12
  unreachable

bb.m:                                             ; preds = %activeDefragKvobj.exit
  %i.ap = load ptr, ptr %1, align 8, !tbaa !171
  call void @kvstoreDictSetAtLink(ptr noundef %i.ap, i32 noundef %i.d, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.a, i32 noundef 0) #11
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !170
  call void @kvstoreDictSetAtLink(ptr noundef %i.ar, i32 noundef %i.d, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.b, i32 noundef 0) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = load i64, ptr %0, align 8
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = and i32 %i.au, 255
  %i.aw = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.av)
  %i.ax = shl nuw nsw i32 %i.aw, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  call void @zfree_no_tcache(ptr noundef nonnull %i.ba) #11
  br label %activeDefragKvobj.exit.thread

activeDefragKvobj.exit.thread:                    ; preds = %bb.j, %activeDefragAllocWithoutFree.exit.i, %bb.f, %bb.o
  %.1.i27 = phi ptr [ null, %bb.j ], [ %i.ai, %bb.o ], [ null, %bb.f ], [ null, %activeDefragAllocWithoutFree.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.1.i27
}

declare i32 @calculateKeySlot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @defragWhileBlocked() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @defrag.7, align 8, !tbaa !193 ; 2 uses
  %0 = icmp sgt i64 %i.a, 0
  br i1 %0, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @activeDefragCycle()
  %.pre = load i64, ptr @defrag.7, align 8, !tbaa !193 ; 2 uses
  %1 = icmp sgt i64 %.pre, 0
  br i1 %1, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.c = tail call i32 @activeDefragTimeProc(ptr poison, i64 poison, ptr poison)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !194
  %i.f = tail call i32 @aeDeleteTimeEvent(ptr noundef %i.e, i64 noundef %i.b) #11 ; 0 uses
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
  %1 = icmp slt i32 %i.c, 1
  %i.d = load i64, ptr @defrag.7, align 8
  %2 = icmp sgt i64 %i.d, 0
  %or.cond = select i1 %1, i1 true, i1 %2
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @moduleDefragStart() #11, !inline_history !196
  %i.e = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 1886) #11, !inline_history !196
  tail call void @abort() #12, !inline_history !196
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = tail call ptr @listCreate() #11, !inline_history !196 ; 2 uses
  store ptr %i.g, ptr @defrag.5, align 8, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @freeDefragContext, ptr %i.h, align 8, !tbaa !99
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !198
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %i.k = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #13, !inline_history !196 ; 6 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8120), align 8, !tbaa !199
  store ptr %i.l, ptr %i.k, align 8, !tbaa !200
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 -2, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i, align 4
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @getClientPubSubChannels, ptr %i.m, align 8, !tbaa !181
  %i.n = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 4 uses
  store ptr @defragStagePubsubKvstore, ptr %i.n, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @zfree, ptr %i.o, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.k, ptr %i.p, align 8, !tbaa !82
  %i.q = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.r = tail call ptr @listAddNodeTail(ptr noundef %i.q, ptr noundef nonnull %i.n) #11, !inline_history !196 ; 0 uses
  %i.s = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #13, !inline_history !196 ; 6 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !201
  store ptr %i.t, ptr %i.s, align 8, !tbaa !200
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 -2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @getClientPubSubShardChannels, ptr %i.u, align 8, !tbaa !181
  %i.v = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 4 uses
  store ptr @defragStagePubsubKvstore, ptr %i.v, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @zfree, ptr %i.w, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.s, ptr %i.x, align 8, !tbaa !82
  %i.y = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.z = tail call ptr @listAddNodeTail(ptr noundef %i.y, ptr noundef nonnull %i.v) #11, !inline_history !196 ; 0 uses
  %i.aa = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store ptr @defragLuaScripts, ptr %i.aa, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.ad = tail call ptr @listAddNodeTail(ptr noundef %i.ac, ptr noundef nonnull %i.aa) #11, !inline_history !196 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  %i.ae = load ptr, ptr @modules, align 8, !tbaa !202
  call void @dictInitIterator(ptr noundef nonnull %0, ptr noundef %i.ae) #11, !inline_history !196
  %i.af = call ptr @dictNext(ptr noundef nonnull %0) #11, !inline_history !196 ; 2 uses
  %.not4549.i = icmp eq ptr %i.af, null
  br i1 %.not4549.i, label %beginDefragCycle.exit, label %.lr.ph51.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.f ] ; 3 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !166
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.ag, i64 %indvars.iv.i ; 3 uses
  %i.ai = tail call noalias dereferenceable_or_null(48) ptr @zcalloc(i64 noundef 48) #13, !inline_history !196 ; 6 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !171
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !200
  %.sroa.230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 -2, ptr %.sroa.230.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %.sroa.331.0..sroa_idx.i, align 4
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.432.0..sroa_idx.i, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !167
  %i.am = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store <2 x ptr> <ptr @defragStageDbKeys, ptr @freeDefragKeysContext>, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !82
  %i.ao = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.ap = tail call ptr @listAddNodeTail(ptr noundef %i.ao, ptr noundef nonnull %i.am) #11, !inline_history !196 ; 0 uses
  %i.aq = tail call noalias dereferenceable_or_null(48) ptr @zcalloc(i64 noundef 48) #13, !inline_history !196 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !170
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !200
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 -2, ptr %.sroa.223.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.324.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %.sroa.324.0..sroa_idx.i, align 4
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 0, ptr %.sroa.425.0..sroa_idx.i, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.al, ptr %i.at, align 8, !tbaa !167
  %i.au = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store <2 x ptr> <ptr @defragStageExpiresKvstore, ptr @freeDefragKeysContext>, ptr %i.au, align 8, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !82
  %i.aw = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.ax = tail call ptr @listAddNodeTail(ptr noundef %i.aw, ptr noundef nonnull %i.au) #11, !inline_history !196 ; 0 uses
  %i.ay = tail call noalias dereferenceable_or_null(24) ptr @zcalloc(i64 noundef 24) #13, !inline_history !196 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !203
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !204
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 -1, ptr %i.bb, align 8, !tbaa !206
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 0, ptr %i.bc, align 8, !tbaa !207
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.al, ptr %i.bd, align 4, !tbaa !208
  %i.be = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store <2 x ptr> <ptr @defragStageSubexpires, ptr @zfree>, ptr %i.be, align 8, !tbaa !105
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.ay, ptr %i.bf, align 8, !tbaa !82
  %i.bg = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.bh = tail call ptr @listAddNodeTail(ptr noundef %i.bg, ptr noundef nonnull %i.be) #11, !inline_history !196 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !198
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !209

.lr.ph51.i:                                       ; preds = %._crit_edge.i, %bb.i
  %i.bl = phi ptr [ %i.ca, %bb.i ], [ %i.af, %._crit_edge.i ]
  %i.bm = call ptr @dictGetVal(ptr noundef nonnull %i.bl) #11, !inline_history !196 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !210
  %.not46.i = icmp eq ptr %i.bo, null
  br i1 %.not46.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph51.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !213
  %.not47.i = icmp eq ptr %i.bq, null
  br i1 %.not47.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph51.i
  %i.br = call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #13, !inline_history !196 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !214
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !216
  %i.bv = call ptr @sdsnew(ptr noundef %i.bu) #11, !inline_history !196
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !217
  %i.bw = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #13, !inline_history !196 ; 3 uses
  store <2 x ptr> <ptr @defragModuleGlobals, ptr @freeDefragModelContext>, ptr %i.bw, align 8, !tbaa !105
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.br, ptr %i.bx, align 8, !tbaa !82
  %i.by = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.bz = call ptr @listAddNodeTail(ptr noundef %i.by, ptr noundef nonnull %i.bw) #11, !inline_history !196 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = call ptr @dictNext(ptr noundef nonnull %0) #11, !inline_history !196 ; 2 uses
  %.not45.i = icmp eq ptr %i.ca, null
  br i1 %.not45.i, label %beginDefragCycle.exit, label %.lr.ph51.i, !llvm.loop !218

beginDefragCycle.exit:                            ; preds = %bb.i, %._crit_edge.i
  call void @dictResetIterator(ptr noundef nonnull %0) #11, !inline_history !196
  store ptr null, ptr @defrag.6, align 8, !tbaa !219
  %i.cb = load ptr, ptr @getMonotonicUs, align 8, !tbaa !105
  %i.cc = call i64 %i.cb() #11, !inline_history !196
  store i64 %i.cc, ptr @defrag.0, align 8, !tbaa !220
  %i.cd = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  store i64 %i.cd, ptr @defrag.1, align 8, !tbaa !221
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  store i64 %i.ce, ptr @defrag.2, align 8, !tbaa !222
  %i.cf = call float @getAllocatorFragmentation(ptr noundef null), !inline_history !196
  store float %i.cf, ptr @defrag.3, align 8, !tbaa !223
  store i64 0, ptr @defrag.8, align 8, !tbaa !224
  store i64 0, ptr @defrag.9, align 8, !tbaa !225
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !194
  %i.ch = call i64 @aeCreateTimeEvent(ptr noundef %i.cg, i64 noundef 0, ptr noundef nonnull @activeDefragTimeProc, ptr noundef null, ptr noundef null) #11, !inline_history !196
  store i64 %i.ch, ptr @defrag.7, align 8, !tbaa !193
  %i.ci = load ptr, ptr @getMonotonicUs, align 8, !tbaa !105
  %i.cj = call i64 %i.ci() #11, !inline_history !226
  store i64 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2712), align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %beginDefragCycle.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activeDefragTimeProc(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
end_hunk_1
begin_hunk_2_@activeDefragTimeProc:bb.a
  store i64 0, ptr @defrag.8, align 8, !tbaa !224
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @getMonotonicUs, align 8, !tbaa !105
  %i.h = tail call i64 %i.g() #11
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 140), align 4, !tbaa !183 ; 5 uses
  %i.j = add i32 %i.i, -1
  %i.k = icmp ult i32 %i.j, 99
  br i1 %i.k, label %bb.i, label %bb.h, !prof !67

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 1719) #11
  tail call void @abort() #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = load i32, ptr @computeDefragCycleUs.prevCpuPercent, align 4, !tbaa !9
  %.not.i = icmp eq i32 %i.i, %i.l
  br i1 %.not.i, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %bb.i
  store i64 0, ptr @defrag.8, align 8, !tbaa !224
  store i32 %i.i, ptr @computeDefragCycleUs.prevCpuPercent, align 4, !tbaa !9
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %.pr.i = load i64, ptr @defrag.8, align 8, !tbaa !224
  %i.m = icmp eq i64 %.pr.i, 0
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.thread.i
  store i64 0, ptr @defrag.9, align 8, !tbaa !225
  br label %computeDefragCycleUs.exit

bb.l:                                             ; preds = %bb.j
  %i.n = load ptr, ptr @getMonotonicUs, align 8, !tbaa !105
  %i.o = tail call i64 %i.n() #11, !inline_history !228
  %i.p = load i64, ptr @defrag.8, align 8, !tbaa !224
  %i.q = sub i64 %i.o, %i.p
  %i.r = zext nneg i32 %i.i to i64
  %i.s = mul nsw i64 %i.q, %i.r
  %i.t = sub nuw nsw i32 100, %i.i
  %i.u = zext nneg i32 %i.t to i64
  %i.v = sdiv i64 %i.s, %i.u
  %i.w = load i64, ptr @defrag.9, align 8, !tbaa !225
  %i.x = sub nsw i64 %i.v, %i.w                   ; 3 uses
  store i64 0, ptr @defrag.9, align 8, !tbaa !225
  %i.y = icmp slt i64 %i.x, 500
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = sub nsw i64 500, %i.x
  store i64 %i.z, ptr @defrag.9, align 8, !tbaa !225
  br label %computeDefragCycleUs.exit

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.x, i64 5000)
  br label %computeDefragCycleUs.exit

computeDefragCycleUs.exit:                        ; preds = %bb.k, %bb.m, %bb.n
  %.1.i = phi i64 [ 500, %bb.k ], [ 500, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = add i64 %.1.i, %i.h                     ; 3 uses
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !229
  %.not18 = icmp eq i64 %i.ac, 0
  br i1 %.not18, label %bb.p, label %bb.o

bb.o:                                             ; preds = %computeDefragCycleUs.exit
  %i.ad = tail call i64 @mstime() #11
  br label %bb.p

bb.p:                                             ; preds = %computeDefragCycleUs.exit, %bb.o
  %.013 = phi i64 [ %i.ad, %bb.o ], [ 0, %computeDefragCycleUs.exit ]
  %i.ae = add i64 %i.ab, -500
  br label %bb.q

bb.q:                                             ; preds = %.thread28, %bb.p
  %i.af = load ptr, ptr @defrag.6, align 8, !tbaa !219 ; 2 uses
  %.not19 = icmp eq ptr %i.af, null
  br i1 %.not19, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ag = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !230 ; 2 uses
  store ptr %i.ah, ptr @defrag.6, align 8, !tbaa !219
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ai = phi ptr [ %i.ah, %bb.r ], [ %i.af, %bb.q ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !82
  %i.ao = tail call i32 %i.al(ptr noundef %i.an, i64 noundef %i.ab) #11
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  %i.aq = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.ar = load ptr, ptr @defrag.6, align 8, !tbaa !219
  tail call void @listDelNode(ptr noundef %i.aq, ptr noundef %i.ar) #11
  store ptr null, ptr @defrag.6, align 8, !tbaa !219
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.pr = load ptr, ptr @defrag.6, align 8, !tbaa !219
  %.not20 = icmp eq ptr %.pr, null
  br i1 %.not20, label %bb.u, label %.thread28

bb.u:                                             ; preds = %bb.t, %.thread
  %i.as = load ptr, ptr @defrag.5, align 8, !tbaa !197
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !227
  %.not30 = icmp eq i64 %i.au, 0
  br i1 %.not30, label %.critedge, label %.thread28

.thread28:                                        ; preds = %bb.t, %bb.u
  %i.av = load ptr, ptr @getMonotonicUs, align 8, !tbaa !105
  %i.aw = tail call i64 %i.av() #11
  %.not21 = icmp ugt i64 %i.aw, %i.ae
  br i1 %.not21, label %.critedge, label %bb.q, !llvm.loop !231

.critedge:                                        ; preds = %bb.u, %.thread28
  %i.ax = phi i1 [ false, %bb.u ], [ true, %.thread28 ]
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !229
  %.not22 = icmp eq i64 %i.ay, 0
  br i1 %.not22, label %.thread35, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.az = tail call i64 @mstime() #11
  %i.ba = sub nsw i64 %i.az, %.013                ; 2 uses
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !229 ; 2 uses
  %.not23 = icmp eq i64 %.pre, 0
  %.not24 = icmp slt i64 %i.ba, %.pre
  %or.cond = select i1 %.not23, i1 true, i1 %.not24
  br i1 %or.cond, label %.thread35, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @latencyAddSample(ptr noundef nonnull @.str.34, i64 noundef %i.ba) #11
  br label %.thread35

.thread35:                                        ; preds = %.critedge, %bb.w, %bb.v
  br i1 %i.ax, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.thread35
  %i.bb = load ptr, ptr @getMonotonicUs, align 8, !tbaa !105
  %i.bc = tail call i64 %i.bb() #11, !inline_history !232 ; 2 uses
  store i64 %i.bc, ptr @defrag.8, align 8, !tbaa !224
  %i.bd = sub i64 %i.bc, %i.ab
  %i.be = load i64, ptr @defrag.9, align 8, !tbaa !225
  %i.bf = add nsw i64 %i.bd, %i.be
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.bf, i64 0) ; 2 uses
  store i64 %spec.store.select.i, ptr @defrag.9, align 8
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 140), align 4, !tbaa !183 ; 3 uses
  %i.bh = add i32 %i.bg, -1
  %i.bi = icmp ult i32 %i.bh, 99
  br i1 %i.bi, label %computeDelayMs.exit, label %bb.y, !prof !67

bb.y:                                             ; preds = %bb.x
  tail call void @_serverAssert(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 1782) #11
  tail call void @abort() #12
  unreachable

computeDelayMs.exit:                              ; preds = %bb.x
  %.rhs.trunc.i = trunc nuw nsw i32 %i.bg to i16
  %i.bj = udiv i16 -15536, %.rhs.trunc.i
  %i.bk = zext i16 %i.bj to i64
  %i.bl = sub nuw nsw i32 100, %i.bg
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = mul nuw nsw i64 %spec.store.select.i, %i.bm
  %i.bo = udiv i64 %i.bn, 100
  %i.bp = add nsw i64 %i.bo, -500
  %i.bq = add nsw i64 %i.bp, %i.bk
  %i.br = udiv i64 %i.bq, 1000
  %i.bs = trunc i64 %i.br to i32
  br label %bb.aa

bb.z:                                             ; preds = %.thread35
  tail call fastcc void @endDefragCycle(i32 noundef 1)
  br label %bb.aa

bb.aa:                                            ; preds = %computeDelayMs.exit, %bb.z, %bb.f, %bb.d
  %.1 = phi i32 [ 100, %bb.f ], [ -1, %bb.d ], [ %i.bs, %computeDelayMs.exit ], [ -1, %bb.z ]
  ret i32 %.1
}

declare i32 @aeDeleteTimeEvent(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @hasActiveChildProcess() local_unnamed_addr #2

declare ptr @dictFind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @endDefragCycle(i32 noundef range(i32 0, 2) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = trunc nuw i32 %0 to i1
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @defrag.6, align 8, !tbaa !219
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.d, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 1680) #11
  tail call void @abort() #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @defrag.5, align 8, !tbaa !197 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !227
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 1681) #11
  tail call void @abort() #12
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !194
  %i.h = load i64, ptr @defrag.7, align 8, !tbaa !193
  %i.i = tail call i32 @aeDeleteTimeEvent(ptr noundef %i.g, i64 noundef %i.h) #11 ; 0 uses
  %i.j = load ptr, ptr @defrag.6, align 8, !tbaa !219 ; 2 uses
  %.not2 = icmp eq ptr %i.j, null
  %.pre5 = load ptr, ptr @defrag.5, align 8, !tbaa !197 ; 2 uses
  br i1 %.not2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @listDelNode(ptr noundef %.pre5, ptr noundef nonnull %i.j) #11
  store ptr null, ptr @defrag.6, align 8, !tbaa !219
  %.pre = load ptr, ptr @defrag.5, align 8, !tbaa !197
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.k = phi ptr [ %.pre5, %bb.f ], [ %.pre, %bb.g ], [ %i.c, %bb.d ]
  store i64 -1, ptr @defrag.7, align 8, !tbaa !193
  tail call void @listRelease(ptr noundef %i.k) #11
  store ptr null, ptr @defrag.5, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.l = call float @getAllocatorFragmentation(ptr noundef nonnull %i.a) ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !177
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load i64, ptr @defrag.0, align 8, !tbaa !220
  %i.p = load ptr, ptr @getMonotonicUs, align 8, !tbaa !105
  %i.q = call i64 %i.p() #11, !inline_history !233
  %i.r = sub i64 %i.q, %i.o
  %i.s = udiv i64 %i.r, 1000
  %i.t = trunc i64 %i.s to i32
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.v = load i64, ptr @defrag.1, align 8, !tbaa !221
  %i.w = sub nsw i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = fpext float %i.l to double
  %i.z = load i64, ptr %i.a, align 8, !tbaa !87
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %i.t, i32 noundef %i.x, double noundef %i.y, i64 noundef %i.z) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2712), align 8, !tbaa !234
  %i.ab = load ptr, ptr @getMonotonicUs, align 8, !tbaa !105
  %i.ac = call i64 %i.ab() #11, !inline_history !235
  %i.ad = sub i64 %i.ac, %i.aa
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2704), align 8, !tbaa !236
  %i.af = add i64 %i.ad, %i.ae
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2704), align 8, !tbaa !236
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2712), align 8, !tbaa !234
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 140), align 4, !tbaa !183
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !47
  %i.ah = load i64, ptr @defrag.1, align 8, !tbaa !221
  %i.ai = sub nsw i64 %i.ag, %i.ah                ; 2 uses
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !13
  %i.ak = load i64, ptr @defrag.2, align 8, !tbaa !222
  %i.al = load float, ptr @defrag.3, align 8, !tbaa !223
  %i.am = fsub float %i.al, %i.l                  ; 2 uses
  %i.an = call float @llvm.fabs.f32(float %i.am)
  %i.ao = fcmp ogt float %i.an, 2.000000e+00
  br i1 %i.ao, label %updateDefragDecayRate.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = fcmp olt float %i.am, 0.000000e+00
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = sitofp i64 %i.ai to double
  %i.ar = add i64 %i.ai, %i.aj
  %i.as = sub i64 %i.ar, %i.ak
  %i.at = sitofp i64 %i.as to double
  %i.au = fmul nnan double %i.at, 1.000000e-02
  %i.av = fcmp ugt double %i.au, %i.aq
  br i1 %i.av, label %bb.m, label %updateDefragDecayRate.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = load float, ptr @defrag.4, align 4, !tbaa !189
  %i.ax = fpext float %i.aw to double
  %i.ay = fmul double %i.ax, 9.000000e-01
  %i.az = fptrunc double %i.ay to float
  br label %updateDefragDecayRate.exit

updateDefragDecayRate.exit:                       ; preds = %bb.j, %bb.l, %bb.m
  %storemerge.i = phi float [ %i.az, %bb.m ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %bb.j ]
  store float %storemerge.i, ptr @defrag.4, align 4, !tbaa !189
  call void @moduleDefragEnd() #11
  call void @activeDefragCycle()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i64 @mstime() local_unnamed_addr #2

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @latencyAddSample(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @listRelease(ptr noundef) local_unnamed_addr #2

declare void @moduleDefragEnd() local_unnamed_addr #2

declare void @moduleDefragStart() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @freeDefragContext(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  tail call void %i.b(ptr noundef %i.d) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @zfree(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @defragStageDbKeys(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !167
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [96 x i8], ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171
  %i.g = load ptr, ptr %0, align 8, !tbaa !237
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @defragStageKvstoreHelper(i64 noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @dbKeysScanCallback, ptr noundef nonnull @defragLaterStep, ptr noundef nonnull @defragStageDbKeys.defragfns)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @freeDefragKeysContext(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @listRelease(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @zfree(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @defragStageExpiresKvstore(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !167
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [96 x i8], ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_2
