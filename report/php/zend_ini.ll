Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_ini?download=true
inline.NumInlined: 19
inline.NumDeleted: 2
begin_hunk_0_@zend_ini_str_ex:bb.a

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %3, align 1, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.f
  %.0 = phi ptr [ %i.g, %bb.f ], [ %i.i, %bb.g ], [ null, %bb.i ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_ini_string(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 856), align 8, !tbaa !49
  %i.b = tail call ptr @zend_hash_str_find(ptr noundef %i.a, ptr noundef %0, i64 noundef %1) #17 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.b, null        ; 2 uses
  br i1 %.not.i.i.not.i, label %zend_ini_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp eq i32 %2, 0
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !80, !noundef !80 ; 2 uses
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 70
  %i.e = load i8, ptr %i.d, align 2, !tbaa !61
  %.not19.i.i = icmp eq i8 %i.e, 0
  br i1 %.not19.i.i, label %bb.d, label %zend_ini_str_ex.exit.sink.split.i

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %zend_ini_str_ex.exit.sink.split.i

zend_ini_str_ex.exit.sink.split.i:                ; preds = %bb.d, %bb.c
  %.sink7.i = phi i64 [ 40, %bb.d ], [ 48, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink7.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  br label %zend_ini_str.exit

zend_ini_str.exit:                                ; preds = %bb.a, %zend_ini_str_ex.exit.sink.split.i
  %.0.i.i = phi ptr [ null, %bb.a ], [ %i.g, %zend_ini_str_ex.exit.sink.split.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  %i.h = load ptr, ptr @zend_empty_string, align 8
  %spec.select.i = select i1 %.not.i, ptr %i.h, ptr %.0.i.i
  %.05.i = select i1 %.not.i.i.not.i, ptr null, ptr %spec.select.i ; 2 uses
  %.not = icmp eq ptr %.05.i, null
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.j = select i1 %.not, ptr null, ptr %i.i
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_ini_str(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 856), align 8, !tbaa !49
  %i.b = tail call ptr @zend_hash_str_find(ptr noundef %i.a, ptr noundef %0, i64 noundef %1) #17 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.b, null          ; 2 uses
  br i1 %.not.i.i.not, label %zend_ini_str_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !80, !noundef !80 ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 70
  %i.e = load i8, ptr %i.d, align 2, !tbaa !61
  %.not19.i = icmp eq i8 %i.e, 0
  br i1 %.not19.i, label %bb.d, label %zend_ini_str_ex.exit.sink.split

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %zend_ini_str_ex.exit.sink.split

zend_ini_str_ex.exit.sink.split:                  ; preds = %bb.c, %bb.d
  %.sink7 = phi i64 [ 40, %bb.d ], [ 48, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink7
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  br label %zend_ini_str_ex.exit

zend_ini_str_ex.exit:                             ; preds = %zend_ini_str_ex.exit.sink.split, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.g, %zend_ini_str_ex.exit.sink.split ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  %i.h = load ptr, ptr @zend_empty_string, align 8
  %spec.select = select i1 %.not, ptr %i.h, ptr %.0.i
  %.05 = select i1 %.not.i.i.not, ptr null, ptr %spec.select
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_ini_get_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 856), align 8, !tbaa !49
  %i.b = tail call ptr @zend_hash_find(ptr noundef %i.a, ptr noundef %0) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %zend_hash_find_ptr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !80, !noundef !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not7 = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr @zend_empty_string, align 8
  %i.g = select i1 %.not7, ptr %i.f, ptr %i.e
  br label %zend_hash_find_ptr.exit.thread

zend_hash_find_ptr.exit.thread:                   ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @zend_ini_parse_bool(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.d, i64 noundef 4, ptr noundef nonnull @.str, i64 noundef 4) #17
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.h, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i64, ptr %i.a, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.f = phi i64 [ %.pr, %thread-pre-split ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.h, i64 noundef 3, ptr noundef nonnull @.str.1, i64 noundef 3) #17
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.j = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %bb.c ]
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.l, i64 noundef 2, ptr noundef nonnull @.str.2, i64 noundef 2) #17
  %.not15 = icmp eq i32 %i.m, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 10) #17, !inline_history !0
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp ne i64 %i.p, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.0 = phi i1 [ %i.q, %bb.g ], [ true, %bb.f ], [ true, %bb.d ], [ true, %bb.b ]
  ret i1 %.0
}

declare i32 @zend_binary_strcasecmp(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @zend_ini_parse_quantity(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @zend_ini_parse_quantity_internal(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zend_ini_parse_quantity_internal(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %struct.smart_str, align 8          ; 33 uses
  %4 = alloca %struct.smart_str, align 8          ; 18 uses
  %5 = alloca %struct.smart_str, align 8          ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not214 = icmp eq i64 %i.e, 0
  br i1 %.not214, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0106202 = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.g = load i8, ptr %.0106202, align 1, !tbaa !50
  switch i8 %i.g, label %.critedge [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 12, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.0106202, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.f
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !102

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.0106.lcssa = phi ptr [ %i.c, %bb.a ], [ %.0106202, %.lr.ph ], [ %i.h, %bb.b ] ; 7 uses
  %i.j = icmp ult ptr %.0106.lcssa, %i.f
  br i1 %i.j, label %.lr.ph206.preheader, label %.critedge2

.lr.ph206.preheader:                              ; preds = %.critedge
  %.0106.lcssa218 = ptrtoaddr ptr %.0106.lcssa to i64
  %i.k = sub i64 %.0106.lcssa218, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.k
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %zend_is_whitespace.exit193
  %.0109205 = phi ptr [ %i.l, %zend_is_whitespace.exit193 ], [ %i.f, %.lr.ph206.preheader ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.0109205, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !50
  switch i8 %i.m, label %.critedge2 [
    i8 32, label %zend_is_whitespace.exit193
    i8 13, label %zend_is_whitespace.exit193
    i8 11, label %zend_is_whitespace.exit193
    i8 10, label %zend_is_whitespace.exit193
    i8 9, label %zend_is_whitespace.exit193
    i8 12, label %zend_is_whitespace.exit193
  ]

zend_is_whitespace.exit193:                       ; preds = %.lr.ph206, %.lr.ph206, %.lr.ph206, %.lr.ph206, %.lr.ph206, %.lr.ph206
  %i.n = icmp ult ptr %.0106.lcssa, %i.l
  br i1 %i.n, label %.lr.ph206, label %.critedge2, !llvm.loop !103

.critedge2:                                       ; preds = %zend_is_whitespace.exit193, %.lr.ph206, %.critedge
  %.0109.lcssa = phi ptr [ %i.f, %.critedge ], [ %.0109205, %.lr.ph206 ], [ %scevgep, %zend_is_whitespace.exit193 ] ; 12 uses
  %.0109.lcssa219 = ptrtoaddr ptr %.0109.lcssa to i64 ; 2 uses
  %i.o = icmp eq ptr %.0106.lcssa, %.0109.lcssa
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge2
  store ptr null, ptr %2, align 8, !tbaa !83
  br label %smart_str_free_ex.exit

bb.d:                                             ; preds = %.critedge2
  %i.p = load i8, ptr %.0106.lcssa, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.p, label %bb.f [
    i8 43, label %thread-pre-split
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.e
  %.0102.ph = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  %.1107.ph = getelementptr inbounds nuw i8, ptr %.0106.lcssa, i64 1 ; 2 uses
  %.pr = load i8, ptr %.1107.ph, align 1, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.q = phi i8 [ %.pr, %thread-pre-split ], [ %i.p, %bb.d ] ; 2 uses
  %.1107 = phi ptr [ %.1107.ph, %thread-pre-split ], [ %.0106.lcssa, %bb.d ] ; 10 uses
  %.0102 = phi i1 [ %.0102.ph, %thread-pre-split ], [ false, %bb.d ] ; 3 uses
  %i.r = tail call ptr @__ctype_b_loc() #19
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107  ; 3 uses
  %i.t = zext i8 %i.q to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !108
  %i.w = and i16 %i.v, 2048
  %.not = icmp eq i16 %i.w, 0
  br i1 %.not, label %smart_str_0.exit147, label %bb.j

smart_str_0.exit147:                              ; preds = %bb.f
  call void @smart_str_append_escaped(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %i.e) #17
  %i.x = load ptr, ptr %3, align 8, !tbaa !110, !nonnull !80, !noundef !80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !50
  %.pre226 = load ptr, ptr %3, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre226, i64 24
  %i.ad = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.ac) #17
  store ptr %i.ad, ptr %2, align 8, !tbaa !83
  %i.ae = load ptr, ptr %3, align 8, !tbaa !110   ; 5 uses
  %.not.i148 = icmp eq ptr %i.ae, null
  br i1 %.not.i148, label %smart_str_free_ex.exit, label %bb.g

bb.g:                                             ; preds = %smart_str_0.exit147
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50
  %i.ah = and i32 %i.ag, 64
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.h, label %smart_str_free_ex.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !54 ; 2 uses
  %i.aj = icmp ne i32 %i.ai, 0
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ae, align 4, !tbaa !54
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %smart_str_free_ex.exit

bb.i:                                             ; preds = %bb.h
  call void @_efree(ptr noundef nonnull %i.ae) #17
  br label %smart_str_free_ex.exit

bb.j:                                             ; preds = %bb.f
  %i.am = icmp eq i8 %i.q, 48
  br i1 %i.am, label %bb.k, label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.1107, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !50  ; 3 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !108
  %i.as = and i16 %i.ar, 2048
  %.not121 = icmp eq i16 %i.as, 0
  br i1 %.not121, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq ptr %i.an, %.0109.lcssa
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %2, align 8, !tbaa !83
  br label %smart_str_free_ex.exit

bb.n:                                             ; preds = %bb.l
  switch i8 %i.ao, label %bb.q [
    i8 103, label %bb.ad
    i8 71, label %bb.ad
    i8 109, label %bb.ad
    i8 77, label %bb.ad
    i8 107, label %bb.ad
    i8 75, label %bb.ad
    i8 120, label %bb.r
    i8 88, label %bb.r
    i8 111, label %bb.o
    i8 79, label %bb.o
    i8 98, label %bb.p
    i8 66, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.n
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.au = sext i8 %i.ao to i32
  %i.av = tail call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %i.au) #17
  store ptr %i.av, ptr %2, align 8, !tbaa !83
  br label %smart_str_free_ex.exit

bb.r:                                             ; preds = %bb.n, %bb.n, %bb.p, %bb.o
  %.not20.i = phi i64 [ 2, %bb.p ], [ 2, %bb.o ], [ 0, %bb.n ], [ 0, %bb.n ]
  %.0100 = phi i32 [ 2, %bb.p ], [ 8, %bb.o ], [ 16, %bb.n ], [ 16, %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.1107, i64 2 ; 8 uses
  %i.ax = icmp eq ptr %i.aw, %.0109.lcssa
  br i1 %i.ax, label %.critedge125, label %bb.s, !prof !59

bb.s:                                             ; preds = %bb.r
  %i.ay = icmp ult ptr %i.aw, %.0109.lcssa
  br i1 %i.ay, label %.lr.ph.preheader.i, label %.critedgethread-pre-split.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.az = ptrtoaddr ptr %i.aw to i64
  %i.ba = sub i64 %.0109.lcssa219, %i.az
  %scevgep.i = getelementptr i8, ptr %i.aw, i64 %i.ba
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %.023.i = phi ptr [ %i.bc, %bb.t ], [ %i.aw, %.lr.ph.preheader.i ] ; 3 uses
  %i.bb = load i8, ptr %.023.i, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.bb, label %.critedge.i [
    i8 32, label %bb.t
    i8 13, label %bb.t
    i8 11, label %bb.t
    i8 10, label %bb.t
    i8 9, label %bb.t
    i8 12, label %bb.t
  ]

bb.t:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bc, %.0109.lcssa
  br i1 %exitcond.not.i, label %.critedgethread-pre-split.i, label %.lr.ph.i, !llvm.loop !104

.critedgethread-pre-split.i:                      ; preds = %bb.t, %bb.s
  %.0.lcssa.i = phi ptr [ %i.aw, %bb.s ], [ %scevgep.i, %bb.t ] ; 2 uses
  %.pr.i = load i8, ptr %.0.lcssa.i, align 1, !tbaa !50
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %.critedgethread-pre-split.i
  %.022.i = phi ptr [ %.0.lcssa.i, %.critedgethread-pre-split.i ], [ %.023.i, %.lr.ph.i ] ; 2 uses
  %i.bd = phi i8 [ %.pr.i, %.critedgethread-pre-split.i ], [ %i.bb, %.lr.ph.i ] ; 2 uses
  switch i8 %i.bd, label %bb.v [
    i8 43, label %bb.u
    i8 45, label %bb.u
  ]

bb.u:                                             ; preds = %.critedge.i, %.critedge.i
  %i.be = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.be, align 1, !tbaa !50
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge.i
  %i.bf = phi i8 [ %.pre.i, %bb.u ], [ %i.bd, %.critedge.i ]
  %.1.i = phi ptr [ %i.be, %bb.u ], [ %.022.i, %.critedge.i ] ; 6 uses
  %i.bg = icmp eq i8 %i.bf, 48
  br i1 %i.bg, label %bb.w, label %zend_ini_consume_quantity_prefix.exit

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !50  ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !108
  %i.bm = and i16 %i.bl, 2048
  %.not.i194 = icmp ne i16 %i.bm, 0
  %i.bn = icmp eq ptr %i.bh, %.0109.lcssa
  %or.cond.i = or i1 %i.bn, %.not.i194
  br i1 %or.cond.i, label %zend_ini_consume_quantity_prefix.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  switch i8 %i.bi, label %zend_ini_consume_quantity_prefix.exit [
    i8 120, label %bb.y
    i8 88, label %bb.y
    i8 111, label %bb.y
    i8 79, label %bb.y
    i8 98, label %bb.z
    i8 66, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  br label %zend_ini_consume_quantity_prefix.exit

bb.z:                                             ; preds = %bb.x, %bb.x
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.not20.i
  br label %zend_ini_consume_quantity_prefix.exit

zend_ini_consume_quantity_prefix.exit:            ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.018.i = phi ptr [ %spec.select.i, %bb.z ], [ %.1.i, %bb.w ], [ %.1.i, %bb.x ], [ %i.bo, %bb.y ], [ %.1.i, %bb.v ]
  %.not196 = icmp eq ptr %i.aw, %.018.i
  br i1 %.not196, label %bb.ad, label %.critedge125, !prof !111

.critedge125:                                     ; preds = %bb.r, %zend_ini_consume_quantity_prefix.exit
  call void @smart_str_append_escaped(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %i.e) #17
  %i.bp = load ptr, ptr %3, align 8, !tbaa !110, !nonnull !80, !noundef !80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs
  store i8 0, ptr %i.bt, align 1, !tbaa !50
  %.pre = load ptr, ptr %3, align 8, !tbaa !110
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bv = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.bu) #17
end_hunk_0
