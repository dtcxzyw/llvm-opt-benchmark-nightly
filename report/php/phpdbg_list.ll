Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_list?download=true
inline.NumInlined: 3
begin_hunk_0_@phpdbg_do_list_lines:bb.a
bb.j:                                             ; preds = %bb.i
  %i.bv = and i32 %i.bp, 128
  %.not5.i = icmp eq i32 %i.bv, 0
  br i1 %.not5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.ag) #11
  br label %zend_string_release.exit

bb.l:                                             ; preds = %bb.j
  call void @_efree(ptr noundef nonnull %i.ag) #11
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %phpdbg_list_file.exit, %bb.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.bx = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %0) #11
  %i.by = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.bw, ptr noundef nonnull @.str.12, ptr noundef %i.bx) #11 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %zend_string_alloc.exit, %zend_string_release.exit, %bb.m, %bb.c
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @phpdbg_do_list_class(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  %i.f = trunc i64 %i.e to i32
  %i.g = call i32 @phpdbg_safe_class_lookup(ptr noundef %i.c, i32 noundef %i.f, ptr noundef nonnull %i.a) #11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !75   ; 6 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !115
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 504
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 516
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.q = load i32, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %i.r = add i32 %i.o, 1
  %i.s = sub i32 %i.r, %i.q
  call void @phpdbg_list_file(ptr noundef nonnull %i.m, i32 noundef %i.s, i32 noundef %i.q, i32 noundef 0)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.t, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.w) #11 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.y, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ab) #11 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.af = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ad, ptr noundef nonnull @.str.17, ptr noundef %i.ae) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @phpdbg_do_list_method(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.e = trunc i64 %i.d to i32
  %i.f = call i32 @phpdbg_safe_class_lookup(ptr noundef nonnull %i.c, i32 noundef %i.e, ptr noundef nonnull %i.a) #11
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #12
  %i.k = call ptr @zend_str_tolower_dup(ptr noundef nonnull %i.i, i64 noundef %i.j) #11 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #12
  %i.o = call ptr @zend_hash_str_find(ptr noundef nonnull %i.m, ptr noundef nonnull %i.k, i64 noundef %i.n) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49, !nonnull !53, !noundef !53 ; 5 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !49
  %.not.i11 = icmp eq i8 %i.q, 2
  br i1 %.not.i11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.r, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.u) #11 ; 0 uses
  br label %phpdbg_list_function.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.z = load i32, ptr %i.y, align 4, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !78 ; 2 uses
  %i.ac = add i32 %i.z, 1
  %i.ad = sub i32 %i.ac, %i.ab
  call void @phpdbg_list_file(ptr noundef %i.x, i32 noundef %i.ad, i32 noundef %i.ab, i32 noundef 0)
  br label %phpdbg_list_function.exit

bb.f:                                             ; preds = %bb.b
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.ah = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ae, ptr noundef nonnull @.str.13, ptr noundef %i.af, ptr noundef %i.ag) #11 ; 0 uses
  br label %phpdbg_list_function.exit

phpdbg_list_function.exit:                        ; preds = %bb.e, %bb.d, %bb.f
  call void @_efree(ptr noundef nonnull %i.k) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.ak = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ai, ptr noundef nonnull @.str.14, ptr noundef %i.aj) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %phpdbg_list_function.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @phpdbg_do_list_func(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  tail call void @phpdbg_list_function_byname(ptr noundef %i.b, i64 noundef %i.d)
  ret i32 0
}

declare zeroext i1 @zend_is_executing() local_unnamed_addr #1

declare i32 @phpdbg_print(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @phpdbg_current_file() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @phpdbg_list_file(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @zend_hash_find(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1424), ptr noundef %0) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.c = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.b, ptr noundef nonnull @.str.18) #11 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49, !nonnull !53, !noundef !53 ; 4 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %i.e = add i32 %2, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.g = load i32, ptr %i.f, align 8, !tbaa !69
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.g) ; 3 uses
  %i.h = icmp ult i32 %spec.select, %.0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 276 ; 4 uses
  %.not44 = icmp eq i32 %3, 0
  %i.j = zext nneg i32 %spec.select to i64        ; 2 uses
  br i1 %.not44, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.k = zext i32 %3 to i64
  %wide.trip.count = zext i32 %.0 to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count55 = zext i32 %.0 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %indvars.iv52 = phi i64 [ %i.j, %.lr.ph.split.us.preheader ], [ %indvars.iv.next53, %bb.e ] ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !70   ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next53
  %i.o = load i32, ptr %i.n, align 4, !tbaa !70   ; 2 uses
  %i.p = sub i32 %i.o, %i.m                       ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.r = zext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.u = trunc nuw i64 %indvars.iv.next53 to i32
  %i.v = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 4, i32 noundef %i.t, ptr noundef nonnull @.str.19, i32 noundef %i.u, i32 noundef %i.p, ptr noundef %i.s) #11 ; 0 uses
  %i.w = zext i32 %i.p to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !49
  %i.aa = icmp eq i8 %i.z, 10
  %i.ab = icmp ne i32 %i.o, %i.m
  %or.cond.us = and i1 %i.aa, %i.ab
  br i1 %or.cond.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.ad = tail call i32 (i32, ptr, ...) @phpdbg_out_internal(i32 noundef %i.ac, ptr noundef nonnull @.str.21) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !70 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !70 ; 2 uses
  %i.ai = sub i32 %i.ah, %i.af                    ; 3 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.ak = zext i32 %i.af to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 3 uses
  %.not45 = icmp eq i64 %indvars.iv.next, %i.k
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44 ; 2 uses
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.an = trunc nuw i64 %indvars.iv.next to i32
  %i.ao = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 4, i32 noundef %i.am, ptr noundef nonnull @.str.19, i32 noundef %i.an, i32 noundef %i.ai, ptr noundef %i.al) #11 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.ap = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 4, i32 noundef %i.am, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %i.ai, ptr noundef %i.al) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !49
  %i.au = icmp eq i8 %i.at, 10
  %i.av = icmp ne i32 %i.ah, %i.af
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.ax = tail call i32 (i32, ptr, ...) @phpdbg_out_internal(i32 noundef %i.aw, ptr noundef nonnull @.str.21) #11 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !0

.loopexit:                                        ; preds = %bb.j, %bb.e, %bb.c, %bb.b
  ret void
}

declare i32 @zend_get_executed_lineno() local_unnamed_addr #1

declare void @_efree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @tsrm_realpath(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @phpdbg_get_param_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @phpdbg_list_function_byname(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !49
  %i.b = icmp eq i8 %i.a, 46
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @zend_get_executed_scope() #11  ; 2 uses
  %.not26.not = icmp eq ptr %i.c, null
  br i1 %.not26.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.e = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.d, ptr noundef nonnull @.str.23) #11 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = add i64 %1, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 456), align 8, !tbaa !138 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.k = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.j, ptr noundef nonnull @.str.24) #11 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.c, %bb.d
  %.122 = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %.120 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.d ]
  %.1 = phi i64 [ %i.g, %bb.c ], [ %1, %bb.d ]    ; 2 uses
  %i.l = call ptr @zend_str_tolower_dup(ptr noundef nonnull %.120, i64 noundef %.1) #11 ; 4 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2176), align 8, !tbaa !139 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %2, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2176), align 8, !tbaa !139
  %i.n = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #14
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.p = call ptr @zend_hash_str_find(ptr noundef nonnull %.122, ptr noundef %i.l, i64 noundef %.1) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49, !nonnull !53, !noundef !53 ; 5 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !49
  %.not.i28 = icmp eq i8 %i.r, 2
  br i1 %.not.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.s, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.v) #11 ; 0 uses
  br label %phpdbg_list_function.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 180
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !78 ; 2 uses
  %i.ad = add i32 %i.aa, 1
  %i.ae = sub i32 %i.ad, %i.ac
  call void @phpdbg_list_file(ptr noundef %i.y, i32 noundef %i.ae, i32 noundef %i.ac, i32 noundef 0)
  br label %phpdbg_list_function.exit

bb.k:                                             ; preds = %bb.g
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.ag = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.af, ptr noundef nonnull @.str.25, ptr noundef %i.l) #11 ; 0 uses
  br label %phpdbg_list_function.exit

bb.l:                                             ; preds = %bb.f
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2176), align 8, !tbaa !139
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !44
  %i.ai = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ah, ptr noundef nonnull @.str.26, ptr noundef %i.l) #11 ; 0 uses
  br label %phpdbg_list_function.exit

phpdbg_list_function.exit:                        ; preds = %bb.j, %bb.i, %bb.k, %bb.l
end_hunk_0
begin_hunk_1_@phpdbg_init_compile_file:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ar, ptr noundef nonnull align 8 dereferenceable(256) %i.al, i64 256, i1 false), !tbaa.struct !96
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !97 ; 3 uses
  %.not27 = icmp eq ptr %i.at, null
  br i1 %.not27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %zend_hash_find_ptr.exit
  %i.au = load i32, ptr %i.at, align 4, !tbaa !70
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !70
  br label %bb.p

bb.p:                                             ; preds = %zend_hash_find_ptr.exit, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.al
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nounwind uwtable
define hidden ptr @phpdbg_compile_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !145
  %i.b = and i64 %i.a, 4096
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1416), align 8, !tbaa !98
  %i.d = tail call ptr %i.c(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52
  %i.g = shl i64 %i.f, 2
  %i.h = add i64 %i.g, 280
  %i.i = tail call noalias ptr @_emalloc(i64 noundef %i.h) #13 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.e, align 8, !tbaa !52
  %i.l = tail call noalias ptr @_estrndup(ptr noundef nonnull %i.j, i64 noundef %i.k) #11 ; 4 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !71
  %i.m = load i64, ptr %i.e, align 8, !tbaa !52   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !146
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 276 ; 3 uses
  store i32 0, ptr %i.o, align 4, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %.not88 = icmp eq i64 %i.m, 0
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = ptrtoint ptr %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.r = phi ptr [ %i.l, %.lr.ph ], [ %i.ab, %bb.f ] ; 3 uses
  %.07887 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !49
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.u, %i.q
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %i.w, 1
  %i.y = add i32 %.07887, 1                       ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.z
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.y, %bb.e ], [ %.07887, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.p
  br i1 %i.ac, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !144

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.ad = add i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.078.lcssa = phi i32 [ 1, %bb.c ], [ %i.ad, %._crit_edge.loopexit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  store i32 %.078.lcssa, ptr %i.ae, align 8, !tbaa !69
  %i.af = trunc i64 %i.m to i32
  %i.ag = zext i32 %.078.lcssa to i64             ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !70
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1416), align 8, !tbaa !98
  %i.aj = tail call ptr %i.ai(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %zend_hash_add_ptr.exit

bb.g:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !71
  tail call void @_efree(ptr noundef %i.al) #11
  tail call void @_efree(ptr noundef nonnull %i.i) #11
  br label %bb.m

zend_hash_add_ptr.exit:                           ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !147
  %i.ao = tail call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef 0, ptr noundef %i.an) #11 ; 6 uses
  %i.ap = shl nuw nsw i64 %i.ag, 2
  %i.aq = add nuw nsw i64 %i.ap, 280
  %i.ar = tail call ptr @_erealloc(ptr noundef nonnull %i.i, i64 noundef %i.aq) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.ar, ptr %3, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 13, ptr %i.as, align 8, !tbaa !49
  %i.at = call ptr @zend_hash_add(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1424), ptr noundef %i.ao, ptr noundef nonnull %3) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !49 ; 2 uses
  %i.aw = and i32 %i.av, 64
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.h, label %zend_string_release.exit

bb.h:                                             ; preds = %zend_hash_add_ptr.exit
  %i.ax = load i32, ptr %i.ao, align 4, !tbaa !48 ; 2 uses
  %i.ay = icmp ne i32 %i.ax, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !48
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.i, label %zend_string_release.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = and i32 %i.av, 128
  %.not5.i = icmp eq i32 %i.bb, 0
  br i1 %.not5.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.ao) #11
  br label %zend_string_release.exit

bb.k:                                             ; preds = %bb.i
  call void @_efree(ptr noundef nonnull %i.ao) #11
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %zend_hash_add_ptr.exit, %bb.h, %bb.j, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bc, ptr noundef nonnull align 8 dereferenceable(256) %i.aj, i64 256, i1 false), !tbaa.struct !96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 3 uses
  %.not85 = icmp eq ptr %i.be, null
  br i1 %.not85, label %bb.m, label %bb.l

bb.l:                                             ; preds = %zend_string_release.exit
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !70
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %zend_string_release.exit, %bb.l, %bb.g, %bb.b
  %.079 = phi ptr [ %i.d, %bb.b ], [ null, %bb.g ], [ %i.aj, %bb.l ], [ %i.aj, %zend_string_release.exit ]
  ret ptr %.079
}

declare ptr @zend_strpprintf(i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @phpdbg_init_list() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @zend_compile_file, align 8, !tbaa !99
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1400), align 8, !tbaa !81
  %i.b = load ptr, ptr @zend_compile_string, align 8, !tbaa !99
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1416), align 8, !tbaa !98
  store ptr @phpdbg_compile_file, ptr @zend_compile_file, align 8, !tbaa !99
  store ptr @phpdbg_compile_string, ptr @zend_compile_string, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @phpdbg_list_update() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @zend_compile_file, align 8, !tbaa !99
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1408), align 8, !tbaa !82
  store ptr @phpdbg_init_compile_file, ptr @zend_compile_file, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @zend_hash_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind returns_twice }
attributes #15 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !72}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"_zend_refcounted_h", !10, i64 0, !9, i64 4}
!14 = !{!"long", !9, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_zend_array", !13, i64 0, !9, i64 8, !10, i64 12, !9, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !14, i64 40, !15, i64 48}
!17 = !{!"p1 _ZTS18_zend_execute_data", !15, i64 0}
!18 = !{!"p1 _ZTS12_zend_object", !15, i64 0}
!19 = !{!"p1 _ZTS15_zend_generator", !15, i64 0}
!20 = !{!"", !10, i64 0, !19, i64 8, !17, i64 16}
!21 = !{!"p1 omnipotent char", !15, i64 0}
!22 = !{!"", !10, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !10, i64 40}
!23 = !{!"p1 _ZTS13_phpdbg_param", !15, i64 0}
!24 = !{!"", !9, i64 0}
!25 = !{!"sigaction", !9, i64 0, !24, i64 8, !10, i64 136, !15, i64 144}
!26 = !{!"_Bool", !9, i64 0}
!27 = !{!"p1 _ZTS20_phpdbg_btree_branch", !15, i64 0}
!28 = !{!"", !14, i64 0, !14, i64 8, !26, i64 16, !27, i64 24}
!29 = !{!"p1 _ZTS11_zend_array", !15, i64 0}
!30 = !{!"p1 _ZTS21_phpdbg_watch_element", !15, i64 0}
!31 = !{!"p1 _ZTS14_zend_op_array", !15, i64 0}
!32 = !{!"_zval_struct", !9, i64 0, !9, i64 8, !9, i64 12}
!33 = !{!"p1 _ZTS11_zend_arena", !15, i64 0}
!34 = !{!"p1 _ZTS18_phpdbg_oplog_list", !15, i64 0}
!35 = !{!"p1 _ZTS19_phpdbg_oplog_entry", !15, i64 0}
!36 = !{!"", !26, i64 0, !10, i64 4, !10, i64 8, !21, i64 16, !10, i64 24}
!37 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!38 = !{!"p1 _ZTS19_php_stream_wrapper", !15, i64 0}
!39 = !{!"p1 _ZTS13_zend_mm_heap", !15, i64 0}
!40 = !{!"", !21, i64 0, !26, i64 8, !39, i64 16, !39, i64 24}
!41 = !{!"p1 _ZTS13__jmp_buf_tag", !15, i64 0}
!42 = !{!"_zend_phpdbg_globals", !9, i64 0, !16, i64 616, !16, i64 672, !17, i64 728, !18, i64 736, !20, i64 744, !10, i64 768, !21, i64 776, !22, i64 784, !23, i64 832, !25, i64 840, !10, i64 992, !14, i64 1000, !28, i64 1008, !28, i64 1040, !16, i64 1072, !16, i64 1128, !16, i64 1184, !16, i64 1240, !29, i64 1296, !29, i64 1304, !29, i64 1312, !26, i64 1320, !15, i64 1328, !30, i64 1336, !21, i64 1344, !14, i64 1352, !31, i64 1360, !32, i64 1368, !10, i64 1384, !10, i64 1388, !26, i64 1392, !26, i64 1393, !15, i64 1400, !15, i64 1408, !15, i64 1416, !16, i64 1424, !33, i64 1480, !34, i64 1488, !35, i64 1496, !9, i64 1504, !15, i64 1520, !36, i64 1528, !14, i64 1560, !9, i64 1568, !9, i64 1584, !21, i64 1608, !26, i64 1616, !37, i64 1624, !38, i64 1632, !9, i64 1640, !10, i64 2140, !40, i64 2144, !41, i64 2176, !14, i64 2184, !21, i64 2192, !14, i64 2200}
!43 = !{!"", !10, i64 0}
!44 = !{!43, !10, i64 0}
!45 = !{!"", !21, i64 0, !14, i64 8}
!46 = !{!"", !21, i64 0, !21, i64 8}
!47 = !{!"_phpdbg_param", !10, i64 0, !14, i64 8, !14, i64 16, !45, i64 24, !46, i64 40, !21, i64 56, !14, i64 64, !23, i64 72, !23, i64 80}
!48 = !{!13, !10, i64 0}
!49 = !{!9, !9, i64 0}
!50 = !{!"_zend_string", !13, i64 0, !14, i64 8, !14, i64 16, !9, i64 24}
!51 = !{!50, !14, i64 8}
!52 = !{!50, !14, i64 16}
!53 = !{}
!54 = !{!"p1 _ZTS12_zend_string", !15, i64 0}
!55 = !{!"p1 _ZTS17_zend_class_entry", !15, i64 0}
!56 = !{!"p1 _ZTS14_zend_function", !15, i64 0}
!57 = !{!"p1 _ZTS14_zend_arg_info", !15, i64 0}
!58 = !{!"any p2 pointer", !15, i64 0}
!59 = !{!"p1 _ZTS19_zend_property_info", !15, i64 0}
!60 = !{!"p1 _ZTS8_zend_op", !15, i64 0}
!61 = !{!"p2 _ZTS12_zend_string", !58, i64 0}
!62 = !{!"p1 int", !15, i64 0}
!63 = !{!"p1 _ZTS16_zend_live_range", !15, i64 0}
!64 = !{!"p1 _ZTS23_zend_try_catch_element", !15, i64 0}
!65 = !{!"p1 _ZTS12_zval_struct", !15, i64 0}
!66 = !{!"p2 _ZTS14_zend_op_array", !58, i64 0}
!67 = !{!"_zend_op_array", !9, i64 0, !9, i64 1, !10, i64 4, !54, i64 8, !55, i64 16, !56, i64 24, !10, i64 32, !10, i64 36, !57, i64 40, !29, i64 48, !58, i64 56, !54, i64 64, !10, i64 72, !59, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !60, i64 104, !29, i64 112, !29, i64 120, !61, i64 128, !62, i64 136, !10, i64 144, !10, i64 148, !63, i64 152, !64, i64 160, !54, i64 168, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !65, i64 192, !66, i64 200, !9, i64 208}
!68 = !{!"", !21, i64 0, !14, i64 8, !67, i64 16, !10, i64 272, !9, i64 276}
!69 = !{!68, !10, i64 272}
!70 = !{!10, !10, i64 0}
!71 = !{!68, !21, i64 0}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!47, !21, i64 56}
!74 = !{!47, !14, i64 64}
!75 = !{!55, !55, i64 0}
!76 = !{!67, !54, i64 168}
!77 = !{!67, !10, i64 180}
!78 = !{!67, !10, i64 176}
!79 = !{!"_zend_file_handle", !9, i64 0, !54, i64 40, !54, i64 48, !9, i64 56, !26, i64 57, !26, i64 58, !21, i64 64, !14, i64 72}
!80 = !{!79, !54, i64 40}
!81 = !{!42, !15, i64 1400}
!82 = !{!42, !15, i64 1408}
!83 = !{!54, !54, i64 0}
!84 = !{!56, !56, i64 0}
!85 = !{!57, !57, i64 0}
!86 = !{!29, !29, i64 0}
!87 = !{!58, !58, i64 0}
!88 = !{!59, !59, i64 0}
!89 = !{!60, !60, i64 0}
!90 = !{!61, !61, i64 0}
!91 = !{!62, !62, i64 0}
!92 = !{!63, !63, i64 0}
!93 = !{!64, !64, i64 0}
!94 = !{!65, !65, i64 0}
!95 = !{!66, !66, i64 0}
!96 = !{i64 0, i64 1, !49, i64 1, i64 3, !49, i64 4, i64 4, !70, i64 8, i64 8, !83, i64 16, i64 8, !75, i64 24, i64 8, !84, i64 32, i64 4, !70, i64 36, i64 4, !70, i64 40, i64 8, !85, i64 48, i64 8, !86, i64 56, i64 8, !87, i64 64, i64 8, !83, i64 72, i64 4, !70, i64 80, i64 8, !88, i64 88, i64 4, !70, i64 92, i64 4, !70, i64 96, i64 4, !70, i64 104, i64 8, !89, i64 112, i64 8, !86, i64 120, i64 8, !86, i64 128, i64 8, !90, i64 136, i64 8, !91, i64 144, i64 4, !70, i64 148, i64 4, !70, i64 152, i64 8, !92, i64 160, i64 8, !93, i64 168, i64 8, !83, i64 176, i64 4, !70, i64 180, i64 4, !70, i64 184, i64 4, !70, i64 188, i64 4, !70, i64 192, i64 8, !94, i64 200, i64 8, !95, i64 208, i64 48, !49}
!97 = !{!68, !62, i64 152}
!98 = !{!42, !15, i64 1416}
!99 = !{!15, !15, i64 0}
!100 = !{!42, !21, i64 1344}
!101 = !{!47, !10, i64 0}
!102 = !{!47, !14, i64 8}
!103 = !{!47, !21, i64 24}
!104 = !{!47, !14, i64 32}
!105 = !{!"p1 _ZTS24_zend_class_mutable_data", !15, i64 0}
!106 = !{!"p1 _ZTS29_zend_inheritance_cache_entry", !15, i64 0}
!107 = !{!"p2 _ZTS19_zend_property_info", !58, i64 0}
!108 = !{!"p1 _ZTS21_zend_object_handlers", !15, i64 0}
!109 = !{!"p1 _ZTS26_zend_class_iterator_funcs", !15, i64 0}
!110 = !{!"p1 _ZTS29_zend_class_arrayaccess_funcs", !15, i64 0}
!111 = !{!"p1 _ZTS16_zend_class_name", !15, i64 0}
!112 = !{!"p2 _ZTS17_zend_trait_alias", !58, i64 0}
!113 = !{!"p2 _ZTS22_zend_trait_precedence", !58, i64 0}
!114 = !{!"_zend_class_entry", !9, i64 0, !54, i64 8, !9, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !65, i64 40, !65, i64 48, !65, i64 56, !16, i64 64, !16, i64 120, !16, i64 176, !105, i64 232, !106, i64 240, !107, i64 248, !56, i64 256, !56, i64 264, !56, i64 272, !56, i64 280, !56, i64 288, !56, i64 296, !56, i64 304, !56, i64 312, !56, i64 320, !56, i64 328, !56, i64 336, !56, i64 344, !56, i64 352, !108, i64 360, !109, i64 368, !110, i64 376, !9, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !10, i64 424, !10, i64 428, !10, i64 432, !10, i64 436, !9, i64 440, !111, i64 448, !112, i64 456, !113, i64 464, !29, i64 472, !10, i64 480, !29, i64 488, !54, i64 496, !9, i64 504}
!115 = !{!114, !9, i64 0}
!116 = !{!114, !54, i64 8}
!117 = !{!47, !21, i64 40}
!118 = !{!47, !21, i64 48}
!119 = !{!"p2 _ZTS11_zend_array", !58, i64 0}
!120 = !{!"p1 _ZTS14_zend_vm_stack", !15, i64 0}
!121 = !{!"zend_atomic_bool_s", !9, i64 0}
!122 = !{!"_zend_stack", !10, i64 0, !10, i64 4, !10, i64 8, !15, i64 16}
!123 = !{!"p1 _ZTS15_zend_ini_entry", !15, i64 0}
!124 = !{!"p2 _ZTS12_zend_object", !58, i64 0}
!125 = !{!"_zend_objects_store", !124, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!126 = !{!"_zend_lazy_objects_store", !16, i64 0}
!127 = !{!"p1 _ZTS18_zend_module_entry", !15, i64 0}
!128 = !{!"p1 _ZTS18_HashTableIterator", !15, i64 0}
!129 = !{!"_zend_op", !15, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !10, i64 20, !10, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31}
!130 = !{!"", !65, i64 0, !65, i64 8, !65, i64 16}
!131 = !{!"p1 _ZTS19_zend_fiber_context", !15, i64 0}
!132 = !{!"p1 _ZTS11_zend_fiber", !15, i64 0}
!133 = !{!"p2 _ZTS16_zend_error_info", !58, i64 0}
!134 = !{!"_zend_call_stack", !15, i64 0, !14, i64 8}
!135 = !{!"p1 _ZTS19_zend_strtod_bigint", !15, i64 0}
!136 = !{!"_zend_strtod_state", !9, i64 0, !135, i64 64, !21, i64 72}
!137 = !{!"_zend_executor_globals", !32, i64 0, !32, i64 16, !9, i64 32, !119, i64 288, !119, i64 296, !16, i64 304, !16, i64 360, !41, i64 416, !10, i64 424, !26, i64 428, !32, i64 432, !10, i64 448, !29, i64 456, !29, i64 464, !29, i64 472, !65, i64 480, !65, i64 488, !120, i64 496, !14, i64 504, !17, i64 512, !55, i64 520, !10, i64 528, !17, i64 536, !10, i64 544, !14, i64 552, !10, i64 560, !10, i64 564, !10, i64 568, !26, i64 572, !26, i64 573, !121, i64 574, !121, i64 575, !29, i64 576, !14, i64 584, !15, i64 592, !15, i64 600, !16, i64 608, !16, i64 664, !10, i64 720, !26, i64 724, !32, i64 728, !32, i64 744, !122, i64 760, !122, i64 784, !122, i64 808, !55, i64 832, !10, i64 840, !10, i64 844, !14, i64 848, !29, i64 856, !29, i64 864, !123, i64 872, !125, i64 880, !126, i64 904, !18, i64 960, !18, i64 968, !60, i64 976, !9, i64 984, !127, i64 1080, !26, i64 1088, !9, i64 1089, !14, i64 1096, !10, i64 1104, !10, i64 1108, !128, i64 1112, !9, i64 1120, !15, i64 1376, !9, i64 1384, !129, i64 1640, !16, i64 1672, !14, i64 1728, !130, i64 1736, !131, i64 1760, !131, i64 1768, !132, i64 1776, !14, i64 1784, !26, i64 1792, !10, i64 1796, !133, i64 1800, !54, i64 1808, !14, i64 1816, !134, i64 1824, !14, i64 1840, !14, i64 1848, !136, i64 1856, !9, i64 1936}
!138 = !{!137, !29, i64 456}
!139 = !{!42, !41, i64 2176}
!140 = distinct !{!140, !72}
!141 = !{!21, !21, i64 0}
!142 = !{!14, !14, i64 0}
!143 = !{!79, !54, i64 48}
!144 = distinct !{!144, !72}
!145 = !{!42, !14, i64 2184}
!146 = !{!68, !14, i64 8}
!147 = !{!67, !60, i64 104}
end_hunk_1
