Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 423
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@bindText:bb.a
sqlite3VdbeChangeEncoding.exit.thread:            ; preds = %bb.j, %bb.i, %sqlite3VdbeChangeEncoding.exit, %sqlite3ApiExit.exit, %bb.b
  %.2 = phi i32 [ %i.ah, %sqlite3ApiExit.exit ], [ 0, %sqlite3VdbeChangeEncoding.exit ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.j ] ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !687
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !601 ; 2 uses
  %.not.i52 = icmp eq ptr %i.ak, null
  br i1 %.not.i52, label %sqlite3_mutex_leave.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3VdbeChangeEncoding.exit.thread
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.al(ptr noundef nonnull %i.ak) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

bb.m:                                             ; preds = %bb.a
  %magicptr = ptrtoint ptr %4 to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.n, label %sqlite3_mutex_leave.exit

bb.n:                                             ; preds = %bb.m
  tail call void %4(ptr noundef %2) #59
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.l, %sqlite3VdbeChangeEncoding.exit.thread, %bb.m, %bb.n
  %.3 = phi i32 [ %i.b, %bb.m ], [ %i.b, %bb.n ], [ %.2, %sqlite3VdbeChangeEncoding.exit.thread ], [ %.2, %bb.l ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_bind_blob64(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call fastcc i32 @bindText(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i8 noundef zeroext 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 26) i32 @sqlite3_bind_double(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, double noundef %2) #0 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %i.b = tail call fastcc i32 @vdbeUnbind(ptr noundef %0, i32 noundef %i.a) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %sqlite3_mutex_leave.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !701
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr inbounds [56 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 3 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !694
  %i.j = and i16 %i.i, -28672
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.g)
  br label %sqlite3VdbeMemSetNull.exit.i

bb.d:                                             ; preds = %bb.b
  store i16 1, ptr %i.h, align 4, !tbaa !694
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.d, %bb.c
  %i.k = fcmp ord double %2, 0.000000e+00
  br i1 %i.k, label %bb.e, label %sqlite3VdbeMemSetDouble.exit

bb.e:                                             ; preds = %sqlite3VdbeMemSetNull.exit.i
  store double %2, ptr %i.g, align 8, !tbaa !741
  store i16 8, ptr %i.h, align 4, !tbaa !694
  br label %sqlite3VdbeMemSetDouble.exit

sqlite3VdbeMemSetDouble.exit:                     ; preds = %sqlite3VdbeMemSetNull.exit.i, %bb.e
  %i.l = load ptr, ptr %0, align 8, !tbaa !687
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !601  ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %sqlite3_mutex_leave.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3VdbeMemSetDouble.exit
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.o(ptr noundef nonnull %i.n) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.f, %sqlite3VdbeMemSetDouble.exit, %bb.a
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 26) i32 @vdbeUnbind(ptr nofree noundef captures(address_is_null) %0, i32 noundef range(i32 -2147483648, 2147483647) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !687 ; 2 uses
  %i.b = icmp eq ptr %.val.i, null
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.str.124.sink.i = phi ptr [ @.str.134, %bb.a ], [ @.str.124, %bb.b ]
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull %.str.124.sink.i)
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 94393, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3_mutex_leave.exit28

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !601  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.e(ptr noundef nonnull %i.d) #59, !inline_history !570
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.d, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 199
  %i.g = load i8, ptr %i.f, align 1, !tbaa !700
  %.not22 = icmp eq i8 %i.g, 1
  br i1 %.not22, label %bb.h, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !687    ; 2 uses
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 94397, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i32 21, ptr %i.i, align 8, !tbaa !959
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.h, i32 noundef 21)
  %i.j = load ptr, ptr %0, align 8, !tbaa !687
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !601  ; 2 uses
  %.not.i26 = icmp eq ptr %i.l, null
  br i1 %.not.i26, label %sqlite3_mutex_leave.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.m(ptr noundef nonnull %i.l) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !712
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.475, ptr noundef %i.o)
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 94401, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3_mutex_leave.exit28

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i16, ptr %i.p, align 8, !tbaa !702
  %i.r = sext i16 %i.q to i32
  %.not23 = icmp ult i32 %1, %i.r
  br i1 %.not23, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %0, align 8, !tbaa !687    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  store i32 25, ptr %i.t, align 8, !tbaa !959
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.s, i32 noundef 25)
  %i.u = load ptr, ptr %0, align 8, !tbaa !687
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !601  ; 2 uses
  %.not.i27 = icmp eq ptr %i.w, null
  br i1 %.not.i27, label %sqlite3_mutex_leave.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.x(ptr noundef nonnull %i.w) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit28

bb.k:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !701
  %i.aa = zext i32 %1 to i64
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !694
  %i.ae = and i16 %i.ad, -28672
  %.not.i29 = icmp eq i16 %i.ae, 0
  br i1 %.not.i29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !692
  %.not3.i = icmp eq i32 %i.ag, 0
  br i1 %.not3.i, label %sqlite3VdbeMemRelease.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.ab)
  br label %sqlite3VdbeMemRelease.exit

sqlite3VdbeMemRelease.exit:                       ; preds = %bb.l, %bb.m
  store i16 1, ptr %i.ac, align 4, !tbaa !694
  %i.ah = load ptr, ptr %0, align 8, !tbaa !687
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i32 0, ptr %i.ai, align 8, !tbaa !959
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1107 ; 2 uses
  %.not24 = icmp eq i32 %i.ak, 0
  br i1 %.not24, label %sqlite3_mutex_leave.exit28, label %bb.n

bb.n:                                             ; preds = %sqlite3VdbeMemRelease.exit
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 31)
  %i.al = shl nuw i32 1, %2
  %i.am = and i32 %i.ak, %i.al
  %.not25 = icmp eq i32 %i.am, 0
  br i1 %.not25, label %sqlite3_mutex_leave.exit28, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = and i16 %i.ao, -4
  %i.aq = or disjoint i16 %i.ap, 1
  store i16 %i.aq, ptr %i.an, align 8
  br label %sqlite3_mutex_leave.exit28

sqlite3_mutex_leave.exit28:                       ; preds = %bb.j, %bb.i, %sqlite3VdbeMemRelease.exit, %bb.n, %bb.o, %sqlite3_mutex_leave.exit, %bb.c
  %.0 = phi i32 [ 21, %bb.c ], [ 21, %sqlite3_mutex_leave.exit ], [ 0, %sqlite3VdbeMemRelease.exit ], [ 0, %bb.o ], [ 0, %bb.n ], [ 25, %bb.i ], [ 25, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 26) i32 @sqlite3_bind_int(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = add nsw i32 %1, -1                       ; 2 uses
  %i.c = tail call fastcc i32 @vdbeUnbind(ptr noundef %0, i32 noundef %i.b) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %sqlite3_bind_int64.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !701
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [56 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !694
  %i.k = and i16 %i.j, -28672
  %.not.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.h, i64 noundef %i.a)
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.d:                                             ; preds = %bb.b
  store i64 %i.a, ptr %i.h, align 8, !tbaa !741
  store i16 4, ptr %i.i, align 4, !tbaa !694
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !687
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !601  ; 2 uses
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.o(ptr noundef nonnull %i.n) #59, !inline_history !1144
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.a, %sqlite3VdbeMemSetInt64.exit.i, %bb.e
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 26) i32 @sqlite3_bind_int64(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %i.b = tail call fastcc i32 @vdbeUnbind(ptr noundef %0, i32 noundef %i.a) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %sqlite3_mutex_leave.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !701
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr inbounds [56 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !694
  %i.j = and i16 %i.i, -28672
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.g, i64 noundef %2)
  br label %sqlite3VdbeMemSetInt64.exit

bb.d:                                             ; preds = %bb.b
  store i64 %2, ptr %i.g, align 8, !tbaa !741
  store i16 4, ptr %i.h, align 4, !tbaa !694
  br label %sqlite3VdbeMemSetInt64.exit

sqlite3VdbeMemSetInt64.exit:                      ; preds = %bb.c, %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !687
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !601  ; 2 uses
  %.not.i8 = icmp eq ptr %i.m, null
  br i1 %.not.i8, label %sqlite3_mutex_leave.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeMemSetInt64.exit
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.n(ptr noundef nonnull %i.m) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.e, %sqlite3VdbeMemSetInt64.exit, %bb.a
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 26) i32 @sqlite3_bind_null(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = tail call fastcc i32 @vdbeUnbind(ptr noundef %0, i32 noundef %i.a) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %sqlite3_mutex_leave.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !687
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !601  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3_mutex_leave.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.g(ptr noundef nonnull %i.f) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 26) i32 @sqlite3_bind_pointer(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %i.b = tail call fastcc i32 @vdbeUnbind(ptr noundef %0, i32 noundef %i.a) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !701
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr inbounds [56 x i8], ptr %i.e, i64 %i.f ; 6 uses
  tail call fastcc void @vdbeMemClear(ptr noundef %i.g)
  %.not.i = icmp eq ptr %3, null
  %i.h = select i1 %.not.i, ptr @.str.4, ptr %3
  store ptr %i.h, ptr %i.g, align 8, !tbaa !741
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !768
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i16 6657, ptr %i.j, align 4, !tbaa !694
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  store i8 112, ptr %i.k, align 1, !tbaa !1110
  %.not11.i = icmp eq ptr %4, null
  %i.l = select i1 %.not11.i, ptr @sqlite3NoopDestructor, ptr %4
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1114
  %i.n = load ptr, ptr %0, align 8, !tbaa !687
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !601  ; 2 uses
  %.not.i13 = icmp eq ptr %i.p, null
  br i1 %.not.i13, label %sqlite3_mutex_leave.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.q(ptr noundef nonnull %i.p) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %sqlite3_mutex_leave.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %4(ptr noundef %2) #59
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.c, %bb.b, %bb.d, %bb.e
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_bind_text(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = tail call fastcc i32 @bindText(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %i.a, ptr noundef %4, i8 noundef zeroext 1)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_bind_text64(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i8 noundef zeroext %5) #0 {
bb.a:
  switch i8 %5, label %bb.b [
    i8 16, label %bb.c
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i8 %5, 4
  %spec.store.select = select i1 %i.a, i8 2, i8 %5
  %i.b = and i64 %3, -2
  br label %bb.c
end_hunk_0
begin_hunk_1_@pushDownWhereTerms:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !801
  %i.dz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !801
  %i.eb = or i32 %i.ea, %i.dy
  %i.ec = and i32 %i.eb, 536870923
  %i.ed = icmp eq i32 %i.ec, 536870912
  br i1 %i.ed, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i8, ptr %i.bo, align 4, !tbaa !1288
  %i.ef = icmp ugt i8 %i.ee, 1
  br i1 %i.ef, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %i.du) ; 0 uses
  %i.eh = call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %i.by) ; 0 uses
  %i.ei = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.cy, i64 noundef 72) ; 7 uses
  %.not.i.i123 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i123, label %sqlite3ExprAnd.exit124, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ei, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.ei, align 8, !tbaa !2042
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 50
  store i16 -1, ptr %i.ej, align 2, !tbaa !2210
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 545261568, ptr %i.ek, align 4, !tbaa !801
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store i32 1, ptr %i.el, align 8, !tbaa !2211
  br label %sqlite3ExprAnd.exit124

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %i.em = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 44, ptr noundef nonnull %i.du, ptr noundef nonnull %i.by)
  br label %sqlite3ExprAnd.exit124

sqlite3ExprAnd.exit124:                           ; preds = %bb.y, %bb.z, %bb.ac, %bb.ad, %bb.ae
  %.1.i122 = phi ptr [ %i.du, %bb.z ], [ %i.by, %bb.y ], [ %i.em, %bb.ae ], [ null, %bb.ac ], [ %i.ei, %bb.ad ]
  store ptr %.1.i122, ptr %i.dt, align 8, !tbaa !2058
  br label %bb.af

bb.af:                                            ; preds = %sqlite3ExprAnd.exit, %sqlite3ExprAnd.exit124
  %i.en = getelementptr inbounds nuw i8, ptr %.098152, i64 72
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  %.not114 = icmp eq ptr %i.eo, null
  br i1 %.not114, label %.critedge119, label %sqlite3ExprDup.exit

.critedge119:                                     ; preds = %bb.f, %sqlite3IsBinary.exit, %bb.af, %.thread, %._crit_edge148, %.loopexit, %bb.j, %bb.c, %bb.b, %bb.a
  %.8 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.j ], [ 0, %.loopexit ], [ %.089.lcssa, %._crit_edge148 ], [ %.089.lcssa, %.thread ], [ %i.ay, %bb.af ], [ 0, %sqlite3IsBinary.exit ], [ 0, %bb.f ]
  ret i32 %.8
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @disableUnusedSubqueryResultColumns(ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.b = load i16, ptr %i.a, align 1
  %i.c = and i16 %i.b, 528
  %or.cond = icmp eq i16 %i.c, 0
  br i1 %or.cond, label %bb.b, label %.loopexit62

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2039
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !741
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !815
  %.fr = freeze ptr %i.h                          ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.048 = phi ptr [ %.fr, %bb.b ], [ %i.m, %bb.g ] ; 5 uses
  %.not53 = icmp eq ptr %.048, null
  br i1 %.not53, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.048, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !819
  %i.k = and i32 %i.j, 9
  %.not58 = icmp eq i32 %i.k, 0
  br i1 %.not58, label %bb.e, label %.loopexit62

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.048, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2055 ; 2 uses
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %.048, align 8, !tbaa !2209
  %.not60 = icmp eq i8 %i.n, -120
  br i1 %.not60, label %bb.g, label %.loopexit62

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.048, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2070
  %.not61 = icmp eq ptr %i.p, null
  br i1 %.not61, label %bb.c, label %.loopexit62, !llvm.loop !5687

bb.h:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2324 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.fr, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2061 ; 5 uses
  %.not54 = icmp eq ptr %i.t, null
  br i1 %.not54, label %.loopexit64, label %.preheader63

.preheader63:                                     ; preds = %bb.h
  %i.u = load i32, ptr %i.t, align 8, !tbaa !576  ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit64

.lr.ph.preheader:                                 ; preds = %.preheader63
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %i.u, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.k ] ; 3 uses
  %.067 = phi i64 [ %i.r, %.lr.ph.preheader.new ], [ %.1.1, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i16, ptr %i.y, align 4, !tbaa !741  ; 2 uses
  %.not57 = icmp eq i16 %i.z, 0
  br i1 %.not57, label %.lr.ph.1, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = add i16 %i.z, -1
  %i.ab = tail call i16 @llvm.umin.i16(i16 %i.aa, i16 63)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = or i64 %i.ad, %.067
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.i, %.lr.ph
  %.1 = phi i64 [ %i.ae, %bb.i ], [ %.067, %.lr.ph ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !741 ; 2 uses
  %.not57.1 = icmp eq i16 %i.ah, 0
  br i1 %.not57.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.1
  %i.ai = add i16 %i.ah, -1
  %i.aj = tail call i16 @llvm.umin.i16(i16 %i.ai, i16 63)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %.1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.1
  %.1.1 = phi i64 [ %i.am, %bb.j ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit64.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5688

.loopexit64.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit64, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit64.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit64.loopexit.unr-lcssa ]
  %.067.epil.init = phi i64 [ %i.r, %.lr.ph.preheader ], [ %.1.1, %.loopexit64.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv.epil.init
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !741 ; 2 uses
  %.not57.epil = icmp eq i16 %i.ap, 0
  br i1 %.not57.epil, label %.loopexit64, label %bb.l

bb.l:                                             ; preds = %.lr.ph.epil.preheader
  %i.aq = add i16 %i.ap, -1
  %i.ar = tail call i16 @llvm.umin.i16(i16 %i.aq, i16 63)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = or i64 %i.at, %.067.epil.init
  br label %.loopexit64

.loopexit64:                                      ; preds = %.loopexit64.loopexit.unr-lcssa, %bb.l, %.lr.ph.epil.preheader, %.preheader63, %bb.h
  %.2 = phi i64 [ %i.r, %bb.h ], [ %i.r, %.preheader63 ], [ %.1.1, %.loopexit64.loopexit.unr-lcssa ], [ %i.au, %bb.l ], [ %.067.epil.init, %.lr.ph.epil.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !1161 ; 2 uses
  %wide.trip.count83 = sext i16 %i.aw to i64
  %i.ax = icmp slt i16 %i.aw, 1
  %.not5668 = icmp eq ptr %.fr, null
  %or.cond89 = or i1 %i.ax, %.not5668
  br i1 %or.cond89, label %.loopexit62, label %.lr.ph75.split

.lr.ph75.split:                                   ; preds = %.loopexit64, %..loopexit_crit_edge
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %..loopexit_crit_edge ], [ 0, %.loopexit64 ] ; 3 uses
  %.04374 = phi i32 [ %.3, %..loopexit_crit_edge ], [ 0, %.loopexit64 ] ; 2 uses
  %1 = tail call i64 @llvm.umin.i64(i64 %indvars.iv80, i64 63)
  %i.ay = shl nuw i64 1, %1
  %i.az = and i64 %i.ay, %.2
  %.not55 = icmp eq i64 %i.az, 0
  br i1 %.not55, label %.preheader, label %..loopexit_crit_edge

.preheader:                                       ; preds = %.lr.ph75.split, %bb.n
  %.14470 = phi i32 [ %.245, %bb.n ], [ %.04374, %.lr.ph75.split ] ; 2 uses
  %.14969 = phi ptr [ %i.bp, %bb.n ], [ %.fr, %.lr.ph75.split ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.14969, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2056
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1180 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !2042
  %i.bg = icmp eq i8 %i.bf, 122
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader
  store i8 122, ptr %i.be, align 8, !tbaa !2042
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !801
  %i.bj = and i32 %i.bi, -532481
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !801
  %i.bk = getelementptr inbounds nuw i8, ptr %.14969, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !819
  %i.bm = or i32 %i.bl, 16777216
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !819
  %i.bn = add nsw i32 %.14470, 1
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.m
  %.245 = phi i32 [ %i.bn, %bb.m ], [ %.14470, %.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.14969, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2055 ; 2 uses
  %.not56 = icmp eq ptr %i.bp, null
  br i1 %.not56, label %..loopexit_crit_edge, label %.preheader, !llvm.loop !5689

..loopexit_crit_edge:                             ; preds = %bb.n, %.lr.ph75.split
  %.3 = phi i32 [ %.04374, %.lr.ph75.split ], [ %.245, %bb.n ]
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit62, label %.lr.ph75.split, !llvm.loop !5690

.loopexit62:                                      ; preds = %bb.g, %bb.f, %bb.d, %..loopexit_crit_edge, %.loopexit64, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @fromClauseTermCanBeCoroutine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [72 x i8], ptr %i.a, i64 %i.b ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 512
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !741  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.j = load i8, ptr %i.i, align 2, !tbaa !2307  ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %isSelfJoinView.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.h, align 4, !tbaa !2327
  %i.m = icmp slt i32 %i.l, 2
  %.not29 = icmp eq i8 %i.j, 2
  %or.cond = or i1 %.not29, %i.m
  br i1 %or.cond, label %.critedge, label %isSelfJoinView.exit

.critedge:                                        ; preds = %bb.c, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !2212
  %i.p = and i8 %i.o, 64
  %.not30 = icmp eq i8 %i.p, 0
  br i1 %.not30, label %bb.d, label %isSelfJoinView.exit

bb.d:                                             ; preds = %.critedge
  %i.q = load ptr, ptr %0, align 8, !tbaa !1001
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1409
  %i.t = and i32 %i.s, 33554432
  %.not31 = icmp eq i32 %i.t, 0
  br i1 %.not31, label %bb.e, label %isSelfJoinView.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %1, align 8, !tbaa !576    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !741
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !815  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !819
  %i.aa = and i32 %i.z, 16777216
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %bb.e
  %i.ab = add nsw i32 %2, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %.preheader.i
  %.021.ph.i = phi i32 [ %i.ab, %.preheader.i ], [ %i.bo, %.split.i ] ; 2 uses
  %i.ae = icmp slt i32 %.021.ph.i, %i.u
  br i1 %i.ae, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %.outer.i
  %i.af = sext i32 %.021.ph.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3_stricmp.exit.thread31.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %sqlite3_stricmp.exit.thread31.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ag = getelementptr inbounds [72 x i8], ptr %i.a, i64 %indvars.iv.i ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 25
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = and i16 %i.ai, 68
  %or.cond.i = icmp eq i16 %i.aj, 4
  br i1 %or.cond.i, label %bb.f, label %sqlite3_stricmp.exit.thread31.i, !llvm.loop !334

bb.f:                                             ; preds = %.lr.ph.i
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !812 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %sqlite3_stricmp.exit.thread31.i, label %bb.g, !llvm.loop !334

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2039
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1193 ; 2 uses
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !2039
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1193
  %.not25.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not25.i, label %bb.h, label %sqlite3_stricmp.exit.thread31.i, !llvm.loop !334

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !812 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %sqlite3_stricmp.exit.thread31.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h, %bb.k
  %.013.i.i.i = phi ptr [ %i.bf, %bb.k ], [ %i.ak, %bb.h ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.bg, %bb.k ], [ %i.at, %bb.h ] ; 2 uses
  %i.av = load i8, ptr %.013.i.i.i, align 1, !tbaa !741 ; 3 uses
  %i.aw = load i8, ptr %.012.i.i.i, align 1, !tbaa !741 ; 2 uses
  %i.ax = icmp eq i8 %i.av, %i.aw
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.i.i
  %i.ay = icmp eq i8 %i.av, 0
  br i1 %i.ay, label %sqlite3_stricmp.exit.thread.i, label %bb.k

bb.j:                                             ; preds = %.preheader.i.i
  %i.az = zext i8 %i.av to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !741
  %i.bc = zext i8 %i.aw to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !741
  %.not.i.i.i = icmp eq i8 %i.bb, %i.be
  br i1 %.not.i.i.i, label %bb.k, label %sqlite3_stricmp.exit.thread31.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1
  br label %.preheader.i.i

sqlite3_stricmp.exit.thread.i:                    ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !741
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !815 ; 2 uses
  %i.bk = icmp eq ptr %i.ap, null
  br i1 %i.bk, label %bb.l, label %.split.i

bb.l:                                             ; preds = %sqlite3_stricmp.exit.thread.i
  %i.bl = load i32, ptr %i.ad, align 8, !tbaa !820
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !820
  %.not27.i = icmp eq i32 %i.bl, %i.bn
  br i1 %.not27.i, label %.split.i, label %sqlite3_stricmp.exit.thread31.i, !llvm.loop !334

.split.i:                                         ; preds = %bb.l, %sqlite3_stricmp.exit.thread.i
  %i.bo = trunc nsw i64 %indvars.iv.next.i to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !819
  %i.br = and i32 %i.bq, 16777216
  %.not28.not.i = icmp eq i32 %i.br, 0
  br i1 %.not28.not.i, label %isSelfJoinView.exit, label %.outer.i

sqlite3_stricmp.exit.thread31.i:                  ; preds = %bb.j, %bb.l, %bb.h, %bb.g, %bb.f, %.lr.ph.i
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.u, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.outer.i, %sqlite3_stricmp.exit.thread31.i, %bb.e
  %i.bs = icmp eq i32 %2, 0
end_hunk_1
begin_hunk_2_@sessionAppendRecordMerge:bb.a
  %i.ai = zext nneg i8 %i.ag to i32
  br label %sessionVarintGet.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.aj = getelementptr inbounds nuw i8, ptr %.03148, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !741 ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = icmp sgt i8 %i.ak, -1
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = and i8 %i.ag, 127
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 7
  %i.aq = or disjoint i32 %i.ap, %i.al
  br label %sqlite3GetVarint32.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.03148, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !741 ; 2 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = zext nneg i8 %i.as to i32
  %i.av = and i8 %i.ag, 127
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 14
  %i.ay = shl nuw nsw i32 %i.al, 7
  %i.az = and i32 %i.ay, 16256
  %i.ba = or disjoint i32 %i.az, %i.ax
  %i.bb = or disjoint i32 %i.ba, %i.au
  br label %sqlite3GetVarint32.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.af, ptr noundef nonnull %i.b)
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !571 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.bd, 4294967296
  %i.be = trunc nuw i64 %i.bd to i32
  %storemerge.i.i.i = select i1 %.not.i.i.i, i32 %i.be, i32 -1
  %narrow.i = add nuw nsw i8 %i.bc, 1
  %i.bf = zext nneg i8 %narrow.i to i32
  br label %sqlite3GetVarint32.exit.i.i

sqlite3GetVarint32.exit.i.i:                      ; preds = %bb.o, %bb.n, %bb.l
  %storemerge.sink.i.i.i = phi i32 [ %storemerge.i.i.i, %bb.o ], [ %i.bb, %bb.n ], [ %i.aq, %bb.l ]
  %.0.i.i.i = phi i32 [ %i.bf, %bb.o ], [ 4, %bb.n ], [ 3, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %sessionVarintGet.exit.i

sessionVarintGet.exit.i:                          ; preds = %sqlite3GetVarint32.exit.i.i, %bb.j
  %.012.i = phi i32 [ %i.ai, %bb.j ], [ %storemerge.sink.i.i.i, %sqlite3GetVarint32.exit.i.i ]
  %i.bg = phi i32 [ 2, %bb.j ], [ %.0.i.i.i, %sqlite3GetVarint32.exit.i.i ]
  %i.bh = add nsw i32 %i.bg, %.012.i
  %i.bi = sext i32 %i.bh to i64
  br label %sessionSerialLen.exit

sessionSerialLen.exit:                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.h, %sessionVarintGet.exit.i
  %.0.i = phi i64 [ %i.bi, %sessionVarintGet.exit.i ], [ 1, %.lr.ph ], [ 9, %bb.h ], [ 1, %.lr.ph ], [ 1, %.lr.ph ] ; 3 uses
  %i.bj = load i8, ptr %.03245, align 1, !tbaa !741 ; 2 uses
  switch i8 %i.bj, label %bb.p [
    i8 -1, label %sessionSerialLen.exit44
    i8 5, label %sessionSerialLen.exit44
    i8 0, label %sessionSerialLen.exit44
  ]

bb.p:                                             ; preds = %sessionSerialLen.exit
  %i.bk = add i8 %i.bj, -1
  %or.cond3.i35 = icmp ult i8 %i.bk, 2
  br i1 %or.cond3.i35, label %sessionSerialLen.exit44, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.03245, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !741 ; 4 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = zext nneg i8 %i.bm to i32
  br label %sessionVarintGet.exit.i42

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.bp = getelementptr inbounds nuw i8, ptr %.03245, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !741 ; 2 uses
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = icmp sgt i8 %i.bq, -1
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = and i8 %i.bm, 127
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 7
  %i.bw = or disjoint i32 %i.bv, %i.br
  br label %sqlite3GetVarint32.exit.i.i39

bb.u:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %.03245, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !741 ; 2 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ca = zext nneg i8 %i.by to i32
  %i.cb = and i8 %i.bm, 127
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 14
  %i.ce = shl nuw nsw i32 %i.br, 7
  %i.cf = and i32 %i.ce, 16256
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = or disjoint i32 %i.cg, %i.ca
  br label %sqlite3GetVarint32.exit.i.i39

bb.w:                                             ; preds = %bb.u
  %i.ci = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.bl, ptr noundef nonnull %i.a)
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !571 ; 2 uses
  %.not.i.i.i36 = icmp ult i64 %i.cj, 4294967296
  %i.ck = trunc nuw i64 %i.cj to i32
  %storemerge.i.i.i37 = select i1 %.not.i.i.i36, i32 %i.ck, i32 -1
  %narrow.i38 = add nuw nsw i8 %i.ci, 1
  %i.cl = zext nneg i8 %narrow.i38 to i32
  br label %sqlite3GetVarint32.exit.i.i39

sqlite3GetVarint32.exit.i.i39:                    ; preds = %bb.w, %bb.v, %bb.t
  %storemerge.sink.i.i.i40 = phi i32 [ %storemerge.i.i.i37, %bb.w ], [ %i.ch, %bb.v ], [ %i.bw, %bb.t ]
  %.0.i.i.i41 = phi i32 [ %i.cl, %bb.w ], [ 4, %bb.v ], [ 3, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sessionVarintGet.exit.i42

sessionVarintGet.exit.i42:                        ; preds = %sqlite3GetVarint32.exit.i.i39, %bb.r
  %.012.i43 = phi i32 [ %i.bo, %bb.r ], [ %storemerge.sink.i.i.i40, %sqlite3GetVarint32.exit.i.i39 ]
  %i.cm = phi i32 [ 2, %bb.r ], [ %.0.i.i.i41, %sqlite3GetVarint32.exit.i.i39 ]
  %i.cn = add nsw i32 %i.cm, %.012.i43
  %i.co = sext i32 %i.cn to i64
  br label %sessionSerialLen.exit44

sessionSerialLen.exit44:                          ; preds = %sessionSerialLen.exit, %sessionSerialLen.exit, %sessionSerialLen.exit, %bb.p, %sessionVarintGet.exit.i42
  %.0.i34 = phi i64 [ %i.co, %sessionVarintGet.exit.i42 ], [ 1, %sessionSerialLen.exit ], [ 9, %bb.p ], [ 1, %sessionSerialLen.exit ], [ 1, %sessionSerialLen.exit ] ; 3 uses
  %.off = add i8 %i.ad, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.y, label %bb.x

bb.x:                                             ; preds = %sessionSerialLen.exit44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.052, ptr nonnull align 1 %.03245, i64 %.0.i34, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %sessionSerialLen.exit44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.052, ptr nonnull align 1 %.03148, i64 %.0.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi i64 [ %.0.i34, %bb.x ], [ %.0.i, %bb.y ]
  %.1 = getelementptr inbounds i8, ptr %.052, i64 %.pn ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.03148, i64 %.0.i
  %i.cq = getelementptr inbounds i8, ptr %.03245, i64 %.0.i34
  %i.cr = add nuw nsw i32 %.03051, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8343

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre53 = load ptr, ptr %0, align 8, !tbaa !1574
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sessionBufferGrow.exit.thread65
  %i.cs = phi ptr [ %i.y, %sessionBufferGrow.exit.thread65 ], [ %.pre53, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.ab, %sessionBufferGrow.exit.thread65 ], [ %.1, %._crit_edge.loopexit ]
  %i.ct = ptrtoint ptr %.0.lcssa to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !1570
  br label %sessionBufferGrow.exit.thread

sessionBufferGrow.exit.thread:                    ; preds = %sqlite3_realloc64.exit.thread.i, %.critedge.i, %bb.a, %._crit_edge, %sessionBufferGrow.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v2i16(<2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #47

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { norecurse nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nofree nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { nounwind }
attributes #60 = { nounwind willreturn memory(read) }
attributes #61 = { nounwind willreturn memory(none) }
attributes #62 = { "function-inline-cost-multiplier"="2" }
attributes #63 = { nounwind allocsize(0) }
attributes #64 = { nounwind allocsize(1) }

!llvm.module.flags = !{!552, !553, !554, !555}
!llvm.ident = !{!556}
!llvm.errno.tbaa = !{!561}

!0 = distinct !{!0, !605}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !605}
!4 = distinct !{!4, !605}
!5 = distinct !{ptr @sqlite3DbNNFreeNN, ptr @sqlite3_free, null}
!6 = distinct !{null}
!7 = distinct !{!7, !605}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{!10, !605}
!11 = distinct !{!11, !605}
!12 = distinct !{null}
!13 = distinct !{ptr @sqlite3_free, null}
!14 = distinct !{!14, !605}
!15 = distinct !{null}
!16 = distinct !{!16, !605}
!17 = distinct !{null}
end_hunk_2
