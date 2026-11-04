Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/http?download=true
inline.NumInlined: 80
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Curl_http_perform_pollset:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load i8, ptr %i.c, align 8, !tbaa !115
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.g = load i32, ptr %i.f, align 8, !tbaa !111
  %i.h = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) #9 ; 2 uses
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.i = tail call zeroext i1 @Curl_req_want_send(ptr noundef nonnull %0) #9
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = tail call ptr @Curl_creader_get_by_type(ptr noundef nonnull %0, ptr noundef nonnull @cr_exp100) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %http_exp100_is_waiting.exit.thread, label %http_exp100_is_waiting.exit

http_exp100_is_waiting.exit:                      ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !120
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.d, label %http_exp100_is_waiting.exit.thread

http_exp100_is_waiting.exit.thread:               ; preds = %bb.c, %http_exp100_is_waiting.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.q = load i32, ptr %i.p, align 8, !tbaa !111
  %i.r = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.q, i32 noundef 2, i32 noundef 0) #9
  br label %bb.d

bb.d:                                             ; preds = %http_exp100_is_waiting.exit.thread, %http_exp100_is_waiting.exit, %.thread, %bb.b
  %.1 = phi i32 [ %i.h, %bb.b ], [ 0, %http_exp100_is_waiting.exit ], [ %i.r, %http_exp100_is_waiting.exit.thread ], [ 0, %.thread ]
  ret i32 %.1
}

declare zeroext i1 @Curl_req_want_send(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @Curl_http_done(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3060 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -3
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3076 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -3
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 4 uses
  %i.j = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.i) #9
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.i) #9
  %i.l = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.i) #9
  %i.m = tail call fastcc i32 @http_write_header(ptr noundef nonnull %0, ptr noundef %i.k, i64 noundef %i.l) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @curlx_dyn_reset(ptr noundef nonnull %i.i) #9
  %.not19 = icmp ne i32 %1, 0
  %brmerge = or i1 %.not19, %2
  br i1 %brmerge, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 256
  %.not20 = icmp eq i32 %i.p, 0
  br i1 %.not20, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.r = load i64, ptr %i.q, align 1
  %i.s = and i64 %i.r, 1
  %.not21 = icmp eq i64 %i.s, 0
  br i1 %.not21, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load i64, ptr %i.t, align 8, !tbaa !181
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = load i32, ptr %i.v, align 8, !tbaa !121
  %i.x = zext i32 %i.w to i64
  %i.y = add nsw i64 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !122
  %i.ab = zext i32 %i.aa to i64
  %.not22 = icmp sgt i64 %i.y, %i.ab
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #9
  tail call void @Curl_conncontrol(ptr noundef nonnull %i.b, i32 noundef 2) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ 52, %bb.g ], [ %1, %bb.c ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i64 @curlx_dyn_len(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @http_write_header(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @Curl_debug(ptr noundef %0, i32 noundef 1, ptr noundef %1, i64 noundef %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %.off = add i32 %i.b, -100
  %i.c = icmp ult i32 %.off, 100
  %i.d = select i1 %i.c, i32 36, i32 4
  %i.e = tail call i32 @Curl_client_write(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i64 noundef %2) #9 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %2, 307200
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %2 to i32              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4720 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !123
  %i.j = add i32 %i.i, %i.g                       ; 3 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !124
  %i.m = add i32 %i.l, %i.g                       ; 3 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !124
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !121
  %i.p = add i32 %i.o, %i.g
  store i32 %i.p, ptr %i.n, align 8, !tbaa !121
  %i.q = icmp ugt i32 %i.m, 307200
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = zext i32 %i.m to i64
  br label %Curl_bump_headersize.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.j, 6144000
  %i.t = zext i32 %i.j to i64
  br i1 %i.s, label %Curl_bump_headersize.exit, label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.v = load i32, ptr %i.u, align 4, !tbaa !124
  %i.w = zext i32 %i.v to i64
  %i.x = add i64 %2, %i.w                         ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.g, label %Curl_bump_headersize.exit

Curl_bump_headersize.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %.031.i = phi i32 [ 307200, %bb.f ], [ 307200, %bb.d ], [ 6144000, %bb.e ]
  %.02130.i = phi i64 [ %i.x, %bb.f ], [ %i.r, %bb.d ], [ %i.t, %bb.e ]
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i64 noundef %.02130.i, i32 noundef %.031.i) #9
  br label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = load i32, ptr %i.a, align 8, !tbaa !94
  %i.z = add i32 %i.y, -100
  %or.cond = icmp ult i32 %i.z, 100
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !121
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !122
  br label %bb.j

bb.j:                                             ; preds = %Curl_bump_headersize.exit, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ %i.e, %bb.a ], [ 56, %Curl_bump_headersize.exit ]
  ret i32 %.0
}

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #4

declare void @curlx_dyn_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @Curl_add_custom_headers(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca [2 x ptr], align 16                 ; 7 uses
  %5 = alloca %struct.Curl_str, align 8           ; 16 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %6 = alloca %struct.Curl_str, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  br i1 %1, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  store ptr %i.i, ptr %4, align 16, !tbaa !81
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.k = load i64, ptr %i.j, align 1
  %i.l = and i64 %i.k, 64
  %.not44 = icmp eq i64 %i.l, 0
  br i1 %.not44, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !184
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %7, align 8, !tbaa !81
  br label %bb.g

.thread:                                          ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.p = load i64, ptr %i.o, align 1
  %i.q = and i64 %i.p, 64
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !184
  store ptr %i.s, ptr %4, align 16, !tbaa !81
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125
  store ptr %i.u, ptr %4, align 16, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f, %bb.c, %bb.d
  %.040 = phi i64 [ 1, %bb.f ], [ 1, %bb.e ], [ 2, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4627 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.aa = icmp sgt i32 %2, 19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.04179 = load ptr, ptr %8, align 8, !tbaa !81  ; 2 uses
  %.not4580 = icmp eq ptr %.04179, null
  br i1 %.not4580, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.thread66
  %.04181 = phi ptr [ %.041, %.thread66 ], [ %.04179, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ab = load ptr, ptr %.04181, align 8, !tbaa !83 ; 3 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !86
  %i.ac = call i32 @curlx_str_until(ptr noundef nonnull %i.a, ptr noundef nonnull %5, i64 noundef 307200, i8 noundef signext 59) #9
  %.not46 = icmp eq i32 %i.ac, 0
  br i1 %.not46, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph
  %i.ad = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 59) #9
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ae = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 0) #9
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %5, align 8, !tbaa !88
  %i.ag = load i64, ptr %i.v, align 8, !tbaa !89
  %i.ah = call ptr @memchr(ptr noundef %i.af, i32 noundef 58, i64 noundef %i.ag) #10
  %.not49 = icmp eq ptr %i.ah, null
  br i1 %.not49, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !86
  %i.ai = call i32 @curlx_str_until(ptr noundef nonnull %i.a, ptr noundef nonnull %5, i64 noundef 307200, i8 noundef signext 58) #9
  %.not50 = icmp eq i32 %i.ai, 0
  br i1 %.not50, label %bb.m, label %.thread66

bb.m:                                             ; preds = %bb.l
  %i.aj = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 58) #9
  %.not51 = icmp eq i32 %i.aj, 0
  br i1 %.not51, label %bb.n, label %.thread66

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ak = call i32 @curlx_str_untilnl(ptr noundef nonnull %i.a, ptr noundef nonnull %6, i64 noundef 307200) #9 ; 0 uses
  call void @curlx_str_trimblanks(ptr noundef nonnull %6) #9
  %i.al = load i64, ptr %i.w, align 8, !tbaa !89
  %.not52.not = icmp eq i64 %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br i1 %.not52.not, label %.thread66, label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %.036 = phi i1 [ false, %bb.n ], [ true, %bb.k ]
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !126
  %.not53 = icmp eq ptr %i.am, null
  br i1 %.not53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.11) #9
  %.not54 = icmp eq i32 %i.an, 0
  br i1 %.not54, label %bb.q, label %.thread66

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = load i8, ptr %i.y, align 1, !tbaa !108  ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 2
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.12) #9
  %.not55 = icmp eq i32 %i.aq, 0
  br i1 %.not55, label %thread-pre-split, label %.thread66

thread-pre-split:                                 ; preds = %bb.r
  %.pr = load i8, ptr %i.y, align 1, !tbaa !108
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split, %bb.q
  %i.ar = phi i8 [ %.pr, %thread-pre-split ], [ %i.ao, %bb.q ]
  %i.as = icmp eq i8 %i.ar, 3
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.12) #9
  %.not56 = icmp eq i32 %i.at, 0
  br i1 %.not56, label %bb.u, label %.thread66

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.au = load i32, ptr %i.z, align 1
  %i.av = and i32 %i.au, 131072
  %.not57 = icmp eq i32 %i.av, 0
  br i1 %.not57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #9
  %.not58 = icmp eq i32 %i.aw, 0
  br i1 %.not58, label %bb.w, label %.thread66

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ax = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.14) #9
  %.not59 = icmp eq i32 %i.ax, 0
  br i1 %.not59, label %bb.x, label %.thread66

bb.x:                                             ; preds = %bb.w
  br i1 %i.aa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ay = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.15) #9
  %.not60 = icmp eq i32 %i.ay, 0
  br i1 %.not60, label %bb.z, label %.thread66

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.az = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #9
  %.not61 = icmp eq i32 %i.az, 0
  br i1 %.not61, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ba = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.17) #9
  %.not62 = icmp eq i32 %i.ba, 0
  br i1 %.not62, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bb = call zeroext i1 @Curl_auth_allowed_to_host(ptr noundef nonnull %0) #9
  br i1 %i.bb, label %bb.ac, label %.thread66

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %.036, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bc = load i64, ptr %i.v, align 8, !tbaa !89
  %i.bd = trunc i64 %i.bc to i32
  %i.be = load ptr, ptr %5, align 8, !tbaa !88
  %i.bf = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %i.bd, ptr noundef %i.be) #9
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bg = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef %i.ab) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.037 = phi i32 [ %i.bf, %bb.ad ], [ %i.bg, %bb.ae ] ; 2 uses
  %.not63 = icmp eq i32 %.037, 0
  br i1 %.not63, label %.thread66, label %.thread70

.thread70:                                        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.loopexit

.thread66:                                        ; preds = %bb.n, %bb.af, %bb.m, %bb.l, %bb.p, %bb.r, %bb.t, %bb.v, %bb.w, %bb.y, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.bh = getelementptr inbounds nuw i8, ptr %.04181, i64 8
  %.041 = load ptr, ptr %i.bh, align 8, !tbaa !81 ; 2 uses
  %.not45 = icmp eq ptr %.041, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph, !llvm.loop !182

._crit_edge:                                      ; preds = %.thread66, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.040
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !183

.loopexit:                                        ; preds = %._crit_edge, %.thread70
  %.3 = phi i32 [ %.037, %.thread70 ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @curlx_str_casecompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @curlx_dyn_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @Curl_add_timecondition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 10 uses
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2181 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !127
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.f = load i64, ptr %i.e, align 8, !tbaa !185
  %i.g = call i32 @curlx_gmtime(i64 noundef %i.f, ptr noundef nonnull %2) #9 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #9
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.b, align 1, !tbaa !127
  %switch.tableidx = add i8 %i.h, -1              ; 3 uses
  %i.i = icmp ult i8 %switch.tableidx, 3
  br i1 %i.i, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.j = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_add_timecondition, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table.Curl_add_timecondition.6, i64 %i.k
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext = zext i8 %switch.load28 to i64
  %i.l = call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull %switch.load, i64 noundef %switch.ext) #9
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %switch.lookup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !187  ; 2 uses
  %.not25 = icmp eq i32 %i.n, 0
  %i.o = add nsw i32 %i.n, -1
  %narrow = select i1 %.not25, i32 6, i32 %i.o
  %i.p = sext i32 %narrow to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @Curl_wkday, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !188
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !189
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @Curl_month, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !190
  %i.ab = add nsw i32 %i.aa, 1900
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !191
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !192
  %i.ag = load i32, ptr %2, align 8, !tbaa !193
  %i.ah = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.24, ptr noundef nonnull %switch.load, ptr noundef %i.r, i32 noundef %i.t, ptr noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ag) #9 ; 0 uses
  %i.ai = call i32 @curlx_dyn_add(ptr noundef %1, ptr noundef nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %switch.lookup, %bb.a, %bb.e, %bb.c
  %.021 = phi i32 [ %i.ai, %bb.e ], [ %i.g, %bb.c ], [ 0, %bb.a ], [ 43, %bb.d ], [ 0, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.021
}

declare i32 @curlx_gmtime(i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Curl_checkheaders(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @curlx_dyn_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Curl_http_method(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4627
  %i.b = load i8, ptr %i.a, align 1, !tbaa !108   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 728
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  %i.i = and i64 %i.h, 3221225472
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %i.h, 7
  %.not14 = icmp eq i64 %i.j, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 32768
  %.not15 = icmp eq i32 %i.m, 0
  %spec.select = select i1 %.not15, i8 %i.b, i8 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.012.shrunk = phi i8 [ %i.b, %bb.b ], [ 0, %bb.a ], [ %spec.select, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  %.not16 = icmp eq ptr %i.o, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 131072
  %.not17 = icmp eq i32 %i.r, 0
  br i1 %.not17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.t = load i32, ptr %i.s, align 1
  %i.u = and i32 %i.t, 65536
  %.not18 = icmp eq i32 %i.u, 0
  br i1 %.not18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %switch.tableidx = add i8 %.012.shrunk, -1      ; 2 uses
  %i.v = icmp ult i8 %switch.tableidx, 5
  br i1 %i.v, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g
  %i.w = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_http, i64 %i.w
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup, %bb.f, %bb.e
  %.0 = phi ptr [ %i.o, %bb.e ], [ @.str.28, %bb.g ], [ @.str.25, %bb.f ], [ %switch.load, %switch.lookup ]
  %.012 = zext i8 %.012.shrunk to i32
  store ptr %.0, ptr %1, align 8, !tbaa !86
  store i32 %.012, ptr %2, align 4, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Curl_http(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %2 = alloca %struct.Curl_str, align 8           ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.Curl_str, align 8           ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.Curl_llist, align 8         ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.dynbuf, align 8             ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i8 1, ptr %1, align 1, !tbaa !133
  call void @curlx_dyn_init(ptr noundef nonnull %5, i64 noundef 1048576) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2816
  call void @curlx_dyn_reset(ptr noundef nonnull %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 15 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, -2097153
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 720 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %http_check_new_conn.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.q = call ptr @Curl_conn_get_alpn_negotiated(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #9 ; 5 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %.critedge.i, label %sub_0.i

sub_0.i:                                          ; preds = %bb.b
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
end_hunk_0
