Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres_select_util?download=true
begin_hunk_0_@gres_select_util_job_min_tasks:bb.a
  store i16 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %1, ptr %i.e, align 4
  switch i16 %2, label %bb.b [
    i16 -2, label %bb.h
    i16 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @slurm_list_count(ptr noundef nonnull %4) #7
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %3, align 1
  %.not16 = icmp eq i8 %i.h, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @gres_build_id(ptr noundef nonnull %3) #7
  store i32 %i.i, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.j = call i32 @slurm_list_for_each(ptr noundef nonnull %4, ptr noundef nonnull @_foreach_gres_job_min_tasks, ptr noundef nonnull %5) #7 ; 0 uses
  %i.k = load i32, ptr %5, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.a, %bb.g
  %.0 = phi i32 [ %i.k, %bb.g ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_gres_job_min_tasks(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not30 = icmp eq i32 %i.b, %i.d
  br i1 %.not30, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not31 = icmp eq i64 %i.h, 0
  br i1 %.not31, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not32 = icmp eq i64 %i.j, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = mul i64 %i.j, %i.m
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.not33 = icmp eq i64 %i.p, 0
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = zext i32 %i.r to i64
  %i.t = mul i64 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = mul i64 %i.t, %i.w
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.z = load i64, ptr %i.y, align 8
  %.not34 = icmp eq i64 %i.z, 0
  br i1 %.not34, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._foreach_gres_job_min_tasks) #7 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.i, %bb.g
  %.0 = phi i64 [ 0, %bb.i ], [ %i.n, %bb.e ], [ %i.x, %bb.g ], [ %i.h, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i16, ptr %i.ab, align 4
  %i.ad = zext i16 %i.ac to i64
  %i.ae = mul i64 %.0, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = load i32, ptr %1, align 4
  %. = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.af)
  store i32 %., ptr %1, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.b, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @gres_select_util_job_mem_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.foreach_gres_job_mem_set_args_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i8 1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, i8 0, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not = icmp eq ptr %0, null
  store i64 0, ptr %i.c, align 8
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @slurm_bit_set_count(ptr noundef %i.e) #7
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @slurm_list_for_each(ptr noundef nonnull %0, ptr noundef nonnull @_foreach_gres_job_mem_set, ptr noundef nonnull %2) #7 ; 0 uses
  %i.h = load i8, ptr %i.c, align 8, !range !8, !noundef !9
  %i.i = trunc nuw i8 %i.h to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i1 %.0
}

declare i32 @slurm_bit_set_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_gres_job_mem_set(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not41 = icmp eq i64 %i.g, 0
  br i1 %.not41, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.03249 = phi i64 [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not42 = icmp eq ptr %i.i, null
  br i1 %.not42, label %bb.k, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 4
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr @next_node_bitmap(ptr noundef %i.n, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not4350 = icmp eq ptr %i.o, null
  br i1 %.not4350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %2 = phi ptr [ %i.o, %.lr.ph ], [ %i.as, %bb.j ]
  %.03151 = phi i32 [ -1, %.lr.ph ], [ %3, %bb.j ]
  %3 = add nsw i32 %.03151, 1                     ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 162
  %i.s = load i8, ptr %i.r, align 2
  %i.t = and i8 %i.s, 1
  %.not44 = icmp eq i8 %i.t, 0
  br i1 %.not44, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call ptr @slurm_list_find_first(ptr noundef %i.v, ptr noundef nonnull @slurm_gres_find_id, ptr noundef nonnull %i.p) #7 ; 2 uses
  %.not45.not = icmp eq ptr %i.w, null
  br i1 %.not45.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.2.in = phi ptr [ %i.z, %bb.f ], [ %i.ad, %bb.g ]
  %.2 = load i64, ptr %.2.in, align 8
  %i.ae = mul i64 %.2, %.03249                    ; 2 uses
  %i.af = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load ptr, ptr %i.k, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %4 = zext nneg i32 %3 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %4 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ %i.am, %bb.i ], [ %i.ae, %bb.h ]
  store i64 %.sink, ptr %i.ak, align 8
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.a, align 4
  %i.ap = load ptr, ptr %i.k, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call ptr @next_node_bitmap(ptr noundef %i.ar, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not43 = icmp eq ptr %i.as, null
  br i1 %.not43, label %._crit_edge, label %bb.d, !llvm.loop !10

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store i8 0, ptr %1, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.b, %.thread, %._crit_edge
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gres_select_util_job_min_cpus(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.foreach_gres_job_min_cpus_args_t, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %2, ptr %i.c, align 4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @slurm_list_count(ptr noundef nonnull %3) #7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @slurm_list_for_each(ptr noundef nonnull %3, ptr noundef nonnull @_foreach_gres_job_min_cpus, ptr noundef nonnull %4) #7 ; 0 uses
  %i.g = load i32, ptr %4, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_foreach_gres_job_min_cpus(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.f = load i16, ptr %i.e, align 2              ; 2 uses
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.02640 = phi i16 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not35 = icmp eq i64 %i.i, 0
  br i1 %.not35, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.not36 = icmp eq i64 %i.k, 0
  br i1 %.not36, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not37 = icmp eq i64 %i.m, 0
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.m, %i.p
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.not38 = icmp eq i64 %i.s, 0
  br i1 %.not38, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.c, %bb.e
  %.sink50 = phi i64 [ 8, %bb.e ], [ 4, %bb.c ], [ 12, %bb.f ]
  %.sink = phi i64 [ %i.q, %bb.e ], [ %i.k, %bb.c ], [ %i.s, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sink50
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64
  %i.w = mul i64 %.sink, %i.v
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %.thread
  %.0 = phi i64 [ %i.i, %.thread ], [ %i.w, %.sink.split ]
  %i.x = zext i16 %.02640 to i64
  %i.y = mul i64 %.0, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = load i32, ptr %1, align 4
  %. = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.z)
  store i32 %., ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.g
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gres_select_util_job_mem_max(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @slurm_list_for_each(ptr noundef nonnull %0, ptr noundef nonnull @_foreach_gres_job_mem_max, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_foreach_gres_job_mem_max(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = load i64, ptr %1, align 8
  %..0 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %.0)
  store i64 %..0, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @gres_select_util_job_tres_per_task(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @slurm_list_find_first(ptr noundef nonnull %0, ptr noundef nonnull @_is_gres_per_task_set, ptr noundef null) #7
  %i.b = icmp ne ptr %i.a, null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare ptr @slurm_list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @_is_gres_per_task_set(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
