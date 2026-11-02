Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/http_proxy?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Curl_cftype = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Curl_str = type { ptr, i64 }

@.str = private unnamed_addr constant [10 x i8] c"%s%s%s:%u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Proxy-Connection\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@Curl_cfree = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"HTTP-PROXY\00", align 1
@Curl_cft_http_proxy = dso_local global %struct.Curl_cftype { ptr @.str.9, i32 41, i32 0, ptr @http_proxy_cf_destroy, ptr @http_proxy_cf_connect, ptr @http_proxy_cf_close, ptr @Curl_cf_def_shutdown, ptr @Curl_cf_def_adjust_pollset, ptr @Curl_cf_def_data_pending, ptr @Curl_cf_def_send, ptr @Curl_cf_def_recv, ptr @Curl_cf_def_cntrl, ptr @Curl_cf_def_conn_is_alive, ptr @Curl_cf_def_conn_keep_alive, ptr @Curl_cf_http_proxy_query }, align 8
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c";:\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"CONNECT: '%s' negotiated\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"CONNECT: no ALPN negotiated\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"http/1.0\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"installing subfilter for HTTP/1.0\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"http/1.1\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"installing subfilter for HTTP/1.1\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"installing subfilter for HTTP/2\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"CONNECT: negotiated ALPN '%s' not supported\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"close\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Curl_http_proxy_get_destination(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 728 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 512
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.thread, label %.thread19

.thread:                                          ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !36
  br label %bb.e

.thread19:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 3 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !36
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !15
  %i.o = icmp eq i32 %.pre, 1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread19, %bb.c
  %i.p = phi ptr [ %i.l, %.thread19 ], [ %i.n, %bb.c ]
  %i.q = load i64, ptr %i.c, align 8
  %i.r = and i64 %i.q, 1024
  %.not18 = icmp eq i64 %i.r, 0
  %. = select i1 %.not18, i64 792, i64 794
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread
  %.sink20 = phi i64 [ %., %bb.d ], [ 800, %bb.c ], [ 800, %.thread ]
  %i.s = phi ptr [ %i.p, %bb.d ], [ %i.n, %bb.c ], [ %i.j, %.thread ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink20
  %.sink = load i16, ptr %i.t, align 2, !tbaa !39
  store i16 %.sink, ptr %2, align 2, !tbaa !39
  %i.u = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.s, i32 noundef 58) #5
  %i.v = icmp ne ptr %i.u, null
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %3, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_http_proxy_create_CONNECT(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.Curl_str, align 8           ; 13 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 728
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 512
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.thread.i, label %.thread19.i

.thread.i:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  br label %Curl_http_proxy_get_destination.exit

.thread19.i:                                      ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  %i.s = icmp eq i32 %.pre.i, 1
  br i1 %i.s, label %Curl_http_proxy_get_destination.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread19.i
  %.057 = phi ptr [ %i.p, %.thread19.i ], [ %i.r, %bb.c ]
  %i.t = and i64 %i.h, 1024
  %.not18.i = icmp eq i64 %i.t, 0
  %. = select i1 %.not18.i, i64 792, i64 794
  br label %Curl_http_proxy_get_destination.exit

Curl_http_proxy_get_destination.exit:             ; preds = %bb.d, %.thread.i, %bb.c
  %.sink = phi i64 [ 800, %.thread.i ], [ %., %bb.d ], [ 800, %bb.c ]
  %.2 = phi ptr [ %i.n, %.thread.i ], [ %.057, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink
  %.sink.i = load i16, ptr %i.u, align 2, !tbaa !39
  %i.v = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2, i32 noundef 58) #5
  %.not61 = icmp eq ptr %i.v, null                ; 2 uses
  %i.w = select i1 %.not61, ptr @.str.2, ptr @.str.1
  %i.x = select i1 %.not61, ptr @.str.2, ptr @.str.3
  %i.y = zext i16 %.sink.i to i32
  %i.z = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str, ptr noundef nonnull %i.w, ptr noundef nonnull %.2, ptr noundef nonnull %i.x, i32 noundef %i.y) #6 ; 5 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %dynhds_add_custom.exit, label %bb.e

bb.e:                                             ; preds = %Curl_http_proxy_get_destination.exit
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #5
  %i.ab = call i32 @Curl_http_req_make(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.4, i64 noundef 7, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.z, i64 noundef %i.aa, ptr noundef null, i64 noundef 0) #6 ; 2 uses
  %.not43 = icmp eq i32 %i.ab, 0
  br i1 %.not43, label %bb.f, label %dynhds_add_custom.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !106
  %i.ah = call i32 @Curl_http_output_auth(ptr noundef %2, ptr noundef %i.ac, ptr noundef nonnull %i.ae, i32 noundef 0, ptr noundef %i.ag, i1 noundef zeroext true) #6 ; 2 uses
  %.not44 = icmp eq i32 %i.ah, 0
  br i1 %.not44, label %bb.g, label %dynhds_add_custom.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq i32 %3, 1                       ; 2 uses
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.ak = call ptr @Curl_checkProxyheaders(ptr noundef %2, ptr noundef %i.aj, ptr noundef nonnull @.str.5, i64 noundef 4) #6
  %.not45 = icmp eq ptr %i.ak, null
  br i1 %.not45, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.am = call i32 @Curl_dynhds_cadd(ptr noundef %i.al, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.z) #6 ; 2 uses
  %.not46 = icmp eq i32 %i.am, 0
  br i1 %.not46, label %bb.j, label %dynhds_add_custom.exit

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !107 ; 2 uses
  %.not47 = icmp eq ptr %i.ao, null
  br i1 %.not47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.aq = call i32 @Curl_dynhds_h1_cadd_line(ptr noundef %i.ap, ptr noundef nonnull %i.ao) #6 ; 2 uses
  %.not48 = icmp eq i32 %i.aq, 0
  br i1 %.not48, label %bb.l, label %dynhds_add_custom.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.as = call ptr @Curl_checkProxyheaders(ptr noundef nonnull %2, ptr noundef %i.ar, ptr noundef nonnull @.str.6, i64 noundef 10) #6
  %.not49 = icmp eq ptr %i.as, null
  br i1 %.not49, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1600
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36 ; 3 uses
  %.not50 = icmp eq ptr %i.au, null
  br i1 %.not50, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i8, ptr %i.au, align 1, !tbaa !108
  %.not51 = icmp eq i8 %i.av, 0
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.ax = call i32 @Curl_dynhds_cadd(ptr noundef %i.aw, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.au) #6 ; 2 uses
  %.not52 = icmp eq i32 %i.ax, 0
  br i1 %.not52, label %bb.p, label %dynhds_add_custom.exit

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  br i1 %i.ai, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.az = call ptr @Curl_checkProxyheaders(ptr noundef nonnull %2, ptr noundef %i.ay, ptr noundef nonnull @.str.7, i64 noundef 16) #6
  %.not53 = icmp eq ptr %i.az, null
  br i1 %.not53, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.bb = call i32 @Curl_dynhds_cadd(ptr noundef %i.ba, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #6 ; 2 uses
  %.not54 = icmp eq i32 %i.bb, 0
  br i1 %.not54, label %bb.s, label %dynhds_add_custom.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %5 = load i32, ptr %i.d, align 4, !tbaa !91
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 2049
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = and i32 %i.be, 16
  %.not.i55 = icmp eq i32 %i.bf, 0
  %storemerge.in.v.i = select i1 %.not.i55, i64 736, i64 1152
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr %2, i64 %storemerge.in.v.i
  %storemerge.i = load ptr, ptr %storemerge.in.i, align 8, !tbaa !109 ; 2 uses
  %.not4364.i = icmp eq ptr %storemerge.i, null
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4384
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 4435 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 409
  %9 = icmp sgt i32 %5, 19
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not4364.i, label %dynhds_add_custom.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s, %select.unfold.i
  %.039.in.sroa.speculated65.i = phi ptr [ %.039.in.sroa.speculate.load..i, %select.unfold.i ], [ %storemerge.i, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bg = load ptr, ptr %.039.in.sroa.speculated65.i, align 8, !tbaa !111
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !36
  %i.bh = call i32 @curlx_str_cspn(ptr noundef nonnull %i.a, ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #6
  %.not44.i = icmp eq i32 %i.bh, 0
  br i1 %.not44.i, label %bb.t, label %select.unfold.i

bb.t:                                             ; preds = %.preheader.i
  %i.bi = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 58) #6
  %.not45.i = icmp eq i32 %i.bi, 0
  br i1 %.not45.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @curlx_str_passblanks(ptr noundef nonnull %i.a) #6
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !108
  %.not46.i = icmp eq i8 %i.bk, 0
  br i1 %.not46.i, label %select.unfold.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #5
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bm = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 59) #6
  %.not47.i = icmp eq i32 %i.bm, 0
  br i1 %.not47.i, label %bb.x, label %select.unfold.i

bb.x:                                             ; preds = %bb.w
  call void @curlx_str_passblanks(ptr noundef nonnull %i.a) #6
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !108
  %.not48.i = icmp eq i8 %i.bo, 0
  br i1 %.not48.i, label %bb.y, label %select.unfold.i

bb.y:                                             ; preds = %bb.x, %bb.v
  %.035.i = phi ptr [ %i.bj, %bb.v ], [ @.str.2, %bb.x ]
  %.034.i = phi i64 [ %i.bl, %bb.v ], [ 0, %bb.x ]
  %i.bp = load ptr, ptr %6, align 8, !tbaa !112
  %.not49.i = icmp eq ptr %i.bp, null
  br i1 %.not49.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = call i32 @curlx_str_casecompare(ptr noundef nonnull %4, ptr noundef nonnull @.str.5) #6
  %.not50.i = icmp eq i32 %i.bq, 0
  br i1 %.not50.i, label %bb.aa, label %select.unfold.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.br = load i8, ptr %7, align 1, !tbaa !113    ; 2 uses
  %i.bs = icmp eq i8 %i.br, 2
  br i1 %i.bs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bt = call i32 @curlx_str_casecompare(ptr noundef nonnull %4, ptr noundef nonnull @.str.11) #6
  %.not51.i = icmp eq i32 %i.bt, 0
  br i1 %.not51.i, label %thread-pre-split.i, label %select.unfold.i

thread-pre-split.i:                               ; preds = %bb.ab
  %.pr.i = load i8, ptr %7, align 1, !tbaa !113
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split.i, %bb.aa
  %i.bu = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.br, %bb.aa ]
  %i.bv = icmp eq i8 %i.bu, 3
  br i1 %i.bv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bw = call i32 @curlx_str_casecompare(ptr noundef nonnull %4, ptr noundef nonnull @.str.11) #6
  %.not52.i = icmp eq i32 %i.bw, 0
  br i1 %.not52.i, label %bb.ae, label %select.unfold.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bx = load i32, ptr %8, align 1
  %i.by = and i32 %i.bx, 131072
  %.not53.i = icmp eq i32 %i.by, 0
  br i1 %.not53.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = call i32 @curlx_str_casecompare(ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #6
  %.not54.i = icmp eq i32 %i.bz, 0
  br i1 %.not54.i, label %bb.ag, label %select.unfold.i

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %9, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ca = call i32 @curlx_str_casecompare(ptr noundef nonnull %4, ptr noundef nonnull @.str.13) #6
  %.not55.i = icmp eq i32 %i.ca, 0
  br i1 %.not55.i, label %bb.ai, label %select.unfold.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cb = call i32 @curlx_str_casecompare(ptr noundef nonnull %4, ptr noundef nonnull @.str.14) #6
  %.not56.i = icmp eq i32 %i.cb, 0
  br i1 %.not56.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cc = call i32 @curlx_str_casecompare(ptr noundef nonnull %4, ptr noundef nonnull @.str.15) #6
  %.not57.i = icmp eq i32 %i.cc, 0
  br i1 %.not57.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cd = call zeroext i1 @Curl_auth_allowed_to_host(ptr noundef nonnull %2) #6
  br i1 %i.cd, label %bb.al, label %select.unfold.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ce = load ptr, ptr %4, align 8, !tbaa !115
  %i.cf = load i64, ptr %10, align 8, !tbaa !116
  %i.cg = call i32 @Curl_dynhds_add(ptr noundef %i.bc, ptr noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull %.035.i, i64 noundef %.034.i) #6 ; 2 uses
  %.not58.i = icmp eq i32 %i.cg, 0
  br i1 %.not58.i, label %select.unfold.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %dynhds_add_custom.exit

select.unfold.i:                                  ; preds = %bb.al, %bb.ak, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.u, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.ch = getelementptr inbounds nuw i8, ptr %.039.in.sroa.speculated65.i, i64 8
  %.039.in.sroa.speculate.load..i = load ptr, ptr %i.ch, align 8, !tbaa !109 ; 2 uses
  %.not43.i = icmp eq ptr %.039.in.sroa.speculate.load..i, null
  br i1 %.not43.i, label %dynhds_add_custom.exit.thread, label %.preheader.i, !llvm.loop !100

dynhds_add_custom.exit:                           ; preds = %bb.am, %Curl_http_proxy_get_destination.exit, %bb.r, %bb.o, %bb.k, %bb.i, %bb.f, %bb.e
  %.0 = phi i32 [ %i.ab, %bb.e ], [ %i.ah, %bb.f ], [ %i.aq, %bb.k ], [ 27, %Curl_http_proxy_get_destination.exit ], [ %i.bb, %bb.r ], [ %i.ax, %bb.o ], [ %i.am, %bb.i ], [ %i.cg, %bb.am ] ; 2 uses
  %i.ci = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not62 = icmp eq ptr %i.ci, null
  br i1 %.not62, label %dynhds_add_custom.exit.thread, label %bb.an

bb.an:                                            ; preds = %dynhds_add_custom.exit
  call void @Curl_http_req_free(ptr noundef nonnull %i.ci) #6
  store ptr null, ptr %i.b, align 8, !tbaa !102
  br label %dynhds_add_custom.exit.thread

dynhds_add_custom.exit.thread:                    ; preds = %select.unfold.i, %bb.s, %bb.an, %dynhds_add_custom.exit
  %.060 = phi i32 [ %.0, %dynhds_add_custom.exit ], [ %.0, %bb.an ], [ 0, %bb.s ], [ 0, %select.unfold.i ]
  %i.cj = load ptr, ptr @Curl_cfree, align 8, !tbaa !92
  call void %i.cj(ptr noundef %i.z) #6
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !102
  store ptr %i.ck, ptr %0, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i32 %.060
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @curl_maprintf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @Curl_http_req_make(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare i32 @Curl_http_output_auth(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @Curl_checkProxyheaders(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @Curl_dynhds_cadd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Curl_dynhds_h1_cadd_line(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Curl_http_req_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_cf_http_proxy_query(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 11, label %bb.b
    i32 15, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = load i16, ptr %i.c, align 8, !tbaa !118
  %i.e = zext i16 %i.d to i32
  store i32 %i.e, ptr %3, align 4, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120
  store ptr %i.g, ptr %4, align 8, !tbaa !36
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !36
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !121
  %i.m = tail call i32 %i.l(ptr noundef nonnull %i.i, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.m, %bb.e ], [ 48, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @http_proxy_cf_destroy(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2049
  %i.d = load i32, ptr %i.c, align 1
  %i.e = and i32 %i.d, 134217728
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !98
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !99
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.o = load ptr, ptr @Curl_cfree, align 8, !tbaa !92
  tail call void %i.o(ptr noundef %i.b) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @http_proxy_cf_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1, !tbaa !41
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not113 = icmp eq ptr %1, null                 ; 3 uses
  br i1 %.not113, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2049
  %i.g = load i32, ptr %i.f, align 1
  %i.h = and i32 %i.g, 134217728
  %.not114 = icmp eq i32 %i.h, 0
  br i1 %.not114, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96   ; 2 uses
  %.not115 = icmp eq ptr %i.j, null
  br i1 %.not115, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !98
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = load ptr, ptr %0, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !99
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.w = tail call i32 %i.v(ptr noundef nonnull %i.s, ptr noundef %1, ptr noundef %2) #6 ; 2 uses
  %.not116158 = icmp eq i32 %i.w, 0
  br i1 %.not116158, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2049 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4296 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.am
  %i.aa = load i8, ptr %2, align 1, !tbaa !41, !range !123, !noundef !124
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %2, align 1, !tbaa !41
  %i.ac = load i8, ptr %i.x, align 4
  %i.ad = and i8 %i.ac, 1
  %.not117 = icmp eq i8 %i.ad, 0
  br i1 %.not117, label %bb.l, label %bb.an

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !93
  %i.af = tail call ptr @Curl_conn_cf_get_alpn_negotiated(ptr noundef %i.ae, ptr noundef %1) #6 ; 13 uses
  %.not118 = icmp eq ptr %i.af, null
  br i1 %.not118, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not113, label %.thread136, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i32, ptr %i.y, align 1
  %i.ah = and i32 %i.ag, 134217728
  %.not121 = icmp eq i32 %i.ah, 0
  br i1 %.not121, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !96  ; 2 uses
  %.not122 = icmp eq ptr %i.ai, null
  br i1 %.not122, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !98
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.af) #6
  br label %bb.w

bb.r:                                             ; preds = %bb.l
  br i1 %.not113, label %.critedge.thread147, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load i32, ptr %i.y, align 1
  %i.an = and i32 %i.am, 134217728
  %.not119 = icmp eq i32 %i.an, 0
  br i1 %.not119, label %.critedge.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !96  ; 2 uses
  %.not120 = icmp eq ptr %i.ao, null
  br i1 %.not120, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !98
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.19) #6
  br label %.critedge.thread

bb.w:                                             ; preds = %bb.q, %bb.p, %bb.n
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(9) @.str.20) #5
  %.not123 = icmp eq i32 %i.as, 0
  br i1 %.not123, label %bb.x, label %bb.ac

.thread136:                                       ; preds = %bb.m
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(9) @.str.20) #5
  %.not123137 = icmp eq i32 %i.at, 0
  br i1 %.not123137, label %.thread138, label %.thread148

bb.x:                                             ; preds = %bb.w
  %i.au = load i32, ptr %i.y, align 1
  %i.av = and i32 %i.au, 134217728
  %.not124 = icmp eq i32 %i.av, 0
  br i1 %.not124, label %.thread138, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !96  ; 2 uses
  %.not125 = icmp eq ptr %i.aw, null
  br i1 %.not125, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !98
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.aa, label %.thread138

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.ba = load ptr, ptr %0, align 8, !tbaa !94
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !99
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.ab, label %.thread138

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #6
  br label %.thread138

.thread138:                                       ; preds = %.thread136, %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.be = tail call i32 @Curl_cf_h1_proxy_insert_after(ptr noundef nonnull %0, ptr noundef %1) #6 ; 2 uses
  %.not126 = icmp eq i32 %i.be, 0
  br i1 %.not126, label %bb.am, label %.loopexit

bb.ac:                                            ; preds = %bb.w
  %i.bf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(9) @.str.22) #5
  %.not127 = icmp eq i32 %i.bf, 0
  br i1 %.not127, label %.critedge.thread, label %sub_0

.thread148:                                       ; preds = %.thread136
  %i.bg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(9) @.str.22) #5
  %.not127149 = icmp eq i32 %i.bg, 0
  br i1 %.not127149, label %.critedge.thread147, label %sub_0154

.critedge.thread:                                 ; preds = %bb.ac, %bb.s, %bb.u, %bb.v
  %i.bh = load i32, ptr %i.y, align 1
  %i.bi = and i32 %i.bh, 134217728
  %.not128 = icmp eq i32 %i.bi, 0
  br i1 %.not128, label %.critedge.thread147, label %bb.ad

bb.ad:                                            ; preds = %.critedge.thread
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !96  ; 2 uses
  %.not129 = icmp eq ptr %i.bj, null
  br i1 %.not129, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !98
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.af, label %.critedge.thread147

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.bn = load ptr, ptr %0, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !99
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.ag, label %.critedge.thread147

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #6
  br label %.critedge.thread147

.critedge.thread147:                              ; preds = %.thread148, %bb.r, %bb.ag, %bb.af, %bb.ae, %.critedge.thread
  %i.br = tail call i32 @Curl_cf_h1_proxy_insert_after(ptr noundef nonnull %0, ptr noundef %1) #6 ; 2 uses
  %.not130 = icmp eq i32 %i.br, 0
  br i1 %.not130, label %bb.am, label %.loopexit

sub_0:                                            ; preds = %bb.ac
  %i.bs = load i8, ptr %i.af, align 1
  %.not164 = icmp eq i8 %i.bs, 104
  br i1 %.not164, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.bu = load i8, ptr %i.bt, align 1
  %.not165 = icmp eq i8 %i.bu, 50
  br i1 %.not165, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.ah, label %.tail.thread

sub_0154:                                         ; preds = %.thread148
  %i.by = load i8, ptr %i.af, align 1
  %.not166 = icmp eq i8 %i.by, 104
  br i1 %.not166, label %sub_1155, label %.tail.thread

sub_1155:                                         ; preds = %sub_0154
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ca = load i8, ptr %i.bz, align 1
  %.not167 = icmp eq i8 %i.ca, 50
  br i1 %.not167, label %.thread151.tail, label %.tail.thread

.thread151.tail:                                  ; preds = %sub_1155
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %.thread153, label %.tail.thread

bb.ah:                                            ; preds = %.tail
  %i.ce = load i32, ptr %i.y, align 1
  %i.cf = and i32 %i.ce, 134217728
  %.not132 = icmp eq i32 %i.cf, 0
  br i1 %.not132, label %.thread153, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !96  ; 2 uses
  %.not133 = icmp eq ptr %i.cg, null
  br i1 %.not133, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !98
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.ak, label %.thread153

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.ck = load ptr, ptr %0, align 8, !tbaa !94
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !99
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.al, label %.thread153

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #6
  br label %.thread153

.thread153:                                       ; preds = %.thread151.tail, %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.co = tail call i32 @Curl_cf_h2_proxy_insert_after(ptr noundef nonnull %0, ptr noundef %1) #6 ; 2 uses
  %.not134 = icmp eq i32 %i.co, 0
  br i1 %.not134, label %bb.am, label %.loopexit

.tail.thread:                                     ; preds = %sub_1155, %sub_0154, %sub_1, %sub_0, %.thread151.tail, %.tail
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.af) #6
  br label %.loopexit

bb.am:                                            ; preds = %.thread138, %.critedge.thread147, %.thread153
  %.0 = phi i32 [ 11, %.critedge.thread147 ], [ 10, %.thread138 ], [ 20, %.thread153 ]
  %i.cp = load i8, ptr %i.x, align 4
  %i.cq = or i8 %i.cp, 1
  store i8 %i.cq, ptr %i.x, align 4
  store i32 %.0, ptr %i.b, align 4, !tbaa !91
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !93  ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !94
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !122
  %i.cv = tail call i32 %i.cu(ptr noundef nonnull %i.cr, ptr noundef %1, ptr noundef nonnull %2) #6 ; 2 uses
  %.not116 = icmp eq i32 %i.cv, 0
  br i1 %.not116, label %bb.j, label %.loopexit

bb.an:                                            ; preds = %bb.k
  %i.cw = load i8, ptr %i.c, align 4
  %i.cx = or i8 %i.cw, 1
  store i8 %i.cx, ptr %i.c, align 4
  store i8 1, ptr %2, align 1, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.am, %.critedge.thread147, %.thread138, %.thread153, %bb.i, %.tail.thread, %bb.an, %bb.b
  %.094 = phi i32 [ 0, %bb.b ], [ 0, %bb.an ], [ 7, %.tail.thread ], [ %i.w, %bb.i ], [ %i.cv, %bb.am ], [ %i.br, %.critedge.thread147 ], [ %i.be, %.thread138 ], [ 0, %bb.j ], [ %i.co, %.thread153 ]
  ret i32 %.094
}

; Function Attrs: nounwind uwtable
define internal void @http_proxy_cf_close(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2049
  %i.b = load i32, ptr %i.a, align 1
  %i.c = and i32 %i.b, 134217728
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = icmp ne ptr %0, null
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %.old1.not = icmp eq ptr %0, null
  br i1 %.old1.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !99
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93   ; 3 uses
  %.not18 = icmp eq ptr %i.r, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125
  tail call void %i.u(ptr noundef nonnull %i.r, ptr noundef %1) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

declare i32 @Curl_cf_def_shutdown(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @Curl_cf_def_adjust_pollset(ptr noundef, ptr noundef, ptr noundef) #4

declare zeroext i1 @Curl_cf_def_data_pending(ptr noundef, ptr noundef) #4

declare i32 @Curl_cf_def_send(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) #4

declare i32 @Curl_cf_def_recv(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare i32 @Curl_cf_def_cntrl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare zeroext i1 @Curl_cf_def_conn_is_alive(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @Curl_cf_def_conn_keep_alive(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_cf_http_proxy_insert_after(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !92
  %i.c = tail call ptr %i.b(i64 noundef 1, i64 noundef 8) #6 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_http_proxy, ptr noundef nonnull %i.c) #6 ; 2 uses
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !126
  call void @Curl_conn_cf_insert_after(ptr noundef %0, ptr noundef %i.e) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.05 = phi ptr [ %i.c, %bb.b ], [ null, %bb.c ], [ null, %bb.a ]
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ], [ 27, %bb.a ]
  %i.f = load ptr, ptr @Curl_cfree, align 8, !tbaa !92
  call void %i.f(ptr noundef %.05) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @Curl_cf_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Curl_conn_cf_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @curlx_str_cspn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @curlx_str_single(ptr noundef, i8 noundef signext) local_unnamed_addr #4

declare void @curlx_str_passblanks(ptr noundef) local_unnamed_addr #4

declare i32 @curlx_str_casecompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @Curl_auth_allowed_to_host(ptr noundef) local_unnamed_addr #4

declare i32 @Curl_dynhds_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @Curl_trc_cf_infof(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @Curl_conn_cf_get_alpn_negotiated(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

declare i32 @Curl_cf_h1_proxy_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Curl_cf_h2_proxy_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11Curl_cftype", !9, i64 0}
!11 = !{!"p1 _ZTS12Curl_cfilter", !9, i64 0}
!12 = !{!"p1 _ZTS11connectdata", !9, i64 0}
!13 = !{!"Curl_cfilter", !10, i64 0, !11, i64 8, !9, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 36}
!14 = !{!13, !12, i64 24}
!15 = !{!13, !6, i64 32}
!16 = !{!"p1 _ZTS10Curl_llist", !9, i64 0}
!17 = !{!"p1 _ZTS15Curl_llist_node", !9, i64 0}
!18 = !{!"Curl_llist_node", !16, i64 0, !9, i64 8, !17, i64 16, !17, i64 24}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"p2 _ZTS17Curl_hash_element", !21, i64 0}
!23 = !{!"Curl_hash", !22, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !19, i64 32, !19, i64 40}
!24 = !{!"hostname", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!25 = !{!"short", !5, i64 0}
!26 = !{!"proxy_info", !24, i64 0, !25, i64 32, !5, i64 34, !20, i64 40, !20, i64 48}
!27 = !{!"curltime", !19, i64 0, !6, i64 8}
!28 = !{!"", !5, i64 0, !19, i64 32}
!29 = !{!"p1 _ZTS9curl_blob", !9, i64 0}
!30 = !{!"ssl_primary_config", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !20, i64 96, !6, i64 104, !5, i64 108, !5, i64 109, !6, i64 110, !6, i64 110, !6, i64 110, !6, i64 110}
!31 = !{!"ConnectBits", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 3, !6, i64 3, !6, i64 3, !6, i64 3, !6, i64 3, !6, i64 3, !6, i64 3, !6, i64 3, !6, i64 4}
!32 = !{!"p1 _ZTS11Curl_scheme", !9, i64 0}
!33 = !{!"p1 _ZTS10Curl_multi", !9, i64 0}
!34 = !{!"connectdata", !18, i64 0, !18, i64 32, !9, i64 64, !9, i64 72, !19, i64 80, !20, i64 88, !23, i64 96, !24, i64 144, !20, i64 176, !24, i64 184, !26, i64 216, !26, i64 272, !20, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !27, i64 368, !27, i64 384, !5, i64 400, !5, i64 408, !5, i64 424, !5, i64 440, !6, i64 456, !6, i64 460, !28, i64 464, !30, i64 504, !30, i64 616, !31, i64 728, !32, i64 736, !32, i64 744, !27, i64 752, !33, i64 768, !20, i64 776, !6, i64 784, !6, i64 788, !25, i64 792, !25, i64 794, !25, i64 796, !25, i64 798, !25, i64 800, !5, i64 802, !5, i64 803, !5, i64 804, !5, i64 805}
!35 = !{!34, !20, i64 176}
!36 = !{!20, !20, i64 0}
!37 = !{!34, !20, i64 160}
!38 = !{!34, !20, i64 200}
!39 = !{!25, !25, i64 0}
!40 = !{!"_Bool", !5, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!13, !9, i64 16}
!43 = !{!"CURLMsg", !6, i64 0, !9, i64 8, !5, i64 16}
!44 = !{!"Curl_message", !18, i64 0, !43, i64 32}
!45 = !{!"p1 _ZTS10Curl_share", !9, i64 0}
!46 = !{!"p1 _ZTS12Curl_cwriter", !9, i64 0}
!47 = !{!"p1 _ZTS12Curl_creader", !9, i64 0}
!48 = !{!"p1 _ZTS9buf_chunk", !9, i64 0}
!49 = !{!"p1 _ZTS9bufc_pool", !9, i64 0}
!50 = !{!"bufq", !48, i64 0, !48, i64 8, !48, i64 16, !49, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !6, i64 56}
!51 = !{!"SingleRequest", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !27, i64 40, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !5, i64 76, !5, i64 77, !6, i64 80, !46, i64 88, !47, i64 96, !50, i64 104, !19, i64 168, !19, i64 176, !20, i64 184, !20, i64 192, !5, i64 200, !20, i64 208, !20, i64 216, !20, i64 224, !5, i64 232, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235}
!52 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!53 = !{!"p1 _ZTS10curl_slist", !9, i64 0}
!54 = !{!"p1 _ZTS13curl_httppost", !9, i64 0}
!55 = !{!"p1 _ZTS13curl_mimepart", !9, i64 0}
!56 = !{!"ssl_config_data", !30, i64 0, !19, i64 112, !9, i64 120, !9, i64 128, !20, i64 136, !20, i64 144, !29, i64 152, !20, i64 160, !20, i64 168, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 177, !6, i64 177, !6, i64 177}
!57 = !{!"ssl_general_config", !6, i64 0}
!58 = !{!"p1 _ZTS9Curl_easy", !9, i64 0}
!59 = !{!"p1 _ZTS19Curl_data_prio_node", !9, i64 0}
!60 = !{!"Curl_data_priority", !58, i64 0, !59, i64 8, !6, i64 16, !6, i64 20}
!61 = !{!"p1 _ZTS8Curl_URL", !9, i64 0}
!62 = !{!"UserDefined", !52, i64 0, !9, i64 8, !20, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !9, i64 56, !9, i64 64, !19, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !53, i64 320, !54, i64 328, !55, i64 336, !53, i64 344, !53, i64 352, !19, i64 360, !56, i64 368, !56, i64 552, !53, i64 736, !25, i64 744, !5, i64 746, !5, i64 747, !57, i64 748, !19, i64 752, !6, i64 760, !6, i64 764, !9, i64 768, !53, i64 776, !19, i64 784, !19, i64 792, !5, i64 800, !5, i64 801, !5, i64 802, !53, i64 808, !53, i64 816, !53, i64 824, !6, i64 832, !5, i64 840, !5, i64 1352, !6, i64 1416, !19, i64 1424, !19, i64 1432, !9, i64 1440, !9, i64 1448, !9, i64 1456, !9, i64 1464, !9, i64 1472, !19, i64 1480, !19, i64 1488, !19, i64 1496, !19, i64 1504, !19, i64 1512, !6, i64 1520, !6, i64 1524, !6, i64 1528, !60, i64 1536, !9, i64 1560, !9, i64 1568, !19, i64 1576, !61, i64 1584, !9, i64 1592, !9, i64 1600, !6, i64 1608, !25, i64 1612, !25, i64 1614, !25, i64 1616, !25, i64 1618, !25, i64 1620, !25, i64 1622, !5, i64 1624, !5, i64 1625, !5, i64 1626, !5, i64 1627, !5, i64 1628, !5, i64 1629, !5, i64 1630, !5, i64 1631, !5, i64 1632, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1639, !6, i64 1639, !6, i64 1639, !6, i64 1639, !6, i64 1639, !6, i64 1639}
!63 = !{!"p1 _ZTS10CookieInfo", !9, i64 0}
!64 = !{!"p1 _ZTS4hsts", !9, i64 0}
!65 = !{!"Curl_rlimit", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !27, i64 56, !6, i64 72}
!66 = !{!"pgrs_dir", !19, i64 0, !19, i64 8, !19, i64 16, !65, i64 24}
!67 = !{!"Progress", !27, i64 0, !19, i64 16, !66, i64 24, !66, i64 128, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !27, i64 328, !27, i64 344, !27, i64 360, !27, i64 376, !27, i64 392, !5, i64 408, !5, i64 456, !6, i64 552, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556}
!68 = !{!"dynbuf", !20, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!69 = !{!"digestdata", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !6, i64 48, !5, i64 52, !6, i64 53, !6, i64 53}
!70 = !{!"auth", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 12, !6, i64 12}
!71 = !{!"p1 _ZTS17Curl_resolv_async", !9, i64 0}
!72 = !{!"p1 _ZTS9Curl_tree", !9, i64 0}
!73 = !{!"Curl_tree", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !27, i64 32, !9, i64 48}
!74 = !{!"Curl_llist", !17, i64 0, !17, i64 8, !9, i64 16, !19, i64 24}
!75 = !{!"urlpieces", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56}
!76 = !{!"bufref", !9, i64 0, !20, i64 8, !19, i64 16}
!77 = !{!"p1 _ZTS17Curl_header_store", !9, i64 0}
!78 = !{!"p1 _ZTS13curl_trc_feat", !9, i64 0}
!79 = !{!"store_netrc", !68, i64 0, !20, i64 32, !6, i64 40}
!80 = !{!"dynamically_allocated_data", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64}
!81 = !{!"http_negotiation", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 4}
!82 = !{!"UrlState", !27, i64 0, !19, i64 16, !19, i64 24, !68, i64 32, !53, i64 64, !19, i64 72, !20, i64 80, !6, i64 88, !19, i64 96, !6, i64 104, !6, i64 108, !9, i64 112, !69, i64 120, !69, i64 176, !70, i64 232, !70, i64 248, !71, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !20, i64 304, !6, i64 312, !27, i64 320, !73, i64 336, !74, i64 392, !5, i64 424, !20, i64 1264, !20, i64 1272, !19, i64 1280, !19, i64 1288, !60, i64 1296, !9, i64 1320, !9, i64 1328, !61, i64 1336, !75, i64 1344, !76, i64 1408, !76, i64 1432, !53, i64 1456, !55, i64 1464, !55, i64 1472, !19, i64 1480, !68, i64 1488, !74, i64 1520, !5, i64 1552, !77, i64 1648, !53, i64 1656, !78, i64 1664, !79, i64 1672, !80, i64 1720, !81, i64 1792, !25, i64 1800, !5, i64 1802, !5, i64 1803, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1807}
!83 = !{!"p1 _ZTS12WildcardData", !9, i64 0}
!84 = !{!"ip_quadruple", !5, i64 0, !5, i64 46, !25, i64 92, !25, i64 94, !5, i64 96}
!85 = !{!"p2 _ZTS10curl_slist", !21, i64 0}
!86 = !{!"curl_certinfo", !6, i64 0, !85, i64 8}
!87 = !{!"PureInfo", !6, i64 0, !6, i64 4, !6, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !20, i64 56, !20, i64 64, !19, i64 72, !6, i64 80, !84, i64 84, !6, i64 184, !20, i64 192, !6, i64 200, !86, i64 208, !6, i64 224, !6, i64 228, !6, i64 228}
!88 = !{!"curl_tlssessioninfo", !6, i64 0, !9, i64 8}
!89 = !{!"Curl_easy", !6, i64 0, !19, i64 8, !6, i64 16, !6, i64 20, !9, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !44, i64 48, !33, i64 104, !33, i64 112, !45, i64 120, !23, i64 128, !51, i64 176, !62, i64 416, !63, i64 2056, !64, i64 2064, !67, i64 2072, !82, i64 2632, !83, i64 4440, !87, i64 4448, !88, i64 4680}
!90 = !{!"cf_proxy_ctx", !6, i64 0, !6, i64 4}
!91 = !{!90, !6, i64 0}
!92 = !{!9, !9, i64 0}
!93 = !{!13, !11, i64 8}
!94 = !{!13, !10, i64 0}
!95 = !{!"Curl_cftype", !20, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104}
!96 = !{!89, !78, i64 4296}
!97 = !{!"curl_trc_feat", !20, i64 0, !6, i64 8}
!98 = !{!97, !6, i64 8}
!99 = !{!95, !6, i64 12}
!100 = distinct !{!100, !117}
!101 = !{!"p1 _ZTS7httpreq", !9, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"p2 _ZTS12dynhds_entry", !21, i64 0}
!104 = !{!"dynhds", !103, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !6, i64 48}
!105 = !{!"httpreq", !104, i64 0, !104, i64 56, !20, i64 112, !20, i64 120, !20, i64 128, !5, i64 136}
!106 = !{!105, !20, i64 120}
!107 = !{!89, !20, i64 392}
!108 = !{!5, !5, i64 0}
!109 = !{!53, !53, i64 0}
!110 = !{!"curl_slist", !20, i64 0, !53, i64 8}
!111 = !{!110, !20, i64 0}
!112 = !{!89, !20, i64 4384}
!113 = !{!89, !5, i64 4435}
!114 = !{!"Curl_str", !20, i64 0, !19, i64 8}
!115 = !{!114, !20, i64 0}
!116 = !{!114, !19, i64 8}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!34, !25, i64 304}
!119 = !{!6, !6, i64 0}
!120 = !{!34, !20, i64 288}
!121 = !{!95, !9, i64 104}
!122 = !{!95, !9, i64 24}
!123 = !{i8 0, i8 2}
!124 = !{}
!125 = !{!95, !9, i64 32}
!126 = !{!11, !11, i64 0}
end_hunk_0
