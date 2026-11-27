Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/curl_trc?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Curl_str = type { ptr, i64 }
%struct.Curl_cftype = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@Curl_debug.s_infotype = internal constant [7 x [3 x i8]] [[3 x i8] c"* \00", [3 x i8] c"< \00", [3 x i8] c"> \00", [3 x i8] c"{ \00", [3 x i8] c"} \00", [3 x i8] c"{ \00", [3 x i8] c"} \00"], align 16
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"MULTI\00", align 1
@Curl_trc_feat_multi = global { ptr, i32, [4 x i8] } { ptr @.str.1, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@Curl_trc_feat_read = global { ptr, i32, [4 x i8] } { ptr @.str.2, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@Curl_trc_feat_write = global { ptr, i32, [4 x i8] } { ptr @.str.3, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1
@Curl_trc_feat_dns = global { ptr, i32, [4 x i8] } { ptr @.str.4, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"TIMER\00", align 1
@Curl_trc_feat_timer = global { ptr, i32, [4 x i8] } { ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"THREADS\00", align 1
@Curl_trc_feat_threads = local_unnamed_addr global { ptr, i32, [4 x i8] } { ptr @.str.6, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"expires in %ldns\00", align 1
@Curl_trc_mstate_names = internal unnamed_addr constant [16 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], align 16
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"FTP\00", align 1
@Curl_trc_feat_ftp = global { ptr, i32, [4 x i8] } { ptr @.str.9, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"SMTP\00", align 1
@Curl_trc_feat_smtp = global { ptr, i32, [4 x i8] } { ptr @.str.10, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"SSLS\00", align 1
@Curl_trc_feat_ssls = global { ptr, i32, [4 x i8] } { ptr @.str.11, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"WS\00", align 1
@Curl_trc_feat_ws = global { ptr, i32, [4 x i8] } { ptr @.str.12, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"LIB-IDS\00", align 1
@Curl_trc_feat_ids = internal unnamed_addr global { ptr, i32, [4 x i8] } { ptr @.str.13, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"[%ld-%ld] \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"[%ld-x] \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"[x-%ld] \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"[x-x] \00", align 1
@trc_write.s_infotype = internal constant [7 x [3 x i8]] [[3 x i8] c"* \00", [3 x i8] c"< \00", [3 x i8] c"> \00", [3 x i8] c"{ \00", [3 x i8] c"} \00", [3 x i8] c"{ \00", [3 x i8] c"} \00"], align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"[%s-%d] \00", align 1
@Curl_trc_timer_names = internal unnamed_addr constant [15 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"UNKNOWN?\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"100_TIMEOUT\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ASYNC_NAME\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"CONNECTTIMEOUT\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"DNS_PER_NAME\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"DNS_PER_NAME2\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"HAPPY_EYEBALLS_DNS\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"HAPPY_EYEBALLS\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"MULTI_PENDING\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"SPEEDCHECK\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"TOOFAST\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"QUIC\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"FTP_ACCEPT\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"ALPN_EYEBALLS\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"SHUTDOWN\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"PENDING\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"CONNECTING\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"PROTOCONNECT\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"PROTOCONNECTING\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"DOING\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"DOING_MORE\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"DID\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"PERFORMING\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"RATELIMITING\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"COMPLETED\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"MSGSENT\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"doh\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@__const.trc_opt.dns = private unnamed_addr constant %struct.Curl_str { ptr @.str.58, i64 3 }, align 8
@Curl_cft_dns = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_tcp = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_udp = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_unix = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_tcp_accept = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_ip_happy = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_recvbuf = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_setup = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_ssl = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_ssl_proxy = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_h1_proxy = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_http_proxy = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_haproxy = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_socks_proxy = external local_unnamed_addr global %struct.Curl_cftype, align 8
@Curl_cft_http_connect = external local_unnamed_addr global %struct.Curl_cftype, align 8

; Function Attrs: nounwind uwtable
define void @Curl_debug(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.d = load i64, ptr %i.c, align 1
  %i.e = and i64 %i.d, 536870912
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %.not51 = icmp eq ptr %i.g, null
  br i1 %.not51, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @Curl_is_in_callback(ptr noundef nonnull %0) #7 ; 2 uses
  %i.i = load i64, ptr %i.c, align 1
  %i.j = and i64 %i.i, 536870912
  %.not56 = icmp eq i64 %i.j, 0
  br i1 %.not56, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 2 uses
  %.not57 = icmp eq ptr %i.l, null
  br i1 %.not57, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !74
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ids, i64 8), align 8
  %i.q = icmp sgt i32 %i.p, 0
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  %i.r = icmp ult i64 %3, 2048
  %or.cond59 = and i1 %i.r, %or.cond
  br i1 %or.cond59, label %bb.g, label %bb.o

bb.f:                                             ; preds = %bb.d
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ids, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  %.old58 = icmp ult i64 %3, 2048
  %or.cond60 = and i1 %.old58, %.old1
  br i1 %or.cond60, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %.in.i = select i1 %.not.i, ptr %i.v, ptr %i.u
  %i.w = load i64, ptr %.in.i, align 8, !tbaa !76 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !77   ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1
  %i.aa = icmp sgt i64 %i.w, -1                   ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.15, i64 noundef %i.y, i64 noundef %i.w) #7
  br label %trc_print_ids.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.16, i64 noundef %i.y) #7
  br label %trc_print_ids.exit

bb.k:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.17, i64 noundef %i.w) #7
  br label %trc_print_ids.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.18) #7
  br label %trc_print_ids.exit

trc_print_ids.exit:                               ; preds = %bb.i, %bb.j, %bb.l, %bb.m
  %.0.in.i = phi i32 [ %i.ab, %bb.i ], [ %i.ac, %bb.j ], [ %i.ad, %bb.l ], [ %i.ae, %bb.m ]
  %.0.i = sext i32 %.0.in.i to i64                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i
  %i.ag = sub nsw i64 2048, %.0.i
  %i.ah = trunc nuw nsw i64 %3 to i32
  %i.ai = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str, i32 noundef %i.ah, ptr noundef %2) #7
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.aj, %.0.i                ; 2 uses
  %.not.i61 = icmp ult i64 %i.ak, 2047
  br i1 %.not.i61, label %trc_end_buf.exit, label %bb.n

bb.n:                                             ; preds = %trc_print_ids.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 2043
  store i8 46, ptr %i.al, align 1, !tbaa !78
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 2044
  store i16 11822, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 2046
  store i8 10, ptr %5, align 2, !tbaa !78
  br label %trc_end_buf.exit

trc_end_buf.exit:                                 ; preds = %trc_print_ids.exit, %bb.n
  %.0.i62 = phi i64 [ 2047, %bb.n ], [ %i.ak, %trc_print_ids.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i62
  store i8 0, ptr %i.am, align 1, !tbaa !78
  call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext true) #7
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !79
  %i.aq = call i32 %i.an(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef %.0.i62, ptr noundef %i.ap) #7 ; 0 uses
  call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext %i.h) #7
  br label %bb.v

bb.o:                                             ; preds = %bb.f, %bb.e, %bb.c
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext true) #7
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79
  %i.au = tail call i32 %i.ar(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %i.at) #7 ; 0 uses
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext %i.h) #7
  br label %bb.v

bb.p:                                             ; preds = %bb.b
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72 ; 2 uses
  %.not54 = icmp eq ptr %i.aw, null
  br i1 %.not54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !74
  %i.az = icmp sgt i32 %i.ay, 0
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ids, i64 8), align 8
  %i.bb = icmp sgt i32 %i.ba, 0
  %or.cond4 = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond4, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %.old2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ids, i64 8), align 8, !tbaa !74
  %.old3 = icmp sgt i32 %.old2, 0
  br i1 %.old3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bc = call fastcc i64 @trc_print_ids(ptr noundef %0, ptr noundef %i.a)
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.be = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef %i.bc, i64 noundef 1, ptr noundef %i.bd) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bf = zext nneg i32 %1 to i64
  %i.bg = getelementptr inbounds nuw [3 x i8], ptr @Curl_debug.s_infotype, i64 %i.bf
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.bi = call i64 @fwrite(ptr noundef nonnull %i.bg, i64 noundef 2, i64 noundef 1, ptr noundef %i.bh) ; 0 uses
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.bk = call i64 @fwrite(ptr noundef %2, i64 noundef %3, i64 noundef 1, ptr noundef %i.bj) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %trc_end_buf.exit, %bb.o, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @Curl_is_in_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @trc_print_ids(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %.in = select i1 %.not, ptr %i.d, ptr %i.c
  %i.e = load i64, ptr %.in, align 8, !tbaa !76   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  %i.i = icmp sgt i64 %i.e, -1                    ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %1, i64 noundef 2048, ptr noundef nonnull @.str.15, i64 noundef %i.g, i64 noundef %i.e) #7
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %1, i64 noundef 2048, ptr noundef nonnull @.str.16, i64 noundef %i.g) #7
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %1, i64 noundef 2048, ptr noundef nonnull @.str.17, i64 noundef %i.e) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = tail call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %1, i64 noundef 2048, ptr noundef nonnull @.str.18) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.0.in = phi i32 [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  %.0 = sext i32 %.0.in to i64
  ret i64 %.0
}

declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Curl_set_in_callback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Curl_failf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [258 x i8], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 536870912
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.g = call i32 @curl_mvsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %2) #7
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %.not12 = icmp eq ptr %i.j, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 8
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @curlx_strcopy(ptr noundef nonnull %i.j, i64 noundef 256, ptr noundef nonnull %i.a, i64 noundef %i.h) #7
  %i.n = load i32, ptr %i.k, align 4
  %i.o = or i32 %i.n, 8
  store i32 %i.o, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 10, ptr %i.q, align 1, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !78
  call fastcc void @trc_write(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.p)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

declare i32 @curl_mvsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @curlx_strcopy(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @trc_write(ptr noundef %0, ptr noundef nonnull %1, i64 noundef range(i64 -2147483647, 2147483649) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 536870912
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @Curl_is_in_callback(ptr noundef nonnull %0) #7
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext true) #7
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.k = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %i.j) #7 ; 0 uses
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext %i.g) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.m = tail call i64 @fwrite(ptr noundef nonnull @trc_write.s_infotype, i64 noundef 2, i64 noundef 1, ptr noundef %i.l) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.o = tail call i64 @fwrite(ptr noundef nonnull %1, i64 noundef %2, i64 noundef 1, ptr noundef %i.n) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Curl_reset_fail(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, -9
  store i32 %i.e, ptr %i.c, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_infof(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not8 = icmp eq i64 %i.c, 0
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !72
  call fastcc void @trc_infof(ptr noundef %0, ptr noundef %i.i, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @trc_infof(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 536870912
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not37 = icmp eq ptr %i.f, null
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ids, i64 8), align 8
  %i.k = icmp sgt i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.e, label %bb.l

bb.d:                                             ; preds = %bb.b
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ids, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %.in.i = select i1 %.not.i, ptr %i.o, ptr %i.n
  %i.p = load i64, ptr %.in.i, align 8, !tbaa !76 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  %i.t = icmp sgt i64 %i.p, -1                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.15, i64 noundef %i.r, i64 noundef %i.p) #7
  br label %trc_print_ids.exit

bb.h:                                             ; preds = %bb.f
  %i.v = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.16, i64 noundef %i.r) #7
  br label %trc_print_ids.exit

bb.i:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.17, i64 noundef %i.p) #7
  br label %trc_print_ids.exit

bb.k:                                             ; preds = %bb.i
  %i.x = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.18) #7
  br label %trc_print_ids.exit

trc_print_ids.exit:                               ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.0.in.i = phi i32 [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ %i.w, %bb.j ], [ %i.x, %bb.k ]
  %.0.i = sext i32 %.0.in.i to i64
  br label %bb.l

bb.l:                                             ; preds = %trc_print_ids.exit, %bb.d, %bb.c, %bb.a
  %.0 = phi i64 [ %.0.i, %trc_print_ids.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0
  %i.z = sub nsw i64 2048, %.0
  %i.aa = load ptr, ptr %1, align 8, !tbaa !82
  %i.ab = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.19, ptr noundef %i.aa) #7
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add nsw i64 %.0, %i.ac
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i64 [ %i.ad, %bb.m ], [ %.0, %bb.l ]  ; 5 uses
  %.not39 = icmp eq ptr %2, null
  br i1 %.not39, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp sgt i32 %3, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1 ; 2 uses
  %i.ag = sub nsw i64 2048, %.1                   ; 2 uses
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.20, ptr noundef nonnull %2, i32 noundef %3) #7
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %.1, %i.ai
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ak = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #7
  %i.al = sext i32 %i.ak to i64
  %i.am = add nsw i64 %.1, %i.al
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.2 = phi i64 [ %i.aj, %bb.p ], [ %i.am, %bb.q ], [ %.1, %bb.n ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2
  %i.ao = sub nsw i64 2048, %.2
  %i.ap = call i32 @curl_mvsnprintf(ptr noundef nonnull %i.an, i64 noundef %i.ao, ptr noundef %4, ptr noundef nonnull %5) #7
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add nsw i64 %.2, %i.aq                  ; 3 uses
  %.not.i40 = icmp ult i64 %i.ar, 2046
  br i1 %.not.i40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2043
  store i8 46, ptr %i.as, align 1, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 2044
  store i16 11822, ptr %i.at, align 4
  br label %trc_end_buf.exit

bb.t:                                             ; preds = %bb.r
  %i.au = add nuw nsw i64 %i.ar, 1
  br label %trc_end_buf.exit

trc_end_buf.exit:                                 ; preds = %bb.s, %bb.t
  %.sink19.i = phi i64 [ %i.ar, %bb.t ], [ 2046, %bb.s ]
  %.0.ph.i = phi i64 [ %i.au, %bb.t ], [ 2047, %bb.s ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink19.i
  store i8 10, ptr %i.av, align 1, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.ph.i
  store i8 0, ptr %i.aw, align 1, !tbaa !78
  call fastcc void @trc_write(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %.0.ph.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_trc_cf_infof(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not13 = icmp eq i64 %i.c, 0
  br i1 %.not13, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = icmp ne ptr %1, null
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %.old1.not = icmp eq ptr %1, null
  br i1 %.old1.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !84
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.o = load ptr, ptr %1, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !91
  call fastcc void @trc_infof(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.p, i32 noundef %i.r, ptr noundef %2, ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_trc_feat_infof(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.va_start.p0(ptr nonnull %3)
  call fastcc void @trc_infof(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_trc_timer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_timer, i64 8), align 8
  %i.j = icmp sgt i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_timer, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = icmp ult i32 %1, 15
  br i1 %i.k, label %bb.g, label %trc_timer_name.exit

bb.g:                                             ; preds = %bb.f
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @Curl_trc_timer_names, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86
  br label %trc_timer_name.exit

trc_timer_name.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.n, %bb.g ], [ @.str.21, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.va_start.p0(ptr nonnull %3)
  call fastcc void @trc_infof(ptr noundef %0, ptr noundef nonnull @Curl_trc_feat_timer, ptr noundef %.0.i, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.h

bb.h:                                             ; preds = %trc_timer_name.exit, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_trc_easy_timers(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not26 = icmp eq i64 %i.c, 0
  br i1 %.not26, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not27 = icmp eq ptr %i.e, null
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_timer, i64 8), align 8
  %i.j = icmp sgt i32 %i.i, 0
end_hunk_0
