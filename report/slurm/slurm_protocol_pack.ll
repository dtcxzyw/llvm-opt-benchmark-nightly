Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_protocol_pack?download=true
inline.NumInlined: 172
inline.NumDeleted: 34
begin_hunk_0_@_unpack_reattach_tasks_response_msg:bb.a
bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = call i32 @unpack32_array(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a, ptr noundef %1) #6
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.k, align 4              ; 3 uses
  %i.r = load i32, ptr %i.a, align 4
  %.not41 = icmp eq i32 %i.q, %i.r
  br i1 %.not41, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %.thread52, label %bb.i

.thread52:                                        ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.s, align 8
  br label %.thread47

bb.i:                                             ; preds = %bb.h
  %i.t = zext i32 %i.q to i64
  %i.u = call ptr @slurm_xcalloc(i64 noundef %i.t, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull @.str.2, i32 noundef 8991, ptr noundef nonnull @__func__._unpack_reattach_tasks_response_msg) #6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.u, ptr %i.v, align 8
  %.not43 = icmp eq ptr %i.u, null
  br i1 %.not43, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pre = load i32, ptr %i.k, align 4
  %i.w = icmp eq i32 %.pre, 0
  br i1 %i.w, label %.thread47, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.k, align 4
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.l, label %.thread47, !llvm.loop !91

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = call i32 @unpackstr_xmalloc_chooser(ptr noundef %i.ac, ptr noundef nonnull %i.c, ptr noundef %1) #6
  %.not44 = icmp eq i32 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br i1 %.not44, label %bb.k, label %.thread

.thread47:                                        ; preds = %bb.k, %.thread52, %bb.j, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.d, ptr %i.ae, align 8
  br label %bb.m

.thread:                                          ; preds = %bb.l, %bb.i, %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  call void @slurm_free_reattach_tasks_response_msg(ptr noundef %i.d) #6
  br label %bb.m

bb.m:                                             ; preds = %.thread, %.thread47
  %.034 = phi i32 [ 0, %.thread47 ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.034
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_unpack_cancel_tasks_msg(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 9683, ptr noundef nonnull @__func__._unpack_cancel_tasks_msg) #6 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.c = load i16, ptr %i.b, align 4
  %i.d = icmp ugt i16 %i.c, 10751
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = tail call i32 @unpack64(ptr noundef nonnull %i.e, ptr noundef %1) #6
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %unpack_step_id_members.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = tail call i32 @unpack32(ptr noundef nonnull %i.g, ptr noundef %1) #6
  %.not11.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i, label %bb.d, label %unpack_step_id_members.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = tail call i32 @unpack32(ptr noundef nonnull %i.i, ptr noundef %1) #6
  %.not12.i = icmp eq i32 %i.j, 0
  br i1 %.not12.i, label %bb.e, label %unpack_step_id_members.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.l = tail call i32 @unpack32(ptr noundef nonnull %i.k, ptr noundef %1) #6
  %.not13.i = icmp eq i32 %i.l, 0
  br i1 %.not13.i, label %bb.f, label %unpack_step_id_members.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @unpack16(ptr noundef nonnull %i.a, ptr noundef %1) #6
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.g, label %unpack_step_id_members.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = tail call i32 @unpack16(ptr noundef nonnull %i.n, ptr noundef %1) #6
  %.not12 = icmp eq i32 %i.o, 0
  br i1 %.not12, label %bb.h, label %unpack_step_id_members.exit

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.a, ptr %i.p, align 8
  br label %bb.i

unpack_step_id_members.exit:                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.g, %bb.f
  tail call void @slurm_free_signal_tasks_msg(ptr noundef nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %unpack_step_id_members.exit, %bb.h
  %.0 = phi i32 [ -1, %unpack_step_id_members.exit ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_unpack_job_step_info_req_msg(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 10917, ptr noundef nonnull @__func__._unpack_job_step_info_req_msg) #6 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4
  %i.d = icmp ugt i16 %i.c, 10751
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @unpack_time(ptr noundef %i.a, ptr noundef %1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %unpack_step_id_members.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i16, ptr %i.b, align 4              ; 2 uses
  %i.g = icmp ugt i16 %i.f, 10751
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = tail call i32 @unpack64(ptr noundef nonnull %i.h, ptr noundef %1) #6
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %unpack_step_id_members.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = tail call i32 @unpack32(ptr noundef nonnull %i.j, ptr noundef %1) #6
  %.not11.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i, label %bb.f, label %unpack_step_id_members.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = tail call i32 @unpack32(ptr noundef nonnull %i.l, ptr noundef %1) #6
  %.not12.i = icmp eq i32 %i.m, 0
  br i1 %.not12.i, label %bb.g, label %unpack_step_id_members.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.o = tail call i32 @unpack32(ptr noundef nonnull %i.n, ptr noundef %1) #6
  %.not13.i = icmp eq i32 %i.o, 0
  br i1 %.not13.i, label %bb.i, label %unpack_step_id_members.exit

bb.h:                                             ; preds = %bb.c
  %i.p = zext nneg i16 %i.f to i32
  %i.q = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.unpack_step_id_members, i32 noundef %i.p) #6 ; 0 uses
  br label %unpack_step_id_members.exit

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = tail call i32 @unpack16(ptr noundef nonnull %i.r, ptr noundef %1) #6
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %bb.j, label %unpack_step_id_members.exit

bb.j:                                             ; preds = %bb.i, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.a, ptr %i.t, align 8
  br label %bb.k

unpack_step_id_members.exit:                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.i, %bb.b
  tail call void @slurm_free_job_step_info_request_msg(ptr noundef %i.a) #6
  br label %bb.k

bb.k:                                             ; preds = %unpack_step_id_members.exit, %bb.j
  %.0 = phi i32 [ -1, %unpack_step_id_members.exit ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_unpack_job_info_request_msg(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8
  %i.c = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 10549, ptr noundef nonnull @__func__._unpack_job_info_request_msg) #6 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.e = load i16, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp ugt i16 %i.e, 11263
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @unpack_time(ptr noundef %i.c, ptr noundef %1) #6
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = tail call i32 @unpack16(ptr noundef nonnull %i.h, ptr noundef %1) #6
  %.not40 = icmp eq i32 %i.i, 0
  br i1 %.not40, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @unpack32(ptr noundef nonnull %i.a, ptr noundef %1) #6
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load i32, ptr %i.a, align 4              ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not41 = icmp eq i32 %i.l, -2
  br i1 %.not41, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @list_create(ptr noundef nonnull @xfree_ptr) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load i32, ptr %i.a, align 4
  %.not53 = icmp eq i32 %i.p, 0
  br i1 %.not53, label %.thread, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.f, %bb.g
  %.03150 = phi i32 [ %i.t, %bb.g ], [ 0, %bb.f ]
  %i.q = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 10561, ptr noundef nonnull @__func__._unpack_job_info_request_msg) #6 ; 3 uses
  %i.r = call i32 @unpack32(ptr noundef %i.q, ptr noundef %1) #6
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %.lr.ph51
  %i.s = load ptr, ptr %i.o, align 8
  call void @list_append(ptr noundef %i.s, ptr noundef %i.q) #6
  %i.t = add nuw nsw i32 %.03150, 1               ; 2 uses
  %i.u = load i32, ptr %i.a, align 4
  %i.v = icmp ult i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph51, label %.thread, !llvm.loop !92

bb.h:                                             ; preds = %bb.a
  %i.w = icmp samesign ugt i16 %i.e, 10751
  br i1 %i.w, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @unpack_time(ptr noundef %i.c, ptr noundef %1) #6
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = tail call i32 @unpack16(ptr noundef nonnull %i.y, ptr noundef %1) #6
  %.not36 = icmp eq i32 %i.z, 0
  br i1 %.not36, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aa = call i32 @unpack32(ptr noundef nonnull %i.a, ptr noundef %1) #6
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  %or.cond3 = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond3, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not37 = icmp eq i32 %i.ac, -2
  br i1 %.not37, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = call ptr @list_create(ptr noundef nonnull @xfree_ptr) #6
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = load i32, ptr %i.a, align 4
  %.not52 = icmp eq i32 %i.ag, 0
  br i1 %.not52, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.049 = phi i32 [ %i.ak, %bb.n ], [ 0, %bb.m ]
  %i.ah = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 10577, ptr noundef nonnull @__func__._unpack_job_info_request_msg) #6 ; 3 uses
  %i.ai = call i32 @unpack32(ptr noundef %i.ah, ptr noundef %1) #6
  %.not38 = icmp eq i32 %i.ai, 0
  br i1 %.not38, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %i.af, align 8
  call void @list_append(ptr noundef %i.aj, ptr noundef %i.ah) #6
  %i.ak = add nuw nsw i32 %.049, 1                ; 2 uses
  %i.al = load i32, ptr %i.a, align 4
  %i.am = icmp ult i32 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %.thread, !llvm.loop !93

.thread:                                          ; preds = %bb.n, %bb.g, %bb.m, %bb.f, %bb.h, %bb.l, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.c, ptr %i.an, align 8
  br label %bb.o

.sink.split:                                      ; preds = %.lr.ph, %.lr.ph51
  %.lcssa68.sink = phi ptr [ %i.q, %.lr.ph51 ], [ %i.ah, %.lr.ph ]
  store ptr %.lcssa68.sink, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.sink.split, %bb.k, %bb.j, %bb.i, %bb.d, %bb.c, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.b) #6
  call void @slurm_free_job_info_request_msg(ptr noundef %i.c) #6
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.thread
  %.032 = phi i32 [ -1, %.loopexit ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_unpack_job_state_request_msg(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 10617, ptr noundef nonnull @__func__._unpack_job_state_request_msg) #6 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.c = load i16, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp ugt i16 %i.c, 11263
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @unpack32(ptr noundef %i.a, ptr noundef %1) #6
  %.not66 = icmp eq i32 %i.e, 0
  br i1 %.not66, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8              ; 3 uses
  %i.g = icmp ugt i32 %i.f, 67108862
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not67 = icmp eq i32 %i.f, 0
  br i1 %.not67, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = zext nneg i32 %i.f to i64
  %i.i = tail call ptr @slurm_xcalloc(i64 noundef %i.h, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull @.str.2, i32 noundef 10627, ptr noundef nonnull @__func__._unpack_job_state_request_msg) #6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %.not68 = icmp eq ptr %i.i, null
  br i1 %.not68, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pre90 = load i32, ptr %i.a, align 8
  %i.k = icmp eq i32 %.pre90, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.j
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.m = load i32, ptr %i.a, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next87, %i.n
  br i1 %i.o, label %bb.h, label %.loopexit, !llvm.loop !94

bb.h:                                             ; preds = %.lr.ph80, %bb.g
  %indvars.iv86 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next87, %bb.g ] ; 5 uses
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %indvars.iv86 ; 5 uses
  store ptr null, ptr %i.q, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 -2, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 -2, ptr %.sroa.38.0..sroa_idx, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store <4 x i32> <i32 -2, i32 -2, i32 -2, i32 0>, ptr %.sroa.510.0..sroa_idx, align 8
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %indvars.iv86
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = tail call i32 @unpack32(ptr noundef nonnull %i.t, ptr noundef %1) #6
  %.not69 = icmp eq i32 %i.u, 0
  br i1 %.not69, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %indvars.iv86
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = tail call i32 @unpack32(ptr noundef nonnull %i.x, ptr noundef %1) #6
  %.not70 = icmp eq i32 %i.y, 0
  br i1 %.not70, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.l, align 8
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %indvars.iv86
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = tail call i32 @unpack32(ptr noundef nonnull %i.ab, ptr noundef %1) #6
  %.not71 = icmp eq i32 %i.ac, 0
  br i1 %.not71, label %bb.g, label %.thread

bb.k:                                             ; preds = %bb.a
  %i.ad = icmp samesign ugt i16 %i.c, 10751
  br i1 %i.ad, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call i32 @unpack32(ptr noundef %i.a, ptr noundef %1) #6
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %i.a, align 8             ; 3 uses
  %i.ag = icmp ugt i32 %i.af, 67108862
  br i1 %i.ag, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not61 = icmp eq i32 %i.af, 0
  br i1 %.not61, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = tail call ptr @slurm_xcalloc(i64 noundef %i.ah, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull @.str.2, i32 noundef 10649, ptr noundef nonnull @__func__._unpack_job_state_request_msg) #6 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  %.not62 = icmp eq ptr %i.ai, null
  br i1 %.not62, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.pre = load i32, ptr %i.a, align 8
  %i.ak = icmp eq i32 %.pre, 0
  br i1 %i.ak, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.a, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.r, label %.loopexit, !llvm.loop !95

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 5 uses
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %indvars.iv ; 5 uses
  store ptr null, ptr %i.aq, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 -2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 -2, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store <4 x i32> <i32 -2, i32 -2, i32 -2, i32 0>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = tail call i32 @unpack32(ptr noundef nonnull %i.at, ptr noundef %1) #6
  %.not63 = icmp eq i32 %i.au, 0
  br i1 %.not63, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.al, align 8
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = tail call i32 @unpack32(ptr noundef nonnull %i.ax, ptr noundef %1) #6
  %.not64 = icmp eq i32 %i.ay, 0
  br i1 %.not64, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = tail call i32 @unpack32(ptr noundef nonnull %i.bb, ptr noundef %1) #6
  %.not65 = icmp eq i32 %i.bc, 0
  br i1 %.not65, label %bb.q, label %.thread

.loopexit:                                        ; preds = %bb.q, %bb.g, %bb.n, %bb.d, %bb.p, %bb.f, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.a, ptr %i.bd, align 8
  br label %bb.u

.thread:                                          ; preds = %bb.t, %bb.s, %bb.r, %bb.j, %bb.i, %bb.h, %bb.o, %bb.m, %bb.l, %bb.e, %bb.c, %bb.b
  tail call void @slurm_free_job_state_request_msg(ptr noundef %i.a) #6
  br label %bb.u

bb.u:                                             ; preds = %.thread, %.loopexit
  %.0 = phi i32 [ -1, %.thread ], [ 0, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_unpack_job_state_response_msg(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 10730, ptr noundef nonnull @__func__._unpack_job_state_response_msg) #6 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.i = load i16, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp ugt i16 %i.i, 11263
  br i1 %i.j, label %bb.b, label %bb.aa
end_hunk_0
