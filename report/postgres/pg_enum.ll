Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_enum?download=true
inline.NumInlined: 33
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@EnumValuesCreate:bb.a
  %i.cv = load ptr, ptr %i.bj, align 8
  %i.cw = call ptr @ExecStoreVirtualTuple(ptr noundef %i.cv) #9 ; 0 uses
  %i.cx = add i32 %.087114165, 1                  ; 2 uses
  %i.cy = icmp eq i32 %i.cx, %i.y
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge100
  call void @CatalogTuplesMultiInsertWithInfo(ptr noundef %i.p, ptr noundef nonnull %i.z, i32 noundef %i.y, ptr noundef %i.w) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge100
  %.1 = phi i32 [ 0, %bb.o ], [ %i.cx, %.critedge100 ] ; 2 uses
  %i.cz = load i32, ptr %i.ab, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next138, %i.da
  br i1 %i.db, label %.lr.ph166, label %.critedge

bb.q:                                             ; preds = %.critedge
  call void @CatalogTuplesMultiInsertWithInfo(ptr noundef %i.p, ptr noundef %i.z, i32 noundef %.087114.lcssa, ptr noundef %i.w) #9
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader101, %bb.q, %.critedge
  call void @pfree(ptr noundef %i.r) #9
  br i1 %.not, label %._crit_edge122, label %.lr.ph121

._crit_edge122:                                   ; preds = %.lr.ph121, %.critedge.thread
  call void @CatalogCloseIndexes(ptr noundef %i.w) #9
  call void @table_close(ptr noundef %i.p, i32 noundef 3) #9
  ret void

.lr.ph121:                                        ; preds = %.critedge.thread, %.lr.ph121
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %.lr.ph121 ], [ 0, %.critedge.thread ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv142
  %i.dd = load ptr, ptr %i.dc, align 8
  call void @ExecDropSingleTupleTableSlot(ptr noundef %i.dd) #9
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next143, %i.x
  br i1 %exitcond147.not, label %._crit_edge122, label %.lr.ph121, !llvm.loop !12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @GetCurrentTransactionNestLevel() local_unnamed_addr #2

declare ptr @hash_search(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GetNewOidWithIndex(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @oid_cmp(ptr noundef, ptr noundef) #2

declare ptr @CatalogOpenIndexes(ptr noundef) local_unnamed_addr #2

declare ptr @MakeSingleTupleTableSlot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @namestrcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ExecStoreVirtualTuple(ptr noundef) local_unnamed_addr #2

declare void @CatalogTuplesMultiInsertWithInfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare void @ExecDropSingleTupleTableSlot(ptr noundef) local_unnamed_addr #2

declare void @CatalogCloseIndexes(ptr noundef) local_unnamed_addr #2

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @EnumValuesDelete(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.ScanKeyData], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = tail call ptr @table_open(i32 noundef 3501, i32 noundef 3) #9 ; 3 uses
  %i.b = zext i32 %0 to i64
  call void @ScanKeyInit(ptr noundef nonnull %1, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.b) #9
  %i.c = call ptr @systable_beginscan(ptr noundef %i.a, i32 noundef 3503, i1 noundef zeroext true, ptr noundef null, i32 noundef 1, ptr noundef nonnull %1) #9 ; 3 uses
  %i.d = call ptr @systable_getnext(ptr noundef %i.c) #9 ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @CatalogTupleDelete(ptr noundef %i.a, ptr noundef nonnull %i.f) #9
  %i.g = call ptr @systable_getnext(ptr noundef %i.c) #9 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @systable_endscan(ptr noundef %i.c) #9
  call void @table_close(ptr noundef %i.a, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void
}

declare void @ScanKeyInit(ptr noundef, i16 noundef signext, i16 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @systable_beginscan(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @systable_getnext(ptr noundef) local_unnamed_addr #2

declare void @CatalogTupleDelete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @systable_endscan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @AddEnumLabel(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.HASHCTL, align 8            ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [4 x i64], align 16               ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %6 = alloca %struct.nameData, align 1           ; 4 uses
  %i.f = alloca float, align 4                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %i.h = icmp ugt i64 %i.g, 63
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 33579140) #9 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %1) #9 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.1, i32 noundef 63) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef nonnull @__func__.AddEnumLabel) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @LockDatabaseObject(i32 noundef 1247, i32 noundef %0, i16 noundef zeroext 0, i32 noundef 7) #9
  %i.m = zext i32 %0 to i64                       ; 4 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = tail call ptr @SearchSysCache2(i32 noundef 24, i64 noundef %i.m, i64 noundef %i.n) #9 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.o) #9
  br i1 %4, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #9
  br i1 %i.p, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @errcode(i32 noundef 290948) #9 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 357, ptr noundef nonnull @__func__.AddEnumLabel) #9
  br label %bb.ah

bb.g:                                             ; preds = %bb.d
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.t = tail call i32 @errcode(i32 noundef 290948) #9 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 364, ptr noundef nonnull @__func__.AddEnumLabel) #9
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.v = tail call ptr @table_open(i32 noundef 3501, i32 noundef 3) #9 ; 6 uses
  %i.w = icmp eq ptr %2, null                     ; 2 uses
  %.091.v = select i1 %3, i32 1, i32 -1
  %i.x = tail call ptr @SearchSysCacheList(i32 noundef 24, i32 noundef 1, i64 noundef %i.m, i64 noundef 0, i64 noundef 0) #9 ; 7 uses
  br i1 %i.w, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.h
  %7 = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %8 = load i32, ptr %7, align 8                  ; 3 uses
  %9 = sext i32 %8 to i64                         ; 3 uses
  %10 = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %9) #9 ; 2 uses
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %.lr.ph, label %.preheader138._crit_edge.loopexit176

.split.us:                                        ; preds = %bb.h
  %12 = ptrtoaddr ptr %i.x to i64
  %13 = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %14 = load i32, ptr %13, align 8                ; 7 uses
  %15 = sext i32 %14 to i64                       ; 3 uses
  %16 = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %15) #9 ; 12 uses
  %17 = ptrtoaddr ptr %16 to i64
  %18 = icmp sgt i32 %14, 0
  br i1 %18, label %.lr.ph.us, label %._crit_edge.us

scalar.ph277:                                     ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277
  %indvars.iv202 = phi i64 [ %indvars.iv.next203.3, %scalar.ph277 ], [ %indvars.iv202.unr, %scalar.ph277.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv202
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv202
  store ptr %i.aa, ptr %i.ab, align 8
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next203
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv.next203
  store ptr %i.ae, ptr %i.af, align 8
  %indvars.iv.next203.1 = add nuw nsw i64 %indvars.iv202, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next203.1
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv.next203.1
  store ptr %i.ai, ptr %i.aj, align 8
  %indvars.iv.next203.2 = add nuw nsw i64 %indvars.iv202, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next203.2
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv.next203.2
  store ptr %i.am, ptr %i.an, align 8
  %indvars.iv.next203.3 = add nuw nsw i64 %indvars.iv202, 4 ; 2 uses
  %exitcond206.not.3 = icmp eq i64 %indvars.iv.next203.3, %wide.trip.count205
  br i1 %exitcond206.not.3, label %.loopexit, label %scalar.ph277, !llvm.loop !14

._crit_edge.us:                                   ; preds = %.split.us
  tail call void @pg_qsort(ptr noundef %16, i64 noundef %15, i64 noundef 8, ptr noundef nonnull @sort_order_cmp) #9
  br label %.thread125

.lr.ph.us:                                        ; preds = %.split.us
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 6 uses
  %wide.trip.count205 = zext nneg i32 %14 to i64  ; 5 uses
  %min.iters.check278 = icmp ult i32 %14, 10
  br i1 %min.iters.check278, label %scalar.ph277.preheader, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.us
  %i.ap = sub i64 %17, %12
  %i.aq = add i64 %i.ap, -81
  %diff.check276 = icmp ult i64 %i.aq, 31
  br i1 %diff.check276, label %scalar.ph277.preheader, label %vector.ph279

vector.ph279:                                     ; preds = %vector.memcheck275
  %n.vec280 = and i64 %wide.trip.count205, 2147483644 ; 3 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph279
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next287, %vector.body281 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index282 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load283 = load <2 x ptr>, ptr %i.ar, align 8
  %wide.load284 = load <2 x ptr>, ptr %i.as, align 8
  %wide.gep285 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load283, i64 64
  %wide.gep286 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load284, i64 64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %index282 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x ptr> %wide.gep285, ptr %i.at, align 8
  store <2 x ptr> %wide.gep286, ptr %i.au, align 8
  %index.next287 = add nuw i64 %index282, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next287, %n.vec280
  br i1 %i.av, label %middle.block288, label %vector.body281, !llvm.loop !15

middle.block288:                                  ; preds = %vector.body281
  %cmp.n289 = icmp eq i64 %n.vec280, %wide.trip.count205
  br i1 %cmp.n289, label %.loopexit, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %vector.memcheck275, %.lr.ph.us, %middle.block288
  %indvars.iv202.ph = phi i64 [ 0, %vector.memcheck275 ], [ 0, %.lr.ph.us ], [ %n.vec280, %middle.block288 ] ; 3 uses
  %xtraiter316 = and i64 %wide.trip.count205, 3   ; 2 uses
  %lcmp.mod317.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod317.not, label %scalar.ph277.prol.loopexit, label %scalar.ph277.prol

scalar.ph277.prol:                                ; preds = %scalar.ph277.preheader, %scalar.ph277.prol
  %indvars.iv202.prol = phi i64 [ %indvars.iv.next203.prol, %scalar.ph277.prol ], [ %indvars.iv202.ph, %scalar.ph277.preheader ] ; 3 uses
  %prol.iter318 = phi i64 [ %prol.iter318.next, %scalar.ph277.prol ], [ 0, %scalar.ph277.preheader ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv202.prol
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv202.prol
  store ptr %i.ay, ptr %i.az, align 8
  %indvars.iv.next203.prol = add nuw nsw i64 %indvars.iv202.prol, 1 ; 2 uses
  %prol.iter318.next = add i64 %prol.iter318, 1   ; 2 uses
  %prol.iter318.cmp.not = icmp eq i64 %prol.iter318.next, %xtraiter316
  br i1 %prol.iter318.cmp.not, label %scalar.ph277.prol.loopexit, label %scalar.ph277.prol, !llvm.loop !16

scalar.ph277.prol.loopexit:                       ; preds = %scalar.ph277.prol, %scalar.ph277.preheader
  %indvars.iv202.unr = phi i64 [ %indvars.iv202.ph, %scalar.ph277.preheader ], [ %indvars.iv.next203.prol, %scalar.ph277.prol ]
  %i.ba = sub nsw i64 %indvars.iv202.ph, %wide.trip.count205
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.loopexit, label %scalar.ph277

.lr.ph:                                           ; preds = %.split.preheader, %.split
  %i.bc = phi ptr [ %i.fc, %.split ], [ %10, %.split.preheader ] ; 15 uses
  %i.bd = phi i64 [ %i.fb, %.split ], [ %9, %.split.preheader ]
  %i.be = phi i32 [ %i.fa, %.split ], [ %8, %.split.preheader ] ; 7 uses
  %i.bf = phi ptr [ %i.ey, %.split ], [ %i.x, %.split.preheader ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 80 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.be to i64   ; 5 uses
  %min.iters.check = icmp samesign ult i32 %i.be, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bh = ptrtoaddr ptr %i.bf to i64
  %i.bi = ptrtoaddr ptr %i.bc to i64
  %i.bj = sub i64 %i.bi, %i.bh
  %i.bk = add i64 %i.bj, -81
  %diff.check = icmp ult i64 %i.bk, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bl, align 8
  %wide.load273 = load <2 x ptr>, ptr %i.bm, align 8
  %wide.gep = getelementptr inbounds nuw i8, <2 x ptr> %wide.load, i64 64
  %wide.gep274 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load273, i64 64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x ptr> %wide.gep, ptr %i.bn, align 8
  store <2 x ptr> %wide.gep274, ptr %i.bo, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph164.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.prol
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.prol
  store ptr %i.bs, ptr %i.bt, align 8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !18

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bu = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %.lr.ph164.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  store ptr %i.by, ptr %i.bz, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next
  store ptr %i.cc, ptr %i.cd, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.1
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.1
  store ptr %i.cg, ptr %i.ch, align 8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.2
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.2
  store ptr %i.ck, ptr %i.cl, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph164.preheader, label %scalar.ph, !llvm.loop !19

.lr.ph164.preheader:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  tail call void @pg_qsort(ptr noundef nonnull %i.bc, i64 noundef %i.bd, i64 noundef 8, ptr noundef nonnull @sort_order_cmp) #9
  %wide.trip.count200 = zext nneg i32 %i.be to i64 ; 2 uses
  br label %.lr.ph164

.loopexit:                                        ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277, %middle.block288
  tail call void @pg_qsort(ptr noundef nonnull %16, i64 noundef %15, i64 noundef 8, ptr noundef nonnull @sort_order_cmp) #9
  %i.cm = zext nneg i32 %14 to i64
  %i.cn = getelementptr [8 x i8], ptr %16, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %.val118 = load ptr, ptr %i.cq, align 8         ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val118, i64 22
  %i.cs = load i8, ptr %i.cr, align 2
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.val118, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = fadd float %i.cw, 1.000000e+00
  br label %.thread125

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.i
  %indvars.iv197 = phi i64 [ 0, %.lr.ph164.preheader ], [ %indvars.iv.next198, %bb.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv197
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %.val117 = load ptr, ptr %i.da, align 8         ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val117, i64 22
  %i.dc = load i8, ptr %i.db, align 2
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.val117, i64 %i.dd ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(1) %2) #10
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph164
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %.preheader138._crit_edge, label %.lr.ph164, !llvm.loop !20

.preheader138._crit_edge.loopexit176:             ; preds = %.split, %.split.preheader
  %.lcssa257 = phi i64 [ %9, %.split.preheader ], [ %i.fb, %.split ]
  %.lcssa252 = phi ptr [ %10, %.split.preheader ], [ %i.fc, %.split ]
  tail call void @pg_qsort(ptr noundef %.lcssa252, i64 noundef %.lcssa257, i64 noundef 8, ptr noundef nonnull @sort_order_cmp) #9
  br label %.preheader138._crit_edge

.preheader138._crit_edge:                         ; preds = %bb.i, %.preheader138._crit_edge.loopexit176
  %i.di = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.dj = tail call i32 @errcode(i32 noundef 50856066) #9 ; 0 uses
  %i.dk = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %2) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 419, ptr noundef nonnull @__func__.AddEnumLabel) #9
  unreachable

bb.j:                                             ; preds = %.lr.ph164
  %i.dl = trunc nuw nsw i64 %indvars.iv197 to i32
  %.091 = add i32 %.091.v, %i.dl                  ; 3 uses
  %i.dm = icmp slt i32 %.091, 0
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = fadd float %i.do, -1.000000e+00
  br label %.thread125

bb.l:                                             ; preds = %bb.j
  %.not108 = icmp slt i32 %.091, %i.be
  br i1 %.not108, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fadd float %i.dr, 1.000000e+00
  br label %.thread125

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dt = zext nneg i32 %.091 to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %.val115 = load ptr, ptr %i.dw, align 8         ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val115, i64 22
  %i.dy = load i8, ptr %i.dx, align 2
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %.val115, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ec = load float, ptr %i.eb, align 4          ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load float, ptr %i.ed, align 4          ; 2 uses
  %i.ef = fadd float %i.ec, %i.ee
  %i.eg = fmul float %i.ef, 5.000000e-01
  store volatile float %i.eg, ptr %i.f, align 4
  %.0..0..0..0.6 = load volatile float, ptr %i.f, align 4
  %i.eh = fcmp oeq float %.0..0..0..0.6, %i.ec
  br i1 %i.eh, label %.preheader292, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0..0..0..0.7 = load volatile float, ptr %i.f, align 4
  %i.ei = fcmp oeq float %.0..0..0..0.7, %i.ee
  br i1 %i.ei, label %.preheader292, label %bb.s

.preheader292:                                    ; preds = %bb.o, %bb.n
  br label %bb.p

bb.p:                                             ; preds = %.preheader292, %bb.r
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ %wide.trip.count200, %.preheader292 ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call ptr @heap_copytuple(ptr noundef %i.ek) #9 ; 4 uses
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %.val.i = load ptr, ptr %i.em, align 8          ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.eo = load i8, ptr %i.en, align 2
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ep
  %i.er = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.es = uitofp nneg i32 %i.er to float          ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4
  %i.ev = fcmp une float %i.eu, %i.es
  br i1 %i.ev, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.es, ptr %i.et, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  tail call void @CatalogTupleUpdate(ptr noundef %i.v, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.el) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @heap_freetuple(ptr noundef nonnull %i.el) #9
  %i.ex = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ex, label %bb.p, label %.split, !llvm.loop !21

bb.s:                                             ; preds = %bb.o
  %.0..0..0..0.8 = load volatile float, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread125

.split:                                           ; preds = %bb.r
  tail call void @CommandCounterIncrement() #9
  tail call void @pfree(ptr noundef nonnull %i.bc) #9
  tail call void @ReleaseCatCacheList(ptr noundef %i.bf) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ey = tail call ptr @SearchSysCacheList(i32 noundef 24, i32 noundef 1, i64 noundef %i.m, i64 noundef 0, i64 noundef 0) #9 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fa = load i32, ptr %i.ez, align 8            ; 3 uses
  %i.fb = sext i32 %i.fa to i64                   ; 3 uses
  %i.fc = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.fb) #9 ; 2 uses
  %i.fd = icmp sgt i32 %i.fa, 0
  br i1 %i.fd, label %.lr.ph, label %.preheader138._crit_edge.loopexit176

.thread125:                                       ; preds = %._crit_edge.us, %bb.s, %bb.m, %bb.k, %.loopexit
  %i.fe = phi ptr [ %i.x, %.loopexit ], [ %i.x, %._crit_edge.us ], [ %i.bf, %bb.s ], [ %i.bf, %bb.k ], [ %i.bf, %bb.m ]
  %i.ff = phi i32 [ %14, %.loopexit ], [ %14, %._crit_edge.us ], [ %i.be, %bb.s ], [ %i.be, %bb.k ], [ %i.be, %bb.m ]
  %i.fg = phi ptr [ %16, %.loopexit ], [ %16, %._crit_edge.us ], [ %i.bc, %bb.s ], [ %i.bc, %bb.k ], [ %i.bc, %bb.m ] ; 2 uses
  %.4102 = phi float [ %i.cx, %.loopexit ], [ 1.000000e+00, %._crit_edge.us ], [ %.0..0..0..0.8, %bb.s ], [ %i.dp, %bb.k ], [ %i.ds, %bb.m ] ; 2 uses
  %.fr175 = freeze i32 %i.ff                      ; 2 uses
  %i.fh = load i8, ptr @IsBinaryUpgrade, align 1, !range !5, !noundef !6
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.y, label %.preheader

.preheader:                                       ; preds = %.thread125
  %i.fj = icmp sgt i32 %.fr175, 0
  br i1 %i.fj, label %.lr.ph173.us.preheader, label %.preheader.split

.lr.ph173.us.preheader:                           ; preds = %.preheader
  %wide.trip.count210 = zext nneg i32 %.fr175 to i64
  br label %.lr.ph173.us

.lr.ph173.us:                                     ; preds = %.lr.ph173.us.backedge, %.lr.ph173.us.preheader
  %i.fk = tail call i32 @GetNewOidWithIndex(ptr noundef %i.v, i32 noundef 3502, i16 noundef signext 1) #9 ; 7 uses
  store i32 %i.fk, ptr %i.c, align 4
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph173.us, %bb.x
  %indvars.iv207 = phi i64 [ 0, %.lr.ph173.us ], [ %indvars.iv.next208, %bb.x ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv207
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  %.val.us = load ptr, ptr %i.fn, align 8         ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.us, i64 22
  %i.fp = load i8, ptr %i.fo, align 2
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4            ; 3 uses
  %i.ft = and i32 %i.fs, 1
  %.not109.us = icmp eq i32 %i.ft, 0
  br i1 %.not109.us, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = fcmp olt float %i.fv, %.4102
  br i1 %i.fw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not110.us = icmp ugt i32 %i.fs, %i.fk
  br i1 %.not110.us, label %bb.x, label %.thread132.us

bb.w:                                             ; preds = %bb.u
  %.not111.us = icmp ult i32 %i.fs, %i.fk
  br i1 %.not111.us, label %bb.x, label %.thread132.us

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count210
  br i1 %exitcond211.not, label %._crit_edge174.us, label %bb.t, !llvm.loop !22

.thread132.us:                                    ; preds = %bb.w, %bb.v
  %i.fx = and i32 %i.fk, 1
  %.not112.us = icmp eq i32 %i.fx, 0
  br i1 %.not112.us, label %.lr.ph173.us.backedge, label %.thread135

.lr.ph173.us.backedge:                            ; preds = %.thread132.us, %._crit_edge174.us
  br label %.lr.ph173.us

._crit_edge174.us:                                ; preds = %bb.x
  %i.fy = and i32 %i.fk, 1
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.thread135, label %.lr.ph173.us.backedge

bb.y:                                             ; preds = %.thread125
  %i.ga = load i32, ptr @binary_upgrade_next_pg_enum_oid, align 4 ; 3 uses
  %.not113 = icmp eq i32 %i.ga, 0
  br i1 %.not113, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gb = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.gc = tail call i32 @errcode(i32 noundef 50856066) #9 ; 0 uses
  %i.gd = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 476, ptr noundef nonnull @__func__.AddEnumLabel) #9
  unreachable

bb.aa:                                            ; preds = %bb.y
  br i1 %i.w, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ge = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.gf = tail call i32 @errcode(i32 noundef 50856066) #9 ; 0 uses
  %i.gg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 486, ptr noundef nonnull @__func__.AddEnumLabel) #9
  unreachable

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.ga, ptr %i.c, align 4
  store i32 0, ptr @binary_upgrade_next_pg_enum_oid, align 4
  br label %.thread135

.preheader.split:                                 ; preds = %.preheader, %.preheader.split
  %i.gh = tail call i32 @GetNewOidWithIndex(ptr noundef %i.v, i32 noundef 3502, i16 noundef signext 1) #9 ; 3 uses
  %i.gi = and i32 %i.gh, 1
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %.thread135.loopexit.split, label %.preheader.split

.thread135.loopexit.split:                        ; preds = %.preheader.split
  store i32 %i.gh, ptr %i.c, align 4
  br label %.thread135

.thread135:                                       ; preds = %.thread132.us, %._crit_edge174.us, %.thread135.loopexit.split, %bb.ac
  %i.gk = phi i32 [ %i.ga, %bb.ac ], [ %i.gh, %.thread135.loopexit.split ], [ %i.fk, %._crit_edge174.us ], [ %i.fk, %.thread132.us ]
  tail call void @pfree(ptr noundef %i.fg) #9
  tail call void @ReleaseCatCacheList(ptr noundef %i.fe) #9
  store i32 0, ptr %i.e, align 4
  %i.gl = zext i32 %i.gk to i64
  store i64 %i.gl, ptr %i.d, align 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.m, ptr %i.gm, align 8
  %i.gn = bitcast float %.4102 to i32
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.go, ptr %i.gp, align 16
  call void @namestrcpy(ptr noundef nonnull %6, ptr noundef nonnull %1) #9
  %i.gq = ptrtoint ptr %6 to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.gq, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call ptr @heap_form_tuple(ptr noundef %i.gt, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #9 ; 2 uses
  call void @CatalogTupleInsert(ptr noundef %i.v, ptr noundef %i.gu) #9
  call void @heap_freetuple(ptr noundef %i.gu) #9
  call void @table_close(ptr noundef %i.v, i32 noundef 3) #9
  %i.gv = call i32 @GetCurrentTransactionNestLevel() #9
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.gx = load ptr, ptr @uncommitted_enum_types, align 8 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %EnumTypeUncommitted.exit.thread, label %EnumTypeUncommitted.exit

EnumTypeUncommitted.exit.thread:                  ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ae

EnumTypeUncommitted.exit:                         ; preds = %bb.ad
  %i.gz = call ptr @hash_search(ptr noundef nonnull %i.gx, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.ha = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.hb = trunc nuw i8 %i.ha to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.hb, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %EnumTypeUncommitted.exit.thread, %EnumTypeUncommitted.exit, %.thread135
  %i.hc = load ptr, ptr @uncommitted_enum_values, align 8 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 4, ptr %i.hf, align 8
  %i.hg = load ptr, ptr @TopTransactionContext, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.hg, ptr %i.hh, align 8
  %i.hi = call ptr @hash_create(ptr noundef nonnull @.str.10, i64 noundef 32, ptr noundef nonnull %5, i32 noundef 1064) #9 ; 2 uses
  store ptr %i.hi, ptr @uncommitted_enum_values, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hj = phi ptr [ %i.hi, %bb.af ], [ %i.hc, %bb.ae ]
  %i.hk = call ptr @hash_search(ptr noundef %i.hj, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef null) #9 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %EnumTypeUncommitted.exit, %bb.e, %bb.f, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret void
}

declare void @LockDatabaseObject(i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @SearchSysCache2(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

declare ptr @SearchSysCacheList(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @sort_order_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val10 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val10, i64 22
  %i.e = load i8, ptr %i.d, align 2
end_hunk_0
