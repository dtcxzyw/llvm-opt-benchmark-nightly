Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/hsts?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0_@Curl_hsts_save:bb.a
  %i.cm = load i32, ptr %4, align 8, !tbaa !100
  %i.cn = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.bl, i64 noundef 18, ptr noundef nonnull @.str.9, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cm) #9 ; 0 uses
  br label %hsts_push.exit

bb.u:                                             ; preds = %bb.r
  call void @curlx_strcopy(ptr noundef nonnull %i.bl, i64 noundef 18, ptr noundef nonnull @.str.8, i64 noundef 9) #9
  br label %hsts_push.exit

hsts_push.exit:                                   ; preds = %bb.t, %bb.u
  %i.co = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.cp = load ptr, ptr %i.br, align 8, !tbaa !105
  %i.cq = call i32 %i.co(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %i.cp) #9, !inline_history !90 ; 2 uses
  %.not73 = icmp eq i32 %i.cq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %.not73, label %bb.v, label %.thread.loopexit.split.loop.exit77

bb.v:                                             ; preds = %hsts_push.exit
  %i.cr = load i64, ptr %6, align 8, !tbaa !104
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %6, align 8, !tbaa !104
  %.not62 = icmp eq ptr %i.bt, null
  br i1 %.not62, label %.thread, label %bb.r, !llvm.loop !91

.thread.loopexit.split.loop.exit77:               ; preds = %hsts_push.exit
  %i.ct = icmp eq i32 %i.cq, 2
  %i.cu = select i1 %i.ct, i32 43, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.v, %.thread.loopexit.split.loop.exit77, %bb.q, %hsts_push.exit.thread
  %.6 = phi i32 [ %i.ce, %hsts_push.exit.thread ], [ %i.cu, %.thread.loopexit.split.loop.exit77 ], [ %.4, %bb.q ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %.thread, %bb.a
  %.045 = phi i32 [ 0, %bb.a ], [ %.6, %.thread ], [ %.4, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.045
}

declare i32 @Curl_fopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare i64 @Curl_llist_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_hsts_loadfile(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.Curl_str, align 8           ; 5 uses
  %4 = alloca %struct.Curl_str, align 8           ; 5 uses
  %5 = alloca %struct.stat, align 8               ; 4 uses
  %6 = alloca %struct.dynbuf, align 8             ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  tail call void %i.d(ptr noundef %i.f) #9, !inline_history !106
  %i.g = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !9
  %i.h = tail call ptr %i.g(ptr noundef %2) #9, !inline_history !106 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %hsts_load.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.10) ; 4 uses
  %.not15.i = icmp eq ptr %i.i, null
  br i1 %.not15.i, label %hsts_load.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.j = tail call i32 @fileno(ptr noundef nonnull %i.i) #9
  %i.k = call i32 @fstat(i32 noundef %i.j, ptr noundef nonnull %5) #9
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !110
  %i.o = and i32 %i.n, 61440
  %i.p = icmp eq i32 %i.o, 16384
  br i1 %i.p, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !112
  call void @curlx_dyn_init(ptr noundef nonnull %6, i64 noundef 4095) #9
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %bb.e
  %i.s = call i32 @Curl_get_line(ptr noundef nonnull %6, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not16.not.i = icmp eq i32 %i.s, 0
  br i1 %.not16.not.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.t = call ptr @curlx_dyn_ptr(ptr noundef nonnull %6) #9
  store ptr %i.t, ptr %i.c, align 8, !tbaa !18
  call void @curlx_str_passblanks(ptr noundef nonnull %i.c) #9
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #10
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.u, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.z = call i32 @curlx_str_word(ptr noundef nonnull %i.a, ptr noundef nonnull %3, i64 noundef 2048) #9
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.j, label %hsts_add.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = call i32 @curlx_str_singlespace(ptr noundef nonnull %i.a) #9
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %bb.k, label %hsts_add.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ab = call i32 @curlx_str_quotedword(ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef 17) #9
  %.not2.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not2.i.i, label %bb.l, label %hsts_add.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ac = call i32 @curlx_str_newline(ptr noundef nonnull %i.a) #9
  %.not3.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not3.i.i, label %bb.m, label %hsts_add.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %3, align 8, !tbaa !114
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !115
  %i.af = load ptr, ptr %4, align 8, !tbaa !114
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !115
  %i.ah = call fastcc i32 @hsts_add_host_expire(ptr noundef %1, ptr noundef %i.ad, i64 noundef %i.ae, ptr noundef %i.af, i64 noundef %i.ag, i1 noundef zeroext false) ; 0 uses
  br label %hsts_add.exit.i

hsts_add.exit.i:                                  ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %hsts_add.exit.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.ai = load i8, ptr %i.b, align 1, !range !116
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.thread.i, label %bb.f, !llvm.loop !107

.thread.i:                                        ; preds = %bb.n, %bb.f
  call void @curlx_dyn_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.o

bb.o:                                             ; preds = %.thread.i, %bb.d
  %.0.i = phi i32 [ %i.s, %.thread.i ], [ 0, %bb.d ]
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %hsts_load.exit

hsts_load.exit:                                   ; preds = %bb.a, %bb.b, %bb.o
  %.013.i = phi i32 [ 27, %bb.a ], [ %.0.i, %bb.o ], [ 0, %bb.b ]
  ret i32 %.013.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 44) i32 @Curl_hsts_loadcb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2049 x i8], align 16             ; 6 uses
  %2 = alloca %struct.curl_hstsentry, align 8     ; 10 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %hsts_pull.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %hsts_pull.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2048
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.preheader.i
  %i.j = phi ptr [ %i.c, %.preheader.i ], [ %.pre.i, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %i.a, ptr %2, align 8, !tbaa !81
  store i64 2048, ptr %i.d, align 8, !tbaa !82
  %i.k = load i8, ptr %i.e, align 8
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.e, align 8
  store i8 0, ptr %i.f, align 1, !tbaa !24
  store i8 0, ptr %i.g, align 2, !tbaa !24
  store i8 0, ptr %i.a, align 16, !tbaa !24
  store i8 0, ptr %i.h, align 16, !tbaa !24
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.n = call i32 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.m) #9, !inline_history !117
  switch i32 %i.n, label %.thread47.sink.split.i.loopexit [
    i32 0, label %bb.d
    i32 2, label %.thread47.sink.split.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %2, align 8, !tbaa !81     ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = icmp eq i8 %i.p, 0
  %i.r = load i8, ptr %i.g, align 2
  %i.s = icmp ne i8 %i.r, 0
  %or.cond.i = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond.i, label %.thread47.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 2048
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %.not26.i = icmp eq i8 %i.u, 0
  br i1 %.not26.i, label %bb.f, label %.thread47.sink.split.i

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.f, align 1, !tbaa !24
  %.not27.i = icmp eq i8 %i.v, 0
  %spec.store.select.i = select i1 %.not27.i, ptr @.str.8, ptr %i.f ; 2 uses
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #10
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select.i) #10
  %i.y = load i8, ptr %i.e, align 8
  %i.z = trunc i8 %i.y to i1
  %i.aa = call fastcc i32 @hsts_add_host_expire(ptr noundef nonnull %1, ptr noundef nonnull %i.o, i64 noundef %i.w, ptr noundef nonnull %spec.store.select.i, i64 noundef %i.x, i1 noundef zeroext %i.z) ; 2 uses
  %.not28.i = icmp eq i32 %i.aa, 0
  br i1 %.not28.i, label %bb.g, label %.thread47.sink.split.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !118
  br label %bb.c

.thread47.sink.split.i.loopexit:                  ; preds = %bb.c
  br label %.thread47.sink.split.i

.thread47.sink.split.i:                           ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.thread47.sink.split.i.loopexit
  %.4.ph.i = phi i32 [ 42, %bb.c ], [ 43, %bb.e ], [ 43, %bb.d ], [ %i.aa, %bb.f ], [ 0, %.thread47.sink.split.i.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %hsts_pull.exit

hsts_pull.exit:                                   ; preds = %.thread47.sink.split.i, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.4.ph.i, %.thread47.sink.split.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @Curl_hsts_loadfiles(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 7, i32 noundef 2) #9 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2208
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.016 = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = load ptr, ptr %.016, align 8, !tbaa !124
  %i.g = tail call i32 @Curl_hsts_loadfile(ptr nonnull poison, ptr noundef %i.e, ptr noundef %i.f) ; 2 uses
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.016, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125  ; 2 uses
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.e, label %bb.c, !llvm.loop !120

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = tail call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 7) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.2 = phi i32 [ %i.g, %bb.e ], [ 0, %bb.a ]
  ret i32 %.2
}

declare i32 @Curl_share_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_share_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_hsts_applies(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #10
  %i.d = tail call ptr @hsts_check(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.c, i1 noundef zeroext true)
  %i.e = icmp ne ptr %i.d, null
  ret i1 %i.e
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @Curl_llist_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @curlx_gmtime(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @curl_mfprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @curlx_strcopy(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #4

declare void @curlx_dyn_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_get_line(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #2

declare void @curlx_dyn_free(ptr noundef) local_unnamed_addr #2

declare i32 @curlx_str_word(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @curlx_str_singlespace(ptr noundef) local_unnamed_addr #2

declare i32 @curlx_str_quotedword(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @curlx_str_newline(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 44) i32 @hsts_add_host_expire(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [18 x i8], align 16               ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i64 0, ptr %i.d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.3) #9 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.f = call i32 @curlx_str_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 9223372036854775807) #9
  %.not1.i = icmp eq i32 %i.f, 0
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !19
  %i.g = load i64, ptr @deltatime, align 8
  %i.h = select i1 %.not1.i, i64 %i.g, i64 0
  %i.i = add nsw i64 %i.h, %.pre.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %hsts_debugtime.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @time(ptr noundef null) #9
  br label %hsts_debugtime.exit

hsts_debugtime.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.k = icmp ugt i64 %4, 17
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %hsts_debugtime.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %3, i64 %4, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %4
  store i8 0, ptr %i.l, align 1, !tbaa !24
  %i.m = load i64, ptr %i.c, align 16
  %i.n = xor i64 %i.m, 7310584013770223221
  %i.o = getelementptr i8, ptr %i.c, i64 8
  %i.p = load i16, ptr %i.o, align 8
  %i.q = zext i16 %i.p to i64
  %i.r = xor i64 %i.q, 100
  %i.s = or i64 %i.n, %i.r
end_hunk_0
