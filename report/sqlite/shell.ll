Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@recoverEscapeCrlf:bb.a
  %i.bt = add nsw i32 %i.bq, 12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.4 = phi i32 [ %i.bt, %bb.z ], [ %.3, %bb.y ]
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.aq, i32 noundef %.4, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  call void @sqlite3_free(ptr noundef nonnull %i.aq) #45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.m, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.ad

.critedge:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge, %bb.b, %bb.a
  %i.bu = load ptr, ptr %2, align 8, !tbaa !126
  call void @sqlite3_result_value(ptr noundef %0, ptr noundef %i.bu) #45
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  ret void
}

declare i32 @sqlite3_open_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @recoverDbError(ptr nofree noundef captures(none) initializes((96, 100)) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_errcode(ptr noundef %1) #45
  %i.b = tail call ptr @sqlite3_errmsg(ptr noundef %1) #45
  %i.c = tail call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull @.str.51, ptr noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @recoverPageCount(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !305
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %recoverFinalize.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !299
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !300
  %i.g = tail call ptr (ptr, ptr, ptr, ...) @recoverPreparePrintf(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef nonnull @.str.677, ptr noundef %i.f) ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.split, label %.split10

.split:                                           ; preds = %bb.b
  %i.h = tail call ptr @sqlite3_db_handle(ptr noundef null) #45
  %i.i = tail call i32 @sqlite3_finalize(ptr noundef null) #45
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %recoverFinalize.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.j = load i32, ptr %i.a, align 8, !tbaa !305
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %recoverFinalize.exit.sink.split, label %recoverFinalize.exit

.split10:                                         ; preds = %bb.b
  %i.l = tail call i32 @sqlite3_step(ptr noundef nonnull %i.g) #45 ; 0 uses
  %i.m = tail call i64 @sqlite3_column_int64(ptr noundef nonnull %i.g, i32 noundef 0) #45 ; 3 uses
  %i.n = tail call ptr @sqlite3_db_handle(ptr noundef nonnull %i.g) #45
  %i.o = tail call i32 @sqlite3_finalize(ptr noundef nonnull %i.g) #45
  %.not.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i12, label %recoverFinalize.exit, label %bb.d

bb.d:                                             ; preds = %.split10
  %i.p = load i32, ptr %i.a, align 8, !tbaa !305
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %recoverFinalize.exit.sink.split, label %recoverFinalize.exit

recoverFinalize.exit.sink.split:                  ; preds = %bb.d, %bb.c
  %.sink16 = phi ptr [ %i.h, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.1.ph = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ]
  %i.r = tail call i32 @sqlite3_errcode(ptr noundef %.sink16) #45
  %i.s = tail call ptr @sqlite3_errmsg(ptr noundef %.sink16) #45
  %i.t = tail call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.r, ptr noundef nonnull @.str.51, ptr noundef %i.s) ; 0 uses
  br label %recoverFinalize.exit

recoverFinalize.exit:                             ; preds = %recoverFinalize.exit.sink.split, %bb.d, %.split10, %bb.c, %.split, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.d ], [ 0, %.split ], [ 0, %bb.c ], [ %i.m, %.split10 ], [ %.1.ph, %recoverFinalize.exit.sink.split ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @recoverPreparePrintf(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !305
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.e = call ptr @sqlite3_vmprintf(ptr noundef %2, ptr noundef nonnull %3) #45 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %i.b, align 8, !tbaa !305
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.g = load i32, ptr %i.b, align 8, !tbaa !305
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %recoverPrepare.exit

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @sqlite3_prepare_v2(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %recoverPrepare.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 @sqlite3_errcode(ptr noundef %1) #45
  %i.k = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  %i.l = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull @.str.51, ptr noundef %i.k) ; 0 uses
  br label %recoverPrepare.exit

recoverPrepare.exit:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @sqlite3_free(ptr noundef nonnull %i.e) #45
  br label %bb.g

bb.g:                                             ; preds = %recoverPrepare.exit, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.m, %recoverPrepare.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.1 = phi ptr [ %.0, %bb.g ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsClose(ptr noundef %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #45
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsRead(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.c = icmp eq ptr %i.b, @recover_methods
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !271
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !275
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45 ; 3 uses
  %i.h = icmp eq i32 %2, 16
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_randomness(i32 noundef 16, ptr noundef %1) #45
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.g, 0
  %i.j = icmp eq i64 %3, 0
  %or.cond = and i1 %i.j, %i.i
  %i.k = icmp sgt i32 %2, 107
  %or.cond3 = and i1 %i.k, %or.cond
  br i1 %or.cond3, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val = load i8, ptr %i.l, align 1, !tbaa !52
  %i.m = getelementptr i8, ptr %1, i64 17         ; 2 uses
  %.val95 = load i8, ptr %i.m, align 1, !tbaa !52
  %i.n = zext i8 %.val to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = zext i8 %.val95 to i32
  %i.q = or disjoint i32 %i.o, %i.p               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !52
  %i.t = zext i8 %i.s to i32                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %4 = load i8, ptr %i.u, align 1, !tbaa !52
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %8 = load i8, ptr %7, align 1, !tbaa !52
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 58 ; 2 uses
  %13 = load i8, ptr %12, align 1, !tbaa !52
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 59 ; 2 uses
  %18 = load i8, ptr %17, align 1, !tbaa !52
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %16, %19                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i64 0, ptr %i.a, align 8, !tbaa !130
  %i.v = load ptr, ptr @recover_g.1, align 8, !tbaa !317 ; 8 uses
  %i.w = icmp eq i32 %i.q, 1
  %spec.store.select = select i1 %i.w, i32 65536, i32 %i.q ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !271
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279
  %i.aa = call i32 %i.z(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #45 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !667
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !tbaa !130
  %i.ag = call fastcc i32 @recoverVfsDetectPagesize(ptr noundef nonnull %i.v, ptr noundef nonnull %0, i32 noundef %i.t, i64 noundef %i.af)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.086 = phi i32 [ %i.ag, %bb.g ], [ 0, %bb.f ], [ %i.aa, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !667 ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 76
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !666
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not93 = icmp eq i32 %spec.store.select, 0
  br i1 %.not93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.084101 = phi i32 [ %i.ak, %.thread ], [ %i.t, %bb.i ]
  %.08599 = phi i32 [ %i.ai, %.thread ], [ %spec.store.select, %bb.i ] ; 2 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !130
  %i.am = zext i32 %.08599 to i64
  %i.an = sdiv i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.084102 = phi i32 [ %.084101, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  %.085100 = phi i32 [ %.08599, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.083 = phi i32 [ %i.ao, %bb.j ], [ 0, %bb.i ]  ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !331
  call void @sqlite3_free(ptr noundef %i.aq) #45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.as, align 4, !tbaa !664
  %i.at = shl nuw nsw i32 %2, 1
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !305 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ay = call ptr @sqlite3_malloc64(i64 noundef range(i64 -17179869184, 17179869177) %i.au) #45 ; 4 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 7, ptr %i.av, align 8, !tbaa !305
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ay, i8 0, i64 range(i64 -17179869184, 17179869177) %i.au, i1 false)
  store ptr %i.ay, ptr %i.ap, align 8, !tbaa !331
  %i.az = and i32 %20, -3
  %or.cond5 = icmp ne i32 %i.az, 1
  %i.ba = icmp ne i32 %20, 2
  %or.cond7 = and i1 %i.ba, %or.cond5
  %spec.store.select9 = select i1 %or.cond7, i32 1, i32 %20 ; 4 uses
  %i.bb = zext nneg i32 %2 to i64                 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb ; 2 uses
  store ptr %i.bc, ptr %i.ar, align 8, !tbaa !665
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %1, i64 %i.bb, i1 false)
  %i.bd = lshr i32 %.083, 24
  %i.be = trunc nuw i32 %i.bd to i8
  %i.bf = lshr i32 %.083, 16
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = lshr i32 %.083, 8
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = trunc i32 %.083 to i8
  %i.bk = lshr i32 %spec.store.select9, 24
  %i.bl = trunc nuw i32 %i.bk to i8
  %i.bm = lshr i32 %spec.store.select9, 16
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = lshr i32 %spec.store.select9, 8
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = trunc i32 %spec.store.select9 to i8
  %i.br = sub i32 %.085100, %.084102              ; 2 uses
  %i.bs = lshr i32 %i.br, 8
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = trunc i32 %i.br to i8
  %i.bv = icmp eq i32 %.085100, 65536
  %spec.store.select8 = select i1 %i.bv, i32 1, i32 %.085100 ; 2 uses
  %i.bw = lshr i32 %spec.store.select8, 8
  %i.bx = trunc i32 %i.bw to i8
  %i.by = trunc i32 %spec.store.select8 to i8
  %i.bz = trunc i32 %.084102 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @__const.recoverVfsRead.aHdr, i64 16, i1 false)
  store i8 %i.bx, ptr %i.l, align 1
  store i8 %i.by, ptr %i.m, align 1
  store i8 %i.bz, ptr %i.r, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @__const.recoverVfsRead.aHdr, i64 21), i64 7, i1 false)
  %.sroa.9112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.be, ptr %.sroa.9112.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.bg, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.bi, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.bj, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @__const.recoverVfsRead.aHdr, i64 40), i64 12, i1 false)
  store i8 %i.bl, ptr %i.u, align 1
  store i8 %i.bn, ptr %7, align 1
  store i8 %i.bp, ptr %12, align 1
  store i8 %i.bq, ptr %17, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %.sroa.23.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(33) getelementptr inbounds nuw (i8, ptr @__const.recoverVfsRead.aHdr, i64 72), i64 33, i1 false)
  %.sroa.23128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 105
  store i8 %i.bt, ptr %.sroa.23128.0..sroa_idx, align 1
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 %i.bu, ptr %.sroa.24.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 107
  store i8 0, ptr %.sroa.25.0..sroa_idx, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.cb = add nsw i64 %i.bb, -108
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 0, i64 %i.cb, i1 false)
  %i.cc = load ptr, ptr %i.ap, align 8, !tbaa !331
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr nonnull align 1 %1, i64 %i.bb, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.cd = phi i32 [ 7, %bb.m ], [ %i.aw, %bb.k ]
  store ptr null, ptr %i.ap, align 8, !tbaa !331
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i32 [ %.086, %bb.n ], [ %i.cd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.p, %bb.c
  %.2 = phi i32 [ %i.g, %bb.c ], [ %.1, %bb.p ], [ %i.g, %bb.d ]
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !275
  %i.cg = tail call i32 %i.cf(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3 = phi i32 [ %.2, %bb.q ], [ %i.cg, %bb.r ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsWrite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !276
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsTruncate(ptr noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i64 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !277
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i64 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsSync(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !278
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !278
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsFileSize(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !279
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, ptr noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !279
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsLock(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !280
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsUnlock(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !281
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !281
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
end_hunk_0
