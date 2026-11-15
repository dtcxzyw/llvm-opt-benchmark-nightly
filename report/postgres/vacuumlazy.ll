Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/vacuumlazy?download=true
inline.NumInlined: 92
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vacuum_error_callback:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i32 (ptr, ...) @errcontext_msg(ptr noundef nonnull @.str.50, ptr noundef %i.bc, ptr noundef %i.be, ptr noundef %i.bg) #6 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.bi = tail call i32 @set_errcontext_domain(ptr noundef null) #6 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i32 (ptr, ...) @errcontext_msg(ptr noundef nonnull @.str.51, ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bo) #6 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %.not41 = icmp eq i32 %i.br, -1
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = tail call i32 @set_errcontext_domain(ptr noundef null) #6 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i32, ptr %i.bq, align 8
  %i.by = tail call i32 (ptr, ...) @errcontext_msg(ptr noundef nonnull @.str.52, ptr noundef %i.bu, ptr noundef %i.bw, i32 noundef %i.bx) #6 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.d, %.critedge, %bb.e, %bb.h, %.critedge2, %bb.i, %bb.m, %bb.l, %bb.a
  ret void
}

declare void @vac_open_indexes(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @vacuum_get_cutoffs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RelationGetNumberOfBlocksInFork(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @GlobalVisTestFor(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @lazy_check_wraparound_failsafe(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 4 uses
  %i.b = alloca [3 x i64], align 16               ; 4 uses
  %i.c = load i8, ptr @VacuumFailsafeActive, align 1, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = tail call zeroext i1 @vacuum_xid_failsafe_check(ptr noundef nonnull %i.e) #6
  br i1 %i.f, label %bb.c, label %bb.f, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @__const.lazy_check_wraparound_failsafe.progress_index, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const.lazy_check_wraparound_failsafe.progress_val, i64 24, i1 false)
  store i8 1, ptr @VacuumFailsafeActive, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 0, ptr %i.j, align 1
  call void @pgstat_progress_update_multi_param(i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.k = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i32, ptr %i.r, align 8
  %i.t = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.37, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, i32 noundef %i.s) #6 ; 0 uses
  %i.u = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.38) #6 ; 0 uses
  %i.v = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.39) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2928, ptr noundef nonnull @__func__.lazy_check_wraparound_failsafe) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 0, ptr @VacuumCostActive, align 1
  store i32 0, ptr @VacuumCostBalance, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.e ], [ false, %bb.b ]
  ret i1 %.0
}

declare i64 @TidStoreMemoryUsage(ptr noundef) local_unnamed_addr #2

declare void @vac_close_indexes(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @visibilitymap_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @vac_update_relstats(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @pgstat_report_vacuum(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @pgstat_progress_end_command() local_unnamed_addr #2

declare zeroext i1 @TimestampDifferenceExceeds(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @TimestampDifference(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @WalUsageAccumDiff(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BufferUsageAccumDiff(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pg_rusage_show(ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @MultiXactIdPrecedes(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pg_prng_uint32(ptr noundef) local_unnamed_addr #2

declare i64 @ReadNextFullTransactionId() local_unnamed_addr #2

declare void @pgstat_progress_update_multi_param(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @read_stream_begin_relation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @heap_vac_scan_next_block(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add i32 %i.c, 1                          ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ReleaseBuffer(i32 noundef %i.h) #6
  store i32 0, ptr %i.g, align 4
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 4 uses
  %i.k = icmp ugt i32 %i.d, %i.j
  %i.l = icmp eq i32 %i.j, -1
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  store i32 %i.n, ptr %i.a, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 340 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 336
  %3 = add i32 %i.f, -2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 41
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.e
  %.029.ph = phi i1 [ true, %bb.l ], [ false, %bb.e ]
  %.026.in.i.ph = phi i32 [ %.026.i, %bb.l ], [ %i.j, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.j
  %.026.in.i = phi i32 [ %.026.i, %bb.j ], [ %.026.in.i.ph, %.outer ] ; 3 uses
  %.026.i = add i32 %.026.in.i, 1                 ; 8 uses
  %i.s = load ptr, ptr %1, align 8
  %i.t = call zeroext i8 @visibilitymap_get_status(ptr noundef %i.s, i32 noundef %.026.i, ptr noundef nonnull %i.a) #6
  %i.u = load i32, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp ult i32 %.026.i, %i.u
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.q, align 8
  store i32 %i.v, ptr %i.o, align 4
  %i.w = add i32 %i.u, 4096
  store i32 %i.w, ptr %i.p, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = zext i8 %i.t to i32                      ; 2 uses
  %i.y = and i32 %i.x, 1
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = icmp eq i32 %.026.in.i, %3
  %or.cond.i = or i1 %i.aa, %i.z
  br i1 %or.cond.i, label %find_next_unskippable_block.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.r, align 1, !range !4, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %find_next_unskippable_block.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = and i32 %i.x, 2
  %.not27.i = icmp eq i32 %i.ad, 0
  br i1 %.not27.i, label %bb.k, label %bb.f

bb.k:                                             ; preds = %bb.j
  %i.ae = load i8, ptr %4, align 8, !range !4, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %find_next_unskippable_block.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.o, align 4
  %.not28.i = icmp eq i32 %i.ag, 0
  br i1 %.not28.i, label %.outer, label %find_next_unskippable_block.exit

find_next_unskippable_block.exit:                 ; preds = %bb.k, %bb.l, %bb.h, %bb.i
  %.1.ph.i = phi i8 [ 0, %bb.h ], [ 0, %bb.i ], [ 1, %bb.l ], [ 0, %bb.k ]
  store i32 %.026.i, ptr %i.i, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 %.1.ph.i, ptr %i.ah, align 8
  %i.ai = load i32, ptr %i.a, align 4
  store i32 %i.ai, ptr %i.m, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.aj = sub i32 %.026.in.i, %i.c
  %i.ak = icmp ugt i32 %i.aj, 31                  ; 2 uses
  %brmerge.not = and i1 %i.ak, %.029.ph
  %.mux = select i1 %i.ak, i32 %.026.i, i32 %i.d
  br i1 %brmerge.not, label %.thread, label %bb.m

.thread:                                          ; preds = %find_next_unskippable_block.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 1, ptr %i.al, align 8
  br label %bb.o

bb.m:                                             ; preds = %find_next_unskippable_block.exit, %bb.d
  %i.am = phi i32 [ %i.j, %bb.d ], [ %.026.i, %find_next_unskippable_block.exit ]
  %.1 = phi i32 [ %i.d, %bb.d ], [ %.mux, %find_next_unskippable_block.exit ] ; 3 uses
  %i.an = icmp ult i32 %.1, %i.am
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %.1, ptr %i.b, align 8
  store i8 0, ptr %2, align 1
  %i.ao = load i32, ptr %i.b, align 8
  br label %bb.p

bb.o:                                             ; preds = %.thread, %bb.m
  %.139 = phi i32 [ %.026.i, %.thread ], [ %.1, %bb.m ]
  store i32 %.139, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aq = load i8, ptr %i.ap, align 8, !range !4, !noundef !5
  store i8 %i.aq, ptr %2, align 1
  %i.ar = load i32, ptr %i.b, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.c, %bb.o, %bb.n
  %.026 = phi i32 [ %i.ar, %bb.o ], [ %i.ao, %bb.n ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.026
}

declare void @vacuum_delay_point(i1 noundef zeroext) local_unnamed_addr #2

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @lazy_vacuum(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.HeapTupleData, align 8      ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [291 x i16], align 16             ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca [2048 x i16], align 16            ; 11 uses
  %2 = alloca %struct.IndexVacuumInfo, align 8    ; 11 uses
  %i.f = alloca [2 x i32], align 8                ; 5 uses
  %i.g = alloca [3 x i32], align 4                ; 5 uses
  %i.h = alloca [2 x i64], align 16               ; 6 uses
  %i.i = alloca [3 x i64], align 16               ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 43 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !range !4, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 @TidStoreMemoryUsage(ptr noundef %i.q) #6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @parallel_vacuum_reset_dead_items(ptr noundef nonnull %i.w) #6
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = tail call ptr @parallel_vacuum_get_dead_items(ptr noundef %i.y, ptr noundef nonnull %i.x) #6
  store ptr %i.z, ptr %i.p, align 8
  br label %dead_items_reset.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.p, align 8
  tail call void @TidStoreDestroy(ptr noundef %i.aa) #6
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call ptr @TidStoreCreateLocal(i64 noundef %i.ac, i1 noundef zeroext true) #6
  store ptr %i.ad, ptr %i.p, align 8
  %i.ae = load ptr, ptr %i.x, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 0, ptr %i.af, align 8
  br label %dead_items_reset.exit

bb.e:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ah = load i8, ptr %i.ag, align 2, !range !4, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = uitofp i32 %i.ak to double
  %i.am = fmul nnan double %i.al, 2.000000e-02
  %i.an = fptoui double %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp ult i32 %i.ap, %i.an
  br i1 %i.aq, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i64 @TidStoreMemoryUsage(ptr noundef %i.as) #6
  %i.au = icmp ult i64 %i.at, 33554432
  br i1 %i.au, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.j, align 1
  br label %bb.ay

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.av = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 100
  %i.az = load float, ptr %i.ay, align 4          ; 2 uses
  %i.ba = fpext float %i.az to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i64 34359738368, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) @__const.lazy_vacuum_all_indexes.progress_end_index, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.bb = tail call fastcc zeroext i1 @lazy_check_wraparound_failsafe(ptr noundef nonnull %0)
  br i1 %i.bb, label %lazy_vacuum_all_indexes.exit.thread, label %bb.j

lazy_vacuum_all_indexes.exit.thread:              ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.ay

bb.j:                                             ; preds = %.critedge
  store i64 2, ptr %i.h, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.be, ptr %i.bf, align 8
  call void @pgstat_progress_update_multi_param(i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h) #6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i13 = icmp eq ptr %i.bh, null
  br i1 %.not.i13, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 5 uses
  %i.by = load i32, ptr %i.bc, align 8
  %i.bz = sext i32 %i.by to i64
  %.not32.not.i.not.not = icmp sge i64 %indvars.iv.i, %i.bz ; 3 uses
end_hunk_0
