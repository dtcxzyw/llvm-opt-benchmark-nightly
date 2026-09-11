Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3MemTraceDeactivate:bb.a
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

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %i.ab = phi i32 [ %i.an, %bb.j ], [ 0, %bb.h ]
  %.030.i = phi i32 [ %i.ao, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ac = zext i32 %.030.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !130
  %i.af = lshr i32 %i.ab, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !52
  %i.aj = xor i64 %i.ai, %i.ae
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !52
  %i.ak = load i32, ptr %i.w, align 4, !tbaa !131
  %i.al = add i32 %i.ak, 8                        ; 3 uses
  store i32 %i.al, ptr %i.w, align 4, !tbaa !131
  %i.am = load i32, ptr %i.r, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.w, align 4, !tbaa !131
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.an = phi i32 [ %i.al, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %i.ao = add i32 %.030.i, 8                      ; 3 uses
  %i.ap = or disjoint i32 %i.ao, 7
  %i.aq = icmp ult i32 %i.ap, %i.d
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit29.i, !llvm.loop !8

.loopexit29.i:                                    ; preds = %bb.j, %bb.h
  %i.ar = phi i32 [ 0, %bb.h ], [ %i.an, %bb.j ]
  %.1.i = phi i32 [ 0, %bb.h ], [ %i.ao, %bb.j ]  ; 2 uses
  %i.as = icmp ult i32 %.1.i, %i.d
  br i1 %i.as, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.at = zext i32 %.1.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph32.i
  %i.au = phi i32 [ %i.ar, %.lr.ph32.i ], [ %i.bf, %bb.m ]
  %indvars.iv.i = phi i64 [ %i.at, %.lr.ph32.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !52
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !52
  %i.ba = xor i8 %i.az, %i.aw
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !52
  %i.bb = load i32, ptr %i.w, align 4, !tbaa !131
  %i.bc = add i32 %i.bb, 1                        ; 3 uses
  store i32 %i.bc, ptr %i.w, align 4, !tbaa !131
  %i.bd = load i32, ptr %i.r, align 8, !tbaa !129
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.w, align 4, !tbaa !131
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = phi i32 [ %i.bc, %bb.k ], [ 0, %bb.l ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv45 = trunc i64 %indvars.iv.next.i to i32
  %exitcond46 = icmp eq i32 %i.d, %lftr.wideiv45
  br i1 %exitcond46, label %SHA3Update.exit, label %bb.k, !llvm.loop !9

bb.n:                                             ; preds = %SHA3Init.exit
  %i.bg = tail call ptr @sqlite3_value_text(ptr noundef %i.t) #45 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %SHA3Update.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 1604 ; 6 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = and i64 %i.bj, 7
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = icmp ugt i32 %i.d, 7
  %or.cond33.i25 = and i1 %i.bm, %i.bl
  br i1 %or.cond33.i25, label %.lr.ph.i33, label %.loopexit29.i26

.lr.ph.i33:                                       ; preds = %bb.o, %bb.q
  %i.bn = phi i32 [ %i.bz, %bb.q ], [ 0, %bb.o ]
  %.030.i34 = phi i32 [ %i.ca, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %i.bo = zext i32 %.030.i34 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !130
  %i.br = lshr i32 %i.bn, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bs ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !52
  %i.bv = xor i64 %i.bu, %i.bq
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !52
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !131
  %i.bx = add i32 %i.bw, 8                        ; 3 uses
  store i32 %i.bx, ptr %i.bi, align 4, !tbaa !131
  %i.by = load i32, ptr %i.r, align 8, !tbaa !129
  %.not.i35 = icmp ult i32 %i.bx, %i.by
  br i1 %.not.i35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i33
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.bi, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i33
  %i.bz = phi i32 [ %i.bx, %.lr.ph.i33 ], [ 0, %bb.p ] ; 2 uses
  %i.ca = add i32 %.030.i34, 8                    ; 3 uses
  %i.cb = or disjoint i32 %i.ca, 7
  %i.cc = icmp ult i32 %i.cb, %i.d
  br i1 %i.cc, label %.lr.ph.i33, label %.loopexit29.i26, !llvm.loop !8

.loopexit29.i26:                                  ; preds = %bb.q, %bb.o
  %i.cd = phi i32 [ 0, %bb.o ], [ %i.bz, %bb.q ]
  %.1.i27 = phi i32 [ 0, %bb.o ], [ %i.ca, %bb.q ] ; 2 uses
  %i.ce = icmp ult i32 %.1.i27, %i.d
  br i1 %i.ce, label %.lr.ph32.i28, label %SHA3Update.exit

.lr.ph32.i28:                                     ; preds = %.loopexit29.i26
  %i.cf = zext i32 %.1.i27 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph32.i28
  %i.cg = phi i32 [ %i.cd, %.lr.ph32.i28 ], [ %i.cr, %bb.t ]
  %indvars.iv.i29 = phi i64 [ %i.cf, %.lr.ph32.i28 ], [ %indvars.iv.next.i30, %bb.t ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i29
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !52
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 %i.cj ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !52
  %i.cm = xor i8 %i.cl, %i.ci
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !52
  %i.cn = load i32, ptr %i.bi, align 4, !tbaa !131
  %i.co = add i32 %i.cn, 1                        ; 3 uses
  store i32 %i.co, ptr %i.bi, align 4, !tbaa !131
  %i.cp = load i32, ptr %i.r, align 8, !tbaa !129
  %i.cq = icmp eq i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.bi, align 4, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = phi i32 [ %i.co, %bb.r ], [ 0, %bb.s ]
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i30 to i32
  %exitcond = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond, label %SHA3Update.exit, label %bb.r, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.t, %bb.m, %.loopexit29.i26, %bb.n, %.loopexit29.i, %bb.g
  %i.cs = call fastcc ptr @SHA3Final(ptr noundef %3)
  %i.ct = sdiv i32 %.0, 8
  call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.cs, i32 noundef %i.ct, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
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
  %i.v = phi ptr [ %i.e, %.lr.ph56 ], [ %i.cv, %._crit_edge ]
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
  br i1 %or.cond33.i, label %.lr.ph.i, label %.loopexit29.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %i.av = phi i32 [ %i.bh, %bb.m ], [ %i.ao, %bb.k ]
  %.030.i = phi i32 [ %i.bi, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %i.aw = zext i32 %.030.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !130
  %i.az = lshr i32 %i.av, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !52
  %i.bd = xor i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !52
  %i.be = load i32, ptr %i.u, align 4, !tbaa !131
  %i.bf = add i32 %i.be, 8                        ; 3 uses
  store i32 %i.bf, ptr %i.u, align 4, !tbaa !131
  %i.bg = load i32, ptr %i.s, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.bf, %i.bg
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.u, align 4, !tbaa !131
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bh = phi i32 [ %i.bf, %.lr.ph.i ], [ 0, %bb.l ] ; 2 uses
  %i.bi = add i32 %.030.i, 8                      ; 3 uses
  %i.bj = or disjoint i32 %i.bi, 7
  %i.bk = icmp ult i32 %i.bj, %i.an
  br i1 %i.bk, label %.lr.ph.i, label %.loopexit29.i, !llvm.loop !8

.loopexit29.i:                                    ; preds = %bb.m, %bb.k
  %i.bl = phi i32 [ %i.ao, %bb.k ], [ %i.bh, %bb.m ]
  %.1.i = phi i32 [ 0, %bb.k ], [ %i.bi, %bb.m ]  ; 2 uses
  %i.bm = icmp ult i32 %.1.i, %i.an
  br i1 %i.bm, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.bn = zext i32 %.1.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph32.i
  %i.bo = phi i32 [ %i.bl, %.lr.ph32.i ], [ %i.bz, %bb.p ]
  %indvars.iv.i = phi i64 [ %i.bn, %.lr.ph32.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !52
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52
  %i.bu = xor i8 %i.bt, %i.bq
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !52
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !131
  %i.bw = add i32 %i.bv, 1                        ; 3 uses
  store i32 %i.bw, ptr %i.u, align 4, !tbaa !131
  %i.bx = load i32, ptr %i.s, align 8, !tbaa !129
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.u, align 4, !tbaa !131
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bz = phi i32 [ %i.bw, %bb.n ], [ 0, %bb.o ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %i.an
  br i1 %exitcond, label %SHA3Update.exit, label %bb.n, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.p, %.loopexit29.i, %bb.j
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cb = call i32 @sqlite3_step(ptr noundef %i.ca) #45
  %i.cc = icmp eq i32 %i.cb, 100
  br i1 %i.cc, label %.lr.ph32.i44.lr.ph, label %._crit_edge

.lr.ph32.i44.lr.ph:                               ; preds = %SHA3Update.exit
  %i.cd = icmp sgt i32 %i.aj, 0
  br label %.lr.ph32.i44

.loopexit:                                        ; preds = %SHA3Update.exit52, %SHA3Update.exit52.preheader
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cf = call i32 @sqlite3_step(ptr noundef %i.ce) #45
  %i.cg = icmp eq i32 %i.cf, 100
  br i1 %i.cg, label %.lr.ph32.i44, label %._crit_edge, !llvm.loop !747

.lr.ph32.i44:                                     ; preds = %.lr.ph32.i44.lr.ph, %.loopexit
  %i.ch = load i32, ptr %i.u, align 4, !tbaa !131
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 %i.ci ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !52
  %i.cl = xor i8 %i.ck, 82
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !52
  %i.cm = load i32, ptr %i.u, align 4, !tbaa !131
  %i.cn = add i32 %i.cm, 1                        ; 2 uses
  store i32 %i.cn, ptr %i.u, align 4, !tbaa !131
  %i.co = load i32, ptr %i.s, align 8, !tbaa !129
  %i.cp = icmp eq i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.q, label %SHA3Update.exit52.preheader

bb.q:                                             ; preds = %.lr.ph32.i44
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %3)
  store i32 0, ptr %i.u, align 4, !tbaa !131
  br label %SHA3Update.exit52.preheader

SHA3Update.exit52.preheader:                      ; preds = %bb.q, %.lr.ph32.i44
  br i1 %i.cd, label %SHA3Update.exit52, label %.loopexit

SHA3Update.exit52:                                ; preds = %SHA3Update.exit52.preheader, %SHA3Update.exit52
  %.03454 = phi i32 [ %i.cs, %SHA3Update.exit52 ], [ 0, %SHA3Update.exit52.preheader ] ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cr = call ptr @sqlite3_column_value(ptr noundef %i.cq, i32 noundef %.03454) #45
  call fastcc void @sha3UpdateFromValue(ptr noundef %3, ptr noundef %i.cr)
  %i.cs = add nuw nsw i32 %.03454, 1              ; 2 uses
  %exitcond60.not = icmp eq i32 %i.cs, %i.aj
  br i1 %exitcond60.not, label %.loopexit, label %SHA3Update.exit52, !llvm.loop !748

._crit_edge:                                      ; preds = %.loopexit, %SHA3Update.exit
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cu = call i32 @sqlite3_finalize(ptr noundef %i.ct) #45 ; 0 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !52
  %.not = icmp eq i8 %i.cw, 0
  br i1 %.not, label %._crit_edge57, label %bb.f, !llvm.loop !749

._crit_edge57:                                    ; preds = %._crit_edge, %SHA3Init.exit
  %i.cx = call fastcc ptr @SHA3Final(ptr noundef %3)
  %i.cy = sdiv i32 %.0, 8
  call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.cx, i32 noundef %i.cy, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
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
begin_hunk_1_@base85:bb.a
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.ad = shl i32 %i.y, 24
  %sext.i = add i32 %i.ad, 637534208
  %i.ae = ashr exact i32 %sext.i, 24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = phi i32 [ %i.ac, %bb.i ], [ %i.ae, %bb.j ]
  %i.ag = trunc nsw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0555.i, i64 4
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !52
  %i.ai = udiv i32 %i.w, 7225                     ; 2 uses
  %.neg.1.i = mul nuw nsw i32 %i.ai, 171
  %i.aj = add nuw nsw i32 %.neg.1.i, %i.x         ; 3 uses
  %i.ak = and i32 %i.aj, 252
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = shl i32 %i.aj, 24
  %sext.1.i = add i32 %i.am, 637534208
  %i.an = ashr exact i32 %sext.1.i, 24
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ao = add nuw nsw i32 %i.aj, 35
  %i.ap = and i32 %i.ao, 39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = phi i32 [ %i.ap, %bb.m ], [ %i.an, %bb.l ]
  %i.ar = trunc nsw i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.0555.i, i64 3
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !52
  %i.at = udiv i32 %i.w, 614125                   ; 2 uses
  %.neg.2.i = mul nuw nsw i32 %i.at, 171
  %i.au = add nuw nsw i32 %.neg.2.i, %i.ai        ; 3 uses
  %i.av = and i32 %i.au, 252
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = shl i32 %i.au, 24
  %sext.2.i = add i32 %i.ax, 637534208
  %i.ay = ashr exact i32 %sext.2.i, 24
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.az = add nuw nsw i32 %i.au, 35
  %i.ba = and i32 %i.az, 39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = phi i32 [ %i.ba, %bb.p ], [ %i.ay, %bb.o ]
  %i.bc = trunc nsw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0555.i, i64 2
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !52
  %i.be = udiv i32 %i.w, 52200625                 ; 3 uses
  %.neg.3.i = mul nuw nsw i32 %i.be, 171
  %i.bf = add nuw nsw i32 %.neg.3.i, %i.at        ; 3 uses
  %i.bg = and i32 %i.bf, 252
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = shl i32 %i.bf, 24
  %sext.3.i = add i32 %i.bi, 637534208
  %i.bj = ashr exact i32 %sext.3.i, 24
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bk = add nuw nsw i32 %i.bf, 35
  %i.bl = and i32 %i.bk, 39
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bm = phi i32 [ %i.bl, %bb.s ], [ %i.bj, %bb.r ]
  %i.bn = trunc nsw i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0555.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !52
  %i.bp = icmp ult i32 %i.w, 208802500
  %i.bq = add nuw nsw i32 %i.be, 35
  %i.br = and i32 %i.bq, 39
  %sext.4.i = add nuw nsw i32 %i.be, 38
  %i.bs = select i1 %i.bp, i32 %i.br, i32 %sext.4.i
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  store i8 %i.bt, ptr %.0555.i, align 1, !tbaa !52
  %i.bu = add nsw i32 %.0584.i, -4                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0536.i, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0555.i, i64 5 ; 2 uses
  %i.bx = add nsw i32 %.0517.i, 5
  %i.by = icmp sgt i32 %.0517.i, 74
  br i1 %i.by, label %.lr.ph.i.preheader.i, label %putcs.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.0555.i, i64 6
  store i8 10, ptr %i.bw, align 1, !tbaa !52
  br label %putcs.exit.i

putcs.exit.i:                                     ; preds = %.lr.ph.i.preheader.i, %bb.t
  %.156.i = phi ptr [ %i.bw, %bb.t ], [ %i.bz, %.lr.ph.i.preheader.i ] ; 2 uses
  %.152.i = phi i32 [ %i.bx, %bb.t ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ca = icmp samesign ugt i32 %.0584.i, 7
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !764

._crit_edge.i:                                    ; preds = %putcs.exit.i, %bb.h
  %.058.lcssa.i = phi i32 [ %i.b, %bb.h ], [ %i.bu, %putcs.exit.i ] ; 5 uses
  %.055.lcssa.i = phi ptr [ %i.t, %bb.h ], [ %.156.i, %putcs.exit.i ] ; 3 uses
  %.053.lcssa.i = phi ptr [ %i.p, %bb.h ], [ %i.bv, %putcs.exit.i ] ; 3 uses
  %.051.lcssa.i = phi i32 [ 0, %bb.h ], [ %.152.i, %putcs.exit.i ] ; 2 uses
  %i.cb = icmp sgt i32 %.058.lcssa.i, 0
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  %i.cc = add nuw nsw i32 %.058.lcssa.i, 1        ; 2 uses
  %i.cd = load i8, ptr %.053.lcssa.i, align 1, !tbaa !52
  %i.ce = zext i8 %i.cd to i64                    ; 3 uses
  %.not.i = icmp eq i32 %.058.lcssa.i, 1
  br i1 %.not.i, label %.lr.ph21.preheader.i, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %bb.u
  %i.cf = add nsw i32 %.058.lcssa.i, -1           ; 2 uses
  %i.cg = add nsw i32 %.058.lcssa.i, -2
  %xtraiter = and i32 %i.cf, 3                    ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 3
  br i1 %i.ch, label %.lr.ph15.i.epil.preheader, label %.lr.ph15.i.preheader.new

.lr.ph15.i.preheader.new:                         ; preds = %.lr.ph15.i.preheader
  %unroll_iter = and i32 %i.cf, -4
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.lr.ph15.i, %.lr.ph15.i.preheader.new
  %.04712.i = phi i64 [ %i.ce, %.lr.ph15.i.preheader.new ], [ %i.cx, %.lr.ph15.i ]
  %.053.pn11.i = phi ptr [ %.053.lcssa.i, %.lr.ph15.i.preheader.new ], [ %.154.i.3, %.lr.ph15.i ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph15.i.preheader.new ], [ %niter.next.3, %.lr.ph15.i ]
  %.154.i = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 1
  %i.ci = load i8, ptr %.154.i, align 1, !tbaa !52
  %i.cj = zext i8 %i.ci to i64
  %.154.i.1 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 2
  %i.ck = shl i64 %.04712.i, 16
  %i.cl = shl nuw nsw i64 %i.cj, 8
  %i.cm = or disjoint i64 %i.ck, %i.cl
  %i.cn = load i8, ptr %.154.i.1, align 1, !tbaa !52
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.cm, %i.co
  %.154.i.2 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 3
  %i.cq = load i8, ptr %.154.i.2, align 1, !tbaa !52
  %i.cr = zext i8 %i.cq to i64
  %.154.i.3 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 4 ; 3 uses
  %i.cs = shl i64 %i.cp, 16
  %i.ct = shl nuw nsw i64 %i.cr, 8
  %i.cu = or disjoint i64 %i.cs, %i.ct
  %i.cv = load i8, ptr %.154.i.3, align 1, !tbaa !52
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.cu, %i.cw            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph21.preheader.i.loopexit.unr-lcssa, label %.lr.ph15.i, !llvm.loop !765

.lr.ph21.preheader.i.loopexit.unr-lcssa:          ; preds = %.lr.ph15.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph21.preheader.i, label %.lr.ph15.i.epil.preheader

.lr.ph15.i.epil.preheader:                        ; preds = %.lr.ph21.preheader.i.loopexit.unr-lcssa, %.lr.ph15.i.preheader
  %.04712.i.epil.init = phi i64 [ %i.ce, %.lr.ph15.i.preheader ], [ %i.cx, %.lr.ph21.preheader.i.loopexit.unr-lcssa ]
  %.053.pn11.i.epil.init = phi ptr [ %.053.lcssa.i, %.lr.ph15.i.preheader ], [ %.154.i.3, %.lr.ph21.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph15.i.epil

.lr.ph15.i.epil:                                  ; preds = %.lr.ph15.i.epil, %.lr.ph15.i.epil.preheader
  %.04712.i.epil = phi i64 [ %i.db, %.lr.ph15.i.epil ], [ %.04712.i.epil.init, %.lr.ph15.i.epil.preheader ]
  %.053.pn11.i.epil = phi ptr [ %.154.i.epil, %.lr.ph15.i.epil ], [ %.053.pn11.i.epil.init, %.lr.ph15.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.i.epil ], [ 0, %.lr.ph15.i.epil.preheader ]
  %.154.i.epil = getelementptr inbounds nuw i8, ptr %.053.pn11.i.epil, i64 1 ; 2 uses
  %i.cy = shl i64 %.04712.i.epil, 8
  %i.cz = load i8, ptr %.154.i.epil, align 1, !tbaa !52
  %i.da = zext i8 %i.cz to i64
  %i.db = or disjoint i64 %i.cy, %i.da            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph21.preheader.i, label %.lr.ph15.i.epil, !llvm.loop !766

.lr.ph21.preheader.i:                             ; preds = %.lr.ph21.preheader.i.loopexit.unr-lcssa, %.lr.ph15.i.epil, %bb.u
  %.047.lcssa.i = phi i64 [ %i.ce, %bb.u ], [ %i.cx, %.lr.ph21.preheader.i.loopexit.unr-lcssa ], [ %i.db, %.lr.ph15.i.epil ]
  %i.dc = zext nneg i32 %i.cc to i64              ; 2 uses
  br label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.lr.ph21.i, %.lr.ph21.preheader.i
  %indvars.iv.i = phi i64 [ %i.dc, %.lr.ph21.preheader.i ], [ %indvars.iv.next.i, %.lr.ph21.i ] ; 2 uses
  %.119.i = phi i64 [ %.047.lcssa.i, %.lr.ph21.preheader.i ], [ %i.de, %.lr.ph21.i ] ; 2 uses
  %i.dd = urem i64 %.119.i, 85                    ; 2 uses
  %i.de = udiv i64 %.119.i, 85
  %i.df = icmp samesign ult i64 %i.dd, 4
  %i.dg = trunc nuw nsw i64 %i.dd to i8
  %.v.i = select i1 %i.df, i8 35, i8 38
  %i.dh = add nuw nsw i8 %.v.i, %i.dg
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %3 = and i64 %indvars.iv.next.i, 4294967295
  %i.di = getelementptr inbounds nuw i8, ptr %.055.lcssa.i, i64 %3
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !52
  %i.dj = trunc nuw i64 %indvars.iv.i to i32
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %.lr.ph21.i, label %._crit_edge22.i, !llvm.loop !767

._crit_edge22.i:                                  ; preds = %.lr.ph21.i
  %i.dl = add nsw i32 %.051.lcssa.i, %i.cc
  %i.dm = getelementptr inbounds nuw i8, ptr %.055.lcssa.i, i64 %i.dc
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge22.i, %._crit_edge.i
  %.257.i = phi ptr [ %i.dm, %._crit_edge22.i ], [ %.055.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.2.i = phi i32 [ %i.dl, %._crit_edge22.i ], [ %.051.lcssa.i, %._crit_edge.i ]
  %i.dn = icmp sgt i32 %.2.i, 0
  br i1 %i.dn, label %.lr.ph.i66.preheader.i, label %toBase85.exit

.lr.ph.i66.preheader.i:                           ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %.257.i, i64 1
  store i8 10, ptr %.257.i, align 1, !tbaa !52
  br label %toBase85.exit

toBase85.exit:                                    ; preds = %bb.v, %.lr.ph.i66.preheader.i
  %.3.i = phi ptr [ %.257.i, %bb.v ], [ %i.do, %.lr.ph.i66.preheader.i ] ; 2 uses
  store i8 0, ptr %.3.i, align 1, !tbaa !52
  %i.dp = ptrtoint ptr %.3.i to i64
  %i.dq = ptrtoint ptr %i.t to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = trunc i64 %i.dr to i32
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.t, i32 noundef %i.ds, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.as

bb.w:                                             ; preds = %bb.a
  %i.dt = sdiv i32 %i.b, 5
  %.sext61 = sext i32 %i.dt to i64
  %i.du = shl nsw i64 %.sext61, 2
  %i.dv = srem i32 %i.b, 5
  %.sext63 = sext i32 %i.dv to i64
  %i.dw = add nsw i64 %i.du, %.sext63             ; 2 uses
  %i.dx = sext i32 %i.d to i64
  %i.dy = icmp sgt i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.312, i32 noundef -1) #45
  br label %bb.as

bb.y:                                             ; preds = %bb.w
  %i.dz = load ptr, ptr %2, align 8, !tbaa !126
  %i.ea = tail call ptr @sqlite3_value_text(ptr noundef %i.dz) #45 ; 3 uses
  %.not = icmp eq ptr %i.ea, null
  br i1 %.not, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.eb = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45
  %i.ec = tail call i32 @sqlite3_errcode(ptr noundef %i.eb) #45
  %i.ed = icmp eq i32 %i.ec, 7
  br i1 %i.ed, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @sqlite3_result_zeroblob(ptr noundef %0, i32 noundef 0) #45
  br label %bb.as

bb.ab:                                            ; preds = %bb.y
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.dw, i64 1)
  %i.ee = tail call ptr @sqlite3_malloc64(i64 noundef %spec.store.select) #45 ; 6 uses
  %.not49 = icmp eq ptr %i.ee, null
  br i1 %.not49, label %bb.ar, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = icmp sgt i32 %i.b, 0
  br i1 %i.ef, label %bb.ad, label %fromBase85.exit

bb.ad:                                            ; preds = %bb.ac
  %i.eg = zext nneg i32 %i.b to i64
  %i.eh = getelementptr i8, ptr %i.ea, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !52
  %i.ek = icmp eq i8 %i.ej, 10
  %i.el = sext i1 %i.ek to i32
  %spec.select.i = add nsw i32 %i.b, %i.el        ; 2 uses
  %.not.i52 = icmp eq i32 %spec.select.i, 0
  br i1 %.not.i52, label %fromBase85.exit, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.ad, %bb.ap
  %.04583.i = phi ptr [ %.5.i, %bb.ap ], [ %i.ee, %bb.ad ] ; 7 uses
  %.14982.i = phi i32 [ %.351.i, %bb.ap ], [ %spec.select.i, %bb.ad ] ; 3 uses
  %.05381.i = phi ptr [ %.255.i, %bb.ap ], [ %i.ea, %bb.ad ] ; 3 uses
  %i.em = zext nneg i32 %.14982.i to i64
  %scevgep.i.i = getelementptr i8, ptr %.05381.i, i64 %i.em
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph84.i
  %.in.i.i = phi i32 [ %.14982.i, %.lr.ph84.i ], [ %i.en, %bb.ag ] ; 2 uses
  %.079.i.i = phi ptr [ %.05381.i, %.lr.ph84.i ], [ %i.eu, %bb.ag ] ; 4 uses
  %i.en = add nsw i32 %.in.i.i, -1
  %i.eo = load i8, ptr %.079.i.i, align 1, !tbaa !52 ; 4 uses
  %.not.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i, label %skipNonB85.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ep = add i8 %i.eo, -35
  %i.eq = icmp ult i8 %i.ep, 4
  %i.er = icmp sgt i8 %i.eo, 41
  %.tr.i.i = xor i1 %i.er, %i.eq
  %i.es = icmp slt i8 %i.eo, 123
  %i.et = xor i1 %i.es, %.tr.i.i
  br i1 %i.et, label %bb.ag, label %skipNonB85.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 1
  %i.ev = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.ev, label %bb.ae, label %skipNonB85.exit.i, !llvm.loop !768

skipNonB85.exit.i:                                ; preds = %bb.ag, %bb.af, %bb.ae
  %.07.lcssa.i.i = phi ptr [ %.079.i.i, %bb.ae ], [ %scevgep.i.i, %bb.ag ], [ %.079.i.i, %bb.af ] ; 8 uses
  %i.ew = ptrtoint ptr %.07.lcssa.i.i to i64
  %i.ex = ptrtoint ptr %.05381.i to i64
  %.neg.i53 = sub i64 %i.ex, %i.ew
  %i.ey = trunc i64 %.neg.i53 to i32
  %i.ez = add i32 %.14982.i, %i.ey                ; 12 uses
  %i.fa = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 5) ; 7 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr @fromBase85.nboi, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !52
  %i.fe = sext i8 %i.fd to i32
  %i.ff = icmp ult i32 %i.ez, 2
  br i1 %i.ff, label %fromBase85.exit, label %.preheader.i

.preheader.i:                                     ; preds = %skipNonB85.exit.i
  %i.fg = icmp sgt i32 %i.ez, 0
  br i1 %i.fg, label %.lr.ph.i55, label %.thread.i

.lr.ph.i55:                                       ; preds = %.preheader.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 1 ; 2 uses
  %i.fi = load i8, ptr %.07.lcssa.i.i, align 1, !tbaa !52 ; 5 uses
  %i.fj = icmp sgt i8 %i.fi, 34
  %i.fk = zext i1 %i.fj to i64
  %i.fl = icmp sgt i8 %i.fi, 38
  %i.fm = zext i1 %i.fl to i64
  %i.fn = icmp sgt i8 %i.fi, 41
  %i.fo = zext i1 %i.fn to i64
  %i.fp = icmp sgt i8 %i.fi, 122
  %i.fq = zext i1 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.fk
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fm
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fo
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fq
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !52  ; 2 uses
  %i.fw = add nsw i32 %i.ez, -1
  %i.fx = icmp eq i8 %i.fv, 0
  br i1 %i.fx, label %.thread.i, label %.lr.ph.i55.1

.lr.ph.i55.1:                                     ; preds = %.lr.ph.i55
  %i.fy = zext i8 %i.fv to i64
  %i.fz = sext i8 %i.fi to i64
  %i.ga = sub nsw i64 %i.fz, %i.fy                ; 2 uses
  %i.gb = add nsw i32 %i.fa, -1
  %i.gc = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 2 ; 3 uses
  %i.gd = load i8, ptr %i.fh, align 1, !tbaa !52  ; 5 uses
  %i.ge = icmp sgt i8 %i.gd, 34
  %i.gf = zext i1 %i.ge to i64
  %i.gg = icmp sgt i8 %i.gd, 38
  %i.gh = zext i1 %i.gg to i64
  %i.gi = icmp sgt i8 %i.gd, 41
  %i.gj = zext i1 %i.gi to i64
  %i.gk = icmp sgt i8 %i.gd, 122
  %i.gl = zext i1 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.gf
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gh
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gl
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !52  ; 2 uses
  %i.gr = add nsw i32 %i.ez, -2                   ; 2 uses
  %i.gs = icmp eq i8 %i.gq, 0
  br i1 %i.gs, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i55.1
  %i.gt = zext i8 %i.gq to i64
  %i.gu = sext i8 %i.gd to i64
  %i.gv = mul nsw i64 %i.ga, 85
  %i.gw = add nsw i64 %i.gv, %i.gu
  %i.gx = sub nsw i64 %i.gw, %i.gt                ; 3 uses
  %i.gy = icmp sgt i32 %i.ez, 2
  br i1 %i.gy, label %.lr.ph.i55.2, label %.thread.i

.lr.ph.i55.2:                                     ; preds = %bb.ah
  %i.gz = add nsw i32 %i.fa, -2
  %i.ha = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 3 ; 3 uses
  %i.hb = load i8, ptr %i.gc, align 1, !tbaa !52  ; 5 uses
  %i.hc = icmp sgt i8 %i.hb, 34
  %i.hd = zext i1 %i.hc to i64
  %i.he = icmp sgt i8 %i.hb, 38
  %i.hf = zext i1 %i.he to i64
  %i.hg = icmp sgt i8 %i.hb, 41
  %i.hh = zext i1 %i.hg to i64
  %i.hi = icmp sgt i8 %i.hb, 122
  %i.hj = zext i1 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.hd
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hf
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hh
end_hunk_1
begin_hunk_2_@KeccakF1600Step:bb.a
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
  %2 = and i64 %indvars.iv.next.i36, 4294967295
  %exitcond.not.i38 = icmp eq i64 %2, 9
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
  %i.dh = phi i32 [ %i.cr, %bb.h ], [ 0, %bb.i ], [ %i.df, %.lr.ph.i48 ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph32.i43
  %i.dj = phi i32 [ %i.dh, %.lr.ph32.i43 ], [ %i.du, %bb.l ]
  %indvars.iv.i44 = phi i64 [ %.1.i4280, %.lr.ph32.i43 ], [ %indvars.iv.next.i45, %bb.l ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i44
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !52
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !52
  %i.dp = xor i8 %i.do, %i.dl
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !52
  %i.dq = load i32, ptr %i.cq, align 4, !tbaa !131
  %i.dr = add i32 %i.dq, 1                        ; 3 uses
  store i32 %i.dr, ptr %i.cq, align 4, !tbaa !131
  %i.ds = load i32, ptr %i.di, align 8, !tbaa !129
  %i.dt = icmp eq i32 %i.dr, %i.ds
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.cq, align 4, !tbaa !131
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.du = phi i32 [ %i.dr, %bb.j ], [ 0, %bb.k ]
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %3 = and i64 %indvars.iv.next.i45, 4294967295
  %exitcond.not.i47 = icmp eq i64 %3, 9
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
  %i.eh = phi i32 [ %i.dz, %.lr.ph.i60 ], [ %i.et, %bb.q ]
  %.030.i61 = phi i32 [ 0, %.lr.ph.i60 ], [ %i.eu, %bb.q ] ; 2 uses
  %i.ei = zext i32 %.030.i61 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !130
  %i.el = lshr i32 %i.eh, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !52
  %i.ep = xor i64 %i.eo, %i.ek
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !52
  %i.eq = load i32, ptr %i.dy, align 4, !tbaa !131
  %i.er = add i32 %i.eq, 8                        ; 3 uses
  store i32 %i.er, ptr %i.dy, align 4, !tbaa !131
  %i.es = load i32, ptr %i.eg, align 8, !tbaa !129
  %.not.i62 = icmp ult i32 %i.er, %i.es
  br i1 %.not.i62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.dy, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.et = phi i32 [ %i.er, %bb.o ], [ 0, %bb.p ]  ; 2 uses
  %i.eu = add i32 %.030.i61, 8                    ; 3 uses
  %i.ev = or disjoint i32 %i.eu, 7
  %i.ew = icmp ult i32 %i.ev, %i.dv
  br i1 %i.ew, label %bb.o, label %.loopexit29.i53, !llvm.loop !8

.loopexit29.i53:                                  ; preds = %bb.q, %bb.n
  %i.ex = phi i32 [ %i.dz, %bb.n ], [ %i.et, %bb.q ]
  %.1.i54 = phi i32 [ 0, %bb.n ], [ %i.eu, %bb.q ] ; 2 uses
  %i.ey = icmp ult i32 %.1.i54, %i.dv
  br i1 %i.ey, label %.lr.ph32.i55, label %SHA3Update.exit

.lr.ph32.i55:                                     ; preds = %.loopexit29.i53
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.fa = zext i32 %.1.i54 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph32.i55
  %i.fb = phi i32 [ %i.ex, %.lr.ph32.i55 ], [ %i.fm, %bb.t ]
  %indvars.iv.i56 = phi i64 [ %i.fa, %.lr.ph32.i55 ], [ %indvars.iv.next.i57, %bb.t ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.i56
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !52
  %i.fe = zext i32 %i.fb to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !52
  %i.fh = xor i8 %i.fg, %i.fd
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !52
  %i.fi = load i32, ptr %i.dy, align 4, !tbaa !131
  %i.fj = add i32 %i.fi, 1                        ; 3 uses
  store i32 %i.fj, ptr %i.dy, align 4, !tbaa !131
  %i.fk = load i32, ptr %i.ez, align 8, !tbaa !129
  %i.fl = icmp eq i32 %i.fj, %i.fk
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.dy, align 4, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fm = phi i32 [ %i.fj, %bb.r ], [ 0, %bb.s ]
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %lftr.wideiv99 = trunc i64 %indvars.iv.next.i57 to i32
  %exitcond100 = icmp eq i32 %i.dv, %lftr.wideiv99
  br i1 %exitcond100, label %SHA3Update.exit, label %bb.r, !llvm.loop !9

bb.u:                                             ; preds = %bb.a
  %i.fn = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.fo = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.295, i32 noundef %i.fn)
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %SHA3Update.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !131 ; 3 uses
  %i.fs = and i32 %i.fr, 7
  %i.ft = icmp eq i32 %i.fs, 0
  %i.fu = ptrtoint ptr %i.fo to i64
  %i.fv = and i64 %i.fu, 7
  %i.fw = icmp eq i64 %i.fv, 0
  %or.cond.i64 = and i1 %i.fw, %i.ft
  %i.fx = icmp ugt i32 %i.fn, 7
  %or.cond33.i65 = and i1 %i.fx, %or.cond.i64
  br i1 %or.cond33.i65, label %.lr.ph.i73, label %.loopexit29.i66

.lr.ph.i73:                                       ; preds = %bb.v
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i73
  %i.fz = phi i32 [ %i.fr, %.lr.ph.i73 ], [ %i.gl, %bb.y ]
  %.030.i74 = phi i32 [ 0, %.lr.ph.i73 ], [ %i.gm, %bb.y ] ; 2 uses
  %i.ga = zext i32 %.030.i74 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !130
  %i.gd = lshr i32 %i.fz, 3
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ge ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !52
  %i.gh = xor i64 %i.gg, %i.gc
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !52
  %i.gi = load i32, ptr %i.fq, align 4, !tbaa !131
  %i.gj = add i32 %i.gi, 8                        ; 3 uses
  store i32 %i.gj, ptr %i.fq, align 4, !tbaa !131
  %i.gk = load i32, ptr %i.fy, align 8, !tbaa !129
  %.not.i75 = icmp ult i32 %i.gj, %i.gk
  br i1 %.not.i75, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fq, align 4, !tbaa !131
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gl = phi i32 [ %i.gj, %bb.w ], [ 0, %bb.x ]  ; 2 uses
  %i.gm = add i32 %.030.i74, 8                    ; 3 uses
  %i.gn = or disjoint i32 %i.gm, 7
  %i.go = icmp ult i32 %i.gn, %i.fn
  br i1 %i.go, label %bb.w, label %.loopexit29.i66, !llvm.loop !8

.loopexit29.i66:                                  ; preds = %bb.y, %bb.v
  %i.gp = phi i32 [ %i.fr, %bb.v ], [ %i.gl, %bb.y ]
  %.1.i67 = phi i32 [ 0, %bb.v ], [ %i.gm, %bb.y ] ; 2 uses
  %i.gq = icmp ult i32 %.1.i67, %i.fn
  br i1 %i.gq, label %.lr.ph32.i68, label %SHA3Update.exit

.lr.ph32.i68:                                     ; preds = %.loopexit29.i66
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.gs = zext i32 %.1.i67 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph32.i68
  %i.gt = phi i32 [ %i.gp, %.lr.ph32.i68 ], [ %i.he, %bb.ab ]
  %indvars.iv.i69 = phi i64 [ %i.gs, %.lr.ph32.i68 ], [ %indvars.iv.next.i70, %bb.ab ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv.i69
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !52
  %i.gw = zext i32 %i.gt to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 %i.gw ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !52
  %i.gz = xor i8 %i.gy, %i.gv
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !52
  %i.ha = load i32, ptr %i.fq, align 4, !tbaa !131
  %i.hb = add i32 %i.ha, 1                        ; 3 uses
  store i32 %i.hb, ptr %i.fq, align 4, !tbaa !131
  %i.hc = load i32, ptr %i.gr, align 8, !tbaa !129
  %i.hd = icmp eq i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fq, align 4, !tbaa !131
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.he = phi i32 [ %i.hb, %bb.z ], [ 0, %bb.aa ]
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i70 to i32
  %exitcond = icmp eq i32 %i.fn, %lftr.wideiv
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
  %i.l = phi i32 [ %i.w, %bb.d ], [ %i.f, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !130
  %i.o = lshr i32 %i.l, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !52
  %i.s = xor i64 %i.r, %i.n
  store i64 %i.s, ptr %i.q, align 8, !tbaa !52
  %i.t = load i32, ptr %i.e, align 4, !tbaa !131
  %i.u = add i32 %i.t, 8                          ; 3 uses
  store i32 %i.u, ptr %i.e, align 4, !tbaa !131
  %i.v = load i32, ptr %i.j, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ %i.u, %bb.b ], [ 0, %bb.c ]    ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 8   ; 3 uses
  %i.x = or disjoint i64 %indvars.iv.next, 7
  %i.y = icmp ult i64 %i.x, %i.k
  br i1 %i.y, label %bb.b, label %.loopexit29.i.loopexit, !llvm.loop !8

.loopexit29.i.loopexit:                           ; preds = %bb.d
  %i.z = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit29.i.loopexit, %bb.a
  %i.aa = phi i32 [ %i.f, %bb.a ], [ %i.w, %.loopexit29.i.loopexit ]
  %.1.i = phi i32 [ 0, %bb.a ], [ %i.z, %.loopexit29.i.loopexit ] ; 2 uses
  %i.ab = icmp ult i32 %.1.i, %i.d
  br i1 %i.ab, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ad = zext i32 %.1.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph32.i
  %i.ae = phi i32 [ %i.aa, %.lr.ph32.i ], [ %i.ap, %bb.g ]
  %indvars.iv.i = phi i64 [ %i.ad, %.lr.ph32.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !52
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = xor i8 %i.aj, %i.ag
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !52
  %i.al = load i32, ptr %i.e, align 4, !tbaa !131
  %i.am = add i32 %i.al, 1                        ; 3 uses
  store i32 %i.am, ptr %i.e, align 4, !tbaa !131
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !129
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi i32 [ %i.am, %bb.e ], [ 0, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
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
  %i.bh = trunc nuw i32 %i.bg to i8               ; 3 uses
  %i.bi = lshr i32 %i.bf, 16
  %i.bj = trunc i32 %i.bi to i8                   ; 3 uses
  %i.bk = lshr i32 %i.bf, 8
  %i.bl = trunc i32 %i.bk to i8                   ; 3 uses
  %i.bm = trunc i32 %i.bf to i8                   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !53 ; 4 uses
  %i.bp = lshr i32 %i.bo, 24
  %i.bq = trunc nuw i32 %i.bp to i8               ; 3 uses
  %i.br = lshr i32 %i.bo, 16
  %i.bs = trunc i32 %i.br to i8                   ; 3 uses
  %i.bt = lshr i32 %i.bo, 8
  %i.bu = trunc i32 %i.bt to i8                   ; 3 uses
  %i.bv = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !53 ; 4 uses
  %i.by = lshr i32 %i.bx, 24
  %i.bz = trunc nuw i32 %i.by to i8               ; 3 uses
  %i.ca = lshr i32 %i.bx, 16
  %i.cb = trunc i32 %i.ca to i8                   ; 3 uses
  %i.cc = lshr i32 %i.bx, 8
  %i.cd = trunc i32 %i.cc to i8                   ; 3 uses
  %i.ce = trunc i32 %i.bx to i8                   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !53 ; 4 uses
  %i.ch = lshr i32 %i.cg, 24
  %i.ci = trunc nuw i32 %i.ch to i8               ; 3 uses
  %i.cj = lshr i32 %i.cg, 16
  %i.ck = trunc i32 %i.cj to i8                   ; 3 uses
  %i.cl = lshr i32 %i.cg, 8
  %i.cm = trunc i32 %i.cl to i8                   ; 3 uses
  %i.cn = trunc i32 %i.cg to i8                   ; 3 uses
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %.preheader.preheader, label %bb.l

.preheader.preheader:                             ; preds = %hash_step.exit33
  %i.co = lshr i8 %i.ay, 4
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !52
  store i8 %i.cr, ptr %1, align 1, !tbaa !52
  %i.cs = and i8 %i.ay, 15
  %i.ct = zext nneg i8 %i.cs to i64
end_hunk_2
begin_hunk_3_@decimal_result:bb.a
  %i.aa = xor i32 %i.s, -1
  %i.ab = add i32 %i.q, %i.aa                     ; 2 uses
  %wide.trip.count = zext i32 %i.ab to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.058 = phi i32 [ %i.t, %.lr.ph ], [ %i.af, %bb.o ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !52
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = add nsw i32 %.058, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph66.loopexit, label %bb.n, !llvm.loop !1080

.critedge:                                        ; preds = %bb.n
  %i.ag = icmp sgt i32 %.058, 0
  br i1 %i.ag, label %.lr.ph66, label %._crit_edge

.lr.ph66.loopexit:                                ; preds = %bb.o
  %i.ah = zext i32 %i.ab to i64
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.loopexit, %bb.m, %.critedge
  %.0.lcssa98 = phi i32 [ %.058, %.critedge ], [ 1, %bb.m ], [ 1, %.lr.ph66.loopexit ] ; 3 uses
  %.045.lcssa97 = phi i64 [ %indvars.iv, %.critedge ], [ 0, %bb.m ], [ %i.ah, %.lr.ph66.loopexit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = zext nneg i32 %.047 to i64              ; 3 uses
  %i.ak = add nuw i32 %.0.lcssa98, %.047          ; 3 uses
  %wide.trip.count79 = zext i32 %i.ak to i64
  %i.al = and i32 %.0.lcssa98, 1
  %lcmp.mod.not = icmp eq i32 %i.al, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph66
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.045.lcssa97
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52
  %i.ap = add i8 %i.ao, 48
  %indvars.iv.next75.prol = add nuw nsw i64 %i.aj, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aj
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !52
  %indvars.iv.next73.prol = add nuw nsw i64 %.045.lcssa97, 1 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph66
  %indvars.iv.next73.lcssa.unr = phi i64 [ poison, %.lr.ph66 ], [ %indvars.iv.next73.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv74.unr = phi i64 [ %i.aj, %.lr.ph66 ], [ %indvars.iv.next75.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv72.unr = phi i64 [ %.045.lcssa97, %.lr.ph66 ], [ %indvars.iv.next73.prol, %.prol.loopexit.unr-lcssa ]
  %i.ar = icmp eq i32 %.0.lcssa98, 1
  br i1 %i.ar, label %._crit_edge, label %.lr.ph66.new

.lr.ph66.new:                                     ; preds = %.prol.loopexit, %.lr.ph66.new
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.1, %.lr.ph66.new ], [ %indvars.iv74.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.lr.ph66.new ], [ %indvars.iv72.unr, %.prol.loopexit ] ; 3 uses
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv72
  %i.au = load i8, ptr %i.at, align 1, !tbaa !52
  %i.av = add i8 %i.au, 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv74
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !52
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv72
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !52
  %i.bb = add i8 %i.ba, 48
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv74
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !52
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %exitcond80.not.1 = icmp eq i64 %indvars.iv.next75.1, %wide.trip.count79
  br i1 %exitcond80.not.1, label %._crit_edge, label %.lr.ph66.new, !llvm.loop !1081

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph66.new, %.critedge.thread99, %.critedge
  %.249.lcssa = phi i32 [ %.047, %.critedge ], [ %i.v, %.critedge.thread99 ], [ %i.ak, %.lr.ph66.new ], [ %i.ak, %.prol.loopexit ] ; 3 uses
  %.146.lcssa = phi i64 [ %indvars.iv, %.critedge ], [ 0, %.critedge.thread99 ], [ %indvars.iv.next73.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next73.1, %.lr.ph66.new ]
  %i.be = load i32, ptr %i.r, align 8, !tbaa !143
  %.not55 = icmp eq i32 %i.be, 0
  br i1 %.not55, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.bf = add nuw i32 %.249.lcssa, 1
  %i.bg = sext i32 %.249.lcssa to i64
  %i.bh = getelementptr inbounds i8, ptr %i.j, i64 %i.bg
  store i8 46, ptr %i.bh, align 1, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = sext i32 %i.bf to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.q ], [ %.146.lcssa, %bb.p ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.q ], [ %i.bj, %bb.p ] ; 2 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !139
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv83
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !52
  %i.bn = add i8 %i.bm, 48
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv81
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !52
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bp = load i32, ptr %i.f, align 4, !tbaa !138
  %i.bq = trunc nuw i64 %indvars.iv.next84 to i32
  %i.br = icmp sgt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.q, label %.loopexit.loopexit, !llvm.loop !1082

.loopexit.loopexit:                               ; preds = %bb.q
  %i.bs = trunc nsw i64 %indvars.iv.next82 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %.4 = phi i32 [ %.249.lcssa, %._crit_edge ], [ %i.bs, %.loopexit.loopexit ] ; 2 uses
  %i.bt = sext i32 %.4 to i64
  %i.bu = getelementptr inbounds i8, ptr %i.j, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !52
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.j, i32 noundef %.4, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decimalNewFromText(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @sqlite3_malloc64(i64 noundef 24) #45 ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 14 uses
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 10 uses
  store i32 0, ptr %i.e, align 8, !tbaa !143
  %i.f = add nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @sqlite3_malloc64(i64 noundef %i.g) #45 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 9 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !139
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %.thread294, label %.preheader231

.preheader231:                                    ; preds = %bb.c
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %.critedge198

.lr.ph:                                           ; preds = %.preheader231
  %i.l = tail call ptr @__ctype_b_loc() #47
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52    ; 3 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !98
  %i.s = and i16 %i.r, 8192
  %.not = icmp eq i16 %i.s, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !1083

.critedge:                                        ; preds = %bb.d
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.u = icmp eq i8 %i.o, 45
  br i1 %i.u, label %bb.f, label %.critedge197

bb.f:                                             ; preds = %.critedge
  store i8 1, ptr %i.b, align 8, !tbaa !142
  %i.v = add nuw nsw i32 %i.t, 1
  br label %.critedge198

.critedge197:                                     ; preds = %.critedge
  %i.w = icmp eq i8 %i.o, 43
  %i.x = zext i1 %i.w to i32
  %spec.select = add nuw nsw i32 %i.t, %i.x
  br label %.critedge198

.critedge198:                                     ; preds = %.preheader231, %.critedge197, %bb.f
  %.1161 = phi i32 [ %i.v, %bb.f ], [ %spec.select, %.critedge197 ], [ 0, %.preheader231 ] ; 3 uses
  %i.y = icmp slt i32 %.1161, %1
  br i1 %i.y, label %.lr.ph238.preheader, label %.critedge2

.lr.ph238.preheader:                              ; preds = %.critedge198
  %i.z = sext i32 %.1161 to i64
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.g
  %indvars.iv256 = phi i64 [ %i.z, %.lr.ph238.preheader ], [ %indvars.iv.next257, %bb.g ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %indvars.iv256
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.g, label %.critedge2.loopexit

bb.g:                                             ; preds = %.lr.ph238
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next257 to i32
  %exitcond259.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond259.not, label %.thread, label %.lr.ph238, !llvm.loop !1084

.critedge2.loopexit:                              ; preds = %.lr.ph238
  %i.ad = trunc nsw i64 %indvars.iv256 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge198
  %.2162.lcssa = phi i32 [ %.1161, %.critedge198 ], [ %i.ad, %.critedge2.loopexit ] ; 2 uses
  %i.ae = icmp slt i32 %.2162.lcssa, %1
  br i1 %i.ae, label %.lr.ph243.preheader, label %.thread

.lr.ph243.preheader:                              ; preds = %.critedge2
  %i.af = sext i32 %.2162.lcssa to i64
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.n
  %indvars.iv260 = phi i64 [ %i.af, %.lr.ph243.preheader ], [ %indvars.iv.next261, %bb.n ] ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %indvars.iv260
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !52  ; 3 uses
  %i.ai = add i8 %i.ah, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.ai, 10
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph243
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !138 ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.d, align 4, !tbaa !138
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  store i8 %i.ai, ptr %i.an, align 1, !tbaa !52
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph243
  %i.ao = icmp eq i8 %i.ah, 46
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.d, align 4, !tbaa !138
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !143
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ar = and i8 %i.ah, -33
  %or.cond7 = icmp eq i8 %i.ar, 69
  br i1 %or.cond7, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = trunc nsw i64 %indvars.iv260 to i32     ; 2 uses
  %i.at = add nsw i32 %i.as, 1                    ; 3 uses
  %.not184 = icmp slt i32 %i.at, %1
  br i1 %.not184, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !52  ; 2 uses
  %.not186 = icmp eq i8 %i.aw, 45                 ; 2 uses
  %i.ax = add nsw i32 %i.as, 2
  %i.ay = icmp eq i8 %i.aw, 43
  %i.az = or i1 %.not186, %i.ay
  %.0153 = select i1 %i.az, i32 %i.ax, i32 %i.at  ; 2 uses
  %i.ba = icmp slt i32 %.0153, %1
  br i1 %i.ba, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %bb.m
  %i.bb = sext i32 %.0153 to i64
  %2 = sext i32 %1 to i64
  br label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %.lr.ph246
  %indvars.iv265 = phi i64 [ %i.bb, %.lr.ph246.preheader ], [ %indvars.iv.next266, %.lr.ph246 ] ; 2 uses
  %.1156244 = phi i32 [ 0, %.lr.ph246.preheader ], [ %.2157, %.lr.ph246 ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %indvars.iv265
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !52  ; 2 uses
  %i.be = sext i8 %i.bd to i32
  %i.bf = add i8 %i.bd, -48
  %or.cond200 = icmp ult i8 %i.bf, 10
  %i.bg = mul nsw i32 %.1156244, 10
  %i.bh = add i32 %i.bg, -48
  %i.bi = add i32 %i.bh, %i.be
  %.2157 = select i1 %or.cond200, i32 %i.bi, i32 %.1156244 ; 3 uses
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.bj = icmp slt i64 %indvars.iv.next266, %2
  %i.bk = icmp slt i32 %.2157, 1000000
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %.lr.ph246, label %._crit_edge, !llvm.loop !1085

._crit_edge:                                      ; preds = %.lr.ph246, %bb.m
  %.1156.lcssa = phi i32 [ 0, %bb.m ], [ %.2157, %.lr.ph246 ] ; 2 uses
  %i.bm = sub nsw i32 0, %.1156.lcssa
  %spec.select201 = select i1 %.not186, i32 %i.bm, i32 %.1156.lcssa
  br label %.thread

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.j
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1 ; 2 uses
  %lftr.wideiv263 = trunc i64 %indvars.iv.next261 to i32
  %exitcond264.not = icmp eq i32 %1, %lftr.wideiv263
  br i1 %exitcond264.not, label %.thread, label %.lr.ph243

.thread:                                          ; preds = %bb.e, %bb.g, %bb.n, %.critedge2, %._crit_edge, %bb.l
  %.6 = phi i32 [ %spec.select201, %._crit_edge ], [ 0, %bb.l ], [ 0, %.critedge2 ], [ 0, %bb.n ], [ 0, %bb.g ], [ 0, %bb.e ] ; 10 uses
  %i.bn = load i32, ptr %i.e, align 8, !tbaa !143 ; 2 uses
  %.not187 = icmp eq i32 %i.bn, 0
  br i1 %.not187, label %.thread291, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !138
  %reass.sub = sub i32 %i.bo, %i.bn               ; 2 uses
  %i.bp = add i32 %reass.sub, 1                   ; 5 uses
  store i32 %i.bp, ptr %i.e, align 8, !tbaa !143
  %i.bq = icmp sgt i32 %.6, 0
  br i1 %i.bq, label %bb.p, label %bb.s

.thread291:                                       ; preds = %.thread
  %i.br = icmp sgt i32 %.6, 0
  br i1 %i.br, label %.thread206, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bs = icmp ult i32 %reass.sub, 2147483647
  br i1 %i.bs, label %bb.q, label %.thread206

bb.q:                                             ; preds = %bb.p
  %.not192 = icmp samesign ugt i32 %.6, %i.bp
  br i1 %.not192, label %bb.r, label %.thread209

.thread209:                                       ; preds = %bb.q
  %i.bt = sub nuw nsw i32 %i.bp, %.6
  store i32 %i.bt, ptr %i.e, align 8, !tbaa !143
  %.pr.pre.pre = load i32, ptr %i.d, align 4, !tbaa !138
  br label %.thread223

bb.r:                                             ; preds = %bb.q
  %i.bu = sub nuw nsw i32 %.6, %i.bp
  store i32 0, ptr %i.e, align 8, !tbaa !143
  br label %.thread206

.thread206:                                       ; preds = %.thread291, %bb.r, %bb.p
  %.7208 = phi i32 [ %i.bu, %bb.r ], [ %.6, %bb.p ], [ %.6, %.thread291 ] ; 2 uses
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !138
  %i.bx = sext i32 %i.bw to i64
  %i.by = zext nneg i32 %.7208 to i64             ; 2 uses
  %i.bz = add nuw nsw i64 %i.by, 1
  %i.ca = add nsw i64 %i.bz, %i.bx
  %i.cb = tail call ptr @sqlite3_realloc64(ptr noundef %i.bv, i64 noundef %i.ca) #45 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.z, label %.thread211

.thread211:                                       ; preds = %.thread206
  store ptr %i.cb, ptr %i.i, align 8, !tbaa !139
  %i.cd = load i32, ptr %i.d, align 4, !tbaa !138
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cf, i8 0, i64 %i.by, i1 false)
  %i.cg = load i32, ptr %i.d, align 4, !tbaa !138
  %i.ch = add nsw i32 %i.cg, %.7208               ; 2 uses
  store i32 %i.ch, ptr %i.d, align 4, !tbaa !138
  br label %.thread223

bb.s:                                             ; preds = %.thread291, %bb.o
  %i.ci = phi i32 [ 0, %.thread291 ], [ %i.bp, %bb.o ] ; 2 uses
  %i.cj = icmp slt i32 %.6, 0
  %.pr.pre.pre273 = load i32, ptr %i.d, align 4, !tbaa !138 ; 6 uses
  br i1 %i.cj, label %bb.t, label %.thread223

bb.t:                                             ; preds = %bb.s
  %i.ck = sub nsw i32 0, %.6                      ; 3 uses
  %i.cl = xor i32 %i.ci, -1
  %i.cm = add i32 %.pr.pre.pre273, %i.cl          ; 3 uses
  %.not188 = icmp eq i32 %i.cm, 0
  br i1 %.not188, label %.thread216, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not189 = icmp slt i32 %i.cm, %i.ck
  br i1 %.not189, label %bb.v, label %.thread213

.thread213:                                       ; preds = %bb.u
  %i.cn = sub nsw i32 %i.ci, %.6
  store i32 %i.cn, ptr %i.e, align 8, !tbaa !143
  br label %.thread223

bb.v:                                             ; preds = %bb.u
  %i.co = sub nsw i32 %i.ck, %i.cm                ; 2 uses
  %i.cp = add nsw i32 %.pr.pre.pre273, -1
  store i32 %i.cp, ptr %i.e, align 8, !tbaa !143
  %.not190 = icmp eq i32 %i.co, 0
  br i1 %.not190, label %.thread223, label %.thread216

.thread216:                                       ; preds = %bb.t, %bb.v
  %.8219 = phi i32 [ %i.co, %bb.v ], [ %i.ck, %bb.t ] ; 3 uses
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.cr = sext i32 %.pr.pre.pre273 to i64
  %i.cs = zext nneg i32 %.8219 to i64             ; 3 uses
  %i.ct = add nsw i64 %i.cr, 1
  %i.cu = add nsw i64 %i.ct, %i.cs
  %i.cv = tail call ptr @sqlite3_realloc64(ptr noundef %i.cq, i64 noundef %i.cu) #45 ; 4 uses
  %.not191 = icmp eq ptr %i.cv, null
  br i1 %.not191, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread216
  store ptr %i.cv, ptr %i.i, align 8, !tbaa !139
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs
  %i.cx = load i32, ptr %i.d, align 4, !tbaa !138
  %i.cy = sext i32 %i.cx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 1 %i.cv, i64 %i.cy, i1 false)
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !139
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cz, i8 0, i64 %i.cs, i1 false)
  %i.da = load i32, ptr %i.d, align 4, !tbaa !138
  %i.db = add nsw i32 %i.da, %.8219               ; 2 uses
  store i32 %i.db, ptr %i.d, align 4, !tbaa !138
  %i.dc = load i32, ptr %i.e, align 8, !tbaa !143
  %i.dd = add nsw i32 %i.dc, %.8219
  store i32 %i.dd, ptr %i.e, align 8, !tbaa !143
  br label %.thread223

.thread223:                                       ; preds = %bb.v, %.thread213, %bb.w, %.thread211, %.thread209, %bb.s
  %.pr.pre = phi i32 [ %.pr.pre.pre273, %bb.v ], [ %.pr.pre.pre273, %.thread213 ], [ %i.db, %bb.w ], [ %i.ch, %.thread211 ], [ %.pr.pre.pre, %.thread209 ], [ %.pr.pre.pre273, %bb.s ] ; 3 uses
  %i.de = load i8, ptr %i.b, align 8, !tbaa !142
  %.not193 = icmp eq i8 %i.de, 0
  br i1 %.not193, label %thread-pre-split, label %.preheader

.preheader:                                       ; preds = %.thread223
  %i.df = icmp sgt i32 %.pr.pre, 0
  br i1 %i.df, label %.lr.ph249, label %.critedge9

.lr.ph249:                                        ; preds = %.preheader
  %i.dg = load ptr, ptr %i.i, align 8, !tbaa !139
  %wide.trip.count271 = zext nneg i32 %.pr.pre to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.critedge9, label %bb.y, !llvm.loop !1086

bb.y:                                             ; preds = %.lr.ph249, %bb.x
  %indvars.iv268 = phi i64 [ 0, %.lr.ph249 ], [ %indvars.iv.next269, %bb.x ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv268
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !52
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.x, label %thread-pre-split

.critedge9:                                       ; preds = %bb.x, %.preheader
  store i8 0, ptr %i.b, align 8, !tbaa !142
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.y, %.thread223, %.critedge9
  %i.dk = icmp sgt i32 %.pr.pre, 10000000
  br i1 %i.dk, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %thread-pre-split, %.thread206, %.thread216
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !139  ; 2 uses
  %.not196 = icmp eq ptr %.pr, null
  br i1 %.not196, label %.thread294, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @sqlite3_free(ptr noundef nonnull %.pr) #45
  br label %.thread294

.thread294:                                       ; preds = %bb.c, %bb.aa, %bb.z
  tail call void @sqlite3_free(ptr noundef nonnull %i.b) #45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.b, %.thread294, %thread-pre-split
  %.0167 = phi ptr [ %i.b, %thread-pre-split ], [ null, %.thread294 ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0167
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decimalFromDouble(double noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = fcmp uge double %0, 0.000000e+00         ; 2 uses
  %or.cond = fcmp oeq double %0, 0.000000e+00
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fneg double %0
  %.031 = select i1 %i.b, double %0, double %i.c
  %i.d = bitcast double %.031 to i64              ; 3 uses
  %i.e = ashr i64 %i.d, 52                        ; 3 uses
  %i.f = trunc nsw i64 %i.e to i32                ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  %i.h = shl nuw nsw i64 %i.d, 1
  %i.i = and i64 %i.d, 4503599627370495
  %i.j = or disjoint i64 %i.i, 4503599627370496
  %.029 = select i1 %i.g, i64 %i.h, i64 %i.j      ; 4 uses
  %i.k = icmp slt i64 %i.e, 1075
  %i.l = icmp ne i64 %.029, 0
  %i.m = and i64 %.029, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  %i.p = select i1 %i.k, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
end_hunk_3
