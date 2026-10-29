Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/explain?download=true
inline.NumInlined: 187
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ExplainResultDesc:bb.a
.lr.ph23:                                         ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.01622 = phi i32 [ %.2, %bb.d ], [ 25, %.lr.ph ]
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(7) @.str.1) #10
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.d

.critedge:                                        ; preds = %bb.d, %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 25, %bb.a ], [ 25, %.lr.ph ], [ %.2, %bb.d ]
  %i.n = tail call ptr @CreateTemplateTupleDesc(i32 noundef 1) #6 ; 3 uses
  tail call void @TupleDescInitEntry(ptr noundef %i.n, i16 noundef signext 1, ptr noundef nonnull @.str.4, i32 noundef %.0.lcssa, i32 noundef -1, i32 noundef 0) #6
  tail call void @TupleDescFinalize(ptr noundef %i.n) #6
  ret ptr %i.n

bb.b:                                             ; preds = %.lr.ph23
  %i.o = tail call ptr @defGetString(ptr noundef nonnull %i.i) #6 ; 2 uses
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(4) @.str.2) #10
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(5) @.str.3) #10
  %i.s = icmp eq i32 %i.r, 0
  %. = select i1 %i.s, i32 114, i32 25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph23
  %.2 = phi i32 [ %.01622, %.lr.ph23 ], [ 142, %bb.b ], [ %., %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.c, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph23, label %.critedge
}

declare void @do_text_output_multiline(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #2

declare void @do_tup_output(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare void @end_tup_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @defGetString(ptr noundef) local_unnamed_addr #2

declare ptr @CreateTemplateTupleDesc(i32 noundef) local_unnamed_addr #2

declare void @TupleDescInitEntry(ptr noundef, i16 noundef signext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @TupleDescFinalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @standard_ExplainOneQuery(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.instr_time, align 8         ; 4 uses
  %10 = alloca %struct.BufferUsage, align 8       ; 4 uses
  %11 = alloca %struct.BufferUsage, align 8       ; 5 uses
  %12 = alloca %struct.MemoryContextCounters, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @CurrentMemoryContext, align 8
  %i.e = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.d, ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #6 ; 2 uses
  %i.f = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.e, ptr @CurrentMemoryContext, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.021 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 11 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(128) @pgBufferUsage, i64 128, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i8, ptr @timing_tsc_enabled, align 1, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.l = tail call { i64, i32 } @llvm.x86.rdtscp()
  %i.m = extractvalue { i64, i32 } %i.l, 0
  br label %pg_get_ticks.exit23

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.n = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #6 ; 0 uses
  %i.o = load i64, ptr %8, align 8
  %i.p = mul i64 %i.o, 1000000000
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.p, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  br label %pg_get_ticks.exit23

pg_get_ticks.exit23:                              ; preds = %bb.f, %bb.g
  %.sroa.0.0.i22 = phi i64 [ %i.m, %bb.f ], [ %i.s, %bb.g ]
  %i.t = call ptr @pg_plan_query(ptr noundef %0, ptr noundef %4, i32 noundef %1, ptr noundef %5, ptr noundef nonnull %3) #6
  %i.u = load i8, ptr @timing_tsc_enabled, align 1, !range !7, !noundef !8
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %pg_get_ticks.exit23
  %i.w = call { i64, i32 } @llvm.x86.rdtscp()
  %i.x = extractvalue { i64, i32 } %i.w, 0
  br label %pg_get_ticks.exit

bb.i:                                             ; preds = %pg_get_ticks.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.y = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #6 ; 0 uses
  %i.z = load i64, ptr %7, align 8
  %i.aa = mul i64 %i.z, 1000000000
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.aa, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %pg_get_ticks.exit

pg_get_ticks.exit:                                ; preds = %bb.h, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.x, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = sub i64 %.sroa.0.0.i, %.sroa.0.0.i22
  store i64 %i.ae, ptr %9, align 8
  %i.af = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %pg_get_ticks.exit
  store ptr %.0, ptr @CurrentMemoryContext, align 8
  call void @MemoryContextMemConsumed(ptr noundef %.021, ptr noundef nonnull %12) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %pg_get_ticks.exit
  %i.ah = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %11, i8 0, i64 128, i1 false)
  call void @BufferUsageAccumDiff(ptr noundef nonnull %11, ptr noundef nonnull @pgBufferUsage, ptr noundef nonnull %10) #6
  %.pre = load i8, ptr %i.g, align 1, !range !7
  %i.aj = trunc nuw i8 %.pre to i1
  %i.ak = select i1 %i.aj, ptr %11, ptr null
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %. = phi ptr [ %i.ak, %bb.l ], [ null, %bb.k ]
  %i.al = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = select i1 %i.am, ptr %12, ptr null
  call void @ExplainOnePlan(ptr noundef %i.t, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %9, ptr noundef %., ptr noundef %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret void
}

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @pg_plan_query(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MemoryContextMemConsumed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BufferUsageAccumDiff(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExplainOnePlan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.JitInstrumentation, align 8 ; 6 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.SerializeMetrics, align 8  ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %14, i8 0, i64 144, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 7 uses
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.e = load i8, ptr %i.d, align 1, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  %spec.select = select i1 %i.f, i32 1, i32 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.093 = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.i = shl nuw nsw i8 %i.h, 1
  %i.j = zext nneg i8 %i.i to i32
  %spec.select109 = or disjoint i32 %.093, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load i8, ptr %i.k, align 4, !range !7, !noundef !8
  %i.m = shl nuw nsw i8 %i.l, 3
  %i.n = zext nneg i8 %i.m to i32
  %.2 = or disjoint i32 %spec.select109, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.p = load i8, ptr %i.o, align 1, !range !7, !noundef !8
  %i.q = shl nuw nsw i8 %i.p, 4
  %i.r = zext nneg i8 %i.q to i32
  %.3 = or disjoint i32 %.2, %i.r
  %i.s = load i8, ptr @timing_tsc_enabled, align 1, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.u = tail call { i64, i32 } @llvm.x86.rdtscp()
  %i.v = extractvalue { i64, i32 } %i.u, 0
  br label %pg_get_ticks.exit111

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  %i.w = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %13) #6 ; 0 uses
  %i.x = load i64, ptr %13, align 8
  %i.y = mul i64 %i.x, 1000000000
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.y, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  br label %pg_get_ticks.exit111

pg_get_ticks.exit111:                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.i110 = phi i64 [ %i.v, %bb.d ], [ %i.ab, %bb.e ]
  %i.ac = call ptr @GetActiveSnapshot() #6
  call void @PushCopiedSnapshot(ptr noundef %i.ac) #6
  call void @UpdateActiveSnapshotCommandId() #6
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %pg_get_ticks.exit111
  %i.ad = call ptr @CreateIntoRelDestReceiver(ptr noundef nonnull %1) #6
  br label %bb.j

bb.g:                                             ; preds = %pg_get_ticks.exit111
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %.not104 = icmp eq i32 %i.af, 0
  br i1 %.not104, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call ptr @CreateExplainSerializeDestReceiver(ptr noundef nonnull %2) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @None_Receiver, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.0 = phi ptr [ %i.ad, %bb.f ], [ %i.ag, %bb.h ], [ %i.ah, %bb.i ] ; 4 uses
  %i.ai = call ptr @GetActiveSnapshot() #6
  %i.aj = call ptr @CreateQueryDesc(ptr noundef %0, ptr noundef %3, ptr noundef %i.ai, ptr noundef null, ptr noundef %.0, ptr noundef %4, ptr noundef %5, i32 noundef %.3) #6 ; 9 uses
  %i.ak = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.am = load i8, ptr %i.al, align 2, !range !7, !noundef !8
  %i.an = shl nuw nsw i8 %i.am, 1
  %i.ao = or disjoint i8 %i.an, %i.ak
  %.195144 = xor i8 %i.ao, 1
  %.195 = zext nneg i8 %.195144 to i32            ; 2 uses
  br i1 %.not, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  call void @ExecutorStart(ptr noundef %i.aj, i32 noundef %.195) #6
  %i.ap = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %bb.t

.thread:                                          ; preds = %bb.j
  %i.ar = call i32 @GetIntoRelEFlags(ptr noundef nonnull %1) #6
  %i.as = or i32 %i.ar, %.195
  call void @ExecutorStart(ptr noundef %i.aj, i32 noundef %i.as) #6
  %i.at = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.l, label %bb.t

bb.l:                                             ; preds = %.thread
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aw = load i8, ptr %i.av, align 8, !range !7, !noundef !8
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.091 = phi i32 [ 1, %bb.m ], [ 0, %bb.l ]
  call void @ExecutorRun(ptr noundef %i.aj, i32 noundef %.091, i64 noundef 0) #6
  call void @ExecutorFinish(ptr noundef %i.aj) #6
  %i.ay = load i8, ptr @timing_tsc_enabled, align 1, !range !7, !noundef !8
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.o, label %bb.p, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.ba = call { i64, i32 } @llvm.x86.rdtscp()
  %i.bb = extractvalue { i64, i32 } %i.ba, 0
  br label %pg_get_ticks.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %i.bc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #6 ; 0 uses
  %i.bd = load i64, ptr %12, align 8
  %i.be = mul i64 %i.bd, 1000000000
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = add i64 %i.be, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %pg_get_ticks.exit.i

pg_get_ticks.exit.i:                              ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i = phi i64 [ %i.bb, %bb.o ], [ %i.bh, %bb.p ]
  %i.bi = sub i64 %.sroa.0.0.i.i, %.sroa.0.0.i110 ; 5 uses
  %i.bj = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %elapsed_time.exit, label %bb.q

bb.q:                                             ; preds = %pg_get_ticks.exit.i
  %i.bl = load i64, ptr @max_ticks_no_overflow, align 8
  %i.bm = icmp sgt i64 %i.bi, %i.bl
  br i1 %i.bm, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bn = ashr i64 %i.bi, 14
  %i.bo = mul i64 %i.bn, %i.bj
  %i.bp = and i64 %i.bi, 16383
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.011.i.i = phi i64 [ %i.bp, %bb.r ], [ %i.bi, %bb.q ]
  %.010.i.i = phi i64 [ %i.bo, %bb.r ], [ 0, %bb.q ]
  %i.bq = mul i64 %.011.i.i, %i.bj
  %i.br = lshr i64 %i.bq, 14
  %i.bs = add i64 %i.br, %.010.i.i
  br label %elapsed_time.exit

elapsed_time.exit:                                ; preds = %pg_get_ticks.exit.i, %bb.s
  %.0.i.i = phi i64 [ %i.bs, %bb.s ], [ %i.bi, %pg_get_ticks.exit.i ]
  %i.bt = sitofp i64 %.0.i.i to double
  %i.bu = fdiv double %i.bt, 1.000000e+09
  %i.bv = fadd double %i.bu, 0.000000e+00
  br label %bb.t

bb.t:                                             ; preds = %.thread, %elapsed_time.exit, %bb.k
  %.092 = phi double [ %i.bv, %elapsed_time.exit ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %.thread ]
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %.not105 = icmp eq i32 %i.bx, 0
  br i1 %.not105, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @GetSerializationMetrics(ptr dead_on_unwind nonnull writable sret(%struct.SerializeMetrics) align 8 %14, ptr noundef %.0) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef %.0) #6
  call void @ExplainOpenGroup(ptr noundef nonnull @.str.14, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %2) #6
  call void @ExplainPrintPlan(ptr noundef nonnull %2, ptr noundef %i.aj)
  %i.ca = icmp eq ptr %7, null                    ; 2 uses
  br i1 %i.ca, label %peek_buffer_usage.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cc = load i32, ptr %i.cb, align 8
  %.not.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i, label %bb.x, label %peek_buffer_usage.exit.thread

peek_buffer_usage.exit.thread:                    ; preds = %bb.w
  %i.cd = icmp ne ptr %8, null
  br label %bb.ao

end_hunk_0
begin_hunk_1_@ExplainOnePlan:bb.a
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %show_memory_counters.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = add i32 %i.fc, -1
  store i32 %i.fd, ptr %i.fb, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %show_memory_counters.exit
  call void @ExplainCloseGroup(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, i1 noundef zeroext true, ptr noundef nonnull %2) #6
  br label %bb.ay

bb.ay:                                            ; preds = %peek_buffer_usage.exit, %bb.ax
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 2, !range !7, !noundef !8
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = icmp ne ptr %6, null
  %or.cond3 = and i1 %i.fh, %i.fg
  br i1 %or.cond3, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.fi = load i64, ptr %6, align 8               ; 5 uses
  %i.fj = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %pg_ticks_to_ns.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fl = load i64, ptr @max_ticks_no_overflow, align 8
  %i.fm = icmp sgt i64 %i.fi, %i.fl
  br i1 %i.fm, label %bb.bb, label %bb.bc, !prof !11

bb.bb:                                            ; preds = %bb.ba
  %i.fn = ashr i64 %i.fi, 14
  %i.fo = mul i64 %i.fj, %i.fn
  %i.fp = and i64 %i.fi, 16383
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.011.i = phi i64 [ %i.fp, %bb.bb ], [ %i.fi, %bb.ba ]
  %.010.i = phi i64 [ %i.fo, %bb.bb ], [ 0, %bb.ba ]
  %i.fq = mul i64 %.011.i, %i.fj
  %i.fr = lshr i64 %i.fq, 14
  %i.fs = add i64 %i.fr, %.010.i
  br label %pg_ticks_to_ns.exit

pg_ticks_to_ns.exit:                              ; preds = %bb.az, %bb.bc
  %.0.i115 = phi i64 [ %i.fs, %bb.bc ], [ %i.fi, %bb.az ]
  %i.ft = sitofp i64 %.0.i115 to double
  %i.fu = fdiv nnan double %i.ft, 1.000000e+09
  %i.fv = fmul nnan double %i.fu, 1.000000e+03
  call void @ExplainPropertyFloat(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, double noundef %i.fv, i32 noundef 3, ptr noundef nonnull %2) #6
  br label %bb.bd

bb.bd:                                            ; preds = %pg_ticks_to_ns.exit, %bb.ay
  %i.fw = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @ExplainPrintTriggers(ptr noundef nonnull %2, ptr noundef %i.aj)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.fz = load i8, ptr %i.fy, align 2, !range !7, !noundef !8
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8            ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 304
  %i.ge = load i32, ptr %i.gd, align 8
  %i.gf = and i32 %i.ge, 1
  %.not.i116 = icmp eq i32 %i.gf, 0
  br i1 %.not.i116, label %ExplainPrintJITSummary.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 312
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.gh, null
  br i1 %.not8.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  call void @InstrJitAgg(ptr noundef nonnull %11, ptr noundef nonnull %i.gi) #6
  %.pre.i = load ptr, ptr %i.gb, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gj = phi ptr [ %.pre.i, %bb.bi ], [ %i.gc, %bb.bh ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 320
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.gl, null
  br i1 %.not9.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @InstrJitAgg(ptr noundef nonnull %11, ptr noundef nonnull %i.gl) #6
  %.pre10.i = load ptr, ptr %i.gb, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gm = phi ptr [ %.pre10.i, %bb.bk ], [ %i.gj, %bb.bj ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 304
  %i.go = load i32, ptr %i.gn, align 8
  call fastcc void @ExplainPrintJIT(ptr noundef nonnull %2, i32 noundef %i.go, ptr noundef %11)
  br label %ExplainPrintJITSummary.exit

ExplainPrintJITSummary.exit:                      ; preds = %bb.bg, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  br label %bb.bm

bb.bm:                                            ; preds = %ExplainPrintJITSummary.exit, %bb.bf
  %i.gp = load i32, ptr %i.bw, align 4            ; 2 uses
  %.not107 = icmp eq i32 %i.gp, 0
  br i1 %.not107, label %bb.cd, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gq = icmp eq i32 %i.gp, 1
  %.str.45..str.46.i = select i1 %i.gq, ptr @.str.45, ptr @.str.46 ; 3 uses
  call void @ExplainOpenGroup(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.47, i1 noundef zeroext true, ptr noundef nonnull %2) #6
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.bo, label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  call void @ExplainIndentText(ptr noundef nonnull %2) #6
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.gv = load i8, ptr %i.gu, align 1, !range !7, !noundef !8
  %i.gw = trunc nuw i8 %i.gv to i1
  %i.gx = load ptr, ptr %2, align 8               ; 2 uses
  br i1 %i.gw, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gz = load i64, ptr %i.gy, align 8            ; 5 uses
  %i.ha = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %pg_ticks_to_ns.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hc = load i64, ptr @max_ticks_no_overflow, align 8
  %i.hd = icmp sgt i64 %i.gz, %i.hc
  br i1 %i.hd, label %bb.br, label %bb.bs, !prof !11

bb.br:                                            ; preds = %bb.bq
  %i.he = ashr i64 %i.gz, 14
  %i.hf = mul i64 %i.ha, %i.he
  %i.hg = and i64 %i.gz, 16383
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.011.i.i117 = phi i64 [ %i.hg, %bb.br ], [ %i.gz, %bb.bq ]
  %.010.i.i118 = phi i64 [ %i.hf, %bb.br ], [ 0, %bb.bq ]
  %i.hh = mul i64 %.011.i.i117, %i.ha
  %i.hi = lshr i64 %i.hh, 14
  %i.hj = add i64 %i.hi, %.010.i.i118
  br label %pg_ticks_to_ns.exit.i

pg_ticks_to_ns.exit.i:                            ; preds = %bb.bs, %bb.bp
  %.0.i.i119 = phi i64 [ %i.hj, %bb.bs ], [ %i.gz, %bb.bp ]
  %i.hk = sitofp i64 %.0.i.i119 to double
  %i.hl = fdiv nnan double %i.hk, 1.000000e+09
  %i.hm = fmul nnan double %i.hl, 1.000000e+03
  %i.hn = load i64, ptr %14, align 8
  %i.ho = add i64 %i.hn, 1023
  %i.hp = lshr i64 %i.ho, 10
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.gx, ptr noundef nonnull @.str.48, double noundef %i.hm, i64 noundef %i.hp, ptr noundef nonnull %.str.45..str.46.i) #6
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bo
  %i.hq = load i64, ptr %14, align 8
  %i.hr = add i64 %i.hq, 1023
  %i.hs = lshr i64 %i.hr, 10
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.gx, ptr noundef nonnull @.str.49, i64 noundef %i.hs, ptr noundef nonnull %.str.45..str.46.i) #6
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %pg_ticks_to_ns.exit.i
  %i.ht = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.bv, label %ExplainPrintSerialize.exit

bb.bv:                                            ; preds = %bb.bu
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hw = load i32, ptr %i.gr, align 8
  %.not.i.i = icmp eq i32 %i.hw, 0
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = icmp eq i64 %i.hy, 0
  %or.cond147 = select i1 %.not.i.i, i1 %i.hz, i1 false
  br i1 %or.cond147, label %peek_buffer_usage.exit.i, label %peek_buffer_usage.exit.thread.i

peek_buffer_usage.exit.i:                         ; preds = %bb.bv
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.ib = load i64, ptr %i.ia, align 8
  %.fr182 = freeze i64 %i.ib
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 120
  %15 = load i64, ptr %i.ic, align 8
  %.fr178 = freeze i64 %15
  %i.id = getelementptr inbounds nuw i8, ptr %14, i64 104
  %i.ie = load i64, ptr %i.id, align 8
  %.fr177 = freeze i64 %i.ie
  %i.if = getelementptr inbounds nuw i8, ptr %14, i64 88
  %16 = load i64, ptr %i.hv, align 8
  %.fr180 = freeze i64 %16
  %i.ig = icmp sgt i64 %.fr180, 0
  %i.ih = getelementptr inbounds nuw i8, ptr %14, i64 24
  %17 = load i64, ptr %i.ih, align 8
  %.fr = freeze i64 %17
  %18 = icmp sgt i64 %.fr, 0
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %20 = load i64, ptr %19, align 8
  %.fr184 = freeze i64 %20
  %21 = icmp sgt i64 %.fr184, 0
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %23 = load <2 x i64>, ptr %i.if, align 8
  %24 = load <6 x i64>, ptr %22, align 8
  %25 = shufflevector <2 x i64> %23, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1> ; 2 uses
  %26 = insertelement <8 x i64> %25, i64 0, i64 7
  %27 = shufflevector <6 x i64> %24, <6 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %28 = shufflevector <8 x i64> %27, <8 x i64> %26, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %29 = shufflevector <8 x i64> %25, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 poison>, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 1> ; 2 uses
  %30 = icmp sgt <8 x i64> %28, %29
  %31 = icmp ne <8 x i64> %28, %29
  %32 = shufflevector <8 x i1> %30, <8 x i1> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 136
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  %i.ii = freeze <8 x i1> %32
  %i.ij = bitcast <8 x i1> %i.ii to i8
  %i.ik = icmp ne i8 %i.ij, 0
  %op.rdx = or i1 %i.ik, %i.ig
  %36 = or i64 %.fr177, %.fr182
  %37 = or i1 %op.rdx, %18
  %op.rdx174 = or i1 %37, %21
  %38 = or i64 %36, %.fr178
  %39 = icmp ne i64 %38, 0
  %40 = or i1 %op.rdx174, %39
  %op.rdx176 = select i1 %40, i1 true, i1 %35
  br i1 %op.rdx176, label %peek_buffer_usage.exit.thread.i, label %ExplainPrintSerialize.exit

peek_buffer_usage.exit.thread.i:                  ; preds = %peek_buffer_usage.exit.i, %bb.bv
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4
  call fastcc void @show_buffer_usage(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.hv)
  %i.io = load i32, ptr %i.il, align 4
  %i.ip = add i32 %i.io, -1
  store i32 %i.ip, ptr %i.il, align 4
  br label %ExplainPrintSerialize.exit

bb.bw:                                            ; preds = %bb.bn
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ir = load i8, ptr %i.iq, align 1, !range !7, !noundef !8
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.it = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.iu = load i64, ptr %i.it, align 8            ; 5 uses
  %i.iv = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %pg_ticks_to_ns.exit34.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ix = load i64, ptr @max_ticks_no_overflow, align 8
  %i.iy = icmp sgt i64 %i.iu, %i.ix
  br i1 %i.iy, label %bb.bz, label %bb.ca, !prof !11

bb.bz:                                            ; preds = %bb.by
  %i.iz = ashr i64 %i.iu, 14
  %i.ja = mul i64 %i.iv, %i.iz
  %i.jb = and i64 %i.iu, 16383
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.011.i31.i = phi i64 [ %i.jb, %bb.bz ], [ %i.iu, %bb.by ]
  %.010.i32.i = phi i64 [ %i.ja, %bb.bz ], [ 0, %bb.by ]
  %i.jc = mul i64 %.011.i31.i, %i.iv
  %i.jd = lshr i64 %i.jc, 14
  %i.je = add i64 %i.jd, %.010.i32.i
  br label %pg_ticks_to_ns.exit34.i

pg_ticks_to_ns.exit34.i:                          ; preds = %bb.ca, %bb.bx
  %.0.i33.i = phi i64 [ %i.je, %bb.ca ], [ %i.iu, %bb.bx ]
  %i.jf = sitofp i64 %.0.i33.i to double
  %i.jg = fdiv nnan double %i.jf, 1.000000e+09
  %i.jh = fmul nnan double %i.jg, 1.000000e+03
  call void @ExplainPropertyFloat(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.18, double noundef %i.jh, i32 noundef 3, ptr noundef nonnull %2) #6
  br label %bb.cb

bb.cb:                                            ; preds = %pg_ticks_to_ns.exit34.i, %bb.bw
  %i.ji = load i64, ptr %14, align 8
  %i.jj = add i64 %i.ji, 1023
  %i.jk = lshr i64 %i.jj, 10
  call void @ExplainPropertyUInteger(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i64 noundef %i.jk, ptr noundef nonnull %2) #6
  call void @ExplainPropertyText(ptr noundef nonnull @.str.53, ptr noundef nonnull %.str.45..str.46.i, ptr noundef nonnull %2) #6
  %i.jl = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.cc, label %ExplainPrintSerialize.exit

bb.cc:                                            ; preds = %bb.cb
  %i.jn = getelementptr inbounds nuw i8, ptr %14, i64 16
  call fastcc void @show_buffer_usage(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.jn)
  br label %ExplainPrintSerialize.exit

ExplainPrintSerialize.exit:                       ; preds = %bb.bu, %peek_buffer_usage.exit.i, %peek_buffer_usage.exit.thread.i, %bb.cb, %bb.cc
  call void @ExplainCloseGroup(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.47, i1 noundef zeroext true, ptr noundef nonnull %2) #6
  br label %bb.cd

bb.cd:                                            ; preds = %ExplainPrintSerialize.exit, %bb.bm
  %i.jo = load ptr, ptr @explain_per_plan_hook, align 8 ; 2 uses
  %.not108 = icmp eq ptr %i.jo, null
  br i1 %.not108, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void %i.jo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #6
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.jp = load i8, ptr @timing_tsc_enabled, align 1, !range !7, !noundef !8
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.cg, label %bb.ch, !prof !10

bb.cg:                                            ; preds = %bb.cf
  %i.jr = call { i64, i32 } @llvm.x86.rdtscp()
  %i.js = extractvalue { i64, i32 } %i.jr, 0
  br label %pg_get_ticks.exit

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.jt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #6 ; 0 uses
  %i.ju = load i64, ptr %10, align 8
  %i.jv = mul i64 %i.ju, 1000000000
  %i.jw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = add i64 %i.jv, %i.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %pg_get_ticks.exit

pg_get_ticks.exit:                                ; preds = %bb.cg, %bb.ch
  %.sroa.0.0.i = phi i64 [ %i.js, %bb.cg ], [ %i.jy, %bb.ch ]
  call void @ExecutorEnd(ptr noundef %i.aj) #6
  call void @FreeQueryDesc(ptr noundef %i.aj) #6
  call void @PopActiveSnapshot() #6
  %i.jz = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %pg_get_ticks.exit
  call void @CommandCounterIncrement() #6
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %pg_get_ticks.exit
  %i.kb = load i8, ptr @timing_tsc_enabled, align 1, !range !7, !noundef !8
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.ck, label %bb.cl, !prof !10

bb.ck:                                            ; preds = %bb.cj
  %i.kd = call { i64, i32 } @llvm.x86.rdtscp()
  %i.ke = extractvalue { i64, i32 } %i.kd, 0
  br label %pg_get_ticks.exit.i120

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.kf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #6 ; 0 uses
  %i.kg = load i64, ptr %9, align 8
  %i.kh = mul i64 %i.kg, 1000000000
  %i.ki = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kj = load i64, ptr %i.ki, align 8
  %i.kk = add i64 %i.kh, %i.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %pg_get_ticks.exit.i120

pg_get_ticks.exit.i120:                           ; preds = %bb.cl, %bb.ck
  %.sroa.0.0.i.i121 = phi i64 [ %i.ke, %bb.ck ], [ %i.kk, %bb.cl ]
  %i.kl = sub i64 %.sroa.0.0.i.i121, %.sroa.0.0.i ; 5 uses
  %i.km = load i64, ptr @ticks_per_ns_scaled, align 8 ; 3 uses
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %elapsed_time.exit126, label %bb.cm

bb.cm:                                            ; preds = %pg_get_ticks.exit.i120
  %i.ko = load i64, ptr @max_ticks_no_overflow, align 8
  %i.kp = icmp sgt i64 %i.kl, %i.ko
  br i1 %i.kp, label %bb.cn, label %bb.co, !prof !11

bb.cn:                                            ; preds = %bb.cm
  %i.kq = ashr i64 %i.kl, 14
  %i.kr = mul i64 %i.kq, %i.km
  %i.ks = and i64 %i.kl, 16383
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.011.i.i122 = phi i64 [ %i.ks, %bb.cn ], [ %i.kl, %bb.cm ]
  %.010.i.i123 = phi i64 [ %i.kr, %bb.cn ], [ 0, %bb.cm ]
  %i.kt = mul i64 %.011.i.i122, %i.km
  %i.ku = lshr i64 %i.kt, 14
  %i.kv = add i64 %i.ku, %.010.i.i123
  br label %elapsed_time.exit126

elapsed_time.exit126:                             ; preds = %pg_get_ticks.exit.i120, %bb.co
  %.0.i.i125 = phi i64 [ %i.kv, %bb.co ], [ %i.kl, %pg_get_ticks.exit.i120 ]
  %i.kw = sitofp i64 %.0.i.i125 to double
  %i.kx = fdiv nnan double %i.kw, 1.000000e+09
  %i.ky = fadd double %.092, %i.kx
  %i.kz = load i8, ptr %i.fe, align 2, !range !7, !noundef !8
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %elapsed_time.exit126
  %i.lb = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ld = fmul double %i.ky, 1.000000e+03
  call void @ExplainPropertyFloat(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, double noundef %i.ld, i32 noundef 3, ptr noundef nonnull %2) #6
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %elapsed_time.exit126
  call void @ExplainCloseGroup(ptr noundef nonnull @.str.14, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExplainOneUtility(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ExplainOneQuery.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr6484 = phi ptr [ %.tr64.be, %tailrecurse.backedge ], [ %1, %bb.a ]
  %.tr83 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 8 uses
  %i.b = load i32, ptr %.tr83, align 4
  switch i32 %i.b, label %bb.w [
    i32 250, label %bb.b
    i32 209, label %bb.m
end_hunk_1
