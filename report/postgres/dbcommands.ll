Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dbcommands?download=true
inline.NumInlined: 97
inline.NumDeleted: 36
begin_hunk_0_@AlterDatabase:bb.a
  tail call void @PreventInTransactionBlock(i1 noundef zeroext %2, ptr noundef nonnull @.str.101) #16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call ptr @defGetString(ptr noundef nonnull %.1) #16
  tail call fastcc void @movedb(ptr noundef %i.an, ptr noundef %i.ao)
  br label %bb.ak

.critedge:                                        ; preds = %.critedge.thread
  %.not97 = icmp eq ptr %.185, null               ; 4 uses
  br i1 %.not97, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %.185, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %.not98 = icmp eq ptr %i.aq, null
  br i1 %.not98, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call zeroext i1 @defGetBoolean(ptr noundef nonnull %.185) #16
  %i.as = zext i1 %i.ar to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.critedge
  %.088 = phi i64 [ %i.as, %bb.m ], [ 0, %bb.l ], [ 0, %.critedge ] ; 3 uses
  %.not99 = icmp eq ptr %.183, null               ; 4 uses
  br i1 %.not99, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.183, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %.not100 = icmp eq ptr %i.au, null
  br i1 %.not100, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call zeroext i1 @defGetBoolean(ptr noundef nonnull %.183) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.087 = phi i1 [ %i.av, %bb.p ], [ true, %bb.o ], [ true, %bb.n ] ; 3 uses
  %.not101 = icmp eq ptr %.181, null
  br i1 %.not101, label %.thread222, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %.181, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not102 = icmp eq ptr %i.ax, null
  br i1 %.not102, label %.thread222, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = tail call i32 @defGetInt32(ptr noundef nonnull %.181) #16 ; 3 uses
  %i.az = icmp slt i32 %i.ay, -1
  br i1 %i.az, label %bb.t, label %.thread222

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.bb = tail call i32 @errcode(i32 noundef 50856066) #16 ; 0 uses
  %i.bc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, i32 noundef %i.ay) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2476, ptr noundef nonnull @__func__.AlterDatabase) #16
  unreachable

.thread222:                                       ; preds = %.lr.ph, %bb.a, %bb.s, %bb.r, %bb.q
  %.not101233 = phi i1 [ false, %bb.s ], [ false, %bb.r ], [ true, %bb.q ], [ true, %bb.a ], [ true, %.lr.ph ]
  %.087232 = phi i1 [ %.087, %bb.s ], [ %.087, %bb.r ], [ %.087, %bb.q ], [ true, %bb.a ], [ true, %.lr.ph ] ; 2 uses
  %.not97212218231 = phi i1 [ %.not97, %bb.s ], [ %.not97, %bb.r ], [ %.not97, %bb.q ], [ true, %bb.a ], [ true, %.lr.ph ]
  %.088220230 = phi i64 [ %.088, %bb.s ], [ %.088, %bb.r ], [ %.088, %bb.q ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.not99221229 = phi i1 [ %.not99, %bb.s ], [ %.not99, %bb.r ], [ %.not99, %bb.q ], [ true, %bb.a ], [ true, %.lr.ph ]
  %.086 = phi i32 [ %i.ay, %bb.s ], [ -1, %bb.r ], [ -1, %bb.q ], [ -1, %bb.a ], [ -1, %.lr.ph ]
  %i.bd = tail call ptr @table_open(i32 noundef 1262, i32 noundef 3) #16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  call void @ScanKeyInit(ptr noundef nonnull %3, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 62, i64 noundef %i.bg) #16
  %i.bh = call ptr @systable_beginscan(ptr noundef %i.bd, i32 noundef 2671, i1 noundef zeroext true, ptr noundef null, i32 noundef 1, ptr noundef nonnull %3) #16 ; 2 uses
  %i.bi = call ptr @systable_getnext(ptr noundef %i.bh) #16 ; 4 uses
  %.not103 = icmp eq ptr %i.bi, null
  br i1 %.not103, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread222
  %i.bj = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.bk = call i32 @errcode(i32 noundef 1283) #16 ; 0 uses
  %i.bl = load ptr, ptr %i.be, align 8
  %i.bm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.83, ptr noundef %i.bl) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2495, ptr noundef nonnull @__func__.AlterDatabase) #16
  unreachable

bb.v:                                             ; preds = %.thread222
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 3 uses
  call void @LockTuple(ptr noundef %i.bd, ptr noundef nonnull %i.bn, i32 noundef 7) #16
  %i.bo = getelementptr i8, ptr %i.bi, i64 16
  %.val = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.bq = load i8, ptr %i.bp, align 2
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp eq i32 %i.bv, -2
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bx = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #18 ; 0 uses
  %i.by = call i32 @errcode(i32 noundef 325) #16  ; 0 uses
  %i.bz = load ptr, ptr %i.be, align 8
  %i.ca = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.102, ptr noundef %i.bz) #16 ; 0 uses
  %i.cb = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.37) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2506, ptr noundef nonnull @__func__.AlterDatabase) #16
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cc = call i32 @GetUserId() #16
  %i.cd = call zeroext i1 @object_ownercheck(i32 noundef 1262, i32 noundef %i.bt, i32 noundef %i.cc) #16
  br i1 %i.cd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.be, align 8
  call void @aclcheck_error(i32 noundef 2, i32 noundef 9, ptr noundef %i.ce) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cf = load i32, ptr @MyDatabaseId, align 4
  %i.cg = icmp ne i32 %i.bt, %i.cf
  %or.cond.not = select i1 %.087232, i1 true, i1 %i.cg
  br i1 %or.cond.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.ci = call i32 @errcode(i32 noundef 50856066) #16 ; 0 uses
  %i.cj = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.103) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2522, ptr noundef nonnull @__func__.AlterDatabase) #16
  unreachable

bb.ab:                                            ; preds = %bb.z
  br i1 %.not97212218231, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.088220230, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 1, ptr %i.cl, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %.not99221229, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cm = zext i1 %.087232 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.cm, ptr %i.cn, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 1, ptr %i.co, align 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not101233, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = sext i32 %.086 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.cp, ptr %i.cq, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 1, ptr %i.cr, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call ptr @heap_modify_tuple(ptr noundef nonnull %i.bi, ptr noundef %i.ct, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  call void @CatalogTupleUpdate(ptr noundef %i.bd, ptr noundef nonnull %i.bn, ptr noundef %i.cu) #16
  call void @UnlockTuple(ptr noundef %i.bd, ptr noundef nonnull %i.bn, i32 noundef 7) #16
  %i.cv = load ptr, ptr @object_access_hook, align 8
  %.not104 = icmp eq ptr %i.cv, null
  br i1 %.not104, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @RunObjectPostAlterHook(i32 noundef 1262, i32 noundef %i.bt, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @systable_endscan(ptr noundef %i.bh) #16
  call void @table_close(ptr noundef nonnull %i.bd, i32 noundef 0) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.k
  %.090 = phi i32 [ 0, %bb.k ], [ %i.bt, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %.090
}

declare void @PreventInTransactionBlock(i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @movedb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.ScanKeyData, align 8        ; 4 uses
  %3 = alloca %struct.movedb_failure_params, align 4 ; 5 uses
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %i.e = alloca [18 x i64], align 16              ; 5 uses
  %i.f = alloca [18 x i8], align 16               ; 4 uses
  %i.g = alloca [18 x i8], align 16               ; 5 uses
  %5 = alloca %struct.xl_dbase_create_file_copy_rec, align 4 ; 7 uses
  %6 = alloca %struct.xl_dbase_drop_rec, align 4  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.h = call ptr @table_open(i32 noundef 1262, i32 noundef 3) #16 ; 7 uses
  %i.i = call fastcc zeroext i1 @get_db_info(ptr noundef %0, i32 noundef 8, ptr noundef %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.k = call i32 @errcode(i32 noundef 1283) #16  ; 0 uses
  %i.l = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.83, ptr noundef %0) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2056, ptr noundef nonnull @__func__.movedb) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.a, align 4              ; 14 uses
  call void @LockSharedObjectForSession(i32 noundef 1262, i32 noundef %i.m, i16 noundef zeroext 0, i32 noundef 8) #16
  %i.n = call i32 @GetUserId() #16
  %i.o = call zeroext i1 @object_ownercheck(i32 noundef 1262, i32 noundef %i.m, i32 noundef %i.n) #16
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @aclcheck_error(i32 noundef 2, i32 noundef 9, ptr noundef %0) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load i32, ptr @MyDatabaseId, align 4
  %i.q = icmp eq i32 %i.m, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.s = call i32 @errcode(i32 noundef 100663621) #16 ; 0 uses
  %i.t = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.115) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2080, ptr noundef nonnull @__func__.movedb) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = call i32 @get_tablespace_oid(ptr noundef %1, i1 noundef zeroext false) #16 ; 7 uses
  %i.v = call i32 @GetUserId() #16
  %i.w = call i32 @object_aclcheck(i32 noundef 1213, i32 noundef %i.u, i32 noundef %i.v, i64 noundef 512) #16 ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @aclcheck_error(i32 noundef %i.w, i32 noundef 43, ptr noundef %1) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = icmp eq i32 %i.u, 1664
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.z = call i32 @errcode(i32 noundef 50856066) #16 ; 0 uses
  %i.aa = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.73) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2102, ptr noundef nonnull @__func__.movedb) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.d, align 4             ; 3 uses
  %i.ac = icmp eq i32 %i.ab, %i.u
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @table_close(ptr noundef %i.h, i32 noundef 0) #16
  call void @UnlockSharedObjectForSession(i32 noundef 1262, i32 noundef %i.m, i16 noundef zeroext 0, i32 noundef 8) #16
  br label %bb.ab

bb.m:                                             ; preds = %bb.k
  %i.ad = call zeroext i1 @CountOtherDBBackends(i32 noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.af = call i32 @errcode(i32 noundef 100663621) #16 ; 0 uses
  %i.ag = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.93, ptr noundef %0) #16 ; 0 uses
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = load i32, ptr %i.c, align 4
  call fastcc void @errdetail_busy_db(i32 noundef %i.ah, i32 noundef %i.ai)
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2126, ptr noundef nonnull @__func__.movedb) #16
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aj = call ptr @GetDatabasePath(i32 noundef %i.m, i32 noundef %i.ab) #16 ; 4 uses
  %i.ak = call ptr @GetDatabasePath(i32 noundef %i.m, i32 noundef %i.u) #16 ; 7 uses
  call void @RequestCheckpoint(i32 noundef 60) #16
  %i.al = call i64 @EmitProcSignalBarrier(i32 noundef 0) #16
  call void @WaitForProcSignalBarrier(i64 noundef %i.al) #16
  call void @DropDatabaseBuffers(i32 noundef %i.m) #16
  %i.am = call ptr @AllocateDir(ptr noundef %i.ak) #16 ; 4 uses
  %.not56 = icmp eq ptr %i.am, null
  br i1 %.not56, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.an = call ptr @ReadDir(ptr noundef nonnull %i.am, ptr noundef %i.ak) #16 ; 2 uses
  %.not5765 = icmp eq ptr %i.an, null
  br i1 %.not5765, label %._crit_edge, label %sub_0

sub_0:                                            ; preds = %.preheader, %bb.p
  %i.ao = phi ptr [ %i.az, %bb.p ], [ %i.an, %.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 19
  %i.aq = load i8, ptr %i.ap, align 1
  %.not66 = icmp eq i8 %i.aq, 46
  br i1 %.not66, label %.tail, label %.tail61.thread

.tail:                                            ; preds = %sub_0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.p, label %sub_163

sub_163:                                          ; preds = %.tail
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.av = load i8, ptr %i.au, align 1
  %.not68 = icmp eq i8 %i.av, 46
  br i1 %.not68, label %.tail61, label %.tail61.thread

.tail61:                                          ; preds = %sub_163
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 21
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %.tail61.thread

bb.p:                                             ; preds = %.tail61, %.tail
  %i.az = call ptr @ReadDir(ptr noundef nonnull %i.am, ptr noundef %i.ak) #16 ; 2 uses
  %.not57 = icmp eq ptr %i.az, null
  br i1 %.not57, label %._crit_edge, label %sub_0, !llvm.loop !17

.tail61.thread:                                   ; preds = %sub_0, %sub_163, %.tail61
  %i.ba = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.bb = call i32 @errcode(i32 noundef 325) #16  ; 0 uses
  %i.bc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.118, ptr noundef %0, ptr noundef %1) #16 ; 0 uses
  %i.bd = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.119) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2188, ptr noundef nonnull @__func__.movedb) #16
  unreachable

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.be = call i32 @FreeDir(ptr noundef nonnull %i.am) #16 ; 0 uses
  %i.bf = call i32 @rmdir(ptr noundef %i.ak) #16
  %.not58 = icmp eq i32 %i.bf, 0
  br i1 %.not58, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bg = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.bh = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.120, ptr noundef %i.ak) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2199, ptr noundef nonnull @__func__.movedb) #16
  unreachable

bb.r:                                             ; preds = %._crit_edge, %bb.o
  store i32 %i.m, ptr %3, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.u, ptr %i.bi, align 4
  %i.bj = ptrtoint ptr %3 to i64                  ; 4 uses
  call void @before_shmem_exit(ptr noundef nonnull @movedb_failure_callback, i64 noundef %i.bj) #16
  %i.bk = load ptr, ptr @PG_exception_stack, align 8 ; 2 uses
  %i.bl = load ptr, ptr @error_context_stack, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bm = call i32 @__sigsetjmp(ptr noundef nonnull %4, i32 noundef 0) #20
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  store ptr %4, ptr @PG_exception_stack, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.f, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.g, i8 0, i64 18, i1 false)
  call void @copydir(ptr noundef %i.aj, ptr noundef %i.ak, i1 noundef zeroext false) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %i.m, ptr %5, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.u, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.m, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.ab, ptr %i.bq, align 4
  call void @XLogBeginInsert() #16
  call void @XLogRegisterData(ptr noundef nonnull %5, i32 noundef 16) #16
  %i.br = call i64 @XLogInsert(i8 noundef zeroext 4, i8 noundef zeroext 1) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bs = ptrtoint ptr %0 to i64
  call void @ScanKeyInit(ptr noundef nonnull %2, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 62, i64 noundef %i.bs) #16
  %i.bt = call ptr @systable_beginscan(ptr noundef %i.h, i32 noundef 2671, i1 noundef zeroext true, ptr noundef null, i32 noundef 1, ptr noundef nonnull %2) #16 ; 2 uses
  %i.bu = call ptr @systable_getnext(ptr noundef %i.bt) #16 ; 3 uses
  %.not59 = icmp eq ptr %i.bu, null
  br i1 %.not59, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.bw = call i32 @errcode(i32 noundef 1283) #16 ; 0 uses
  %i.bx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.83, ptr noundef %0) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2254, ptr noundef nonnull @__func__.movedb) #16
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 3 uses
  call void @LockTuple(ptr noundef %i.h, ptr noundef nonnull %i.by, i32 noundef 7) #16
  %i.bz = zext i32 %i.u to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  store i8 1, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call ptr @heap_modify_tuple(ptr noundef nonnull %i.bu, ptr noundef %i.cd, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #16
  call void @CatalogTupleUpdate(ptr noundef %i.h, ptr noundef nonnull %i.by, ptr noundef %i.ce) #16
  call void @UnlockTuple(ptr noundef %i.h, ptr noundef nonnull %i.by, i32 noundef 7) #16
  %i.cf = load ptr, ptr @object_access_hook, align 8
  %.not60 = icmp eq ptr %i.cf, null
  br i1 %.not60, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @RunObjectPostAlterHook(i32 noundef 1262, i32 noundef %i.m, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @systable_endscan(ptr noundef %i.bt) #16
  call void @RequestCheckpoint(i32 noundef 44) #16
  call void @ForceSyncCommit() #16
  call void @table_close(ptr noundef nonnull %i.h, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @cancel_before_shmem_exit(ptr noundef nonnull @movedb_failure_callback, i64 noundef %i.bj) #16
  store ptr %i.bk, ptr @PG_exception_stack, align 8
  store ptr %i.bl, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @PopActiveSnapshot() #16
  call void @CommitTransactionCommand() #16
  call void @StartTransactionCommand() #16
  %i.cg = call zeroext i1 @rmtree(ptr noundef %i.aj, i1 noundef zeroext true) #16
  br i1 %i.cg, label %bb.aa, label %bb.y

bb.x:                                             ; preds = %bb.r
  store ptr %i.bk, ptr @PG_exception_stack, align 8
  store ptr %i.bl, ptr @error_context_stack, align 8
  call void @cancel_before_shmem_exit(ptr noundef nonnull @movedb_failure_callback, i64 noundef %i.bj) #16
  call void @movedb_failure_callback(i32 poison, i64 noundef %i.bj)
  call void @pg_re_throw() #19
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ch = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ci = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.110, ptr noundef %i.aj) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2318, ptr noundef nonnull @__func__.movedb) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 %i.m, ptr %6, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %i.cj, align 4
  call void @XLogBeginInsert() #16
  call void @XLogRegisterData(ptr noundef nonnull %6, i32 noundef 8) #16
  call void @XLogRegisterData(ptr noundef nonnull %i.d, i32 noundef 4) #16
  %i.ck = call i64 @XLogInsert(i8 noundef zeroext 4, i8 noundef zeroext 33) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @UnlockSharedObjectForSession(i32 noundef 1262, i32 noundef %i.m, i16 noundef zeroext 0, i32 noundef 8) #16
  call void @pfree(ptr noundef %i.aj) #16
  call void @pfree(ptr noundef %i.ak) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare ptr @systable_beginscan(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @systable_getnext(ptr noundef) local_unnamed_addr #5

declare void @LockTuple(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @database_is_invalid_form(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, -2
  ret i1 %i.c
}

declare ptr @heap_modify_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @systable_endscan(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local { i64, i32 } @AlterDatabaseRefreshColl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ScanKeyData, align 8        ; 4 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca [18 x i8], align 16               ; 4 uses
  %i.c = alloca [18 x i8], align 16               ; 5 uses
  %i.d = alloca [18 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = tail call ptr @table_open(i32 noundef 1262, i32 noundef 3) #16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  call void @ScanKeyInit(ptr noundef nonnull %1, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 62, i64 noundef %i.h) #16
  %i.i = call ptr @systable_beginscan(ptr noundef %i.e, i32 noundef 2671, i1 noundef zeroext true, ptr noundef null, i32 noundef 1, ptr noundef nonnull %1) #16 ; 2 uses
  %i.j = call ptr @systable_getnext(ptr noundef %i.i) #16 ; 7 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.l = call i32 @errcode(i32 noundef 1283) #16  ; 0 uses
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.83, ptr noundef %i.m) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2588, ptr noundef nonnull @__func__.AlterDatabaseRefreshColl) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %.val = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.q = load i8, ptr %i.p, align 2
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = call i32 @GetUserId() #16
  %i.v = call zeroext i1 @object_ownercheck(i32 noundef 1262, i32 noundef %i.t, i32 noundef %i.u) #16
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.f, align 8
  call void @aclcheck_error(i32 noundef 2, i32 noundef 9, ptr noundef %i.w) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  call void @LockTuple(ptr noundef %i.e, ptr noundef nonnull %i.x, i32 noundef 7) #16
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call fastcc i64 @heap_getattr(ptr noundef %i.j, i32 noundef 17, ptr noundef %i.z, ptr noundef %i.a)
  %i.ab = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = inttoptr i64 %i.aa to ptr
  %i.ae = call ptr @text_to_cstring(ptr noundef %i.ad) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.af = phi ptr [ %i.ae, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 76 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = icmp eq i8 %i.ah, 99
  %i.aj = load ptr, ptr %i.y, align 8             ; 2 uses
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = call fastcc i64 @heap_getattr(ptr noundef %i.j, i32 noundef 13, ptr noundef %i.aj, ptr noundef %i.a)
  %i.al = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.an = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.ao = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.104) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2605, ptr noundef nonnull @__func__.AlterDatabaseRefreshColl) #16
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ap = call fastcc i64 @heap_getattr(ptr noundef %i.j, i32 noundef 15, ptr noundef %i.aj, ptr noundef %i.a)
end_hunk_0
