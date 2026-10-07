Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/request?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@Curl_req_soft_reset:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  br i1 %.not37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1228
  %i.t = load i32, ptr %i.s, align 4, !tbaa !87
  %i.u = zext i32 %i.t to i64
  tail call void @Curl_bufq_init2(ptr noundef nonnull %i.r, i64 noundef %i.u, i64 noundef 1, i32 noundef 1) #6
  %i.v = load i32, ptr %i.a, align 1
  %i.w = or i32 %i.v, 262144
  store i32 %i.w, ptr %i.a, align 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @Curl_bufq_reset(ptr noundef nonnull %i.r) #6
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1228 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !88
  %.not38 = icmp eq i64 %i.ab, %i.z
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @Curl_bufq_free(ptr noundef nonnull %i.r) #6
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !87
  %i.ad = zext i32 %i.ac to i64
  tail call void @Curl_bufq_init2(ptr noundef nonnull %i.r, i64 noundef %i.ad, i64 noundef 1, i32 noundef 1) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  ret i32 %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @Curl_client_start(ptr noundef) local_unnamed_addr #4

declare void @Curl_bufq_init2(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @Curl_bufq_reset(ptr noundef) local_unnamed_addr #4

declare void @Curl_bufq_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define i32 @Curl_req_start(ptr noundef initializes((16, 32), (40, 72), (76, 78), (168, 176)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call ptr @Curl_pgrs_now(ptr noundef %1) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !90
  %i.c = tail call i32 @Curl_req_soft_reset(ptr noundef %0, ptr noundef %1)
  ret i32 %i.c
}

declare ptr @Curl_pgrs_now(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define noundef i32 @Curl_req_done(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @req_flush(ptr noundef %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @Curl_client_reset(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @req_flush(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %.not41 = icmp eq ptr %i.h, null
  br i1 %.not41, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.j = tail call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.i) #6
  br i1 %i.j, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.k = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  br i1 %i.k, label %.lr.ph.i, label %req_send_buffer_flush.exit.thread59

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.m = load i64, ptr %i.l, align 8, !tbaa !76
  %i.n = load i64, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %..i = call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.p = call fastcc i32 @xfer_send(ptr noundef nonnull %0, ptr noundef %i.o, i64 noundef %i.n, i64 noundef %..i, ptr noundef %i.c) ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %req_send_buffer_flush.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.c, align 8, !tbaa !74
  call void @Curl_bufq_skip(ptr noundef nonnull %i.i, i64 noundef %i.q) #6
  %.not16.i = icmp eq i64 %..i, 0
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call i64 @llvm.umin.i64(i64 %..i, i64 %.pre.i)
  %i.s = load i64, ptr %i.l, align 8, !tbaa !76
  %i.t = sub i64 %i.s, %i.r
  store i64 %i.t, ptr %i.l, align 8, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = load i64, ptr %i.b, align 8, !tbaa !74
  %i.v = icmp ult i64 %.pre.i, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br i1 %i.v, label %req_send_buffer_flush.exit.thread59, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  br i1 %i.w, label %bb.e, label %req_send_buffer_flush.exit.thread59

req_send_buffer_flush.exit:                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.x

req_send_buffer_flush.exit.thread59:              ; preds = %bb.i, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.x = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.i) #6
  br i1 %i.x, label %bb.l, label %bb.x

bb.j:                                             ; preds = %bb.c
  %i.y = tail call zeroext i1 @Curl_xfer_needs_flush(ptr noundef nonnull %0) #6
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = tail call i32 @Curl_xfer_flush(ptr noundef nonnull %0) #6
  br label %bb.x

bb.l:                                             ; preds = %bb.j, %req_send_buffer_flush.exit.thread59
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %i.ac = and i32 %i.ab, 96
  %or.cond = icmp eq i32 %i.ac, 32
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ad = call fastcc i32 @xfer_send(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 0, i64 noundef 0, ptr noundef %i.e) ; 2 uses
  %.not45 = icmp eq i32 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br i1 %.not45, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.m
  %.pre = load i32, ptr %i.aa, align 1
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %i.ae = phi i32 [ %.pre, %._crit_edge ], [ %i.ab, %bb.l ] ; 2 uses
  %i.af = and i32 %i.ae, 352
  %or.cond56.not = icmp eq i32 %i.af, 96
  br i1 %or.cond56.not, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.ag = and i32 %i.ae, 524288
  %.not49 = icmp eq i32 %i.ag, 0
  br i1 %.not49, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.ah = call i32 @Curl_xfer_send_shutdown(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #6 ; 3 uses
  %.not50 = icmp eq i32 %i.ah, 0
  br i1 %.not50, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = load i32, ptr %i.aa, align 1
  %i.aj = and i32 %i.ai, 1048576
  %.not51 = icmp eq i32 %i.aj, 0
  br i1 %.not51, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = and i64 %i.al, 536870912
  %.not52 = icmp eq i64 %i.am, 0
  br i1 %.not52, label %.thread77, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !77 ; 2 uses
  %.not53 = icmp eq ptr %i.ao, null
  br i1 %.not53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !79
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %.thread77

bb.u:                                             ; preds = %bb.t, %bb.s
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.ah) #6
  br label %.thread77

.thread77:                                        ; preds = %bb.r, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %.pre71 = load i8, ptr %i.f, align 1, !range !80
  %1 = trunc nuw i8 %.pre71 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br i1 %1, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread77, %bb.v, %bb.o
  %i.as = call fastcc i32 @req_set_upload_done(ptr noundef nonnull %0)
  br label %bb.x

bb.x:                                             ; preds = %.thread, %req_send_buffer_flush.exit, %bb.n, %req_send_buffer_flush.exit.thread59, %bb.a, %bb.b, %bb.m, %bb.v, %bb.w, %bb.k
  %.3 = phi i32 [ %i.z, %bb.k ], [ 81, %req_send_buffer_flush.exit.thread59 ], [ %i.as, %bb.w ], [ 81, %bb.v ], [ %i.ad, %bb.m ], [ 2, %bb.a ], [ %i.p, %req_send_buffer_flush.exit ], [ 2, %bb.b ], [ 0, %bb.n ], [ %i.ah, %.thread ]
  ret i32 %.3
}

declare void @Curl_client_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Curl_req_hard_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.curltime, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  tail call void %i.a(ptr noundef %i.c) #6
  store ptr null, ptr %i.b, align 8, !tbaa !81
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  tail call void %i.d(ptr noundef %i.f) #6
  store ptr null, ptr %i.e, align 8, !tbaa !19
  %i.g = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  tail call void %i.g(ptr noundef %i.i) #6
  store ptr null, ptr %i.h, align 8, !tbaa !20
  %i.j = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93
  tail call void %i.j(ptr noundef %i.l) #6
  store ptr null, ptr %i.k, align 8, !tbaa !93
  tail call void @Curl_client_reset(ptr noundef %1) #6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 4 uses
  %i.n = load i32, ptr %i.m, align 1
  %i.o = and i32 %i.n, 262144
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @Curl_bufq_reset(ptr noundef nonnull %i.p) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @Curl_resolv_destroy_all(ptr noundef %1) #6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.r, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.t, align 8, !tbaa !95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.s, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.q, i8 0, i64 60, i1 false)
  %i.u = load i32, ptr %i.m, align 1              ; 2 uses
  %i.v = and i32 %i.u, -65534
  store i32 %i.v, ptr %i.m, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.x = load i64, ptr %i.w, align 1
  %i.y = trunc i64 %i.x to i32
  %i.z = lshr i32 %i.y, 12
  %i.aa = and i32 %i.z, 65536
  %i.ab = and i32 %i.u, -786430
  %i.ac = or disjoint i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.m, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2376
  call void @Curl_rlimit_block(ptr noundef nonnull %i.ad, i1 noundef zeroext false, ptr noundef nonnull %2) #6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2272
  call void @Curl_rlimit_block(ptr noundef nonnull %i.ae, i1 noundef zeroext false, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

declare void @Curl_resolv_destroy_all(ptr noundef) local_unnamed_addr #4

declare void @Curl_rlimit_block(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Curl_req_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  tail call void %i.a(ptr noundef %i.c) #6
  store ptr null, ptr %i.b, align 8, !tbaa !81
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  tail call void %i.d(ptr noundef %i.f) #6
  store ptr null, ptr %i.e, align 8, !tbaa !19
  %i.g = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  tail call void %i.g(ptr noundef %i.i) #6
  store ptr null, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.k = load i32, ptr %i.j, align 1
  %i.l = and i32 %i.k, 262144
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @Curl_bufq_free(ptr noundef nonnull %i.m) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @Curl_client_cleanup(ptr noundef %1) #6
  ret void
}

declare void @Curl_client_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @Curl_req_send(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %Curl_req_send_more.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %.not40 = icmp eq ptr %i.e, null
  br i1 %.not40, label %Curl_req_send_more.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i8 %2, ptr %i.f, align 4, !tbaa !96
  %i.g = tail call ptr @curlx_dyn_ptr(ptr noundef %1) #6 ; 4 uses
  %i.h = tail call i64 @curlx_dyn_len(ptr noundef %1) #6 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.j = tail call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.i) #6
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @Curl_creader_total_length(ptr noundef nonnull %0) #6
  %.not41 = icmp eq i64 %i.k, 0
  br i1 %.not41, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.m = load i64, ptr %i.l, align 8, !tbaa !97
  %.not42 = icmp ugt i64 %i.h, %i.m
  br i1 %.not42, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.o = load i32, ptr %i.n, align 1
  %i.p = or i32 %i.o, 32
  store i32 %i.p, ptr %i.n, align 1
  %i.q = call fastcc i32 @xfer_send(ptr noundef %0, ptr noundef %i.g, i64 noundef %i.h, i64 noundef %i.h, ptr noundef %i.c) ; 2 uses
  %.not43 = icmp eq i32 %i.q, 0
  br i1 %.not43, label %bb.g, label %Curl_req_send_more.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r
  %i.t = sub i64 %i.h, %i.r                       ; 2 uses
  %.not44 = icmp eq i64 %i.t, 0
  br i1 %.not44, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = call fastcc i32 @req_set_upload_done(ptr noundef nonnull %0)
  br label %Curl_req_send_more.exit

bb.i:                                             ; preds = %bb.d, %bb.c
  %.not46 = icmp eq i64 %i.h, 0
  br i1 %.not46, label %Curl_req_send_more.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.i
  %.052 = phi i64 [ %i.h, %bb.i ], [ %i.h, %bb.e ], [ %i.t, %bb.g ] ; 2 uses
  %.03151 = phi ptr [ %i.g, %bb.i ], [ %i.g, %bb.e ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.v = call i32 @Curl_bufq_cwrite(ptr noundef nonnull %i.i, ptr noundef %.03151, i64 noundef range(i64 1, 0) %.052, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.j, label %req_send_buffer_add.exit

req_send_buffer_add.exit:                         ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %Curl_req_send_more.exit

bb.j:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = add i64 %i.x, %.052
  store i64 %i.y, ptr %i.w, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = and i32 %i.aa, 544
  %or.cond.i = icmp eq i32 %i.ab, 0
  br i1 %or.cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ac = call zeroext i1 @Curl_xfer_send_is_paused(ptr noundef nonnull %0) #6
end_hunk_0
