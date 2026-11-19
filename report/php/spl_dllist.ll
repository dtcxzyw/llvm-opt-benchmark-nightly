Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/spl_dllist?download=true
inline.NumInlined: 64
inline.NumDeleted: 17
begin_hunk_0_@spl_dllist_object_count_elements:bb.a
  br label %zval_get_long.exit

bb.d:                                             ; preds = %bb.b
  %i.i = call i64 @zval_get_long_func(ptr noundef nonnull %2, i1 noundef zeroext false) #12
  br label %zval_get_long.exit

zval_get_long.exit:                               ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  store i64 %i.j, ptr %1, align 8, !tbaa !43
  call void @zval_ptr_dtor(ptr noundef nonnull %2) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %zval_get_long.exit
  %.0 = phi i32 [ -1, %bb.e ], [ 0, %zval_get_long.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val = load i32, ptr %i.m, align 8, !tbaa !35
  %i.n = sext i32 %.val to i64
  store i64 %i.n, ptr %1, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_setIteratorMode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #12
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !44   ; 2 uses
  %i.j = and i32 %i.i, 4                          ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.i, 2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = and i64 %.pre, 2
  %.not10 = icmp eq i64 %i.m, %i.l
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @spl_ce_RuntimeException, align 8, !tbaa !37
  %i.o = call ptr @zend_throw_exception(ptr noundef %i.n, ptr noundef nonnull @.str.5, i64 noundef 0) #12 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = trunc i64 %.pre to i32
  %i.q = and i32 %i.p, 3
  %i.r = or disjoint i32 %i.q, %i.j               ; 2 uses
  store i32 %i.r, ptr %i.h, align 4, !tbaa !44
  %i.s = zext nneg i32 %i.r to i64
  store i64 %i.s, ptr %1, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.t, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_getIteratorMode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #12
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = sext i32 %i.f to i64
  store i64 %i.g, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.h, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_offsetExists(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #12
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %i.f, %i.n
  %i.p = select i1 %i.o, i32 3, i32 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ 2, %bb.b ], [ %i.p, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_offsetGet(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #12
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %i.n = sext i32 %i.m to i64
  %.not = icmp slt i64 %i.h, %i.n
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = load ptr, ptr @spl_ce_OutOfRangeException, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.o, i32 noundef 1, ptr noundef nonnull @.str.6) #12
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 -52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = and i32 %i.q, 2
  %.not.i = icmp eq i32 %i.r, 0                   ; 2 uses
  %.010.in.idx.i = select i1 %.not.i, i64 0, i64 8
  %.010.in.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.010.in.idx.i
  %.111.i = load ptr, ptr %.010.in.i, align 8, !tbaa !45 ; 3 uses
  %i.s = icmp ne ptr %.111.i, null
  %i.t = icmp ne i64 %i.h, 0
  %i.u = and i1 %i.t, %i.s
  br i1 %i.u, label %.lr.ph.i, label %spl_ptr_llist_offset.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.2.in.idx.i = select i1 %.not.i, i64 8, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.113.i = phi ptr [ %.111.i, %.lr.ph.i ], [ %.1.i, %bb.f ]
  %.012.i = phi i32 [ 0, %.lr.ph.i ], [ %2, %bb.f ]
  %2 = add nuw nsw i32 %.012.i, 1                 ; 2 uses
  %.2.in.i = getelementptr inbounds nuw i8, ptr %.113.i, i64 %.2.in.idx.i
  %.1.i = load ptr, ptr %.2.in.i, align 8, !tbaa !45 ; 3 uses
  %i.v = icmp ne ptr %.1.i, null
  %3 = zext nneg i32 %2 to i64
  %4 = icmp samesign ugt i64 %i.h, %3
  %i.w = select i1 %i.v, i1 %4, i1 false
  br i1 %i.w, label %bb.f, label %spl_ptr_llist_offset.exit, !llvm.loop !0

spl_ptr_llist_offset.exit:                        ; preds = %bb.f, %bb.e
  %.1.lcssa.i = phi ptr [ %.111.i, %bb.e ], [ %.1.i, %bb.f ] ; 3 uses
  %i.x = icmp eq ptr %.1.lcssa.i, null
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %spl_ptr_llist_offset.exit
  %i.y = load ptr, ptr @spl_ce_OutOfRangeException, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.y, i32 noundef 1, ptr noundef nonnull @.str.7) #12
  br label %bb.l

bb.h:                                             ; preds = %spl_ptr_llist_offset.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 24
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ac = and i32 %i.ab, 65280
  %.not22 = icmp eq i32 %i.ac, 0
  br i1 %.not22, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i32 %i.ab, 255
  %i.ae = icmp eq i32 %i.ad, 10
  br i1 %i.ae, label %bb.j, label %.sink.split, !prof !38

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i32 %i.ai, 65280
  %.not23 = icmp eq i32 %i.aj, 0
  br i1 %.not23, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.j
  %.sink29 = phi i32 [ %i.ai, %bb.j ], [ %i.ab, %bb.i ]
  %.sink.in = phi ptr [ %i.ag, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  %i.ak = and i32 %.sink29, 65280
  %i.al = icmp ne i32 %i.ak, 0
  call void @llvm.assume(i1 %i.al)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !13 ; 2 uses
  %i.am = load i32, ptr %.sink, align 4, !tbaa !33
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %.sink, align 4, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.h, %bb.j
  %.0 = phi ptr [ %i.z, %bb.h ], [ %i.ag, %bb.j ], [ %.sink.in, %.sink.split ] ; 2 uses
  %i.ao = load ptr, ptr %.0, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !13
  store ptr %i.ao, ptr %1, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @zend_argument_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_offsetSet(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 1, ptr %i.b, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.e, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -72 ; 2 uses
  %i.k = load i8, ptr %i.b, align 1, !tbaa !70, !range !71, !noundef !47
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !24   ; 3 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.o = call noalias ptr @_emalloc_32() #12      ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !13   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %i.v, ptr %i.w, align 8, !tbaa !13
  %i.x = and i32 %i.v, 65280
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.t, align 4, !tbaa !33
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.t, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 1, ptr %i.aa, align 4, !tbaa !13
  %.not21.i = icmp eq ptr %i.q, null
  br i1 %.not21.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.o, ptr %i.ab, align 8, !tbaa !32
  br label %spl_ptr_llist_push.exit

bb.g:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.m, align 8, !tbaa !34
  br label %spl_ptr_llist_push.exit

spl_ptr_llist_push.exit:                          ; preds = %bb.f, %bb.g
  store ptr %i.o, ptr %i.p, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !35
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !35
  br label %.critedge

bb.h:                                             ; preds = %bb.b
  %i.af = load i64, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !24  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !35
  %i.ak = sext i32 %i.aj to i64
  %.not = icmp slt i64 %i.af, %i.ak
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = load ptr, ptr @spl_ce_OutOfRangeException, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.al, i32 noundef 1, ptr noundef nonnull @.str.6) #12
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds i8, ptr %i.i, i64 -52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44
  %i.ao = and i32 %i.an, 2
  %.not.i27 = icmp eq i32 %i.ao, 0                ; 2 uses
  %.010.in.idx.i = select i1 %.not.i27, i64 0, i64 8
  %.010.in.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.010.in.idx.i
  %.111.i = load ptr, ptr %.010.in.i, align 8, !tbaa !45 ; 3 uses
  %i.ap = icmp ne ptr %.111.i, null
  %i.aq = icmp ne i64 %i.af, 0
  %i.ar = and i1 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph.i, label %spl_ptr_llist_offset.exit

.lr.ph.i:                                         ; preds = %bb.k
  %.2.in.idx.i = select i1 %.not.i27, i64 8, i64 0
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %.113.i = phi ptr [ %.111.i, %.lr.ph.i ], [ %.1.i, %bb.l ]
  %.012.i = phi i32 [ 0, %.lr.ph.i ], [ %3, %bb.l ]
  %3 = add nuw nsw i32 %.012.i, 1                 ; 2 uses
  %.2.in.i = getelementptr inbounds nuw i8, ptr %.113.i, i64 %.2.in.idx.i
  %.1.i = load ptr, ptr %.2.in.i, align 8, !tbaa !45 ; 3 uses
  %i.as = icmp ne ptr %.1.i, null
  %4 = zext nneg i32 %3 to i64
  %5 = icmp samesign ugt i64 %i.af, %4
  %i.at = select i1 %i.as, i1 %5, i1 false
  br i1 %i.at, label %bb.l, label %spl_ptr_llist_offset.exit, !llvm.loop !0

spl_ptr_llist_offset.exit:                        ; preds = %bb.l, %bb.k
  %.1.lcssa.i = phi ptr [ %.111.i, %bb.k ], [ %.1.i, %bb.l ] ; 3 uses
  %.not25 = icmp eq ptr %.1.lcssa.i, null
  br i1 %.not25, label %bb.p, label %bb.m

bb.m:                                             ; preds = %spl_ptr_llist_offset.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.au = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 24 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !13
  store ptr %i.av, ptr %2, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !13
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !13 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !13
  store i32 %i.bc, ptr %i.aw, align 8, !tbaa !13
  %i.bd = and i32 %i.bc, 65280
  %.not26 = icmp eq i32 %i.bd, 0
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !33
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @zval_ptr_dtor(ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %.critedge

bb.p:                                             ; preds = %spl_ptr_llist_offset.exit
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !26
  call void @zval_ptr_dtor(ptr noundef %i.bg) #12
  %i.bh = load ptr, ptr @spl_ce_OutOfRangeException, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.bh, i32 noundef 1, ptr noundef nonnull @.str.7) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.p, %spl_ptr_llist_push.exit, %bb.o, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_offsetUnset(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #12
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 5 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = sext i32 %i.m to i64
  %.not = icmp slt i64 %i.j, %i.n
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = load ptr, ptr @spl_ce_OutOfRangeException, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.o, i32 noundef 1, ptr noundef nonnull @.str.6) #12
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 -52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = and i32 %i.q, 2
  %.not.i = icmp eq i32 %i.r, 0                   ; 2 uses
  %.010.in.idx.i = select i1 %.not.i, i64 0, i64 8
  %.010.in.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.010.in.idx.i
  %.111.i = load ptr, ptr %.010.in.i, align 8, !tbaa !45 ; 3 uses
  %i.s = icmp ne ptr %.111.i, null
  %i.t = icmp ne i64 %i.j, 0
  %i.u = and i1 %i.t, %i.s
  br i1 %i.u, label %.lr.ph.i, label %spl_ptr_llist_offset.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.2.in.idx.i = select i1 %.not.i, i64 8, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.113.i = phi ptr [ %.111.i, %.lr.ph.i ], [ %.1.i, %bb.f ]
  %.012.i = phi i32 [ 0, %.lr.ph.i ], [ %2, %bb.f ]
  %2 = add nuw nsw i32 %.012.i, 1                 ; 2 uses
  %.2.in.i = getelementptr inbounds nuw i8, ptr %.113.i, i64 %.2.in.idx.i
  %.1.i = load ptr, ptr %.2.in.i, align 8, !tbaa !45 ; 3 uses
  %i.v = icmp ne ptr %.1.i, null
  %3 = zext nneg i32 %2 to i64
  %4 = icmp samesign ugt i64 %i.j, %3
  %i.w = select i1 %i.v, i1 %4, i1 false
  br i1 %i.w, label %bb.f, label %spl_ptr_llist_offset.exit, !llvm.loop !0

spl_ptr_llist_offset.exit:                        ; preds = %bb.f, %bb.e
  %.1.lcssa.i = phi ptr [ %.111.i, %bb.e ], [ %.1.i, %bb.f ] ; 14 uses
  %.not36 = icmp eq ptr %.1.lcssa.i, null
  br i1 %.not36, label %bb.t, label %bb.g

bb.g:                                             ; preds = %spl_ptr_llist_offset.exit
  %i.x = load ptr, ptr %.1.lcssa.i, align 8, !tbaa !31 ; 3 uses
  %.not37 = icmp eq ptr %i.x, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32 ; 4 uses
  br i1 %.not37, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.pre, ptr %i.y, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %.not38 = icmp eq ptr %.pre, null
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.x, ptr %.pre, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.aa = icmp eq ptr %.1.lcssa.i, %i.z
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %.pre, ptr %i.i, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = icmp eq ptr %.1.lcssa.i, %i.ac
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %.1.lcssa.i, align 8, !tbaa !31
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = add nsw i32 %i.m, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.lcssa.i, i8 0, i64 16, i1 false)
  store i32 %i.af, ptr %i.l, align 8, !tbaa !35
  %i.ag = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = icmp eq ptr %i.ah, %.1.lcssa.i
  br i1 %i.ai, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 28 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !13
  %.not39 = icmp eq i32 %i.al, 0
  br i1 %.not39, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_efree(ptr noundef nonnull %.1.lcssa.i) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.ag, align 8, !tbaa !48
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 16
  call void @zval_ptr_dtor(ptr noundef nonnull %i.am) #12
  %i.an = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 24
  store i32 0, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 28 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !13
  %.not40 = icmp eq i32 %i.aq, 0
  br i1 %.not40, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @_efree(ptr noundef nonnull %.1.lcssa.i) #12
  br label %bb.u

bb.t:                                             ; preds = %spl_ptr_llist_offset.exit
  %i.ar = load ptr, ptr @spl_ce_OutOfRangeException, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.ar, i32 noundef 1, ptr noundef nonnull @.str.7) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.a, %bb.t, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @_efree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #12
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %i.g = sext i32 %i.f to i64
  store i64 %i.g, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.h, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_prev(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #12
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -56
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44
  %i.k = xor i32 %i.j, 2
  tail call fastcc void @spl_dllist_it_helper_move_forward(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef %i.h, i32 noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @spl_dllist_it_helper_move_forward(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  %5 = alloca %struct._zval_struct, align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 2
  %.not17 = icmp eq i32 %i.b, 0
  br i1 %.not17, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31
  store ptr %i.c, ptr %0, align 8, !tbaa !45
  %i.d = load i32, ptr %1, align 4, !tbaa !50
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %1, align 4, !tbaa !50
  %i.f = and i32 %3, 1
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !13
  br label %spl_ptr_llist_pop.exit

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@zim_SplDoublyLinkedList___unserialize:bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.c, i64 -52
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !44
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !13  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !90 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !13
  %i.ah = shl i32 %i.ag, 2
  %i.ai = and i32 %i.ah, 16
  %narrow = sub nuw nsw i32 32, %i.ai
  %i.aj = zext nneg i32 %narrow to i64
  %.not3233 = icmp eq i32 %i.ae, 0
  br i1 %.not3233, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.035 = phi ptr [ %i.bg, %bb.m ], [ %i.al, %.lr.ph.preheader ] ; 3 uses
  %.02634 = phi i32 [ %i.bh, %bb.m ], [ %i.ae, %.lr.ph.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !13
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.h, !prof !38

bb.h:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !24  ; 3 uses
  %i.aq = call noalias ptr @_emalloc_32() #12     ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %.035, align 8, !tbaa !13 ; 3 uses
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !13
  %i.ay = and i32 %i.aw, 65280
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load i32, ptr %i.av, align 4, !tbaa !33
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.av, align 4, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  store i32 1, ptr %i.bb, align 4, !tbaa !13
  %.not21.i = icmp eq ptr %i.as, null
  br i1 %.not21.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aq, ptr %i.bc, align 8, !tbaa !32
  br label %spl_ptr_llist_push.exit

bb.l:                                             ; preds = %bb.j
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !34
  br label %spl_ptr_llist_push.exit

spl_ptr_llist_push.exit:                          ; preds = %bb.k, %bb.l
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !35
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %spl_ptr_llist_push.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.035, i64 %i.aj
  %i.bh = add i32 %.02634, -1                     ; 2 uses
  %.not32 = icmp eq i32 %i.bh, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.m, %bb.g
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !13
  call void @object_properties_load(ptr noundef nonnull %i.c, ptr noundef %i.bi) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare ptr @zend_hash_index_find(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @object_properties_load(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList_add(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.d, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #12
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -72 ; 2 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !24   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp sgt i64 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr @spl_ce_OutOfRangeException, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.q, i32 noundef 1, ptr noundef nonnull @.str.6) #12
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.j, %i.o
  br i1 %i.r, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.t = call noalias ptr @_emalloc_32() #12      ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !13   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !13
  %i.ac = and i32 %i.aa, 65280
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !33
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  store i32 1, ptr %i.af, align 4, !tbaa !13
  %.not21.i = icmp eq ptr %i.v, null
  br i1 %.not21.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.t, ptr %i.ag, align 8, !tbaa !32
  br label %spl_ptr_llist_push.exit

bb.j:                                             ; preds = %bb.h
  store ptr %i.t, ptr %i.l, align 8, !tbaa !34
  br label %spl_ptr_llist_push.exit

spl_ptr_llist_push.exit:                          ; preds = %bb.i, %bb.j
  store ptr %i.t, ptr %i.u, align 8, !tbaa !28
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !35
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.m, align 8, !tbaa !35
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.aj = call noalias ptr @_emalloc_32() #12     ; 8 uses
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !24  ; 3 uses
  %i.al = load i64, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.h, i64 -52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44
  %i.ao = and i32 %i.an, 2
  %.not.i30 = icmp eq i32 %i.ao, 0                ; 2 uses
  %.010.in.idx.i = select i1 %.not.i30, i64 0, i64 8
  %.010.in.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.010.in.idx.i
  %.111.i = load ptr, ptr %.010.in.i, align 8, !tbaa !45 ; 3 uses
  %i.ap = icmp ne ptr %.111.i, null
  %i.aq = icmp sgt i64 %i.al, 0
  %i.ar = and i1 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph.i, label %spl_ptr_llist_offset.exit

.lr.ph.i:                                         ; preds = %bb.k
  %.2.in.idx.i = select i1 %.not.i30, i64 8, i64 0
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %.113.i = phi ptr [ %.111.i, %.lr.ph.i ], [ %.1.i, %bb.l ]
  %.012.i = phi i32 [ 0, %.lr.ph.i ], [ %2, %bb.l ]
  %2 = add nuw nsw i32 %.012.i, 1                 ; 2 uses
  %.2.in.i = getelementptr inbounds nuw i8, ptr %.113.i, i64 %.2.in.idx.i
  %.1.i = load ptr, ptr %.2.in.i, align 8, !tbaa !45 ; 3 uses
  %i.as = icmp ne ptr %.1.i, null
  %3 = zext nneg i32 %2 to i64
  %4 = icmp samesign ugt i64 %i.al, %3
  %i.at = select i1 %i.as, i1 %4, i1 false
  br i1 %i.at, label %bb.l, label %spl_ptr_llist_offset.exit, !llvm.loop !0

spl_ptr_llist_offset.exit:                        ; preds = %bb.l, %bb.k
  %.1.lcssa.i = phi ptr [ %.111.i, %bb.k ], [ %.1.i, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.1.lcssa.i) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !13
  %i.ba = and i32 %i.ay, 65280
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %spl_ptr_llist_offset.exit
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !33
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.aw, align 4, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %spl_ptr_llist_offset.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  store i32 1, ptr %i.bd, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.1.lcssa.i, ptr %i.be, align 8, !tbaa !32
  %i.bf = load ptr, ptr %.1.lcssa.i, align 8, !tbaa !31 ; 3 uses
  store ptr %i.bf, ptr %i.aj, align 8, !tbaa !31
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !34
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.aj, ptr %.1.lcssa.i, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !35
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %spl_ptr_llist_push.exit, %bb.q, %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare noalias ptr @_emalloc_32() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplDoublyLinkedList___debugInfo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #12
  br label %bb.h

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !92
  %i.j = icmp ugt i32 %i.i, 1073741823
  br i1 %i.j, label %bb.c, label %bb.d, !prof !38

bb.c:                                             ; preds = %.critedge
  %i.k = tail call ptr @zend_lazy_object_get_properties(ptr noundef nonnull %i.d) #12
  br label %zend_std_get_properties_ex.exit.i

bb.d:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %zend_std_get_properties_ex.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @rebuild_object_properties_internal(ptr noundef nonnull %i.d) #12
  br label %zend_std_get_properties_ex.exit.i

zend_std_get_properties_ex.exit.i:                ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ %i.n, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !94
  %i.q = add i32 %i.p, 2
  %i.r = tail call ptr @_zend_new_array(i32 noundef %i.q) #12 ; 4 uses
  tail call void @zend_hash_copy(ptr noundef %i.r, ptr noundef %.0.i.i, ptr noundef nonnull @zval_add_ref) #12
  %i.s = getelementptr inbounds i8, ptr %i.d, i64 -52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44
  %i.u = sext i32 %i.t to i64
  store i64 %i.u, ptr %2, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.v, align 8, !tbaa !13
  %i.w = load ptr, ptr @spl_ce_SplDoublyLinkedList, align 8, !tbaa !37
  call void @spl_set_private_debug_info_property(ptr noundef %i.w, ptr noundef nonnull @.str.15, i64 noundef 5, ptr noundef %i.r, ptr noundef nonnull %2) #12
  %i.x = call ptr @_zend_new_array_0() #12        ; 2 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 775, ptr %i.y, align 8, !tbaa !13
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %spl_dllist_object_get_debug_info.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %zend_std_get_properties_ex.exit.i, %bb.g
  %.027.i = phi i64 [ %i.ai, %bb.g ], [ 0, %zend_std_get_properties_ex.exit.i ] ; 2 uses
  %.02226.i = phi ptr [ %i.aa, %bb.g ], [ %i.g, %zend_std_get_properties_ex.exit.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02226.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02226.i, i64 16 ; 2 uses
  %i.ac = call ptr @zend_hash_index_update(ptr noundef %i.x, i64 noundef %.027.i, ptr noundef nonnull %i.ab) #12 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02226.i, i64 25
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %.not23.i = icmp eq i8 %i.ae, 0
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ai = add i64 %.027.i, 1
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %spl_dllist_object_get_debug_info.exit, label %.lr.ph.i, !llvm.loop !91

spl_dllist_object_get_debug_info.exit:            ; preds = %bb.g, %zend_std_get_properties_ex.exit.i
  %i.aj = load ptr, ptr @spl_ce_SplDoublyLinkedList, align 8, !tbaa !37
  call void @spl_set_private_debug_info_property(ptr noundef %i.aj, ptr noundef nonnull @.str.16, i64 noundef 6, ptr noundef %i.r, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  store ptr %i.r, ptr %1, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.ak, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %spl_dllist_object_get_debug_info.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_startup_spl_dllist(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._zend_class_entry, align 8  ; 7 uses
  %3 = alloca %struct._zend_class_entry, align 8  ; 7 uses
  %4 = alloca %struct._zend_class_entry, align 8  ; 7 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %6 = alloca %struct.zend_type, align 8          ; 6 uses
  %7 = alloca %struct._zval_struct, align 8       ; 5 uses
  %8 = alloca %struct.zend_type, align 8          ; 6 uses
  %9 = alloca %struct._zval_struct, align 8       ; 5 uses
  %10 = alloca %struct.zend_type, align 8         ; 6 uses
  %11 = alloca %struct._zval_struct, align 8      ; 5 uses
  %12 = alloca %struct.zend_type, align 8         ; 6 uses
  %i.a = load ptr, ptr @zend_ce_iterator, align 8, !tbaa !37
  %i.b = load ptr, ptr @zend_ce_countable, align 8, !tbaa !37
  %i.c = load ptr, ptr @zend_ce_arrayaccess, align 8, !tbaa !37
  %i.d = load ptr, ptr @zend_ce_serializable, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %4, i8 0, i64 520, i1 false)
  %i.e = load ptr, ptr @zend_string_init_interned, align 8, !tbaa !98
  %i.f = tail call ptr %i.e(ptr noundef nonnull @.str.17, i64 noundef 19, i1 noundef zeroext true) #12, !inline_history !95
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 360
  store ptr @std_object_handlers, ptr %i.h, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 504
  store ptr @class_SplDoublyLinkedList_methods, ptr %i.i, align 8, !tbaa !13
  %i.j = call ptr @zend_register_internal_class_with_flags(ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #12 ; 10 uses
  call void (ptr, i32, ...) @zend_class_implements(ptr noundef %i.j, i32 noundef 4, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store i64 2, ptr %5, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 4, ptr %i.k, align 8, !tbaa !13
  %i.l = load ptr, ptr @zend_string_init_interned, align 8, !tbaa !98
  %i.m = call ptr %i.l(ptr noundef nonnull @.str.18, i64 noundef 12, i1 noundef zeroext true) #12, !inline_history !95 ; 6 uses
  store ptr null, ptr %6, align 8, !tbaa !102
end_hunk_1
