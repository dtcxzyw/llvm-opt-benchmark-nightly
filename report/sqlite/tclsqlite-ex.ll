Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@createIncrblobChannel:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !405
  store ptr %i.p, ptr %i.n, align 8, !tbaa !407
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 4, ptr %i.q, align 8, !tbaa !410
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load i32, ptr @createIncrblobChannel.count, align 4, !tbaa !17
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.s, ptr @createIncrblobChannel.count, align 4, !tbaa !17
  %i.t = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 64, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.420, i32 noundef %i.s) #20 ; 0 uses
  %i.u = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 720
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !411
  %i.x = call ptr %i.w(ptr noundef nonnull @IncrblobChannelType, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, i32 noundef %i.d) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !412
  %i.z = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1696
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !413
  call void %i.ab(ptr noundef %0, ptr noundef %i.x) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !414 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !415
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr null, ptr %i.af, align 8, !tbaa !416
  %.not34 = icmp eq ptr %i.ad, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %i.n, ptr %i.ag, align 8, !tbaa !416
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !414
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %i.ah, align 8, !tbaa !417
  %i.ai = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1872
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !172
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !418
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !412
  %i.ao = call ptr %i.am(ptr noundef %i.an) #20
  call void %i.ak(ptr noundef %0, ptr noundef %i.ao, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare void @sqlite3_interrupt(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_last_insert_rowid(ptr noundef) local_unnamed_addr #5

declare void @sqlite3_progress_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @DbProgressHandler(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !324
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !294
  %i.h = tail call i32 %i.c(ptr noundef %i.e, ptr noundef %i.g) #20
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1408
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !314
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.m = tail call ptr %i.k(ptr noundef %i.l) #20
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #20, !inline_history !316
  %i.o = and i64 %i.n, 4294967295
  %.not5 = icmp ne i64 %i.o, 0
  %spec.select = zext i1 %.not5 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

declare ptr @sqlite3_profile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @DbProfileHandler(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  %3 = alloca %struct.Tcl_DString, align 8        ; 8 uses
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 99, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.59, i64 noundef %2) #20 ; 0 uses
  %i.c = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 992
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  call void %i.e(ptr noundef nonnull %3) #20
  %i.f = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 952
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !309
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !295
  %i.k = call ptr %i.h(ptr noundef nonnull %3, ptr noundef %i.j, i32 noundef -1) #20 ; 0 uses
  %i.l = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310
  %i.o = call ptr %i.n(ptr noundef nonnull %3, ptr noundef %1) #20 ; 0 uses
  %i.p = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.s = call ptr %i.r(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.t = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1048
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !324
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !176
  %i.y = load ptr, ptr %3, align 8, !tbaa !312
  %i.z = call i32 %i.v(ptr noundef %i.x, ptr noundef %i.y) #20 ; 0 uses
  %i.aa = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 976
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164
  call void %i.ac(ptr noundef nonnull %3) #20
  %i.ad = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1752
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !283
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !176
  call void %i.af(ptr noundef %i.ag) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare i32 @sqlite3_sleep(i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_serialize(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_busy_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @sqlite3_total_changes64(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_trace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @DbTraceHandler(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %2 = alloca %struct.Tcl_DString, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !308
  call void %i.c(ptr noundef nonnull %2) #20
  %i.d = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 952
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !309
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !298
  %i.i = call ptr %i.f(ptr noundef nonnull %2, ptr noundef %i.h, i32 noundef -1) #20 ; 0 uses
  %i.j = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !310
  %i.m = call ptr %i.l(ptr noundef nonnull %2, ptr noundef %1) #20 ; 0 uses
  %i.n = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1048
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !324
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !176
  %i.s = load ptr, ptr %2, align 8, !tbaa !312
  %i.t = call i32 %i.p(ptr noundef %i.r, ptr noundef %i.s) #20 ; 0 uses
  %i.u = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 976
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !164
  call void %i.w(ptr noundef nonnull %2) #20
  %i.x = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1752
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !283
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !176
  call void %i.z(ptr noundef %i.aa) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

declare i32 @sqlite3_trace_v2(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @DbTraceV2Handler(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %4 = ptrtoint ptr %2 to i64                     ; 4 uses
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.n

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  switch i32 %i.c, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.k
  ]

bb.b:                                             ; preds = %.split
  %i.d = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !254
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !299
  %i.i = tail call ptr %i.f(ptr noundef %i.h, i32 noundef -1) #20 ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !243
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !243
  %i.l = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !253
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 3920
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !341
  %i.s = tail call ptr %i.r(i64 noundef %4) #20
  %i.t = tail call i32 %i.n(ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef %i.s) #20 ; 0 uses
  %i.u = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !253
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !176
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !254
  %i.aa = tail call ptr %i.z(ptr noundef %3, i32 noundef -1) #20
  %i.ab = tail call i32 %i.w(ptr noundef %i.x, ptr noundef nonnull %i.i, ptr noundef %i.aa) #20 ; 0 uses
  %i.ac = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2360
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !307
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !176
  %i.ag = tail call i32 %i.ae(ptr noundef %i.af, ptr noundef nonnull %i.i, i32 noundef 262144) #20 ; 0 uses
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !243 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.i, align 8, !tbaa !243
  %i.aj = icmp slt i32 %i.ah, 2
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !246
  tail call void %i.am(ptr noundef nonnull %i.i) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.an = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1752
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !283
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !176
  tail call void %i.ap(ptr noundef %i.aq) #20
  br label %bb.n

bb.e:                                             ; preds = %.split
  %i.ar = load i64, ptr %3, align 8, !tbaa !272
  %i.as = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 464
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !254
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !299
  %i.ax = tail call ptr %i.au(ptr noundef %i.aw, i32 noundef -1) #20 ; 8 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !243
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !243
  %i.ba = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 368
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !253
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !176
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 3920
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !341
  %i.bh = tail call ptr %i.bg(i64 noundef %4) #20
  %i.bi = tail call i32 %i.bc(ptr noundef %i.be, ptr noundef nonnull %i.ax, ptr noundef %i.bh) #20 ; 0 uses
  %i.bj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 368
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !253
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !176
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 3920
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !341
  %i.bp = tail call ptr %i.bo(i64 noundef %i.ar) #20
  %i.bq = tail call i32 %i.bl(ptr noundef %i.bm, ptr noundef nonnull %i.ax, ptr noundef %i.bp) #20 ; 0 uses
  %i.br = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2360
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !307
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !176
  %i.bv = tail call i32 %i.bt(ptr noundef %i.bu, ptr noundef nonnull %i.ax, i32 noundef 262144) #20 ; 0 uses
  %i.bw = load i32, ptr %i.ax, align 8, !tbaa !243 ; 2 uses
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.ax, align 8, !tbaa !243
  %i.by = icmp slt i32 %i.bw, 2
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 256
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !246
  tail call void %i.cb(ptr noundef nonnull %i.ax) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1752
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !283
  %i.cf = load ptr, ptr %i.bd, align 8, !tbaa !176
  tail call void %i.ce(ptr noundef %i.cf) #20
  br label %bb.n

bb.h:                                             ; preds = %.split
  %i.cg = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 464
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !254
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !299
  %i.cl = tail call ptr %i.ci(ptr noundef %i.ck, i32 noundef -1) #20 ; 7 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !243
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !243
  %i.co = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 368
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !253
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !176
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 3920
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !341
  %i.cv = tail call ptr %i.cu(i64 noundef %4) #20
  %i.cw = tail call i32 %i.cq(ptr noundef %i.cs, ptr noundef nonnull %i.cl, ptr noundef %i.cv) #20 ; 0 uses
  %i.cx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2360
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !307
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !176
  %i.db = tail call i32 %i.cz(ptr noundef %i.da, ptr noundef nonnull %i.cl, i32 noundef 262144) #20 ; 0 uses
  %i.dc = load i32, ptr %i.cl, align 8, !tbaa !243 ; 2 uses
  %i.dd = add nsw i32 %i.dc, -1
  store i32 %i.dd, ptr %i.cl, align 8, !tbaa !243
  %i.de = icmp slt i32 %i.dc, 2
  br i1 %i.de, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.df = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 256
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !246
  tail call void %i.dh(ptr noundef nonnull %i.cl) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.di = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1752
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !283
  %i.dl = load ptr, ptr %i.cr, align 8, !tbaa !176
  tail call void %i.dk(ptr noundef %i.dl) #20
  br label %bb.n

bb.k:                                             ; preds = %.split
  %i.dm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 464
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !254
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !299
  %i.dr = tail call ptr %i.do(ptr noundef %i.dq, i32 noundef -1) #20 ; 7 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !243
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 8, !tbaa !243
  %i.du = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 368
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !253
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !176
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 3920
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !341
  %i.eb = tail call ptr %i.ea(i64 noundef %4) #20
  %i.ec = tail call i32 %i.dw(ptr noundef %i.dy, ptr noundef nonnull %i.dr, ptr noundef %i.eb) #20 ; 0 uses
  %i.ed = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2360
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !307
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !176
  %i.eh = tail call i32 %i.ef(ptr noundef %i.eg, ptr noundef nonnull %i.dr, i32 noundef 262144) #20 ; 0 uses
  %i.ei = load i32, ptr %i.dr, align 8, !tbaa !243 ; 2 uses
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr %i.dr, align 8, !tbaa !243
  %i.ek = icmp slt i32 %i.ei, 2
  br i1 %i.ek, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.el = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 256
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !246
  tail call void %i.en(ptr noundef nonnull %i.dr) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.eo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1752
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !283
  %i.er = load ptr, ptr %i.dx, align 8, !tbaa !176
  tail call void %i.eq(ptr noundef %i.er) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.j, %bb.g, %bb.d, %.split
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @DbTransPostCmd(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !227    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !303
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !303
  %i.e = icmp eq i32 %2, 1                        ; 2 uses
  %i.f = select i1 %i.e, i64 2, i64 0
  %i.g = icmp eq i32 %i.d, 0
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @DbTransPostCmd.azEnd, i64 %i.f
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !304
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !304
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.p = tail call i32 @sqlite3_exec(ptr noundef %i.o, ptr noundef %i.k, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 576
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.u = tail call ptr @sqlite3_errmsg(ptr noundef %i.t) #20
  tail call void (ptr, ...) %i.s(ptr noundef %1, ptr noundef %i.u, ptr noundef null) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.w = tail call i32 @sqlite3_exec(ptr noundef %i.v, ptr noundef nonnull @.str.243, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ 1, %bb.d ], [ %2, %bb.a ]
  %i.x = load i32, ptr %i.l, align 8, !tbaa !304
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.l, align 8, !tbaa !304
  tail call fastcc void @delDatabaseRef(ptr noundef nonnull %i.a)
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DbHookCmd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !165    ; 3 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !156    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1896
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !258
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %i.b) #20
  %cond = icmp eq ptr %2, null
  br i1 %cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !156    ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !243  ; 2 uses
  %i.h = add nsw i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !243
  %i.i = icmp slt i32 %i.g, 2
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !246
  tail call void %i.l(ptr noundef nonnull %i.f) #20
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  store ptr null, ptr %3, align 8, !tbaa !156
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.m = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2736
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !159
  %i.p = tail call ptr %i.o(ptr noundef nonnull %2) #20
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %.not26 = icmp eq i8 %i.q, 0
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %3, align 8, !tbaa !156
  %i.r = load i32, ptr %2, align 8, !tbaa !243
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %2, align 8, !tbaa !243
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.g, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !419
  %.not27 = icmp eq ptr %i.u, null
  %i.v = select i1 %.not27, ptr null, ptr @DbUpdateHandler
  %i.w = tail call ptr @sqlite3_update_hook(ptr noundef %i.a, ptr noundef %i.v, ptr noundef nonnull %1) #20 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !420
  %.not28 = icmp eq ptr %i.y, null
  %i.z = select i1 %.not28, ptr null, ptr @DbRollbackHandler
  %i.aa = tail call ptr @sqlite3_rollback_hook(ptr noundef %i.a, ptr noundef %i.z, ptr noundef nonnull %1) #20 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !421
  %.not29 = icmp eq ptr %i.ac, null
  %i.ad = select i1 %.not29, ptr null, ptr @DbWalHandler
  %i.ae = tail call ptr @sqlite3_wal_hook(ptr noundef %i.a, ptr noundef %i.ad, ptr noundef nonnull %1) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @dbPrepareAndBind(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 10 uses
  store ptr null, ptr %3, align 8, !tbaa !385
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.0183 = phi ptr [ %1, %bb.a ], [ %i.i, %.critedge ] ; 7 uses
  %i.h = load i8, ptr %.0183, align 1, !tbaa !16
  switch i8 %i.h, label %bb.c [
    i8 32, label %.critedge
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0183, i64 1
  br label %bb.b, !llvm.loop !422

bb.c:                                             ; preds = %bb.b
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %.0183)
  %i.j = trunc i64 %strlen.i to i32
  %i.k = and i32 %i.j, 1073741823
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.0180268 = load ptr, ptr %i.l, align 8, !tbaa !385 ; 2 uses
  %.not269 = icmp eq ptr %.0180268, null
  br i1 %.not269, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %.0180270 = phi ptr [ %.0180, %bb.m ], [ %.0180268, %bb.c ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0180270, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !423  ; 2 uses
end_hunk_0
