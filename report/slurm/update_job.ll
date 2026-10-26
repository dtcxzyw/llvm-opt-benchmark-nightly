Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/update_job?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@scontrol_hold:bb.a
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next, %i.dp
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.an, %.preheader106
  %.lcssa108 = phi ptr [ %i.ct, %.preheader106 ], [ %i.dn, %bb.an ]
  call void @slurm_free_job_array_resp(ptr noundef nonnull %.lcssa108) #13
  store ptr null, ptr %i.a, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %._crit_edge, %bb.ai, %bb.aj
  %.4 = phi i32 [ %i.cn, %bb.aj ], [ %i.cn, %bb.ai ], [ %.3, %._crit_edge ], [ %.3, %bb.ak ]
  call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aa, %bb.y, %bb.ao
  %.5 = phi i32 [ %.2111, %bb.y ], [ %.4, %bb.ao ], [ %.2111, %bb.aa ] ; 2 uses
  %i.dr = add nuw nsw i32 %.169110, 1             ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0112, i64 1032
  %i.dt = load ptr, ptr @scontrol_hold.jobs, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = icmp ult i32 %i.dr, %i.dv
  br i1 %i.dw, label %bb.y, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.ap, %bb.o, %bb.p, %bb.x, %.preheader105, %bb.v, %bb.w, %bb.s, %bb.t
  %.072 = phi i32 [ %.1, %bb.o ], [ 0, %bb.p ], [ 2017, %bb.s ], [ 1, %bb.v ], [ 2017, %bb.t ], [ 1, %bb.w ], [ 0, %.preheader105 ], [ 0, %bb.x ], [ %.5, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.072
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @xstrncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @slurm_init_job_desc_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_is_job_id(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @xstrdup(ptr noundef nonnull %0) #13 ; 2 uses
  store ptr %i.a, ptr @local_job_str, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ %.pre, %bb.m ] ; 2 uses
  %.039 = phi i1 [ false, %bb.b ], [ %.140, %bb.m ] ; 8 uses
  %.037 = phi i8 [ 0, %bb.b ], [ %.138, %bb.m ]   ; 9 uses
  %.035 = phi i32 [ 0, %bb.b ], [ %.136, %bb.m ]  ; 11 uses
  %.034 = phi i32 [ 0, %bb.b ], [ %i.w, %bb.m ]   ; 12 uses
  %i.c = sext i32 %.034 to i64                    ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  switch i8 %i.e, label %bb.l [
    i8 0, label %bb.n
    i8 115, label %bb.d
    i8 43, label %bb.e
    i8 95, label %bb.f
    i8 91, label %bb.g
    i8 93, label %bb.h
    i8 45, label %bb.i
    i8 44, label %bb.j
    i8 32, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %.034, 14
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  store i8 0, ptr %i.h, align 1
  %i.j = load ptr, ptr @local_job_str, align 8
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %i.c
  %i.l = tail call i64 @str2sluid(ptr noundef %i.k) #13
  %.not47 = icmp eq i64 %i.l, 0
  br i1 %.not47, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.d
  %i.m = load ptr, ptr @local_job_str, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.g
  store i8 %i.i, ptr %i.n, align 1
  %i.o = add nsw i32 %.034, 13
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  br i1 %.039, label %.loopexit, label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.p = trunc nuw i8 %.037 to i1
  br i1 %i.p, label %.loopexit, label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.q = add nsw i32 %.035, 1
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.r = add nsw i32 %.035, -1
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.s = icmp ne i32 %.035, 0
  %i.t = trunc nuw i8 %.037 to i1
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.m, label %.loopexit

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.u = icmp eq i32 %.035, 0
  br i1 %i.u, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  store i8 94, ptr %i.d, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.v = add i8 %i.e, -58
  %or.cond48 = icmp ult i8 %i.v, -10
  br i1 %or.cond48, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.f, %bb.e, %bb.h, %bb.k, %bb.j, %bb.i, %bb.g
  %.140 = phi i1 [ %.039, %.thread ], [ %.039, %bb.l ], [ true, %bb.e ], [ %.039, %bb.g ], [ %.039, %bb.h ], [ %.039, %bb.i ], [ false, %bb.k ], [ %.039, %bb.j ], [ %.039, %bb.f ]
  %.138 = phi i8 [ %.037, %.thread ], [ %.037, %bb.l ], [ %.037, %bb.e ], [ %.037, %bb.g ], [ %.037, %bb.h ], [ %.037, %bb.i ], [ 0, %bb.k ], [ %.037, %bb.j ], [ 1, %bb.f ]
  %.136 = phi i32 [ %.035, %.thread ], [ %.035, %bb.l ], [ %.035, %bb.e ], [ %i.q, %bb.g ], [ %i.r, %bb.h ], [ %.035, %bb.i ], [ 0, %bb.k ], [ %.035, %bb.j ], [ %.035, %bb.f ]
  %.2 = phi i32 [ %i.o, %.thread ], [ %.034, %bb.l ], [ %.034, %bb.e ], [ %.034, %bb.g ], [ %.034, %bb.h ], [ %.034, %bb.i ], [ %.034, %bb.k ], [ %.034, %bb.j ], [ %.034, %bb.f ]
  %i.w = add nsw i32 %.2, 1
  %.pre = load ptr, ptr @local_job_str, align 8
  br label %bb.c, !llvm.loop !14

bb.n:                                             ; preds = %bb.c
  %.not46 = icmp eq i32 %.035, 0
  br i1 %.not46, label %bb.p, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.l, %bb.i, %bb.f, %bb.e, %bb.n
  tail call void @slurm_xfree(ptr noundef nonnull @local_job_str) #13
  %i.x = tail call i32 @get_log_level() #13
  %i.y = icmp sgt i32 %i.x, 4
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.145, i32 noundef %.034, ptr noundef nonnull %0) #13
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o, %bb.n, %bb.a
  %.041 = phi i1 [ false, %bb.a ], [ true, %bb.n ], [ false, %bb.o ], [ false, %.loopexit ]
  ret i1 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_next_job_id() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  tail call void @slurm_xfree(ptr noundef nonnull @_next_job_id.next_job_id) #13
  %i.b = load ptr, ptr @_next_job_id.hl, align 8  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @hostlist_shift(ptr noundef nonnull %i.b) #13 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8
  %.not35 = icmp eq ptr %i.c, null
  br i1 %.not35, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @xstrdup(ptr noundef nonnull %i.c) #13
  store ptr %i.d, ptr @_next_job_id.next_job_id, align 8
  tail call void @free(ptr noundef nonnull %i.c) #13
  %i.e = load ptr, ptr @_next_job_id.task_id_spec, align 8
  %.not44 = icmp eq ptr %i.e, null
  br i1 %.not44, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_xstrcat(ptr noundef nonnull @_next_job_id.next_job_id, ptr noundef nonnull @.str.146) #13
  %i.f = load ptr, ptr @_next_job_id.task_id_spec, align 8
  tail call void @_xstrcat(ptr noundef nonnull @_next_job_id.next_job_id, ptr noundef %i.f) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr @_next_job_id.next_job_id, align 8
  br label %bb.ac

bb.f:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @_next_job_id.hl, align 8
  tail call void @hostlist_destroy(ptr noundef %i.h) #13
  store ptr null, ptr @_next_job_id.hl, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  tail call void @slurm_xfree(ptr noundef nonnull @_next_job_id.task_id_spec) #13
  %i.i = load ptr, ptr @local_job_str, align 8    ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = load ptr, ptr @_next_job_id.save_ptr, align 8
  %i.l = icmp ne ptr %i.k, null                   ; 2 uses
  %or.cond = select i1 %i.j, i1 true, i1 %i.l     ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.l
  br i1 %brmerge, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.mux = select i1 %or.cond, ptr null, ptr %i.i
  %i.m = tail call ptr @strtok_r(ptr noundef %.mux, ptr noundef nonnull @.str.147, ptr noundef nonnull @_next_job_id.save_ptr) #13 ; 8 uses
  %.not36 = icmp eq ptr %i.m, null
  br i1 %.not36, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.m, i32 noundef 95) #16 ; 6 uses
  %.not37 = icmp eq ptr %i.n, null                ; 3 uses
  br i1 %.not37, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 91
  br i1 %i.q, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.s = tail call ptr @xstrdup(ptr noundef nonnull %i.r) #13 ; 3 uses
  store ptr %i.s, ptr @_next_job_id.task_id_spec, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.k ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1
  switch i8 %i.u, label %bb.n [
    i8 0, label %.loopexit
    i8 93, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 0, ptr %i.v, align 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.l, !llvm.loop !15

bb.o:                                             ; preds = %bb.j
  %i.w = tail call ptr @xstrdup(ptr noundef nonnull %i.o) #13
  store ptr %i.w, ptr @_next_job_id.task_id_spec, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.o, %bb.m, %bb.i
  %i.x = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.m, i32 noundef 91) #16 ; 2 uses
  %.not39 = icmp ne ptr %i.x, null
  %i.y = icmp ult ptr %i.x, %i.n
  %or.cond45 = or i1 %.not37, %i.y
  %or.cond46 = and i1 %.not39, %or.cond45
  br i1 %or.cond46, label %bb.p, label %bb.w

bb.p:                                             ; preds = %.loopexit
  %i.z = tail call ptr @xstrdup(ptr noundef nonnull %i.m) #13 ; 3 uses
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 95) #16 ; 2 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.aa, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ab = tail call ptr @hostlist_create(ptr noundef nonnull %i.z) #13 ; 2 uses
  store ptr %i.ab, ptr @_next_job_id.hl, align 8
  %.not41 = icmp eq ptr %i.ab, null
  br i1 %.not41, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ac = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.148, ptr noundef nonnull %i.m) #13 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  br label %.thread

bb.t:                                             ; preds = %bb.r
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  %i.ad = load ptr, ptr @_next_job_id.hl, align 8
  %i.ae = call ptr @hostlist_shift(ptr noundef %i.ad) #13 ; 3 uses
  store ptr %i.ae, ptr %i.a, align 8
  %.not42 = icmp eq ptr %i.ae, null
  br i1 %.not42, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.af = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.148, ptr noundef nonnull %i.m) #13 ; 0 uses
  %i.ag = load ptr, ptr @_next_job_id.hl, align 8
  call void @hostlist_destroy(ptr noundef %i.ag) #13
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.ah = call ptr @xstrdup(ptr noundef nonnull %i.ae) #13
  store ptr %i.ah, ptr @_next_job_id.next_job_id, align 8
  %i.ai = load ptr, ptr %i.a, align 8
  call void @free(ptr noundef %i.ai) #13
  br label %bb.z

bb.w:                                             ; preds = %.loopexit
  br i1 %.not37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.n, align 1
  %i.aj = tail call ptr @xstrdup(ptr noundef nonnull %i.m) #13
  store ptr %i.aj, ptr @_next_job_id.next_job_id, align 8
  store i8 95, ptr %i.n, align 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ak = tail call ptr @xstrdup(ptr noundef nonnull %i.m) #13
  store ptr %i.ak, ptr @_next_job_id.next_job_id, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v
  %i.al = load ptr, ptr @_next_job_id.task_id_spec, align 8
  %.not43 = icmp eq ptr %i.al, null
  br i1 %.not43, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_xstrcat(ptr noundef nonnull @_next_job_id.next_job_id, ptr noundef nonnull @.str.146) #13
  %i.am = load ptr, ptr @_next_job_id.task_id_spec, align 8
  call void @_xstrcat(ptr noundef nonnull @_next_job_id.next_job_id, ptr noundef %i.am) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.an = load ptr, ptr @_next_job_id.next_job_id, align 8
  br label %bb.ac

.thread:                                          ; preds = %bb.g, %bb.h, %bb.u, %bb.s
  call void @slurm_xfree(ptr noundef nonnull @local_job_str) #13
  store ptr null, ptr @_next_job_id.save_ptr, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab, %bb.e
  %.026 = phi ptr [ %i.g, %bb.e ], [ %i.an, %bb.ab ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.026
}

declare i32 @slurm_update_job2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #2

declare void @slurm_free_job_array_resp(ptr noundef) local_unnamed_addr #2

declare i32 @scontrol_load_job(ptr noundef, ptr noundef byval(%struct.slurm_step_id_t) align 8) local_unnamed_addr #2

declare void @slurm_perror(ptr noundef) local_unnamed_addr #2

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @scontrol_suspend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.b = tail call i32 @xstrncasecmp(ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef 6) #13
  %.not = icmp eq i32 %i.b, 0
  %spec.select.idx = select i1 %.not, i64 6, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 2 uses
  %i.c = tail call i32 @xstrncasecmp(ptr noundef %spec.select, ptr noundef nonnull @.str.14, i64 noundef 4) #13
  %.not25 = icmp eq i32 %i.c, 0
  %.1.idx = select i1 %.not25, i64 4, i64 0
  %.1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.1.idx ; 2 uses
  %i.d = tail call fastcc zeroext i1 @_is_job_id(ptr noundef %.1)
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @_next_job_id()     ; 2 uses
  %.not2734 = icmp eq ptr %i.e, null
  br i1 %.not2734, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.b, %bb.l
  %.035 = phi ptr [ %i.an, %bb.l ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %spec.select32 = call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.g = call i32 @xstrncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i64 noundef %spec.select32) #13
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph37
  %i.h = call i32 @slurm_suspend2(ptr noundef nonnull %.035, ptr noundef nonnull %i.a) #13
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph37
  %i.i = call i32 @slurm_resume2(ptr noundef nonnull %.035, ptr noundef nonnull %i.a) #13
  br label %bb.e

end_hunk_0
