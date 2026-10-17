Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 107
begin_hunk_0_@sqlite3_blob_write:bb.a
  br i1 %i.aa, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 105
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !341
  %.not24.i.i = icmp eq i8 %i.ac, 1
  br i1 %.not24.i.i, label %bb.i, label %.critedge.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !348
  %.not25.i.i = icmp eq i32 %i.ae, %i.y
  br i1 %.not25.i.i, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !346
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %.0204.i.i, align 8, !tbaa !347
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !350 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not27.i.i = icmp eq ptr %i.aj, %.val.i
  br i1 %.not27.i.i, label %.critedge.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !353
  %i.an = and i32 %i.am, 16384
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread.i, label %.critedge.i.i

bb.n:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !354
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !357
  %.not26.i.i = icmp eq i32 %i.as, %i.y
  br i1 %.not26.i.i, label %.critedge.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call fastcc i32 @moveToRoot(ptr noundef nonnull %.0204.i.i) ; 0 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %.lr.ph.i.i
  %.020.in.i.i = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 16
  %.020.i.i = load ptr, ptr %.020.in.i.i, align 8, !tbaa !352 ; 2 uses
  %.not.i.i3 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i3, label %.loopexit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !12

.loopexit.loopexit.i:                             ; preds = %.critedge.i.i
  %.pre.i = load i8, ptr %i.o, align 1, !tbaa !341
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.g
  %i.au = phi i8 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.p, %bb.g ]
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %.loopexit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !354
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !358
  %.not15.i = icmp eq i8 %i.az, 0
  br i1 %.not15.i, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call fastcc i32 @accessPayload(ptr noundef nonnull %i.k, i32 noundef %i.n, i32 noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef 1)
  br label %sqlite3BtreePutData.exit

sqlite3BtreePutData.exit:                         ; preds = %bb.e, %bb.q
  %.0.i = phi i32 [ %i.t, %bb.e ], [ %i.ba, %bb.q ] ; 2 uses
  %i.bb = icmp eq i32 %.0.i, 4
  br i1 %i.bb, label %sqlite3BtreePutData.exit.thread6, label %.thread.i

sqlite3BtreePutData.exit.thread6:                 ; preds = %bb.d, %sqlite3BtreePutData.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !178
  switch i32 %i.bd, label %sqlite3VdbeFinalize.exit.i [
    i32 -1108210269, label %bb.r
    i32 1369188723, label %bb.r
    i32 649915045, label %bb.s
  ]

bb.r:                                             ; preds = %sqlite3BtreePutData.exit.thread6, %sqlite3BtreePutData.exit.thread6
  %i.be = tail call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %sqlite3BtreePutData.exit.thread6
  tail call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %i.h)
  br label %sqlite3VdbeFinalize.exit.i

sqlite3VdbeFinalize.exit.i:                       ; preds = %bb.s, %sqlite3BtreePutData.exit.thread6
  store ptr null, ptr %i.g, align 8, !tbaa !335
  br label %bb.t

.thread.i:                                        ; preds = %bb.m, %bb.k, %bb.p, %.loopexit.i, %bb.f, %sqlite3BtreePutData.exit
  %.0.i5 = phi i32 [ %.0.i, %sqlite3BtreePutData.exit ], [ 1, %.loopexit.i ], [ 8, %bb.f ], [ 1, %bb.p ], [ 6, %bb.k ], [ 6, %bb.m ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %.0.i5, ptr %i.bf, align 8, !tbaa !201
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 188
  store i32 %.0.i5, ptr %i.bg, align 4, !tbaa !200
  br label %bb.u

bb.t:                                             ; preds = %sqlite3VdbeFinalize.exit.i, %bb.b
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %blobReadWrite.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.028.i = phi i32 [ %.0.i5, %.thread.i ], [ 4, %bb.t ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 42 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !202
  %.not7.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not7.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !191 ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not12.i.i.i, label %sqlite3Error.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 7, ptr %i.bl, align 8, !tbaa !201
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 36 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !197
  %i.bo = and i16 %i.bn, -32
  %i.bp = or disjoint i16 %i.bo, 1
  store i16 %i.bp, ptr %i.bm, align 4, !tbaa !197
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 38
  store i8 5, ptr %i.bq, align 2, !tbaa !199
  br label %sqlite3Error.exit.i.i

sqlite3Error.exit.i.i:                            ; preds = %bb.w, %bb.v
  store i8 0, ptr %i.bh, align 2, !tbaa !202
  br label %bb.x

bb.x:                                             ; preds = %sqlite3Error.exit.i.i, %bb.u
  %.0.ph.i.i = phi i32 [ %.028.i, %bb.u ], [ 7, %sqlite3Error.exit.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !205
  %i.bt = and i32 %i.bs, %.0.ph.i.i
  br label %blobReadWrite.exit

blobReadWrite.exit:                               ; preds = %bb.a, %bb.t, %bb.x
  %.023.i = phi i32 [ 1, %bb.a ], [ %i.bt, %bb.x ], [ 4, %bb.t ]
  ret i32 %.023.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sqlite3_blob_bytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !338
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @sqlite3_set_authorizer(ptr nofree noundef captures(none) initializes((272, 288)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %1, ptr %i.a, align 8, !tbaa !359
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %2, ptr %i.b, align 8, !tbaa !360
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.04.i = load ptr, ptr %i.c, align 8, !tbaa !265 ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.04.i, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 339
  store i8 1, ptr %i.d, align 1, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %.0.i = load ptr, ptr %i.e, align 8, !tbaa !265 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i, !llvm.loop !13

sqlite3ExpirePreparedStatements.exit:             ; preds = %.lr.ph.i, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_exec(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8, !tbaa !263
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.ao, label %.preheader199

.preheader199:                                    ; preds = %bb.a
  %i.d = icmp eq ptr %0, null                     ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 4 uses
  %.not116 = icmp eq ptr %2, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %sqlite3LockAndPrepare.exit.thread.outer

sqlite3LockAndPrepare.exit.thread.outer:          ; preds = %sqlite3LockAndPrepare.exit.thread.outer.backedge, %.preheader199
  %.093.ph = phi ptr [ %1, %.preheader199 ], [ %.093.ph.be.a, %sqlite3LockAndPrepare.exit.thread.outer.backedge ] ; 3 uses
  %.088.ph = phi i32 [ 0, %.preheader199 ], [ %.088.ph.be.a, %sqlite3LockAndPrepare.exit.thread.outer.backedge ]
  %.081.ph = phi i32 [ 0, %.preheader199 ], [ %.081.ph.be.a, %sqlite3LockAndPrepare.exit.thread.outer.backedge ]
  br label %sqlite3LockAndPrepare.exit.thread

sqlite3LockAndPrepare.exit.thread:                ; preds = %sqlite3LockAndPrepare.exit.thread.backedge, %sqlite3LockAndPrepare.exit.thread.outer
  %.088 = phi i32 [ %.088.ph, %sqlite3LockAndPrepare.exit.thread.outer ], [ %.088.be, %sqlite3LockAndPrepare.exit.thread.backedge ] ; 3 uses
  %.081 = phi i32 [ %.081.ph, %sqlite3LockAndPrepare.exit.thread.outer ], [ %.182, %sqlite3LockAndPrepare.exit.thread.backedge ] ; 2 uses
  switch i32 %.088, label %.critedgethread-pre-split [
    i32 0, label %bb.c
    i32 17, label %bb.b
  ]

bb.b:                                             ; preds = %sqlite3LockAndPrepare.exit.thread
  %i.h = icmp slt i32 %.081, 1
  br i1 %i.h, label %bb.c, label %.critedgethread-pre-split

bb.c:                                             ; preds = %sqlite3LockAndPrepare.exit.thread, %bb.b
  %.182 = phi i32 [ %.081, %sqlite3LockAndPrepare.exit.thread ], [ 1, %bb.b ] ; 3 uses
  %i.i = load i8, ptr %.093.ph, align 1, !tbaa !139
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.critedgethread-pre-split, label %5

5:                                                ; preds = %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !263
  br i1 %i.d, label %sqlite3LockAndPrepare.exit.thread.backedge, label %sqlite3SafetyCheckOk.exit.i

sqlite3SafetyCheckOk.exit.i:                      ; preds = %5
  %i.j = load i32, ptr %i.e, align 8, !tbaa !261
  switch i32 %i.j, label %sqlite3LockAndPrepare.exit.thread.backedge [
    i32 -264537850, label %sqlite3LockAndPrepare.exit
    i32 -1607883113, label %sqlite3LockAndPrepare.exit
  ]

sqlite3LockAndPrepare.exit.thread.backedge:       ; preds = %sqlite3SafetyCheckOk.exit.i, %5, %sqlite3LockAndPrepare.exit
  %.088.be = phi i32 [ 21, %5 ], [ 21, %sqlite3SafetyCheckOk.exit.i ], [ %i.k, %sqlite3LockAndPrepare.exit ]
  br label %sqlite3LockAndPrepare.exit.thread, !llvm.loop !1124

sqlite3LockAndPrepare.exit:                       ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3SafetyCheckOk.exit.i
  %i.k = call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %.093.ph, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !inline_history !14 ; 2 uses
  %.not114 = icmp eq i32 %i.k, 0
  br i1 %.not114, label %bb.d, label %sqlite3LockAndPrepare.exit.thread.backedge

bb.d:                                             ; preds = %sqlite3LockAndPrepare.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !263  ; 3 uses
  %.not115 = icmp eq ptr %i.l, null
  br i1 %.not115, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !150
  br label %sqlite3LockAndPrepare.exit.thread.outer.backedge

sqlite3LockAndPrepare.exit.thread.outer.backedge: ; preds = %bb.e, %sqlite3_free.exit
  %.093.ph.be.a = phi ptr [ %.497.ph, %sqlite3_free.exit ], [ %i.m, %bb.e ]
  %.088.ph.be.a = phi i32 [ %.189.ph176, %sqlite3_free.exit ], [ 0, %bb.e ]
  %.081.ph.be.a = phi i32 [ %.4.ph, %sqlite3_free.exit ], [ %.182, %bb.e ]
  br label %sqlite3LockAndPrepare.exit.thread.outer, !llvm.loop !1124

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 308
  %i.o = load i32, ptr %i.n, align 4, !tbaa !259  ; 6 uses
  %i.p = shl i32 %i.o, 4
  %i.q = or disjoint i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %i.f, align 2, !tbaa !202
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.g, label %.critedgethread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.t = call ptr @sqlite3_malloc(i32 noundef %i.q) ; 11 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedgethread-pre-split.sink.split, label %sqlite3DbMallocZero.exit

sqlite3DbMallocZero.exit:                         ; preds = %bb.g
  %i.v = zext i32 %i.q to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i8 0, i64 %i.v, i1 false)
  %i.w = icmp slt i32 %i.o, 1                     ; 2 uses
  %i.x = sext i32 %i.o to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.x ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64
  %wide.trip.count257 = zext nneg i32 %i.o to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %sqlite3DbMallocZero.exit
  %6 = phi ptr [ %i.l, %sqlite3DbMallocZero.exit ], [ %10, %bb.s ] ; 8 uses
  %.077 = phi i32 [ 0, %sqlite3DbMallocZero.exit ], [ %.279, %bb.s ] ; 3 uses
  %.073 = phi ptr [ null, %sqlite3DbMallocZero.exit ], [ %.2, %bb.s ] ; 2 uses
  %7 = call i32 @sqlite3_step(ptr noundef %6)     ; 5 uses
  br i1 %.not116, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp ne i32 %7, 100                      ; 3 uses
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %8 = icmp ne i32 %7, 101
  %i.aa = icmp ne i32 %.077, 0
  %or.cond = select i1 %8, i1 true, i1 %i.aa
  br i1 %or.cond, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !353
  %i.ac = and i32 %i.ab, 256
  %.not117 = icmp eq i32 %i.ac, 0
  br i1 %.not117, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %9 = icmp ne i32 %.077, 0
  %brmerge = select i1 %9, i1 true, i1 %i.w
  br i1 %brmerge, label %.loopexit197, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.not.i.i131 = icmp eq ptr %6, null
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 308
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %.not.i.i131, label %sqlite3_column_name.exit.thread, label %sqlite3_column_count.exit.i.i

sqlite3_column_count.exit.i.i:                    ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.lr.ph ] ; 6 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !259
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv, %i.ag
  br i1 %i.ah, label %bb.m, label %sqlite3_column_name.exit.thread

bb.m:                                             ; preds = %sqlite3_column_count.exit.i.i
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !279
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = call fastcc ptr @sqlite3ValueText(ptr noundef %i.aj, i8 noundef zeroext 1) ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !179   ; 3 uses
  %.not20.i.i = icmp eq ptr %i.al, null
  br i1 %.not20.i.i, label %sqlite3_column_name.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  %i.an = load i8, ptr %i.am, align 2, !tbaa !202
  %.not21.i.i = icmp eq i8 %i.an, 0
  br i1 %.not21.i.i, label %sqlite3_column_name.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  store i8 0, ptr %i.ao, align 2, !tbaa !202
  br label %sqlite3_column_name.exit.thread

sqlite3_column_name.exit.thread:                  ; preds = %.lr.ph, %sqlite3_column_count.exit.i.i, %bb.o
  %.0204 = phi i64 [ %indvars.iv, %bb.o ], [ %indvars.iv, %sqlite3_column_count.exit.i.i ], [ 0, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0204
  store ptr null, ptr %i.ap, align 8, !tbaa !150
  br label %.critedgethread-pre-split.sink.split

sqlite3_column_name.exit:                         ; preds = %bb.m, %bb.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !150
  %.not124 = icmp eq ptr %i.ak, null
  br i1 %.not124, label %.critedgethread-pre-split.sink.split, label %bb.p

bb.p:                                             ; preds = %sqlite3_column_name.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit197, label %sqlite3_column_count.exit.i.i, !llvm.loop !1125

.loopexit197:                                     ; preds = %bb.p, %bb.l
  %brmerge231 = select i1 %i.z, i1 true, i1 %i.w
  %.073.mux = select i1 %i.z, ptr %.073, ptr %i.y
  br i1 %brmerge231, label %.loopexit, label %.lr.ph226

.lr.ph226:                                        ; preds = %.loopexit197, %bb.r
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %bb.r ], [ 0, %.loopexit197 ] ; 3 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv254 to i32 ; 2 uses
  %i.as = call ptr @sqlite3_column_text(ptr noundef %6, i32 noundef %i.ar) ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv254
  store ptr %i.as, ptr %i.at, align 8, !tbaa !150
  %.not122 = icmp eq ptr %i.as, null
  br i1 %.not122, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph226
  %i.au = call i32 @sqlite3_column_type(ptr noundef %6, i32 noundef %i.ar)
  %.not123 = icmp eq i32 %i.au, 5
  br i1 %.not123, label %bb.r, label %.critedgethread-pre-split.sink.split

bb.r:                                             ; preds = %.lr.ph226, %bb.q
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %.loopexit, label %.lr.ph226, !llvm.loop !1126

.loopexit:                                        ; preds = %bb.r, %.loopexit197
  %.174 = phi ptr [ %.073.mux, %.loopexit197 ], [ %i.y, %bb.r ] ; 2 uses
  %i.av = call i32 %2(ptr noundef %3, i32 noundef %i.o, ptr noundef %.174, ptr noundef nonnull %i.t) #43
  %.not118 = icmp eq i32 %i.av, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !263 ; 2 uses
  br i1 %.not118, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.loopexit, %bb.h
  %10 = phi ptr [ %.pre, %.loopexit ], [ %6, %bb.h ]
  %.279 = phi i32 [ 1, %.loopexit ], [ %.077, %bb.h ]
  %.2 = phi ptr [ %.174, %.loopexit ], [ %.073, %bb.h ]
  %.not119 = icmp eq i32 %7, 100
  br i1 %.not119, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %bb.s
  %11 = load ptr, ptr %i.b, align 8, !tbaa !263   ; 5 uses
  %i.aw = icmp eq ptr %11, null
  br i1 %i.aw, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 116
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !178
  switch i32 %i.ay, label %.sink.split [
    i32 -1108210269, label %sqlite3_finalize.exit
    i32 1369188723, label %sqlite3_finalize.exit
    i32 649915045, label %sqlite3_finalize.exit.thread164
  ]

sqlite3_finalize.exit.thread164:                  ; preds = %bb.t
  call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %11)
  br label %.sink.split

sqlite3_finalize.exit:                            ; preds = %bb.t, %bb.t
  %i.az = call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %11) ; 2 uses
  call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %11)
  store ptr null, ptr %i.b, align 8, !tbaa !263
  %.not120 = icmp eq i32 %i.az, 17
  br i1 %.not120, label %sqlite3_free.exit, label %bb.u

.sink.split:                                      ; preds = %bb.t, %.thread, %sqlite3_finalize.exit.thread164
  %.0.i163.ph = phi i32 [ 0, %sqlite3_finalize.exit.thread164 ], [ 21, %bb.t ], [ 0, %.thread ]
  store ptr null, ptr %i.b, align 8, !tbaa !263
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %sqlite3_finalize.exit
  %.0.i163 = phi i32 [ %i.az, %sqlite3_finalize.exit ], [ %.0.i163.ph, %.sink.split ]
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.bb = tail call ptr @__ctype_b_loc() #46
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !233
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.295 = phi ptr [ %i.ba, %bb.u ], [ %i.bi, %bb.v ] ; 3 uses
  %i.bd = load i8, ptr %.295, align 1, !tbaa !139
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !234
  %i.bh = and i16 %i.bg, 8192
  %.not121 = icmp eq i16 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %.295, i64 1
  br i1 %.not121, label %sqlite3_free.exit, label %bb.v, !llvm.loop !1127

sqlite3_free.exit:                                ; preds = %bb.v, %sqlite3_finalize.exit
  %.497.ph = phi ptr [ %.093.ph, %sqlite3_finalize.exit ], [ %.295, %bb.v ]
  %.189.ph176 = phi i32 [ 17, %sqlite3_finalize.exit ], [ %.0.i163, %bb.v ]
  %.4.ph = phi i32 [ %.182, %sqlite3_finalize.exit ], [ 0, %bb.v ]
  %i.bj = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !130
  %i.bl = shl i64 %i.bk, 32
  %i.bm = ashr exact i64 %i.bl, 32
  %i.bn = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.bo = sub nsw i64 %i.bn, %i.bm
  store i64 %i.bo, ptr @mem.5, align 8, !tbaa !125
  call void @free(ptr noundef nonnull %i.bj) #43
  br label %sqlite3LockAndPrepare.exit.thread.outer.backedge

.critedgethread-pre-split.sink.split:             ; preds = %bb.g, %sqlite3_column_name.exit, %bb.q, %sqlite3_column_name.exit.thread
  %.391.ph.ph = phi i32 [ %7, %sqlite3_column_name.exit ], [ 100, %bb.q ], [ %7, %sqlite3_column_name.exit.thread ], [ 0, %bb.g ]
  %.287.ph.ph = phi ptr [ %i.t, %sqlite3_column_name.exit ], [ %i.t, %bb.q ], [ %i.t, %sqlite3_column_name.exit.thread ], [ null, %bb.g ]
  store i8 1, ptr %i.f, align 2, !tbaa !202
  br label %.critedgethread-pre-split

.critedgethread-pre-split:                        ; preds = %bb.b, %bb.c, %sqlite3LockAndPrepare.exit.thread, %bb.f, %.critedgethread-pre-split.sink.split
  %.391.ph = phi i32 [ %.391.ph.ph, %.critedgethread-pre-split.sink.split ], [ 17, %bb.b ], [ %.088, %bb.c ], [ %.088, %sqlite3LockAndPrepare.exit.thread ], [ 0, %bb.f ]
  %.287.ph = phi ptr [ %.287.ph.ph, %.critedgethread-pre-split.sink.split ], [ null, %bb.f ], [ null, %sqlite3LockAndPrepare.exit.thread ], [ null, %bb.c ], [ null, %bb.b ]
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !263
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %.critedgethread-pre-split
  %12 = phi ptr [ %.pr, %.critedgethread-pre-split ], [ %.pre, %.loopexit ] ; 4 uses
  %.391 = phi i32 [ %.391.ph, %.critedgethread-pre-split ], [ 4, %.loopexit ] ; 2 uses
  %.287 = phi ptr [ %.287.ph, %.critedgethread-pre-split ], [ %i.t, %.loopexit ] ; 2 uses
  %.not125 = icmp eq ptr %12, null
  br i1 %.not125, label %sqlite3_finalize.exit135, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 116
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !178
  switch i32 %i.bq, label %sqlite3_finalize.exit135 [
    i32 -1108210269, label %bb.x
    i32 1369188723, label %bb.x
    i32 649915045, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.br = call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %12) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %12)
  br label %sqlite3_finalize.exit135

sqlite3_finalize.exit135:                         ; preds = %bb.y, %bb.w, %.critedge
  %.not126 = icmp eq ptr %.287, null
  br i1 %.not126, label %13, label %sqlite3_free.exit136

sqlite3_free.exit136:                             ; preds = %sqlite3_finalize.exit135
  %i.bs = getelementptr inbounds i8, ptr %.287, i64 -8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !130
  %i.bu = shl i64 %i.bt, 32
  %i.bv = ashr exact i64 %i.bu, 32
  %i.bw = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.bx = sub nsw i64 %i.bw, %i.bv
  store i64 %i.bx, ptr @mem.5, align 8, !tbaa !125
  call void @free(ptr noundef nonnull %i.bs) #43
  br label %13

13:                                               ; preds = %sqlite3_free.exit136, %sqlite3_finalize.exit135
  br i1 %i.d, label %sqlite3ApiExit.exit, label %bb.z

bb.z:                                             ; preds = %13
  %i.by = load i8, ptr %i.f, align 2, !tbaa !202
  %.not7.i = icmp eq i8 %i.by, 0
  br i1 %.not7.i, label %sqlite3ApiExit.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !191 ; 3 uses
  %.not12.i.i = icmp eq ptr %i.ca, null
  br i1 %.not12.i.i, label %sqlite3Error.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 7, ptr %i.cb, align 8, !tbaa !201
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 36 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !197
  %i.ce = and i16 %i.cd, -32
  %i.cf = or disjoint i16 %i.ce, 1
  store i16 %i.cf, ptr %i.cc, align 4, !tbaa !197
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 38
  store i8 5, ptr %i.cg, align 2, !tbaa !199
  br label %sqlite3Error.exit.i

sqlite3Error.exit.i:                              ; preds = %bb.ab, %bb.aa
  store i8 0, ptr %i.f, align 2, !tbaa !202
  br label %sqlite3ApiExit.exit.thread

sqlite3ApiExit.exit:                              ; preds = %13
  %14 = and i32 %.391, 255                        ; 3 uses
  %.not127 = icmp eq i32 %14, 0
  br i1 %.not127, label %bb.am, label %sqlite3_errcode.exit.thread

sqlite3ApiExit.exit.thread:                       ; preds = %bb.z, %sqlite3Error.exit.i
  %.0.ph.i = phi i32 [ %.391, %bb.z ], [ 7, %sqlite3Error.exit.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !205 ; 2 uses
  %i.cj = and i32 %i.ci, %.0.ph.i                 ; 7 uses
  %.not127195 = icmp eq i32 %i.cj, 0
  br i1 %.not127195, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %sqlite3ApiExit.exit.thread
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !261
  switch i32 %.val.i, label %sqlite3_errcode.exit [
    i32 -264537850, label %bb.ad
    i32 -1607883113, label %bb.ad
    i32 1266094736, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !201
  %i.cm = and i32 %i.ci, %i.cl
  br label %sqlite3_errcode.exit

sqlite3_errcode.exit:                             ; preds = %bb.ac, %bb.ad
  %.0.i139 = phi i32 [ 21, %bb.ac ], [ %i.cm, %bb.ad ]
  %i.cn = icmp eq i32 %i.cj, %.0.i139
  %i.co = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.co, %i.cn
  br i1 %or.cond3, label %bb.ae, label %bb.am

sqlite3_errcode.exit.thread:                      ; preds = %sqlite3ApiExit.exit
  %15 = icmp eq i32 %14, 7
  %16 = icmp ne ptr %4, null
  %or.cond3284 = and i1 %16, %15
  br i1 %or.cond3284, label %sqlite3_errmsg.exit, label %bb.am

bb.ae:                                            ; preds = %sqlite3_errcode.exit
  %.val.i141 = load i32, ptr %i.e, align 8, !tbaa !261
  switch i32 %.val.i141, label %sqlite3_errmsg.exit [
    i32 -264537850, label %bb.af
    i32 -1607883113, label %bb.af
    i32 1266094736, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !201
  %i.cr = icmp eq i32 %i.cq, 21
  br i1 %i.cr, label %sqlite3_errmsg.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !191
  %i.cu = call fastcc ptr @sqlite3ValueText(ptr noundef %i.ct, i8 noundef zeroext 1) ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ah, label %sqlite3_errmsg.exit

bb.ah:                                            ; preds = %bb.ag
  %i.cw = load i32, ptr %i.cp, align 8, !tbaa !201
  %i.cx = call fastcc ptr @sqlite3ErrStr(i32 noundef %i.cw)
  br label %sqlite3_errmsg.exit

sqlite3_errmsg.exit:                              ; preds = %sqlite3_errcode.exit.thread, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %17 = phi i32 [ 7, %sqlite3_errcode.exit.thread ], [ %i.cj, %bb.ag ], [ %i.cj, %bb.ah ], [ %i.cj, %bb.af ], [ %i.cj, %bb.ae ] ; 2 uses
  %.08.i = phi ptr [ @.str.206, %sqlite3_errcode.exit.thread ], [ %i.cu, %bb.ag ], [ %i.cx, %bb.ah ], [ @.str.566, %bb.af ], [ @.str.566, %bb.ae ]
  %i.cy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.08.i) #42
  %i.cz = trunc i64 %i.cy to i32
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  %i.db = call ptr @sqlite3_malloc(i32 noundef %i.da) ; 3 uses
  store ptr %i.db, ptr %4, align 8, !tbaa !150
  %.not129 = icmp eq ptr %i.db, null
  br i1 %.not129, label %bb.ao, label %18

18:                                               ; preds = %sqlite3_errmsg.exit
  br i1 %i.d, label %sqlite3_errmsg.exit145, label %bb.ai

bb.ai:                                            ; preds = %18
  %.val.i143 = load i32, ptr %i.e, align 8, !tbaa !261
  switch i32 %.val.i143, label %sqlite3_errmsg.exit145 [
    i32 -264537850, label %bb.aj
    i32 -1607883113, label %bb.aj
    i32 1266094736, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !201
  %i.de = icmp eq i32 %i.dd, 21
  br i1 %i.de, label %sqlite3_errmsg.exit145, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !191
  %i.dh = call fastcc ptr @sqlite3ValueText(ptr noundef %i.dg, i8 noundef zeroext 1) ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.al, label %sqlite3_errmsg.exit145

bb.al:                                            ; preds = %bb.ak
  %i.dj = load i32, ptr %i.dc, align 8, !tbaa !201
  %i.dk = call fastcc ptr @sqlite3ErrStr(i32 noundef %i.dj)
  br label %sqlite3_errmsg.exit145

sqlite3_errmsg.exit145:                           ; preds = %18, %bb.ai, %bb.aj, %bb.ak, %bb.al
  %.08.i144 = phi ptr [ @.str.206, %18 ], [ %i.dh, %bb.ak ], [ %i.dk, %bb.al ], [ @.str.566, %bb.aj ], [ @.str.566, %bb.ai ]
  %i.dl = sext i32 %i.da to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %.08.i144, i64 %i.dl, i1 false)
  br label %bb.ao

bb.am:                                            ; preds = %sqlite3_errcode.exit.thread, %sqlite3ApiExit.exit.thread, %sqlite3_errcode.exit, %sqlite3ApiExit.exit
  %19 = phi i32 [ 0, %sqlite3ApiExit.exit.thread ], [ %i.cj, %sqlite3_errcode.exit ], [ 0, %sqlite3ApiExit.exit ], [ %14, %sqlite3_errcode.exit.thread ] ; 2 uses
  %.not128 = icmp eq ptr %4, null
  br i1 %.not128, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %4, align 8, !tbaa !150
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %sqlite3_errmsg.exit145, %sqlite3_errmsg.exit, %bb.a
  %.092 = phi i32 [ 0, %bb.a ], [ %19, %bb.an ], [ %17, %sqlite3_errmsg.exit ], [ %17, %sqlite3_errmsg.exit145 ], [ %19, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.092
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_prepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3LockAndPrepare.exit, label %sqlite3SafetyCheckOk.exit

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !261
  switch i32 %i.c, label %sqlite3LockAndPrepare.exit [
    i32 -264537850, label %bb.b
    i32 -1607883113, label %bb.b
  ]

bb.b:                                             ; preds = %sqlite3SafetyCheckOk.exit, %sqlite3SafetyCheckOk.exit
  %i.d = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4), !inline_history !15
  br label %sqlite3LockAndPrepare.exit

sqlite3LockAndPrepare.exit:                       ; preds = %sqlite3SafetyCheckOk.exit, %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 21, %sqlite3SafetyCheckOk.exit ], [ 21, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sqlite3_errcode(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #13 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.a, align 8, !tbaa !261
  switch i32 %.val, label %.critedge [
    i32 -264537850, label %bb.c
    i32 -1607883113, label %bb.c
    i32 1266094736, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.c = load i8, ptr %i.b, align 2, !tbaa !202
  %.not8 = icmp eq i8 %i.c, 0
  br i1 %.not8, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !205
  %i.h = and i32 %i.g, %i.e
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 21, %bb.b ], [ %i.h, %bb.d ], [ 7, %bb.a ], [ 7, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3LockAndPrepare.exit, label %sqlite3SafetyCheckOk.exit.i

sqlite3SafetyCheckOk.exit.i:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !261
  switch i32 %i.c, label %sqlite3LockAndPrepare.exit [
    i32 -264537850, label %bb.b
    i32 -1607883113, label %bb.b
  ]

bb.b:                                             ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3SafetyCheckOk.exit.i
  %i.d = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, ptr noundef %3, ptr noundef %4), !inline_history !15
  br label %sqlite3LockAndPrepare.exit

sqlite3LockAndPrepare.exit:                       ; preds = %bb.a, %sqlite3SafetyCheckOk.exit.i, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 21, %sqlite3SafetyCheckOk.exit.i ], [ 21, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @sqlite3Prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr null, ptr %i.a, align 8, !tbaa !150
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %sqlite3SafetyCheckOk.exit.thread, label %sqlite3SafetyCheckOk.exit

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !261
  switch i32 %i.d, label %sqlite3SafetyCheckOk.exit.thread [
    i32 -264537850, label %bb.b
    i32 -1607883113, label %bb.b
  ]

bb.b:                                             ; preds = %sqlite3SafetyCheckOk.exit, %sqlite3SafetyCheckOk.exit
  %i.e = tail call fastcc ptr @sqlite3Utf16to8(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) ; 8 uses
  %.not25 = icmp eq ptr %i.e, null
  br i1 %.not25, label %sqlite3_free.exit, label %sqlite3SafetyCheckOk.exit.i

sqlite3SafetyCheckOk.exit.i:                      ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8, !tbaa !261
  switch i32 %i.f, label %.thread [
    i32 -264537850, label %sqlite3LockAndPrepare.exit
    i32 -1607883113, label %sqlite3LockAndPrepare.exit
  ]

sqlite3LockAndPrepare.exit:                       ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3SafetyCheckOk.exit.i
  %i.g = call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef -1, i32 noundef range(i32 0, 2) %3, ptr noundef %4, ptr noundef nonnull %i.a), !inline_history !15 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !150 ; 2 uses
  %i.h = icmp ne ptr %.pre, null
  %i.i = icmp ne ptr %5, null
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %sqlite3LockAndPrepare.exit
  %i.j = ptrtoint ptr %.pre to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %i.n = icmp eq i64 %i.m, 0
  %i.o = and i64 %i.l, 4294967295
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %.0.i27 = select i1 %i.n, ptr %i.p, ptr inttoptr (i64 -1 to ptr) ; 2 uses
  %i.q = load i8, ptr %i.e, align 1, !tbaa !139   ; 2 uses
  %i.r = icmp ne i8 %i.q, 0
  %i.s = icmp ult ptr %i.e, %.0.i27
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.i, label %sqlite3Utf8CharLen.exit

.lr.ph.i:                                         ; preds = %bb.c, %.loopexit.i
  %i.u = phi i8 [ %i.aa, %.loopexit.i ], [ %i.q, %bb.c ]
  %.01116.i = phi ptr [ %.2.i, %.loopexit.i ], [ %i.e, %bb.c ]
  %.01215.i = phi i32 [ %i.ab, %.loopexit.i ], [ 0, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01116.i, i64 1 ; 3 uses
  %i.w = icmp ugt i8 %i.u, -65
  br i1 %i.w, label %.preheader.i, label %.lr.ph..loopexit_crit_edge.i

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i
  %.pre.i = load i8, ptr %i.v, align 1, !tbaa !139
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.1.i = phi ptr [ %i.z, %.preheader.i ], [ %i.v, %.lr.ph.i ] ; 3 uses
  %i.x = load i8, ptr %.1.i, align 1, !tbaa !139  ; 2 uses
  %i.y = icmp slt i8 %i.x, -64
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br i1 %i.y, label %.preheader.i, label %.loopexit.i, !llvm.loop !16

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph..loopexit_crit_edge.i
  %i.aa = phi i8 [ %.pre.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.x, %.preheader.i ] ; 2 uses
  %.2.i = phi ptr [ %i.v, %.lr.ph..loopexit_crit_edge.i ], [ %.1.i, %.preheader.i ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.i, 1            ; 2 uses
  %i.ac = icmp ne i8 %i.aa, 0
  %i.ad = icmp ult ptr %.2.i, %.0.i27
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.i, label %sqlite3Utf8CharLen.exit, !llvm.loop !17

sqlite3Utf8CharLen.exit:                          ; preds = %.loopexit.i, %bb.c
  %.012.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ab, %.loopexit.i ] ; 3 uses
  %i.af = zext i32 %.012.lcssa.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 1
  %scevgep = getelementptr i8, ptr %1, i64 %i.ag  ; 2 uses
  %exitcond.not.i52 = icmp eq i32 %.012.lcssa.i, 0
  br i1 %exitcond.not.i52, label %sqlite3LockAndPrepare.exit.thread, label %.lr.ph

.split.i:                                         ; preds = %.lr.ph
  %i.ah = add nuw i32 %.14953.i54, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ah, %.012.lcssa.i
  br i1 %exitcond.not.i, label %sqlite3LockAndPrepare.exit.thread, label %.lr.ph, !llvm.loop !1128

.lr.ph:                                           ; preds = %sqlite3Utf8CharLen.exit, %.split.i
  %.14953.i54 = phi i32 [ %i.ah, %.split.i ], [ 0, %sqlite3Utf8CharLen.exit ]
  %.24554.i53 = phi ptr [ %i.al, %.split.i ], [ %1, %sqlite3Utf8CharLen.exit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.24554.i53, i64 1
  %i.aj = load i8, ptr %.24554.i53, align 1, !tbaa !139
  %i.ak = sext i8 %i.aj to i32
end_hunk_0
