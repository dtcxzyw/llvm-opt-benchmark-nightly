Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/slib?download=true
inline.NumInlined: 693
inline.NumDeleted: 1
begin_hunk_0_@lrealtime:bb.a
  %i.k = sitofp i64 %i.j to double
  %i.l = fcmp oeq double %.0.i, %i.k
  %i.m = fcmp oge double %.0.i, 0.000000e+00
  %or.cond.i = and i1 %i.m, %i.l
  %i.n = icmp sgt i64 %i.h, %i.j
  %or.cond15.i = and i1 %i.n, %or.cond.i
  br i1 %or.cond15.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @inums, align 8, !tbaa !17
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.j
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %flocons.exit

bb.e:                                             ; preds = %bb.c, %myrealtime.exit
  %i.r = load i64, ptr @gc_kind_copying, align 8, !tbaa !13
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @heap, align 8, !tbaa !20  ; 3 uses
  %i.u = load ptr, ptr @heap_end, align 8, !tbaa !20
  %.not.i2 = icmp ult ptr %i.t, %i.u
  br i1 %.not.i2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null), !inline_history !85 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.w, ptr @heap, align 8, !tbaa !20
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.x = load ptr, ptr @freelist, align 8, !tbaa !20 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @gc_for_newcell()
  %.pre.i = load ptr, ptr @freelist, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi ptr [ %.pre.i, %bb.j ], [ %i.x, %bb.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11
  store ptr %i.ab, ptr @freelist, align 8, !tbaa !20
  %i.ac = load i64, ptr @gc_cells_allocated, align 8, !tbaa !13
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr @gc_cells_allocated, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.0.i1 = phi ptr [ %i.t, %bb.h ], [ %i.z, %bb.k ] ; 4 uses
  store i16 0, ptr %.0.i1, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i1, i64 2
  store i16 2, ptr %i.ae, align 2, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i1, i64 8
  store double %.0.i, ptr %i.af, align 8, !tbaa !11
  br label %flocons.exit

flocons.exit:                                     ; preds = %bb.d, %bb.l
  %.012.i = phi ptr [ %i.q, %bb.d ], [ %.0.i1, %bb.l ]
  ret ptr %.012.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cdar(ptr noundef %0) #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %cdr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !23
  switch i16 %i.c, label %bb.c [
    i16 0, label %cdr.exit
    i16 1, label %car.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %0), !inline_history !77 ; 0 uses
  br label %cdr.exit

car.exit:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %cdr.exit, label %bb.d

bb.d:                                             ; preds = %car.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !23
  switch i16 %i.i, label %bb.f [
    i16 0, label %cdr.exit
    i16 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  br label %cdr.exit

bb.f:                                             ; preds = %bb.d
  %i.l = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.f), !inline_history !78 ; 0 uses
  br label %cdr.exit

cdr.exit:                                         ; preds = %bb.a, %bb.b, %bb.c, %car.exit, %bb.d, %bb.e, %bb.f
  %.0.i1 = phi ptr [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.d ], [ null, %car.exit ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lrand(ptr noundef %0) #6 {
bb.a:
  %i.a = tail call i32 @rand() #31                ; 3 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = sitofp i32 %i.a to double
  %i.d = load i64, ptr @inums_dim, align 8, !tbaa !13 ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %i.a to i64                     ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @inums, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  br label %flocons.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = load i64, ptr @gc_kind_copying, align 8, !tbaa !13
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @heap, align 8, !tbaa !20  ; 3 uses
  %i.n = load ptr, ptr @heap_end, align 8, !tbaa !20
  %.not.i = icmp ult ptr %i.m, %i.n
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null), !inline_history !85 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.p, ptr @heap, align 8, !tbaa !20
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @freelist, align 8, !tbaa !20 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @gc_for_newcell()
  %.pre.i = load ptr, ptr @freelist, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = phi ptr [ %.pre.i, %bb.j ], [ %i.q, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  store ptr %i.u, ptr @freelist, align 8, !tbaa !20
  %i.v = load i64, ptr @gc_cells_allocated, align 8, !tbaa !13
  %i.w = add nsw i64 %i.v, 1
  store i64 %i.w, ptr @gc_cells_allocated, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.0.i = phi ptr [ %i.m, %bb.h ], [ %i.s, %bb.k ] ; 4 uses
  store i16 0, ptr %.0.i, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i16 2, ptr %i.x, align 2, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store double %i.c, ptr %i.y, align 8, !tbaa !11
  br label %flocons.exit

bb.m:                                             ; preds = %bb.a
  %i.z = sext i32 %i.a to i64
  %i.aa = tail call i64 @get_c_long(ptr noundef nonnull %0) #31
  %i.ab = srem i64 %i.z, %i.aa                    ; 3 uses
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = load i64, ptr @inums_dim, align 8, !tbaa !13 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  %i.af = icmp ult i64 %i.ab, %i.ad
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr @inums, align 8, !tbaa !17
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ab
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20
  br label %flocons.exit

bb.o:                                             ; preds = %bb.m
  %i.aj = load i64, ptr @gc_kind_copying, align 8, !tbaa !13
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr @heap, align 8, !tbaa !20 ; 3 uses
  %i.am = load ptr, ptr @heap_end, align 8, !tbaa !20
  %.not.i8 = icmp ult ptr %i.al, %i.am
  br i1 %.not.i8, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null), !inline_history !85 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.ao, ptr @heap, align 8, !tbaa !20
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr @freelist, align 8, !tbaa !20 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @gc_for_newcell()
  %.pre.i7 = load ptr, ptr @freelist, align 8, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = phi ptr [ %.pre.i7, %bb.t ], [ %i.ap, %bb.s ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11
  store ptr %i.at, ptr @freelist, align 8, !tbaa !20
  %i.au = load i64, ptr @gc_cells_allocated, align 8, !tbaa !13
  %i.av = add nsw i64 %i.au, 1
  store i64 %i.av, ptr @gc_cells_allocated, align 8, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.0.i5 = phi ptr [ %i.al, %bb.r ], [ %i.ar, %bb.u ] ; 4 uses
  store i16 0, ptr %.0.i5, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i5, i64 2
  store i16 2, ptr %i.aw, align 2, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i5, i64 8
  store double %i.ac, ptr %i.ax, align 8, !tbaa !11
  br label %flocons.exit

flocons.exit:                                     ; preds = %bb.v, %bb.n, %bb.l, %bb.d
  %.0 = phi ptr [ %.0.i, %bb.l ], [ %i.j, %bb.d ], [ %i.ai, %bb.n ], [ %.0.i5, %bb.v ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @lsrand(ptr noundef %0) #6 {
bb.a:
  %i.a = tail call i64 @get_c_long(ptr noundef %0) #31
  %i.b = trunc i64 %i.a to i32
  tail call void @srand(i32 noundef %i.b) #31
  ret ptr null
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @a_true_value() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @sym_t, align 8, !tbaa !20
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @poparg(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !23
  switch i16 %i.d, label %car.exit [
    i16 0, label %cdr.exit
    i16 1, label %car.exit.thread14
  ]

car.exit.thread14:                                ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %car.exit.thread

car.exit:                                         ; preds = %bb.b
  %i.g = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a), !inline_history !77 ; 0 uses
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !20 ; 2 uses
  %i.h = icmp eq ptr %.pr.pre, null
  br i1 %i.h, label %cdr.exit, label %car.exit.thread

car.exit.thread:                                  ; preds = %car.exit, %car.exit.thread14
  %.0.i.ph18 = phi ptr [ %i.f, %car.exit.thread14 ], [ null, %car.exit ] ; 3 uses
  %.pr17 = phi ptr [ %i.a, %car.exit.thread14 ], [ %.pr.pre, %car.exit ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pr17, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !23
  switch i16 %.pre, label %bb.d [
    i16 0, label %cdr.exit
    i16 1, label %bb.c
  ]

bb.c:                                             ; preds = %car.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %.pr17, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  br label %cdr.exit

bb.d:                                             ; preds = %car.exit.thread
  %i.k = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.pr17), !inline_history !78 ; 0 uses
  br label %cdr.exit

cdr.exit:                                         ; preds = %bb.b, %car.exit, %car.exit.thread, %bb.c, %bb.d
  %.0.i11 = phi ptr [ %.0.i.ph18, %bb.d ], [ %.0.i.ph18, %bb.c ], [ %.0.i.ph18, %car.exit.thread ], [ null, %car.exit ], [ null, %bb.b ]
  %.0.i8 = phi ptr [ null, %bb.d ], [ %i.j, %bb.c ], [ null, %car.exit.thread ], [ null, %car.exit ], [ null, %bb.b ]
  store ptr %.0.i8, ptr %0, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %cdr.exit
  %.0 = phi ptr [ %.0.i11, %cdr.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @last_c_errmsg(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ %0, %bb.a ]   ; 2 uses
  %i.e = tail call ptr @strerror(i32 noundef %i.d) #31 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @last_c_errmsg.serrmsg, ptr noundef nonnull dereferenceable(1) @.str.152, i32 noundef %i.d) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ @last_c_errmsg.serrmsg, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #24

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @lllast_c_errmsg() #6 {
bb.a:
  %i.a = tail call ptr @llast_c_errmsg(i32 noundef -1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @safe_strlen(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %1) #32 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %.0 = select i1 %.not, i64 %1, i64 %i.d
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @parser_read(ptr nofree readnone captures(none) %0) #6 {
bb.a:
  %i.a = tail call ptr @gen_intern(ptr noundef nonnull @.str.172, i64 noundef 0)
  %i.b = tail call ptr @leval(ptr noundef %i.a, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @os_classification() #6 {
bb.a:
  %i.a = tail call ptr @gen_intern(ptr noundef nonnull @.str.238, i64 noundef 0)
  ret ptr %i.a
}
end_hunk_0
