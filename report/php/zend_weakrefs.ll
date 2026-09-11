Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_weakrefs?download=true
inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0_@zend_weakmap_read_dimension:bb.a
  %i.l = tail call ptr @zend_hash_index_find(ptr noundef nonnull %i.h, i64 noundef %i.k) #7 ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not35 = icmp eq i32 %2, 3
  br i1 %.not35, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !57
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.r, i32 noundef %i.t) #7
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.u = add i32 %2, -1
  %or.cond = icmp ult i32 %i.u, 2
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !13
  %i.x = icmp eq i8 %i.w, 10
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call noalias ptr @_emalloc_32() #7  ; 6 uses
  store i32 1, ptr %i.y, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 26, ptr %i.z, align 4, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !13
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !13
  store ptr %i.y, ptr %i.l, align 8, !tbaa !13
  store i32 778, ptr %i.v, align 8, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.j, %bb.f, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.h ], [ %i.l, %bb.k ], [ %i.l, %bb.l ], [ %i.l, %bb.j ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @zim_WeakMap_offsetSet(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !42
  call void @zend_weakmap_write_dimension(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zend_weakmap_write_dimension(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.4) #7
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13    ; 2 uses
  %i.d = icmp eq i8 %i.c, 10
  br i1 %i.d, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = phi i8 [ %.pre, %bb.d ], [ %i.c, %bb.c ]
  %.0 = phi ptr [ %i.f, %bb.d ], [ %1, %bb.c ]
  %.not = icmp eq i8 %i.g, 8
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.5) #7
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds i8, ptr %0, i64 -56 ; 3 uses
  %i.i = load ptr, ptr %.0, align 8, !tbaa !13    ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 8) ]
  %i.k = lshr exact i64 %i.j, 3                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %.not34 = icmp eq i8 %i.n, 0
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = tail call ptr @zend_hash_index_find(ptr noundef nonnull %i.h, i64 noundef %i.k) #7 ; 4 uses
  %.not35 = icmp eq ptr %i.r, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !13
  store ptr %i.s, ptr %3, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.u, ptr %i.v, align 8, !tbaa !13
  %i.w = load ptr, ptr %2, align 8, !tbaa !13
  %i.x = load i32, ptr %i.l, align 8, !tbaa !13
  store ptr %i.w, ptr %i.r, align 8, !tbaa !13
  store i32 %i.x, ptr %i.t, align 8, !tbaa !13
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.h to i64
  %i.z = or i64 %i.y, 1
  %i.aa = inttoptr i64 %i.z to ptr
  tail call fastcc void @zend_weakref_register(ptr noundef %i.i, ptr noundef nonnull %i.aa)
  %i.ab = tail call ptr @zend_hash_index_add_new(ptr noundef nonnull %i.h, i64 noundef %i.k, ptr noundef nonnull %2) #7 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_WeakMap_offsetExists(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #7
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !13    ; 2 uses
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i8 [ %.pre.i, %bb.c ], [ %i.j, %bb.b ]
  %.010.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %.not.i = icmp eq i8 %i.n, 8
  br i1 %.not.i, label %bb.e, label %zend_weakmap_has_dimension.exit.thread

zend_weakmap_has_dimension.exit.thread:           ; preds = %bb.d
  call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.5) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -56
  %i.p = load ptr, ptr %.010.i, align 8, !tbaa !13 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 8) ]
  %i.r = lshr exact i64 %i.q, 3
  %i.s = call ptr @zend_hash_index_find(ptr noundef nonnull %i.o, i64 noundef %i.r) #7 ; 2 uses
  %.not12.i = icmp eq ptr %i.s, null
  br i1 %.not12.i, label %bb.f, label %zend_weakmap_has_dimension.exit.a

zend_weakmap_has_dimension.exit.a:                ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !13
  %2 = icmp ne i8 %i.u, 1
  %3 = zext i1 %2 to i32
  %4 = or disjoint i32 %3, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %zend_weakmap_has_dimension.exit.a, %zend_weakmap_has_dimension.exit.thread
  %.1.i = phi i32 [ 2, %zend_weakmap_has_dimension.exit.thread ], [ 2, %bb.e ], [ %4, %zend_weakmap_has_dimension.exit.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.1.i, ptr %i.v, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @zend_weakmap_has_dimension(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !13    ; 2 uses
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.010 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %.not = icmp eq i8 %i.f, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.5) #7
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %0, i64 -56
  %i.h = load ptr, ptr %.010, align 8, !tbaa !13  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %i.j = lshr exact i64 %i.i, 3
  %i.k = tail call ptr @zend_hash_index_find(ptr noundef nonnull %i.g, i64 noundef %i.j) #7 ; 3 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %i_zend_is_true.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not13 = icmp eq i32 %2, 0
  br i1 %.not13, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.r
  %.012.i = phi ptr [ %i.am, %bb.r ], [ %i.k, %bb.f ] ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !13
  switch i8 %i.m, label %i_zend_is_true.exit [
    i8 3, label %i_zend_is_true.exit.loopexit41
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.k
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.q
    i8 10, label %bb.r
  ]

bb.g:                                             ; preds = %.preheader
  %i.n = load i64, ptr %.012.i, align 8, !tbaa !13
  %.not17.i = icmp ne i64 %i.n, 0
  br label %i_zend_is_true.exit

bb.h:                                             ; preds = %.preheader
  %i.o = load double, ptr %.012.i, align 8, !tbaa !13 ; 2 uses
  %i.p = fcmp uno double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.j, !prof !28

bb.i:                                             ; preds = %bb.h
  tail call void @zend_nan_coerced_to_type_warning(i8 noundef zeroext 18) #7
  %.pre29 = load double, ptr %.012.i, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = phi double [ %.pre29, %bb.i ], [ %i.o, %bb.h ]
  %i.r = fcmp une double %i.q, 0.000000e+00
  br label %i_zend_is_true.exit

bb.k:                                             ; preds = %.preheader
  %i.s = load ptr, ptr %.012.i, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !99   ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %i_zend_is_true.exit.loopexit41, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not15.i = icmp eq i64 %i.u, 0
  br i1 %.not15.i, label %i_zend_is_true.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !13
  %.not16.i = icmp eq i8 %i.x, 48
  br i1 %.not16.i, label %i_zend_is_true.exit, label %i_zend_is_true.exit.loopexit41

bb.n:                                             ; preds = %.preheader
  %i.y = load ptr, ptr %.012.i, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26
  %.not14.i = icmp ne i32 %i.aa, 0
  br label %i_zend_is_true.exit

bb.o:                                             ; preds = %.preheader
  %i.ab = load ptr, ptr %.012.i, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.ag = icmp eq ptr %i.af, @zend_std_cast_object_tostring
  br i1 %i.ag, label %i_zend_is_true.exit, label %bb.p, !prof !34

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call zeroext i1 @zend_object_is_true(ptr noundef nonnull %.012.i) #7
  br label %i_zend_is_true.exit

bb.q:                                             ; preds = %.preheader
  %i.ai = load ptr, ptr %.012.i, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !103
  %.not.i = icmp ne i64 %i.ak, 0
  br label %i_zend_is_true.exit

bb.r:                                             ; preds = %.preheader
  %i.al = load ptr, ptr %.012.i, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %.preheader

bb.s:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !13
  %i.ap = icmp ne i8 %i.ao, 1
  br label %i_zend_is_true.exit

i_zend_is_true.exit.loopexit41:                   ; preds = %.preheader, %bb.k, %bb.m
  br label %i_zend_is_true.exit

i_zend_is_true.exit:                              ; preds = %.preheader, %i_zend_is_true.exit.loopexit41, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.g, %bb.e, %bb.s
  %.0.shrunk = phi i1 [ false, %bb.e ], [ %i.ap, %bb.s ], [ %i.ah, %bb.p ], [ true, %i_zend_is_true.exit.loopexit41 ], [ %.not14.i, %bb.n ], [ %.not.i, %bb.q ], [ %.not17.i, %bb.g ], [ true, %bb.o ], [ %i.r, %bb.j ], [ false, %bb.m ], [ false, %bb.l ], [ false, %.preheader ]
  %.0 = zext i1 %.0.shrunk to i32
  br label %bb.t

bb.t:                                             ; preds = %i_zend_is_true.exit, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ %.0, %i_zend_is_true.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @zim_WeakMap_offsetUnset(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #7
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %zend_weakmap_unset_dimension.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !13    ; 2 uses
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i8 [ %.pre.i, %bb.c ], [ %i.j, %bb.b ]
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %.not.i = icmp eq i8 %i.n, 8
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.5) #7
  br label %zend_weakmap_unset_dimension.exit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -56 ; 2 uses
  %i.p = load ptr, ptr %.0.i, align 8, !tbaa !13  ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 8) ]
  %i.r = lshr exact i64 %i.q, 3
  %i.s = call ptr @zend_hash_index_find(ptr noundef nonnull %i.o, i64 noundef range(i64 0, 2305843009213693952) %i.r) #7
  %.not9.i = icmp eq ptr %i.s, null
  br i1 %.not9.i, label %zend_weakmap_unset_dimension.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = or i64 %i.t, 1
  %i.v = inttoptr i64 %i.u to ptr
end_hunk_0
