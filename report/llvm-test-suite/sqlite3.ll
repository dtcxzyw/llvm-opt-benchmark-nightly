inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@sqlite3_blob_write:bb.a
  %.021.in1.i.i = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %.0212.i.i = load ptr, ptr %.021.in1.i.i, align 8, !tbaa !326 ; 2 uses
  %.not3.i.i = icmp eq ptr %.0212.i.i, null
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.critedge.i.i
  %.0214.i.i = phi ptr [ %.021.i.i, %.critedge.i.i ], [ %.0212.i.i, %bb.g ] ; 8 uses
  %i.aa = icmp eq ptr %.0214.i.i, %i.k
  br i1 %i.aa, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 105
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !315
  %.not24.i.i = icmp eq i8 %i.ac, 1
  br i1 %.not24.i.i, label %bb.i, label %.critedge.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !322
  %.not25.i.i = icmp eq i32 %i.ae, %i.y
  br i1 %.not25.i.i, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !320
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %.0214.i.i, align 8, !tbaa !321
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !323 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not27.i.i = icmp eq ptr %i.aj, %.val.i
  br i1 %.not27.i.i, label %.critedge.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !327
  %i.an = and i32 %i.am, 16384
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread.i, label %.critedge.i.i

bb.n:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !328
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !329
  %.not26.i.i = icmp eq i32 %i.as, %i.y
  br i1 %.not26.i.i, label %.critedge.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call fastcc i32 @moveToRoot(ptr noundef nonnull %.0214.i.i) ; 0 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %.lr.ph.i.i
  %.021.in.i.i = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 16
  %.021.i.i = load ptr, ptr %.021.in.i.i, align 8, !tbaa !326 ; 2 uses
  %.not.i.i3 = icmp eq ptr %.021.i.i, null
  br i1 %.not.i.i3, label %.loopexit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !332

.loopexit.loopexit.i:                             ; preds = %.critedge.i.i
  %.pre.i = load i8, ptr %i.o, align 1, !tbaa !315
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.g
  %i.au = phi i8 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.p, %bb.g ]
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %.loopexit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !328
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !333
  %.not15.i = icmp eq i8 %i.az, 0
  br i1 %.not15.i, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call fastcc i32 @accessPayload(ptr noundef nonnull %i.k, i32 noundef %i.n, i32 noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef 1)
  br label %sqlite3BtreePutData.exit

sqlite3BtreePutData.exit:                         ; preds = %bb.e, %bb.q
  %.0.i4 = phi i32 [ %i.t, %bb.e ], [ %i.ba, %bb.q ] ; 2 uses
  %i.bb = icmp eq i32 %.0.i4, 4
  br i1 %i.bb, label %sqlite3BtreePutData.exit.thread7, label %.thread.i

sqlite3BtreePutData.exit.thread7:                 ; preds = %bb.d, %sqlite3BtreePutData.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !105
  switch i32 %i.bd, label %sqlite3VdbeFinalize.exit.i [
    i32 -1108210269, label %bb.r
    i32 1369188723, label %bb.r
    i32 649915045, label %bb.s
  ]

bb.r:                                             ; preds = %sqlite3BtreePutData.exit.thread7, %sqlite3BtreePutData.exit.thread7
  %i.be = tail call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %sqlite3BtreePutData.exit.thread7
  tail call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %i.h)
  br label %sqlite3VdbeFinalize.exit.i

sqlite3VdbeFinalize.exit.i:                       ; preds = %bb.s, %sqlite3BtreePutData.exit.thread7
  store ptr null, ptr %i.g, align 8, !tbaa !300
  br label %bb.t

.thread.i:                                        ; preds = %bb.m, %bb.k, %bb.p, %.loopexit.i, %bb.f, %sqlite3BtreePutData.exit
  %.0.i46 = phi i32 [ %.0.i4, %sqlite3BtreePutData.exit ], [ 1, %.loopexit.i ], [ 8, %bb.f ], [ 1, %bb.p ], [ 6, %bb.k ], [ 6, %bb.m ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %.0.i46, ptr %i.bf, align 8, !tbaa !128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 188
  store i32 %.0.i46, ptr %i.bg, align 4, !tbaa !127
  br label %bb.u

bb.t:                                             ; preds = %sqlite3VdbeFinalize.exit.i, %bb.b
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %blobReadWrite.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.02328.i = phi i32 [ %.0.i46, %.thread.i ], [ 4, %bb.t ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 42 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !129
  %.not7.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not7.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109 ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not12.i.i.i, label %sqlite3Error.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 7, ptr %i.bl, align 8, !tbaa !128
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 36 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !124
  %i.bo = and i16 %i.bn, -32
  %i.bp = or disjoint i16 %i.bo, 1
  store i16 %i.bp, ptr %i.bm, align 4, !tbaa !124
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 38
  store i8 5, ptr %i.bq, align 2, !tbaa !126
  br label %sqlite3Error.exit.i.i

sqlite3Error.exit.i.i:                            ; preds = %bb.w, %bb.v
  store i8 0, ptr %i.bh, align 2, !tbaa !129
  br label %bb.x

bb.x:                                             ; preds = %sqlite3Error.exit.i.i, %bb.u
  %.0.ph.i.i = phi i32 [ %.02328.i, %bb.u ], [ 7, %sqlite3Error.exit.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !132
  %i.bt = and i32 %i.bs, %.0.ph.i.i
  br label %blobReadWrite.exit

blobReadWrite.exit:                               ; preds = %bb.a, %bb.t, %bb.x
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.bt, %bb.x ], [ 4, %bb.t ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sqlite3_blob_bytes(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !303
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @sqlite3_set_authorizer(ptr noundef captures(none) initializes((272, 288)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %1, ptr %i.a, align 8, !tbaa !334
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %2, ptr %i.b, align 8, !tbaa !335
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.04.i = load ptr, ptr %i.c, align 8, !tbaa !213 ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.04.i, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 339
  store i8 1, ptr %i.d, align 1, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %.0.i = load ptr, ptr %i.e, align 8, !tbaa !213 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i, !llvm.loop !336

sqlite3ExpirePreparedStatements.exit:             ; preds = %.lr.ph.i, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_exec(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8, !tbaa !209
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.ak, label %.preheader200

.preheader200:                                    ; preds = %bb.a
  %i.d = icmp eq ptr %0, null
  %i.e = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 4 uses
  %.not116 = icmp eq ptr %2, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.d, label %.preheader200.split.us, label %.preheader200.split.outer

.preheader200.split.us:                           ; preds = %.preheader200
  %i.h = load i8, ptr %1, align 1, !tbaa !37
  %.not.us = icmp eq i8 %i.h, 0
  %spec.select = select i1 %.not.us, i32 0, i32 21
  store ptr null, ptr %i.b, align 8
  br label %sqlite3_errcode.exit.thread

.preheader200.split:                              ; preds = %.preheader200.split.backedge, %.preheader200.split.outer
  %.095 = phi i32 [ %.095.ph, %.preheader200.split.outer ], [ %.095.be, %.preheader200.split.backedge ] ; 3 uses
  %.086 = phi i32 [ %.086.ph, %.preheader200.split.outer ], [ %.187, %.preheader200.split.backedge ] ; 2 uses
  switch i32 %.095, label %.critedge [
    i32 0, label %bb.c
    i32 17, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader200.split
  %i.i = icmp slt i32 %.086, 1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader200.split, %bb.b
  %.187 = phi i32 [ %.086, %.preheader200.split ], [ 1, %bb.b ] ; 3 uses
  %i.j = load i8, ptr %.076.ph, align 1, !tbaa !37
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge, label %sqlite3SafetyCheckOk.exit.i

sqlite3SafetyCheckOk.exit.i:                      ; preds = %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !209
  %i.k = load i32, ptr %i.e, align 8, !tbaa !207
  switch i32 %i.k, label %.preheader200.split.backedge [
    i32 -264537850, label %sqlite3LockAndPrepare.exit
    i32 -1607883113, label %sqlite3LockAndPrepare.exit
  ]

.preheader200.split.backedge:                     ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3LockAndPrepare.exit
  %.095.be = phi i32 [ 21, %sqlite3SafetyCheckOk.exit.i ], [ %i.l, %sqlite3LockAndPrepare.exit ]
  br label %.preheader200.split, !llvm.loop !337

sqlite3LockAndPrepare.exit:                       ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3SafetyCheckOk.exit.i
  %i.l = call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %.076.ph, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !inline_history !338 ; 2 uses
  %.not114 = icmp eq i32 %i.l, 0
  br i1 %.not114, label %bb.d, label %.preheader200.split.backedge

bb.d:                                             ; preds = %sqlite3LockAndPrepare.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !209  ; 4 uses
  %.not115 = icmp eq ptr %i.m, null
  br i1 %.not115, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %.preheader200.split.outer.backedge

.preheader200.split.outer.backedge:               ; preds = %bb.e, %sqlite3_free.exit
  %.095.ph.be = phi i32 [ %.196.ph177, %sqlite3_free.exit ], [ 0, %bb.e ]
  %.086.ph.be = phi i32 [ %.490.ph, %sqlite3_free.exit ], [ %.187, %bb.e ]
  %.076.ph.be = phi ptr [ %.4.ph, %sqlite3_free.exit ], [ %i.n, %bb.e ]
  br label %.preheader200.split.outer, !llvm.loop !337

.preheader200.split.outer:                        ; preds = %.preheader200, %.preheader200.split.outer.backedge
  %.095.ph = phi i32 [ %.095.ph.be, %.preheader200.split.outer.backedge ], [ 0, %.preheader200 ]
  %.086.ph = phi i32 [ %.086.ph.be, %.preheader200.split.outer.backedge ], [ 0, %.preheader200 ]
  %.076.ph = phi ptr [ %.076.ph.be, %.preheader200.split.outer.backedge ], [ %1, %.preheader200 ] ; 3 uses
  br label %.preheader200.split

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 308
  %i.p = load i32, ptr %i.o, align 4, !tbaa !204  ; 6 uses
  %i.q = shl i32 %i.p, 4
  %i.r = or disjoint i32 %i.q, 1                  ; 2 uses
  %i.s = load i8, ptr %i.f, align 2, !tbaa !129
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = call ptr @sqlite3_malloc(i32 noundef %i.r) ; 11 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.critedge.sink.split, label %sqlite3DbMallocZero.exit

sqlite3DbMallocZero.exit:                         ; preds = %bb.g
  %i.w = zext i32 %i.r to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, i8 0, i64 %i.w, i1 false)
  %i.x = icmp slt i32 %i.p, 1                     ; 2 uses
  %i.y = sext i32 %i.p to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.y ; 3 uses
  br i1 %.not116, label %sqlite3DbMallocZero.exit.split.us, label %sqlite3DbMallocZero.exit.split.preheader

sqlite3DbMallocZero.exit.split.preheader:         ; preds = %sqlite3DbMallocZero.exit
  %wide.trip.count = zext nneg i32 %i.p to i64
  %wide.trip.count275 = zext nneg i32 %i.p to i64
  br label %sqlite3DbMallocZero.exit.split

sqlite3DbMallocZero.exit.split.us:                ; preds = %sqlite3DbMallocZero.exit, %sqlite3DbMallocZero.exit.split.us
  %i.aa = call i32 @sqlite3_step(ptr noundef nonnull %i.m)
  %.not119.us = icmp eq i32 %i.aa, 100
  br i1 %.not119.us, label %sqlite3DbMallocZero.exit.split.us, label %.thread.thread

sqlite3DbMallocZero.exit.split:                   ; preds = %sqlite3DbMallocZero.exit.split.preheader, %bb.q
  %i.ab = phi i1 [ true, %bb.q ], [ false, %sqlite3DbMallocZero.exit.split.preheader ] ; 2 uses
  %.074 = phi ptr [ %.175, %bb.q ], [ null, %sqlite3DbMallocZero.exit.split.preheader ]
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !209 ; 9 uses
  %i.ad = call i32 @sqlite3_step(ptr noundef %i.ac) ; 5 uses
  %i.ae = icmp ne i32 %i.ad, 100                  ; 3 uses
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %sqlite3DbMallocZero.exit.split
  %i.af = icmp ne i32 %i.ad, 101
  %or.cond = or i1 %i.af, %i.ab
  br i1 %or.cond, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !327
  %i.ah = and i32 %i.ag, 256
  %.not117 = icmp eq i32 %i.ah, 0
  br i1 %.not117, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %sqlite3DbMallocZero.exit.split
  %brmerge = select i1 %i.ab, i1 true, i1 %i.x
  br i1 %brmerge, label %.loopexit198, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i.i131 = icmp eq ptr %i.ac, null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 308
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  br i1 %.not.i.i131, label %sqlite3_column_name.exit.thread, label %sqlite3_column_count.exit.i.i

sqlite3_column_count.exit.i.i:                    ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph ] ; 6 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !204
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv, %i.al
  br i1 %i.am, label %bb.k, label %sqlite3_column_name.exit.thread

bb.k:                                             ; preds = %sqlite3_column_count.exit.i.i
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !234
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = call fastcc ptr @sqlite3ValueText(ptr noundef %i.ao, i8 noundef zeroext 1) ; 2 uses
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !106 ; 3 uses
  %.not20.i.i = icmp eq ptr %i.aq, null
  br i1 %.not20.i.i, label %sqlite3_column_name.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 42
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !129
  %.not21.i.i = icmp eq i8 %i.as, 0
  br i1 %.not21.i.i, label %sqlite3_column_name.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 42
  store i8 0, ptr %i.at, align 2, !tbaa !129
  br label %sqlite3_column_name.exit.thread

sqlite3_column_name.exit.thread:                  ; preds = %.lr.ph, %sqlite3_column_count.exit.i.i, %bb.m
  %.073205 = phi i64 [ %indvars.iv, %bb.m ], [ %indvars.iv, %sqlite3_column_count.exit.i.i ], [ 0, %.lr.ph ]
  %i.au = and i64 %.073205, 4294967295
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.au
  store ptr null, ptr %i.av, align 8, !tbaa !72
  br label %.critedge.sink.split

sqlite3_column_name.exit:                         ; preds = %bb.k, %bb.l
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !72
  %.not124 = icmp eq ptr %i.ap, null
  br i1 %.not124, label %.critedge.sink.split, label %bb.n

bb.n:                                             ; preds = %sqlite3_column_name.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit198, label %sqlite3_column_count.exit.i.i, !llvm.loop !339

.loopexit198:                                     ; preds = %bb.n, %bb.j
  %brmerge247 = select i1 %i.ae, i1 true, i1 %i.x
  %.074.mux = select i1 %i.ae, ptr %.074, ptr %i.z
  br i1 %brmerge247, label %.loopexit, label %.lr.ph241

.lr.ph241:                                        ; preds = %.loopexit198, %bb.p
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %bb.p ], [ 0, %.loopexit198 ] ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv272 to i32 ; 2 uses
  %i.ay = call ptr @sqlite3_column_text(ptr noundef %i.ac, i32 noundef %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv272
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !72
  %.not122 = icmp eq ptr %i.ay, null
  br i1 %.not122, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph241
  %i.ba = call i32 @sqlite3_column_type(ptr noundef %i.ac, i32 noundef %i.ax)
  %.not123 = icmp eq i32 %i.ba, 5
  br i1 %.not123, label %bb.p, label %.critedge.sink.split

bb.p:                                             ; preds = %.lr.ph241, %bb.o
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %.loopexit, label %.lr.ph241, !llvm.loop !340

.loopexit:                                        ; preds = %bb.p, %.loopexit198
  %.175 = phi ptr [ %.074.mux, %.loopexit198 ], [ %i.z, %bb.p ] ; 2 uses
  %i.bb = call i32 %2(ptr noundef %3, i32 noundef %i.p, ptr noundef %.175, ptr noundef nonnull %i.u) #43
  %.not118 = icmp eq i32 %i.bb, 0
  br i1 %.not118, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.loopexit
  %.not119 = icmp eq i32 %i.ad, 100
  br i1 %.not119, label %sqlite3DbMallocZero.exit.split, label %..thread.loopexit248_crit_edge

..thread.loopexit248_crit_edge:                   ; preds = %bb.q
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !209
  br label %.thread
end_hunk_0
begin_hunk_1_@getToken:bb.a
  %.not249 = icmp eq i8 %i.gi, 0
  br i1 %.not249, label %bb.cq, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  %i.gj = phi i64 [ %i.ge, %bb.cg ], [ %i.gc, %bb.ce ]
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge13, %bb.ch
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.critedge13 ], [ 1, %bb.ch ] ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv374
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !37  ; 3 uses
  %i.gm = zext i8 %i.gl to i64
  %.not250 = icmp sgt i8 %i.gl, -1
  br i1 %.not250, label %bb.cj, label %.critedge13

bb.cj:                                            ; preds = %bb.ci
  %i.gn = icmp samesign ugt i8 %i.gl, 31
  br i1 %i.gn, label %bb.ck, label %.critedge15

bb.ck:                                            ; preds = %bb.cj
  %i.go = add nuw nsw i64 %i.gm, 4294967264
  %i.gp = and i64 %i.go, 4294967295
  %i.gq = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !37
  %.not251 = icmp eq i8 %i.gr, 0
  br i1 %.not251, label %.critedge15, label %.critedge13

.critedge13:                                      ; preds = %bb.ci, %bb.ck
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  br label %bb.ci, !llvm.loop !1284

.critedge15:                                      ; preds = %bb.cj, %bb.ck
  %i.gs = trunc nuw nsw i64 %indvars.iv374 to i32 ; 3 uses
  %i.gt = icmp samesign ult i64 %indvars.iv374, 2
  br i1 %i.gt, label %keywordCode.exit, label %bb.cl

bb.cl:                                            ; preds = %.critedge15
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv374
  %i.gv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gj
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !37
  %i.gx = zext i8 %i.gw to i32
  %i.gy = shl nuw nsw i32 %i.gx, 2
  %i.gz = getelementptr i8, ptr %i.gu, i64 -1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !37
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !37
  %i.he = zext i8 %i.hd to i32
  %i.hf = mul nuw nsw i32 %i.he, 3
  %i.hg = xor i32 %i.gy, %i.hf
  %i.hh = xor i32 %i.hg, %i.gs
  %i.hi = urem i32 %i.hh, 127
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @keywordCode.aHash, i64 %i.hj
  %.0.in.in23.i = load i8, ptr %i.hk, align 1, !tbaa !37 ; 2 uses
  %.not24.i = icmp eq i8 %.0.in.in23.i, 0
  br i1 %.not24.i, label %keywordCode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cl, %bb.cp
  %.0.in.in25.i = phi i8 [ %.0.in.in.i, %bb.cp ], [ %.0.in.in23.i, %bb.cl ]
  %.0.in.i = zext i8 %.0.in.in25.i to i64
  %.0.i = add nuw nsw i64 %.0.in.i, 4294967295
  %i.hl = and i64 %.0.i, 4294967295               ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr @keywordCode.aLen, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !37
  %i.ho = zext i8 %i.hn to i64
  %i.hp = icmp eq i64 %indvars.iv374, %i.ho
  br i1 %i.hp, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %.lr.ph.i
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr @keywordCode.aOffset, i64 %i.hl
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !170
  %i.hs = zext i16 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @keywordCode.zText, i64 %i.hs
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.co, %bb.cm
  %.in.i.i = phi i32 [ %i.hu, %bb.co ], [ %i.gs, %bb.cm ] ; 2 uses
  %.015.i.i = phi ptr [ %i.if, %bb.co ], [ %0, %bb.cm ] ; 3 uses
  %.01014.i.i = phi ptr [ %i.ie, %bb.co ], [ %i.ht, %bb.cm ] ; 2 uses
  %i.hu = add nsw i32 %.in.i.i, -1
  %i.hv = load i8, ptr %.01014.i.i, align 1, !tbaa !37 ; 2 uses
  %.not.i.i = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i, label %sqlite3StrNICmp.exit.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !37  ; 2 uses
  %i.hz = load i8, ptr %.015.i.i, align 1, !tbaa !37
  %i.ia = zext i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !37  ; 2 uses
  %i.id = icmp eq i8 %i.hy, %i.ic
  br i1 %i.id, label %bb.co, label %split.i.i

bb.co:                                            ; preds = %bb.cn
  %i.ie = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 1
  %i.if = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.ig = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.ig, label %.lr.ph.i.i, label %sqlite3StrNICmp.exit.thread.i, !llvm.loop !584

split.i.i:                                        ; preds = %bb.cn
  %i.ih = zext i8 %i.hy to i32
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.loopexit.i:                  ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %.015.i.i, align 1, !tbaa !37
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i
  %.pre35.i = load i8, ptr %.phi.trans.insert34.i, align 1, !tbaa !37
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.i:                           ; preds = %sqlite3StrNICmp.exit.loopexit.i, %split.i.i
  %i.ii = phi i8 [ %i.ic, %split.i.i ], [ %.pre35.i, %sqlite3StrNICmp.exit.loopexit.i ]
  %i.ij = phi i32 [ %i.ih, %split.i.i ], [ 0, %sqlite3StrNICmp.exit.loopexit.i ]
  %i.ik = zext i8 %i.ii to i32
  %i.il = icmp eq i32 %i.ij, %i.ik
  br i1 %i.il, label %sqlite3StrNICmp.exit.thread.i, label %bb.cp

sqlite3StrNICmp.exit.thread.i:                    ; preds = %sqlite3StrNICmp.exit.i, %bb.co
  %i.im = getelementptr inbounds nuw i8, ptr @keywordCode.aCode, i64 %i.hl
  %i.in = load i8, ptr %i.im, align 1, !tbaa !37
  %i.io = zext i8 %i.in to i32
  br label %keywordCode.exit

bb.cp:                                            ; preds = %sqlite3StrNICmp.exit.i, %.lr.ph.i
  %i.ip = getelementptr inbounds nuw i8, ptr @keywordCode.aNext, i64 %i.hl
  %.0.in.in.i = load i8, ptr %i.ip, align 1, !tbaa !37 ; 2 uses
  %.not.i = icmp eq i8 %.0.in.in.i, 0
  br i1 %.not.i, label %keywordCode.exit, label %.lr.ph.i, !llvm.loop !1285

keywordCode.exit:                                 ; preds = %bb.cp, %.critedge15, %bb.cl, %sqlite3StrNICmp.exit.thread.i
  %.014.i = phi i32 [ 23, %.critedge15 ], [ %i.io, %sqlite3StrNICmp.exit.thread.i ], [ 23, %bb.cl ], [ 23, %bb.cp ]
  store i32 %.014.i, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.cq:                                            ; preds = %bb.cf, %bb.cg
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

.critedge4.loopexit313:                           ; preds = %bb.bg
  %i.iq = trunc nuw nsw i64 %indvars.iv342 to i32
  br label %.critedge4

.critedge4.loopexit:                              ; preds = %bb.bc, %bb.bd
  %i.ir = trunc nsw i64 %indvars.iv360 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.loopexit267, %bb.br, %.critedge4.loopexit313, %.thread257, %.thread257.thread402, %bb.an, %.critedge253, %bb.cq, %keywordCode.exit, %bb.cd, %bb.bj, %.critedge6, %bb.ap, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %.loopexit, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d
  %.1198 = phi i32 [ %i.gs, %keywordCode.exit ], [ 1, %bb.cq ], [ %i.l, %bb.d ], [ %i.r, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.p ], [ %i.af, %.loopexit ], [ 1, %bb.q ], [ %i.aj, %bb.r ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.v ], [ 1, %bb.w ], [ 2, %bb.y ], [ 2, %bb.z ], [ 1, %bb.aa ], [ 2, %bb.ac ], [ 2, %bb.ad ], [ 1, %bb.af ], [ 2, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ %spec.select254, %bb.cd ], [ %.4.lcssa, %.critedge253 ], [ 1, %bb.ap ], [ %.12.lcssa, %.critedge6 ], [ %.18405, %.thread257.thread402 ], [ %i.dz, %bb.bj ], [ %i.ez, %.loopexit267 ], [ %i.aw, %bb.an ], [ %.18.ph, %.thread257 ], [ %i.iq, %.critedge4.loopexit313 ], [ %i.ey, %bb.br ], [ %i.ir, %.critedge4.loopexit ]
  ret i32 %.1198
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3Parser(ptr noundef nonnull initializes((8, 16)) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.DbFixer, align 8            ; 7 uses
  %6 = alloca %struct.DbFixer, align 8            ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %7 = alloca %struct.Token, align 8              ; 7 uses
  %8 = alloca %struct.DbFixer, align 8            ; 7 uses
  %9 = alloca %union.YYMINORTYPE, align 8         ; 4 uses
  %10 = alloca %struct.SelectDest, align 4        ; 4 uses
  %11 = alloca %union.YYMINORTYPE, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  %i.h = load i32, ptr %0, align 8, !tbaa !370    ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !370
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !1286
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !1287
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !377
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pr = phi i32 [ 0, %bb.b ], [ %i.h, %bb.a ]
  store ptr %2, ptr %11, align 8, !tbaa !72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx, align 8
  %i.m = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !1288
  %i.o = trunc i32 %1 to i8                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not = icmp eq i32 %1, 248
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.ajn, %bb.c
  %i.aa = phi i32 [ %i.ewl, %bb.ajn ], [ %.pr, %bb.c ] ; 5 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.ab ; 383 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1287 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 389
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.split55.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.ag = getelementptr inbounds [2 x i8], ptr @yy_shift_ofst, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !170 ; 3 uses
  %i.ai = sext i16 %i.ah to i32                   ; 2 uses
  %i.aj = icmp eq i16 %i.ah, -62
  br i1 %i.aj, label %.split55.i, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.split.i, %bb.h
  %.tr41.i = phi i8 [ %i.at, %bb.h ], [ %i.o, %.split.i ] ; 5 uses
  %i.ak = zext i8 %.tr41.i to i32
  %i.al = add nsw i32 %i.ak, %i.ai                ; 2 uses
  %or.cond.i = icmp ugt i32 %i.al, 1346
  br i1 %or.cond.i, label %bb.f, label %bb.e

.split55.i:                                       ; preds = %.split.i, %bb.d
  %i.am = getelementptr inbounds [2 x i8], ptr @yy_default, i64 %i.af
  br label %yy_find_shift_action.exit

bb.e:                                             ; preds = %tailrecurse.i
  %i.an = zext nneg i32 %i.al to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr @yy_lookahead, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.ap, %.tr41.i
  br i1 %.not.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %tailrecurse.i
  %.not37.i = icmp eq i8 %.tr41.i, 0
  br i1 %.not37.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp ult i8 %.tr41.i, -118
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = zext i8 %.tr41.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr @yyFallback, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37  ; 2 uses
  %.not38.i = icmp eq i8 %i.at, 0
  br i1 %.not38.i, label %bb.i, label %tailrecurse.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = add i16 %i.ah, 59
  %or.cond4.i = icmp ult i16 %i.au, 1347
  br i1 %or.cond4.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.av = add nsw i32 %i.ai, 59
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @yy_lookahead, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.az = icmp eq i8 %i.ay, 59
  br i1 %i.az, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @yy_action, i64 %i.aw
  br label %yy_find_shift_action.exit

.thread.i:                                        ; preds = %bb.f, %bb.j, %bb.i
  %i.bb = getelementptr inbounds [2 x i8], ptr @yy_default, i64 %i.af
  br label %yy_find_shift_action.exit

bb.l:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @yy_action, i64 %i.an
  br label %yy_find_shift_action.exit

yy_find_shift_action.exit:                        ; preds = %.split55.i, %bb.k, %.thread.i, %bb.l
  %.2.in.in.i = phi ptr [ %i.am, %.split55.i ], [ %i.bb, %.thread.i ], [ %i.bc, %bb.l ], [ %i.ba, %bb.k ]
  %.2.in.i = load i16, ptr %.2.in.in.i, align 2, !tbaa !170 ; 3 uses
  %.2.i = zext i16 %.2.in.i to i32                ; 2 uses
  %i.bd = icmp ult i16 %.2.in.i, 588
  br i1 %i.bd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %yy_find_shift_action.exit
  %i.be = add nuw nsw i32 %i.aa, 1                ; 2 uses
  store i32 %i.be, ptr %0, align 8, !tbaa !370
  %i.bf = icmp sgt i32 %i.aa, 98
  br i1 %i.bf, label %yy_pop_parser_stack.exit.lr.ph.i.i, label %bb.n

yy_pop_parser_stack.exit.lr.ph.i.i:               ; preds = %bb.m
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !1288 ; 3 uses
  store i32 %i.aa, ptr %0, align 8, !tbaa !370
  br label %yy_pop_parser_stack.exit.i.i

yy_pop_parser_stack.exit.i.i:                     ; preds = %yy_pop_parser_stack.exit.i.i, %yy_pop_parser_stack.exit.lr.ph.i.i
  %i.bh = phi i32 [ %i.aa, %yy_pop_parser_stack.exit.lr.ph.i.i ], [ %i.bo, %yy_pop_parser_stack.exit.i.i ]
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !377
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call fastcc void @yy_destructor(i8 noundef zeroext %i.bm, ptr noundef %i.bn)
  %.in.i.i = load i32, ptr %0, align 8, !tbaa !370 ; 2 uses
  %i.bo = add nsw i32 %.in.i.i, -1                ; 2 uses
  store i32 %i.bo, ptr %0, align 8, !tbaa !370
  %i.bp = icmp sgt i32 %.in.i.i, 0
  br i1 %i.bp, label %yy_pop_parser_stack.exit.i.i, label %yyStackOverflow.exit.i, !llvm.loop !1289

yyStackOverflow.exit.i:                           ; preds = %yy_pop_parser_stack.exit.i.i
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %i.bg, ptr noundef nonnull @.str.278)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  store i8 1, ptr %i.bq, align 4, !tbaa !1290
  store ptr %i.bg, ptr %i.n, align 8, !tbaa !1288
  br label %yy_shift.exit

bb.n:                                             ; preds = %bb.m
  %i.br = zext nneg i32 %i.be to i64
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.br ; 3 uses
  store i32 %.2.i, ptr %i.bs, align 8, !tbaa !1287
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %1, ptr %i.bt, align 4, !tbaa !377
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !1291
  br label %yy_shift.exit

yy_shift.exit:                                    ; preds = %yyStackOverflow.exit.i, %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !1286
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !1286
  br label %.critedge

bb.o:                                             ; preds = %yy_find_shift_action.exit
  %i.by = icmp ult i16 %.2.in.i, 900
  br i1 %i.by, label %bb.p, label %bb.ajj

bb.p:                                             ; preds = %bb.o
  %i.bz = add nsw i32 %.2.i, -588                 ; 2 uses
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !1288 ; 400 uses
  switch i32 %i.bz, label %sqlite3CommitTransaction.exit [
    i32 311, label %bb.ajb
    i32 309, label %bb.ajb
    i32 308, label %bb.ajb
    i32 307, label %bb.ajb
    i32 305, label %bb.aix
    i32 302, label %bb.ahx
    i32 301, label %bb.ahw
    i32 300, label %bb.ahv
    i32 297, label %bb.agw
    i32 296, label %bb.afu
    i32 295, label %bb.aef
    i32 294, label %bb.aee
    i32 293, label %bb.aed
    i32 292, label %bb.acy
    i32 291, label %bb.acw
    i32 286, label %bb.acv
    i32 285, label %bb.acu
    i32 284, label %bb.acj
    i32 283, label %bb.aci
    i32 281, label %bb.ach
    i32 280, label %bb.abx
    i32 279, label %bb.abo
    i32 278, label %bb.abi
    i32 277, label %bb.abc
    i32 276, label %bb.abb
    i32 275, label %bb.aba
    i32 274, label %bb.aau
    i32 265, label %bb.aan
    i32 272, label %bb.aaq
    i32 288, label %bb.aap
    i32 271, label %bb.aap
    i32 263, label %bb.aam
    i32 262, label %bb.aal
    i32 267, label %bb.aao
    i32 266, label %bb.aan
    i32 3, label %bb.q
    i32 6, label %bb.bm
    i32 7, label %bb.bn
    i32 8, label %bb.bo
    i32 9, label %bb.bp
    i32 13, label %bb.cj
    i32 14, label %bb.ck
    i32 15, label %bb.ck
    i32 16, label %bb.ck
    i32 107, label %bb.ck
    i32 109, label %bb.ck
    i32 17, label %bb.cl
    i32 18, label %bb.cl
    i32 19, label %bb.cy
    i32 21, label %bb.dl
    i32 264, label %bb.aak
    i32 261, label %bb.aak
    i32 260, label %bb.yb
end_hunk_1
begin_hunk_2_@sqlite3Parser:bb.a
  %i.ajj = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ajk = load i32, ptr %i.ajj, align 8, !tbaa !37
  call fastcc void @sqlite3CreateForeignKey(ptr noundef %i.ca, ptr noundef %i.ajf, ptr noundef %i.ajg, ptr noundef %i.aji, i32 noundef %i.ajk), !inline_history !1314
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ajm = load i32, ptr %i.ajl, align 8, !tbaa !37
  %i.ajn = getelementptr i8, ptr %i.ca, i64 280
  %.val710.i = load ptr, ptr %i.ajn, align 8, !tbaa !368 ; 2 uses
  %i.ajo = icmp eq ptr %.val710.i, null
  br i1 %i.ajo, label %sqlite3CommitTransaction.exit, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ajp = getelementptr inbounds nuw i8, ptr %.val710.i, i64 72
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !392 ; 2 uses
  %i.ajr = icmp eq ptr %i.ajq, null
  br i1 %i.ajr, label %sqlite3CommitTransaction.exit, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ajs = trunc i32 %i.ajm to i8
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajq, i64 48
  store i8 %i.ajs, ptr %i.ajt, align 8, !tbaa !1324
  br label %sqlite3CommitTransaction.exit

bb.hj:                                            ; preds = %bb.p, %bb.p
  br label %sqlite3CommitTransaction.exit

bb.hk:                                            ; preds = %bb.p
  br label %sqlite3CommitTransaction.exit

bb.hl:                                            ; preds = %bb.p, %bb.p
  br label %sqlite3CommitTransaction.exit

bb.hm:                                            ; preds = %bb.p
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !37
  %i.ajw = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ajx = load i32, ptr %i.ajw, align 8, !tbaa !37
  call fastcc void @sqlite3DropTable(ptr noundef %i.ca, ptr noundef %i.ajv, i32 noundef 0, i32 noundef %i.ajx), !inline_history !1314
  br label %sqlite3CommitTransaction.exit

bb.hn:                                            ; preds = %bb.p
  %i.ajy = getelementptr inbounds i8, ptr %i.ac, i64 -216
  %i.ajz = getelementptr inbounds i8, ptr %i.ac, i64 -88 ; 4 uses
  %i.aka = getelementptr inbounds i8, ptr %i.ac, i64 -56 ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !37 ; 6 uses
  %i.akd = getelementptr inbounds i8, ptr %i.ac, i64 -184
  %i.ake = load i32, ptr %i.akd, align 8, !tbaa !37
  %i.akf = getelementptr inbounds i8, ptr %i.ac, i64 -120
  %i.akg = load i32, ptr %i.akf, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.akh = load ptr, ptr %i.ca, align 8, !tbaa !244 ; 5 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ca, i64 184
  %i.akj = load i32, ptr %i.aki, align 8, !tbaa !1303
  %i.akk = icmp sgt i32 %i.akj, 0
  br i1 %i.akk, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.381), !inline_history !1327
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.akc), !inline_history !1327
  br label %sqlite3CreateView.exit

bb.hp:                                            ; preds = %bb.hn
  call fastcc void @sqlite3StartTable(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ajz, ptr noundef nonnull %i.aka, i32 noundef %i.ake, i32 noundef 1, i32 noundef 0, i32 noundef %i.akg), !inline_history !1327
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ca, i64 280
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !368 ; 4 uses
  %i.akn = icmp eq ptr %i.akm, null
  br i1 %i.akn, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ca, i64 80 ; 3 uses
  %i.akp = load i32, ptr %i.ako, align 8, !tbaa !252
  %.not.i481 = icmp eq i32 %i.akp, 0
  br i1 %.not.i481, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.akc), !inline_history !1327
  br label %sqlite3CreateView.exit

bb.hs:                                            ; preds = %bb.hq
  %i.akq = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.akr = load i32, ptr %i.akq, align 8
  %.not18.i.i = icmp ult i32 %i.akr, 2
  br i1 %.not18.i.i, label %sqlite3TwoPartName.exit.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aks = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.akt = call fastcc i32 @sqlite3FindDb(ptr noundef %i.aks, ptr noundef nonnull %i.ajz), !inline_history !1327
  %i.aku = icmp slt i32 %i.akt, 0
  br i1 %i.aku, label %bb.hu, label %sqlite3TwoPartName.exit.i

bb.hu:                                            ; preds = %bb.ht
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.291, ptr noundef nonnull %i.ajz), !inline_history !1327
  %i.akv = load i32, ptr %i.ako, align 8, !tbaa !252
  %i.akw = add nsw i32 %i.akv, 1
  store i32 %i.akw, ptr %i.ako, align 8, !tbaa !252
  br label %sqlite3TwoPartName.exit.i

sqlite3TwoPartName.exit.i:                        ; preds = %bb.hu, %bb.ht, %bb.hs
  %.054.i = phi ptr [ %i.aka, %bb.ht ], [ %i.aka, %bb.hu ], [ %i.ajz, %bb.hs ]
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akm, i64 144
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !277 ; 2 uses
  %.not.i.i482 = icmp eq ptr %i.aky, null
  br i1 %.not.i.i482, label %sqlite3FixInit.exit.thread.i, label %.preheader.i.i483

.preheader.i.i483:                                ; preds = %sqlite3TwoPartName.exit.i
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %i.ala = load i32, ptr %i.akz, align 8, !tbaa !278 ; 3 uses
  %i.alb = icmp sgt i32 %i.ala, 0
  br i1 %i.alb, label %.lr.ph.i.i490, label %sqlite3SchemaToIndex.exit.i

.lr.ph.i.i490:                                    ; preds = %.preheader.i.i483
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !235
  %wide.trip.count.i.i = zext nneg i32 %i.ala to i64
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hw, %.lr.ph.i.i490
  %indvars.iv.i.i491 = phi i64 [ 0, %.lr.ph.i.i490 ], [ %indvars.iv.next.i.i492, %bb.hw ] ; 3 uses
  %i.ale = getelementptr inbounds nuw [48 x i8], ptr %i.ald, i64 %indvars.iv.i.i491
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 40
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !236
  %i.alh = icmp eq ptr %i.alg, %i.aky
  br i1 %i.alh, label %.loopexit.loopexit.split.loop.exit13.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %indvars.iv.next.i.i492 = add nuw nsw i64 %indvars.iv.i.i491, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i492, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %sqlite3SchemaToIndex.exit.i, label %bb.hv, !llvm.loop !279

.loopexit.loopexit.split.loop.exit13.i.i:         ; preds = %bb.hv
  %i.ali = trunc nuw nsw i64 %indvars.iv.i.i491 to i32
  br label %sqlite3SchemaToIndex.exit.i

sqlite3SchemaToIndex.exit.i:                      ; preds = %bb.hw, %.loopexit.loopexit.split.loop.exit13.i.i, %.preheader.i.i483
  %.1.i.i484 = phi i32 [ %i.ali, %.loopexit.loopexit.split.loop.exit13.i.i ], [ 0, %.preheader.i.i483 ], [ %i.ala, %bb.hw ] ; 3 uses
  %i.alj = icmp slt i32 %.1.i.i484, 0
  %i.alk = icmp eq i32 %.1.i.i484, 1
  %or.cond.i.i = or i1 %i.alj, %i.alk
  br i1 %or.cond.i.i, label %sqlite3FixInit.exit.thread.i, label %bb.hx

bb.hx:                                            ; preds = %sqlite3SchemaToIndex.exit.i
  %i.all = load ptr, ptr %i.ca, align 8, !tbaa !244
  store ptr %i.ca, ptr %8, align 8, !tbaa !1328
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !235
  %i.alo = zext nneg i32 %.1.i.i484 to i64
  %i.alp = getelementptr inbounds nuw [48 x i8], ptr %i.aln, i64 %i.alo
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !444
  store ptr %i.alq, ptr %i.q, align 8, !tbaa !1330
  store ptr @.str.297, ptr %i.r, align 8, !tbaa !1331
  store ptr %.054.i, ptr %i.s, align 8, !tbaa !1332
  %i.alr = call fastcc i32 @sqlite3FixSelect(ptr noundef %8, ptr noundef %i.akc), !inline_history !1327
  %.not47.i = icmp eq i32 %i.alr, 0
  br i1 %.not47.i, label %sqlite3FixInit.exit.thread.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.akc), !inline_history !1327
  br label %sqlite3CreateView.exit

sqlite3FixInit.exit.thread.i:                     ; preds = %bb.hx, %sqlite3SchemaToIndex.exit.i, %sqlite3TwoPartName.exit.i
  %i.als = call fastcc ptr @sqlite3SelectDup(ptr noundef %i.akh, ptr noundef %i.akc), !inline_history !1327
  %i.alt = getelementptr inbounds nuw i8, ptr %i.akm, i64 48
  store ptr %i.als, ptr %i.alt, align 8, !tbaa !365
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.akc), !inline_history !1327
  %i.alu = getelementptr inbounds nuw i8, ptr %i.akh, i64 42
  %i.alv = load i8, ptr %i.alu, align 2, !tbaa !129
  %.not48.i = icmp eq i8 %i.alv, 0
  br i1 %.not48.i, label %bb.hz, label %sqlite3CreateView.exit

bb.hz:                                            ; preds = %sqlite3FixInit.exit.thread.i
  %i.alw = getelementptr inbounds nuw i8, ptr %i.akh, i64 104
  %i.alx = load i8, ptr %i.alw, align 8, !tbaa !182
  %.not49.i = icmp eq i8 %i.alx, 0
  br i1 %.not49.i, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.aly = call fastcc i32 @sqlite3ViewGetColumnNames(ptr noundef nonnull %i.ca, ptr noundef %i.akm), !inline_history !1327 ; 0 uses
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ca, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.alz, i64 16, i1 false), !tbaa.struct !1321
  %i.ama = load ptr, ptr %7, align 8, !tbaa !77   ; 4 uses
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !37
  switch i8 %i.amb, label %bb.ic [
    i8 0, label %bb.id
    i8 59, label %bb.id
  ]

bb.ic:                                            ; preds = %bb.ib
  %i.amc = load i32, ptr %i.t, align 8
  %i.amd = lshr i32 %i.amc, 1
  %i.ame = zext nneg i32 %i.amd to i64
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ama, i64 %i.ame
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ib
  %i.amg = phi ptr [ %i.ama, %bb.ib ], [ %i.ama, %bb.ib ], [ %i.amf, %bb.ic ]
  %i.amh = load i32, ptr %i.t, align 8
  %i.ami = and i32 %i.amh, 1                      ; 2 uses
  store i32 %i.ami, ptr %i.t, align 8
  %i.amj = load ptr, ptr %i.ajy, align 8, !tbaa !77 ; 3 uses
  %i.amk = ptrtoint ptr %i.amg to i64
  %i.aml = ptrtoint ptr %i.amj to i64
  %i.amm = sub i64 %i.amk, %i.aml                 ; 3 uses
  %i.amn = trunc i64 %i.amm to i32
  %i.amo = icmp sgt i32 %i.amn, 0
  br i1 %i.amo, label %.lr.ph.preheader.i486, label %.critedge.i485

.lr.ph.preheader.i486:                            ; preds = %bb.id
  %i.amp = and i64 %i.amm, 2147483647
  br label %.lr.ph.i487

.lr.ph.i487:                                      ; preds = %.critedge2.i, %.lr.ph.preheader.i486
  %indvars.iv.i488 = phi i64 [ %i.amp, %.lr.ph.preheader.i486 ], [ %indvars.iv.next.i489, %.critedge2.i ] ; 4 uses
  %i.amq = getelementptr i8, ptr %i.amj, i64 %indvars.iv.i488
  %i.amr = getelementptr i8, ptr %i.amq, i64 -1
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !37 ; 2 uses
  %i.amt = icmp eq i8 %i.ams, 59
  br i1 %i.amt, label %.critedge2.i, label %bb.ie

bb.ie:                                            ; preds = %.lr.ph.i487
  %i.amu = tail call ptr @__ctype_b_loc() #46, !inline_history !1327
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !168
  %i.amw = zext i8 %i.ams to i64
  %i.amx = getelementptr inbounds nuw [2 x i8], ptr %i.amv, i64 %i.amw
  %i.amy = load i16, ptr %i.amx, align 2, !tbaa !170
  %i.amz = and i16 %i.amy, 8192
  %.not52.i = icmp eq i16 %i.amz, 0
  br i1 %.not52.i, label %.critedge.i485, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.ie, %.lr.ph.i487
  %indvars.iv.next.i489 = add nsw i64 %indvars.iv.i488, -1
  %i.ana = icmp sgt i64 %indvars.iv.i488, 1
  br i1 %i.ana, label %.lr.ph.i487, label %.critedge.i485, !llvm.loop !1333

.critedge.i485:                                   ; preds = %.critedge2.i, %bb.ie, %bb.id
  %.0.lcssa.i = phi i64 [ %i.amm, %bb.id ], [ %indvars.iv.i488, %bb.ie ], [ 0, %.critedge2.i ]
  %sext.i = shl i64 %.0.lcssa.i, 32
  %i.anb = ashr exact i64 %sext.i, 32
  %i.anc = getelementptr i8, ptr %i.amj, i64 %i.anb
  %i.and = getelementptr i8, ptr %i.anc, i64 -1
  store ptr %i.and, ptr %7, align 8, !tbaa !77
  %i.ane = or disjoint i32 %i.ami, 2
  store i32 %i.ane, ptr %i.t, align 8
  call fastcc void @sqlite3EndTable(ptr noundef nonnull %i.ca, ptr noundef null, ptr noundef nonnull %7, ptr noundef null), !inline_history !1327
  br label %sqlite3CreateView.exit

sqlite3CreateView.exit:                           ; preds = %bb.ho, %bb.hr, %bb.hy, %sqlite3FixInit.exit.thread.i, %.critedge.i485
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %sqlite3CommitTransaction.exit

bb.if:                                            ; preds = %bb.p
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !37
  %i.anh = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ani = load i32, ptr %i.anh, align 8, !tbaa !37
  call fastcc void @sqlite3DropTable(ptr noundef %i.ca, ptr noundef %i.ang, i32 noundef 1, i32 noundef %i.ani), !inline_history !1314
  br label %sqlite3CommitTransaction.exit

bb.ig:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.yy_reduce.dest, i64 12, i1 false)
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !37
  %i.anl = call fastcc i32 @sqlite3Select(ptr noundef %i.ca, ptr noundef %i.ank, ptr noundef %10, ptr noundef null, i32 noundef 0, ptr noundef null) ; 0 uses
  %i.anm = load ptr, ptr %i.anj, align 8, !tbaa !37
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.anm), !inline_history !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %sqlite3CommitTransaction.exit

bb.ih:                                            ; preds = %bb.p, %bb.p
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.ii:                                            ; preds = %bb.p
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !37 ; 2 uses
  %.not643.i = icmp eq ptr %i.anq, null
  br i1 %.not643.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.anr = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ans = load i32, ptr %i.anr, align 8, !tbaa !37
  %i.ant = trunc i32 %i.ans to i8
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  store i8 %i.ant, ptr %i.anu, align 8, !tbaa !1334
  %i.anv = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !37
  %i.anx = load ptr, ptr %i.anp, align 8, !tbaa !37
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 56
  store ptr %i.anw, ptr %i.any, align 8, !tbaa !1226
  br label %bb.il

bb.ik:                                            ; preds = %bb.ii
  %i.anz = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !37
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.aoa), !inline_history !1314
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.aob = load ptr, ptr %i.anp, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.im:                                            ; preds = %bb.p
  br label %sqlite3CommitTransaction.exit

bb.in:                                            ; preds = %bb.p
  %i.aoc = getelementptr inbounds i8, ptr %i.ac, i64 -184
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !37
  %i.aoe = getelementptr inbounds i8, ptr %i.ac, i64 -152
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !37
  %i.aog = getelementptr inbounds i8, ptr %i.ac, i64 -120
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !37
  %i.aoi = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !37
  %i.aok = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !37
  %i.aom = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !37
  %i.aoo = getelementptr inbounds i8, ptr %i.ac, i64 -216
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !37
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !37
  %i.aos = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !37
  %i.aou = call fastcc ptr @sqlite3SelectNew(ptr noundef %i.ca, ptr noundef %i.aod, ptr noundef %i.aof, ptr noundef %i.aoh, ptr noundef %i.aoj, ptr noundef %i.aol, ptr noundef %i.aon, i32 noundef %i.aop, ptr noundef %i.aor, ptr noundef %i.aot), !inline_history !1314
  br label %sqlite3CommitTransaction.exit

bb.io:                                            ; preds = %bb.p, %bb.p
  %i.aov = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.ip:                                            ; preds = %bb.p
  %i.aox = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !37
  %i.aoz = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !37
  %i.apb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.apd = load i32, ptr %i.apc, align 8
  %.not642.i = icmp ult i32 %i.apd, 2
  %i.ape = select i1 %.not642.i, ptr null, ptr %i.apb
  %.val708.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.apf = call fastcc ptr @sqlite3ExprListAppend(ptr %.val708.i, ptr noundef %i.aoy, ptr noundef %i.apa, ptr noundef %i.ape), !inline_history !1314
  br label %sqlite3CommitTransaction.exit

bb.iq:                                            ; preds = %bb.p
  %.val686.i = load ptr, ptr %i.ca, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i493 = icmp eq ptr %.val686.i, null
  br i1 %.not.i.i.i493, label %sqlite3DbMallocRaw.exit.i.i496, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.apg = getelementptr inbounds nuw i8, ptr %.val686.i, i64 42 ; 2 uses
  %i.aph = load i8, ptr %i.apg, align 2, !tbaa !129
  %i.api = icmp eq i8 %i.aph, 0
  br i1 %i.api, label %bb.is, label %sqlite3Expr.exit498

bb.is:                                            ; preds = %bb.ir
  %i.apj = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.apk = icmp eq ptr %i.apj, null
  br i1 %i.apk, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  store i8 1, ptr %i.apg, align 2, !tbaa !129
  br label %sqlite3Expr.exit498

sqlite3DbMallocRaw.exit.i.i496:                   ; preds = %bb.iq
  %i.apl = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i497 = icmp eq ptr %i.apl, null
  br i1 %.not.i.i497, label %sqlite3Expr.exit498, label %bb.iu

bb.iu:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i496, %bb.is
  %.0.i11.i.i495 = phi ptr [ %i.apl, %sqlite3DbMallocRaw.exit.i.i496 ], [ %i.apj, %bb.is ] ; 6 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %.0.i11.i.i495, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.apm, i8 0, i64 119, i1 false)
  store i8 107, ptr %.0.i11.i.i495, align 8, !tbaa !1319
  %i.apn = getelementptr inbounds nuw i8, ptr %.0.i11.i.i495, i64 16
  %i.apo = getelementptr inbounds nuw i8, ptr %.0.i11.i.i495, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apn, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.apo, align 8, !tbaa !1320
  %i.app = getelementptr inbounds nuw i8, ptr %.0.i11.i.i495, i64 112
  store i32 1, ptr %i.app, align 8, !tbaa !1322
  br label %sqlite3Expr.exit498

sqlite3Expr.exit498:                              ; preds = %bb.ir, %bb.it, %sqlite3DbMallocRaw.exit.i.i496, %bb.iu
  %.0.i494 = phi ptr [ %.0.i11.i.i495, %bb.iu ], [ null, %sqlite3DbMallocRaw.exit.i.i496 ], [ null, %bb.it ], [ null, %bb.ir ]
  %i.apq = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !37
  %.val707.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.aps = call fastcc ptr @sqlite3ExprListAppend(ptr %.val707.i, ptr noundef %i.apr, ptr noundef %.0.i494, ptr noundef null), !inline_history !1314
  br label %sqlite3CommitTransaction.exit

bb.iv:                                            ; preds = %bb.p
  %.val685.i = load ptr, ptr %i.ca, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i499 = icmp eq ptr %.val685.i, null
  br i1 %.not.i.i.i499, label %sqlite3DbMallocRaw.exit.i.i502, label %bb.iw

end_hunk_2
begin_hunk_3_@absFunc:bb.a
bb.h:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !124
  %i.t = and i16 %i.s, -32
  %i.u = or disjoint i16 %i.t, 1
  store i16 %i.u, ptr %i.r, align 4, !tbaa !124
  br label %sqlite3_result_error.exit.sink.split

bb.i:                                             ; preds = %bb.a
  %i.v = tail call fastcc double @sqlite3VdbeRealValue(ptr noundef nonnull %i.a) ; 3 uses
  %i.w = fcmp olt double %i.v, 0.000000e+00
  %i.x = fneg double %i.v
  %.0 = select i1 %i.w, double %i.x, double %i.v  ; 2 uses
  %i.y = fcmp uno double %.0, 0.000000e+00
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !124
  %i.ab = and i16 %i.aa, -32
  %i.ac = or disjoint i16 %i.ab, 1
  store i16 %i.ac, ptr %i.z, align 4, !tbaa !124
  br label %sqlite3_result_error.exit.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.0, ptr %i.ae, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 8, ptr %i.af, align 4, !tbaa !124
  br label %sqlite3_result_error.exit.sink.split

sqlite3_result_error.exit.sink.split:             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.e
  %.sink = phi i8 [ 3, %bb.e ], [ 1, %bb.g ], [ 5, %bb.h ], [ 5, %bb.j ], [ 2, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %.sink, ptr %i.ag, align 2, !tbaa !126
  br label %sqlite3_result_error.exit

sqlite3_result_error.exit:                        ; preds = %sqlite3_result_error.exit.sink.split, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @roundFunc(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca [500 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.c = icmp eq i32 %1, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !216  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  %i.g = load i8, ptr %i.f, align 2, !tbaa !126
  %i.h = icmp eq i8 %i.g, 5
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i64 @sqlite3VdbeIntValue(ptr noundef nonnull %i.e)
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.k, i32 30)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.m = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 38
  %i.o = load i8, ptr %i.n, align 2, !tbaa !126
  %i.p = icmp eq i8 %i.o, 5
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call fastcc double @sqlite3VdbeRealValue(ptr noundef nonnull %i.m) ; 2 uses
  store double %i.q, ptr %i.a, align 8, !tbaa !51
  %i.r = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 500, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.609, i32 noundef %.0, double noundef %i.q) ; 0 uses
  %i.s = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.b, ptr noundef %i.a) ; 0 uses
  %i.t = load double, ptr %i.a, align 8, !tbaa !51 ; 2 uses
  %i.u = fcmp uno double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !124
  %i.x = and i16 %i.w, -32
  %i.y = or disjoint i16 %i.x, 1
  store i16 %i.y, ptr %i.v, align 4, !tbaa !124
  br label %sqlite3_result_double.exit

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.t, ptr %i.aa, align 8, !tbaa !167
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 8, ptr %i.ab, align 4, !tbaa !124
  br label %sqlite3_result_double.exit

sqlite3_result_double.exit:                       ; preds = %bb.f, %bb.g
  %.sink.i.i = phi i8 [ 5, %bb.f ], [ 2, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %.sink.i.i, ptr %i.ac, align 2, !tbaa !126
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.b, %sqlite3_result_double.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @upperFunc(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %sqlite3_result_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.d = load i8, ptr %i.c, align 2, !tbaa !126
  %i.e = icmp eq i8 %i.d, 5
  br i1 %i.e, label %sqlite3_result_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.b, i8 noundef zeroext 1) ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !216    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !124  ; 2 uses
  %i.j = and i16 %i.i, 16
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.g, i8 noundef zeroext 1)
  %.not8.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i, label %sqlite3_value_bytes.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load i16, ptr %i.h, align 4, !tbaa !124
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %bb.c
  %i.l = phi i16 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.i, %bb.c ]
  %i.m = and i16 %i.l, 2048
  %.not9.i.i = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !123  ; 2 uses
  br i1 %.not9.i.i, label %sqlite3_value_bytes.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.g, align 8, !tbaa !37
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.o, %i.q
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.r, %bb.f ], [ 0, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %sqlite3_result_text.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_value_bytes.exit
  %i.s = add nsw i32 %.0.i.i, 1                   ; 2 uses
  %i.t = tail call ptr @sqlite3_malloc(i32 noundef %i.s) ; 8 uses
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  %i.v = icmp sgt i32 %.0.i.i, -1
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %contextMalloc.exit.thread, label %contextMalloc.exit

contextMalloc.exit.thread:                        ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.x = load i16, ptr %i.w, align 4, !tbaa !124
  %i.y = and i16 %i.x, -32
  %i.z = or disjoint i16 %i.y, 1
  store i16 %i.z, ptr %i.w, align 4, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 5, ptr %i.aa, align 2, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 7, ptr %i.ab, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 42
  store i8 1, ptr %i.ae, align 2, !tbaa !129
  br label %sqlite3_result_text.exit

contextMalloc.exit:                               ; preds = %bb.g
  br i1 %i.u, label %sqlite3_result_text.exit, label %bb.h

bb.h:                                             ; preds = %contextMalloc.exit
  %i.af = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.f, i64 %i.af, i1 false)
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !37   ; 2 uses
  %.not2528 = icmp eq i8 %i.ag, 0
  br i1 %.not2528, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ah = tail call ptr @__ctype_toupper_loc() #46
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ai = phi i8 [ %i.ag, %.lr.ph ], [ %i.ap, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %3 = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.ak = sext i8 %i.ai to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37  ; 2 uses
  %.not25 = icmp eq i8 %i.ap, 0
  br i1 %.not25, label %._crit_edge, label %bb.i, !llvm.loop !1946

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.t)
  %.249.i.i = trunc i64 %strlen.i.i to i32        ; 2 uses
  %i.ar = icmp eq ptr @sqlite3_free, inttoptr (i64 -1 to ptr)
  br i1 %i.ar, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %.0.i.i27 = add nsw i32 %.249.i.i, 1            ; 2 uses
  %i.as = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.aq, i32 noundef %.0.i.i27, i32 noundef 0)
  %.not58.i.i = icmp eq i32 %i.as, 0
  br i1 %.not58.i.i, label %bb.k, label %sqlite3_result_text.exit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !119
  %i.av = sext i32 %.0.i.i27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.t, i64 %i.av, i1 false)
  br label %sqlite3VdbeMemSetStr.exit.sink.split.i

bb.l:                                             ; preds = %._crit_edge
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.aq)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.aw, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @sqlite3_free, ptr %i.ax, align 8, !tbaa !122
  br label %sqlite3VdbeMemSetStr.exit.sink.split.i

sqlite3VdbeMemSetStr.exit.sink.split.i:           ; preds = %bb.k, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.249.i.i, ptr %i.ay, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 98, ptr %i.az, align 4, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 1, ptr %i.ba, align 1, !tbaa !125
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 3, ptr %i.bb, align 2, !tbaa !126
  br label %sqlite3_result_text.exit

sqlite3_result_text.exit:                         ; preds = %sqlite3VdbeMemSetStr.exit.sink.split.i, %bb.j, %contextMalloc.exit.thread, %sqlite3_value_bytes.exit, %contextMalloc.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lowerFunc(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %sqlite3_result_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.d = load i8, ptr %i.c, align 2, !tbaa !126
  %i.e = icmp eq i8 %i.d, 5
  br i1 %i.e, label %sqlite3_result_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.b, i8 noundef zeroext 1) ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !216    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !124  ; 2 uses
  %i.j = and i16 %i.i, 16
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.g, i8 noundef zeroext 1)
  %.not8.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i, label %sqlite3_value_bytes.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load i16, ptr %i.h, align 4, !tbaa !124
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %bb.c
  %i.l = phi i16 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.i, %bb.c ]
  %i.m = and i16 %i.l, 2048
  %.not9.i.i = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !123  ; 2 uses
  br i1 %.not9.i.i, label %sqlite3_value_bytes.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.g, align 8, !tbaa !37
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.o, %i.q
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.r, %bb.f ], [ 0, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %sqlite3_result_text.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_value_bytes.exit
  %i.s = add nsw i32 %.0.i.i, 1                   ; 2 uses
  %i.t = tail call ptr @sqlite3_malloc(i32 noundef %i.s) ; 8 uses
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  %i.v = icmp sgt i32 %.0.i.i, -1
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %contextMalloc.exit.thread, label %contextMalloc.exit

contextMalloc.exit.thread:                        ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.x = load i16, ptr %i.w, align 4, !tbaa !124
  %i.y = and i16 %i.x, -32
  %i.z = or disjoint i16 %i.y, 1
  store i16 %i.z, ptr %i.w, align 4, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 5, ptr %i.aa, align 2, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 7, ptr %i.ab, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 42
  store i8 1, ptr %i.ae, align 2, !tbaa !129
  br label %sqlite3_result_text.exit

contextMalloc.exit:                               ; preds = %bb.g
  br i1 %i.u, label %sqlite3_result_text.exit, label %bb.h

bb.h:                                             ; preds = %contextMalloc.exit
  %i.af = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.f, i64 %i.af, i1 false)
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !37   ; 2 uses
  %.not2528 = icmp eq i8 %i.ag, 0
  br i1 %.not2528, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ah = tail call ptr @__ctype_tolower_loc() #46
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ai = phi i8 [ %i.ag, %.lr.ph ], [ %i.ap, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %3 = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.ak = sext i8 %i.ai to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37  ; 2 uses
  %.not25 = icmp eq i8 %i.ap, 0
  br i1 %.not25, label %._crit_edge, label %bb.i, !llvm.loop !1947

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.t)
  %.249.i.i = trunc i64 %strlen.i.i to i32        ; 2 uses
  %i.ar = icmp eq ptr @sqlite3_free, inttoptr (i64 -1 to ptr)
  br i1 %i.ar, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %.0.i.i27 = add nsw i32 %.249.i.i, 1            ; 2 uses
  %i.as = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.aq, i32 noundef %.0.i.i27, i32 noundef 0)
  %.not58.i.i = icmp eq i32 %i.as, 0
  br i1 %.not58.i.i, label %bb.k, label %sqlite3_result_text.exit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !119
  %i.av = sext i32 %.0.i.i27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.t, i64 %i.av, i1 false)
  br label %sqlite3VdbeMemSetStr.exit.sink.split.i

bb.l:                                             ; preds = %._crit_edge
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.aq)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.aw, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @sqlite3_free, ptr %i.ax, align 8, !tbaa !122
  br label %sqlite3VdbeMemSetStr.exit.sink.split.i

sqlite3VdbeMemSetStr.exit.sink.split.i:           ; preds = %bb.k, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.249.i.i, ptr %i.ay, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 98, ptr %i.az, align 4, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 1, ptr %i.ba, align 1, !tbaa !125
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 3, ptr %i.bb, align 2, !tbaa !126
  br label %sqlite3_result_text.exit

sqlite3_result_text.exit:                         ; preds = %sqlite3VdbeMemSetStr.exit.sink.split.i, %bb.j, %contextMalloc.exit.thread, %sqlite3_value_bytes.exit, %contextMalloc.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ifnullFunc(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1948

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  %i.e = load i8, ptr %i.d, align 2, !tbaa !126
  %.not = icmp eq i8 %i.e, 5
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call fastcc i32 @sqlite3VdbeMemCopy(ptr noundef nonnull %i.f, ptr noundef nonnull readonly %i.c) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hexFunc(ptr noundef %0, i32 %1, ptr noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !216    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 4 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !124  ; 3 uses
  %i.d = and i16 %i.c, 18
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %i.c, 2048
  %.not.i.i = icmp eq i16 %i.e, 0
  br i1 %.not.i.i, label %sqlite3VdbeMemExpandBlob.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !123
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.g, %i.i
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %i.k = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.a, i32 noundef %spec.store.select.i.i, i32 noundef 1)
  %.not14.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not14.not.i.i, label %.thread.i.i, label %.sqlite3VdbeMemExpandBlob.exit_crit_edge.i

.sqlite3VdbeMemExpandBlob.exit_crit_edge.i:       ; preds = %bb.c
  %.pre.i = load i16, ptr %i.b, align 4, !tbaa !124
  br label %sqlite3VdbeMemExpandBlob.exit.i

.thread.i.i:                                      ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  %i.n = load i32, ptr %i.f, align 8, !tbaa !123
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i64, ptr %i.a, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 0, i64 %i.q, i1 false)
  %i.r = load i64, ptr %i.a, align 8, !tbaa !37
  %i.s = load i32, ptr %i.f, align 8, !tbaa !123
  %i.t = trunc i64 %i.r to i32
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.f, align 8, !tbaa !123
  %i.v = load i16, ptr %i.b, align 4, !tbaa !124
  %i.w = and i16 %i.v, -2081
  br label %sqlite3VdbeMemExpandBlob.exit.i

sqlite3VdbeMemExpandBlob.exit.i:                  ; preds = %.thread.i.i, %.sqlite3VdbeMemExpandBlob.exit_crit_edge.i, %bb.b
  %i.x = phi i16 [ %.pre.i, %.sqlite3VdbeMemExpandBlob.exit_crit_edge.i ], [ %i.c, %bb.b ], [ %i.w, %.thread.i.i ]
  %i.y = and i16 %i.x, -19
  %i.z = or disjoint i16 %i.y, 16
  store i16 %i.z, ptr %i.b, align 4, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !119
  br label %sqlite3_value_blob.exit

bb.d:                                             ; preds = %bb.a
  %i.ac = tail call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.a, i8 noundef zeroext 1)
  br label %sqlite3_value_blob.exit

sqlite3_value_blob.exit:                          ; preds = %sqlite3VdbeMemExpandBlob.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ab, %sqlite3VdbeMemExpandBlob.exit.i ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !216   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !124 ; 2 uses
  %i.ag = and i16 %i.af, 16
  %.not.i.i23 = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %sqlite3_value_blob.exit
  %i.ah = tail call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.ad, i8 noundef zeroext 1)
  %.not8.i.i = icmp eq ptr %i.ah, null
  br i1 %.not8.i.i, label %sqlite3_value_bytes.exit.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e
  %.pre.i.i = load i16, ptr %i.ae, align 4, !tbaa !124
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %sqlite3_value_blob.exit
  %i.ai = phi i16 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.af, %sqlite3_value_blob.exit ]
  %i.aj = and i16 %i.ai, 2048
  %.not9.i.i = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !123 ; 2 uses
  br i1 %.not9.i.i, label %sqlite3_value_bytes.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %i.al, %i.an
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ao, %bb.g ], [ %i.al, %bb.f ] ; 3 uses
  %i.ap = shl nsw i32 %.0.i.i, 1
  %i.aq = icmp sgt i32 %.0.i.i, 499999999
  br i1 %i.aq, label %bb.h, label %sqlite3_value_bytes.exit.thread

bb.h:                                             ; preds = %sqlite3_value_bytes.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 2064, ptr %i.as, align 4, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 4, ptr %i.at, align 2, !tbaa !126
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.au, align 8, !tbaa !123
  store i64 1000000001, ptr %i.ar, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 1, ptr %i.av, align 1, !tbaa !125
  br label %sqlite3_result_text.exit

sqlite3_value_bytes.exit.thread:                  ; preds = %bb.e, %sqlite3_value_bytes.exit
  %i.aw = phi i32 [ %i.ap, %sqlite3_value_bytes.exit ], [ 0, %bb.e ] ; 5 uses
  %.0.i.i27 = phi i32 [ %.0.i.i, %sqlite3_value_bytes.exit ], [ 0, %bb.e ] ; 5 uses
end_hunk_3
