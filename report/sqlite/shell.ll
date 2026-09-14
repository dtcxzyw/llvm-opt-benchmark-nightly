Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_step
; Function Attrs: nounwind uwtable
define i32 @sqlite3MemTraceActivate(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @memtraceBase, align 8, !tbaa !120
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (i32, ...) @sqlite3_config(i32 noundef 5, ptr noundef nonnull @memtraceBase) #45 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (i32, ...) @sqlite3_config(i32 noundef 4, ptr noundef nonnull @ersaztMethods) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ 0, %bb.a ]
  store ptr %0, ptr @memtraceOut, align 8, !tbaa !122
  ret i32 %.0
}

declare i32 @sqlite3_config(i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @sqlite3MemTraceDeactivate() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @memtraceBase, align 8, !tbaa !120
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (i32, ...) @sqlite3_config(i32 noundef 4, ptr noundef nonnull @memtraceBase) #45 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @memtraceBase, i8 0, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ %i.b, %bb.b ], [ 0, %bb.a ]
  store ptr null, ptr @memtraceOut, align 8, !tbaa !122
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define i32 @sqlite3PcacheTraceActivate(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pcacheBase, i64 56), align 8, !tbaa !124
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (i32, ...) @sqlite3_config(i32 noundef 19, ptr noundef nonnull @pcacheBase) #45 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (i32, ...) @sqlite3_config(i32 noundef 18, ptr noundef nonnull @ersaztPcacheMethods) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ 0, %bb.a ]
  store ptr %0, ptr @pcachetraceOut, align 8, !tbaa !122
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3PcacheTraceDeactivate() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pcacheBase, i64 56), align 8, !tbaa !124
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (i32, ...) @sqlite3_config(i32 noundef 18, ptr noundef nonnull @pcacheBase) #45 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @pcacheBase, i8 0, i64 104, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ %i.b, %bb.b ], [ 0, %bb.a ]
  store ptr null, ptr @pcachetraceOut, align 8, !tbaa !122
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_shathree_init(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef nonnull @sha3Func, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.thread19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 2099201, ptr noundef null, ptr noundef nonnull @sha3Func, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread19

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef null, ptr noundef nonnull @sha3AggStep, ptr noundef nonnull @sha3AggFinal) #45 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread19

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 2099201, ptr noundef null, ptr noundef null, ptr noundef nonnull @sha3AggStep, ptr noundef nonnull @sha3AggFinal) #45 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %.thread19

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 524289, ptr noundef null, ptr noundef nonnull @sha3QueryFunc, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %.thread19

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 524289, ptr noundef null, ptr noundef nonnull @sha3QueryFunc, ptr noundef null, ptr noundef null) #45
  br label %.thread19

.thread19:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.e
  %.4 = phi i32 [ %i.k, %bb.f ], [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.4
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @sha3Func(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %3 = alloca %struct.SHA3Context, align 8        ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.a = load ptr, ptr %2, align 8, !tbaa !126
  %i.b = tail call i32 @sqlite3_value_type(ptr noundef %i.a) #45 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !126
  %i.d = tail call i32 @sqlite3_value_bytes(ptr noundef %i.c) #45 ; 8 uses
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.h = tail call i32 @sqlite3_value_int(ptr noundef %i.g) #45 ; 6 uses
  %i.i = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 27)
  switch i32 %i.i, label %bb.c [
    i32 16, label %bb.d
    i32 12, label %bb.d
    i32 8, label %bb.d
    i32 7, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.292, i32 noundef -1) #45
  br label %bb.u

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ 256, %bb.a ], [ %i.h, %bb.b ], [ %i.h, %bb.b ], [ %i.h, %bb.b ] ; 4 uses
  %i.j = icmp eq i32 %i.b, 5
  br i1 %i.j, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1616) %3, i8 0, i64 1616, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1612
  store i32 %.0, ptr %i.k, align 4, !tbaa !128
  %i.l = add i32 %.0, -128
  %or.cond.i = icmp ult i32 %i.l, 385
  br i1 %or.cond.i, label %bb.f, label %SHA3Init.exit

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i32 %.0, 1
  %i.n = add nuw nsw i32 %i.m, 62
  %i.o = and i32 %i.n, 4032
  %i.p = sub nuw nsw i32 1600, %i.o
  %i.q = lshr exact i32 %i.p, 3
  br label %SHA3Init.exit

SHA3Init.exit:                                    ; preds = %bb.e, %bb.f
  %.sink.i = phi i32 [ %i.q, %bb.f ], [ 136, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1600 ; 5 uses
  store i32 %.sink.i, ptr %i.r, align 8, !tbaa !129
  %i.s = icmp eq i32 %i.b, 4
  %i.t = load ptr, ptr %2, align 8, !tbaa !126    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.n

bb.g:                                             ; preds = %SHA3Init.exit
  %i.u = tail call ptr @sqlite3_value_blob(ptr noundef %i.t) #45 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %SHA3Update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1604 ; 6 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = and i64 %i.x, 7
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp ugt i32 %i.d, 7
  %or.cond33.i = and i1 %i.aa, %i.z
  br i1 %or.cond33.i, label %.lr.ph.i.a, label %.loopexit29.i

.lr.ph.i.a:                                       ; preds = %bb.h, %bb.j
  %4 = phi i32 [ %i.al, %bb.j ], [ 0, %bb.h ]
  %.030.i = phi i32 [ %6, %bb.j ], [ 0, %bb.h ]   ; 2 uses
  %5 = zext i32 %.030.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %5
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !130
  %i.ad = lshr i32 %4, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !52
  %i.ah = xor i64 %i.ag, %i.ac
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !52
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !131
  %i.aj = add i32 %i.ai, 8                        ; 3 uses
  store i32 %i.aj, ptr %i.w, align 4, !tbaa !131
  %i.ak = load i32, ptr %i.r, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.a
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.w, align 4, !tbaa !131
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.a
  %i.al = phi i32 [ %i.aj, %.lr.ph.i.a ], [ 0, %bb.i ] ; 2 uses
  %6 = add i32 %.030.i, 8                         ; 3 uses
  %7 = or disjoint i32 %6, 7
  %i.am = icmp ult i32 %7, %i.d
  br i1 %i.am, label %.lr.ph.i.a, label %.loopexit29.i, !llvm.loop !8

.loopexit29.i:                                    ; preds = %bb.j, %bb.h
  %i.an = phi i32 [ 0, %bb.h ], [ %i.al, %bb.j ]
  %.1.i = phi i32 [ 0, %bb.h ], [ %6, %bb.j ]     ; 2 uses
  %i.ao = icmp ult i32 %.1.i, %i.d
  br i1 %i.ao, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.ap = zext i32 %.1.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph32.i
  %i.aq = phi i32 [ %i.an, %.lr.ph32.i ], [ %i.bb, %bb.m ]
  %indvars.iv.i.a = phi i64 [ %i.ap, %.lr.ph32.i ], [ %indvars.iv.next.i.a, %bb.m ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i.a
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = zext i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !52
  %i.aw = xor i8 %i.av, %i.as
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !52
  %i.ax = load i32, ptr %i.w, align 4, !tbaa !131
  %i.ay = add i32 %i.ax, 1                        ; 3 uses
  store i32 %i.ay, ptr %i.w, align 4, !tbaa !131
  %i.az = load i32, ptr %i.r, align 8, !tbaa !129
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.w, align 4, !tbaa !131
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = phi i32 [ %i.ay, %bb.k ], [ 0, %bb.l ]
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %lftr.wideiv45 = trunc i64 %indvars.iv.next.i.a to i32
  %exitcond46 = icmp eq i32 %i.d, %lftr.wideiv45
  br i1 %exitcond46, label %SHA3Update.exit, label %bb.k, !llvm.loop !9

bb.n:                                             ; preds = %SHA3Init.exit
  %i.bc = tail call ptr @sqlite3_value_text(ptr noundef %i.t) #45 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %SHA3Update.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1604 ; 6 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = and i64 %i.bf, 7
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = icmp ugt i32 %i.d, 7
  %or.cond33.i25 = and i1 %i.bi, %i.bh
  br i1 %or.cond33.i25, label %.lr.ph.i33.a, label %.loopexit29.i26

.lr.ph.i33.a:                                     ; preds = %bb.o, %bb.q
  %8 = phi i32 [ %i.bt, %bb.q ], [ 0, %bb.o ]
  %.030.i34 = phi i32 [ %10, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %9 = zext i32 %.030.i34 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %9
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !130
  %i.bl = lshr i32 %8, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !52
  %i.bp = xor i64 %i.bo, %i.bk
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !52
  %i.bq = load i32, ptr %i.be, align 4, !tbaa !131
  %i.br = add i32 %i.bq, 8                        ; 3 uses
  store i32 %i.br, ptr %i.be, align 4, !tbaa !131
  %i.bs = load i32, ptr %i.r, align 8, !tbaa !129
  %.not.i35 = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i33.a
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.be, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i33.a
  %i.bt = phi i32 [ %i.br, %.lr.ph.i33.a ], [ 0, %bb.p ] ; 2 uses
  %10 = add i32 %.030.i34, 8                      ; 3 uses
  %11 = or disjoint i32 %10, 7
  %i.bu = icmp ult i32 %11, %i.d
  br i1 %i.bu, label %.lr.ph.i33.a, label %.loopexit29.i26, !llvm.loop !8

.loopexit29.i26:                                  ; preds = %bb.q, %bb.o
  %i.bv = phi i32 [ 0, %bb.o ], [ %i.bt, %bb.q ]
  %.1.i27 = phi i32 [ 0, %bb.o ], [ %10, %bb.q ]  ; 2 uses
  %i.bw = icmp ult i32 %.1.i27, %i.d
  br i1 %i.bw, label %.lr.ph32.i28, label %SHA3Update.exit

.lr.ph32.i28:                                     ; preds = %.loopexit29.i26
  %i.bx = zext i32 %.1.i27 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph32.i28
  %i.by = phi i32 [ %i.bv, %.lr.ph32.i28 ], [ %i.cj, %bb.t ]
  %indvars.iv.i29 = phi i64 [ %i.bx, %.lr.ph32.i28 ], [ %indvars.iv.next.i30, %bb.t ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i29
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !52
  %i.cb = zext i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !52
  %i.ce = xor i8 %i.cd, %i.ca
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !52
  %i.cf = load i32, ptr %i.be, align 4, !tbaa !131
  %i.cg = add i32 %i.cf, 1                        ; 3 uses
  store i32 %i.cg, ptr %i.be, align 4, !tbaa !131
  %i.ch = load i32, ptr %i.r, align 8, !tbaa !129
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.be, align 4, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cj = phi i32 [ %i.cg, %bb.r ], [ 0, %bb.s ]
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i30 to i32
  %exitcond = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond, label %SHA3Update.exit, label %bb.r, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.t, %bb.m, %.loopexit29.i26, %bb.n, %.loopexit29.i, %bb.g
  %i.ck = call fastcc ptr @SHA3Final(ptr noundef %3)
  %i.cl = sdiv i32 %.0, 8
  call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.ck, i32 noundef %i.cl, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %SHA3Update.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sha3AggStep(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 1616) #45 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1600 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !129
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %1, 2
  br i1 %i.f, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1616) %i.a, i8 0, i64 1616, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1612
  store i32 256, ptr %i.g, align 4, !tbaa !128
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.j = tail call i32 @sqlite3_value_int(ptr noundef %i.i) #45 ; 4 uses
  %i.k = icmp ne i32 %i.j, 224
  %i.l = icmp ne i32 %i.j, 384
  %or.cond = and i1 %i.k, %i.l
  %i.m = icmp ne i32 %i.j, 512
  %or.cond3 = and i1 %i.m, %or.cond
  %spec.store.select = select i1 %or.cond3, i32 256, i32 %i.j ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1616) %i.a, i8 0, i64 1616, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1612
  store i32 %spec.store.select, ptr %i.n, align 4, !tbaa !128
  %i.o = add i32 %spec.store.select, -128
  %or.cond.i = icmp ult i32 %i.o, 385
  br i1 %or.cond.i, label %bb.e, label %SHA3Init.exit

bb.e:                                             ; preds = %.thread, %bb.d
  %.017 = phi i32 [ 256, %.thread ], [ %spec.store.select, %bb.d ]
  %i.p = shl nuw nsw i32 %.017, 1
  %i.q = add nuw nsw i32 %i.p, 62
  %i.r = and i32 %i.q, 4032
  %i.s = sub nuw nsw i32 1600, %i.r
  %i.t = lshr exact i32 %i.s, 3
  br label %SHA3Init.exit

SHA3Init.exit:                                    ; preds = %bb.d, %bb.e
  %.sink.i = phi i32 [ %i.t, %bb.e ], [ 136, %bb.d ]
  store i32 %.sink.i, ptr %i.c, align 8, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %SHA3Init.exit, %bb.b
  %i.u = load ptr, ptr %2, align 8, !tbaa !126
  tail call fastcc void @sha3UpdateFromValue(ptr noundef %i.a, ptr noundef %i.u)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sha3AggFinal(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 1616) #45 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1612 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @SHA3Final(ptr noundef %i.a)
  %i.f = load i32, ptr %i.c, align 4, !tbaa !128
  %i.g = lshr i32 %i.f, 3
  tail call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef %i.g, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sha3QueryFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %3 = alloca %struct.SHA3Context, align 8        ; 15 uses
  %i.c = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.d = load ptr, ptr %2, align 8, !tbaa !126
  %i.e = tail call ptr @sqlite3_value_text(ptr noundef %i.d) #45 ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.i = tail call i32 @sqlite3_value_int(ptr noundef %i.h) #45 ; 6 uses
  %i.j = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.i, i32 27)
  switch i32 %i.j, label %bb.c [
    i32 16, label %thread-pre-split
    i32 12, label %thread-pre-split
    i32 8, label %thread-pre-split
    i32 7, label %thread-pre-split
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.292, i32 noundef -1) #45
  br label %bb.r

thread-pre-split:                                 ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %.0 = phi i32 [ 256, %bb.a ], [ %i.i, %bb.b ], [ %i.i, %bb.b ], [ %i.i, %bb.b ], [ %i.i, %bb.b ] ; 4 uses
  %i.k = icmp eq ptr %i.e, null
  br i1 %i.k, label %bb.r, label %bb.d

bb.d:                                             ; preds = %thread-pre-split
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1616) %3, i8 0, i64 1616, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1612
  store i32 %.0, ptr %i.l, align 4, !tbaa !128
  %i.m = add i32 %.0, -128
  %or.cond.i = icmp ult i32 %i.m, 385
  br i1 %or.cond.i, label %bb.e, label %SHA3Init.exit

bb.e:                                             ; preds = %bb.d
  %i.n = shl nuw nsw i32 %.0, 1
  %i.o = add nuw nsw i32 %i.n, 62
  %i.p = and i32 %i.o, 4032
  %i.q = sub nuw nsw i32 1600, %i.p
  %i.r = lshr exact i32 %i.q, 3
  br label %SHA3Init.exit

SHA3Init.exit:                                    ; preds = %bb.d, %bb.e
  %.sink.i = phi i32 [ %i.r, %bb.e ], [ 136, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 1600 ; 4 uses
  store i32 %.sink.i, ptr %i.s, align 8, !tbaa !129
  %i.t = load i8, ptr %i.e, align 1, !tbaa !52
  %.not55 = icmp eq i8 %i.t, 0
  br i1 %.not55, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %SHA3Init.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1604 ; 11 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph56, %._crit_edge
  %i.v = phi ptr [ %i.e, %.lr.ph56 ], [ %i.cr, %._crit_edge ]
  %i.w = call i32 @sqlite3_prepare_v2(ptr noundef %i.c, ptr noundef nonnull %i.v, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #45
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.y = call ptr @sqlite3_errmsg(ptr noundef %i.c) #45
  %i.z = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.296, ptr noundef %i.x, ptr noundef %i.y) #45 ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ab = call i32 @sqlite3_finalize(ptr noundef %i.aa) #45 ; 0 uses
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef %i.z, i32 noundef -1) #45
  call void @sqlite3_free(ptr noundef %i.z) #45
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ad = call i32 @sqlite3_stmt_readonly(ptr noundef %i.ac) #45
  %.not37 = icmp eq i32 %i.ad, 0
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  br i1 %.not37, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = call ptr @sqlite3_sql(ptr noundef %i.ae) #45
  %i.ag = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.297, ptr noundef %i.af) #45 ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ai = call i32 @sqlite3_finalize(ptr noundef %i.ah) #45 ; 0 uses
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef %i.ag, i32 noundef -1) #45
  call void @sqlite3_free(ptr noundef %i.ag) #45
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.aj = call i32 @sqlite3_column_count(ptr noundef %i.ae) #45 ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.al = call ptr @sqlite3_sql(ptr noundef %i.ak) #45 ; 5 uses
  %.not38 = icmp eq ptr %i.al, null
  br i1 %.not38, label %SHA3Update.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #46
  %i.an = trunc i64 %i.am to i32                  ; 5 uses
  call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %3, ptr noundef nonnull @.str.298, i32 noundef %i.an)
  %i.ao = load i32, ptr %i.u, align 4, !tbaa !131 ; 3 uses
  %i.ap = and i32 %i.ao, 7
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = and i64 %i.ar, 7
  %i.at = icmp eq i64 %i.as, 0
  %or.cond.i39 = and i1 %i.at, %i.aq
  %i.au = icmp ugt i32 %i.an, 7
  %or.cond33.i = and i1 %i.au, %or.cond.i39
  br i1 %or.cond33.i, label %.lr.ph.i.a, label %.loopexit29.i

.lr.ph.i.a:                                       ; preds = %bb.k, %bb.m
  %4 = phi i32 [ %i.bf, %bb.m ], [ %i.ao, %bb.k ]
  %.030.i = phi i32 [ %6, %bb.m ], [ 0, %bb.k ]   ; 2 uses
  %5 = zext i32 %.030.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %5
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !130
  %i.ax = lshr i32 %4, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !52
  %i.bb = xor i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !52
  %i.bc = load i32, ptr %i.u, align 4, !tbaa !131
  %i.bd = add i32 %i.bc, 8                        ; 3 uses
  store i32 %i.bd, ptr %i.u, align 4, !tbaa !131
  %i.be = load i32, ptr %i.s, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.a
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.u, align 4, !tbaa !131
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.a
  %i.bf = phi i32 [ %i.bd, %.lr.ph.i.a ], [ 0, %bb.l ] ; 2 uses
  %6 = add i32 %.030.i, 8                         ; 3 uses
  %7 = or disjoint i32 %6, 7
  %i.bg = icmp ult i32 %7, %i.an
  br i1 %i.bg, label %.lr.ph.i.a, label %.loopexit29.i, !llvm.loop !8

.loopexit29.i:                                    ; preds = %bb.m, %bb.k
  %i.bh = phi i32 [ %i.ao, %bb.k ], [ %i.bf, %bb.m ]
  %.1.i = phi i32 [ 0, %bb.k ], [ %6, %bb.m ]     ; 2 uses
  %i.bi = icmp ult i32 %.1.i, %i.an
  br i1 %i.bi, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.bj = zext i32 %.1.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph32.i
  %i.bk = phi i32 [ %i.bh, %.lr.ph32.i ], [ %i.bv, %bb.p ]
  %indvars.iv.i.a = phi i64 [ %i.bj, %.lr.ph32.i ], [ %indvars.iv.next.i.a, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i.a
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !52
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.bq = xor i8 %i.bp, %i.bm
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !52
  %i.br = load i32, ptr %i.u, align 4, !tbaa !131
  %i.bs = add i32 %i.br, 1                        ; 3 uses
  store i32 %i.bs, ptr %i.u, align 4, !tbaa !131
  %i.bt = load i32, ptr %i.s, align 8, !tbaa !129
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.u, align 4, !tbaa !131
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bv = phi i32 [ %i.bs, %bb.n ], [ 0, %bb.o ]
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.a to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %i.an
  br i1 %exitcond, label %SHA3Update.exit, label %bb.n, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.p, %.loopexit29.i, %bb.j
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bx = call i32 @sqlite3_step(ptr noundef %i.bw) #45
  %i.by = icmp eq i32 %i.bx, 100
  br i1 %i.by, label %.lr.ph32.i44.lr.ph, label %._crit_edge

.lr.ph32.i44.lr.ph:                               ; preds = %SHA3Update.exit
  %i.bz = icmp sgt i32 %i.aj, 0
  br label %.lr.ph32.i44

.loopexit:                                        ; preds = %SHA3Update.exit52, %SHA3Update.exit52.preheader
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cb = call i32 @sqlite3_step(ptr noundef %i.ca) #45
  %i.cc = icmp eq i32 %i.cb, 100
  br i1 %i.cc, label %.lr.ph32.i44, label %._crit_edge, !llvm.loop !747

.lr.ph32.i44:                                     ; preds = %.lr.ph32.i44.lr.ph, %.loopexit
  %i.cd = load i32, ptr %i.u, align 4, !tbaa !131
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !52
  %i.ch = xor i8 %i.cg, 82
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !52
  %i.ci = load i32, ptr %i.u, align 4, !tbaa !131
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 %i.cj, ptr %i.u, align 4, !tbaa !131
  %i.ck = load i32, ptr %i.s, align 8, !tbaa !129
  %i.cl = icmp eq i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.q, label %SHA3Update.exit52.preheader

bb.q:                                             ; preds = %.lr.ph32.i44
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.u, align 4, !tbaa !131
  br label %SHA3Update.exit52.preheader

SHA3Update.exit52.preheader:                      ; preds = %bb.q, %.lr.ph32.i44
  br i1 %i.bz, label %SHA3Update.exit52, label %.loopexit

SHA3Update.exit52:                                ; preds = %SHA3Update.exit52.preheader, %SHA3Update.exit52
  %.03454 = phi i32 [ %i.co, %SHA3Update.exit52 ], [ 0, %SHA3Update.exit52.preheader ] ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cn = call ptr @sqlite3_column_value(ptr noundef %i.cm, i32 noundef %.03454) #45
  call fastcc void @sha3UpdateFromValue(ptr noundef %3, ptr noundef %i.cn)
  %i.co = add nuw nsw i32 %.03454, 1              ; 2 uses
  %exitcond60.not = icmp eq i32 %i.co, %i.aj
  br i1 %exitcond60.not, label %.loopexit, label %SHA3Update.exit52, !llvm.loop !748

._crit_edge:                                      ; preds = %.loopexit, %SHA3Update.exit
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cq = call i32 @sqlite3_finalize(ptr noundef %i.cp) #45 ; 0 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !52
  %.not = icmp eq i8 %i.cs, 0
  br i1 %.not, label %._crit_edge57, label %bb.f, !llvm.loop !749

._crit_edge57:                                    ; preds = %._crit_edge, %SHA3Init.exit
  %i.ct = call fastcc ptr @SHA3Final(ptr noundef %3)
  %i.cu = sdiv i32 %.0, 8
  call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.ct, i32 noundef %i.cu, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %._crit_edge57, %bb.i, %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_sha_init(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef nonnull @sha1Func, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef 2099201, ptr noundef nonnull @sqlite3_sha_init.one, ptr noundef nonnull @sha1Func, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 524289, ptr noundef null, ptr noundef nonnull @sha1QueryFunc, ptr noundef null, ptr noundef null) #45
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %.1 = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @sha1Func(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %3 = alloca %struct.SHA1Context, align 16       ; 12 uses
  %i.a = alloca [44 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.b = load ptr, ptr %2, align 8, !tbaa !126
  %i.c = tail call i32 @sqlite3_value_type(ptr noundef %i.b) #45 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !126
  %i.e = tail call i32 @sqlite3_value_bytes(ptr noundef %i.d) #45 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.f = icmp eq i32 %i.c, 5
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %3, align 16, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1009589776, ptr %i.g, align 16, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.i, align 8, !tbaa !53
  %i.j = icmp eq i32 %i.c, 4
  %i.k = load ptr, ptr %2, align 8, !tbaa !126    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @sqlite3_value_blob(ptr noundef %i.k) #45
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call ptr @sqlite3_value_text(ptr noundef %i.k) #45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ]  ; 4 uses
  %i.n = icmp eq ptr %.0, null
  br i1 %i.n, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = shl i32 %i.e, 3
  store i32 %i.o, ptr %i.h, align 4, !tbaa !53
  %i.p = icmp ugt i32 %i.e, 63
  br i1 %i.p, label %bb.g, label %hash_step.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull readonly align 1 dereferenceable(64) %.0, i64 64, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.q)
  %i.r = icmp ugt i32 %i.e, 127
  br i1 %i.r, label %.lr.ph.i, label %hash_step.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.02627.i = phi i32 [ %i.u, %.lr.ph.i ], [ 64, %bb.g ] ; 3 uses
  %i.s = zext i32 %.02627.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 %i.s
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.t)
  %i.u = add i32 %.02627.i, 64                    ; 2 uses
  %i.v = add i32 %.02627.i, 127
  %i.w = icmp ult i32 %i.v, %i.e
  br i1 %i.w, label %.lr.ph.i, label %hash_step.exit, !llvm.loop !10

hash_step.exit:                                   ; preds = %.lr.ph.i, %bb.f, %bb.g
  %.1.i = phi i32 [ 0, %bb.f ], [ 64, %bb.g ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.y = zext i32 %.1.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 %i.y
  %i.aa = sub i32 %i.e, %.1.i
  %i.ab = zext i32 %i.aa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr nonnull readonly align 1 %i.z, i64 %i.ab, i1 false)
  %i.ac = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %hash_step.exit
  call fastcc void @hash_finish(ptr noundef %3, ptr noundef %i.a, i32 noundef 1)
  call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 20, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.j

bb.i:                                             ; preds = %hash_step.exit
  call fastcc void @hash_finish(ptr noundef %3, ptr noundef %i.a, i32 noundef 0)
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 40, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sha1QueryFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 19 uses
  %3 = alloca %struct.SHA1Context, align 16       ; 23 uses
  %i.c = alloca [44 x i8], align 16               ; 4 uses
  %i.d = alloca [9 x i8], align 1                 ; 13 uses
  %i.e = alloca [9 x i8], align 1                 ; 13 uses
  %i.f = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.g = load ptr, ptr %2, align 8, !tbaa !126
  %i.h = tail call ptr @sqlite3_value_text(ptr noundef %i.g) #45 ; 4 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.al, label %bb.b
end_hunk_0
begin_hunk_1_@KeccakF1600Step:bb.a
  %i.wp = and i64 %i.wl, %i.wo
  %i.wq = xor i64 %i.wh, %i.wp                    ; 2 uses
  %i.wr = xor i64 %i.wl, -1
  %i.ws = and i64 %i.wn, %i.wr
  %i.wt = xor i64 %i.ws, %i.wj                    ; 2 uses
  %i.wu = xor i64 %i.wn, -1
  %i.wv = and i64 %i.wf, %i.wu
  %i.ww = xor i64 %i.wv, %i.wl                    ; 2 uses
  %i.wx = xor i64 %i.wf, -1
  %i.wy = and i64 %i.wh, %i.wx
  %i.wz = xor i64 %i.wn, %i.wy                    ; 2 uses
  %i.xa = xor i64 %i.wh, -1
  %i.xb = and i64 %i.wj, %i.xa
  %i.xc = xor i64 %i.xb, %i.wf                    ; 2 uses
  %i.xd = xor i64 %i.tv, %i.pq                    ; 2 uses
  %i.xe = tail call i64 @llvm.fshl.i64(i64 %i.xd, i64 %i.xd, i64 36) ; 3 uses
  %i.xf = xor i64 %i.tx, %i.qs                    ; 2 uses
  %i.xg = tail call i64 @llvm.fshl.i64(i64 %i.xf, i64 %i.xf, i64 10) ; 3 uses
  %i.xh = xor i64 %i.tz, %i.ru                    ; 2 uses
  %i.xi = tail call i64 @llvm.fshl.i64(i64 %i.xh, i64 %i.xh, i64 15) ; 3 uses
  %i.xj = xor i64 %i.ub, %i.sw                    ; 2 uses
  %i.xk = tail call i64 @llvm.fshl.i64(i64 %i.xj, i64 %i.xj, i64 56) ; 3 uses
  %i.xl = xor i64 %i.ud, %i.pd                    ; 2 uses
  %i.xm = tail call i64 @llvm.fshl.i64(i64 %i.xl, i64 %i.xl, i64 27) ; 3 uses
  %i.xn = xor i64 %i.xe, -1
  %i.xo = and i64 %i.xg, %i.xn
  %i.xp = xor i64 %i.xm, %i.xo                    ; 2 uses
  %i.xq = xor i64 %i.xg, -1
  %i.xr = and i64 %i.xi, %i.xq
  %i.xs = xor i64 %i.xr, %i.xe                    ; 2 uses
  %i.xt = xor i64 %i.xi, -1
  %i.xu = and i64 %i.xk, %i.xt
  %i.xv = xor i64 %i.xg, %i.xu                    ; 2 uses
  %i.xw = xor i64 %i.xk, -1
  %i.xx = and i64 %i.xm, %i.xw
  %i.xy = xor i64 %i.xx, %i.xi                    ; 2 uses
  %i.xz = xor i64 %i.xm, -1
  %i.ya = and i64 %i.xe, %i.xz
  %i.yb = xor i64 %i.ya, %i.xk                    ; 2 uses
  %i.yc = xor i64 %i.tv, %i.ro                    ; 2 uses
  %i.yd = tail call i64 @llvm.fshl.i64(i64 %i.yc, i64 %i.yc, i64 41) ; 3 uses
  %i.ye = xor i64 %i.tx, %i.sq                    ; 2 uses
  %i.yf = tail call i64 @llvm.fshl.i64(i64 %i.ye, i64 %i.ye, i64 2) ; 3 uses
  %i.yg = xor i64 %i.tz, %i.ox                    ; 2 uses
  %i.yh = tail call i64 @llvm.fshl.i64(i64 %i.yg, i64 %i.yg, i64 62) ; 3 uses
  %i.yi = xor i64 %i.ub, %i.pz                    ; 2 uses
  %i.yj = tail call i64 @llvm.fshl.i64(i64 %i.yi, i64 %i.yi, i64 55) ; 3 uses
  %i.yk = xor i64 %i.ud, %i.rb                    ; 2 uses
  %i.yl = tail call i64 @llvm.fshl.i64(i64 %i.yk, i64 %i.yk, i64 39) ; 3 uses
  %i.ym = xor i64 %i.yj, -1
  %i.yn = and i64 %i.yl, %i.ym
  %i.yo = xor i64 %i.yn, %i.yh                    ; 2 uses
  %i.yp = xor i64 %i.yl, -1
  %i.yq = and i64 %i.yd, %i.yp
  %i.yr = xor i64 %i.yq, %i.yj                    ; 2 uses
  %i.ys = xor i64 %i.yd, -1
  %i.yt = and i64 %i.yf, %i.ys
  %i.yu = xor i64 %i.yl, %i.yt                    ; 2 uses
  %i.yv = xor i64 %i.yf, -1
  %i.yw = and i64 %i.yh, %i.yv
  %i.yx = xor i64 %i.yw, %i.yd                    ; 2 uses
  %i.yy = xor i64 %i.yh, -1
  %i.yz = and i64 %i.yj, %i.yy
  %i.za = xor i64 %i.yf, %i.yz                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.zb = icmp samesign ult i64 %indvars.iv, 20
  br i1 %i.zb, label %bb.b, label %bb.c, !llvm.loop !1071

bb.c:                                             ; preds = %bb.b
  store i64 %i.us, ptr %0, align 8, !tbaa !52
  store i64 %i.vr, ptr %i.a, align 8, !tbaa !52
  store i64 %i.wq, ptr %i.b, align 8, !tbaa !52
  store i64 %i.xp, ptr %i.c, align 8, !tbaa !52
  store i64 %i.yo, ptr %i.d, align 8, !tbaa !52
  store i64 %i.uv, ptr %i.e, align 8, !tbaa !52
  store i64 %i.vu, ptr %i.f, align 8, !tbaa !52
  store i64 %i.wt, ptr %i.g, align 8, !tbaa !52
  store i64 %i.xs, ptr %i.h, align 8, !tbaa !52
  store i64 %i.yr, ptr %i.i, align 8, !tbaa !52
  store i64 %i.uy, ptr %i.j, align 8, !tbaa !52
  store i64 %i.vx, ptr %i.k, align 8, !tbaa !52
  store i64 %i.ww, ptr %i.l, align 8, !tbaa !52
  store i64 %i.xv, ptr %i.m, align 8, !tbaa !52
  store i64 %i.yu, ptr %i.n, align 8, !tbaa !52
  store i64 %i.vb, ptr %i.o, align 8, !tbaa !52
  store i64 %i.wa, ptr %i.p, align 8, !tbaa !52
  store i64 %i.wz, ptr %i.q, align 8, !tbaa !52
  store i64 %i.xy, ptr %i.r, align 8, !tbaa !52
  store i64 %i.yx, ptr %i.s, align 8, !tbaa !52
  store i64 %i.ve, ptr %i.t, align 8, !tbaa !52
  store i64 %i.wd, ptr %i.u, align 8, !tbaa !52
  store i64 %i.xc, ptr %i.v, align 8, !tbaa !52
  store i64 %i.yb, ptr %i.w, align 8, !tbaa !52
  store i64 %i.za, ptr %i.x, align 8, !tbaa !52
  ret void
}

declare ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @sha3UpdateFromValue(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 14 uses
  %i.b = alloca [9 x i8], align 1                 ; 14 uses
  %i.c = tail call i32 @sqlite3_value_type(ptr noundef %1) #45
  switch i32 %i.c, label %SHA3Update.exit [
    i32 5, label %.lr.ph32.i
    i32 1, label %bb.c
    i32 2, label %bb.h
    i32 3, label %bb.m
    i32 4, label %bb.u
  ]

.lr.ph32.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = xor i8 %i.i, 78
  store i8 %i.j, ptr %i.h, align 1, !tbaa !52
  %i.k = load i32, ptr %i.d, align 4, !tbaa !131
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !131
  %i.m = load i32, ptr %i.f, align 8, !tbaa !129
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %SHA3Update.exit

bb.b:                                             ; preds = %.lr.ph32.i
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.d, align 4, !tbaa !131
  br label %SHA3Update.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.o = tail call i64 @sqlite3_value_int64(ptr noundef %1) #45 ; 8 uses
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.p, ptr %i.q, align 1, !tbaa !52
  %i.r = lshr i64 %i.o, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.s, ptr %i.t, align 1, !tbaa !52
  %i.u = lshr i64 %i.o, 16
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.v, ptr %i.w, align 1, !tbaa !52
  %i.x = lshr i64 %i.o, 24
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.y, ptr %i.z, align 1, !tbaa !52
  %i.aa = lshr i64 %i.o, 32
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !52
  %i.ad = lshr i64 %i.o, 40
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !52
  %i.ag = lshr i64 %i.o, 48
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !52
  %i.aj = lshr i64 %i.o, 56
  %i.ak = trunc nuw i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !52
  store i8 73, ptr %i.a, align 1, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !131 ; 3 uses
  %i.ao = and i32 %i.an, 7
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = ptrtoint ptr %i.a to i64
  %i.ar = and i64 %i.aq, 7
  %i.as = icmp eq i64 %i.ar, 0
  %or.cond.i33 = and i1 %i.as, %i.ap
  br i1 %or.cond.i33, label %.lr.ph.i, label %.lr.ph32.i34

.lr.ph.i:                                         ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.au = load i64, ptr %i.a, align 8, !tbaa !130
  %i.av = lshr exact i32 %i.an, 3
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !52
  %i.az = xor i64 %i.ay, %i.au
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !52
  %i.ba = load i32, ptr %i.am, align 4, !tbaa !131
  %i.bb = add i32 %i.ba, 8                        ; 3 uses
  store i32 %i.bb, ptr %i.am, align 4, !tbaa !131
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.bb, %i.bc
  br i1 %.not.i, label %.lr.ph32.i34, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.am, align 4, !tbaa !131
  br label %.lr.ph32.i34

.lr.ph32.i34:                                     ; preds = %.lr.ph.i, %bb.d, %bb.c
  %.1.i78 = phi i64 [ 0, %bb.c ], [ 8, %bb.d ], [ 8, %.lr.ph.i ]
  %2 = phi i32 [ %i.an, %bb.c ], [ 0, %bb.d ], [ %i.bb, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph32.i34
  %i.be = phi i32 [ %2, %.lr.ph32.i34 ], [ %i.bp, %bb.g ]
  %indvars.iv.i35 = phi i64 [ %.1.i78, %.lr.ph32.i34 ], [ %indvars.iv.next.i36, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i35
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !52
  %i.bh = zext i32 %i.be to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !52
  %i.bk = xor i8 %i.bj, %i.bg
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !52
  %i.bl = load i32, ptr %i.am, align 4, !tbaa !131
  %i.bm = add i32 %i.bl, 1                        ; 3 uses
  store i32 %i.bm, ptr %i.am, align 4, !tbaa !131
  %i.bn = load i32, ptr %i.bd, align 8, !tbaa !129
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.am, align 4, !tbaa !131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bp = phi i32 [ %i.bm, %bb.e ], [ 0, %bb.f ]
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %i.bq = and i64 %indvars.iv.next.i36, 4294967295
  %exitcond.not.i38 = icmp eq i64 %i.bq, 9
  br i1 %exitcond.not.i38, label %SHA3Update.exit39, label %bb.e, !llvm.loop !9

SHA3Update.exit39:                                ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %SHA3Update.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.br = tail call double @sqlite3_value_double(ptr noundef %1) #45
  %i.bs = bitcast double %i.br to i64             ; 8 uses
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !52
  %i.bv = lshr i64 %i.bs, 8
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !52
  %i.by = lshr i64 %i.bs, 16
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !52
  %i.cb = lshr i64 %i.bs, 24
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !52
  %i.ce = lshr i64 %i.bs, 32
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !52
  %i.ch = lshr i64 %i.bs, 40
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !52
  %i.ck = lshr i64 %i.bs, 48
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !52
  %i.cn = lshr i64 %i.bs, 56
  %i.co = trunc nuw i64 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !52
  store i8 70, ptr %i.b, align 1, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !131 ; 3 uses
  %i.cs = and i32 %i.cr, 7
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = ptrtoint ptr %i.b to i64
  %i.cv = and i64 %i.cu, 7
  %i.cw = icmp eq i64 %i.cv, 0
  %or.cond.i40 = and i1 %i.cw, %i.ct
  br i1 %or.cond.i40, label %.lr.ph.i48, label %.lr.ph32.i43

.lr.ph.i48:                                       ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !130
  %i.cz = lshr exact i32 %i.cr, 3
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !52
  %i.dd = xor i64 %i.dc, %i.cy
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !52
  %i.de = load i32, ptr %i.cq, align 4, !tbaa !131
  %i.df = add i32 %i.de, 8                        ; 3 uses
  store i32 %i.df, ptr %i.cq, align 4, !tbaa !131
  %i.dg = load i32, ptr %i.cx, align 8, !tbaa !129
  %.not.i50 = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i50, label %.lr.ph32.i43, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i48
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.cq, align 4, !tbaa !131
  br label %.lr.ph32.i43

.lr.ph32.i43:                                     ; preds = %.lr.ph.i48, %bb.i, %bb.h
  %.1.i4280 = phi i64 [ 0, %bb.h ], [ 8, %bb.i ], [ 8, %.lr.ph.i48 ]
  %3 = phi i32 [ %i.cr, %bb.h ], [ 0, %bb.i ], [ %i.df, %.lr.ph.i48 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph32.i43
  %i.di = phi i32 [ %3, %.lr.ph32.i43 ], [ %i.dt, %bb.l ]
  %indvars.iv.i44 = phi i64 [ %.1.i4280, %.lr.ph32.i43 ], [ %indvars.iv.next.i45, %bb.l ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i44
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !52
  %i.dl = zext i32 %i.di to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !52
  %i.do = xor i8 %i.dn, %i.dk
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !52
  %i.dp = load i32, ptr %i.cq, align 4, !tbaa !131
  %i.dq = add i32 %i.dp, 1                        ; 3 uses
  store i32 %i.dq, ptr %i.cq, align 4, !tbaa !131
  %i.dr = load i32, ptr %i.dh, align 8, !tbaa !129
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.cq, align 4, !tbaa !131
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dt = phi i32 [ %i.dq, %bb.j ], [ 0, %bb.k ]
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %i.du = and i64 %indvars.iv.next.i45, 4294967295
  %exitcond.not.i47 = icmp eq i64 %i.du, 9
  br i1 %exitcond.not.i47, label %SHA3Update.exit51, label %bb.j, !llvm.loop !9

SHA3Update.exit51:                                ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %SHA3Update.exit

bb.m:                                             ; preds = %bb.a
  %i.dv = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.dw = tail call ptr @sqlite3_value_text(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.294, i32 noundef %i.dv)
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %SHA3Update.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !131 ; 3 uses
  %i.ea = and i32 %i.dz, 7
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = ptrtoint ptr %i.dw to i64
  %i.ed = and i64 %i.ec, 7
  %i.ee = icmp eq i64 %i.ed, 0
  %or.cond.i52 = and i1 %i.ee, %i.eb
  %i.ef = icmp ugt i32 %i.dv, 7
  %or.cond33.i = and i1 %i.ef, %or.cond.i52
  br i1 %or.cond33.i, label %.lr.ph.i60, label %.loopexit29.i53

.lr.ph.i60:                                       ; preds = %bb.n
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i60
  %4 = phi i32 [ %i.dz, %.lr.ph.i60 ], [ %i.er, %bb.q ]
  %.030.i61 = phi i32 [ 0, %.lr.ph.i60 ], [ %6, %bb.q ] ; 2 uses
  %5 = zext i32 %.030.i61 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 %5
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !130
  %i.ej = lshr i32 %4, 3
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ek ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !52
  %i.en = xor i64 %i.em, %i.ei
  store i64 %i.en, ptr %i.el, align 8, !tbaa !52
  %i.eo = load i32, ptr %i.dy, align 4, !tbaa !131
  %i.ep = add i32 %i.eo, 8                        ; 3 uses
  store i32 %i.ep, ptr %i.dy, align 4, !tbaa !131
  %i.eq = load i32, ptr %i.eg, align 8, !tbaa !129
  %.not.i62 = icmp ult i32 %i.ep, %i.eq
  br i1 %.not.i62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.dy, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.er = phi i32 [ %i.ep, %bb.o ], [ 0, %bb.p ]  ; 2 uses
  %6 = add i32 %.030.i61, 8                       ; 3 uses
  %7 = or disjoint i32 %6, 7
  %i.es = icmp ult i32 %7, %i.dv
  br i1 %i.es, label %bb.o, label %.loopexit29.i53, !llvm.loop !8

.loopexit29.i53:                                  ; preds = %bb.q, %bb.n
  %i.et = phi i32 [ %i.dz, %bb.n ], [ %i.er, %bb.q ]
  %.1.i54 = phi i32 [ 0, %bb.n ], [ %6, %bb.q ]   ; 2 uses
  %i.eu = icmp ult i32 %.1.i54, %i.dv
  br i1 %i.eu, label %.lr.ph32.i55, label %SHA3Update.exit

.lr.ph32.i55:                                     ; preds = %.loopexit29.i53
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ew = zext i32 %.1.i54 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph32.i55
  %i.ex = phi i32 [ %i.et, %.lr.ph32.i55 ], [ %i.fi, %bb.t ]
  %indvars.iv.i56 = phi i64 [ %i.ew, %.lr.ph32.i55 ], [ %indvars.iv.next.i57, %bb.t ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.i56
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !52
  %i.fa = zext i32 %i.ex to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fa ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !52
  %i.fd = xor i8 %i.fc, %i.ez
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !52
  %i.fe = load i32, ptr %i.dy, align 4, !tbaa !131
  %i.ff = add i32 %i.fe, 1                        ; 3 uses
  store i32 %i.ff, ptr %i.dy, align 4, !tbaa !131
  %i.fg = load i32, ptr %i.ev, align 8, !tbaa !129
  %i.fh = icmp eq i32 %i.ff, %i.fg
  br i1 %i.fh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.dy, align 4, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fi = phi i32 [ %i.ff, %bb.r ], [ 0, %bb.s ]
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %lftr.wideiv99 = trunc i64 %indvars.iv.next.i57 to i32
  %exitcond100 = icmp eq i32 %i.dv, %lftr.wideiv99
  br i1 %exitcond100, label %SHA3Update.exit, label %bb.r, !llvm.loop !9

bb.u:                                             ; preds = %bb.a
  %i.fj = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.fk = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.295, i32 noundef %i.fj)
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %SHA3Update.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !131 ; 3 uses
  %i.fo = and i32 %i.fn, 7
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = ptrtoint ptr %i.fk to i64
  %i.fr = and i64 %i.fq, 7
  %i.fs = icmp eq i64 %i.fr, 0
  %or.cond.i64 = and i1 %i.fs, %i.fp
  %i.ft = icmp ugt i32 %i.fj, 7
  %or.cond33.i65 = and i1 %i.ft, %or.cond.i64
  br i1 %or.cond33.i65, label %.lr.ph.i73, label %.loopexit29.i66

.lr.ph.i73:                                       ; preds = %bb.v
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i73
  %8 = phi i32 [ %i.fn, %.lr.ph.i73 ], [ %i.gf, %bb.y ]
  %.030.i74 = phi i32 [ 0, %.lr.ph.i73 ], [ %10, %bb.y ] ; 2 uses
  %9 = zext i32 %.030.i74 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 %9
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !130
  %i.fx = lshr i32 %8, 3
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fy ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !52
  %i.gb = xor i64 %i.ga, %i.fw
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !52
  %i.gc = load i32, ptr %i.fm, align 4, !tbaa !131
  %i.gd = add i32 %i.gc, 8                        ; 3 uses
  store i32 %i.gd, ptr %i.fm, align 4, !tbaa !131
  %i.ge = load i32, ptr %i.fu, align 8, !tbaa !129
  %.not.i75 = icmp ult i32 %i.gd, %i.ge
  br i1 %.not.i75, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fm, align 4, !tbaa !131
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gf = phi i32 [ %i.gd, %bb.w ], [ 0, %bb.x ]  ; 2 uses
  %10 = add i32 %.030.i74, 8                      ; 3 uses
  %11 = or disjoint i32 %10, 7
  %i.gg = icmp ult i32 %11, %i.fj
  br i1 %i.gg, label %bb.w, label %.loopexit29.i66, !llvm.loop !8

.loopexit29.i66:                                  ; preds = %bb.y, %bb.v
  %i.gh = phi i32 [ %i.fn, %bb.v ], [ %i.gf, %bb.y ]
  %.1.i67 = phi i32 [ 0, %bb.v ], [ %10, %bb.y ]  ; 2 uses
  %i.gi = icmp ult i32 %.1.i67, %i.fj
  br i1 %i.gi, label %.lr.ph32.i68, label %SHA3Update.exit

.lr.ph32.i68:                                     ; preds = %.loopexit29.i66
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.gk = zext i32 %.1.i67 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph32.i68
  %i.gl = phi i32 [ %i.gh, %.lr.ph32.i68 ], [ %i.gw, %bb.ab ]
  %indvars.iv.i69 = phi i64 [ %i.gk, %.lr.ph32.i68 ], [ %indvars.iv.next.i70, %bb.ab ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.i69
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !52
  %i.go = zext i32 %i.gl to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !52
  %i.gr = xor i8 %i.gq, %i.gn
  store i8 %i.gr, ptr %i.gp, align 1, !tbaa !52
  %i.gs = load i32, ptr %i.fm, align 4, !tbaa !131
  %i.gt = add i32 %i.gs, 1                        ; 3 uses
  store i32 %i.gt, ptr %i.fm, align 4, !tbaa !131
  %i.gu = load i32, ptr %i.gj, align 8, !tbaa !129
  %i.gv = icmp eq i32 %i.gt, %i.gu
  br i1 %i.gv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fm, align 4, !tbaa !131
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gw = phi i32 [ %i.gt, %bb.z ], [ 0, %bb.aa ]
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i70 to i32
  %exitcond = icmp eq i32 %i.fj, %lftr.wideiv
  br i1 %exitcond, label %SHA3Update.exit, label %bb.z, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.ab, %bb.t, %.lr.ph32.i, %bb.b, %.loopexit29.i66, %bb.u, %.loopexit29.i53, %bb.m, %SHA3Update.exit51, %SHA3Update.exit39, %bb.a
  ret void
}

declare i64 @sqlite3_value_int64(ptr noundef) local_unnamed_addr #5

declare double @sqlite3_value_double(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @sha3_step_vformat(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call ptr @sqlite3_vsnprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %2) #45 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #46 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !131  ; 3 uses
  %i.g = and i32 %i.f, 7
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ugt i32 %i.d, 7
  %or.cond33.i = and i1 %i.i, %i.h
  br i1 %or.cond33.i, label %.lr.ph.i, label %.loopexit29.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.k = and i64 %i.c, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %3 = phi i32 [ %i.v, %bb.d ], [ %i.f, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !130
  %i.n = lshr i32 %3, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52
  %i.r = xor i64 %i.q, %i.m
  store i64 %i.r, ptr %i.p, align 8, !tbaa !52
  %i.s = load i32, ptr %i.e, align 4, !tbaa !131
  %i.t = add i32 %i.s, 8                          ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !131
  %i.u = load i32, ptr %i.j, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.t, %i.u
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i32 [ %i.t, %bb.b ], [ 0, %bb.c ]    ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 8   ; 3 uses
  %i.w = or disjoint i64 %indvars.iv.next, 7
  %i.x = icmp ult i64 %i.w, %i.k
  br i1 %i.x, label %bb.b, label %.loopexit29.i.loopexit, !llvm.loop !8

.loopexit29.i.loopexit:                           ; preds = %bb.d
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit29.i.loopexit, %bb.a
  %i.z = phi i32 [ %i.f, %bb.a ], [ %i.v, %.loopexit29.i.loopexit ]
  %.1.i = phi i32 [ 0, %bb.a ], [ %i.y, %.loopexit29.i.loopexit ] ; 2 uses
  %i.aa = icmp ult i32 %.1.i, %i.d
  br i1 %i.aa, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ac = zext i32 %.1.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph32.i
  %i.ad = phi i32 [ %i.z, %.lr.ph32.i ], [ %i.ao, %bb.g ]
  %indvars.iv.i.a = phi i64 [ %i.ac, %.lr.ph32.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.a
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !52
  %i.aj = xor i8 %i.ai, %i.af
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !52
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !131
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.e, align 4, !tbaa !131
  %i.am = load i32, ptr %i.ab, align 8, !tbaa !129
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi i32 [ %i.al, %bb.e ], [ 0, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.d, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %SHA3Update.exit, label %bb.e, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.g, %.loopexit29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

declare ptr @sqlite3_vsnprintf(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_context_db_handle(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_stmt_readonly(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_user_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @hash_finish(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53   ; 5 uses
  %i.d = lshr i32 %i.c, 24
  %.sroa.043.0.insert.ext = zext nneg i32 %i.d to i64
  %i.e = load i32, ptr %i.a, align 4, !tbaa !53   ; 4 uses
  %i.f = add i32 %i.e, 8                          ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !53
  %i.g = icmp ugt i32 %i.e, -9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = add i32 %i.c, 1
  store i32 %i.i, ptr %i.h, align 4, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = lshr i32 %i.e, 3
  %i.k = and i32 %i.j, 63                         ; 2 uses
  %i.l = icmp eq i32 %i.k, 63
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 -128, ptr %i.n, align 1
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !53
  br label %hash_step.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  br label %hash_step.exit

hash_step.exit:                                   ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %i.f, %bb.e ], [ %.pre, %bb.d ] ; 3 uses
  %.1.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]      ; 2 uses
  %.0.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i
  %i.s = zext nneg i32 %.1.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr @.str.300, i64 %i.s
  %i.u = xor i32 %.1.i, 1
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.t, i64 %i.v, i1 false)
  %i.w = and i32 %i.p, 504
  %.not35 = icmp eq i32 %i.w, 448
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hash_step.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 91
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %hash_step.exit30
  %i.z = phi i32 [ %i.p, %.lr.ph ], [ %i.ai, %hash_step.exit30 ] ; 3 uses
  %i.aa = add i32 %i.z, 8                         ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !53
  %i.ab = icmp ugt i32 %i.z, -9
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !53
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = lshr i32 %i.z, 3
  %i.af = and i32 %i.ae, 63                       ; 2 uses
  %i.ag = icmp eq i32 %i.af, 63
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.y, align 1
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %.pre47 = load i32, ptr %i.a, align 4, !tbaa !53
  br label %hash_step.exit30

bb.j:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.af to i64
  br label %hash_step.exit30

hash_step.exit30:                                 ; preds = %bb.j, %bb.i
  %i.ai = phi i32 [ %i.aa, %bb.j ], [ %.pre47, %bb.i ] ; 3 uses
  %.1.i28 = phi i64 [ 1, %bb.j ], [ 0, %bb.i ]
  %.0.i29 = phi i64 [ %i.ah, %bb.j ], [ 0, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i29
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %.1.i28, i1 false)
  %i.ak = and i32 %i.ai, 504
  %.not = icmp eq i32 %i.ak, 448
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !1072

._crit_edge:                                      ; preds = %hash_step.exit30, %hash_step.exit
  %.lcssa = phi i32 [ %i.p, %hash_step.exit ], [ %i.ai, %hash_step.exit30 ] ; 2 uses
  %i.al = add i32 %.lcssa, 64
  store i32 %i.al, ptr %i.a, align 4, !tbaa !53
  %i.am = icmp ugt i32 %.lcssa, -65
  br i1 %i.am, label %bb.k, label %hash_step.exit33

bb.k:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !53
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !53
  br label %hash_step.exit33

hash_step.exit33:                                 ; preds = %._crit_edge, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %trunc = zext i32 %i.e to i64
  %rev = tail call i64 @llvm.bswap.i64(i64 %trunc)
  %i.ar = shl i32 %i.c, 24
  %.sroa.6.0.insert.shift = zext i32 %i.ar to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %rev, %.sroa.6.0.insert.shift
  %i.as = shl i32 %i.c, 8
  %i.at = and i32 %i.as, 16711680
  %.sroa.544.0.insert.shift = zext nneg i32 %i.at to i64
  %.sroa.544.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.544.0.insert.shift
  %i.au = lshr i32 %i.c, 8
  %i.av = and i32 %i.au, 65280
  %.sroa.4.0.insert.shift = zext nneg i32 %i.av to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.544.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.043.0.insert.ext
  store i64 %.sroa.043.0.insert.insert, ptr %i.aq, align 4
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %i.aw = load i32, ptr %0, align 4, !tbaa !53    ; 4 uses
  %i.ax = lshr i32 %i.aw, 24
  %i.ay = trunc nuw i32 %i.ax to i8               ; 3 uses
  %i.az = lshr i32 %i.aw, 16
  %i.ba = trunc i32 %i.az to i8                   ; 3 uses
  %i.bb = lshr i32 %i.aw, 8
  %i.bc = trunc i32 %i.bb to i8                   ; 3 uses
  %i.bd = trunc i32 %i.aw to i8                   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !53 ; 4 uses
  %i.bg = lshr i32 %i.bf, 24
end_hunk_1
begin_hunk_2_@recoverVfsShmBarrier:bb.a
; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsShmUnmap(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !552
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !552
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @recoverVfsFetch(ptr nofree readnone captures(none) %0, i64 %1, i32 %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) #35 {
bb.a:
  store ptr null, ptr %3, align 8, !tbaa !249
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @recoverVfsUnfetch(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @recoverVfsDetectPagesize(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 256) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_malloc(i32 noundef 131072) #45 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 65536 ; 6 uses
  %i.d = add i64 %3, 65535
  %i.e = sdiv i64 %i.d, 65536
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = srem i64 %3, 65536
  %i.i = trunc nsw i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  br i1 %i.g, label %.split.preheader, label %.split67.us

.split.preheader:                                 ; preds = %bb.b
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.f, i32 4)
  %i.m = zext nneg i32 %i.l to i64
  br label %.split

.split:                                           ; preds = %.split.preheader, %bb.ag
  %.048 = phi i32 [ 0, %bb.ag ], [ %2, %.split.preheader ] ; 3 uses
  %.045 = phi i32 [ %.146.lcssa, %bb.ag ], [ 0, %.split.preheader ] ; 2 uses
  %.044 = phi i32 [ %.1.lcssa, %bb.ag ], [ 0, %.split.preheader ] ; 2 uses
  %i.n = icmp eq i32 %.045, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split, %.loopexit
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.loopexit ], [ 0, %.split ] ; 2 uses
  %.162 = phi i32 [ %.4, %.loopexit ], [ %.044, %.split ] ; 5 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 3 uses
  %i.o = shl nuw nsw i64 %indvars.iv.next78, 16
  %.not = icmp slt i64 %3, %i.o
  %spec.select = select i1 %.not, i32 %i.i, i32 65536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.a, i8 0, i64 65536, i1 false)
  %i.p = load ptr, ptr %1, align 8, !tbaa !271
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !275
  %i.s = shl nuw nsw i64 %indvars.iv77, 16
  %i.t = tail call i32 %i.r(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %spec.select, i64 noundef %i.s) #45 ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %.not51 = icmp eq i32 %.162, 0
  %i.v = shl i32 %.162, 1
  %spec.select55 = select i1 %.not51, i32 512, i32 %i.v ; 2 uses
  %i.w = icmp slt i32 %spec.select55, 65537
  br i1 %i.w, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c, %select.unfold
  %.04261 = phi i32 [ %i.hq, %select.unfold ], [ %spec.select55, %bb.c ] ; 5 uses
  %.260 = phi i32 [ %.3, %select.unfold ], [ %.162, %bb.c ]
  %i.x = sub i32 %.04261, %.048                   ; 11 uses
  %i.y = zext i32 %i.x to i64                     ; 4 uses
  %i.z = add nsw i32 %i.x, -4                     ; 2 uses
  %i.aa = add nsw i32 %i.x, -35
  %i.ab = shl i32 %i.x, 6
  %i.ac = add i32 %i.ab, -768
  %i.ad = sdiv i32 %i.ac, 255
  %i.ae = add nsw i32 %i.ad, -23
  %i.af = shl i32 %i.x, 5
  %i.ag = add i32 %i.af, -384
  %i.ah = sdiv i32 %i.ag, 255                     ; 2 uses
  %i.ai = add nsw i32 %i.ah, -23                  ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = zext nneg i32 %i.z to i64
  %i.al = add nsw i32 %i.ah, -19
  %i.am = icmp sgt i32 %i.x, 0
  %i.an = sext i32 %.04261 to i64
  %min.iters.check = icmp ult i32 %i.x, 8
  %n.vec = and i64 %i.y, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %recoverIsValidPage.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %recoverIsValidPage.exit.thread ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv ; 12 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !52  ; 4 uses
  switch i8 %i.ap, label %recoverIsValidPage.exit.thread [
    i8 13, label %bb.e
    i8 10, label %bb.e
    i8 5, label %bb.e
    i8 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %.val158.i = load i8, ptr %i.aq, align 1, !tbaa !52
  %i.ar = getelementptr i8, ptr %i.ao, i64 4
  %.val159.i = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.as = zext i8 %.val158.i to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = zext i8 %.val159.i to i32
  %i.av = or disjoint i32 %i.at, %i.au            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %.val156.i = load i8, ptr %i.aw, align 1, !tbaa !52
  %i.ax = getelementptr i8, ptr %i.ao, i64 6
  %.val157.i = load i8, ptr %i.ax, align 1, !tbaa !52
  %i.ay = zext i8 %.val156.i to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val157.i to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %spec.store.select.i = select i1 %i.bc, i32 65536, i32 %i.bb
  %i.bd = freeze i32 %spec.store.select.i         ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !52
  %i.bg = zext i8 %i.bf to i32
  %i.bh = icmp sgt i32 %i.bd, %i.x
  br i1 %i.bh, label %recoverIsValidPage.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.val160.i = load i8, ptr %i.bi, align 1, !tbaa !52
  %i.bj = zext i8 %.val160.i to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr i8, ptr %i.ao, i64 2
  %.val161.i = load i8, ptr %i.bl, align 1, !tbaa !52
  %i.bm = zext i8 %.val161.i to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm            ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.c, i8 0, i64 %i.y, i1 false)
  %i.bo = zext nneg i32 %i.bd to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i8 -1, i64 %i.bo, i1 false)
  %i.bp = add nsw i32 %i.bn, -1
  %or.cond.not.i = icmp ult i32 %i.bp, %i.bd
  br i1 %or.cond.not.i, label %recoverIsValidPage.exit.thread, label %.preheader175.i

.preheader175.i:                                  ; preds = %bb.f
  %.not140177.i = icmp eq i32 %i.bn, 0
  br i1 %.not140177.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader175.i, %bb.i
  %.0122178.i = phi i32 [ %i.bx, %bb.i ], [ %i.bn, %.preheader175.i ] ; 3 uses
  %i.bq = icmp sgt i32 %.0122178.i, %i.z
  br i1 %i.bq, label %recoverIsValidPage.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.br = zext nneg i32 %.0122178.i to i64        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.br ; 4 uses
  %.val154.i = load i8, ptr %i.bs, align 1, !tbaa !52
  %i.bt = getelementptr i8, ptr %i.bs, i64 1
  %.val155.i = load i8, ptr %i.bt, align 1, !tbaa !52
  %i.bu = zext i8 %.val154.i to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = zext i8 %.val155.i to i32
  %i.bx = or disjoint i32 %i.bv, %i.bw            ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %.val152.i = load i8, ptr %i.by, align 1, !tbaa !52
  %i.bz = getelementptr i8, ptr %i.bs, i64 3
  %.val153.i = load i8, ptr %i.bz, align 1, !tbaa !52
  %i.ca = zext i8 %.val152.i to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = zext i8 %.val153.i to i32
  %i.cd = or disjoint i32 %i.cb, %i.cc            ; 3 uses
  %i.ce = add nuw nsw i32 %i.cd, %.0122178.i      ; 2 uses
  %4 = icmp sgt i32 %i.ce, %i.x
  %i.cf = icmp samesign ult i32 %i.cd, 4
  %or.cond8.i = select i1 %4, i1 true, i1 %i.cf
  br i1 %or.cond8.i, label %recoverIsValidPage.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not143.i = icmp ne i32 %i.bx, 0
  %i.cg = icmp samesign ult i32 %i.bx, %i.ce
  %or.cond144.i = and i1 %.not143.i, %i.cg
  br i1 %or.cond144.i, label %recoverIsValidPage.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.br
  %i.ci = zext nneg i32 %i.cd to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 -1, i64 %i.ci, i1 false)
  %.not140.i = icmp eq i32 %i.bx, 0
  br i1 %.not140.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1184

._crit_edge.i:                                    ; preds = %bb.i, %.preheader175.i
  %switch.selectcmp.case1.i = icmp eq i8 %i.ap, 5
  %switch.selectcmp.case2.i = icmp eq i8 %i.ap, 2
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i ; 2 uses
  %i.cj = select i1 %switch.selectcmp.i, i32 12, i32 8 ; 2 uses
  %i.ck = shl nuw nsw i32 %i.av, 1
  %i.cl = add nuw nsw i32 %i.ck, %i.cj
  %i.cm = icmp samesign ugt i32 %i.cl, %i.bd
  br i1 %i.cm, label %recoverIsValidPage.exit.thread, label %.preheader173.i

.preheader173.i:                                  ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph183.i

.lr.ph183.i:                                      ; preds = %.preheader173.i
  %i.cn = select i1 %switch.selectcmp.i, i32 4, i32 0 ; 2 uses
  %i.co = zext nneg i32 %i.cj to i64
  %wide.trip.count.i = zext nneg i32 %i.av to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.co
  br label %bb.j

.preheader.i:                                     ; preds = %._crit_edge181.i, %.preheader173.i
  br i1 %i.am, label %.lr.ph186.i.preheader, label %recoverIsValidPage.exit

.lr.ph186.i.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph186.i.preheader97, label %vector.body

vector.body:                                      ; preds = %.lr.ph186.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph186.i.preheader ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cv, %vector.body ], [ zeroinitializer, %.lr.ph186.i.preheader ]
  %vec.phi95 = phi <4 x i32> [ %i.cw, %vector.body ], [ zeroinitializer, %.lr.ph186.i.preheader ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %wide.load = load <4 x i8>, ptr %i.cp, align 1, !tbaa !52
  %wide.load96 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !52
  %i.cr = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.cs = icmp eq <4 x i8> %wide.load96, zeroinitializer
  %i.ct = zext <4 x i1> %i.cr to <4 x i32>
  %i.cu = zext <4 x i1> %i.cs to <4 x i32>
  %i.cv = add <4 x i32> %vec.phi, %i.ct           ; 2 uses
  %i.cw = add <4 x i32> %vec.phi95, %i.cu         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !1185

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %recoverIsValidPage.exit, label %.lr.ph186.i.preheader97

.lr.ph186.i.preheader97:                          ; preds = %.lr.ph186.i.preheader, %middle.block
  %indvars.iv195.i.ph = phi i64 [ 0, %.lr.ph186.i.preheader ], [ %n.vec, %middle.block ]
  %.0124184.i.ph = phi i32 [ 0, %.lr.ph186.i.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph186.i

bb.j:                                             ; preds = %._crit_edge181.i, %.lr.ph183.i
  %indvars.iv192.i = phi i64 [ 0, %.lr.ph183.i ], [ %indvars.iv.next193.i, %._crit_edge181.i ] ; 2 uses
  %i.cz = shl nuw nsw i64 %indvars.iv192.i, 1
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %i.cz ; 2 uses
  %.val.i = load i8, ptr %gep.i, align 1, !tbaa !52 ; 2 uses
  %i.da = getelementptr i8, ptr %gep.i, i64 1
  %.val151.i = load i8, ptr %i.da, align 1, !tbaa !52 ; 2 uses
  %i.db = zext i8 %.val.i to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = zext i8 %.val151.i to i32
  %i.de = or disjoint i32 %i.dc, %i.dd            ; 5 uses
  %i.df = icmp samesign ult i32 %i.de, %i.bd
  %i.dg = icmp sgt i32 %i.de, %i.x
  %or.cond145.i = or i1 %i.df, %i.dg
  br i1 %or.cond145.i, label %recoverIsValidPage.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = add nuw nsw i32 %i.de, %i.cn
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.di ; 9 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !52  ; 2 uses
  %i.dl = and i8 %i.dk, 127
  %i.dm = zext nneg i8 %i.dl to i64               ; 2 uses
  %i.dn = icmp sgt i8 %i.dk, -1
  br i1 %i.dn, label %recoverGetVarint.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = shl nuw nsw i64 %i.dm, 7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !52  ; 2 uses
  %i.dr = and i8 %i.dq, 127
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = or disjoint i64 %i.do, %i.ds            ; 2 uses
  %i.du = icmp sgt i8 %i.dq, -1
  br i1 %i.du, label %recoverGetVarint.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = shl nuw nsw i64 %i.dt, 7
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !52  ; 2 uses
  %i.dy = and i8 %i.dx, 127
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = or disjoint i64 %i.dv, %i.dz            ; 2 uses
  %i.eb = icmp sgt i8 %i.dx, -1
  br i1 %i.eb, label %recoverGetVarint.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = shl nuw nsw i64 %i.ea, 7
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !52  ; 2 uses
  %i.ef = and i8 %i.ee, 127
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = or disjoint i64 %i.ec, %i.eg            ; 2 uses
  %i.ei = icmp sgt i8 %i.ee, -1
  br i1 %i.ei, label %recoverGetVarint.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ej = shl nuw nsw i64 %i.eh, 7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !52  ; 2 uses
  %i.em = and i8 %i.el, 127
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = or disjoint i64 %i.ej, %i.en            ; 2 uses
  %i.ep = icmp sgt i8 %i.el, -1
  br i1 %i.ep, label %recoverGetVarint.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = shl nuw nsw i64 %i.eo, 7
  %i.er = getelementptr inbounds nuw i8, ptr %i.dj, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !52  ; 2 uses
  %i.et = and i8 %i.es, 127
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = or disjoint i64 %i.eq, %i.eu            ; 2 uses
  %i.ew = icmp sgt i8 %i.es, -1
  br i1 %i.ew, label %recoverGetVarint.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = shl nuw nsw i64 %i.ev, 7
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !52  ; 2 uses
  %i.fa = and i8 %i.ez, 127
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = or disjoint i64 %i.ex, %i.fb            ; 2 uses
  %i.fd = icmp sgt i8 %i.ez, -1
  br i1 %i.fd, label %recoverGetVarint.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fe = shl nuw nsw i64 %i.fc, 7
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dj, i64 7
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !52  ; 2 uses
  %i.fh = and i8 %i.fg, 127
  %i.fi = zext nneg i8 %i.fh to i64
  %i.fj = or disjoint i64 %i.fe, %i.fi            ; 2 uses
  %i.fk = icmp sgt i8 %i.fg, -1
  br i1 %i.fk, label %recoverGetVarint.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = shl nuw i64 %i.fj, 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !52
  %i.fo = zext i8 %i.fn to i64
  %i.fp = or disjoint i64 %i.fl, %i.fo
  br label %recoverGetVarint.exit.i

recoverGetVarint.exit.i:                          ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %storemerge.i.i = phi i64 [ %i.fp, %bb.s ], [ %i.dm, %bb.k ], [ %i.dt, %bb.l ], [ %i.ea, %bb.m ], [ %i.eh, %bb.n ], [ %i.eo, %bb.o ], [ %i.ev, %bb.p ], [ %i.fc, %bb.q ], [ %i.fj, %bb.r ] ; 3 uses
  %.016.i.i = phi i32 [ 9, %bb.s ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ], [ 5, %bb.o ], [ 6, %bb.p ], [ 7, %bb.q ], [ 8, %bb.r ]
  %i.fq = add nuw nsw i32 %.016.i.i, %i.cn        ; 4 uses
  switch i8 %i.ap, label %bb.ac [
    i8 13, label %bb.t
    i8 5, label %bb.ad
  ]

bb.t:                                             ; preds = %recoverGetVarint.exit.i
  %i.fr = add nuw nsw i32 %i.fq, %i.de
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fs ; 8 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !52
  %i.fv = icmp sgt i8 %i.fu, -1
  br i1 %i.fv, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !52
  %i.fy = icmp sgt i8 %i.fx, -1
  br i1 %i.fy, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
end_hunk_2
