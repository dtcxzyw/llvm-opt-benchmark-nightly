Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dbcommands?download=true
inline.NumInlined: 97
inline.NumDeleted: 36
begin_hunk_0_@createdb:bb.a
  %i.pu = call ptr @cstring_to_text(ptr noundef %i.jk) #16
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store i64 %i.pv, ptr %i.pw, align 16
  %i.px = call ptr @cstring_to_text(ptr noundef %i.jr) #16
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i64 %i.py, ptr %i.pz, align 8
  %.not474510 = icmp eq ptr %.6, null
  %.not474 = select i1 %i.kw, i1 true, i1 %.not474510
  br i1 %.not474, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %.loopexit
  %i.qa = call ptr @cstring_to_text(ptr noundef nonnull %.6) #16
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i64 %i.qb, ptr %i.qc, align 16
  br label %bb.gv

bb.gu:                                            ; preds = %.loopexit
  %i.qd = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 1, ptr %i.qd, align 2
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.not475 = icmp eq ptr %spec.select495, null
  br i1 %.not475, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.qe = call ptr @cstring_to_text(ptr noundef nonnull %spec.select495) #16
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store i64 %i.qf, ptr %i.qg, align 8
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gv
  %i.qh = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  store i8 1, ptr %i.qh, align 1
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.not476 = icmp eq ptr %.2, null
  br i1 %.not476, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.qi = call ptr @cstring_to_text(ptr noundef nonnull %.2) #16
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store i64 %i.qj, ptr %i.qk, align 16
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gy
  %i.ql = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 1, ptr %i.ql, align 16
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.qm = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  store i8 1, ptr %i.qm, align 1
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = call ptr @heap_form_tuple(ptr noundef %i.qo, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #16
  call void @CatalogTupleInsert(ptr noundef %i.ok, ptr noundef %i.qp) #16
  call void @recordDependencyOnOwner(i32 noundef 1262, i32 noundef %.2404, i32 noundef %.0401) #16
  %i.qq = load i32, ptr %i.a, align 4             ; 9 uses
  call void @copyTemplateDependencies(i32 noundef %i.qq, i32 noundef %.2404) #16
  %i.qr = load ptr, ptr @object_access_hook, align 8
  %.not477 = icmp eq ptr %i.qr, null
  br i1 %.not477, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @RunObjectPostCreateHook(i32 noundef 1262, i32 noundef %.2404, i32 noundef 0, i1 noundef zeroext false) #16
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  br i1 %i.in, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  call void @LockSharedObject(i32 noundef 1262, i32 noundef %.2404, i16 noundef zeroext 0, i32 noundef 1) #16
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  store i32 %i.qq, ptr %8, align 4
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.2404, ptr %i.qs, align 4
  %i.qt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.1, ptr %i.qt, align 4
  %i.qu = ptrtoint ptr %8 to i64                  ; 4 uses
  call void @before_shmem_exit(ptr noundef nonnull @createdb_failure_callback, i64 noundef %i.qu) #16
  %i.qv = load ptr, ptr @PG_exception_stack, align 8 ; 2 uses
  %i.qw = load ptr, ptr @error_context_stack, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.qx = call i32 @__sigsetjmp(ptr noundef nonnull %10, i32 noundef 0) #20
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %bb.hg, label %bb.ij

bb.hg:                                            ; preds = %bb.hf
  store ptr %10, ptr @PG_exception_stack, align 8
  %i.qz = load i32, ptr %i.o, align 4             ; 5 uses
  %.0..0..0..0.318 = load volatile i32, ptr %i.p, align 4 ; 5 uses
  br i1 %i.in, label %bb.hh, label %bb.hz

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ra = call ptr @GetDatabasePath(i32 noundef %i.qq, i32 noundef %i.qz) #16 ; 4 uses
  %i.rb = call ptr @GetDatabasePath(i32 noundef %.2404, i32 noundef %.0..0..0..0.318) #16 ; 3 uses
  call fastcc void @CreateDirAndVersionFile(ptr noundef %i.rb, i32 noundef %.2404, i32 noundef %.0..0..0..0.318, i1 noundef zeroext false)
  call void @RelationMapCopy(i32 noundef %.2404, i32 noundef %.0..0..0..0.318, ptr noundef %i.ra, ptr noundef %i.rb) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.rc = call i32 @RelationMapOidToFilenumberForDatabase(ptr noundef %i.ra, i32 noundef 1259) #16 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.qq, ptr %i.rd, align 4
  store i32 1259, ptr %5, align 4
  call void @LockRelationId(ptr noundef nonnull %5, i32 noundef 1) #16
  %.sroa.021.0.insert.ext.i.i = zext i32 %i.qz to i64
  %.sroa.021.4.insert.ext.i.i = zext i32 %i.qq to i64
  %.sroa.021.4.insert.shift.i.i = shl nuw i64 %.sroa.021.4.insert.ext.i.i, 32
  %.sroa.021.4.insert.insert.i.i = or disjoint i64 %.sroa.021.4.insert.shift.i.i, %.sroa.021.0.insert.ext.i.i ; 2 uses
  %i.re = call ptr @smgropen(i64 %.sroa.021.4.insert.insert.i.i, i32 %i.rc, i32 noundef -1) #16 ; 2 uses
  %i.rf = call i32 @smgrnblocks(ptr noundef %i.re, i32 noundef 0) #16 ; 2 uses
  call void @smgrclose(ptr noundef %i.re) #16
  %i.rg = call ptr @GetAccessStrategy(i32 noundef 1) #16
  %i.rh = call ptr @GetLatestSnapshot() #16
  %i.ri = call ptr @RegisterSnapshot(ptr noundef %i.rh) #16 ; 2 uses
  %.not36.i.i = icmp eq i32 %i.rf, 0
  br i1 %.not36.i.i, label %ScanSourceDatabasePgClass.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.hh
  %i.rj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.rk = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.rl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hy, %.lr.ph.i.i
  %.035.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.uc, %bb.hy ] ; 2 uses
  %.03134.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.1.i.i, %bb.hy ] ; 4 uses
  %i.ro = load volatile i32, ptr @InterruptPending, align 4
  %.not.i.i = icmp eq i32 %i.ro, 0
  br i1 %.not.i.i, label %bb.hk, label %bb.hj, !prof !13

bb.hj:                                            ; preds = %bb.hi
  call void @ProcessInterrupts() #16
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.rp = call i32 @ReadBufferWithoutRelcache(i64 %.sroa.021.4.insert.insert.i.i, i32 %i.rc, i32 noundef 0, i32 noundef %.035.i.i, i32 noundef 0, ptr noundef %i.rg, i1 noundef zeroext true) #16 ; 7 uses
  call void @LockBufferInternal(i32 noundef %i.rp, i32 noundef 1) #16
  %i.rq = icmp slt i32 %i.rp, 0
  br i1 %i.rq, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.rr = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.rs = xor i32 %i.rp, -1
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rt
  %i.rv = load ptr, ptr %i.ru, align 8
  br label %BufferGetPage.exit.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.rw = load ptr, ptr @BufferBlocks, align 8
  %i.rx = add nsw i32 %i.rp, -1
  %i.ry = sext i32 %i.rx to i64
  %i.rz = shl nsw i64 %i.ry, 13
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rz
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.hm, %bb.hl
  %.0.i.i.i.i = phi ptr [ %i.rv, %bb.hl ], [ %i.sa, %bb.hm ] ; 4 uses
  %i.sb = getelementptr i8, ptr %.0.i.i.i.i, i64 14
  %.val.i.i = load i16, ptr %i.sb, align 2
  %i.sc = icmp eq i16 %.val.i.i, 0
  br i1 %i.sc, label %bb.hy, label %bb.hn

bb.hn:                                            ; preds = %BufferGetPage.exit.i.i
  %i.sd = getelementptr i8, ptr %.0.i.i.i.i, i64 12 ; 2 uses
  %.val32.i.i = load i16, ptr %i.sd, align 4
  %i.se = icmp ult i16 %.val32.i.i, 25
  br i1 %i.se, label %bb.hy, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.sf = call i32 @BufferGetBlockNumber(i32 noundef %i.rp) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %.val.i.i.i = load i16, ptr %i.sd, align 4      ; 2 uses
  %i.sg = icmp ult i16 %.val.i.i.i, 25
  %i.sh = zext i16 %.val.i.i.i to i32
  %i.si = add nuw nsw i32 %i.sh, 262120
  %i.sj = lshr i32 %i.si, 2
  %i.sk = trunc i32 %i.sj to i16                  ; 2 uses
  %.not3437.i.i.i = icmp eq i16 %i.sk, 0
  %.not34.i.i.i = select i1 %i.sg, i1 true, i1 %.not3437.i.i.i
  br i1 %.not34.i.i.i, label %ScanSourceDatabasePgClassPage.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ho
  %i.sl = getelementptr i8, ptr %.0.i.i.i.i, i64 20
  %i.sm = lshr i32 %i.sf, 16
  %i.sn = trunc nuw i32 %i.sm to i16
  %i.so = trunc i32 %i.sf to i16
  %umax.i.i.i = add nuw nsw i16 %i.sk, 1
  %wide.trip.count.i.i.i = zext i16 %umax.i.i.i to i64
  br label %bb.hp

bb.hp:                                            ; preds = %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i ] ; 3 uses
  %.02335.i.i.i = phi ptr [ %.03134.i.i, %.lr.ph.i.i.i ], [ %.3.i.i.i, %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i ] ; 6 uses
  %i.sp = getelementptr [4 x i8], ptr %i.sl, i64 %indvars.iv.i.i.i
  %i.sq = load i32, ptr %i.sp, align 4            ; 3 uses
  %i.sr = and i32 %i.sq, 98304
  %i.ss = icmp eq i32 %i.sr, 32768
  br i1 %i.ss, label %bb.hq, label %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i

bb.hq:                                            ; preds = %bb.hp
  store i16 %i.sn, ptr %i.rj, align 4
  store i16 %i.so, ptr %i.rk, align 2
  %11 = trunc nuw i64 %indvars.iv.i.i.i to i16
  store i16 %11, ptr %i.rl, align 8
  %i.st = and i32 %i.sq, 32767
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.su
  store ptr %i.sv, ptr %i.rm, align 8
  %i.sw = lshr i32 %i.sq, 17
  store i32 %i.sw, ptr %4, align 8
  store i32 1259, ptr %i.rn, align 4
  %i.sx = call zeroext i1 @HeapTupleSatisfiesVisibility(ptr noundef nonnull %4, ptr noundef %i.ri, i32 noundef %i.rp) #16
  br i1 %i.sx, label %bb.hr, label %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i

bb.hr:                                            ; preds = %bb.hq
  %.val30.i.i.i = load ptr, ptr %i.rm, align 8    ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 22
  %i.sz = load i8, ptr %i.sy, align 2
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 %i.ta ; 7 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 92 ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4
  %i.te = icmp eq i32 %i.td, 1664
  br i1 %i.te, label %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 119
  %i.tg = load i8, ptr %i.tf, align 1
  switch i8 %i.tg, label %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i [
    i8 114, label %bb.ht
    i8 105, label %bb.ht
    i8 83, label %bb.ht
    i8 116, label %bb.ht
    i8 109, label %bb.ht
  ]

bb.ht:                                            ; preds = %bb.hs, %bb.hs, %bb.hs, %bb.hs, %bb.hs
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 118 ; 2 uses
  %i.ti = load i8, ptr %i.th, align 2
  %i.tj = icmp eq i8 %i.ti, 116
  br i1 %i.tj, label %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 88
  %i.tl = load i32, ptr %i.tk, align 4            ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.tl, 0
  br i1 %.not.i.i.i.i, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  %i.tm = load i32, ptr %i.tb, align 4
  %i.tn = call i32 @RelationMapOidToFilenumberForDatabase(ptr noundef %i.ra, i32 noundef %i.tm) #16 ; 2 uses
  %.not32.i.i.i.i = icmp eq i32 %i.tn, 0
  br i1 %.not32.i.i.i.i, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.to = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.tp = load i32, ptr %i.tb, align 4
  %i.tq = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.114, i32 noundef %i.tp) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 433, ptr noundef nonnull @__func__.ScanSourceDatabasePgClassTuple) #16
  unreachable

bb.hx:                                            ; preds = %bb.hv, %bb.hu
  %.03.i.i.i.i = phi i32 [ %i.tn, %bb.hv ], [ %i.tl, %bb.hu ]
  %i.tr = call ptr @palloc(i64 noundef 20) #16    ; 6 uses
  %i.ts = load i32, ptr %i.tc, align 4            ; 2 uses
  %.not33.i.i.i.i = icmp eq i32 %i.ts, 0
  %..i.i.i.i = select i1 %.not33.i.i.i.i, i32 %i.qz, i32 %i.ts
  store i32 %..i.i.i.i, ptr %i.tr, align 4
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store i32 %i.qq, ptr %i.tt, align 4
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i32 %.03.i.i.i.i, ptr %i.tu, align 4
  %i.tv = load i32, ptr %i.tb, align 4
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  store i32 %i.tv, ptr %i.tw, align 4
  %i.tx = load i8, ptr %i.th, align 2
  %i.ty = icmp eq i8 %i.tx, 112
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.ua = zext i1 %i.ty to i8
  store i8 %i.ua, ptr %i.tz, align 4
  %i.ub = call ptr @lappend(ptr noundef %.02335.i.i.i, ptr noundef nonnull %i.tr) #16
  br label %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i

ScanSourceDatabasePgClassTuple.exit.thread.i.i.i: ; preds = %bb.hx, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp
  %.3.i.i.i = phi ptr [ %.02335.i.i.i, %bb.hq ], [ %i.ub, %bb.hx ], [ %.02335.i.i.i, %bb.hp ], [ %.02335.i.i.i, %bb.hs ], [ %.02335.i.i.i, %bb.ht ], [ %.02335.i.i.i, %bb.hr ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.i.i.i, label %ScanSourceDatabasePgClassPage.exit.i.i, label %bb.hp, !llvm.loop !9

ScanSourceDatabasePgClassPage.exit.i.i:           ; preds = %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i, %bb.ho
  %.023.lcssa.i.i.i = phi ptr [ %.03134.i.i, %bb.ho ], [ %.3.i.i.i, %ScanSourceDatabasePgClassTuple.exit.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.hy

bb.hy:                                            ; preds = %ScanSourceDatabasePgClassPage.exit.i.i, %bb.hn, %BufferGetPage.exit.i.i
  %.1.i.i = phi ptr [ %.023.lcssa.i.i.i, %ScanSourceDatabasePgClassPage.exit.i.i ], [ %.03134.i.i, %bb.hn ], [ %.03134.i.i, %BufferGetPage.exit.i.i ] ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %i.rp) #16
  %i.uc = add nuw i32 %.035.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.uc, %i.rf
  br i1 %exitcond.not.i.i, label %ScanSourceDatabasePgClass.exit.i, label %bb.hi, !llvm.loop !10

ScanSourceDatabasePgClass.exit.i:                 ; preds = %bb.hy, %bb.hh
  %.031.lcssa.i.i = phi ptr [ null, %bb.hh ], [ %.1.i.i, %bb.hy ] ; 4 uses
  call void @UnregisterSnapshot(ptr noundef %i.ri) #16
  call void @UnlockRelationId(ptr noundef nonnull %5, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ud = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.qq, ptr %i.ud, align 4
  %i.ue = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.2404, ptr %i.ue, align 4
  %i.uf = getelementptr inbounds nuw i8, ptr %.031.lcssa.i.i, i64 4 ; 2 uses
  %.not.i502 = icmp eq ptr %.031.lcssa.i.i, null
  br i1 %.not.i502, label %CreateDatabaseUsingWalLog.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ScanSourceDatabasePgClass.exit.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.031.lcssa.i.i, i64 16
  %.sroa.010.0.insert.ext.i = zext i32 %.0..0..0..0.318 to i64
  %.sroa.010.4.insert.shift.i = shl nuw i64 %i.ov, 32
  %i.uh = load i32, ptr %i.uf, align 4
  %i.ui = icmp sgt i32 %i.uh, 0
  br i1 %i.ui, label %.lr.ph48.i, label %CreateDatabaseUsingWalLog.exit

.lr.ph48.i:                                       ; preds = %.lr.ph.i, %.lr.ph48.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph48.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.uj = load ptr, ptr %i.ug, align 8
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %indvars.iv.i
  %i.ul = load ptr, ptr %i.uk, align 8            ; 4 uses
  %.sroa.016.0.copyload.i = load i64, ptr %i.ul, align 4 ; 3 uses
  %.sroa.016.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.016.0.copyload.i to i32
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %.sroa.618.0.copyload.i = load i32, ptr %.sroa.618.0..sroa_idx.i, align 4 ; 2 uses
  %i.um = icmp eq i32 %i.qz, %.sroa.016.sroa.0.0.extract.trunc.i
  %.sroa.010.0.insert.ext12.i = and i64 %.sroa.016.0.copyload.i, 4294967295
  %.sroa.010.0.insert.ext.pn.i = select i1 %i.um, i64 %.sroa.010.0.insert.ext.i, i64 %.sroa.010.0.insert.ext12.i
  %.sroa.010.4.insert.insert.i = or disjoint i64 %.sroa.010.0.insert.ext.pn.i, %.sroa.010.4.insert.shift.i
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  %i.uo = load i32, ptr %i.un, align 4            ; 2 uses
  store i32 %i.uo, ptr %6, align 4
  store i32 %i.uo, ptr %7, align 4
  call void @LockRelationId(ptr noundef nonnull %6, i32 noundef 1) #16
  call void @LockRelationId(ptr noundef nonnull %7, i32 noundef 1) #16
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.uq = load i8, ptr %i.up, align 4, !range !5, !noundef !6
  %i.ur = trunc nuw i8 %i.uq to i1
  call void @CreateAndCopyRelationData(i64 %.sroa.016.0.copyload.i, i32 %.sroa.618.0.copyload.i, i64 %.sroa.010.4.insert.insert.i, i32 %.sroa.618.0.copyload.i, i1 noundef zeroext %i.ur) #16
  call void @UnlockRelationId(ptr noundef nonnull %6, i32 noundef 1) #16
  call void @UnlockRelationId(ptr noundef nonnull %7, i32 noundef 1) #16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.us = load i32, ptr %i.uf, align 4
  %i.ut = sext i32 %i.us to i64
  %i.uu = icmp slt i64 %indvars.iv.next.i, %i.ut
  br i1 %i.uu, label %.lr.ph48.i, label %CreateDatabaseUsingWalLog.exit

CreateDatabaseUsingWalLog.exit:                   ; preds = %.lr.ph48.i, %ScanSourceDatabasePgClass.exit.i, %.lr.ph.i
  call void @pfree(ptr noundef %i.ra) #16
  call void @pfree(ptr noundef %i.rb) #16
  call void @list_free_deep(ptr noundef %.031.lcssa.i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %CreateDatabaseUsingFileCopy.exit

bb.hz:                                            ; preds = %bb.hg
  %i.uv = load i8, ptr @IsBinaryUpgrade, align 1, !range !5, !noundef !6
  %i.uw = trunc nuw i8 %i.uv to i1
  br i1 %i.uw, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @RequestCheckpoint(i32 noundef 60) #16
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.ux = call ptr @table_open(i32 noundef 1213, i32 noundef 1) #16 ; 2 uses
  %i.uy = call ptr @table_beginscan_catalog(ptr noundef %i.ux, i32 noundef 0, ptr noundef null) #16 ; 4 uses
  %i.uz = call ptr @heap_getnext(ptr noundef %i.uy, i32 noundef 1) #16 ; 2 uses
  %.not27.i = icmp eq ptr %i.uz, null
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i503

.lr.ph.i503:                                      ; preds = %bb.ib
  %i.va = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.vb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.vc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vd = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ih, %.lr.ph.i503
  %i.ve = phi ptr [ %i.uz, %.lr.ph.i503 ], [ %i.vw, %bb.ih ]
  %i.vf = getelementptr i8, ptr %i.ve, i64 16
  %.val.i504 = load ptr, ptr %i.vf, align 8       ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.val.i504, i64 22
  %i.vh = load i8, ptr %i.vg, align 2
  %i.vi = zext i8 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %.val.i504, i64 %i.vi
  %i.vk = load i32, ptr %i.vj, align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.vl = icmp eq i32 %i.vk, 1664
  br i1 %i.vl, label %bb.ih, label %bb.id, !llvm.loop !11

bb.id:                                            ; preds = %bb.ic
  %i.vm = call ptr @GetDatabasePath(i32 noundef %i.qq, i32 noundef %i.vk) #16 ; 7 uses
  %i.vn = call i32 @stat(ptr noundef %i.vm, ptr noundef nonnull %2) #16
  %i.vo = icmp slt i32 %i.vn, 0
  br i1 %i.vo, label %.sink.split.i, label %bb.ie, !llvm.loop !11

bb.ie:                                            ; preds = %bb.id
  %i.vp = load i32, ptr %i.va, align 8
  %i.vq = and i32 %i.vp, 61440
  %i.vr = icmp eq i32 %i.vq, 16384
  br i1 %i.vr, label %bb.if, label %.sink.split.i, !llvm.loop !11

bb.if:                                            ; preds = %bb.ie
  %i.vs = call zeroext i1 @directory_is_empty(ptr noundef %i.vm) #16
  br i1 %i.vs, label %.sink.split.i, label %bb.ig, !llvm.loop !11

bb.ig:                                            ; preds = %bb.if
  %i.vt = icmp eq i32 %i.vk, %i.qz
  %..i = select i1 %i.vt, i32 %.0..0..0..0.318, i32 %i.vk ; 2 uses
  %i.vu = call ptr @GetDatabasePath(i32 noundef %.2404, i32 noundef %..i) #16 ; 2 uses
  call void @copydir(ptr noundef %i.vm, ptr noundef %i.vu, i1 noundef zeroext false) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 %.2404, ptr %3, align 4
  store i32 %..i, ptr %i.vb, align 4
  store i32 %i.qq, ptr %i.vc, align 4
  store i32 %i.vk, ptr %i.vd, align 4
  call void @XLogBeginInsert() #16
  call void @XLogRegisterData(ptr noundef nonnull %3, i32 noundef 16) #16
  %i.vv = call i64 @XLogInsert(i8 noundef zeroext 4, i8 noundef zeroext 1) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @pfree(ptr noundef %i.vm) #16
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ig, %bb.if, %bb.ie, %bb.id
  %.sink.i = phi ptr [ %i.vu, %bb.ig ], [ %i.vm, %bb.if ], [ %i.vm, %bb.ie ], [ %i.vm, %bb.id ]
  call void @pfree(ptr noundef %.sink.i) #16
  br label %bb.ih

bb.ih:                                            ; preds = %.sink.split.i, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.vw = call ptr @heap_getnext(ptr noundef %i.uy, i32 noundef 1) #16 ; 2 uses
  %.not.i505 = icmp eq ptr %i.vw, null
  br i1 %.not.i505, label %._crit_edge.i, label %bb.ic

._crit_edge.i:                                    ; preds = %bb.ih, %bb.ib
  %i.vx = load ptr, ptr %i.uy, align 8
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 320
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8
  call void %i.wb(ptr noundef nonnull %i.uy) #16, !inline_history !12
  call void @table_close(ptr noundef %i.ux, i32 noundef 1) #16
  %i.wc = load i8, ptr @IsBinaryUpgrade, align 1, !range !5, !noundef !6
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %CreateDatabaseUsingFileCopy.exit, label %bb.ii

bb.ii:                                            ; preds = %._crit_edge.i
  call void @RequestCheckpoint(i32 noundef 44) #16
  br label %CreateDatabaseUsingFileCopy.exit

CreateDatabaseUsingFileCopy.exit:                 ; preds = %bb.ii, %._crit_edge.i, %CreateDatabaseUsingWalLog.exit
  call void @table_close(ptr noundef %i.ok, i32 noundef 0) #16
  call void @ForceSyncCommit() #16
  call void @cancel_before_shmem_exit(ptr noundef nonnull @createdb_failure_callback, i64 noundef %i.qu) #16
  store ptr %i.qv, ptr @PG_exception_stack, align 8
  store ptr %i.qw, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.2404

end_hunk_0
