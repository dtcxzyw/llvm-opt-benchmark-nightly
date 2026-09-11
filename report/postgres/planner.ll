Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/planner?download=true
inline.NumInlined: 215
inline.NumDeleted: 51
begin_hunk_0_@preprocess_phv_expression:bb.a
  %i.h = tail call ptr @eval_const_expressions(ptr noundef nonnull %0, ptr noundef %.036.i) #10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 59
  %i.l = load i8, ptr %i.k, align 1, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @SS_process_sublinks(ptr noundef nonnull %0, ptr noundef %i.h, i1 noundef zeroext false) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3.i = phi ptr [ %i.n, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %preprocess_expression.exit

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @SS_replace_correlation_vars(ptr noundef nonnull %0, ptr noundef %.3.i) #10
  br label %preprocess_expression.exit

preprocess_expression.exit:                       ; preds = %bb.f, %bb.g, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.r, %bb.g ], [ %.3.i, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @select_rowmark_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 102
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call ptr @GetFdwRoutineByRelId(i32 noundef %i.g) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef %1) #10
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %1, 5
  br i1 %i.l, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %1) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2824, ptr noundef nonnull @__func__.select_rowmark_type) #10
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %switch.offset = sub nuw nsw i32 4, %1
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup, %bb.d, %bb.c, %bb.a
  %.1 = phi i32 [ %i.k, %bb.d ], [ 5, %bb.a ], [ 5, %bb.c ], [ %switch.offset, %switch.lookup ]
  ret i32 %.1
}

declare ptr @GetFdwRoutineByRelId(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @limit_needed(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 7
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 7
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %.not15 = icmp eq i64 %i.p, 0
  br i1 %.not15, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.g, %bb.h
  %.1 = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mark_partial_aggref(ptr nofree noundef captures(none) initializes((80, 84)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.a, align 8
  %i.b = and i32 %1, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp ne i32 %i.d, 2281
  %i.f = and i32 %1, 4
  %.not7 = icmp eq i32 %i.f, 0
  %or.cond = or i1 %.not7, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %. = select i1 %or.cond, i32 %i.d, i32 17
  store i32 %., ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare i32 @compare_fractional_path_costs(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @expression_planner(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @eval_const_expressions(ptr noundef null, ptr noundef %0) #10 ; 2 uses
  tail call void @fix_opfuncids(ptr noundef %i.a) #10
  ret ptr %i.a
}

declare ptr @eval_const_expressions(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @fix_opfuncids(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @expression_planner_with_deps(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PlannerGlobal, align 8      ; 7 uses
  %4 = alloca %struct.PlannerInfo, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false)
  store i32 282, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %4, i8 0, i64 744, i1 false)
  store i32 283, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.c, align 8
  %i.d = call ptr @eval_const_expressions(ptr noundef nonnull %4, ptr noundef %0) #10 ; 3 uses
  call void @fix_opfuncids(ptr noundef %i.d) #10
  %i.e = call zeroext i1 @extract_query_dependencies_walker(ptr noundef %i.d, ptr noundef nonnull %4) #10 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8
  store ptr %i.f, ptr %1, align 8
  %i.g = load ptr, ptr %i.b, align 8
  store ptr %i.g, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret ptr %i.d
}

declare zeroext i1 @extract_query_dependencies_walker(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @plan_cluster_use_sort(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.QualCost, align 8           ; 5 uses
  %3 = alloca %struct.Path, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = load i8, ptr @enable_indexscan, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.thread60

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @palloc0(i64 noundef 296) #10 ; 5 uses
  store i32 70, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.d, align 4
  %i.e = tail call noundef ptr @palloc0(i64 noundef 224) #10 ; 2 uses
  store i32 282, ptr %i.e, align 4
  %i.f = tail call noundef ptr @palloc0(i64 noundef 744) #10 ; 14 uses
  store i32 283, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 1, ptr %i.i, align 8
  %i.j = load ptr, ptr @CurrentMemoryContext, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 672
  store i32 -1, ptr %i.l, align 8
  %i.m = tail call noundef ptr @palloc0(i64 noundef 16) #10 ; 2 uses
  store i32 289, ptr %i.m, align 4
  %i.n = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.m) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store ptr %i.n, ptr %i.o, align 8
  %i.p = tail call noundef ptr @palloc0(i64 noundef 240) #10 ; 10 uses
  store i32 108, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  store i8 114, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  store i8 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i8 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 225
  store i8 1, ptr %i.w, align 1
  %i.x = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.p) #10
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aa = tail call ptr @addRTEPermissionInfo(ptr noundef nonnull %i.z, ptr noundef nonnull %i.p) #10 ; 0 uses
  tail call void @setup_simple_rel_arrays(ptr noundef nonnull %i.f) #10
  %i.ab = tail call ptr @build_simple_rel(ptr noundef nonnull %i.f, i32 noundef 1, ptr noundef null) #10 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.thread60, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph66, label %.thread60

.lr.ph66:                                         ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread60, label %bb.d

bb.d:                                             ; preds = %.lr.ph66, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %1
  br i1 %i.an, label %.split, label %bb.c

.split:                                           ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 200 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store double %i.ap, ptr %i.aq, align 8
  %i.ar = tail call i32 @get_relation_data_width(i32 noundef %0, ptr noundef null) #10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i32 %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = uitofp i32 %i.aw to double
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 608
  store double %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.ba = load ptr, ptr %i.az, align 8
  call void @cost_qual_eval(ptr noundef nonnull %2, ptr noundef %i.ba, ptr noundef nonnull %i.f) #10
  %4 = load double, ptr %2, align 8
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = load double, ptr %5, align 8
  %7 = fadd double %4, %6
  %i.bb = fmul double %7, 2.000000e+00
  %i.bc = call ptr @create_seqscan_path(ptr noundef nonnull %i.f, ptr noundef %i.ab, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bg = load double, ptr %i.bf, align 8
  %i.bh = load double, ptr %i.ao, align 8
  %i.bi = load ptr, ptr %i.as, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = load i32, ptr @maintenance_work_mem, align 4
  call void @cost_sort(ptr noundef nonnull %3, ptr noundef nonnull %i.f, ptr noundef null, i32 noundef %i.be, double noundef %i.bg, double noundef %i.bh, i32 noundef %i.bk, double noundef %i.bb, i32 noundef %i.bl, double noundef -1.000000e+00) #10
  %i.bm = call ptr @create_index_path(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ak, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1, i1 noundef zeroext false, ptr noundef null, double noundef 1.000000e+00, i1 noundef zeroext false) #10
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bq = load double, ptr %i.bp, align 8
  %i.br = fcmp olt double %i.bo, %i.bq
  br label %.thread60

.thread60:                                        ; preds = %bb.c, %bb.b, %.lr.ph, %bb.a, %.split
  %.0 = phi i1 [ true, %bb.a ], [ %i.br, %.split ], [ true, %bb.b ], [ true, %.lr.ph ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i1 %.0
}

declare ptr @addRTEPermissionInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @setup_simple_rel_arrays(ptr noundef) local_unnamed_addr #2

declare ptr @build_simple_rel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_relation_data_width(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @cost_qual_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @create_seqscan_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @cost_sort(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, double noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare ptr @create_index_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, double noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @plan_create_index_workers(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = load i8, ptr @IsUnderPostmaster, align 1, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i32, ptr @max_parallel_maintenance_workers, align 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond.not = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @palloc0(i64 noundef 296) #10 ; 5 uses
  store i32 70, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %i.i, align 4
  %i.j = tail call noundef ptr @palloc0(i64 noundef 224) #10 ; 2 uses
  store i32 282, ptr %i.j, align 4
  %i.k = tail call noundef ptr @palloc0(i64 noundef 744) #10 ; 11 uses
  store i32 283, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 1, ptr %i.n, align 8
  %i.o = load ptr, ptr @CurrentMemoryContext, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 600
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 672
  store i32 -1, ptr %i.q, align 8
  %i.r = tail call noundef ptr @palloc0(i64 noundef 16) #10 ; 2 uses
  store i32 289, ptr %i.r, align 4
  %i.s = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.r) #10
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store ptr %i.s, ptr %i.t, align 8
  %i.u = tail call noundef ptr @palloc0(i64 noundef 240) #10 ; 10 uses
  store i32 108, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 33
  store i8 114, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  store i32 1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i8 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 225
  store i8 1, ptr %i.ab, align 1
  %i.ac = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.u) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.af = tail call ptr @addRTEPermissionInfo(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.u) #10 ; 0 uses
  tail call void @setup_simple_rel_arrays(ptr noundef nonnull %i.k) #10
  %i.ag = tail call ptr @build_simple_rel(ptr noundef nonnull %i.k, i32 noundef 1, ptr noundef null) #10 ; 2 uses
  %i.ah = tail call ptr @table_open(i32 noundef %0, i32 noundef 0) #10 ; 3 uses
  %i.ai = tail call ptr @index_open(i32 noundef %1, i32 noundef 0) #10 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 118
  %i.am = load i8, ptr %i.al, align 2
  %i.an = icmp eq i8 %i.am, 116
  br i1 %i.an, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = tail call ptr @RelationGetIndexExpressions(ptr noundef %i.ai) #10
  %i.ap = tail call zeroext i1 @is_parallel_safe(ptr noundef nonnull %i.k, ptr noundef %i.ao) #10
  br i1 %i.ap, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.aq = tail call ptr @RelationGetIndexPredicate(ptr noundef %i.ai) #10
  %i.ar = tail call zeroext i1 @is_parallel_safe(ptr noundef nonnull %i.k, ptr noundef %i.aq) #10
  br i1 %i.ar, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %.not = icmp eq i32 %i.at, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr @max_parallel_maintenance_workers, align 4
  %. = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.au)
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  call void @estimate_rel_size(ptr noundef nonnull %i.ah, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = uitofp i32 %i.av to double
  %i.ax = load i32, ptr @max_parallel_maintenance_workers, align 4
  %i.ay = call i32 @compute_parallel_worker(ptr noundef nonnull %i.ag, double noundef %i.aw, double noundef -1.000000e+00, i32 noundef %i.ax) #10 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.g
  %i.ba = load i32, ptr @maintenance_work_mem, align 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %.04347 = phi i32 [ %i.ay, %.lr.ph ], [ %i.be, %bb.i ] ; 4 uses
  %i.bb = add nuw i32 %.04347, 1
  %i.bc = sdiv i32 %i.ba, %i.bb
  %i.bd = icmp slt i32 %i.bc, 32768
  br i1 %i.bd, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.be = add nsw i32 %.04347, -1
  %i.bf = icmp sgt i32 %.04347, 1
  br i1 %i.bf, label %bb.h, label %.critedge, !llvm.loop !36

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.b, %bb.c, %bb.d, %bb.f
  %.1 = phi i32 [ 0, %bb.c ], [ %., %bb.f ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.ay, %bb.g ], [ 0, %bb.i ], [ %.04347, %bb.h ]
  call void @index_close(ptr noundef %i.ai, i32 noundef 0) #10
  call void @table_close(ptr noundef %i.ah, i32 noundef 0) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.critedge
  %.0 = phi i32 [ %.1, %.critedge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @index_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @is_parallel_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RelationGetIndexExpressions(ptr noundef) local_unnamed_addr #2

declare ptr @RelationGetIndexPredicate(ptr noundef) local_unnamed_addr #2

declare void @estimate_rel_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @compute_parallel_worker(ptr noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @index_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @create_unique_paths(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@create_final_distinct_paths:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bq = icmp ne i32 %.pre.i, 0
  %i.br = trunc nuw i8 %.pre21.i to i1
  %or.cond.i = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond.i, label %bb.p, label %make_ordered_path.exit.thread

make_ordered_path.exit.thread:                    ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.preheader

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.pre-phi.i = phi i1 [ %.pre22.i, %._crit_edge.i ], [ true, %bb.o ]
  %i.bs = icmp ne i32 %.pre.i, 0
  %or.cond3.i = select i1 %i.bs, i1 %.pre-phi.i, i1 false
  br i1 %or.cond3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = call ptr @create_sort_path(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.ba, ptr noundef %i.bn, double noundef %i.af) #10
  br label %make_ordered_path.exit

bb.r:                                             ; preds = %bb.p
  %i.bu = call ptr @create_incremental_sort_path(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.ba, ptr noundef %i.bn, i32 noundef %.pre.i, double noundef %i.af) #10
  br label %make_ordered_path.exit

make_ordered_path.exit:                           ; preds = %bb.q, %bb.r
  %.0.i = phi ptr [ %i.bt, %bb.q ], [ %i.bu, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bv = icmp eq ptr %.0.i, null
  br i1 %i.bv, label %.preheader, label %bb.s

bb.s:                                             ; preds = %make_ordered_path.exit.thread92, %make_ordered_path.exit
  %.0.i94 = phi ptr [ %i.ba, %make_ordered_path.exit.thread92 ], [ %.0.i, %make_ordered_path.exit ] ; 2 uses
  %i.bw = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.t, label %list_length.exit90

bb.t:                                             ; preds = %bb.s
  %i.by = call ptr @makeConst(i32 noundef 20, i32 noundef -1, i32 noundef 0, i32 noundef 8, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %i.bz = call ptr @create_limit_path(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %.0.i94, ptr noundef null, ptr noundef %i.by, i32 noundef 0, i64 noundef 0, i64 noundef 1) #10
  call void @add_path(ptr noundef %2, ptr noundef %i.bz) #10
  br label %.preheader

list_length.exit90:                               ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = call ptr @create_unique_path(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %.0.i94, i32 noundef %i.cb, double noundef %.071) #10
  call void @add_path(ptr noundef %2, ptr noundef %i.cc) #10
  br label %.preheader

.preheader:                                       ; preds = %make_ordered_path.exit.thread, %bb.t, %list_length.exit90, %make_ordered_path.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.cd = load i32, ptr %i.be, align 4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %.lr.ph109, label %.split97, !llvm.loop !55

.critedge83:                                      ; preds = %.split97, %.lr.ph, %bb.m, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.critedge85, label %bb.u

bb.u:                                             ; preds = %.critedge83
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ck = load i8, ptr %i.cj, align 4, !range !5, !noundef !6
  %i.cl = trunc nuw i8 %i.ck to i1
  %.not = xor i1 %i.cl, true
  %i.cm = load i8, ptr @enable_hashagg, align 1, !range !5
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond = select i1 %.not, i1 %i.cn, i1 false
  br i1 %or.cond, label %.critedge85, label %bb.w

.critedge85:                                      ; preds = %.critedge83, %bb.u
  %i.co = load ptr, ptr %i.z, align 8
  %i.cp = call zeroext i1 @grouping_is_hashable(ptr noundef %i.co) #10
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge85
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.z, align 8
  %i.ct = call ptr @create_agg_path(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.e, ptr noundef %i.cr, i32 noundef 2, i32 noundef 0, ptr noundef %i.cs, ptr noundef null, ptr noundef null, double noundef %.071) #10
  call void @add_path(ptr noundef nonnull %2, ptr noundef %i.ct) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge85, %bb.u
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_useful_pathkeys_for_distinct(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lappend(ptr noundef null, ptr noundef %1) #10 ; 7 uses
  %i.b = load i8, ptr @enable_distinct_reordering, align 1, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader37, label %.split.us.thread

.preheader37:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not34 = icmp eq ptr %2, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  br i1 %.not34, label %.split.us.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.preheader37
  %i.h = load i32, ptr %i.d, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph51, label %.split.us.thread

.split.us:                                        ; preds = %bb.c, %.lr.ph51, %bb.d
  %.us-phi54 = phi ptr [ %.13850, %bb.c ], [ %.13850, %.lr.ph51 ], [ %i.u, %bb.d ] ; 3 uses
  %i.j = icmp eq ptr %.us-phi54, null
  br i1 %i.j, label %.split.us.thread, label %list_length.exit

.lr.ph51:                                         ; preds = %.lr.ph.split, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.split ] ; 2 uses
  %.13850 = phi ptr [ %i.u, %bb.d ], [ null, %.lr.ph.split ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = tail call zeroext i1 @list_member_ptr(ptr noundef %1, ptr noundef %i.m) #10
  br i1 %i.n, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.lr.ph51
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.q = load i8, ptr %i.p, align 4, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = tail call zeroext i1 @list_member_ptr(ptr noundef %i.s, ptr noundef %i.m) #10
  br i1 %i.t, label %bb.d, label %.split.us

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = tail call ptr @lappend(ptr noundef %.13850, ptr noundef %i.m) #10 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr %i.d, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph51, label %.split.us

list_length.exit:                                 ; preds = %.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %.us-phi54, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %.not.i35 = icmp eq ptr %1, null
  br i1 %.not.i35, label %list_length.exit36, label %bb.e

bb.e:                                             ; preds = %list_length.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  br label %list_length.exit36

list_length.exit36:                               ; preds = %list_length.exit, %bb.e
  %i.ac = phi i32 [ %i.ab, %bb.e ], [ 0, %list_length.exit ]
  %i.ad = icmp sge i32 %i.z, %i.ac
  %i.ae = load i8, ptr @enable_incremental_sort, align 1, !range !5
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.f, label %.split.us.thread

bb.f:                                             ; preds = %list_length.exit36
  %i.ag = tail call ptr @list_concat_unique_ptr(ptr noundef nonnull %.us-phi54, ptr noundef %1) #10 ; 2 uses
  %i.ah = tail call i32 @compare_pathkeys(ptr noundef %1, ptr noundef %i.ag) #10
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.split.us.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @lappend(ptr noundef %i.a, ptr noundef %i.ag) #10
  br label %.split.us.thread

.split.us.thread:                                 ; preds = %.lr.ph.split, %.preheader37, %bb.f, %list_length.exit36, %.split.us, %bb.a, %bb.g
  %.032 = phi ptr [ %i.a, %bb.a ], [ %i.a, %list_length.exit36 ], [ %i.aj, %bb.g ], [ %i.a, %.split.us ], [ %i.a, %bb.f ], [ %i.a, %.preheader37 ], [ %i.a, %.lr.ph.split ]
  ret ptr %.032
}

declare ptr @makeConst(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @create_unique_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare ptr @list_concat_unique_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CheckSelectLocking(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @get_relids_in_jointree(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{null, ptr @select_rowmark_type}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7, !35}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{null}
!28 = distinct !{!28, !7}
!29 = distinct !{null, null}
!30 = distinct !{null}
!31 = distinct !{!31, !7}
!32 = distinct !{null}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !51}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{!50, !7}
!51 = !{!"llvm.loop.unswitch.partial.disable"}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
end_hunk_1
