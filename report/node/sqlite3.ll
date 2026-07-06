inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3VtabSavepoint:bb.a

sqlite3VtabUnlock.exit:                           ; preds = %sqlite3DbFree.exit.i, %bb.l, %bb.d, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %.1, %bb.l ], [ %.1, %sqlite3DbFree.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.be = icmp eq i32 %.2, 0
  br i1 %i.be, label %bb.b, label %.critedge, !llvm.loop !2637

.critedge:                                        ; preds = %bb.b, %sqlite3VtabUnlock.exit, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.2, %sqlite3VtabUnlock.exit ]
  ret i32 %.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @apiHandleError(ptr nofree noundef captures(address) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !550   ; 2 uses
  %i.c = icmp ne i8 %i.b, 0
  %i.d = icmp eq i32 %1, 3082
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %sqlite3OomClear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.f = load i32, ptr %i.e, align 4, !tbaa !552
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %sqlite3OomClear.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 1, !tbaa !550
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 0, ptr %i.h monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !553
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !553
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 438
  %i.m = load i16, ptr %i.l, align 2, !tbaa !353
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi i16 [ %i.m, %bb.e ], [ 0, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 %i.n, ptr %i.o, align 4, !tbaa !554
  br label %sqlite3OomClear.exit

sqlite3OomClear.exit:                             ; preds = %bb.b, %bb.c, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 7, ptr %i.p, align 8, !tbaa !589
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef 7)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !604
  %i.s = and i32 %i.r, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sqlite3OomClear.exit
  %.0 = phi i32 [ 7, %sqlite3OomClear.exit ], [ %i.s, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @vdbeMemClear(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !162
  %i.c = and i16 %i.b, -28672
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !159
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !160
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.g, ptr noundef %i.i)
  store i32 0, ptr %i.d, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !289
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @vdbeMemClearExternAndSetNull(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.sqlite3_context, align 8    ; 8 uses
  %2 = alloca %struct.sqlite3_value, align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !162  ; 2 uses
  %.not = icmp sgt i16 %i.b, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !227    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 1, ptr %i.e, align 4, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !157
  store ptr %2, ptr %1, align 8, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %i.i, align 8, !tbaa !288
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.l = load i8, ptr %i.k, align 4, !tbaa !844
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 %i.l, ptr %i.m, align 8, !tbaa !227
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1264
  call void %i.o(ptr noundef nonnull %1) #59, !inline_history !2638
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !159
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %sqlite3VdbeMemFinalize.exit

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !160
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.s, ptr noundef %i.u)
  br label %sqlite3VdbeMemFinalize.exit

sqlite3VdbeMemFinalize.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #59
  %.pre = load i16, ptr %i.a, align 4, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeMemFinalize.exit, %bb.a
  %i.v = phi i16 [ %.pre, %sqlite3VdbeMemFinalize.exit ], [ %i.b, %bb.a ]
  %i.w = and i16 %i.v, 4096
  %.not7 = icmp eq i16 %i.w, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !811
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !289
  call void %i.y(ptr noundef %i.aa) #59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i16 1, ptr %i.a, align 4, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3VdbeMemGrow(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !159
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !289  ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.thread70

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !157  ; 13 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = sext i32 %1 to i64                       ; 3 uses
  br i1 %.not, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %i.f, null
  br i1 %i.m, label %sqlite3DbRealloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 512 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.p = icmp ult ptr %i.f, %i.o
  br i1 %i.p, label %bb.f, label %sqlite3DbRealloc.exit.thread63

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 496
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174
  %.not.i57 = icmp ult ptr %i.f, %i.r
  br i1 %.not.i57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp ult i32 %1, 129
  br i1 %i.s, label %sqlite3DbReallocOrFree.exit, label %sqlite3DbRealloc.exit.thread63

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 504
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %.not19.i = icmp ult ptr %i.f, %i.u
  br i1 %.not19.i, label %sqlite3DbRealloc.exit.thread63, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 438
  %i.w = load i16, ptr %i.v, align 2, !tbaa !353
  %3 = zext i16 %i.w to i32
  %.not20.i = icmp ugt i32 %1, %3
  br i1 %.not20.i, label %sqlite3DbRealloc.exit.thread63, label %sqlite3DbReallocOrFree.exit

sqlite3DbRealloc.exit:                            ; preds = %bb.d
  %i.x = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.k, i64 noundef range(i64 -9223372036854775806, -9223372036854775808) %i.l), !inline_history !2639
  br label %sqlite3DbReallocOrFree.exit

sqlite3DbRealloc.exit.thread63:                   ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %i.y = tail call fastcc ptr @dbReallocFinish(ptr noundef nonnull %i.k, ptr noundef %i.f, i64 noundef range(i64 -9223372036854775806, -9223372036854775808) %i.l), !inline_history !2639 ; 2 uses
  %.not.i65 = icmp eq ptr %i.y, null
  br i1 %.not.i65, label %.thread, label %sqlite3DbReallocOrFree.exit

.thread:                                          ; preds = %sqlite3DbRealloc.exit.thread63
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.aa = icmp ult ptr %i.f, %i.z
  br i1 %i.aa, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 496
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !174
  %.not22.i = icmp ult ptr %i.f, %i.ac
  br i1 %.not22.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 488 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !49
  store ptr %i.f, ptr %i.ad, align 8, !tbaa !55
  br label %sqlite3DbReallocOrFree.exit

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 504
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99
  %.not23.i = icmp ult ptr %i.f, %i.ag
  br i1 %.not23.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 472 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !49
  store ptr %i.f, ptr %i.ah, align 8, !tbaa !53
  br label %sqlite3DbReallocOrFree.exit

bb.n:                                             ; preds = %bb.l, %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 792
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !98
  %.not24.i = icmp eq ptr %i.ak, null
  br i1 %.not24.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %i.k, ptr noundef nonnull %i.f)
  br label %sqlite3DbReallocOrFree.exit

bb.p:                                             ; preds = %bb.n
  %i.al = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i59 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i59, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.an(ptr noundef nonnull %i.am) #59, !inline_history !546
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.r, %bb.q
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.f) #59, !inline_history !547
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.as = sub nsw i64 %i.ar, %i.aq
  store i64 %i.as, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.au = add nsw i64 %i.at, -1
  store i64 %i.au, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.av(ptr noundef nonnull %i.f) #59, !inline_history !548
  %i.aw = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i4.i.i, label %sqlite3DbReallocOrFree.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.ax(ptr noundef nonnull %i.aw) #59, !inline_history !549
  br label %sqlite3DbReallocOrFree.exit

bb.t:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.ay(ptr noundef nonnull %i.f) #59, !inline_history !548
  br label %sqlite3DbReallocOrFree.exit

sqlite3DbReallocOrFree.exit:                      ; preds = %sqlite3DbRealloc.exit, %bb.i, %bb.g, %bb.k, %bb.m, %bb.o, %sqlite3_mutex_enter.exit.i.i, %bb.s, %bb.t, %sqlite3DbRealloc.exit.thread63
  %.0.i5662 = phi ptr [ null, %bb.t ], [ %i.x, %sqlite3DbRealloc.exit ], [ %i.y, %sqlite3DbRealloc.exit.thread63 ], [ %i.f, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %sqlite3_mutex_enter.exit.i.i ], [ null, %bb.s ], [ %i.f, %bb.g ] ; 2 uses
  store ptr %.0.i5662, ptr %i.g, align 8, !tbaa !160
  br label %bb.ab

bb.u:                                             ; preds = %bb.c
  %i.az = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.f, i64 noundef %i.l) ; 2 uses
  store ptr %i.az, ptr %i.g, align 8, !tbaa !160
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.v, label %sqlite3_free.exit

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !289 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %sqlite3_free.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i50 = icmp eq i32 %i.bd, 0
  br i1 %.not.i50, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.bf(ptr noundef nonnull %i.be) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.y, %bb.x
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.bh = tail call i32 %i.bg(ptr noundef nonnull %i.bb) #59, !inline_history !269
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bk = sub nsw i64 %i.bj, %i.bi
  store i64 %i.bk, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bm = add nsw i64 %i.bl, -1
  store i64 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bn(ptr noundef nonnull %i.bb) #59, !inline_history !270
  %i.bo = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bo, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.z

bb.z:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bp(ptr noundef nonnull %i.bo) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.aa:                                            ; preds = %bb.w
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bq(ptr noundef nonnull %i.bb) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.aa, %bb.z, %sqlite3_mutex_enter.exit.i, %bb.v, %bb.u
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !160
  br label %bb.ab

bb.ab:                                            ; preds = %sqlite3_free.exit, %sqlite3DbReallocOrFree.exit
  %storemerge = phi ptr [ %i.br, %sqlite3_free.exit ], [ %.0.i5662, %sqlite3DbReallocOrFree.exit ] ; 2 uses
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !289
  br label %bb.ag

bb.ac:                                            ; preds = %bb.a
  br i1 %i.c, label %..thread70_crit_edge, label %bb.ad

..thread70_crit_edge:                             ; preds = %bb.ac
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %.thread70

.thread70:                                        ; preds = %..thread70_crit_edge, %bb.b
  %i.bs = phi ptr [ %.pre, %..thread70_crit_edge ], [ %i.h, %bb.b ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !157
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.bu, ptr noundef %i.bs)
  br label %bb.ad

bb.ad:                                            ; preds = %.thread70, %bb.ac
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !157 ; 2 uses
  %i.bx = sext i32 %1 to i64                      ; 2 uses
  %.not.i51 = icmp eq ptr %i.bw, null
  br i1 %.not.i51, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.bw, i64 noundef %i.bx), !inline_history !608
  br label %sqlite3DbMallocRaw.exit

bb.af:                                            ; preds = %bb.ad
  %i.bz = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bx), !inline_history !608
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.ae, %bb.af
  %.0.i = phi ptr [ %i.by, %bb.ae ], [ %i.bz, %bb.af ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i, ptr %i.ca, align 8, !tbaa !160
  %i.cb = icmp eq i32 %2, 0
  br label %bb.ag

bb.ag:                                            ; preds = %sqlite3DbMallocRaw.exit, %bb.ab
  %i.cc = phi ptr [ %storemerge, %bb.ab ], [ %.0.i, %sqlite3DbMallocRaw.exit ] ; 5 uses
  %.0 = phi i1 [ true, %bb.ab ], [ %i.cb, %sqlite3DbMallocRaw.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_0
begin_hunk_1_@sqlite3OpenTable:bb.a

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeLoadString(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !943
  %.not.i.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 118, i32 noundef 0, i32 noundef %1, i32 noundef 0), !inline_history !977
  br label %sqlite3VdbeAddOp3.exit.i

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  store i8 118, ptr %i.j, align 8, !tbaa !563
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.k, align 2, !tbaa !587
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !584
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %1, ptr %i.m, align 8, !tbaa !585
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !586
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !146
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 103
  %i.s = load i8, ptr %i.r, align 1, !tbaa !550
  %.not.i9.i = icmp eq i8 %i.s, 0
  br i1 %.not.i9.i, label %bb.d, label %sqlite3VdbeAddOp4.exit

bb.d:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.t = icmp slt i32 %.0.i.i, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.a, align 8, !tbaa !185
  %i.v = add nsw i32 %i.u, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i10.i = phi i32 [ %i.v, %bb.e ], [ %.0.i.i, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !184
  %i.y = sext i32 %.0.i10.i to i64
  %i.z = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.y
  tail call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %0, ptr noundef %i.z, ptr noundef %2, i32 noundef 0), !inline_history !948
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %sqlite3VdbeAddOp3.exit.i, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3TableLock(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext range(i8 0, 2) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !651
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr i8, ptr %i.h, i64 17
  %.val = load i8, ptr %i.i, align 1, !tbaa !592
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @lockTable(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeSetP4KeyInfo(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !976  ; 3 uses
  %i.c = tail call fastcc ptr @sqlite3KeyInfoOfIndex(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %sqlite3VdbeAppendP4.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 103
  %i.f = load i8, ptr %i.e, align 1, !tbaa !550
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 792
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %sqlite3VdbeAppendP4.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @sqlite3KeyInfoUnref(ptr noundef nonnull %i.c)
  br label %sqlite3VdbeAppendP4.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !185
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [24 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -23
  store i8 -8, ptr %i.p, align 1, !tbaa !566
  %i.q = getelementptr i8, ptr %i.o, i64 -8
  store ptr %i.c, ptr %i.q, align 8, !tbaa !227
  br label %sqlite3VdbeAppendP4.exit

sqlite3VdbeAppendP4.exit:                         ; preds = %bb.e, %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lockTable(ptr nofree noundef captures(none) %0, i32 noundef range(i32 2, 1) %1, i32 noundef %2, i8 noundef zeroext range(i8 0, 2) %3, ptr noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3544 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr %0, ptr %i.b          ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %., i64 132 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3527 ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %., i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1000 ; 19 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3528
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3530
  %i.m = icmp eq i32 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !3531
  %i.p = or i8 %i.o, %3
  %i.q = icmp ne i8 %i.p, 0
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %i.n, align 8, !tbaa !3531
  br label %sqlite3OomFault.exit

bb.e:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !3966

._crit_edge.thread:                               ; preds = %bb.e
  %i.s = mul i32 %i.d, 24
  %i.t = add i32 %i.s, 24                         ; 2 uses
  %i.u = load ptr, ptr %., align 8, !tbaa !651
  %i.v = getelementptr inbounds nuw i8, ptr %., i64 136
  %i.w = sext i32 %i.t to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.a
  %i.x = mul i32 %i.d, 24
  %i.y = add i32 %i.x, 24                         ; 2 uses
  %i.z = load ptr, ptr %., align 8, !tbaa !651    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %., i64 136 ; 2 uses
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  %i.ac = icmp eq ptr %i.g, null
  br i1 %i.ac, label %sqlite3DbReallocOrFree.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ad = phi i64 [ %i.w, %._crit_edge.thread ], [ %i.ab, %._crit_edge ]
  %i.ae = phi ptr [ %i.v, %._crit_edge.thread ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.af = phi ptr [ %i.u, %._crit_edge.thread ], [ %i.z, %._crit_edge ] ; 11 uses
  %i.ag = phi i32 [ %i.t, %._crit_edge.thread ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !100
  %i.aj = icmp ult ptr %i.g, %i.ai
  br i1 %i.aj, label %bb.g, label %sqlite3DbRealloc.exit.thread10.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 496
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !174
  %.not.i.i = icmp ult ptr %i.g, %i.al
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp ult i32 %i.ag, 129
  br i1 %i.am, label %sqlite3DbReallocOrFree.exit.thread41, label %sqlite3DbRealloc.exit.thread10.i

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %.not19.i.i = icmp ult ptr %i.g, %i.ao
  br i1 %.not19.i.i, label %sqlite3DbRealloc.exit.thread10.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 438
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !353
  %5 = zext i16 %i.aq to i32
  %.not20.i.i = icmp ugt i32 %i.ag, %5
  br i1 %.not20.i.i, label %sqlite3DbRealloc.exit.thread10.i, label %sqlite3DbReallocOrFree.exit.thread41

sqlite3DbRealloc.exit.thread10.i:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.ar = tail call fastcc ptr @dbReallocFinish(ptr noundef nonnull %i.af, ptr noundef %i.g, i64 noundef range(i64 -9223372036854775806, -9223372036854775808) %i.ad), !inline_history !3967 ; 2 uses
  %.not12.i = icmp eq ptr %i.ar, null
  br i1 %.not12.i, label %.thread.i, label %sqlite3DbReallocOrFree.exit.thread41

.thread.i:                                        ; preds = %sqlite3DbRealloc.exit.thread10.i
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !100
  %i.at = icmp ult ptr %i.g, %i.as
  br i1 %i.at, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.thread.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 496
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !174
  %.not22.i = icmp ult ptr %i.g, %i.av
  br i1 %.not22.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 488 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55
  store ptr %i.ax, ptr %i.g, align 8, !tbaa !49
  store ptr %i.g, ptr %i.aw, align 8, !tbaa !55
  br label %sqlite3DbReallocOrFree.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99
  %.not23.i = icmp ult ptr %i.g, %i.az
  br i1 %.not23.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 472 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53
  store ptr %i.bb, ptr %i.g, align 8, !tbaa !49
  store ptr %i.g, ptr %i.ba, align 8, !tbaa !53
  br label %sqlite3DbReallocOrFree.exit.thread

bb.o:                                             ; preds = %bb.m, %.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 792
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !98
  %.not24.i = icmp eq ptr %i.bd, null
  br i1 %.not24.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %i.af, ptr noundef nonnull %i.g)
  br label %sqlite3DbReallocOrFree.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.be = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i37 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i37, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.bg(ptr noundef nonnull %i.bf) #59, !inline_history !3968
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.s, %bb.r
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.bi = tail call i32 %i.bh(ptr noundef nonnull %i.g) #59, !inline_history !3969
  %i.bj = sext i32 %i.bi to i64
  %i.bk = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bl = sub nsw i64 %i.bk, %i.bj
  store i64 %i.bl, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bn = add nsw i64 %i.bm, -1
  store i64 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bo(ptr noundef nonnull %i.g) #59, !inline_history !3970
  %i.bp = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i4.i.i, label %sqlite3DbReallocOrFree.exit.thread, label %bb.t

bb.t:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bq(ptr noundef nonnull %i.bp) #59, !inline_history !3971
  br label %sqlite3DbReallocOrFree.exit.thread

bb.u:                                             ; preds = %bb.q
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.br(ptr noundef nonnull %i.g) #59, !inline_history !3970
  br label %sqlite3DbReallocOrFree.exit.thread

sqlite3DbReallocOrFree.exit.thread:               ; preds = %bb.l, %bb.n, %bb.p, %sqlite3_mutex_enter.exit.i.i, %bb.t, %bb.u
  store ptr null, ptr %i.ae, align 8, !tbaa !1000
  br label %bb.w

sqlite3DbReallocOrFree.exit.thread41:             ; preds = %bb.h, %sqlite3DbRealloc.exit.thread10.i, %bb.j
  %.0.i9.i.ph = phi ptr [ %i.g, %bb.j ], [ %i.ar, %sqlite3DbRealloc.exit.thread10.i ], [ %i.g, %bb.h ] ; 2 uses
  store ptr %.0.i9.i.ph, ptr %i.ae, align 8, !tbaa !1000
  br label %bb.v

sqlite3DbReallocOrFree.exit:                      ; preds = %._crit_edge
  %i.bs = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.z, i64 noundef range(i64 -9223372036854775806, -9223372036854775808) %i.ab), !inline_history !3967 ; 3 uses
  store ptr %i.bs, ptr %i.aa, align 8, !tbaa !1000
  %.not35 = icmp eq ptr %i.bs, null
  br i1 %.not35, label %bb.w, label %bb.v

bb.v:                                             ; preds = %sqlite3DbReallocOrFree.exit.thread41, %sqlite3DbReallocOrFree.exit
  %.0.i9.i44 = phi ptr [ %.0.i9.i.ph, %sqlite3DbReallocOrFree.exit.thread41 ], [ %i.bs, %sqlite3DbReallocOrFree.exit ]
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !3527 ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.c, align 4, !tbaa !3527
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [24 x i8], ptr %.0.i9.i44, i64 %i.bv ; 4 uses
  store i32 %1, ptr %i.bw, align 8, !tbaa !3528
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %2, ptr %i.bx, align 4, !tbaa !3530
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i8 %3, ptr %i.by, align 8, !tbaa !3531
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %4, ptr %i.bz, align 8, !tbaa !3532
  br label %sqlite3OomFault.exit

bb.w:                                             ; preds = %sqlite3DbReallocOrFree.exit.thread, %sqlite3DbReallocOrFree.exit
  store i32 0, ptr %i.c, align 4, !tbaa !3527
  %i.ca = load ptr, ptr %., align 8, !tbaa !651   ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 103 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !550
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.x, label %sqlite3OomFault.exit

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !551
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.y, label %sqlite3OomFault.exit

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.cb, align 1, !tbaa !550
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 220
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !552
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 424
  store atomic volatile i32 1, ptr %i.ck monotonic, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 432 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !553
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !553
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 436
  store i16 0, ptr %i.co, align 4, !tbaa !554
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 344 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !301 ; 2 uses
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %sqlite3OomFault.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.cq, ptr noundef nonnull @.str.133), !inline_history !555
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !301 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i32 7, ptr %i.cs, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.ab ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !313
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !313
  %i.cw = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.cw, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !557

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.v, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3KeyInfoOfIndex(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i16, ptr %i.a, align 8, !tbaa !875  ; 3 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.e = load i16, ptr %i.d, align 2, !tbaa !936
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !313
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
end_hunk_1
