Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/http?download=true
inline.NumInlined: 77
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Curl_http_perform_pollset:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = load i8, ptr %i.c, align 8, !tbaa !110
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.g = load i32, ptr %i.f, align 8, !tbaa !106
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !115
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.d, label %http_exp100_is_waiting.exit.thread

http_exp100_is_waiting.exit.thread:               ; preds = %bb.c, %http_exp100_is_waiting.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.q = load i32, ptr %i.p, align 8, !tbaa !106
  %i.r = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.q, i32 noundef 2, i32 noundef 0) #9
  br label %bb.d

bb.d:                                             ; preds = %http_exp100_is_waiting.exit.thread, %http_exp100_is_waiting.exit, %.thread, %bb.b
  %.1 = phi i32 [ %i.h, %bb.b ], [ 0, %http_exp100_is_waiting.exit ], [ %i.r, %http_exp100_is_waiting.exit.thread ], [ 0, %.thread ]
  ret i32 %.1
}

declare zeroext i1 @Curl_req_want_send(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Curl_http_done(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2876 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -3
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2892 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -3
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 4 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 16384
  %.not20 = icmp eq i64 %i.p, 0
  br i1 %.not20, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.r = load i32, ptr %i.q, align 1
  %i.s = and i32 %i.r, 1
  %.not21 = icmp eq i32 %i.s, 0
  br i1 %.not21, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load i64, ptr %i.t, align 8, !tbaa !171
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = load i32, ptr %i.v, align 8, !tbaa !116
  %i.x = zext i32 %i.w to i64
  %i.y = add nsw i64 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !117
  %i.ab = zext i32 %i.aa to i64
  %.not22 = icmp sgt i64 %i.y, %i.ab
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #9
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91
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
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4528 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !118
  %i.j = add i32 %i.i, %i.g                       ; 3 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !119
  %i.m = add i32 %i.l, %i.g                       ; 3 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !116
  %i.p = add i32 %i.o, %i.g
  store i32 %i.p, ptr %i.n, align 8, !tbaa !116
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
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.v = load i32, ptr %i.u, align 4, !tbaa !119
  %i.w = zext i32 %i.v to i64
  %i.x = add i64 %2, %i.w                         ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.g, label %Curl_bump_headersize.exit

Curl_bump_headersize.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %.031.i = phi i32 [ 307200, %bb.f ], [ 307200, %bb.d ], [ 6144000, %bb.e ]
  %.02130.i = phi i64 [ %i.x, %bb.f ], [ %i.r, %bb.d ], [ %i.t, %bb.e ]
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i64 noundef %.02130.i, i32 noundef %.031.i) #9
  br label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = load i32, ptr %i.a, align 8, !tbaa !91
  %i.z = add i32 %i.y, -100
  %or.cond = icmp ult i32 %i.z, 100
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !117
  br label %bb.j

bb.j:                                             ; preds = %Curl_bump_headersize.exit, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ %i.e, %bb.a ], [ 56, %Curl_bump_headersize.exit ]
  ret i32 %.0
}

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #4

declare void @curlx_dyn_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_add_custom_headers(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca [2 x ptr], align 16                 ; 7 uses
  %5 = alloca %struct.Curl_str, align 8           ; 16 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %6 = alloca %struct.Curl_str, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  br i1 %1, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 728
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 18
  %or.cond.not = icmp eq i64 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !120
  store ptr %i.h, ptr %4, align 16, !tbaa !81
  br i1 %or.cond.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.j = load i32, ptr %i.i, align 1
  %i.k = and i32 %i.j, 16
  %.not44 = icmp eq i32 %i.k, 0
  br i1 %.not44, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !174
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.m, ptr %7, align 8, !tbaa !81
  br label %.thread

.thread66:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.o = load i32, ptr %i.n, align 1
  %i.p = and i32 %i.o, 16
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread66
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174
  store ptr %i.r, ptr %4, align 16, !tbaa !81
  br label %.thread

bb.f:                                             ; preds = %.thread66
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120
  store ptr %i.t, ptr %4, align 16, !tbaa !81
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.f, %bb.c, %bb.d
  %.038 = phi i64 [ 1, %bb.f ], [ 1, %bb.e ], [ 2, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4435 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.z = icmp sgt i32 %2, 19
  br label %bb.g

bb.g:                                             ; preds = %.thread, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.thread ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.03982 = load ptr, ptr %8, align 8, !tbaa !81  ; 2 uses
  %.not4583 = icmp eq ptr %.03982, null
  br i1 %.not4583, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.thread69
  %.03984 = phi ptr [ %.039, %.thread69 ], [ %.03982, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.aa = load ptr, ptr %.03984, align 8, !tbaa !83 ; 3 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !86
  %i.ab = call i32 @curlx_str_until(ptr noundef nonnull %i.a, ptr noundef nonnull %5, i64 noundef 307200, i8 noundef signext 59) #9
  %.not46 = icmp eq i32 %i.ab, 0
  br i1 %.not46, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.ac = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 59) #9
  %.not47 = icmp eq i32 %i.ac, 0
  br i1 %.not47, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 0) #9
  %.not48 = icmp eq i32 %i.ad, 0
  br i1 %.not48, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %5, align 8, !tbaa !88
  %i.af = load i64, ptr %i.u, align 8, !tbaa !89
  %i.ag = call ptr @memchr(ptr noundef %i.ae, i32 noundef 58, i64 noundef %i.af) #10
  %.not49 = icmp eq ptr %i.ag, null
  br i1 %.not49, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !86
  %i.ah = call i32 @curlx_str_until(ptr noundef nonnull %i.a, ptr noundef nonnull %5, i64 noundef 307200, i8 noundef signext 58) #9
  %.not50 = icmp eq i32 %i.ah, 0
  br i1 %.not50, label %bb.l, label %.thread69

bb.l:                                             ; preds = %bb.k
  %i.ai = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 58) #9
  %.not51 = icmp eq i32 %i.ai, 0
  br i1 %.not51, label %bb.m, label %.thread69

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.aj = call i32 @curlx_str_untilnl(ptr noundef nonnull %i.a, ptr noundef nonnull %6, i64 noundef 307200) #9 ; 0 uses
  call void @curlx_str_trimblanks(ptr noundef nonnull %6) #9
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !89
  %.not52.not = icmp eq i64 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br i1 %.not52.not, label %.thread69, label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.034 = phi i1 [ false, %bb.m ], [ true, %bb.j ]
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !121
  %.not53 = icmp eq ptr %i.al, null
  br i1 %.not53, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.10) #9
  %.not54 = icmp eq i32 %i.am, 0
  br i1 %.not54, label %bb.p, label %.thread69

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = load i8, ptr %i.x, align 1, !tbaa !103  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.11) #9
  %.not55 = icmp eq i32 %i.ap, 0
  br i1 %.not55, label %thread-pre-split, label %.thread69

thread-pre-split:                                 ; preds = %bb.q
  %.pr = load i8, ptr %i.x, align 1, !tbaa !103
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %bb.p
  %i.aq = phi i8 [ %.pr, %thread-pre-split ], [ %i.an, %bb.p ]
  %i.ar = icmp eq i8 %i.aq, 3
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.11) #9
  %.not56 = icmp eq i32 %i.as, 0
  br i1 %.not56, label %bb.t, label %.thread69

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.at = load i32, ptr %i.y, align 1
  %i.au = and i32 %i.at, 131072
  %.not57 = icmp eq i32 %i.au, 0
  br i1 %.not57, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.12) #9
  %.not58 = icmp eq i32 %i.av, 0
  br i1 %.not58, label %bb.v, label %.thread69

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aw = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #9
  %.not59 = icmp eq i32 %i.aw, 0
  br i1 %.not59, label %bb.w, label %.thread69

bb.w:                                             ; preds = %bb.v
  br i1 %i.z, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ax = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.14) #9
  %.not60 = icmp eq i32 %i.ax, 0
  br i1 %.not60, label %bb.y, label %.thread69

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ay = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.15) #9
  %.not61 = icmp eq i32 %i.ay, 0
  br i1 %.not61, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.az = call i32 @curlx_str_casecompare(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #9
  %.not62 = icmp eq i32 %i.az, 0
  br i1 %.not62, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ba = call zeroext i1 @Curl_auth_allowed_to_host(ptr noundef nonnull %0) #9
  br i1 %i.ba, label %bb.ab, label %.thread69

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %.034, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bb = load i64, ptr %i.u, align 8, !tbaa !89
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = load ptr, ptr %5, align 8, !tbaa !88
  %i.be = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %i.bc, ptr noundef %i.bd) #9
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bf = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef %i.aa) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.035 = phi i32 [ %i.be, %bb.ac ], [ %i.bf, %bb.ad ] ; 2 uses
  %.not63 = icmp eq i32 %.035, 0
  br i1 %.not63, label %.thread69, label %.thread73

.thread73:                                        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.loopexit

.thread69:                                        ; preds = %bb.m, %bb.ae, %bb.l, %bb.k, %bb.o, %bb.q, %bb.s, %bb.u, %bb.v, %bb.x, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.bg = getelementptr inbounds nuw i8, ptr %.03984, i64 8
  %.039 = load ptr, ptr %i.bg, align 8, !tbaa !81 ; 2 uses
  %.not45 = icmp eq ptr %.039, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph, !llvm.loop !172

._crit_edge:                                      ; preds = %.thread69, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.038
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !173

.loopexit:                                        ; preds = %._crit_edge, %.thread73
  %.3 = phi i32 [ %.035, %.thread73 ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @curlx_str_casecompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @curlx_dyn_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_add_timecondition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 10 uses
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2043 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !122
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.f = load i64, ptr %i.e, align 8, !tbaa !175
  %i.g = call i32 @curlx_gmtime(i64 noundef %i.f, ptr noundef nonnull %2) #9 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #9
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.b, align 1, !tbaa !122
  %switch.tableidx = add i8 %i.h, -1              ; 3 uses
  %i.i = icmp ult i8 %switch.tableidx, 3
  br i1 %i.i, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.j = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_add_timecondition, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table.Curl_add_timecondition.5, i64 %i.k
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext = zext i8 %switch.load28 to i64
  %i.l = call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull %switch.load, i64 noundef %switch.ext) #9
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %switch.lookup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !177  ; 2 uses
  %.not25 = icmp eq i32 %i.n, 0
  %i.o = add nsw i32 %i.n, -1
  %narrow = select i1 %.not25, i32 6, i32 %i.o
  %i.p = sext i32 %narrow to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @Curl_wkday, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !178
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !179
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @Curl_month, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !180
  %i.ab = add nsw i32 %i.aa, 1900
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !181
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !182
  %i.ag = load i32, ptr %2, align 8, !tbaa !183
  %i.ah = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.23, ptr noundef nonnull %switch.load, ptr noundef %i.r, i32 noundef %i.t, ptr noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ag) #9 ; 0 uses
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
define dso_local void @Curl_http_method(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4435
  %i.b = load i8, ptr %i.a, align 1, !tbaa !103   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !126
  %i.i = and i64 %i.h, 3221225479
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 131072
  %.not13 = icmp eq i32 %i.l, 0
  %spec.select = select i1 %.not13, i8 %i.b, i8 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011.shrunk = phi i8 [ %i.b, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  %.not14 = icmp eq ptr %i.n, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 524288
  %.not15 = icmp eq i32 %i.q, 0
  br i1 %.not15, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.s = load i32, ptr %i.r, align 1
  %i.t = and i32 %i.s, 65536
  %.not16 = icmp eq i32 %i.t, 0
  br i1 %.not16, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %switch.tableidx = add i8 %.011.shrunk, -1      ; 2 uses
  %i.u = icmp ult i8 %switch.tableidx, 5
  br i1 %i.u, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.v = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_http, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup, %bb.e, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ @.str.27, %bb.f ], [ @.str.24, %bb.e ], [ %switch.load, %switch.lookup ]
  %.011 = zext i8 %.011.shrunk to i32
  store ptr %.0, ptr %1, align 8, !tbaa !86
  store i32 %.011, ptr %2, align 4, !tbaa !106
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_http(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %2 = alloca %struct.Curl_str, align 8           ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.Curl_str, align 8           ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.Curl_llist, align 8         ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.dynbuf, align 8             ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i8 1, ptr %1, align 1, !tbaa !128
  call void @curlx_dyn_init(ptr noundef nonnull %5, i64 noundef 1048576) #9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2664
  call void @curlx_dyn_reset(ptr noundef nonnull %i.g) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4436 ; 14 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, -8388609
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !90   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 728 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 128
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %http_check_new_conn.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.p = call ptr @Curl_conn_get_alpn_negotiated(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #9 ; 5 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.critedge.i, label %sub_0.i

sub_0.i:                                          ; preds = %bb.b
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %.not49.i = icmp eq i8 %i.q, 104
  br i1 %.not49.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = load i8, ptr %i.r, align 1               ; 3 uses
end_hunk_0
