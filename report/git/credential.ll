Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/credential?download=true
inline.NumInlined: 58
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@credential_fill:bb.a
bb.p:                                             ; preds = %._crit_edge
  %i.aw = call i32 @repo_config_get_string(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.b) #18
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.ay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(6) @.str.50) #19
  %.not16.not.i = icmp eq i32 %i.ay, 0
  call void @free(ptr noundef %i.ax) #18
  br i1 %.not16.not.i, label %credential_getpass.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.q, %bb.p
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.28, i32 noundef 284, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.51, ptr noundef %0) #18
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !27
  %.not17.i = icmp eq ptr %i.az, null
  br i1 %.not17.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.i
  %i.ba = call fastcc ptr @credential_ask_one(ptr noundef nonnull @.str.52, ptr noundef nonnull %1, i32 noundef 3)
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22
  %.not18.i = icmp eq ptr %i.bc, null
  br i1 %.not18.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = call fastcc ptr @credential_ask_one(ptr noundef nonnull @.str.53, ptr noundef nonnull %1, i32 noundef 1)
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !22
  br label %bb.u

credential_getpass.exit.thread:                   ; preds = %bb.q, %._crit_edge
  %.sink = phi i32 [ 271, %._crit_edge ], [ 279, %bb.q ]
  call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.28, i32 noundef %.sink, ptr noundef nonnull @.str.6, ptr noundef %0, ptr noundef nonnull @.str.49, i64 noundef 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.s
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.28, i32 noundef 291, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.51, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !27
  %.not34 = icmp eq ptr %i.be, null
  br i1 %.not34, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !22
  %.not35 = icmp eq ptr %i.bf, null
  br i1 %.not35, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !23
  %.not36 = icmp eq ptr %i.bg, null
  br i1 %.not36, label %bb.x, label %bb.y

bb.x:                                             ; preds = %credential_getpass.exit.thread, %bb.w
  call void (ptr, ...) @die(ptr noundef nonnull @.str.23) #21
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.b, %bb.c, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @credential_apply_config(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.urlmatch_config, align 8    ; 15 uses
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %2, i8 0, i64 152, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.credential_ask_one.prompt, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @_(ptr noundef nonnull @.str.33)
  tail call void (ptr, ...) @die(ptr noundef %i.d) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @_(ptr noundef nonnull @.str.34)
  tail call void (ptr, ...) @die(ptr noundef %i.g) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 8
  %.not13 = icmp eq i16 %i.j, 0
  br i1 %.not13, label %bb.f, label %proto_is_http.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr @.str.6, ptr %i.k, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr null, ptr %i.l, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr @credential_config_callback, ptr %i.m, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr null, ptr %i.n, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr @select_all, ptr %i.o, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr @match_partial_url, ptr %i.p, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 168
  store ptr %1, ptr %i.q, align 8, !tbaa !59
  call fastcc void @credential_format(ptr noundef nonnull %1, ptr noundef %3)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = call ptr @url_normalize(ptr noundef %i.s, ptr noundef nonnull %i.t) #18
  call void @repo_config(ptr noundef %0, ptr noundef nonnull @urlmatch_config_entry, ptr noundef nonnull %2) #18
  call void @string_list_clear(ptr noundef nonnull %2, i32 noundef 1) #18
  call void @free(ptr noundef %i.u) #18
  call void @urlmatch_config_release(ptr noundef nonnull %2) #18
  call void @strbuf_release(ptr noundef nonnull %3) #18
  %i.v = load i16, ptr %i.h, align 8              ; 2 uses
  %i.w = or i16 %i.v, 8
  store i16 %i.w, ptr %i.h, align 8
  %i.x = and i16 %i.v, 64
  %.not14 = icmp eq i16 %i.x, 0
  br i1 %.not14, label %bb.g, label %proto_is_http.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %proto_is_http.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(6) @.str.42) #19
  %.not4.i = icmp eq i32 %i.z, 0
  br i1 %.not4.i, label %proto_is_http.exit.thread18, label %proto_is_http.exit

proto_is_http.exit:                               ; preds = %bb.h
  %i.aa = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(5) @.str.43) #19
  %.not5.i.not = icmp eq i32 %i.aa, 0
  br i1 %.not5.i.not, label %proto_is_http.exit.thread18, label %proto_is_http.exit.thread

proto_is_http.exit.thread18:                      ; preds = %bb.h, %proto_is_http.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  call void @free(ptr noundef %i.ac) #18
  store ptr null, ptr %i.ab, align 8, !tbaa !26
  br label %proto_is_http.exit.thread

proto_is_http.exit.thread:                        ; preds = %bb.g, %bb.f, %proto_is_http.exit, %proto_is_http.exit.thread18, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @credential_do(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.child_process, align 8      ; 10 uses
  %4 = alloca %struct.strbuf, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.credential_ask_one.prompt, i64 24, i1 false)
  %i.a = load i8, ptr %1, align 1, !tbaa !33
  switch i8 %i.a, label %bb.d [
    i8 33, label %bb.b
    i8 47, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #19
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef %i.c) #18
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef %i.d) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.44, ptr noundef nonnull %1) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.45, ptr noundef %2) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.21) #19
  %.not8.not = icmp eq i32 %i.g, 0                ; 3 uses
  %5 = zext i1 %.not8.not to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) @__const.run_credential_helper.helper, i64 136, i1 false)
  %i.h = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef %i.f) #18 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %i.k = or i8 %i.j, 32
  store i8 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store i32 -1, ptr %i.l, align 8, !tbaa !62
  br i1 %.not8.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 -1, ptr %i.m, align 4, !tbaa !63
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = or i8 %i.j, 34
  store i8 %i.n, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = call i32 @start_command(ptr noundef nonnull %3) #18
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %run_credential_helper.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %i.l, align 8, !tbaa !62
  %i.r = call ptr @xfdopen(i32 noundef %i.q, ptr noundef nonnull @.str.46) #18 ; 2 uses
  %i.s = call i32 @sigchain_push(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #18 ; 0 uses
  %6 = xor i32 %5, 3
  call void @credential_write(ptr noundef %0, ptr noundef %i.r, i32 noundef %6)
  %i.t = call i32 @fclose(ptr noundef %i.r)       ; 0 uses
  %i.u = call i32 @sigchain_pop(i32 noundef 13) #18 ; 0 uses
  br i1 %.not8.not, label %bb.j, label %run_credential_helper.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.w = load i32, ptr %i.v, align 4, !tbaa !63
  %i.x = call ptr @xfdopen(i32 noundef %i.w, ptr noundef nonnull @.str.47) #18 ; 2 uses
  %i.y = call i32 @credential_read(ptr noundef %0, ptr noundef %i.x, i32 noundef 2) ; 0 uses
  %i.z = call i32 @fclose(ptr noundef %i.x)       ; 0 uses
  br label %run_credential_helper.exit.sink.split

run_credential_helper.exit.sink.split:            ; preds = %bb.j, %bb.i
  %i.aa = call i32 @finish_command(ptr noundef nonnull %3) #18 ; 0 uses
  br label %run_credential_helper.exit

run_credential_helper.exit:                       ; preds = %run_credential_helper.exit.sink.split, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @strbuf_release(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @credential_approve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %2 = alloca %struct.timeval, align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 2
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.m = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #18 ; 0 uses
  %i.n = load i64, ptr %2, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  tail call void @strvec_clear(ptr noundef nonnull %i.p) #18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @credential_apply_config(ptr noundef %0, ptr noundef nonnull %1)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  %.not19 = icmp eq i64 %i.s, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  tail call fastcc void @credential_do(ptr noundef nonnull %1, ptr noundef %i.v, ptr noundef nonnull @.str.24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !38
  %i.x = icmp ugt i64 %i.w, %indvars.iv.next
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.y = load i16, ptr %i.b, align 8
  %i.z = or i16 %i.y, 2
  store i16 %i.z, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @credential_reject(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  tail call void @strvec_clear(ptr noundef nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 1 dereferenceable(24) %i.c, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @credential_apply_config(ptr noundef %0, ptr noundef %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  tail call fastcc void @credential_do(ptr noundef nonnull %1, ptr noundef %i.h, ptr noundef nonnull @.str.25)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !38
  %i.j = icmp ugt i64 %i.i, %indvars.iv.next
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.l) #18
  store ptr null, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.n) #18
  store ptr null, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.p) #18
  store ptr null, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.r) #18
  store ptr null, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 -1, ptr %i.s, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = and i16 %i.u, -3
  store i16 %i.v, ptr %i.t, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @credential_from_url_gently(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @credential_from_url_1(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @credential_from_url_1(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  tail call void @credential_clear(ptr noundef %0)
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.58) #19 ; 5 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not91 = icmp eq ptr %i.a, null
  %i.b = icmp eq ptr %i.a, %1
  %or.cond = or i1 %.not91, %i.b
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not92 = icmp eq i32 %3, 0
  br i1 %.not92, label %bb.d, label %check_url_component.exit141

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @git_gettext_enabled, align 4, !tbaa !34
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.e ], [ @.str.59, %bb.d ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef nonnull %1) #18
  br label %check_url_component.exit141

bb.f:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq ptr %i.a, null                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.f = select i1 %.not93, ptr %1, ptr %i.e      ; 8 uses
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 64) #19 ; 7 uses
end_hunk_0
