Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend?download=true
inline.NumInlined: 28
inline.NumDeleted: 6
begin_hunk_0_@zend_call_destructors:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #20

declare void @shutdown_destructors() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @zend_deactivate() local_unnamed_addr #0 {
bb.a:
  %0 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !110
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !107
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %0, i32 noundef 0) #37
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @shutdown_scanner() #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  call void @shutdown_executor() #31
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !107
  %i.e = call i32 @__sigsetjmp(ptr noundef nonnull %1, i32 noundef 0) #37
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @zend_ini_deactivate() #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %2, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !107
  %i.g = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #37
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @shutdown_compiler() #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @zend_destroy_rsrc_list(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @executor_globals, i64 608)) #31
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 396), align 4, !tbaa !176
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load i64, ptr @global_map_ptr_last, align 8, !tbaa !97
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @shutdown_scanner() local_unnamed_addr #3

declare void @shutdown_executor() local_unnamed_addr #3

declare void @zend_ini_deactivate() local_unnamed_addr #3

declare void @shutdown_compiler() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @zend_map_ptr_reset() local_unnamed_addr #21 {
bb.a:
  %i.a = load i64, ptr @global_map_ptr_last, align 8, !tbaa !97
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_message_dispatcher(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @zend_message_dispatcher_p, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(i64 noundef %0, ptr noundef %1) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_get_configuration_directive(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @zend_get_configuration_directive_p, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(ptr noundef %0) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_error_zstr_at(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [4 x %struct._zval_struct], align 16 ; 12 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %6 = alloca %struct._zval_struct, align 8       ; 7 uses
  %.sroa.678 = alloca { i32, ptr }, align 8       ; 4 uses
  %.sroa.6 = alloca { i32, ptr }, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.678)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.a = and i32 %0, 30719                        ; 7 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 844), align 4, !tbaa !178 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = and i32 %0, 4437                         ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not138 = icmp eq i32 %i.c, 0
  tail call void @llvm.assume(i1 %.not138)
  %i.d = add nsw i32 %i.b, 1
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 844), align 4, !tbaa !178
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  %.not119.not = icmp ne i32 %i.c, 0              ; 4 uses
  br i1 %.not119.not, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1792), align 8, !tbaa !111, !range !112
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4 ; 3 uses
  %.not120 = icmp eq i32 %i.e, 0
  %.pre152 = load i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1792), align 8, !tbaa !111, !range !112 ; 3 uses
  br i1 %.not120, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113 ; 2 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1792), align 8, !tbaa !111
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 720), align 8, !tbaa !179
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 720), align 8, !tbaa !179
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !121
  tail call void @zend_error_zstr_at(i32 noundef %i.j, ptr noundef %i.l, i32 noundef %i.n, ptr noundef %i.p), !inline_history !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %zend_emit_recorded_errors_ex.exit, label %bb.f, !llvm.loop !1

zend_emit_recorded_errors_ex.exit:                ; preds = %bb.f
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 720), align 8, !tbaa !179
  store i8 %.pre152, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1792), align 8, !tbaa !111
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %zend_emit_recorded_errors_ex.exit, %bb.d
  %i.q = phi i8 [ %.pre, %._crit_edge ], [ %.pre152, %zend_emit_recorded_errors_ex.exit ], [ %.pre152, %bb.d ]
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noalias ptr @_emalloc_24() #31 ; 5 uses
  store i32 %i.a, ptr %i.s, align 8, !tbaa !118
  %7 = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %2, ptr %7, align 4, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  %i.v = and i32 %i.u, 64
  %.not.i141 = icmp eq i32 %i.v, 0
  br i1 %.not.i141, label %bb.i, label %zend_string_copy.exit142

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %1, align 4, !tbaa !32
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %1, align 4, !tbaa !32
  br label %zend_string_copy.exit142

zend_string_copy.exit142:                         ; preds = %bb.h, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %1, ptr %i.y, align 8, !tbaa !119
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = and i32 %i.aa, 64
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.j, label %zend_string_copy.exit

bb.j:                                             ; preds = %zend_string_copy.exit142
  %i.ac = load i32, ptr %3, align 4, !tbaa !32
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %3, align 4, !tbaa !32
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %zend_string_copy.exit142, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %3, ptr %i.ae, align 8, !tbaa !121
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  %i.ag = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  %i.ai = zext i32 %i.ag to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call ptr @_erealloc(ptr noundef %i.ah, i64 noundef %i.aj) #32 ; 2 uses
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  %i.am = add i32 %i.al, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  store ptr %i.s, ptr %i.ao, align 8, !tbaa !116
  br i1 %.not119.not, label %bb.k, label %bb.bd

bb.k:                                             ; preds = %zend_string_copy.exit, %bb.g
  tail call void @zval_ptr_dtor(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @executor_globals, i64 432)) #31
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 440), align 8, !tbaa !21
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !105 ; 3 uses
  %.not121 = icmp eq ptr %i.ap, null
  br i1 %.not121, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not119.not, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.l
  %.0110147 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !180 ; 2 uses
  %.not122148 = icmp eq ptr %.0110147, null
  br i1 %.not122148, label %.critedge139.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.critedge3
  %.0110149 = phi ptr [ %.0110, %.critedge3 ], [ %.0110147, %.preheader ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0110149, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !182 ; 2 uses
  %.not123 = icmp eq ptr %i.ar, null
  br i1 %.not123, label %.critedge3, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !21
  %.not124 = icmp eq i8 %i.as, 1
  br i1 %.not124, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.lr.ph, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.0110149, i64 48
  %.0110 = load ptr, ptr %i.at, align 8, !tbaa !180 ; 2 uses
  %.not122 = icmp eq ptr %.0110, null
  br i1 %.not122, label %.critedge139.thread, label %.lr.ph, !llvm.loop !177

.critedge:                                        ; preds = %bb.m
  %i.au = load ptr, ptr %.0110149, align 8, !tbaa !183
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !101
  %i.ax = icmp eq i8 %i.aw, -107
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 976), align 8 ; 2 uses
  %i.az = icmp ne ptr %i.ay, null
  %or.cond5 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.n, label %.critedge139.thread

.critedge139.thread:                              ; preds = %.critedge3, %.preheader, %.critedge
  %i.ba = tail call i32 @zend_exception_error(ptr noundef nonnull %i.ap, i32 noundef 2) #31 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !105
  br label %bb.q

bb.n:                                             ; preds = %.critedge
  %i.bb = tail call i32 @zend_exception_error(ptr noundef nonnull %i.ap, i32 noundef 2) #31 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !105
  store ptr %i.ay, ptr %.0110149, align 8, !tbaa !183
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 428), align 4, !tbaa !100, !range !112, !noundef !50
  %i.bd = trunc nuw i8 %i.bc to i1
  %brmerge.not = and i1 %.not119.not, %i.bd
  br i1 %brmerge.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 724), align 4, !tbaa !184, !range !112, !noundef !50
  %i.bf = shl nuw nsw i8 %i.be, 1
  %i.bg = zext nneg i8 %i.bf to i32
  tail call void @zend_fetch_debug_backtrace(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @executor_globals, i64 432), i32 noundef 0, i32 noundef %i.bg, i32 noundef 0) #31
  br label %bb.q

bb.q:                                             ; preds = %.critedge139.thread, %bb.o, %bb.l, %bb.n, %bb.p
  %i.bh = load i8, ptr @zend_observer_errors_observed, align 1, !tbaa !104, !range !112, !noundef !50
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.r, label %zend_observer_error_notify.exit, !prof !34

bb.r:                                             ; preds = %bb.q
  tail call void @_zend_observer_error_notify(i32 noundef range(i32 0, 30720) %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3) #31
  br label %zend_observer_error_notify.exit

zend_observer_error_notify.exit:                  ; preds = %bb.q, %bb.r
  %i.bj = load i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 736), align 8, !tbaa !21
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %zend_observer_error_notify.exit
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 720), align 8, !tbaa !179
  %i.bm = and i32 %i.bl, %i.a
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 840), align 8
  %i.bp = icmp ne i32 %i.bo, 0
  %or.cond7 = select i1 %i.bn, i1 true, i1 %i.bp
  br i1 %or.cond7, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %zend_observer_error_notify.exit
  %i.bq = load ptr, ptr @zend_error_cb, align 8, !tbaa !15
  tail call void %i.bq(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #31
  br label %bb.aw

bb.u:                                             ; preds = %bb.s
  %i.br = tail call range(i32 0, 15) i32 @llvm.ctpop.i32(i32 %i.a)
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %.split, label %bb.w

.split:                                           ; preds = %bb.u
  %i.bt = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.a, i1 true)
  switch i32 %i.bt, label %bb.w [
    i32 0, label %bb.v
    i32 2, label %bb.v
    i32 4, label %bb.v
    i32 5, label %bb.v
    i32 6, label %bb.v
    i32 7, label %bb.v
  ]

bb.v:                                             ; preds = %.split, %.split, %.split, %.split, %.split, %.split
  %i.bu = load ptr, ptr @zend_error_cb, align 8, !tbaa !15
  tail call void %i.bu(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #31
  br label %bb.aw

bb.w:                                             ; preds = %.split, %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %3, ptr %i.bv, align 16, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21
  %i.by = and i32 %i.bx, 64
  %.not126 = icmp eq i32 %i.by, 0
  br i1 %.not126, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = load i32, ptr %3, align 4, !tbaa !32
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %3, align 4, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sink = phi i32 [ 262, %bb.x ], [ 6, %bb.w ]
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sink, ptr %i.cb, align 8, !tbaa !21
  %i.cc = zext nneg i32 %i.a to i64
  store i64 %i.cc, ptr %4, align 16, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 4, ptr %i.cd, align 8, !tbaa !21
  %.not127 = icmp eq ptr %1, null
  br i1 %.not127, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %1, ptr %i.ce, align 16, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !21
  %i.ch = and i32 %i.cg, 64
  %.not128 = icmp eq i32 %i.ch, 0
  br i1 %.not128, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = load i32, ptr %1, align 4, !tbaa !32
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %1, align 4, !tbaa !32
end_hunk_0
