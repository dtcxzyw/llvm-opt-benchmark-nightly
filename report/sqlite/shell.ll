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
  br i1 %or.cond33.i, label %.lr.ph.i, label %.loopexit29.i

.lr.ph.i:                                         ; preds = %bb.h
  %4 = zext i32 %i.d to i64
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.j, %.lr.ph.i
  %.030.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !130
  %i.ad = lshr i32 %.030.i, 3
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
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %5 = or disjoint i64 %indvars.iv.next.i, 7
  %i.am = icmp samesign ult i64 %5, %4
  br i1 %i.am, label %.lr.ph.i.a, label %.loopexit29.loopexit.i, !llvm.loop !8

.loopexit29.loopexit.i:                           ; preds = %bb.j
  %6 = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit29.loopexit.i, %bb.h
  %i.an = phi i32 [ 0, %bb.h ], [ %i.al, %.loopexit29.loopexit.i ]
  %.1.i = phi i32 [ 0, %bb.h ], [ %6, %.loopexit29.loopexit.i ] ; 2 uses
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
  br i1 %or.cond33.i25, label %.lr.ph.i33, label %.loopexit29.i26

.lr.ph.i33:                                       ; preds = %bb.o
  %7 = zext i32 %i.d to i64
  br label %.lr.ph.i33.a

.lr.ph.i33.a:                                     ; preds = %bb.q, %.lr.ph.i33
  %.030.i34 = phi i32 [ 0, %.lr.ph.i33 ], [ %i.bt, %bb.q ]
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i33 ], [ %indvars.iv.next.i36, %bb.q ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i34
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !130
  %i.bl = lshr i32 %.030.i34, 3
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
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i34, 8 ; 3 uses
  %8 = or disjoint i64 %indvars.iv.next.i36, 7
  %i.bu = icmp samesign ult i64 %8, %7
  br i1 %i.bu, label %.lr.ph.i33.a, label %.loopexit29.loopexit.i37, !llvm.loop !8

.loopexit29.loopexit.i37:                         ; preds = %bb.q
  %9 = trunc nuw i64 %indvars.iv.next.i36 to i32
  br label %.loopexit29.i26

.loopexit29.i26:                                  ; preds = %.loopexit29.loopexit.i37, %bb.o
  %i.bv = phi i32 [ 0, %bb.o ], [ %i.bt, %.loopexit29.loopexit.i37 ]
  %.1.i27 = phi i32 [ 0, %bb.o ], [ %9, %.loopexit29.loopexit.i37 ] ; 2 uses
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
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #46 ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 4 uses
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
  br i1 %or.cond33.i, label %.lr.ph.i, label %.loopexit29.i

.lr.ph.i:                                         ; preds = %bb.k
  %4 = and i64 %i.am, 4294967295
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.m, %.lr.ph.i
  %.030.i = phi i32 [ %i.ao, %.lr.ph.i ], [ %i.bf, %bb.m ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !130
  %i.ax = lshr i32 %.030.i, 3
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
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %5 = or disjoint i64 %indvars.iv.next.i, 7
  %i.bg = icmp samesign ult i64 %5, %4
  br i1 %i.bg, label %.lr.ph.i.a, label %.loopexit29.loopexit.i, !llvm.loop !8

.loopexit29.loopexit.i:                           ; preds = %bb.m
  %6 = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit29.loopexit.i, %bb.k
  %i.bh = phi i32 [ %i.ao, %bb.k ], [ %i.bf, %.loopexit29.loopexit.i ]
  %.1.i = phi i32 [ 0, %bb.k ], [ %6, %.loopexit29.loopexit.i ] ; 2 uses
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
  %exitcond = icmp eq i32 %i.an, %lftr.wideiv
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
begin_hunk_1_@sha3UpdateFromValue:bb.a
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
  %i.bd = phi i32 [ %i.an, %bb.c ], [ 0, %bb.d ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph32.i34
  %i.bf = phi i32 [ %i.bd, %.lr.ph32.i34 ], [ %i.bq, %bb.g ]
  %indvars.iv.i35 = phi i64 [ %.1.i78, %.lr.ph32.i34 ], [ %indvars.iv.next.i36, %bb.g ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i35
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !52
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !52
  %i.bl = xor i8 %i.bk, %i.bh
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !52
  %i.bm = load i32, ptr %i.am, align 4, !tbaa !131
  %i.bn = add i32 %i.bm, 1                        ; 3 uses
  store i32 %i.bn, ptr %i.am, align 4, !tbaa !131
  %i.bo = load i32, ptr %i.be, align 8, !tbaa !129
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.am, align 4, !tbaa !131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bq = phi i32 [ %i.bn, %bb.e ], [ 0, %bb.f ]
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %i.br = and i64 %indvars.iv.next.i36, 4294967295
  %exitcond.not.i38 = icmp eq i64 %i.br, 9
  br i1 %exitcond.not.i38, label %SHA3Update.exit39, label %bb.e, !llvm.loop !9

SHA3Update.exit39:                                ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %SHA3Update.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.bs = tail call double @sqlite3_value_double(ptr noundef %1) #45
  %i.bt = bitcast double %i.bs to i64             ; 8 uses
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !52
  %i.bw = lshr i64 %i.bt, 8
  %i.bx = trunc i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !52
  %i.bz = lshr i64 %i.bt, 16
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !52
  %i.cc = lshr i64 %i.bt, 24
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !52
  %i.cf = lshr i64 %i.bt, 32
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !52
  %i.ci = lshr i64 %i.bt, 40
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !52
  %i.cl = lshr i64 %i.bt, 48
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !52
  %i.co = lshr i64 %i.bt, 56
  %i.cp = trunc nuw i64 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !52
  store i8 70, ptr %i.b, align 1, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !131 ; 3 uses
  %i.ct = and i32 %i.cs, 7
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = ptrtoint ptr %i.b to i64
  %i.cw = and i64 %i.cv, 7
  %i.cx = icmp eq i64 %i.cw, 0
  %or.cond.i40 = and i1 %i.cx, %i.cu
  br i1 %or.cond.i40, label %.lr.ph.i48, label %.lr.ph32.i43

.lr.ph.i48:                                       ; preds = %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !130
  %i.da = lshr exact i32 %i.cs, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !52
  %i.de = xor i64 %i.dd, %i.cz
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !52
  %i.df = load i32, ptr %i.cr, align 4, !tbaa !131
  %i.dg = add i32 %i.df, 8                        ; 3 uses
  store i32 %i.dg, ptr %i.cr, align 4, !tbaa !131
  %i.dh = load i32, ptr %i.cy, align 8, !tbaa !129
  %.not.i50 = icmp ult i32 %i.dg, %i.dh
  br i1 %.not.i50, label %.lr.ph32.i43, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i48
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.cr, align 4, !tbaa !131
  br label %.lr.ph32.i43

.lr.ph32.i43:                                     ; preds = %.lr.ph.i48, %bb.i, %bb.h
  %.1.i4280 = phi i64 [ 0, %bb.h ], [ 8, %bb.i ], [ 8, %.lr.ph.i48 ]
  %i.di = phi i32 [ %i.cs, %bb.h ], [ 0, %bb.i ], [ %i.dg, %.lr.ph.i48 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph32.i43
  %i.dk = phi i32 [ %i.di, %.lr.ph32.i43 ], [ %i.dv, %bb.l ]
  %indvars.iv.i44 = phi i64 [ %.1.i4280, %.lr.ph32.i43 ], [ %indvars.iv.next.i45, %bb.l ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i44
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52
  %i.dn = zext i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !52
  %i.dq = xor i8 %i.dp, %i.dm
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !52
  %i.dr = load i32, ptr %i.cr, align 4, !tbaa !131
  %i.ds = add i32 %i.dr, 1                        ; 3 uses
  store i32 %i.ds, ptr %i.cr, align 4, !tbaa !131
  %i.dt = load i32, ptr %i.dj, align 8, !tbaa !129
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.cr, align 4, !tbaa !131
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dv = phi i32 [ %i.ds, %bb.j ], [ 0, %bb.k ]
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %i.dw = and i64 %indvars.iv.next.i45, 4294967295
  %exitcond.not.i47 = icmp eq i64 %i.dw, 9
  br i1 %exitcond.not.i47, label %SHA3Update.exit51, label %bb.j, !llvm.loop !9

SHA3Update.exit51:                                ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %SHA3Update.exit

bb.m:                                             ; preds = %bb.a
  %i.dx = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.dy = tail call ptr @sqlite3_value_text(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.294, i32 noundef %i.dx)
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %SHA3Update.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !131 ; 3 uses
  %i.ec = and i32 %i.eb, 7
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = ptrtoint ptr %i.dy to i64
  %i.ef = and i64 %i.ee, 7
  %i.eg = icmp eq i64 %i.ef, 0
  %or.cond.i52 = and i1 %i.eg, %i.ed
  %i.eh = icmp ugt i32 %i.dx, 7
  %or.cond33.i = and i1 %i.eh, %or.cond.i52
  br i1 %or.cond33.i, label %.lr.ph.i60, label %.loopexit29.i53

.lr.ph.i60:                                       ; preds = %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %2 = zext i32 %i.dx to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i60
  %.030.i61 = phi i32 [ %i.eb, %.lr.ph.i60 ], [ %i.et, %bb.q ]
  %indvars.iv.i63 = phi i64 [ 0, %.lr.ph.i60 ], [ %indvars.iv.next.i65, %bb.q ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.i63
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !130
  %i.el = lshr i32 %.030.i61, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !52
  %i.ep = xor i64 %i.eo, %i.ek
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !52
  %i.eq = load i32, ptr %i.ea, align 4, !tbaa !131
  %i.er = add i32 %i.eq, 8                        ; 3 uses
  store i32 %i.er, ptr %i.ea, align 4, !tbaa !131
  %i.es = load i32, ptr %i.ei, align 8, !tbaa !129
  %.not.i62 = icmp ult i32 %i.er, %i.es
  br i1 %.not.i62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.ea, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.et = phi i32 [ %i.er, %bb.o ], [ 0, %bb.p ]  ; 2 uses
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i63, 8 ; 3 uses
  %3 = or disjoint i64 %indvars.iv.next.i65, 7
  %i.eu = icmp samesign ult i64 %3, %2
  br i1 %i.eu, label %bb.o, label %.loopexit29.loopexit.i66, !llvm.loop !8

.loopexit29.loopexit.i66:                         ; preds = %bb.q
  %4 = trunc nuw i64 %indvars.iv.next.i65 to i32
  br label %.loopexit29.i53

.loopexit29.i53:                                  ; preds = %.loopexit29.loopexit.i66, %bb.n
  %i.ev = phi i32 [ %i.eb, %bb.n ], [ %i.et, %.loopexit29.loopexit.i66 ]
  %.1.i54 = phi i32 [ 0, %bb.n ], [ %4, %.loopexit29.loopexit.i66 ] ; 2 uses
  %i.ew = icmp ult i32 %.1.i54, %i.dx
  br i1 %i.ew, label %.lr.ph32.i55, label %SHA3Update.exit

.lr.ph32.i55:                                     ; preds = %.loopexit29.i53
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ey = zext i32 %.1.i54 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph32.i55
  %i.ez = phi i32 [ %i.ev, %.lr.ph32.i55 ], [ %i.fk, %bb.t ]
  %indvars.iv.i56 = phi i64 [ %i.ey, %.lr.ph32.i55 ], [ %indvars.iv.next.i57, %bb.t ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.i56
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !52
  %i.fc = zext i32 %i.ez to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 %i.fc ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !52
  %i.ff = xor i8 %i.fe, %i.fb
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !52
  %i.fg = load i32, ptr %i.ea, align 4, !tbaa !131
  %i.fh = add i32 %i.fg, 1                        ; 3 uses
  store i32 %i.fh, ptr %i.ea, align 4, !tbaa !131
  %i.fi = load i32, ptr %i.ex, align 8, !tbaa !129
  %i.fj = icmp eq i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.ea, align 4, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fk = phi i32 [ %i.fh, %bb.r ], [ 0, %bb.s ]
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %lftr.wideiv99 = trunc i64 %indvars.iv.next.i57 to i32
  %exitcond100 = icmp eq i32 %i.dx, %lftr.wideiv99
  br i1 %exitcond100, label %SHA3Update.exit, label %bb.r, !llvm.loop !9

bb.u:                                             ; preds = %bb.a
  %i.fl = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.fm = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.295, i32 noundef %i.fl)
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %SHA3Update.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !131 ; 3 uses
  %i.fq = and i32 %i.fp, 7
  %i.fr = icmp eq i32 %i.fq, 0
  %i.fs = ptrtoint ptr %i.fm to i64
  %i.ft = and i64 %i.fs, 7
  %i.fu = icmp eq i64 %i.ft, 0
  %or.cond.i64 = and i1 %i.fu, %i.fr
  %i.fv = icmp ugt i32 %i.fl, 7
  %or.cond33.i65 = and i1 %i.fv, %or.cond.i64
  br i1 %or.cond33.i65, label %.lr.ph.i73, label %.loopexit29.i66

.lr.ph.i73:                                       ; preds = %bb.v
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %5 = zext i32 %i.fl to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i73
  %.030.i74 = phi i32 [ %i.fp, %.lr.ph.i73 ], [ %i.gh, %bb.y ]
  %indvars.iv.i78 = phi i64 [ 0, %.lr.ph.i73 ], [ %indvars.iv.next.i80, %bb.y ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i78
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !130
  %i.fz = lshr i32 %.030.i74, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ga ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !52
  %i.gd = xor i64 %i.gc, %i.fy
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !52
  %i.ge = load i32, ptr %i.fo, align 4, !tbaa !131
  %i.gf = add i32 %i.ge, 8                        ; 3 uses
  store i32 %i.gf, ptr %i.fo, align 4, !tbaa !131
  %i.gg = load i32, ptr %i.fw, align 8, !tbaa !129
  %.not.i75 = icmp ult i32 %i.gf, %i.gg
  br i1 %.not.i75, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fo, align 4, !tbaa !131
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gh = phi i32 [ %i.gf, %bb.w ], [ 0, %bb.x ]  ; 2 uses
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i78, 8 ; 3 uses
  %6 = or disjoint i64 %indvars.iv.next.i80, 7
  %i.gi = icmp samesign ult i64 %6, %5
  br i1 %i.gi, label %bb.w, label %.loopexit29.loopexit.i81, !llvm.loop !8

.loopexit29.loopexit.i81:                         ; preds = %bb.y
  %7 = trunc nuw i64 %indvars.iv.next.i80 to i32
  br label %.loopexit29.i66

.loopexit29.i66:                                  ; preds = %.loopexit29.loopexit.i81, %bb.v
  %i.gj = phi i32 [ %i.fp, %bb.v ], [ %i.gh, %.loopexit29.loopexit.i81 ]
  %.1.i67 = phi i32 [ 0, %bb.v ], [ %7, %.loopexit29.loopexit.i81 ] ; 2 uses
  %i.gk = icmp ult i32 %.1.i67, %i.fl
  br i1 %i.gk, label %.lr.ph32.i68, label %SHA3Update.exit

.lr.ph32.i68:                                     ; preds = %.loopexit29.i66
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.gm = zext i32 %.1.i67 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph32.i68
  %i.gn = phi i32 [ %i.gj, %.lr.ph32.i68 ], [ %i.gy, %bb.ab ]
  %indvars.iv.i69 = phi i64 [ %i.gm, %.lr.ph32.i68 ], [ %indvars.iv.next.i70, %bb.ab ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i69
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !52
  %i.gq = zext i32 %i.gn to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 %i.gq ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !52
  %i.gt = xor i8 %i.gs, %i.gp
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !52
  %i.gu = load i32, ptr %i.fo, align 4, !tbaa !131
  %i.gv = add i32 %i.gu, 1                        ; 3 uses
  store i32 %i.gv, ptr %i.fo, align 4, !tbaa !131
  %i.gw = load i32, ptr %i.gl, align 8, !tbaa !129
  %i.gx = icmp eq i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fo, align 4, !tbaa !131
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gy = phi i32 [ %i.gv, %bb.z ], [ 0, %bb.aa ]
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i70 to i32
  %exitcond = icmp eq i32 %i.fl, %lftr.wideiv
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
  %3 = phi i32 [ %i.f, %.lr.ph.i ], [ %i.v, %bb.d ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.w = or disjoint i64 %indvars.iv.next, 7
  %i.x = icmp samesign ult i64 %i.w, %i.k
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
