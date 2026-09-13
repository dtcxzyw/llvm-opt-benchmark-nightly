Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_load_extension:bb.a
  br label %bb.bd

sqlite3LoadExtension.exit:                        ; preds = %sqlite3_free.exit172.i, %sqlite3DbFree.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !918
  %.not = icmp eq i8 %i.ho, 0
  br i1 %.not, label %sqlite3ApiExit.exit, label %bb.bd

bb.bd:                                            ; preds = %sqlite3LoadExtension.exit.thread, %sqlite3LoadExtension.exit
  %.3.i20 = phi i32 [ %.3.i.ph, %sqlite3LoadExtension.exit.thread ], [ 0, %sqlite3LoadExtension.exit ]
  %i.hp = call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %.3.i20)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %sqlite3LoadExtension.exit, %bb.bd
  %.0.i = phi i32 [ %i.hp, %bb.bd ], [ 0, %sqlite3LoadExtension.exit ]
  %i.hq = load ptr, ptr %i.b, align 8, !tbaa !594 ; 2 uses
  %.not.i10 = icmp eq ptr %i.hq, null
  br i1 %.not.i10, label %sqlite3_mutex_leave.exit, label %bb.be

bb.be:                                            ; preds = %sqlite3ApiExit.exit
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.hr(ptr noundef nonnull %i.hq) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3ApiExit.exit, %bb.be
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define noundef i32 @sqlite3_enable_load_extension(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.c(ptr noundef nonnull %i.b) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %.not = icmp eq i32 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !917
  %i.f = and i64 %i.e, -196609
  %masksel = select i1 %.not, i64 0, i64 196608
  %.sink = or disjoint i64 %i.f, %masksel
  store i64 %.sink, ptr %i.d, align 8, !tbaa !917
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i4 = icmp eq ptr %i.g, null
  br i1 %.not.i4, label %sqlite3_mutex_leave.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.h(ptr noundef nonnull %i.g) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_mutex_enter.exit, %bb.c
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_auto_extension(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize()      ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %sqlite3_mutex_leave.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.d = tail call ptr %i.c(i32 noundef 2) #58, !inline_history !7 ; 3 uses
  %.not.i20 = icmp eq ptr %i.d, null
  br i1 %.not.i20, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.e(ptr noundef nonnull %i.d) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.b, %sqlite3MutexAlloc.exit, %bb.c
  %.not.i2027 = phi i1 [ false, %bb.c ], [ true, %sqlite3MutexAlloc.exit ], [ true, %bb.b ]
  %.0.i26 = phi ptr [ %i.d, %bb.c ], [ null, %sqlite3MutexAlloc.exit ], [ null, %bb.b ]
  %i.f = load i32, ptr @sqlite3Autoext.0, align 8, !tbaa !1231 ; 4 uses
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3_mutex_enter.exit
  %i.g = load ptr, ptr @sqlite3Autoext.1, align 8, !tbaa !1232
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !851
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d, !llvm.loop !3289

._crit_edge:                                      ; preds = %bb.d
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %._crit_edge.thread, label %sqlite3_realloc64.exit.thread

._crit_edge.thread:                               ; preds = %bb.e, %sqlite3_mutex_enter.exit, %._crit_edge
  %i.m = load ptr, ptr @sqlite3Autoext.1, align 8, !tbaa !1232
  %i.n = tail call i32 @sqlite3_initialize(), !inline_history !1233
  %.not.i21 = icmp eq i32 %i.n, 0
  br i1 %.not.i21, label %sqlite3_realloc64.exit, label %sqlite3_realloc64.exit.thread

sqlite3_realloc64.exit:                           ; preds = %._crit_edge.thread
  %i.o = add i32 %i.f, 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.m, i64 noundef %i.q), !inline_history !1233 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %sqlite3_realloc64.exit.thread, label %bb.f

bb.f:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.r, ptr @sqlite3Autoext.1, align 8, !tbaa !1232
  %i.t = load i32, ptr @sqlite3Autoext.0, align 8, !tbaa !1231 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  store ptr %0, ptr %i.v, align 8, !tbaa !851
  %i.w = add i32 %i.t, 1
  store i32 %i.w, ptr @sqlite3Autoext.0, align 8, !tbaa !1231
  br label %sqlite3_realloc64.exit.thread

sqlite3_realloc64.exit.thread:                    ; preds = %._crit_edge.thread, %bb.f, %sqlite3_realloc64.exit, %._crit_edge
  %.1 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.f ], [ 7, %sqlite3_realloc64.exit ], [ 7, %._crit_edge.thread ] ; 2 uses
  br i1 %.not.i2027, label %sqlite3_mutex_leave.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit.thread
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.x(ptr noundef nonnull %.0.i26) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.g, %sqlite3_realloc64.exit.thread, %bb.a
  %.015 = phi i32 [ %i.a, %bb.a ], [ %.1, %sqlite3_realloc64.exit.thread ], [ %.1, %bb.g ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @sqlite3_cancel_auto_extension(ptr nofree noundef readnone captures(address) %0) #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i = icmp eq i8 %i.a, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.c = tail call ptr %i.b(i32 noundef 2) #58, !inline_history !7 ; 3 uses
  %.not.i9 = icmp eq ptr %i.c, null
  br i1 %.not.i9, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.d(ptr noundef nonnull %i.c) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %sqlite3MutexAlloc.exit, %bb.b
  %.not.i914 = phi i1 [ false, %bb.b ], [ true, %sqlite3MutexAlloc.exit ], [ true, %bb.a ]
  %.0.i13 = phi ptr [ %i.c, %bb.b ], [ null, %sqlite3MutexAlloc.exit ], [ null, %bb.a ]
  %i.e = load i32, ptr @sqlite3Autoext.0, align 8, !tbaa !1231 ; 3 uses
  %i.f = load ptr, ptr @sqlite3Autoext.1, align 8 ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %sqlite3_mutex_enter.exit
  %i.h = zext nneg i32 %i.e to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.i = trunc nuw i64 %i.k to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.loopexit, !llvm.loop !3290

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv22 = phi i64 [ %i.h, %.lr.ph ], [ %i.k, %bb.c ]
  %i.k = add nsw i64 %indvars.iv22, -1            ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !851
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.e, label %bb.c, !llvm.loop !3290

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k
  %i.p = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.p, ptr @sqlite3Autoext.0, align 8, !tbaa !1231
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !851
  store ptr %i.s, ptr %i.o, align 8, !tbaa !851
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %sqlite3_mutex_enter.exit, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %sqlite3_mutex_enter.exit ], [ 0, %bb.c ]
  br i1 %.not.i914, label %sqlite3_mutex_leave.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.t(ptr noundef nonnull %.0.i13) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %.loopexit, %bb.f
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @sqlite3_reset_auto_extension() #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize()
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %sqlite3_mutex_leave.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.e = tail call ptr %i.d(i32 noundef 2) #58, !inline_history !7 ; 3 uses
  %.not.i2 = icmp eq ptr %i.e, null
  br i1 %.not.i2, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.b, %sqlite3MutexAlloc.exit, %bb.c
  %.not.i28 = phi i1 [ false, %bb.c ], [ true, %sqlite3MutexAlloc.exit ], [ true, %bb.b ]
  %.0.i7 = phi ptr [ %i.e, %bb.c ], [ null, %sqlite3MutexAlloc.exit ], [ null, %bb.b ]
  %i.g = load ptr, ptr @sqlite3Autoext.1, align 8, !tbaa !1232 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %sqlite3_free.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.i = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i3 = icmp eq i32 %i.i, 0
  br i1 %.not.i3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.k(ptr noundef nonnull %i.j) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.f, %bb.e
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.m = tail call i32 %i.l(ptr noundef nonnull %i.g) #58, !inline_history !13
  %i.n = sext i32 %i.m to i64
  %i.o = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.p = sub nsw i64 %i.o, %i.n
  store i64 %i.p, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.r = add nsw i64 %i.q, -1
  store i64 %i.r, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.s(ptr noundef nonnull %i.g) #58, !inline_history !749
  %i.t = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.t, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.u(ptr noundef nonnull %i.t) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.h:                                             ; preds = %bb.d
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.v(ptr noundef nonnull %i.g) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit, %sqlite3_mutex_enter.exit.i, %bb.g, %bb.h
  store ptr null, ptr @sqlite3Autoext.1, align 8, !tbaa !1232
  store i32 0, ptr @sqlite3Autoext.0, align 8, !tbaa !1231
  br i1 %.not.i28, label %sqlite3_mutex_leave.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3_free.exit
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.w(ptr noundef nonnull %.0.i7) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.i, %sqlite3_free.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_prepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef null, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3LockAndPrepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  store ptr null, ptr %5, align 8, !tbaa !889
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3SafetyCheckOk.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.c = load i8, ptr %i.b, align 1, !tbaa !960
  switch i8 %i.c, label %sqlite3SafetyCheckOk.exit.thread [
    i8 118, label %sqlite3SafetyCheckOk.exit
    i8 -70, label %sqlite3SafetyCheckSickOrOk.exit.i
    i8 109, label %sqlite3SafetyCheckSickOrOk.exit.i
  ]

sqlite3SafetyCheckSickOrOk.exit.i:                ; preds = %bb.b, %bb.b
  br label %sqlite3SafetyCheckOk.exit.thread

sqlite3SafetyCheckOk.exit.thread:                 ; preds = %bb.a, %bb.b, %sqlite3SafetyCheckSickOrOk.exit.i
  %.str.1495.sink.i = phi ptr [ @.str.5, %bb.a ], [ @.str.651, %sqlite3SafetyCheckSickOrOk.exit.i ], [ @.str.1495, %bb.b ]
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.652, ptr noundef nonnull %.str.1495.sink.i), !inline_history !42
  br label %bb.c

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.b
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sqlite3SafetyCheckOk.exit.thread, %sqlite3SafetyCheckOk.exit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1807, i32 noundef 148759, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !0
  br label %sqlite3_mutex_leave.exit

bb.d:                                             ; preds = %sqlite3SafetyCheckOk.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.g(ptr noundef nonnull %i.f) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !603
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %sqlite3BtreeEnterAll.exit

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit
  tail call fastcc void @btreeEnterAll(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnterAll.exit

sqlite3BtreeEnterAll.exit:                        ; preds = %sqlite3_mutex_enter.exit, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.l = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge5, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3BtreeEnterAll.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.q = phi i32 [ %i.l, %.lr.ph ], [ %i.am, %.critedge.backedge ] ; 4 uses
  %.040 = phi i32 [ 0, %.lr.ph ], [ %.0.be, %.critedge.backedge ] ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !tbaa !918
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.h, label %.critedge5

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %.040, 1
  %i.t = icmp eq i32 %i.q, 513
  %i.u = icmp slt i32 %.040, 25
  %or.cond3 = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond3, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %i.q, 17
  br i1 %i.v, label %bb.j, label %.critedge5

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.n, align 8, !tbaa !1011
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.preheader.i, label %sqlite3ResetOneSchema.exit

.preheader.i:                                     ; preds = %bb.j
  %i.y = load i32, ptr %i.o, align 8, !tbaa !604  ; 2 uses
end_hunk_0
begin_hunk_1_@balance:bb.a
  %i.awb = add nuw nsw i32 %i.awa, %i.avx
  %i.awc = zext i1 %.not619.i to i32
  %.not585.i = icmp eq i8 %i.aau, 0
  %i.awd = zext nneg i32 %.0496.lcssa11251127.i to i64
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fu, %.lr.ph841.i
  %i.awe = phi i32 [ %i.ahh, %.lr.ph841.i ], [ %i.azb, %bb.fu ] ; 2 uses
  %indvars.iv1008.i = phi i64 [ 0, %.lr.ph841.i ], [ %indvars.iv.next1009.i, %bb.fu ] ; 7 uses
  %.0484839.i = phi i32 [ 0, %.lr.ph841.i ], [ %.1.lcssa.i, %bb.fu ] ; 2 uses
  %.0485838.i = phi i32 [ 0, %.lr.ph841.i ], [ %.2.ph.i, %bb.fu ] ; 3 uses
  %.0487837.i = phi i32 [ %i.awb, %.lr.ph841.i ], [ %.1488.lcssa.i, %bb.fu ] ; 3 uses
  %.0489836.i = phi ptr [ %i.avu, %.lr.ph841.i ], [ %.2491.ph.i, %bb.fu ]
  %.0492835.i = phi ptr [ %i.avu, %.lr.ph841.i ], [ %.1493.lcssa.i, %bb.fu ]
  %i.awf = load ptr, ptr %i.ap, align 8, !tbaa !1859
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %indvars.iv1008.i
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !741 ; 7 uses
  %i.awi = zext i32 %.0487837.i to i64
  %i.awj = icmp eq i64 %indvars.iv1008.i, %i.awi
  br i1 %i.awj, label %.lr.ph828.preheader.i, label %._crit_edge829.i

.lr.ph828.preheader.i:                            ; preds = %bb.ff
  %i.awk = sext i32 %.0484839.i to i64
  br label %.lr.ph828.i

.lr.ph828.i:                                      ; preds = %.lr.ph828.i, %.lr.ph828.preheader.i
  %indvars.iv1004.i = phi i64 [ %i.awk, %.lr.ph828.preheader.i ], [ %indvars.iv.next1005.i, %.lr.ph828.i ]
  %.1488825.i = phi i32 [ %.0487837.i, %.lr.ph828.preheader.i ], [ %i.awv, %.lr.ph828.i ]
  %indvars.iv.next1005.i = add nsw i64 %indvars.iv1004.i, 1 ; 4 uses
  %i.awl = icmp slt i64 %indvars.iv.next1005.i, %i.awd
  %.in.v.i = select i1 %i.awl, ptr %i.c, ptr %i.b
  %.in.i = getelementptr inbounds [8 x i8], ptr %.in.v.i, i64 %indvars.iv.next1005.i
  %i.awm = load ptr, ptr %.in.i, align 8, !tbaa !1514 ; 3 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 24
  %i.awo = load i16, ptr %i.awn, align 8, !tbaa !1501
  %i.awp = zext i16 %i.awo to i32
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awm, i64 12
  %i.awr = load i8, ptr %i.awq, align 4, !tbaa !1500
  %i.aws = zext i8 %i.awr to i32
  %i.awt = add i32 %.1488825.i, %i.awc
  %i.awu = add i32 %i.awt, %i.awp
  %i.awv = add i32 %i.awu, %i.aws                 ; 3 uses
  %i.aww = zext i32 %i.awv to i64
  %i.awx = icmp eq i64 %indvars.iv1008.i, %i.aww
  br i1 %i.awx, label %.lr.ph828.i, label %._crit_edge829.loopexit.i, !llvm.loop !4311

._crit_edge829.loopexit.i:                        ; preds = %.lr.ph828.i
  %i.awy = trunc nsw i64 %indvars.iv.next1005.i to i32
  br label %._crit_edge829.i

._crit_edge829.i:                                 ; preds = %._crit_edge829.loopexit.i, %bb.ff
  %.1493.lcssa.i = phi ptr [ %.0492835.i, %bb.ff ], [ %i.awm, %._crit_edge829.loopexit.i ] ; 4 uses
  %.1488.lcssa.i = phi i32 [ %.0487837.i, %bb.ff ], [ %i.awv, %._crit_edge829.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0484839.i, %bb.ff ], [ %i.awy, %._crit_edge829.loopexit.i ] ; 3 uses
  %i.awz = sext i32 %.0485838.i to i64
  %i.axa = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.awz
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !570
  %i.axc = zext i32 %i.axb to i64
  %i.axd = icmp eq i64 %indvars.iv1008.i, %i.axc
  br i1 %i.axd, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %._crit_edge829.i
  %i.axe = add nsw i32 %.0485838.i, 1             ; 3 uses
  %i.axf = sext i32 %i.axe to i64
  %i.axg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.axf
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !1514 ; 2 uses
  br i1 %.not619.i, label %bb.fu, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %._crit_edge829.i
  %.1490.i = phi ptr [ %i.axh, %bb.fg ], [ %.0489836.i, %._crit_edge829.i ] ; 9 uses
  %.1486.i = phi i32 [ %i.axe, %bb.fg ], [ %.0485838.i, %._crit_edge829.i ] ; 2 uses
  %.not582.i = icmp slt i32 %.1.lcssa.i, %.0496.lcssa11251127.i
  br i1 %.not582.i, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.axi = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !1064
  %i.axk = sext i32 %.1.lcssa.i to i64
  %i.axl = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.axk
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !570
  %.not583.i = icmp eq i32 %i.axj, %i.axm
  br i1 %.not583.i, label %bb.fj, label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  %i.axn = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 80
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !988
  %.not584.i = icmp ult ptr %i.awh, %i.axo
  br i1 %.not584.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.axp = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 88
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !1122
  %i.axr = icmp ult ptr %i.awh, %i.axq
  br i1 %i.axr, label %bb.fu, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fh
  br i1 %.not585.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.axs = load i32, ptr %i.awh, align 1
  %i.axt = call i32 @llvm.bswap.i32(i32 %i.axs)
  %i.axu = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !1064
  call fastcc void @ptrmapPut(ptr noundef %i.uj, i32 noundef %i.axt, i8 noundef zeroext 5, i32 noundef %i.axv, ptr noundef %i.a), !inline_history !4287
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.axw = load ptr, ptr %i.aq, align 8, !tbaa !1860
  %i.axx = getelementptr inbounds nuw [2 x i8], ptr %i.axw, i64 %indvars.iv1008.i
  %i.axy = load i16, ptr %i.axx, align 2, !tbaa !783 ; 2 uses
  %.not.i653.i = icmp eq i16 %i.axy, 0
  br i1 %.not.i653.i, label %bb.fo, label %cachedCellSize.exit655.i

bb.fo:                                            ; preds = %bb.fn
  %i.axz = trunc nuw nsw i64 %indvars.iv1008.i to i32
  %i.aya = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.axz), !inline_history !4287
  br label %cachedCellSize.exit655.i

cachedCellSize.exit655.i:                         ; preds = %bb.fo, %bb.fn
  %.0.i654.i = phi i16 [ %i.aya, %bb.fo ], [ %i.axy, %bb.fn ]
  %i.ayb = getelementptr inbounds nuw i8, ptr %.1490.i, i64 16
  %i.ayc = load i16, ptr %i.ayb, align 8, !tbaa !1591
  %i.ayd = icmp ugt i16 %.0.i654.i, %i.ayc
  %.pre1054.i = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  br i1 %i.ayd, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %cachedCellSize.exit655.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  %.not.i656.i = icmp eq i32 %.pre1054.i, 0
  br i1 %.not.i656.i, label %bb.fq, label %ptrmapPutOvflPtr.exit.i92

bb.fq:                                            ; preds = %bb.fp
  %i.aye = getelementptr inbounds nuw i8, ptr %.1490.i, i64 128
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !1496
  call void %i.ayf(ptr noundef nonnull %.1490.i, ptr noundef %i.awh, ptr noundef nonnull %1) #58, !inline_history !4312
  %i.ayg = load i16, ptr %i.at, align 4, !tbaa !1596 ; 2 uses
  %i.ayh = zext i16 %i.ayg to i32
  %i.ayi = load i32, ptr %i.au, align 8, !tbaa !1593
  %i.ayj = icmp ugt i32 %i.ayi, %i.ayh
  br i1 %i.ayj, label %bb.fr, label %ptrmapPutOvflPtr.exit.i92

bb.fr:                                            ; preds = %bb.fq
  %i.ayk = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 88
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !1122 ; 2 uses
  %i.aym = icmp ult ptr %i.awh, %i.ayl
  %i.ayn = zext i16 %i.ayg to i64
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.awh, i64 %i.ayn
  %i.ayp = icmp ugt ptr %i.ayo, %i.ayl
  %or.cond.i.i93 = select i1 %i.aym, i1 %i.ayp, i1 false
  br i1 %or.cond.i.i93, label %.critedge.i.i94, label %bb.fs

.critedge.i.i94:                                  ; preds = %bb.fr
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74816, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4313
  store i32 11, ptr %i.a, align 4, !tbaa !570
  br label %ptrmapPutOvflPtr.exit.i92

bb.fs:                                            ; preds = %bb.fr
  %i.ayq = load i16, ptr %i.av, align 2, !tbaa !1595
  %i.ayr = zext i16 %i.ayq to i64
  %i.ays = getelementptr i8, ptr %i.awh, i64 %i.ayr
  %i.ayt = getelementptr i8, ptr %i.ays, i64 -4
  %i.ayu = load i32, ptr %i.ayt, align 1
  %i.ayv = call i32 @llvm.bswap.i32(i32 %i.ayu)
  %i.ayw = getelementptr inbounds nuw i8, ptr %.1490.i, i64 72
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !1065
  %i.ayy = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !1064
  call fastcc void @ptrmapPut(ptr noundef %i.ayx, i32 noundef %i.ayv, i8 noundef zeroext 3, i32 noundef %i.ayz, ptr noundef nonnull %i.a), !inline_history !4312
  br label %ptrmapPutOvflPtr.exit.i92

ptrmapPutOvflPtr.exit.i92:                        ; preds = %bb.fs, %.critedge.i.i94, %bb.fq, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  %.pre1053.i = load i32, ptr %i.a, align 4, !tbaa !570
  br label %bb.ft

bb.ft:                                            ; preds = %ptrmapPutOvflPtr.exit.i92, %cachedCellSize.exit655.i
  %i.aza = phi i32 [ %.pre1053.i, %ptrmapPutOvflPtr.exit.i92 ], [ %.pre1054.i, %cachedCellSize.exit655.i ] ; 2 uses
  %.not586.i = icmp eq i32 %i.aza, 0
  br i1 %.not586.i, label %._crit_edge1055.i, label %.thread705.i

._crit_edge1055.i:                                ; preds = %bb.ft
  %.pre1056.i = load i32, ptr %2, align 8, !tbaa !4329
  br label %bb.fu

bb.fu:                                            ; preds = %._crit_edge1055.i, %bb.fk, %bb.fg
  %i.azb = phi i32 [ %i.awe, %bb.fg ], [ %.pre1056.i, %._crit_edge1055.i ], [ %i.awe, %bb.fk ] ; 3 uses
  %.2491.ph.i = phi ptr [ %i.axh, %bb.fg ], [ %.1490.i, %._crit_edge1055.i ], [ %.1490.i, %bb.fk ]
  %.2.ph.i = phi i32 [ %i.axe, %bb.fg ], [ %.1486.i, %._crit_edge1055.i ], [ %.1486.i, %bb.fk ]
  %indvars.iv.next1009.i = add nuw nsw i64 %indvars.iv1008.i, 1 ; 2 uses
  %i.azc = sext i32 %i.azb to i64
  %i.azd = icmp slt i64 %indvars.iv.next1009.i, %i.azc
  br i1 %i.azd, label %bb.ff, label %.thread702.i, !llvm.loop !4314

.thread702.i:                                     ; preds = %bb.fu, %bb.fe
  %i.aze = phi i32 [ %i.ahh, %bb.fe ], [ %i.azb, %bb.fu ]
  br i1 %i.auu, label %.lr.ph848.i, label %._crit_edge849.i

.lr.ph848.i:                                      ; preds = %.thread702.i
  %i.azf = load ptr, ptr %i.ap, align 8, !tbaa !1859 ; 2 uses
  %i.azg = load ptr, ptr %i.aq, align 8, !tbaa !1860
  %wide.trip.count1020.i = zext i32 %i.auv to i64
  br label %bb.fw

bb.fv:                                            ; preds = %bb.gk
  %indvars.iv.next1017.i = add nuw nsw i64 %indvars.iv1016.i, 1 ; 2 uses
  %exitcond1021.not.i = icmp eq i64 %indvars.iv.next1017.i, %wide.trip.count1020.i
  br i1 %exitcond1021.not.i, label %._crit_edge849.i, label %bb.fw, !llvm.loop !4315

bb.fw:                                            ; preds = %bb.fv, %.lr.ph848.i
  %indvars.iv1016.i = phi i64 [ 0, %.lr.ph848.i ], [ %indvars.iv.next1017.i, %bb.fv ] ; 4 uses
  %.0529846.i = phi i32 [ 0, %.lr.ph848.i ], [ %i.bba, %bb.fv ] ; 2 uses
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1016.i
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !1514 ; 5 uses
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv1016.i
  %i.azk = load i32, ptr %i.azj, align 4, !tbaa !570 ; 5 uses
  %i.azl = sext i32 %i.azk to i64                 ; 2 uses
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.azf, i64 %i.azl
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !741 ; 3 uses
  %i.azo = getelementptr inbounds [2 x i8], ptr %i.azg, i64 %i.azl
  %i.azp = load i16, ptr %i.azo, align 2, !tbaa !783 ; 2 uses
  %i.azq = zext i16 %i.azp to i32
  %i.azr = add nuw nsw i32 %i.azq, %i.ahd         ; 2 uses
  %i.azs = sext i32 %.0529846.i to i64
  %i.azt = getelementptr inbounds i8, ptr %i.ue, i64 %i.azs ; 6 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azv = load i8, ptr %i.azu, align 8, !tbaa !1115
  %.not596.i = icmp eq i8 %i.azv, 0
  br i1 %.not596.i, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azi, i64 80
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !988
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 8
  %i.azz = load i32, ptr %i.azn, align 1
  store i32 %i.azz, ptr %i.azy, align 1
  br label %bb.gg

bb.fy:                                            ; preds = %bb.fw
  br i1 %.not619.i, label %bb.ge, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.baa = add nsw i32 %i.azk, -1                 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azi, i64 128
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !1496
  %i.bad = sext i32 %i.baa to i64
  %i.bae = getelementptr inbounds [8 x i8], ptr %i.azf, i64 %i.bad
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !741
  call void %i.bac(ptr noundef nonnull %i.azi, ptr noundef %i.baf, ptr noundef nonnull %3) #58, !inline_history !4287
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azt, i64 4 ; 3 uses
  %i.bah = load i64, ptr %3, align 8, !tbaa !1592 ; 6 uses
  %i.bai = icmp ult i64 %i.bah, 128
  br i1 %i.bai, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.baj = trunc nuw nsw i64 %i.bah to i8
  store i8 %i.baj, ptr %i.bag, align 1, !tbaa !733
  br label %sqlite3PutVarint.exit.i

bb.gb:                                            ; preds = %bb.fz
  %i.bak = icmp ult i64 %i.bah, 16384
  br i1 %i.bak, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.bal = lshr i64 %i.bah, 7
  %i.bam = trunc nuw nsw i64 %i.bal to i8
  %i.ban = or disjoint i8 %i.bam, -128
  store i8 %i.ban, ptr %i.bag, align 1, !tbaa !733
  %i.bao = trunc i64 %i.bah to i8
  %i.bap = and i8 %i.bao, 127
  %i.baq = getelementptr inbounds nuw i8, ptr %i.azt, i64 5
  store i8 %i.bap, ptr %i.baq, align 1, !tbaa !733
  br label %sqlite3PutVarint.exit.i

bb.gd:                                            ; preds = %bb.gb
  %i.bar = call fastcc i32 @putVarint64(ptr noundef nonnull %i.bag, i64 noundef %i.bah), !inline_history !4287
  %i.bas = add nsw i32 %i.bar, 4
  br label %sqlite3PutVarint.exit.i

sqlite3PutVarint.exit.i:                          ; preds = %bb.gd, %bb.gc, %bb.ga
  %.0.i657.i = phi i32 [ 5, %bb.ga ], [ 6, %bb.gc ], [ %i.bas, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.gg

bb.ge:                                            ; preds = %bb.fy
  %i.bat = getelementptr inbounds i8, ptr %i.azn, i64 -4 ; 3 uses
  %i.bau = icmp eq i16 %i.azp, 4
  br i1 %i.bau, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.bav = load ptr, ptr %i.wh, align 8, !tbaa !1495
  %i.baw = call zeroext i16 %i.bav(ptr noundef %i.jm, ptr noundef nonnull %i.bat) #58, !inline_history !4287
  %i.bax = zext i16 %i.baw to i32
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %sqlite3PutVarint.exit.i, %bb.fx
  %.3550.i = phi i32 [ %i.baa, %sqlite3PutVarint.exit.i ], [ %i.azk, %bb.gf ], [ %i.azk, %bb.ge ], [ %i.azk, %bb.fx ]
  %.0483.i = phi ptr [ %i.azt, %sqlite3PutVarint.exit.i ], [ %i.bat, %bb.gf ], [ %i.bat, %bb.ge ], [ %i.azn, %bb.fx ] ; 3 uses
  %.0482.i = phi ptr [ null, %sqlite3PutVarint.exit.i ], [ %i.azt, %bb.gf ], [ %i.azt, %bb.ge ], [ %i.azt, %bb.fx ]
  %.0481.i = phi i32 [ %.0.i657.i, %sqlite3PutVarint.exit.i ], [ %i.bax, %bb.gf ], [ %i.azr, %bb.ge ], [ %i.azr, %bb.fx ] ; 3 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gh, %bb.gg
  %indvars.iv1012.i = phi i64 [ %indvars.iv.next1013.i, %bb.gh ], [ 0, %bb.gg ] ; 3 uses
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv1012.i
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !570
  %.not598.i = icmp sgt i32 %i.baz, %.3550.i
  %indvars.iv.next1013.i = add nuw nsw i64 %indvars.iv1012.i, 1
  br i1 %.not598.i, label %bb.gi, label %bb.gh, !llvm.loop !4316

bb.gi:                                            ; preds = %bb.gh
  %i.bba = add nsw i32 %.0481.i, %.0529846.i
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv1012.i
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !741 ; 2 uses
  %i.bbd = icmp ult ptr %.0483.i, %i.bbc
  %i.bbe = sext i32 %.0481.i to i64
  %i.bbf = getelementptr inbounds i8, ptr %.0483.i, i64 %i.bbe
  %i.bbg = icmp ugt ptr %i.bbf, %i.bbc
  %or.cond632.i = select i1 %i.bbd, i1 %i.bbg, i1 false
  br i1 %or.cond632.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82107, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4289
  br label %.thread705.i

bb.gk:                                            ; preds = %bb.gi
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !1064
  %i.bbj = trunc i64 %indvars.iv1016.i to i32
  %i.bbk = add i32 %.1536.i, %i.bbj
  %i.bbl = call fastcc i32 @insertCell(ptr noundef %i.jm, i32 noundef %i.bbk, ptr noundef nonnull %.0483.i, i32 noundef %.0481.i, ptr noundef %.0482.i, i32 noundef %i.bbi), !inline_history !4287 ; 2 uses
  %.not599.i = icmp eq i32 %i.bbl, 0
  br i1 %.not599.i, label %bb.fv, label %.thread705.i

._crit_edge849.i:                                 ; preds = %bb.fv, %.thread702.i
  %i.bbm = sub nsw i32 1, %.0496.lcssa11251127.i  ; 2 uses
  %i.bbn = icmp slt i32 %i.bbm, %.0496.lcssa11251127.i
  br i1 %i.bbn, label %.lr.ph858.i, label %._crit_edge859.i

.lr.ph858.i:                                      ; preds = %._crit_edge849.i
  %i.bbo = zext i1 %.not619.i to i32              ; 2 uses
  %i.bbp = load i32, ptr %i.e, align 16
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gs, %.lr.ph858.i
  %.11854.i = phi i32 [ %i.bbm, %.lr.ph858.i ], [ %i.bct, %bb.gs ] ; 4 uses
  %i.bbq = call i32 @llvm.abs.i32(i32 %.11854.i, i1 true) ; 3 uses
  %i.bbr = zext nneg i32 %i.bbq to i64            ; 5 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bbr ; 2 uses
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !733
  %.not590.i = icmp eq i8 %i.bbt, 0
  br i1 %.not590.i, label %bb.gm, label %bb.gs

bb.gm:                                            ; preds = %bb.gl
  %i.bbu = icmp sgt i32 %.11854.i, -1
  br i1 %i.bbu, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bbv = add nsw i32 %i.bbq, -1
  %6 = sext i32 %i.bbv to i64                     ; 2 uses
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.f, i64 %6
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !570
  %i.bby = getelementptr inbounds [4 x i8], ptr %i.e, i64 %6
  %i.bbz = load i32, ptr %i.bby, align 4, !tbaa !570
  %.not591.i = icmp slt i32 %i.bbx, %i.bbz
  br i1 %.not591.i, label %bb.gs, label %.thread707.i

bb.go:                                            ; preds = %bb.gm
  %i.bca = icmp eq i32 %.11854.i, 0
  br i1 %i.bca, label %bb.gr, label %.thread707.i

.thread707.i:                                     ; preds = %bb.go, %bb.gn
  %.not592.i = icmp samesign ugt i32 %i.bbq, %.0499.i
  br i1 %.not592.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %.thread707.i
  %i.bcb = getelementptr [4 x i8], ptr %i.f, i64 %i.bbr
  %i.bcc = getelementptr i8, ptr %i.bcb, i64 -4
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !570
  %i.bce = add nsw i32 %i.bcd, %i.bbo
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.thread707.i
  %i.bcf = phi i32 [ %i.bce, %bb.gp ], [ %i.aze, %.thread707.i ]
  %i.bcg = getelementptr [4 x i8], ptr %i.e, i64 %i.bbr ; 2 uses
  %i.bch = getelementptr i8, ptr %i.bcg, i64 -4
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !570
  %i.bcj = add nsw i32 %i.bci, %i.bbo             ; 2 uses
  %i.bck = load i32, ptr %i.bcg, align 4, !tbaa !570
  %i.bcl = sub nsw i32 %i.bck, %i.bcj
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.go
  %.0480.i = phi i32 [ %i.bcj, %bb.gq ], [ 0, %bb.go ]
  %.0479.i = phi i32 [ %i.bcf, %bb.gq ], [ 0, %bb.go ]
  %.0478.i = phi i32 [ %i.bcl, %bb.gq ], [ %i.bbp, %bb.go ]
  %i.bcm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bbr
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !1514 ; 2 uses
  %i.bco = call fastcc i32 @editPage(ptr noundef %i.bcn, i32 noundef %.0479.i, i32 noundef %.0480.i, i32 noundef %.0478.i, ptr noundef %2), !inline_history !4287 ; 2 uses
  %.not595.i = icmp eq i32 %i.bco, 0
  br i1 %.not595.i, label %.thread708.i, label %.thread705.i

.thread708.i:                                     ; preds = %bb.gr
  store i8 1, ptr %i.bbs, align 1, !tbaa !733
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bbr
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !570
  %i.bcr = sub nsw i32 %i.ahf, %i.bcq
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcn, i64 20
  store i32 %i.bcr, ptr %i.bcs, align 4, !tbaa !1491
  br label %bb.gs

bb.gs:                                            ; preds = %.thread708.i, %bb.gn, %bb.gl
  %i.bct = add nsw i32 %.11854.i, 1               ; 2 uses
  %exitcond1022.not.i = icmp eq i32 %i.bct, %.0496.lcssa11251127.i
  br i1 %exitcond1022.not.i, label %._crit_edge859.i, label %bb.gl, !llvm.loop !4317

._crit_edge859.i:                                 ; preds = %bb.gs, %._crit_edge849.i
  store i32 0, ptr %i.a, align 4
  br i1 %.not125, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %._crit_edge859.i
  %i.bcu = load i16, ptr %i.un, align 8, !tbaa !1501
  %i.bcv = icmp eq i16 %i.bcu, 0
  br i1 %i.bcv, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !1066
  %i.bcy = zext i8 %i.bcx to i32
  %i.bcz = load ptr, ptr %i.c, align 16, !tbaa !1514 ; 6 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 20
  %i.bdb = load i32, ptr %i.bda, align 4, !tbaa !1491
  %.not588.i = icmp slt i32 %i.bdb, %i.bcy
  br i1 %.not588.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bdc = call fastcc i32 @defragmentPage(ptr noundef nonnull %i.bcz, i32 noundef -1), !inline_history !4287
  store i32 %i.bdc, ptr %i.a, align 4, !tbaa !570
  call fastcc void @copyNodeContent(ptr noundef nonnull %i.bcz, ptr noundef nonnull %i.jm, ptr noundef %i.a), !inline_history !4287
  %i.bdd = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  %i.bde = icmp eq i32 %i.bdd, 0
  br i1 %i.bde, label %bb.gw, label %freePage.exit.i

bb.gw:                                            ; preds = %bb.gv
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bcz, i64 72
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !1065
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bcz, i64 4
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !1064
  %i.bdj = call fastcc i32 @freePage2(ptr noundef %i.bdg, ptr noundef nonnull %i.bcz, i32 noundef %i.bdi), !inline_history !4318
  br label %freePage.exit.i

bb.gx:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge859.i
  %i.bdk = load i8, ptr %i.avr, align 1, !tbaa !1054
  %i.bdl = icmp ne i8 %i.bdk, 0
  %i.bdm = icmp eq i8 %i.aau, 0
  %or.cond5.not878.i = select i1 %i.bdl, i1 %i.bdm, i1 false
  %or.cond873.i = and i1 %i.ans, %or.cond5.not878.i
  br i1 %or.cond873.i, label %.lr.ph862.preheader.i, label %freePage.exit.i

.lr.ph862.preheader.i:                            ; preds = %bb.gx
  %wide.trip.count1027.i = zext nneg i32 %.0496.lcssa11251127.i to i64
  br label %.lr.ph862.i

.lr.ph862.i:                                      ; preds = %.lr.ph862.i, %.lr.ph862.preheader.i
  %indvars.iv1023.i = phi i64 [ 0, %.lr.ph862.preheader.i ], [ %indvars.iv.next1024.i, %.lr.ph862.i ] ; 2 uses
  %i.bdn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1023.i
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !1514 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 80
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !988
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 8
  %i.bds = load i32, ptr %i.bdr, align 1
  %i.bdt = call i32 @llvm.bswap.i32(i32 %i.bds)
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdo, i64 4
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !1064
  call fastcc void @ptrmapPut(ptr noundef nonnull %i.uj, i32 noundef %i.bdt, i8 noundef zeroext 5, i32 noundef %i.bdv, ptr noundef %i.a), !inline_history !4287
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %exitcond1028.not.i = icmp eq i64 %indvars.iv.next1024.i, %wide.trip.count1027.i
  br i1 %exitcond1028.not.i, label %freePage.exit.loopexit.i, label %.lr.ph862.i, !llvm.loop !4319

freePage.exit.loopexit.i:                         ; preds = %.lr.ph862.i
  %.promoted863.pre.i = load i32, ptr %i.a, align 4
  br label %freePage.exit.i

freePage.exit.i:                                  ; preds = %freePage.exit.loopexit.i, %bb.gx, %bb.gw, %bb.gv
  %.promoted863.i = phi i32 [ %.promoted863.pre.i, %freePage.exit.loopexit.i ], [ %i.bdj, %bb.gw ], [ %i.bdd, %bb.gv ], [ 0, %bb.gx ] ; 2 uses
  %.not589865.i = icmp sgt i32 %.0496.lcssa11251127.i, %.0499.i
  br i1 %.not589865.i, label %.thread705.i, label %.lr.ph867.preheader.i

.lr.ph867.preheader.i:                            ; preds = %freePage.exit.i
  %i.bdw = zext nneg i32 %.0496.lcssa11251127.i to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %.8545.ph.i, i32 %.0499.i)
  %i.bdx = add nuw i32 %smax.i, 1
  %wide.trip.count1034.i = zext i32 %i.bdx to i64
  br label %.lr.ph867.i

.lr.ph867.i:                                      ; preds = %freePage.exit658.i, %.lr.ph867.preheader.i
  %indvars.iv1029.i = phi i64 [ %i.bdw, %.lr.ph867.preheader.i ], [ %indvars.iv.next1030.i, %freePage.exit658.i ] ; 2 uses
  %i.bdy = phi i32 [ %.promoted863.i, %.lr.ph867.preheader.i ], [ %i.beh, %freePage.exit658.i ] ; 2 uses
  %i.bdz = icmp eq i32 %i.bdy, 0
  br i1 %i.bdz, label %bb.gy, label %freePage.exit658.i

bb.gy:                                            ; preds = %.lr.ph867.i
  %i.bea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1029.i
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !1514 ; 3 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 72
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !1065
  %i.bee = getelementptr inbounds nuw i8, ptr %i.beb, i64 4
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !1064
  %i.beg = call fastcc i32 @freePage2(ptr noundef %i.bed, ptr noundef %i.beb, i32 noundef %i.bef), !inline_history !4318
  br label %freePage.exit658.i

freePage.exit658.i:                               ; preds = %bb.gy, %.lr.ph867.i
  %i.beh = phi i32 [ %i.bdy, %.lr.ph867.i ], [ %i.beg, %bb.gy ] ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1030.i, %wide.trip.count1034.i
  br i1 %exitcond1035.not.i, label %.thread705.i, label %.lr.ph867.i, !llvm.loop !4320

.thread705.i:                                     ; preds = %bb.ft, %bb.gk, %bb.gr, %freePage.exit658.i, %freePage.exit.i, %bb.gj, %.thread692.i, %bb.el, %bb.dz, %bb.dn, %bb.cs, %bb.cp, %bb.cc, %.thread.i87
  %.ph = phi i32 [ %i.beh, %freePage.exit658.i ], [ %.promoted863.i, %freePage.exit.i ], [ 11, %bb.gj ], [ 11, %bb.dz ], [ 11, %bb.cs ], [ %i.bbl, %bb.gk ], [ %i.wq, %.thread.i87 ], [ %i.arw, %.thread692.i ], [ 11, %bb.el ], [ 11, %bb.cp ], [ 11, %bb.dn ], [ %i.bco, %bb.gr ], [ %i.wx, %bb.cc ], [ %i.aza, %bb.ft ] ; 4 uses
  %.3.i.ph = phi i32 [ %.0496.lcssa11251127.i, %freePage.exit658.i ], [ %.0496.lcssa11251127.i, %freePage.exit.i ], [ %.0496.lcssa11251127.i, %bb.gj ], [ 0, %bb.dz ], [ 0, %bb.cs ], [ %.0496.lcssa11251127.i, %bb.gk ], [ 0, %.thread.i87 ], [ %.2498.ph.i, %.thread692.i ], [ 0, %bb.el ], [ 0, %bb.cp ], [ 0, %bb.dn ], [ %.0496.lcssa11251127.i, %bb.gr ], [ 0, %bb.cc ], [ %.0496.lcssa11251127.i, %bb.ft ] ; 4 uses
  %.pr = load ptr, ptr %i.ap, align 8, !tbaa !1859 ; 4 uses
  %.not.i659.i = icmp eq ptr %.pr, null
  br i1 %.not.i659.i, label %sqlite3DbFree.exit.i, label %bb.gz

bb.gz:                                            ; preds = %.thread705.i
  %i.bei = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.bei, 0
  br i1 %.not.i.i.i, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bej = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i665.i = icmp eq ptr %i.bej, null
  br i1 %.not.i.i.i665.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.bek(ptr noundef nonnull %i.bej) #58, !inline_history !4321
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.hb, %bb.ha
  %i.bel = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.bem = call i32 %i.bel(ptr noundef nonnull %.pr) #58, !inline_history !4322
  %i.ben = sext i32 %i.bem to i64
  %i.beo = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.bep = sub nsw i64 %i.beo, %i.ben
  store i64 %i.bep, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.beq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ber = add nsw i64 %i.beq, -1
  store i64 %i.ber, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.bes = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.bes(ptr noundef nonnull %.pr) #58, !inline_history !4323
  %i.bet = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.bet, null
  br i1 %.not.i4.i.i.i, label %sqlite3DbFree.exit.i, label %bb.hc

bb.hc:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.beu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.beu(ptr noundef nonnull %i.bet) #58, !inline_history !4324
  br label %sqlite3DbFree.exit.i

bb.hd:                                            ; preds = %bb.gz
  %i.bev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.bev(ptr noundef nonnull %.pr) #58, !inline_history !4323
end_hunk_1
begin_hunk_2_@vdbeSorterSort:bb.a
bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.03469, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !733
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0 = phi ptr [ %i.as, %bb.i ], [ %i.aq, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03469, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !733
  %i.au = load ptr, ptr %i.e, align 16, !tbaa !1861 ; 2 uses
  %.not4564 = icmp eq ptr %i.au, null
  br i1 %.not4564, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %vdbeSorterMerge.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %vdbeSorterMerge.exit ], [ 0, %bb.j ] ; 2 uses
  %i.av = phi ptr [ %i.bl, %vdbeSorterMerge.exit ], [ %i.au, %bb.j ]
  %.166 = phi ptr [ %.0..0..0..0..0..0..i, %vdbeSorterMerge.exit ], [ %.03469, %bb.j ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8, !tbaa !1861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store i32 0, ptr %i.d, align 4, !tbaa !570
  br label %.outer116

.outer116:                                        ; preds = %bb.l, %.lr.ph
  %.025.i.ph = phi ptr [ %i.bf, %bb.l ], [ %.166, %.lr.ph ] ; 5 uses
  %.022.i.ph = phi ptr [ %.022.i, %bb.l ], [ %i.av, %.lr.ph ]
  %.021.i.ph = phi ptr [ %i.be, %bb.l ], [ %i.c, %.lr.ph ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i.ph, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.outer116, %bb.n
  %.022.i = phi ptr [ %i.bi, %bb.n ], [ %.022.i.ph, %.outer116 ] ; 6 uses
  %.021.i = phi ptr [ %i.bh, %bb.n ], [ %.021.i.ph, %.outer116 ] ; 2 uses
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !1736
  %i.az = load i32, ptr %.025.i.ph, align 8, !tbaa !1801
  %i.ba = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  %i.bb = load i32, ptr %.022.i, align 8, !tbaa !1801
  %i.bc = call i32 %i.ay(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ax, i32 noundef %i.az, ptr noundef nonnull %i.ba, i32 noundef %i.bb) #58, !inline_history !4346
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr %.025.i.ph, ptr %.021.i, align 8, !tbaa !1861
  %i.be = getelementptr inbounds nuw i8, ptr %.025.i.ph, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !733 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.m, label %.outer116

bb.m:                                             ; preds = %bb.l
  store ptr %.022.i, ptr %i.be, align 8, !tbaa !1861
  br label %vdbeSorterMerge.exit

bb.n:                                             ; preds = %bb.k
  store ptr %.022.i, ptr %.021.i, align 8, !tbaa !1861
  %i.bh = getelementptr inbounds nuw i8, ptr %.022.i, i64 8 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !733 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !570
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.o, label %bb.k

bb.o:                                             ; preds = %bb.n
  store ptr %.025.i.ph, ptr %i.bh, align 8, !tbaa !1861
  br label %vdbeSorterMerge.exit

vdbeSorterMerge.exit:                             ; preds = %bb.m, %bb.o
  %.0..0..0..0..0..0..i = load ptr, ptr %i.c, align 8, !tbaa !1861 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.aw, align 8, !tbaa !1861
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1861 ; 2 uses
  %.not45 = icmp eq ptr %i.bl, null
  br i1 %.not45, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !4347

._crit_edge.loopexit:                             ; preds = %vdbeSorterMerge.exit
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.1.lcssa = phi ptr [ %.03469, %bb.j ], [ %.0..0..0..0..0..0..i, %._crit_edge.loopexit ]
  %.lcssa63 = phi ptr [ %i.e, %bb.j ], [ %i.bm, %._crit_edge.loopexit ]
  store ptr %.1.lcssa, ptr %.lcssa63, align 8, !tbaa !1861
  %.not42 = icmp eq ptr %.0, null
  br i1 %.not42, label %.preheader.preheader, label %bb.f, !llvm.loop !4348

.preheader.preheader:                             ; preds = %._crit_edge, %._crit_edge86
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.w
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.w ], [ 0, %.preheader.preheader ] ; 2 uses
  %.273 = phi ptr [ %.3, %bb.w ], [ null, %.preheader.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv83
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1861 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.w, label %bb.p

bb.p:                                             ; preds = %.preheader
  %.not43 = icmp eq ptr %.273, null
  br i1 %.not43, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !1861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i32 0, ptr %i.b, align 4, !tbaa !570
  br label %.outer

.outer:                                           ; preds = %bb.s, %bb.q
  %.025.i46.ph = phi ptr [ %i.by, %bb.s ], [ %.273, %bb.q ] ; 5 uses
  %.022.i47.ph = phi ptr [ %.022.i47, %bb.s ], [ %i.bo, %bb.q ]
  %.021.i48.ph = phi ptr [ %i.bx, %bb.s ], [ %i.a, %bb.q ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.i46.ph, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.outer, %bb.u
  %.022.i47 = phi ptr [ %i.cb, %bb.u ], [ %.022.i47.ph, %.outer ] ; 6 uses
  %.021.i48 = phi ptr [ %i.ca, %bb.u ], [ %.021.i48.ph, %.outer ] ; 2 uses
  %i.br = load ptr, ptr %i.aj, align 8, !tbaa !1736
  %i.bs = load i32, ptr %.025.i46.ph, align 8, !tbaa !1801
  %i.bt = getelementptr inbounds nuw i8, ptr %.022.i47, i64 16
  %i.bu = load i32, ptr %.022.i47, align 8, !tbaa !1801
  %i.bv = call i32 %i.br(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bq, i32 noundef %i.bs, ptr noundef nonnull %i.bt, i32 noundef %i.bu) #58, !inline_history !4346
  %i.bw = icmp slt i32 %i.bv, 1
  br i1 %i.bw, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  store ptr %.025.i46.ph, ptr %.021.i48, align 8, !tbaa !1861
  %i.bx = getelementptr inbounds nuw i8, ptr %.025.i46.ph, i64 8 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !733 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.t, label %.outer

bb.t:                                             ; preds = %bb.s
  store ptr %.022.i47, ptr %i.bx, align 8, !tbaa !1861
  br label %vdbeSorterMerge.exit53

bb.u:                                             ; preds = %bb.r
  store ptr %.022.i47, ptr %.021.i48, align 8, !tbaa !1861
  %i.ca = getelementptr inbounds nuw i8, ptr %.022.i47, i64 8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !733 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !570
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.v, label %bb.r

bb.v:                                             ; preds = %bb.u
  store ptr %.025.i46.ph, ptr %i.ca, align 8, !tbaa !1861
  br label %vdbeSorterMerge.exit53

vdbeSorterMerge.exit53:                           ; preds = %bb.t, %bb.v
  %.0..0..0..0..0..0..i52 = load ptr, ptr %i.a, align 8, !tbaa !1861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %vdbeSorterMerge.exit53, %bb.p, %.preheader
  %.3 = phi ptr [ %.273, %.preheader ], [ %.0..0..0..0..0..0..i52, %vdbeSorterMerge.exit53 ], [ %i.bo, %bb.p ] ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, 64
  br i1 %exitcond.not, label %bb.x, label %.preheader, !llvm.loop !4349

bb.x:                                             ; preds = %bb.w
  store ptr %.3, ptr %1, align 8, !tbaa !1683
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !1678
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 31
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !1742
  %i.cg = zext i8 %i.cf to i32
  br label %bb.y

bb.y:                                             ; preds = %vdbeSortAllocUnpacked.exit, %bb.x
  %.037 = phi i32 [ %i.cg, %bb.x ], [ 7, %vdbeSortAllocUnpacked.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @vdbeSorterFlushPMA(ptr noundef initializes((88, 89)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.c = load i8, ptr %i.b, align 1, !tbaa !733   ; 2 uses
  %i.d = zext i8 %i.c to i32
  %i.e = add nsw i32 %i.d, -1                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.f, align 8, !tbaa !733
  %i.g = icmp ugt i8 %i.c, 1
  br i1 %i.g, label %.lr.ph, label %vdbeSorterJoinThread.exit.thread.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.i = load i8, ptr %i.h, align 2, !tbaa !733
  %i.j = zext i8 %i.i to i32
  %invariant.op = add nuw nsw i32 %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.04581 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.l ] ; 5 uses
  %.reass = add nuw nsw i32 %.04581, %invariant.op
  %1 = srem i32 %.reass, %i.e
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.k, i64 %i.l ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1691
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %vdbeSorterJoinThread.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1686 ; 7 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %vdbeSorterJoinThread.exit.thread.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !tbaa !851
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1688
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1689
  store ptr %i.u, ptr %i.a, align 8, !tbaa !851
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.q, align 8, !tbaa !1690
  %i.w = call i32 @pthread_join(i64 noundef %i.v, ptr noundef nonnull %i.a) #58 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.z(ptr noundef nonnull %i.y) #58, !inline_history !212
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.i, %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ab = call i32 %i.aa(ptr noundef nonnull %i.q) #58, !inline_history !213
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ae = sub nsw i64 %i.ad, %i.ac
  store i64 %i.ae, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ag = add nsw i64 %i.af, -1
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.ah(ptr noundef nonnull %i.q) #58, !inline_history !214
  %i.ai = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i4.i.i.i, label %vdbeSorterJoinThread.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.aj(ptr noundef nonnull %i.ai) #58, !inline_history !215
  br label %vdbeSorterJoinThread.exit

bb.k:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.ak(ptr noundef nonnull %i.q) #58, !inline_history !214
  br label %vdbeSorterJoinThread.exit

vdbeSorterJoinThread.exit:                        ; preds = %sqlite3_mutex_enter.exit.i.i.i, %bb.j, %bb.k
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !851
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !1691
  store ptr null, ptr %i.m, align 8, !tbaa !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.not53 = icmp eq i32 %i.an, 0
  br i1 %.not53, label %vdbeSorterJoinThread.exit.thread.thread, label %.critedge

vdbeSorterJoinThread.exit.thread:                 ; preds = %bb.b
  %.pr.pr = load ptr, ptr %i.m, align 8, !tbaa !1686
  %i.ao = icmp eq ptr %.pr.pr, null
  br i1 %i.ao, label %vdbeSorterJoinThread.exit.thread.thread, label %bb.l

bb.l:                                             ; preds = %vdbeSorterJoinThread.exit.thread
  %i.ap = add nuw nsw i32 %.04581, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.e
  br i1 %exitcond.not, label %vdbeSorterJoinThread.exit.thread.thread.thread, label %bb.b, !llvm.loop !4350

vdbeSorterJoinThread.exit.thread.thread:          ; preds = %vdbeSorterJoinThread.exit.thread, %bb.a, %vdbeSorterJoinThread.exit, %bb.c
  %.04579 = phi i32 [ %.04581, %bb.c ], [ %.04581, %vdbeSorterJoinThread.exit ], [ 0, %bb.a ], [ %.04581, %vdbeSorterJoinThread.exit.thread ]
  %.144.ph = phi ptr [ %i.m, %bb.c ], [ %i.m, %vdbeSorterJoinThread.exit ], [ null, %bb.a ], [ %i.m, %vdbeSorterJoinThread.exit.thread ] ; 9 uses
  %i.aq = icmp eq i32 %.04579, %i.e
  br i1 %i.aq, label %vdbeSorterJoinThread.exit.thread.thread.thread, label %bb.m

vdbeSorterJoinThread.exit.thread.thread.thread:   ; preds = %bb.l, %vdbeSorterJoinThread.exit.thread.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = sext i32 %i.e to i64
  %i.at = getelementptr inbounds [104 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = call fastcc i32 @vdbeSorterListToPMA(ptr noundef nonnull %i.at, ptr noundef nonnull %i.au)
  br label %.critedge

bb.m:                                             ; preds = %vdbeSorterJoinThread.exit.thread.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %.144.ph, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.144.ph, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1679 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = ptrtoint ptr %.144.ph to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 104
  %i.be = trunc i64 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !733
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !tbaa.struct !4352
  store ptr null, ptr %i.bg, align 8, !tbaa !1683
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.bh, align 8, !tbaa !1684
  %.not54 = icmp eq ptr %i.ay, null
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !1654
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.bk = call i32 %i.bj(ptr noundef nonnull %i.ay) #58, !inline_history !12
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !570
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !1654
  %.not55 = icmp eq ptr %i.bm, null
  br i1 %.not55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !570
  %i.bp = sext i32 %i.bo to i64
  %i.bq = call fastcc ptr @sqlite3Malloc(i64 noundef %i.bp) ; 2 uses
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !1654
  %.not56 = icmp eq ptr %i.bq, null
  br i1 %.not56, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  store ptr null, ptr %.144.ph, align 8, !tbaa !1862
  %i.br = call fastcc ptr @sqlite3Malloc(i64 noundef 40) ; 8 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr @vdbeSorterFlushThread, ptr %i.bt, align 8, !tbaa !1863
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %.144.ph, ptr %i.bu, align 8, !tbaa !1864
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !1036 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i57, label %sqlite3FaultSim.exit.thread.i.i, label %sqlite3FaultSim.exit.i.i

sqlite3FaultSim.exit.i.i:                         ; preds = %bb.r
  %i.bw = call i32 %i.bv(i32 noundef 200) #58, !inline_history !253
  %.not.i.i58 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i58, label %sqlite3FaultSim.exit.thread.i.i, label %.critedge.i.i

sqlite3FaultSim.exit.thread.i.i:                  ; preds = %sqlite3FaultSim.exit.i.i, %bb.r
  %i.bx = call i32 @pthread_create(ptr noundef nonnull %i.br, ptr noundef null, ptr noundef nonnull @vdbeSorterFlushThread, ptr noundef nonnull %.144.ph) #58
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.s, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %sqlite3FaultSim.exit.thread.i.i, %sqlite3FaultSim.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 1, ptr %i.bz, align 8, !tbaa !1688
  %i.ca = call fastcc i32 @vdbeSorterListToPMA(ptr noundef nonnull %.144.ph, ptr noundef nonnull %i.aw), !inline_history !4351
  %i.cb = getelementptr inbounds nuw i8, ptr %.144.ph, i64 8
  store i32 1, ptr %i.cb, align 8, !tbaa !1691
  %i.cc = sext i32 %i.ca to i64
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !1689
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i, %sqlite3FaultSim.exit.thread.i.i
  store ptr %i.br, ptr %.144.ph, align 8, !tbaa !1862
  br label %.critedge

.critedge:                                        ; preds = %vdbeSorterJoinThread.exit, %bb.s, %bb.q, %bb.p, %vdbeSorterJoinThread.exit.thread.thread.thread
  %.149 = phi i32 [ 7, %bb.q ], [ %i.av, %vdbeSorterJoinThread.exit.thread.thread.thread ], [ 7, %bb.p ], [ 0, %bb.s ], [ %i.an, %vdbeSorterJoinThread.exit ]
  ret i32 %.149
}

; Function Attrs: nounwind uwtable
define internal i32 @vdbeSorterCompareInt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
end_hunk_2
begin_hunk_3_@sqlite3TableAffinity:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 103
  %i.g = load i8, ptr %i.f, align 1, !tbaa !918
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %sqlite3VdbeAppendP4.exit, label %sqlite3VdbeAppendP4.exit.sqlite3VdbeGetLastOp.exit_crit_edge

sqlite3VdbeAppendP4.exit:                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !702
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load i32, ptr %i.j, align 8, !tbaa !703
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [32 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -31
  store i8 -5, ptr %i.n, align 1, !tbaa !1166
  %i.o = getelementptr i8, ptr %i.m, i64 -16
  store ptr %1, ptr %i.o, align 8, !tbaa !733
  %.pre = load ptr, ptr %0, align 8, !tbaa !679
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 103
  %.pre52 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !918
  %i.p = icmp eq i8 %.pre52, 0
  br i1 %i.p, label %bb.d, label %sqlite3VdbeAppendP4.exit.sqlite3VdbeGetLastOp.exit_crit_edge

sqlite3VdbeAppendP4.exit.sqlite3VdbeGetLastOp.exit_crit_edge: ; preds = %bb.c, %sqlite3VdbeAppendP4.exit
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre54 = load i32, ptr %.phi.trans.insert53, align 8, !tbaa !703
  br label %sqlite3VdbeGetLastOp.exit

bb.d:                                             ; preds = %sqlite3VdbeAppendP4.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i32, ptr %i.q, align 8, !tbaa !703  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !702
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr [32 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -32
  br label %sqlite3VdbeGetLastOp.exit

sqlite3VdbeGetLastOp.exit:                        ; preds = %sqlite3VdbeAppendP4.exit.sqlite3VdbeGetLastOp.exit_crit_edge, %bb.d
  %i.x = phi i32 [ %i.r, %bb.d ], [ %.pre54, %sqlite3VdbeAppendP4.exit.sqlite3VdbeGetLastOp.exit_crit_edge ] ; 3 uses
  %.0.i.i = phi ptr [ %i.w, %bb.d ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeAppendP4.exit.sqlite3VdbeGetLastOp.exit_crit_edge ] ; 4 uses
  store i8 97, ptr %.0.i.i, align 8, !tbaa !929
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !928  ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !928
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !926 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !927 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1164
  %.not.i41 = icmp sgt i32 %i.af, %i.x
  br i1 %.not.i41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeGetLastOp.exit
  %i.ag = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 99, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.z), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.f:                                             ; preds = %sqlite3VdbeGetLastOp.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = add nsw i32 %i.x, 1
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !703
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !702
  %i.al = sext i32 %i.x to i64
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.al ; 7 uses
  store i8 99, ptr %i.am, align 8, !tbaa !929
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 0, ptr %i.an, align 2, !tbaa !930
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.ab, ptr %i.ao, align 4, !tbaa !926
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.ad, ptr %i.ap, align 8, !tbaa !927
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %i.z, ptr %i.aq, align 4, !tbaa !928
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 0, ptr %i.as, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

bb.g:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load i16, ptr %i.at, align 8, !tbaa !1251
  %i.av = sext i16 %i.au to i32                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !703 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1164
  %.not.i.i42 = icmp sgt i32 %i.az, %i.ax
  br i1 %.not.i.i42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 97, i32 noundef %2, i32 noundef %i.av, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.i:                                             ; preds = %bb.g
  %i.bb = add nsw i32 %i.ax, 1
  store i32 %i.bb, ptr %i.aw, align 8, !tbaa !703
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !702
  %i.be = sext i32 %i.ax to i64
  %i.bf = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %i.be ; 6 uses
  store i8 97, ptr %i.bf, align 8, !tbaa !929
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i16 0, ptr %i.bg, align 2, !tbaa !930
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %2, ptr %i.bh, align 4, !tbaa !926
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 %i.av, ptr %i.bi, align 8, !tbaa !927
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 0, ptr %i.bk, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bj, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.h, %bb.i
  %i.bl = load ptr, ptr %0, align 8, !tbaa !679
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 103
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !918
  %.not.i44 = icmp eq i8 %i.bn, 0
  br i1 %.not.i44, label %bb.j, label %sqlite3VdbeAddOp3.exit

bb.j:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !702
  %i.bq = load i32, ptr %i.aw, align 8, !tbaa !703
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [32 x i8], ptr %i.bp, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -31
  store i8 -5, ptr %i.bt, align 1, !tbaa !1166
  %i.bu = getelementptr i8, ptr %i.bs, i64 -16
  store ptr %1, ptr %i.bu, align 8, !tbaa !733
  br label %sqlite3VdbeAddOp3.exit

bb.k:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1983 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !1150
  %i.ca = sext i16 %i.bz to i64
  %i.cb = add nsw i64 %i.ca, 1
  %i.cc = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.cb), !inline_history !4931 ; 7 uses
  %.not.i46 = icmp eq ptr %i.cc, null
  br i1 %.not.i46, label %sqlite3TableAffinityStr.exit, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.l
  %i.cd = load i16, ptr %i.by, align 2, !tbaa !1150 ; 2 uses
  %i.ce = icmp sgt i16 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader1.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.m

.preheader.loopexit.i:                            ; preds = %bb.o
  %i.cg = sext i32 %.1.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader1.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader1.i ], [ %i.cg, %.preheader.loopexit.i ] ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 %.0.lcssa.i
  store i8 0, ptr %i.ch, align 1, !tbaa !733
  %i.ci = icmp sgt i64 %.0.lcssa.i, 0
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %i.cj = phi i16 [ %i.cd, %.lr.ph.i ], [ %i.cv, %bb.o ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %.03.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.o ] ; 3 uses
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !1149
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 14
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !1364
  %i.co = and i16 %i.cn, 32
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !1716
  %i.cs = add nsw i32 %.03.i, 1
  %i.ct = sext i32 %.03.i to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cc, i64 %i.ct
  store i8 %i.cr, ptr %i.cu, align 1, !tbaa !733
  %.pre.i = load i16, ptr %i.by, align 2, !tbaa !1150
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cv = phi i16 [ %.pre.i, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
  %.1.i = phi i32 [ %i.cs, %bb.n ], [ %.03.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cw = sext i16 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next.i, %i.cw
  br i1 %i.cx, label %bb.m, label %.preheader.loopexit.i, !llvm.loop !4932

bb.p:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds i8, ptr %i.cc, i64 %indvars.iv.next6.i
  store i8 0, ptr %i.cy, align 1, !tbaa !733
  %i.cz = icmp sgt i64 %indvars.iv5.i65, 1
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !4933

.lr.ph:                                           ; preds = %.preheader.i, %bb.p
  %indvars.iv5.i65 = phi i64 [ %indvars.iv.next6.i, %bb.p ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %indvars.iv.next6.i = add nsw i64 %indvars.iv5.i65, -1 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next6.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !733
  %i.dc = icmp slt i8 %i.db, 66
  br i1 %i.dc, label %bb.p, label %._crit_edge66, !llvm.loop !4933

sqlite3TableAffinityStr.exit:                     ; preds = %bb.l
  %.val = load ptr, ptr %0, align 8, !tbaa !679   ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val, i64 103 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !918
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.q, label %sqlite3VdbeAddOp3.exit

bb.q:                                             ; preds = %sqlite3TableAffinityStr.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !919
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.r, label %sqlite3VdbeAddOp3.exit

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.dd, align 1, !tbaa !918
  %i.dj = getelementptr inbounds nuw i8, ptr %.val, i64 220
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !920
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 400
  store atomic volatile i32 1, ptr %i.dm monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 408 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !921
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !921
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 412
  store i16 0, ptr %i.dq, align 4, !tbaa !922
  %i.dr = getelementptr inbounds nuw i8, ptr %.val, i64 344 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !768 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ds, null
  br i1 %.not.i47, label %sqlite3VdbeAddOp3.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ds, ptr noundef nonnull @.str.125), !inline_history !48
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !768 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 7, ptr %i.du, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3VdbeAddOp3.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.u, %.lr.ph.i48
  %.020.i = phi ptr [ %.0.i49, %.lr.ph.i48 ], [ %.018.i, %bb.u ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !780
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !780
  %i.dy = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.dy, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i49 = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i49, null
  br i1 %.not16.i, label %sqlite3VdbeAddOp3.exit, label %.lr.ph.i48, !llvm.loop !36

._crit_edge66:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !4933

._crit_edge:                                      ; preds = %bb.p, %._crit_edge66, %.preheader.i
  store ptr %i.cc, ptr %i.bv, align 8, !tbaa !1983
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.k
  %.0 = phi ptr [ %i.cc, %._crit_edge ], [ %i.bw, %bb.k ] ; 4 uses
  %i.dz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #59
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = and i32 %i.ea, 1073741823               ; 5 uses
  %.not39 = icmp eq i32 %i.eb, 0
  br i1 %.not39, label %sqlite3VdbeAddOp3.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not40 = icmp eq i32 %2, 0
  br i1 %.not40, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %0, i32 noundef 98, i32 noundef %2, i32 noundef %i.eb, i32 noundef 0, ptr noundef nonnull %.0, i32 noundef %i.eb) ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.y:                                             ; preds = %bb.w
  %i.ed = load ptr, ptr %0, align 8, !tbaa !679   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 103
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !918
  %.not.i50 = icmp eq i8 %i.ef, 0
  br i1 %.not.i50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @freeP4(ptr noundef nonnull %i.ed, i32 noundef %i.eb, ptr noundef nonnull %.0), !inline_history !1172
  br label %sqlite3VdbeAddOp3.exit

bb.aa:                                            ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !703
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !702
  %i.ek = sext i32 %i.eh to i64
  %i.el = getelementptr [32 x i8], ptr %i.ej, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -32
  tail call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %0, ptr noundef %i.em, ptr noundef nonnull %.0, i32 noundef %i.eb), !inline_history !1172
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %.lr.ph.i48, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.q, %sqlite3TableAffinityStr.exit, %bb.j, %sqlite3VdbeAddOp2.exit, %bb.f, %bb.e, %bb.v, %bb.x
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @createTableStmt(ptr nofree noundef captures(address) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 4 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !1150 ; 6 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1149 ; 2 uses
  %i.g = icmp eq i16 %i.d, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %i.h = and i16 %i.d, 32766
  %unroll_iter = zext nneg i16 %i.h to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %identLength.exit.1, %.lr.ph.preheader.new
  %.04364 = phi ptr [ %i.f, %.lr.ph.preheader.new ], [ %i.v, %identLength.exit.1 ] ; 3 uses
  %.04863 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %identLength.exit.1 ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %identLength.exit.1 ]
  %i.i = load ptr, ptr %.04364, align 8, !tbaa !1153
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph
  %.05.i = phi ptr [ %i.i, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.0.i = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i8, ptr %.05.i, align 1, !tbaa !733
  switch i8 %i.j, label %bb.d [
    i8 0, label %identLength.exit
    i8 34, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %.0.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i64 [ %i.k, %bb.c ], [ %.0.i, %bb.b ]
  %i.l = add nsw i64 %.1.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i, i64 1
  br label %bb.b, !llvm.loop !4934

identLength.exit:                                 ; preds = %bb.b
  %i.n = add i64 %.04863, 7
  %i.o = add i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %.04364, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1153
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %identLength.exit
  %.05.i.1 = phi ptr [ %i.q, %identLength.exit ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i.1 = phi i64 [ 0, %identLength.exit ], [ %i.w, %bb.g ] ; 3 uses
  %i.r = load i8, ptr %.05.i.1, align 1, !tbaa !733
  switch i8 %i.r, label %bb.g [
    i8 0, label %identLength.exit.1
    i8 34, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i64 %.0.i.1, 1
  br label %bb.g

identLength.exit.1:                               ; preds = %bb.e
  %i.t = add i64 %i.o, 7
  %i.u = add i64 %i.t, %.0.i.1                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04364, i64 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4935

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.1 = phi i64 [ %i.s, %bb.f ], [ %.0.i.1, %bb.e ]
  %i.w = add nsw i64 %.1.i.1, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.1, i64 1
end_hunk_3
begin_hunk_4_@fts3EvalNearTrim:bb.a
fts3PoslistCopy.exit.i:                           ; preds = %.lr.ph.i.i, %bb.d
  %.0.lcssa.i.i = phi ptr [ %1, %bb.d ], [ %i.w, %.lr.ph.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %sext20.i.i = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext20.i.i, 32          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %1, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %i.m, i64 %i.af
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %.not17.i = icmp eq ptr %i.r, %1
  br i1 %.not17.i, label %fts3PoslistNearMerge.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.p, align 1, !tbaa !733  ; 2 uses
  %.not21.i18.i = icmp eq i8 %i.ah, 0
  br i1 %.not21.i18.i, label %fts3PoslistCopy.exit25.i, label %.lr.ph.preheader.i19.i

.lr.ph.preheader.i19.i:                           ; preds = %bb.f
  %i.ai = sext i8 %i.ah to i32
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.preheader.i19.i
  %i.aj = phi i32 [ %i.am, %.lr.ph.i20.i ], [ %i.ai, %.lr.ph.preheader.i19.i ]
  %.022.i21.i = phi ptr [ %i.ak, %.lr.ph.i20.i ], [ %i.p, %.lr.ph.preheader.i19.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.022.i21.i, i64 1 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !733
  %i.am = sext i8 %i.al to i32                    ; 2 uses
  %i.an = and i32 %i.aj, -128
  %i.ao = or i32 %i.an, %i.am
  %.not.i22.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i22.i, label %fts3PoslistCopy.exit25.i, label %.lr.ph.i20.i, !llvm.loop !491

fts3PoslistCopy.exit25.i:                         ; preds = %.lr.ph.i20.i, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.p, %bb.f ], [ %i.ak, %.lr.ph.i20.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i23.i, i64 1
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %sext20.i24.i = shl i64 %i.as, 32
  %i.at = ashr exact i64 %sext20.i24.i, 32        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.p, i64 %i.at, i1 false)
  %i.au = getelementptr inbounds i8, ptr %i.m, i64 %i.at
  br label %bb.g

fts3PoslistNearMerge.exit:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.g:                                             ; preds = %bb.c, %fts3PoslistCopy.exit.i, %fts3PoslistCopy.exit25.i
  %i.av = phi ptr [ %.pre, %bb.c ], [ %i.ag, %fts3PoslistCopy.exit.i ], [ %i.au, %fts3PoslistCopy.exit25.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !2785 ; 4 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1                   ; 4 uses
  %i.bc = icmp sgt i32 %i.ba, 0
  br i1 %i.bc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2788 ; 2 uses
  %.not25 = icmp sgt i32 %i.bb, %i.be
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = zext nneg i32 %i.bb to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = sub nuw nsw i32 %i.be, %i.bb
  %i.bi = zext nneg i32 %i.bh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 0, i64 %i.bi, i1 false)
  store i32 %i.bb, ptr %i.bd, align 8, !tbaa !2788
  %.pre32 = load ptr, ptr %i.l, align 8, !tbaa !2785
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = phi ptr [ %.pre32, %bb.i ], [ %i.aw, %bb.h ], [ %i.aw, %bb.g ]
  store ptr %i.bj, ptr %2, align 8, !tbaa !741
  %i.bk = load i32, ptr %i.g, align 8, !tbaa !570
  store i32 %i.bk, ptr %3, align 4, !tbaa !570
  br label %bb.k

bb.k:                                             ; preds = %fts3PoslistNearMerge.exit, %bb.j
  %.0.i29 = phi i32 [ 1, %bb.j ], [ 0, %fts3PoslistNearMerge.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  ret i32 %.0.i29
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3DeleteByRowid(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8, !tbaa !761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  %i.h = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 7, ptr noundef %i.f, ptr noundef nonnull %i.e), !inline_history !6188 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !889  ; 8 uses
  br i1 %i.i, label %bb.b, label %fts3DeleteTerms.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @sqlite3_step(ptr noundef %i.j), !inline_history !6188
  %i.l = icmp eq i32 %i.k, 100
  br i1 %i.l, label %bb.c, label %fts3DeleteTerms.exit.thread63

fts3DeleteTerms.exit.thread63:                    ; preds = %bb.b
  %i.m = call i32 @sqlite3_reset(ptr noundef %i.j), !inline_history !6188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2703
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %langidFromSelect.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !2629
  %i.r = add nsw i32 %i.q, 1
  %i.s = call i32 @sqlite3_column_int(ptr noundef %i.j, i32 noundef %i.r), !inline_history !6188
  br label %langidFromSelect.exit.i

langidFromSelect.exit.i:                          ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.t = call i64 @sqlite3_column_int64(ptr noundef %i.j, i32 noundef 0), !inline_history !6188 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !2758 ; 2 uses
  %i.w = icmp slt i64 %i.t, %i.v
  br i1 %i.w, label %bb.i, label %bb.e

bb.e:                                             ; preds = %langidFromSelect.exit.i
  %i.x = icmp eq i64 %i.t, %i.v
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.z = load i32, ptr %i.y, align 4, !tbaa !2759
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2650
  %.not.i34.i = icmp eq i32 %i.ac, %.0.i.i
  br i1 %.not.i34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !2760
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !2761
  %i.ah = icmp sgt i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %langidFromSelect.exit.i
  %i.ai = call fastcc i32 @sqlite3Fts3PendingTermsFlush(ptr noundef nonnull %0), !inline_history !6189 ; 2 uses
  %.not22.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not22.not.i.i, label %.lr.ph.i, label %fts3DeleteTerms.exit.thread

.lr.ph.i:                                         ; preds = %bb.i, %bb.h
  store i64 %i.t, ptr %i.u, align 8, !tbaa !2758
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 %.0.i.i, ptr %i.aj, align 8, !tbaa !2650
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 1, ptr %i.ak, align 4, !tbaa !2759
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !2629
  %i.ao = sext i32 %i.an to i64
  %.not32.i = icmp sgt i64 %indvars.iv.i, %i.ao
  br i1 %.not32.i, label %fts3DeleteTerms.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !2762
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !733
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.av = call ptr @sqlite3_column_text(ptr noundef %i.j, i32 noundef %i.au), !inline_history !6188
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ap
  %i.ax = call fastcc i32 @fts3PendingTermsAdd(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef %i.av, i32 noundef -1, ptr noundef nonnull %i.aw), !inline_history !6188
  %i.ay = call i32 @sqlite3_column_bytes(ptr noundef %i.j, i32 noundef %i.au), !inline_history !6188
  %i.az = load i32, ptr %i.al, align 8, !tbaa !2629
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !570
  %i.bd = add i32 %i.bc, %i.ay
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !570
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %i.ax, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.be = icmp eq i32 %.1.i, 0
  br i1 %i.be, label %bb.j, label %fts3DeleteTerms.exit.thread, !llvm.loop !6190

fts3DeleteTerms.exit.thread:                      ; preds = %bb.m, %bb.a, %bb.i
  %.0.lcssa.sink.i.ph = phi i32 [ %i.h, %bb.a ], [ %i.ai, %bb.i ], [ %.1.i, %bb.m ]
  %i.bf = call i32 @sqlite3_reset(ptr noundef %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

fts3DeleteTerms.exit:                             ; preds = %bb.j
  %i.bg = call i32 @sqlite3_reset(ptr noundef %i.j), !inline_history !6188 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %bb.y

bb.n:                                             ; preds = %fts3DeleteTerms.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !tbaa !761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2702
  %.not.i15 = icmp eq ptr %i.bj, null
  br i1 %.not.i15, label %bb.o, label %.thread48

bb.o:                                             ; preds = %bb.n
  %i.bk = call fastcc i32 @fts3SqlStmt(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.d, ptr noundef nonnull %i.c), !inline_history !6191 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %fts3IsEmpty.exit.thread39

fts3IsEmpty.exit.thread39:                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !889 ; 4 uses
  %i.bn = call i32 @sqlite3_step(ptr noundef %i.bm), !inline_history !6191
  %i.bo = icmp eq i32 %i.bn, 100
  br i1 %i.bo, label %fts3IsEmpty.exit, label %fts3IsEmpty.exit.thread

fts3IsEmpty.exit:                                 ; preds = %bb.p
  %i.bp = call i32 @sqlite3_column_int(ptr noundef %i.bm, i32 noundef 0), !inline_history !6191
  %i.bq = call i32 @sqlite3_reset(ptr noundef %i.bm), !inline_history !6191 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.q, label %bb.y

fts3IsEmpty.exit.thread:                          ; preds = %bb.p
  %i.bs = call i32 @sqlite3_reset(ptr noundef %i.bm), !inline_history !6191 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.thread, label %bb.y

bb.q:                                             ; preds = %fts3IsEmpty.exit
  %i.bu = icmp eq i32 %i.bp, 0
  br i1 %i.bu, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = call fastcc i32 @fts3DeleteAll(ptr noundef nonnull %0, i32 noundef 1)
  store i32 0, ptr %2, align 4, !tbaa !570
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !2629
  %i.by = add nsw i32 %i.bx, 1
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %3, i8 0, i64 %i.ca, i1 false)
  br label %bb.y

.thread:                                          ; preds = %fts3IsEmpty.exit.thread, %bb.q
  %.pr = load ptr, ptr %i.bi, align 8, !tbaa !2702
  %i.cb = load i32, ptr %2, align 4, !tbaa !570
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %2, align 4, !tbaa !570
  %i.cd = icmp eq ptr %.pr, null
  br i1 %i.cd, label %bb.s, label %.thread68

bb.s:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.ce = call fastcc i32 @fts3SqlStmt(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.b, ptr noundef nonnull readonly %i.g), !inline_history !511 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !889 ; 2 uses
  %i.ch = call i32 @sqlite3_step(ptr noundef %i.cg), !inline_history !511 ; 0 uses
  %i.ci = call i32 @sqlite3_reset(ptr noundef %i.cg), !inline_history !511
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i17 = phi i32 [ %i.ci, %bb.t ], [ %i.ce, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 462
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !2763
  %.not14 = icmp eq i8 %i.ck, 0
  br i1 %.not14, label %bb.y, label %bb.v

.thread68:                                        ; preds = %.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 462
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !2763
  %.not1470 = icmp eq i8 %i.cm, 0
  br i1 %.not1470, label %bb.y, label %.sink.split

.thread48:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = load i32, ptr %2, align 4, !tbaa !570
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %2, align 4, !tbaa !570
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 462
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !2763
  %.not1450 = icmp eq i8 %i.cq, 0
  br i1 %.not1450, label %bb.y, label %.sink.split

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %.not.i18 = icmp eq i32 %.0.i17, 0
  br i1 %.not.i18, label %bb.w, label %fts3SqlExec.exit20

.sink.split:                                      ; preds = %.thread48, %.thread68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v
  %i.cr = call fastcc i32 @fts3SqlStmt(ptr noundef nonnull %0, i32 noundef 19, ptr noundef %i.a, ptr noundef nonnull readonly %i.g), !inline_history !511 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.x, label %fts3SqlExec.exit20

bb.x:                                             ; preds = %bb.w
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !889 ; 2 uses
  %i.cu = call i32 @sqlite3_step(ptr noundef %i.ct), !inline_history !511 ; 0 uses
  %i.cv = call i32 @sqlite3_reset(ptr noundef %i.ct), !inline_history !511
  br label %fts3SqlExec.exit20

fts3SqlExec.exit20:                               ; preds = %bb.w, %bb.x, %bb.v
  %.5 = phi i32 [ %.0.i17, %bb.v ], [ %i.cv, %bb.x ], [ %i.cr, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.y

bb.y:                                             ; preds = %.thread68, %fts3IsEmpty.exit.thread, %fts3DeleteTerms.exit.thread63, %.thread48, %fts3IsEmpty.exit, %bb.u, %fts3SqlExec.exit20, %bb.r, %fts3IsEmpty.exit.thread39, %fts3DeleteTerms.exit.thread, %fts3DeleteTerms.exit
  %.231 = phi i32 [ %.0.lcssa.sink.i.ph, %fts3DeleteTerms.exit.thread ], [ %i.bg, %fts3DeleteTerms.exit ], [ %.0.i17, %bb.u ], [ %.5, %fts3SqlExec.exit20 ], [ %i.bv, %bb.r ], [ %i.bq, %fts3IsEmpty.exit ], [ %i.bk, %fts3IsEmpty.exit.thread39 ], [ 0, %.thread48 ], [ %i.m, %fts3DeleteTerms.exit.thread63 ], [ %i.bs, %fts3IsEmpty.exit.thread ], [ 0, %.thread68 ]
  ret i32 %.231
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3InsertData(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2702
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2629
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [8 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !761  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i16, ptr %i.j, align 4, !tbaa !686  ; 2 uses
  %i.l = and i16 %i.k, 63
  %i.m = zext nneg i16 %i.l to i64
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = and i64 %i.n, -6148914691236517206
  %.not49 = icmp eq i64 %i.o, 0
  br i1 %.not49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !761  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !686 ; 2 uses
  %.pre52 = and i16 %.pre, 63
  %.pre53 = zext nneg i16 %.pre52 to i64
  %.pre55 = shl nuw i64 1, %.pre53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi56 = phi i64 [ %.pre55, %bb.c ], [ %i.n, %bb.b ]
  %i.r = phi i16 [ %.pre, %bb.c ], [ %i.k, %bb.b ]
  %.0 = phi ptr [ %i.q, %bb.c ], [ %i.i, %bb.b ]  ; 4 uses
end_hunk_4
begin_hunk_5_@fts3SnippetFunc:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 22
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !787
  %i.by = icmp eq i8 %i.bx, 1
  br i1 %i.by, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !762
  br label %sqlite3_value_text.exit50

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.cb = and i16 %i.bt, 1
  %.not9.i.i48 = icmp eq i16 %i.cb, 0
  br i1 %.not9.i.i48, label %bb.ac, label %sqlite3_value_text.exit50

bb.ac:                                            ; preds = %bb.ab
  %i.cc = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.br, i8 noundef zeroext 1), !inline_history !947
  br label %sqlite3_value_text.exit50

sqlite3_value_text.exit50:                        ; preds = %bb.ac, %bb.ab, %bb.aa, %sqlite3_value_text.exit, %bb.d
  %.032 = phi ptr [ @.str.1680, %bb.d ], [ %i.ca, %bb.aa ], [ null, %sqlite3_value_text.exit ], [ %i.cc, %bb.ac ], [ null, %bb.ab ] ; 2 uses
  %.130 = phi ptr [ @.str.1681, %bb.d ], [ %.029, %bb.aa ], [ %.029, %sqlite3_value_text.exit ], [ %.029, %bb.ac ], [ %.029, %bb.ab ] ; 2 uses
  %.227 = phi i32 [ -1, %bb.d ], [ %.126, %bb.aa ], [ %.126, %sqlite3_value_text.exit ], [ %.126, %bb.ac ], [ %.126, %bb.ab ]
  %.3 = phi i32 [ 15, %bb.d ], [ %.2, %bb.aa ], [ %.2, %sqlite3_value_text.exit ], [ %.2, %bb.ac ], [ %.2, %bb.ab ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !761 ; 5 uses
  %.not.i.i51 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i51, label %sqlite3_value_text.exit54.thread, label %bb.ad

bb.ad:                                            ; preds = %sqlite3_value_text.exit50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !686 ; 2 uses
  %i.ch = and i16 %i.cg, 514
  %i.ci = icmp eq i16 %i.ch, 514
  br i1 %i.ci, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 22
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !787
  %i.cl = icmp eq i8 %i.ck, 1
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !762
  br label %sqlite3_value_text.exit54

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.co = and i16 %i.cg, 1
  %.not9.i.i52 = icmp eq i16 %i.co, 0
  br i1 %.not9.i.i52, label %bb.ah, label %sqlite3_value_text.exit54.thread

bb.ah:                                            ; preds = %bb.ag
  %i.cp = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.ce, i8 noundef zeroext 1), !inline_history !947
  br label %sqlite3_value_text.exit54

sqlite3_value_text.exit54:                        ; preds = %bb.ah, %bb.af
  %.034 = phi ptr [ %i.cp, %bb.ah ], [ %i.cn, %bb.af ] ; 2 uses
  %i.cq = icmp ne ptr %.130, null
  %i.cr = icmp ne ptr %.032, null
  %or.cond = select i1 %i.cq, i1 %i.cr, i1 false
  %i.cs = icmp ne ptr %.034, null
  %or.cond3 = select i1 %or.cond, i1 %i.cs, i1 false
  br i1 %or.cond3, label %bb.ap, label %sqlite3_value_text.exit54.thread

sqlite3_value_text.exit54.thread:                 ; preds = %bb.ag, %sqlite3_value_text.exit50, %sqlite3_value_text.exit54
  %i.ct = load ptr, ptr %0, align 8, !tbaa !761   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !686
  %i.cw = and i16 %i.cv, -28672
  %.not.i.i55 = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i55, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %sqlite3_value_text.exit54.thread
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.ct), !inline_history !1101
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !761
  br label %sqlite3VdbeMemSetNull.exit.i

bb.aj:                                            ; preds = %sqlite3_value_text.exit54.thread
  store i16 1, ptr %i.cu, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.aj, %bb.ai
  %i.cx = phi ptr [ %.pre.i, %bb.ai ], [ %i.ct, %bb.aj ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.cy, align 4, !tbaa !570
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !683 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 103 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !918
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.ak, label %sqlite3_result_error_nomem.exit

bb.ak:                                            ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.df = load i8, ptr %i.de, align 8, !tbaa !919
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.al, label %sqlite3_result_error_nomem.exit

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.db, align 1, !tbaa !918
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 220
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !920
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 400
  store atomic volatile i32 1, ptr %i.dk monotonic, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 408 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !921
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !921
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 412
  store i16 0, ptr %i.do, align 4, !tbaa !922
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 344 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !768 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.dq, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.dq, ptr noundef nonnull @.str.125), !inline_history !75
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !768 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i32 7, ptr %i.ds, align 8, !tbaa !779
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i56, %.lr.ph.i.i ], [ %.018.i.i, %bb.ao ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !780
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !780
  %i.dw = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.dw, align 8, !tbaa !779
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i56 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i56, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.ap:                                            ; preds = %sqlite3_value_text.exit54
  %i.dx = icmp eq i32 %.3, 0
  br i1 %i.dx, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null), !inline_history !1906
  br label %sqlite3_result_error_nomem.exit

.thread:                                          ; preds = %bb.d, %bb.ap
  %.0347892 = phi ptr [ %.034, %bb.ap ], [ @.str.1679, %bb.d ] ; 2 uses
  %.1337991 = phi ptr [ %.032, %bb.ap ], [ @.str.1680, %bb.d ] ; 2 uses
  %.2318090 = phi ptr [ %.130, %bb.ap ], [ @.str.1681, %bb.d ] ; 4 uses
  %.3288189 = phi i32 [ %.227, %bb.ap ], [ -1, %bb.d ] ; 2 uses
  %.48288 = phi i32 [ %.3, %bb.ap ], [ 15, %bb.d ] ; 2 uses
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !2839 ; 8 uses
  %i.dz = tail call fastcc i32 @fts3CursorSeek(ptr noundef %0, ptr noundef %i.dy)
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ar, label %sqlite3_result_error_nomem.exit

bb.ar:                                            ; preds = %.thread
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !2744 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2749
  %.not.i = icmp eq ptr %i.ed, null
  br i1 %.not.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0, i8 noundef zeroext 1, ptr noundef null), !inline_history !6391
  br label %sqlite3Fts3Snippet.exit

bb.at:                                            ; preds = %bb.ar
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 range(i32 1, 0) %.48288, i32 -64)
  %spec.store.select2.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 64) ; 2 uses
  %i.ee = icmp sgt i32 %.48288, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 48 ; 2 uses
  %i.eg = icmp slt i32 %.3288189, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.en = sub nsw i32 0, %spec.store.select2.i
  %i.eo = add nsw i32 %spec.store.select2.i, -1
  br label %bb.au

bb.au:                                            ; preds = %bb.eb, %bb.at
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i, %bb.eb ], [ 1, %bb.at ] ; 6 uses
  %indvar.i = phi i64 [ %indvar.next.i, %bb.eb ], [ 0, %bb.at ] ; 2 uses
  br i1 %i.ee, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %indvars336.i = trunc i64 %indvars.iv334.i to i32 ; 2 uses
  %i.ep = add nsw i32 %i.eo, %indvars336.i
  %6 = sdiv i32 %i.ep, %indvars336.i
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.062.i = phi i32 [ %6, %bb.av ], [ %i.en, %bb.au ] ; 5 uses
  %i.eq = load i32, ptr %i.ef, align 8, !tbaa !2629 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.split.i, label %.split272.us.thread.i

.split272.us.thread.i:                            ; preds = %bb.aw
  %i.es = mul nuw nsw i64 %indvar.i, 24
  %i.et = add nuw nsw i64 %i.es, 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %5, i8 0, i64 %i.et, i1 false)
  br label %.preheader.i

.split.i:                                         ; preds = %bb.aw, %._crit_edge.i
  %i.eu = phi i32 [ %i.ut, %._crit_edge.i ], [ %i.eq, %bb.aw ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.aw ] ; 2 uses
  %.056270.i = phi i64 [ %i.us, %._crit_edge.i ], [ 0, %bb.aw ] ; 4 uses
  %.0146268.i = phi i64 [ %.1147.lcssa.i, %._crit_edge.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv.i ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  %i.ew = icmp sgt i32 %i.eu, 0
  br i1 %i.ew, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ea, %.lr.ph.i
  %.0264.i = phi i32 [ 0, %.lr.ph.i ], [ %i.uo, %bb.ea ] ; 5 uses
  %.055263.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.ph.i, %bb.ea ] ; 3 uses
  %.1147262.i = phi i64 [ %.0146268.i, %.lr.ph.i ], [ %.2148.ph.i, %bb.ea ] ; 5 uses
  %.not71.i = icmp eq i32 %.0264.i, %.3288189
  %or.cond74.i = or i1 %i.eg, %.not71.i
  br i1 %or.cond74.i, label %bb.ay, label %bb.ea

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  store i64 0, ptr %i.ei, align 8
  store ptr %i.dy, ptr %3, align 8, !tbaa !2841
  %i.ex = load ptr, ptr %i.ec, align 8, !tbaa !2749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #58
  store i32 0, ptr %i.n, align 4, !tbaa !570
  %i.ey = call fastcc i32 @fts3ExprIterate2(ptr noundef %i.ex, ptr noundef %i.n, ptr noundef nonnull @fts3ExprLoadDoclistsCb, ptr noundef nonnull %3), !inline_history !6392 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #58
  %i.ez = load i32, ptr %i.ei, align 8, !tbaa !2842 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %.not.i.i59 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i59, label %bb.az, label %fts3BestSnippet.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i64 %i.fa, 48                   ; 6 uses
  %i.fc = call i32 @sqlite3_initialize(), !inline_history !6393
  %.not.i.i.i.i = icmp ne i32 %i.fc, 0
  %i.fd = add nsw i64 %i.fb, -2147483392
  %or.cond.i88.i = icmp ult i64 %i.fd, -2147483391
  %or.cond203.i = select i1 %.not.i.i.i.i, i1 true, i1 %or.cond.i88.i
  br i1 %or.cond203.i, label %fts3BestSnippet.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fe = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i89.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i89.i, label %bb.bo, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ff = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i90.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i90.i, label %sqlite3_mutex_enter.exit.i91.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.fg(ptr noundef nonnull %i.ff) #58, !inline_history !6394
  br label %sqlite3_mutex_enter.exit.i91.i

sqlite3_mutex_enter.exit.i91.i:                   ; preds = %bb.bc, %bb.bb
  %i.fh = trunc nuw nsw i64 %i.fb to i32
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 64), align 8, !tbaa !643
  %i.fj = call i32 %i.fi(i32 noundef range(i32 1, 2147483392) %i.fh) #58, !inline_history !6395 ; 2 uses
  %i.fk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !565
  %i.fl = icmp slt i64 %i.fk, %i.fb
  br i1 %i.fl, label %bb.bd, label %sqlite3StatusHighwater.exit.i.i.i

bb.bd:                                            ; preds = %sqlite3_mutex_enter.exit.i91.i
  store i64 %i.fb, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !565
  br label %sqlite3StatusHighwater.exit.i.i.i

sqlite3StatusHighwater.exit.i.i.i:                ; preds = %bb.bd, %sqlite3_mutex_enter.exit.i91.i
  %i.fm = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 8), align 8, !tbaa !746 ; 2 uses
  %i.fn = icmp sgt i64 %i.fm, 0
  br i1 %i.fn, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %sqlite3StatusHighwater.exit.i.i.i
  %i.fo = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.fp = sext i32 %i.fj to i64                   ; 2 uses
  %i.fq = sub nsw i64 %i.fm, %i.fp
  %.not.i5.i.i = icmp slt i64 %i.fo, %i.fq
  br i1 %.not.i5.i.i, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  %i.fr = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i92.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i92.i, label %sqlite3MallocAlarm.exit.i.i.i, label %sqlite3_mutex_leave.exit.i.i.i.i

sqlite3_mutex_leave.exit.i.i.i.i:                 ; preds = %bb.bf
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.fs(ptr noundef nonnull %i.fr) #58, !inline_history !6396
  %.pr.i.i.i.i = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i1.i.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %sqlite3_mutex_leave.exit.i.i.i.i
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.ft(ptr noundef nonnull %.pr.i.i.i.i) #58, !inline_history !6397
  br label %sqlite3MallocAlarm.exit.i.i.i

sqlite3MallocAlarm.exit.i.i.i:                    ; preds = %bb.bg, %sqlite3_mutex_leave.exit.i.i.i.i, %bb.bf
  %i.fu = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 16), align 8, !tbaa !747 ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not17.i.i.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %sqlite3MallocAlarm.exit.i.i.i
  %i.fv = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.fw = sub nsw i64 %i.fu, %i.fp
  %.not18.i.i.i = icmp slt i64 %i.fv, %i.fw
  br i1 %.not18.i.i.i, label %bb.bj, label %mallocWithAlarm.exit.i.i

bb.bi:                                            ; preds = %bb.be
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %sqlite3MallocAlarm.exit.i.i.i, %sqlite3StatusHighwater.exit.i.i.i
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !726
  %i.fy = call ptr %i.fx(i32 noundef %i.fj) #58, !inline_history !6395 ; 4 uses
  %.not19.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not19.i.i.i, label %mallocWithAlarm.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ga = call i32 %i.fz(ptr noundef nonnull %i.fy) #58, !inline_history !6398
  %i.gb = sext i32 %i.ga to i64
  %i.gc = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.gd = add nsw i64 %i.gc, %i.gb                ; 3 uses
  store i64 %i.gd, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ge = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !565
  %i.gf = icmp sgt i64 %i.gd, %i.ge
  br i1 %i.gf, label %bb.bl, label %sqlite3StatusUp.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  store i64 %i.gd, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !565
  br label %sqlite3StatusUp.exit.i.i.i

sqlite3StatusUp.exit.i.i.i:                       ; preds = %bb.bl, %bb.bk
  %i.gg = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565 ; 2 uses
  %i.gh = add nsw i64 %i.gg, 1                    ; 2 uses
  store i64 %i.gh, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.gi = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !565
  %.not21.i.i.i = icmp slt i64 %i.gg, %i.gi
  br i1 %.not21.i.i.i, label %mallocWithAlarm.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %sqlite3StatusUp.exit.i.i.i
  store i64 %i.gh, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !565
  br label %mallocWithAlarm.exit.i.i

mallocWithAlarm.exit.i.i:                         ; preds = %bb.bm, %sqlite3StatusUp.exit.i.i.i, %bb.bj, %bb.bh
  %storemerge.i.i.i = phi ptr [ null, %bb.bh ], [ %i.fy, %bb.bm ], [ %i.fy, %sqlite3StatusUp.exit.i.i.i ], [ null, %bb.bj ] ; 2 uses
  %i.gj = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i6.i.i, label %sqlite3Malloc.exit.i, label %bb.bn

bb.bn:                                            ; preds = %mallocWithAlarm.exit.i.i
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.gk(ptr noundef nonnull %i.gj) #58, !inline_history !6399
  br label %sqlite3Malloc.exit.i

bb.bo:                                            ; preds = %bb.ba
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !726
  %i.gm = trunc nuw nsw i64 %i.fb to i32
  %i.gn = call ptr %i.gl(i32 noundef %i.gm) #58, !inline_history !6400
  br label %sqlite3Malloc.exit.i

sqlite3Malloc.exit.i:                             ; preds = %bb.bo, %bb.bn, %mallocWithAlarm.exit.i.i
  %.0.i.i60 = phi ptr [ %storemerge.i.i.i, %bb.bn ], [ %i.gn, %bb.bo ], [ %storemerge.i.i.i, %mallocWithAlarm.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i60, null
  br i1 %.not.i.i.i, label %fts3BestSnippet.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %sqlite3Malloc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i60, i8 0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.fb, i1 false)
  store ptr %.0.i.i60, ptr %i.ej, align 8, !tbaa !2845
  store ptr %i.dy, ptr %4, align 8, !tbaa !2846
  store i32 %.0264.i, ptr %i.ek, align 8, !tbaa !2847
  store i32 %.062.i, ptr %i.el, align 4, !tbaa !6436
  store i32 %i.ez, ptr %i.eh, align 8, !tbaa !6437
  store i32 -1, ptr %i.em, align 8, !tbaa !6438
  %i.go = load ptr, ptr %i.ec, align 8, !tbaa !2749
end_hunk_5
