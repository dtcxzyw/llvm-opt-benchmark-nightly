inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@vm_weak_table_gen_fields_foreach:bb.a
  %i.ac = getelementptr i8, ptr %i.ab, i64 1248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = getelementptr i8, ptr %i.ad, i64 28     ; 2 uses
  %.val.i.i = load i16, ptr %i.ae, align 4        ; 2 uses
  %i.af = and i16 %.val.i.i, 8
  %.not.i.i.i = icmp eq i16 %i.af, 0
  %i.ag = or i16 %.val.i.i, 8
  store i16 %i.ag, ptr %i.ae, align 4
  %i.ah = call ptr @rb_generic_fields_tbl_get() #46
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !59
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !59
  %i.ak = call i32 @rb_st_insert(ptr noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.aj) #46 ; 0 uses
  br i1 %.not.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.am = getelementptr i8, ptr %i.al, i64 1248
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !62
  %i.ao = getelementptr i8, ptr %i.an, i64 28     ; 2 uses
  %.val.i.i27 = load i16, ptr %i.ao, align 4
  %i.ap = and i16 %.val.i.i27, -9
  store i16 %i.ap, ptr %i.ao, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ %.023, %bb.j ], [ %.023, %bb.k ], [ %.023, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.0
}

declare void @rb_fstring_foreach_with_replace(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @vm_weak_table_frozen_strings_foreach(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !578
  %i.b = load i64, ptr %0, align 8, !tbaa !59
  %i.c = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !580
  %i.e = tail call i32 %i.a(i64 noundef %i.b, ptr noundef %i.d) #46 ; 2 uses
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !582
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !580
  %i.j = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %i.i) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %i.k = icmp eq i32 %.0, 2
  br i1 %i.k, label %bb.d, label %RB_FL_UNSET.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %i.l, 7
  %i.o = icmp eq i64 %i.n, 0
  %.not4.i = and i1 %i.m, %i.o
  br i1 %.not4.i, label %bb.e, label %RB_FL_UNSET.exit

bb.e:                                             ; preds = %bb.d
  %i.p = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !109
  %i.r = and i64 %i.q, -536870913
  store i64 %i.r, ptr %i.p, align 8, !tbaa !109
  br label %RB_FL_UNSET.exit

RB_FL_UNSET.exit:                                 ; preds = %bb.e, %bb.d, %bb.c
  ret i32 %.0
}

declare i32 @rb_set_foreach_with_replace(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @vm_weak_table_cc_refinement_foreach(i64 noundef %0, i64 noundef %1, i32 %2) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !578
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !580
  %i.e = tail call i32 %i.b(i64 noundef %0, ptr noundef %i.d) #46
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @vm_weak_table_cc_refinement_foreach_update_update(ptr noundef %0, i64 noundef %1, i32 %2) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !582
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !580
  %i.f = tail call i32 %i.c(ptr noundef %0, ptr noundef %i.e) #46
  ret i32 %i.f
}

declare void @rb_yjit_mark_all_executable() local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @heap_pages_free_unused_pages(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 808        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !424
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 872        ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 912        ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !334  ; 2 uses
  %.not40 = icmp eq i64 %i.e, 0
  br i1 %.not40, label %bb.l, label %rb_darray_size.exit.lr.ph

rb_darray_size.exit.lr.ph:                        ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 800        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !80, !nonnull !29, !noundef !29 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 888        ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !96
  %.not66 = icmp eq i64 %i.i, 0
  br i1 %.not66, label %rb_darray_size.exit45.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %rb_darray_size.exit.lr.ph, %rb_darray_size.exit
  %.0395063 = phi i64 [ %.1, %rb_darray_size.exit ], [ 0, %rb_darray_size.exit.lr.ph ] ; 4 uses
  %.05162 = phi i64 [ %1, %rb_darray_size.exit ], [ 0, %rb_darray_size.exit.lr.ph ] ; 3 uses
  %i.j = phi i64 [ %i.ae, %rb_darray_size.exit ], [ %i.e, %rb_darray_size.exit.lr.ph ] ; 2 uses
  %i.k = phi ptr [ %i.ad, %rb_darray_size.exit ], [ %i.g, %rb_darray_size.exit.lr.ph ] ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %.05162
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 6 uses
  %i.o = getelementptr i8, ptr %i.n, i64 2
  %.val43 = load i16, ptr %i.o, align 2, !tbaa !108
  %i.p = icmp eq i16 %.val43, 0
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %.not41 = icmp eq i64 %i.j, 0
  br i1 %.not41, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !184
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.h, align 8, !tbaa !184
  %i.s = getelementptr i8, ptr %i.n, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 2 uses
  %.b.i.i = load i1, ptr @heap_page_alloc_use_mmap, align 1
  br i1 %.b.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @munmap(ptr noundef %i.t, i64 noundef 65536) #46
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %heap_page_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.104) #61
  unreachable

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.t) #46
  br label %heap_page_free.exit

heap_page_free.exit:                              ; preds = %bb.e, %bb.g
  tail call void @free(ptr noundef nonnull %i.n) #46
  %i.v = load i64, ptr %i.d, align 8, !tbaa !334
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.d, align 8, !tbaa !334
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !80
  br label %rb_darray_size.exit

bb.h:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !424
  %i.y = getelementptr i8, ptr %i.n, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !454
  store ptr %i.n, ptr %i.a, align 8, !tbaa !424
  %i.z = load i64, ptr %i.f, align 8, !tbaa !333
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !333
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.not42 = icmp eq i64 %.05162, %.0395063
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %.0395063
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !99
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = add i64 %.0395063, 1
  br label %rb_darray_size.exit

rb_darray_size.exit:                              ; preds = %bb.k, %heap_page_free.exit
  %i.ad = phi ptr [ %.pre, %heap_page_free.exit ], [ %i.k, %bb.k ] ; 4 uses
  %i.ae = phi i64 [ %i.w, %heap_page_free.exit ], [ %i.j, %bb.k ]
  %.1 = phi i64 [ %.0395063, %heap_page_free.exit ], [ %i.ac, %bb.k ] ; 2 uses
  %1 = add nuw i64 %.05162, 1                     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !96
  %i.ag = icmp ult i64 %1, %i.af
  br i1 %i.ag, label %.lr.ph, label %rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge

rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge: ; preds = %rb_darray_size.exit
  %i.ah = sub i64 %.1, %1
  br label %rb_darray_size.exit45.loopexit

rb_darray_size.exit45.loopexit:                   ; preds = %rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge, %rb_darray_size.exit.lr.ph
  %.lcssa = phi ptr [ %i.ad, %rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge ], [ %i.g, %rb_darray_size.exit.lr.ph ] ; 4 uses
  %i.ai = phi i64 [ %i.ah, %rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge ], [ 0, %rb_darray_size.exit.lr.ph ]
  %i.aj = load i64, ptr %.lcssa, align 8, !tbaa !96
  %i.ak = add i64 %i.aj, %i.ai                    ; 2 uses
  store i64 %i.ak, ptr %.lcssa, align 8, !tbaa !96
  %i.al = getelementptr i8, ptr %.lcssa, i64 8
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !185
  %i.aq = getelementptr i8, ptr %0, i64 896
  %i.ar = getelementptr i8, ptr %.lcssa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !99
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !185
  %i.av = insertelement <2 x ptr> poison, ptr %i.au, i64 0
  %i.aw = insertelement <2 x ptr> %i.av, ptr %i.ap, i64 1
  %i.ax = ptrtoint <2 x ptr> %i.aw to <2 x i64>
  %i.ay = add <2 x i64> %i.ax, <i64 8, i64 65536>
  store <2 x i64> %i.ay, ptr %i.aq, align 8, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %rb_darray_size.exit45.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @heap_page_allocate_and_initialize(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 808        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !424  ; 4 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %bb.b, label %heap_page_resurrect.exit

heap_page_resurrect.exit:                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 800        ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !333
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !333
  %i.h = getelementptr i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !454
  store ptr %i.i, ptr %i.b, align 8, !tbaa !424
  %.phi.trans.insert = getelementptr i8, ptr %i.c, i64 32
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !185
  %.pre33 = ptrtoint ptr %.pre32 to i64           ; 2 uses
  %.pre34 = add i64 %.pre33, 8
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 920
  %i.k = load i64, ptr %i.j, align 8, !tbaa !331
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.b.i.i = load i1, ptr @heap_page_alloc_use_mmap, align 1
  br i1 %.b.i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @mmap(ptr noundef null, i64 noundef 131072, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #46 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %.not26.i.i, label %heap_page_body_allocate.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %i.l, i64 noundef 131072, ptr noundef nonnull @.str.148) #46 ; 0 uses
  %i.n = tail call ptr @rb_errno_ptr() #46
  store i32 0, ptr %i.n, align 4, !tbaa !7
  %i.o = getelementptr i8, ptr %i.l, i64 65536    ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 65535                      ; 4 uses
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.o, i64 %i.r     ; 3 uses
  %i.t = sub nuw nsw i64 65536, %i.q
  %i.u = tail call i32 @munmap(ptr noundef %i.l, i64 noundef %i.t) #46
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.149) #61
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not24.i.i = icmp eq i64 %i.q, 0
  br i1 %.not24.i.i, label %heap_page_body_allocate.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.s, i64 65536
  %i.w = tail call i32 @munmap(ptr noundef %i.v, i64 noundef %i.q) #46
  %.not25.i.i = icmp eq i32 %i.w, 0
  br i1 %.not25.i.i, label %heap_page_body_allocate.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.150) #61
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.x = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 65536, i64 noundef 65536) #46
  %.not.i.i.i = icmp eq i32 %i.x, 0
  %i.y = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br i1 %.not.i.i.i, label %heap_page_body_allocate.exit.i, label %heap_page_body_allocate.exit.thread.i

heap_page_body_allocate.exit.i:                   ; preds = %bb.j, %bb.h, %bb.g
  %.1.i.i = phi ptr [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %i.y, %bb.j ] ; 6 uses
  %i.z = icmp eq ptr %.1.i.i, null
  br i1 %i.z, label %heap_page_body_allocate.exit.thread.i, label %bb.k

heap_page_body_allocate.exit.thread.i:            ; preds = %heap_page_body_allocate.exit.i, %bb.j, %bb.d
  call void @rb_memerror() #62
  unreachable

bb.k:                                             ; preds = %heap_page_body_allocate.exit.i
  %i.aa = call noalias noundef dereferenceable_or_null(1736) ptr @calloc(i64 noundef 1, i64 noundef 1736) #64 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @heap_page_body_free(ptr noundef nonnull %.1.i.i)
  call void @rb_memerror() #62
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ac = ptrtoint ptr %.1.i.i to i64             ; 3 uses
  %i.ad = add i64 %i.ac, 8                        ; 5 uses
  %i.ae = add i64 %i.ac, 65536                    ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 872       ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !80 ; 6 uses
  %.not.i53.i = icmp eq ptr %i.ag, null           ; 2 uses
  br i1 %.not.i53.i, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %bb.m
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96 ; 4 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %rb_darray_size.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rb_darray_size.exit.i
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i
  %.060.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.r ] ; 2 uses
  %.04559.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.146.i, %bb.r ] ; 2 uses
  %i.aj = add i64 %.04559.i, %.060.i
  %i.ak = lshr i64 %i.aj, 1                       ; 4 uses
  %i.al = getelementptr [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !99
  %i.an = getelementptr i8, ptr %i.am, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !107 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.ad
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = add nuw i64 %i.ak, 1
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ar = icmp ugt i64 %i.ao, %i.ad
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.147, ptr noundef nonnull %.1.i.i, i64 noundef %i.ak) #61
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %.146.i = phi i64 [ %.04559.i, %bb.o ], [ %i.ak, %bb.p ] ; 3 uses
  %.1.i = phi i64 [ %i.aq, %bb.o ], [ %.060.i, %bb.p ] ; 2 uses
  %i.as = icmp ult i64 %.1.i, %.146.i
  br i1 %i.as, label %bb.n, label %rb_darray_size.exit.i.i, !llvm.loop !583

rb_darray_size.exit.i.i:                          ; preds = %bb.r, %rb_darray_size.exit.i
  %.045.lcssa.ph.i = phi i64 [ 0, %rb_darray_size.exit.i ], [ %.146.i, %bb.r ] ; 4 uses
  %i.at = getelementptr i8, ptr %i.ag, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !292
  %.fr.i.i = freeze i64 %i.au                     ; 3 uses
  %i.av = icmp ult i64 %i.ah, %.fr.i.i
  br i1 %i.av, label %rb_darray_ensure_space.exit.thread.i, label %bb.s

rb_darray_ensure_space.exit.thread.i:             ; preds = %rb_darray_size.exit.i.i
  %i.aw = getelementptr i8, ptr %i.ag, i64 16
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.045.lcssa.ph.i
  br label %rb_darray_size.exit56.i

bb.s:                                             ; preds = %rb_darray_size.exit.i.i
  %i.ay = icmp eq i64 %.fr.i.i, 0
  %i.az = shl i64 %.fr.i.i, 1                     ; 3 uses
  br i1 %i.ay, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = icmp ugt i64 %i.az, 2305843009213693951
end_hunk_0
