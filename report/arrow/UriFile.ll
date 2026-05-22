inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@uriWindowsFilenameToUriStringA:bb.a

..thread78_crit_edge.i:                           ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !7
  br label %.thread78.i

.thread78.i:                                      ; preds = %..thread78_crit_edge.i, %.thread.i
  %i.h = phi i8 [ %.pre.i, %..thread78_crit_edge.i ], [ %i.f, %.thread.i ]
  %i.i = phi i1 [ false, %..thread78_crit_edge.i ], [ %i.g, %.thread.i ] ; 2 uses
  %i.j = icmp eq i8 %i.h, 58                      ; 2 uses
  %brmerge.i = select i1 %i.j, i1 true, i1 %i.i
  br i1 %brmerge.i, label %.thread83.i, label %.thread87.split.us.split.us.i.preheader

.thread87.split.us.split.us.i.preheader:          ; preds = %bb.b, %.thread78.i
  br label %.thread87.split.us.split.us.i

.thread83.i:                                      ; preds = %.thread78.i
  %not..i = xor i1 %i.j, true
  %.mux.i = select i1 %not..i, i1 true, i1 %i.i
  %cond.fr.i = freeze i1 %.mux.i                  ; 2 uses
  %spec.select.i = select i1 %cond.fr.i, ptr @.str.1, ptr @.str.2
  %i.k = select i1 %cond.fr.i, i64 5, i64 8       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 1 dereferenceable(5) %spec.select.i, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  br label %.thread87.split.split.us.i

.thread87.split.us.split.us.i:                    ; preds = %.thread87.split.us.split.us.i.preheader, %bb.g
  %i.m = phi i8 [ %.pre, %bb.g ], [ %i.d, %.thread87.split.us.split.us.i.preheader ] ; 3 uses
  %.164.us.us.i = phi ptr [ %.4.us.us.i, %bb.g ], [ %1, %.thread87.split.us.split.us.i.preheader ] ; 3 uses
  %.060.us.us.i = phi ptr [ %.1.us.us.i, %bb.g ], [ %i.a, %.thread87.split.us.split.us.i.preheader ] ; 2 uses
  %.059.us.us.i = phi ptr [ %i.s, %bb.g ], [ %0, %.thread87.split.us.split.us.i.preheader ] ; 5 uses
  switch i8 %i.m, label %bb.e [
    i8 92, label %bb.c
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %.thread87.split.us.split.us.i, %.thread87.split.us.split.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %.060.us.us.i, i64 1 ; 2 uses
  %i.o = icmp ult ptr %i.n, %.059.us.us.i
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @uriEscapeExA(ptr noundef nonnull %i.n, ptr noundef nonnull %.059.us.us.i, ptr noundef %.164.us.us.i, i32 noundef 0, i32 noundef 0) #5
  %.pre115.i = load i8, ptr %.059.us.us.i, align 1, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread87.split.us.split.us.i
  %i.q = phi i8 [ %i.m, %bb.c ], [ %i.m, %.thread87.split.us.split.us.i ], [ %.pre115.i, %bb.d ]
  %.3.us.us.i = phi ptr [ %.164.us.us.i, %bb.c ], [ %.164.us.us.i, %.thread87.split.us.split.us.i ], [ %i.p, %bb.d ] ; 4 uses
  switch i8 %i.q, label %bb.g [
    i8 0, label %.split.us.i
    i8 92, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  store i8 47, ptr %.3.us.us.i, align 1, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.3.us.us.i, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.us.us.i = phi ptr [ %i.r, %bb.f ], [ %.3.us.us.i, %bb.e ]
  %.1.us.us.i = phi ptr [ %.059.us.us.i, %bb.f ], [ %.060.us.us.i, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %.059.us.us.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.s, align 1, !tbaa !7
  br label %.thread87.split.us.split.us.i

.thread87.split.split.us.i:                       ; preds = %bb.n, %.thread83.i
  %.164.us96.i = phi ptr [ %.4.us106.i, %bb.n ], [ %i.l, %.thread83.i ] ; 5 uses
  %.061.us97.i = phi i32 [ %.162.us103.i, %bb.n ], [ 1, %.thread83.i ] ; 2 uses
  %.060.us98.i = phi ptr [ %.1.us107.i, %bb.n ], [ %i.a, %.thread83.i ] ; 2 uses
  %.059.us99.i = phi ptr [ %i.ae, %bb.n ], [ %0, %.thread83.i ] ; 7 uses
  %i.t = load i8, ptr %.059.us99.i, align 1, !tbaa !7 ; 2 uses
  switch i8 %i.t, label %bb.l [
    i8 92, label %bb.h
    i8 0, label %bb.h
  ]

bb.h:                                             ; preds = %.thread87.split.split.us.i, %.thread87.split.split.us.i
  %i.u = getelementptr inbounds nuw i8, ptr %.060.us98.i, i64 1 ; 4 uses
  %i.v = icmp ult ptr %i.u, %.059.us99.i
  br i1 %i.v, label %bb.i, label %thread-pre-split.i

bb.i:                                             ; preds = %bb.h
  %.not166.i = icmp eq i32 %.061.us97.i, 0
  br i1 %.not166.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @uriEscapeExA(ptr noundef nonnull %i.u, ptr noundef nonnull %.059.us99.i, ptr noundef %.164.us96.i, i32 noundef 0, i32 noundef 0) #5
  br label %thread-pre-split.i

bb.k:                                             ; preds = %bb.i
  %i.x = ptrtoint ptr %.059.us99.i to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  %sext.us.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.us.i, 32           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.164.us96.i, ptr nonnull align 1 %i.u, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %.164.us96.i, i64 %i.aa
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.k, %bb.j, %bb.h
  %.3.us102.ph.i = phi ptr [ %i.w, %bb.j ], [ %i.ab, %bb.k ], [ %.164.us96.i, %bb.h ]
  %.pr.i = load i8, ptr %.059.us99.i, align 1, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i, %.thread87.split.split.us.i
  %i.ac = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.t, %.thread87.split.split.us.i ]
  %.3.us102.i = phi ptr [ %.3.us102.ph.i, %thread-pre-split.i ], [ %.164.us96.i, %.thread87.split.split.us.i ] ; 4 uses
  %.162.us103.i = phi i32 [ 0, %thread-pre-split.i ], [ %.061.us97.i, %.thread87.split.split.us.i ]
  switch i8 %i.ac, label %bb.n [
    i8 0, label %.split.us.i
    i8 92, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  store i8 47, ptr %.3.us102.i, align 1, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.3.us102.i, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.4.us106.i = phi ptr [ %i.ad, %bb.m ], [ %.3.us102.i, %bb.l ]
  %.1.us107.i = phi ptr [ %.059.us99.i, %bb.m ], [ %.060.us98.i, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.059.us99.i, i64 1
  br label %.thread87.split.split.us.i

.split.us.i:                                      ; preds = %bb.e, %bb.l
  %.us-phi.i = phi ptr [ %.3.us102.i, %bb.l ], [ %.3.us.us.i, %bb.e ]
  store i8 0, ptr %.us-phi.i, align 1, !tbaa !7
  br label %uriFilenameToUriStringA.exit

uriFilenameToUriStringA.exit:                     ; preds = %bb.a, %.split.us.i
  %.0.i = phi i32 [ 0, %.split.us.i ], [ 2, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriUriStringToUnixFilenameA(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriUriStringToFilenameA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1, i64 noundef 5) #6
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread58.thread.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.3, i64 noundef 6) #6
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread58.thread.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str, i64 noundef 7) #6
  %i.h = icmp eq i32 %i.g, 0
  %spec.select = select i1 %i.h, i64 7, i64 5
  br label %.thread58.thread.i

.thread58.thread.i:                               ; preds = %bb.d, %bb.b, %bb.c
  %i.i = phi i64 [ 0, %bb.b ], [ %spec.select, %bb.d ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.j) #6
  %i.l = add i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.j, i64 %i.l, i1 false)
  %i.m = tail call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 3) #5 ; 0 uses
  br label %uriUriStringToFilenameA.exit

uriUriStringToFilenameA.exit:                     ; preds = %bb.a, %.thread58.thread.i
  %.046.i = phi i32 [ 2, %bb.a ], [ 0, %.thread58.thread.i ]
  ret i32 %.046.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriUriStringToWindowsFilenameA(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriUriStringToFilenameA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1, i64 noundef 5) #6
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread58.thread.i.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.3, i64 noundef 6) #6
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread58.thread.i.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str, i64 noundef 7) #6
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread58.thread.i, label %.thread58.thread.i.thread

.thread58.thread.i.thread:                        ; preds = %bb.d, %bb.c, %bb.b
  %.ph = phi i64 [ 0, %bb.b ], [ 5, %bb.c ], [ 0, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.ph ; 2 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.i) #6
  br label %bb.e

.thread58.thread.i:                               ; preds = %bb.d
  %i.k = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.2, i64 noundef 8) #6 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 3 uses
  %i.o = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #6 ; 2 uses
  br i1 %.not, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %.thread58.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 92, ptr %1, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 92, ptr %i.q, align 1, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %.thread58.thread.i.thread, %.thread58.thread.i, %.thread.i
  %.ph5.sink.in = phi i64 [ %i.o, %.thread.i ], [ %i.j, %.thread58.thread.i.thread ], [ %i.o, %.thread58.thread.i ]
  %.ph6.sink = phi ptr [ %i.n, %.thread.i ], [ %i.i, %.thread58.thread.i.thread ], [ %i.n, %.thread58.thread.i ]
  %.sink = phi ptr [ %i.p, %.thread.i ], [ %1, %.thread58.thread.i.thread ], [ %1, %.thread58.thread.i ]
  %.ph5.sink = add i64 %.ph5.sink.in, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %.ph6.sink, i64 %.ph5.sink, i1 false)
  %2 = tail call ptr @uriUnescapeInPlaceExA(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 3) #5 ; 0 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.e
  %.0.i = phi ptr [ %i.s, %bb.g ], [ %1, %bb.e ]  ; 3 uses
  %i.r = load i8, ptr %.0.i, align 1, !tbaa !7
  switch i8 %i.r, label %bb.g [
    i8 0, label %uriUriStringToFilenameA.exit
    i8 47, label %bb.f
  ]

bb.f:                                             ; preds = %.preheader.i
  store i8 92, ptr %.0.i, align 1, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %.preheader.i, !llvm.loop !8

uriUriStringToFilenameA.exit:                     ; preds = %.preheader.i, %bb.a
  %.046.i = phi i32 [ 2, %bb.a ], [ 0, %.preheader.i ]
  ret i32 %.046.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriUnixFilenameToUriStringW(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -4
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %uriFilenameToUriStringW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !3
  %cond = icmp eq i32 %i.d, 47
  br i1 %cond, label %.thread87.i, label %.thread87.split.us.split.i.preheader

.thread87.i:                                      ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %1, ptr noundef nonnull align 4 dereferenceable(28) @.str.4, i64 28, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %.thread87.split.us.split.i.preheader

.thread87.split.us.split.i.preheader:             ; preds = %bb.b, %.thread87.i
  %.164.us.i.ph = phi ptr [ %1, %bb.b ], [ %i.e, %.thread87.i ]
  br label %.thread87.split.us.split.i

.thread87.split.us.split.i:                       ; preds = %.thread87.split.us.split.i.preheader, %bb.g
  %.164.us.i = phi ptr [ %.4.us.i, %bb.g ], [ %.164.us.i.ph, %.thread87.split.us.split.i.preheader ] ; 3 uses
  %.060.us.i = phi ptr [ %.1.us.i, %bb.g ], [ %i.a, %.thread87.split.us.split.i.preheader ] ; 2 uses
  %.059.us.i = phi ptr [ %i.l, %bb.g ], [ %0, %.thread87.split.us.split.i.preheader ] ; 6 uses
  %i.f = load i32, ptr %.059.us.i, align 4, !tbaa !3 ; 3 uses
  switch i32 %i.f, label %bb.e [
    i32 47, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %.thread87.split.us.split.i, %.thread87.split.us.split.i
  %i.g = getelementptr inbounds nuw i8, ptr %.060.us.i, i64 4 ; 2 uses
  %i.h = icmp ult ptr %i.g, %.059.us.i
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.g, ptr noundef nonnull %.059.us.i, ptr noundef %.164.us.i, i32 noundef 0, i32 noundef 0) #5
  %.pre114.i = load i32, ptr %.059.us.i, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread87.split.us.split.i
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.f, %.thread87.split.us.split.i ], [ %.pre114.i, %bb.d ]
  %.3.us.i = phi ptr [ %.164.us.i, %bb.c ], [ %.164.us.i, %.thread87.split.us.split.i ], [ %i.i, %bb.d ] ; 4 uses
  switch i32 %i.j, label %bb.g [
    i32 0, label %.split.us.i
    i32 47, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  store i32 47, ptr %.3.us.i, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %.3.us.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.us.i = phi ptr [ %i.k, %bb.f ], [ %.3.us.i, %bb.e ]
  %.1.us.i = phi ptr [ %.059.us.i, %bb.f ], [ %.060.us.i, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.059.us.i, i64 4
  br label %.thread87.split.us.split.i

.split.us.i:                                      ; preds = %bb.e
  store i32 0, ptr %.3.us.i, align 4, !tbaa !3
  br label %uriFilenameToUriStringW.exit

uriFilenameToUriStringW.exit:                     ; preds = %bb.a, %.split.us.i
  %.0.i = phi i32 [ 0, %.split.us.i ], [ 2, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriWindowsFilenameToUriStringW(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -4 ; 2 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %uriFilenameToUriStringW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  switch i32 %i.d, label %..thread78_crit_edge.i [
    i32 92, label %.thread.i
    i32 0, label %.thread87.split.us.split.us.i.preheader
  ]

.thread.i:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = icmp eq i32 %i.f, 92
  br label %.thread78.i

..thread78_crit_edge.i:                           ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  br label %.thread78.i

.thread78.i:                                      ; preds = %..thread78_crit_edge.i, %.thread.i
  %i.h = phi i32 [ %.pre.i, %..thread78_crit_edge.i ], [ %i.f, %.thread.i ]
  %i.i = phi i1 [ false, %..thread78_crit_edge.i ], [ %i.g, %.thread.i ] ; 2 uses
  %i.j = icmp eq i32 %i.h, 58                     ; 2 uses
  %brmerge.i = select i1 %i.j, i1 true, i1 %i.i
  br i1 %brmerge.i, label %.thread83.i, label %.thread87.split.us.split.us.i.preheader

.thread87.split.us.split.us.i.preheader:          ; preds = %bb.b, %.thread78.i
  br label %.thread87.split.us.split.us.i

.thread83.i:                                      ; preds = %.thread78.i
  %not..i = xor i1 %i.j, true
  %.mux.i = select i1 %not..i, i1 true, i1 %i.i
  %cond.fr.i = freeze i1 %.mux.i                  ; 2 uses
  %spec.select.i = select i1 %cond.fr.i, ptr @.str.5, ptr @.str.6
  %i.k = select i1 %cond.fr.i, i64 5, i64 8       ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(1) %spec.select.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  br label %.thread87.split.split.us.i

.thread87.split.us.split.us.i:                    ; preds = %.thread87.split.us.split.us.i.preheader, %bb.g
  %i.n = phi i32 [ %.pre, %bb.g ], [ %i.d, %.thread87.split.us.split.us.i.preheader ] ; 3 uses
  %.164.us.us.i = phi ptr [ %.4.us.us.i, %bb.g ], [ %1, %.thread87.split.us.split.us.i.preheader ] ; 3 uses
  %.060.us.us.i = phi ptr [ %.1.us.us.i, %bb.g ], [ %i.a, %.thread87.split.us.split.us.i.preheader ] ; 2 uses
  %.059.us.us.i = phi ptr [ %i.t, %bb.g ], [ %0, %.thread87.split.us.split.us.i.preheader ] ; 5 uses
  switch i32 %i.n, label %bb.e [
    i32 92, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %.thread87.split.us.split.us.i, %.thread87.split.us.split.us.i
  %i.o = getelementptr inbounds nuw i8, ptr %.060.us.us.i, i64 4 ; 2 uses
  %i.p = icmp ult ptr %i.o, %.059.us.us.i
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.o, ptr noundef nonnull %.059.us.us.i, ptr noundef %.164.us.us.i, i32 noundef 0, i32 noundef 0) #5
  %.pre115.i = load i32, ptr %.059.us.us.i, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread87.split.us.split.us.i
  %i.r = phi i32 [ %i.n, %bb.c ], [ %i.n, %.thread87.split.us.split.us.i ], [ %.pre115.i, %bb.d ]
  %.3.us.us.i = phi ptr [ %.164.us.us.i, %bb.c ], [ %.164.us.us.i, %.thread87.split.us.split.us.i ], [ %i.q, %bb.d ] ; 4 uses
  switch i32 %i.r, label %bb.g [
    i32 0, label %.split.us.i
    i32 92, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  store i32 47, ptr %.3.us.us.i, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %.3.us.us.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.us.us.i = phi ptr [ %i.s, %bb.f ], [ %.3.us.us.i, %bb.e ]
  %.1.us.us.i = phi ptr [ %.059.us.us.i, %bb.f ], [ %.060.us.us.i, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %.059.us.us.i, i64 4 ; 2 uses
  %.pre = load i32, ptr %i.t, align 4, !tbaa !3
  br label %.thread87.split.us.split.us.i

.thread87.split.split.us.i:                       ; preds = %.thread83.i, %bb.n
  %.164.us96.i = phi ptr [ %.4.us106.i, %bb.n ], [ %i.m, %.thread83.i ] ; 5 uses
  %.061.us97.i = phi i32 [ %.162.us103.i, %bb.n ], [ 1, %.thread83.i ] ; 2 uses
  %.060.us98.i = phi ptr [ %.1.us107.i, %bb.n ], [ %i.a, %.thread83.i ] ; 2 uses
  %.059.us99.i = phi ptr [ %i.ag, %bb.n ], [ %0, %.thread83.i ] ; 7 uses
  %i.u = load i32, ptr %.059.us99.i, align 4, !tbaa !3 ; 2 uses
  switch i32 %i.u, label %bb.l [
    i32 92, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %.thread87.split.split.us.i, %.thread87.split.split.us.i
  %i.v = getelementptr inbounds nuw i8, ptr %.060.us98.i, i64 4 ; 4 uses
  %i.w = icmp ult ptr %i.v, %.059.us99.i
  br i1 %i.w, label %bb.i, label %thread-pre-split.i

bb.i:                                             ; preds = %bb.h
  %.not162.i = icmp eq i32 %.061.us97.i, 0
  br i1 %.not162.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.v, ptr noundef nonnull %.059.us99.i, ptr noundef %.164.us96.i, i32 noundef 0, i32 noundef 0) #5
end_hunk_0
