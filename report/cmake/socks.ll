Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/socks?download=true
inline.NumInlined: 67
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Curl_cftype = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ip_quadruple = type { [46 x i8], [46 x i8], i16, i16, i8 }

@.str = private unnamed_addr constant [6 x i8] c"SOCKS\00", align 1
@Curl_cft_socks_proxy = dso_local global %struct.Curl_cftype { ptr @.str, i32 9, i32 0, ptr @socks_proxy_cf_destroy, ptr @socks_proxy_cf_connect, ptr @socks_proxy_cf_close, ptr @Curl_cf_def_shutdown, ptr @socks_cf_adjust_pollset, ptr @Curl_cf_def_data_pending, ptr @Curl_cf_def_send, ptr @Curl_cf_def_recv, ptr @Curl_cf_def_cntrl, ptr @Curl_cf_def_conn_is_alive, ptr @Curl_cf_def_conn_keep_alive, ptr @socks_cf_query }, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"unknown proxytype %d option given\00", align 1
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"Opened %sSOCKS connection from %s port %d to %s port %d (via %s port %u)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2nd \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Opened %sSOCKS connection\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"SOCKS5: connecting to %s:%u\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"SOCKS5 GSSAPI per-message authentication is not supported.\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"SOCKS5 request granted.\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"SOCKS5: the destination hostname is too long to be resolved remotely by the proxy.\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"warning: unsupported value passed to CURLOPT_SOCKS5_AUTH: %u\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to send SOCKS request: %s\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Failed to receive SOCKS response: %s\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"Failed to receive SOCKS response, proxy closed connection\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"SOCKS5 initial reply is incomplete.\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Received invalid version in initial SOCKS5 response.\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"SOCKS5 GSSAPI per-message authentication is not enabled.\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"BASIC authentication proposed but not enabled.\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"No authentication method was acceptable.\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"Unknown SOCKS5 mode attempted to be used by server.\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Excessive username length for proxy auth\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"Excessive password length for proxy auth\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"SOCKS5 sub-negotiation response incomplete.\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"User was rejected by the SOCKS5 server (%d %d).\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"SOCKS5 connect to %s:%u (remotely resolved)\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"unable to create DNS filter for socks\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Failed to resolve \22%s\22 for SOCKS5 connect.\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"SOCKS5 connect to %s:%u (locally resolved)\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"SOCKS5 connect to [%s]:%u (locally resolved)\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"SOCKS5 connection to %s not supported\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"SOCKS5 response is incomplete.\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"SOCKS5 reply has wrong version, version should be 5.\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"cannot complete SOCKS5 connection to %s. (%d)\00", align 1
@socks5_recv_resp1.lookup = internal unnamed_addr constant [9 x i32] [i32 0, i32 20, i32 23, i32 22, i32 21, i32 19, i32 24, i32 18, i32 17], align 16
@.str.33 = private unnamed_addr constant [37 x i8] c"SOCKS5 reply has wrong address type.\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"SOCKS4%s connecting to %s:%u\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"SOCKS4: too long hostname\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Too long SOCKS proxy username\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"Failed to resolve \22%s\22 for SOCKS4 connect.\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"SOCKS4 connect to IPv4 %s (locally resolved)\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"SOCKS4 connection to %s not supported\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"SOCKS4 reply is incomplete.\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"SOCKS4 reply has wrong version, version should be 0.\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"SOCKS4%s request granted.\00", align 1
@.str.44 = private unnamed_addr constant [95 x i8] c"[SOCKS] cannot complete SOCKS4 connection to %u.%u.%u.%u:%u. (%u), request rejected or failed.\00", align 1
@.str.45 = private unnamed_addr constant [145 x i8] c"[SOCKS] cannot complete SOCKS4 connection to %u.%u.%u.%u:%u. (%u), request rejected because SOCKS server cannot connect to identd on the client.\00", align 1
@.str.46 = private unnamed_addr constant [149 x i8] c"[SOCKS] cannot complete SOCKS4 connection to %u.%u.%u.%u:%u. (%u), request rejected because the client program and identd report different user-ids.\00", align 1
@.str.47 = private unnamed_addr constant [76 x i8] c"[SOCKS] cannot complete SOCKS4 connection to %u.%u.%u.%u:%u. (%u), Unknown.\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"adjust pollset out (%d)\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"adjust pollset in (%d)\00", align 1
@Curl_cfree = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define internal void @socks_proxy_cf_destroy(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %socks_proxy_ctx_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @Curl_bufq_free(ptr noundef nonnull %i.c) #6
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !16
  tail call void %i.d(ptr noundef nonnull %i.b) #6, !inline_history !0
  br label %socks_proxy_ctx_free.exit

socks_proxy_ctx_free.exit:                        ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @socks_proxy_cf_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca [64 x i8], align 16               ; 4 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca [4 x i8], align 1                 ; 7 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 5 uses
  %i.n = alloca ptr, align 8                      ; 7 uses
  %i.o = alloca i64, align 8                      ; 8 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca [46 x i8], align 16               ; 7 uses
  %i.r = alloca [2 x i8], align 1                 ; 9 uses
  %i.s = alloca i64, align 8                      ; 10 uses
  %i.t = alloca i8, align 1                       ; 6 uses
  %i.u = alloca [5 x i8], align 1                 ; 12 uses
  %i.v = alloca [16 x i8], align 16               ; 7 uses
  %i.w = alloca i64, align 8                      ; 11 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 11 uses
  %i.ab = alloca [2 x i8], align 1                ; 8 uses
  %i.ac = alloca ptr, align 8                     ; 7 uses
  %i.ad = alloca i64, align 8                     ; 7 uses
  %i.ae = alloca i64, align 8                     ; 5 uses
  %i.af = alloca [5 x i8], align 1                ; 9 uses
  %i.ag = alloca i64, align 8                     ; 5 uses
  %i.ah = alloca i8, align 1                      ; 12 uses
  %3 = alloca %struct.ip_quadruple, align 2       ; 7 uses
  %i.ai = alloca i8, align 1                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15 ; 124 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 1
  %.not = icmp eq i8 %i.an, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1, !tbaa !18
  br label %bb.ig

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !96
  %i.at = tail call i32 %i.as(ptr noundef nonnull %i.ap, ptr noundef %1, ptr noundef %2) #6 ; 2 uses
  %.not57 = icmp eq i32 %i.at, 0
  br i1 %.not57, label %bb.d, label %bb.ig

bb.d:                                             ; preds = %bb.c
  %i.au = load i8, ptr %2, align 1, !tbaa !18, !range !97, !noundef !98
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.e, label %bb.ig

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 105 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.ax, label %.thread [
    i8 5, label %bb.f
    i8 7, label %bb.f
    i8 4, label %bb.ey
    i8 6, label %bb.ey
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #6
  %.sink5.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %.sink5.i.sroa.gep249.i = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 80 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 24 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 107 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 108 ; 12 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 6 uses
  %.not51.i.i = icmp eq ptr %1, null              ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 2049 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4296 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1163 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %.pre.i = load i32, ptr %i.ak, align 8, !tbaa !30
  switch i32 %.pre.i, label %socks_failed.exit248.i [
    i32 0, label %socksstate.exit.i
    i32 5, label %bb.j
    i32 6, label %socksstate.exit198.i
    i32 7, label %socksstate.exit201.i
    i32 8, label %bb.ba
    i32 9, label %bb.bc
    i32 10, label %bb.bp
    i32 11, label %socksstate.exit215.i
    i32 12, label %socksstate.exit221.i
    i32 13, label %socksstate.exit228.loopexit.i
    i32 14, label %socksstate.exit235.i
    i32 15, label %socksstate.exit240.i
    i32 16, label %socks5_connect.exit
    i32 17, label %bb.ex
  ]

bb.g:                                             ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #6
  br label %bb.bc

bb.h:                                             ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #6
  br label %bb.ba

bb.i:                                             ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #6
  br label %socksstate.exit221.i

socksstate.exit.i:                                ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 106
  store i8 5, ptr %i.bn, align 2, !tbaa !99
  %i.bo = icmp eq i8 %i.ax, 5
  %i.bp = zext i1 %i.bo to i8
  %i.bq = load i8, ptr %i.be, align 1
  %i.br = and i8 %i.bq, -2
  %i.bs = or disjoint i8 %i.br, %i.bp
  store i8 %i.bs, ptr %i.be, align 1
  store i32 5, ptr %i.ak, align 8, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %socksstate.exit.i, %bb.f
  br i1 %.not51.i.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load i32, ptr %i.bj, align 1
  %i.bu = and i32 %i.bt, 134217728
  %.not192.i = icmp eq i32 %i.bu, 0
  br i1 %.not192.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 2 uses
  %.not193.i = icmp eq ptr %i.bv, null
  br i1 %.not193.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !87
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bz = load ptr, ptr %0, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !88
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = load i16, ptr %i.bi, align 8, !tbaa !89
  %i.ce = zext i16 %i.cd to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.bf, i32 noundef %i.ce) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %i.cf = load i8, ptr %i.bl, align 1, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #6
  %i.cg = load i8, ptr %i.be, align 1
  %i.ch = and i8 %i.cg, 1
  %.not.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ci = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #7
  %i.cj = icmp ugt i64 %i.ci, 255
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.9) #6
  br label %.loopexit292.i

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.ck = zext i8 %i.cf to i64                    ; 2 uses
  %i.cl = and i64 %i.ck, 250
  %.not1.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not1.i.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = load i32, ptr %i.bj, align 1
  %i.cn = and i32 %i.cm, 134217728
  %.not27.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not27.i.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.co, null
  br i1 %.not28.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !87
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = zext i8 %i.cf to i32
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i32 noundef %i.cs) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s
  %i.ct = and i64 %i.ck, 1
  %.not29.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not29.i.i, label %.thread.i.i, label %bb.y

.thread.i.i:                                      ; preds = %bb.x
  store ptr null, ptr %i.ay, align 8, !tbaa !90
  store i8 5, ptr %i.af, align 1, !tbaa !91
  br label %.sink.split.i.i

bb.y:                                             ; preds = %bb.x
  %.pre.i.i = load ptr, ptr %i.ay, align 8, !tbaa !90
  %i.cu = icmp eq ptr %.pre.i.i, null
  store i8 5, ptr %i.af, align 1, !tbaa !91
  store i8 0, ptr %.sink5.i.sroa.gep.i, align 1, !tbaa !91
  br i1 %i.cu, label %bb.z, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.y, %.thread.i.i
  %.sink5.i.sroa.phi.i = phi ptr [ %.sink5.i.sroa.gep.i, %.thread.i.i ], [ %.sink5.i.sroa.gep249.i, %bb.y ]
  %.sink.i.i = phi i8 [ 0, %.thread.i.i ], [ 2, %bb.y ]
  %.0.ph.i.i = phi i8 [ 1, %.thread.i.i ], [ 2, %bb.y ]
  store i8 %.sink.i.i, ptr %.sink5.i.sroa.phi.i, align 1, !tbaa !91
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i.i, %bb.y
  %.0.i.i = phi i8 [ 1, %bb.y ], [ %.0.ph.i.i, %.sink.split.i.i ] ; 2 uses
  store i8 %.0.i.i, ptr %i.bm, align 1, !tbaa !91
  %narrow.i.i = add nuw nsw i8 %.0.i.i, 2
  %i.cv = zext nneg i8 %narrow.i.i to i64         ; 2 uses
  %i.cw = call i32 @Curl_bufq_write(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.af, i64 noundef %i.cv, ptr noundef nonnull %i.ag) #6
  %.not31.i.i = icmp eq i32 %i.cw, 0
  %i.cx = load i64, ptr %i.ag, align 8
  %.not32.i.i = icmp eq i64 %i.cx, %i.cv
  %or.cond33.i.i = select i1 %.not31.i.i, i1 %.not32.i.i, i1 false
  br i1 %or.cond33.i.i, label %bb.ab, label %.loopexit292.i

.loopexit292.i:                                   ; preds = %bb.z, %bb.r
  %.024.i.ph.i = phi i32 [ 9, %bb.r ], [ 30, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #6
  %i.cy = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.cz = icmp eq i32 %i.cy, 17
  br i1 %i.cz, label %socks_failed.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit292.i
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit.i

socks_failed.exit.i:                              ; preds = %bb.aa, %.loopexit292.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store i32 %.024.i.ph.i, ptr %i.da, align 8, !tbaa !101
  br label %socks5_connect.exit

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #6
  %i.db = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.dc = icmp eq i32 %i.db, 6
  br i1 %i.dc, label %socksstate.exit198.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 6, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit198.i

socksstate.exit198.i:                             ; preds = %bb.ac, %bb.ab, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %socksstate.exit198.i
  %i.dd = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.bb) #6
  br i1 %i.dd, label %bb.ah, label %bb.ae
end_hunk_0
begin_hunk_1_@socks_proxy_cf_connect:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store i32 %.033.i.ph.i, ptr %i.fp, align 8, !tbaa !101
  br label %socks5_connect.exit

socksstate.exit210.i:                             ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #6
  br label %bb.bp

bb.bp:                                            ; preds = %socksstate.exit210.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #6
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %bb.bp
  %i.fq = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.bb) #6
  br i1 %i.fq, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fr = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.fs = call i32 @Curl_cf_send_bufq(ptr noundef %i.fr, ptr noundef %1, ptr noundef nonnull %i.bb, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.z) #6 ; 2 uses
  switch i32 %i.fs, label %bb.bs [
    i32 81, label %.loopexit290.i
    i32 0, label %bb.bq
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ft = call ptr @curl_easy_strerror(i32 noundef %i.fs) #6
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %i.ft) #6
  %i.fu = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.fv = icmp eq i32 %i.fu, 17
  br i1 %i.fv, label %socks_failed.exit214.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit214.i

socks_failed.exit214.i:                           ; preds = %bb.bt, %bb.bs
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #6
  store i32 29, ptr %i.fw, align 8, !tbaa !101
  br label %socks5_connect.exit

.loopexit290.i:                                   ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #6
  br label %socks5_connect.exit

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #6
  %i.fx = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.fy = icmp eq i32 %i.fx, 11
  br i1 %i.fy, label %socksstate.exit215.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 11, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit215.i

socksstate.exit215.i:                             ; preds = %bb.bv, %bb.bu, %bb.f
  %i.fz = call fastcc i32 @socks_recv(ptr noundef nonnull %i.ak, ptr noundef nonnull %0, ptr noundef %1, i64 noundef 2, ptr noundef %i.ah) ; 3 uses
  %.not181.i = icmp eq i32 %i.fz, 0
  br i1 %.not181.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %socksstate.exit215.i
  %i.ga = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.gb = icmp eq i32 %i.ga, 17
  br i1 %i.gb, label %socks_failed.exit216.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit216.i

socks_failed.exit216.i:                           ; preds = %bb.bx, %bb.bw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store i32 %i.fz, ptr %i.gc, align 8, !tbaa !101
  br label %socks5_connect.exit

bb.by:                                            ; preds = %socksstate.exit215.i
  %i.gd = load i8, ptr %i.ah, align 1, !tbaa !18, !range !97, !noundef !98
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.bz, label %socks5_connect.exit

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #6
  %i.gf = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #6
  %i.gg = load i64, ptr %i.y, align 8
  %i.gh = icmp ugt i64 %i.gg, 1
  %or.cond.not.i217.i = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %or.cond.not.i217.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.22) #6
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %i.gi = load ptr, ptr %i.x, align 8, !tbaa !92  ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !91  ; 2 uses
  %.not.i219.i = icmp eq i8 %i.gk, 0
  br i1 %.not.i219.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gl = load i8, ptr %i.gi, align 1, !tbaa !91
  %i.gm = zext i8 %i.gl to i32
  %i.gn = zext i8 %i.gk to i32
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %i.gm, i32 noundef %i.gn) #6
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %.0.i218.ph.i = phi i32 [ 33, %bb.cc ], [ 15, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #6
  %i.go = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.gp = icmp eq i32 %i.go, 17
  br i1 %i.gp, label %socks_failed.exit220.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit220.i

socks_failed.exit220.i:                           ; preds = %bb.ce, %bb.cd
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store i32 %.0.i218.ph.i, ptr %i.gq, align 8, !tbaa !101
  br label %socks5_connect.exit

bb.cf:                                            ; preds = %bb.cb
  call void @Curl_bufq_skip(ptr noundef nonnull %i.bb, i64 noundef 2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #6
  %i.gr = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.gs = icmp eq i32 %i.gr, 12
  br i1 %i.gs, label %socksstate.exit221.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 12, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit221.i

socksstate.exit221.i:                             ; preds = %bb.cg, %bb.cf, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #6
  store i8 5, ptr %i.u, align 1, !tbaa !91
  store i8 1, ptr %i.bc, align 1, !tbaa !91
  store i8 0, ptr %i.bd, align 1, !tbaa !91
  %i.gt = load i8, ptr %i.be, align 1
  %i.gu = and i8 %i.gt, 1
  %.not.i222.i = icmp eq i8 %i.gu, 0
  br i1 %.not.i222.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %socksstate.exit221.i
  %i.gv = call i32 @Curl_bufq_write(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.u, i64 noundef 3, ptr noundef nonnull %i.w) #6
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = load i64, ptr %i.w, align 8
  %i.gy = icmp ne i64 %i.gx, 3
  %or.cond.i223.i = select i1 %i.gw, i1 true, i1 %i.gy
  br i1 %or.cond.i223.i, label %select.unfold266.i, label %bb.cw

bb.ci:                                            ; preds = %socksstate.exit221.i
  %i.gz = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bf, i32 noundef 58) #7
  %.not45.i.i = icmp eq ptr %i.gz, null
  br i1 %.not45.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ha = call i32 @inet_pton(i32 noundef 10, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.v) #6
  %.not46.i.i = icmp eq i32 %i.ha, 1
  br i1 %.not46.i.i, label %bb.cm, label %select.unfold266.i

bb.ck:                                            ; preds = %bb.ci
  %i.hb = call i32 @inet_pton(i32 noundef 2, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.v) #6
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #7
  %i.he = trunc i64 %i.hd to i8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.042.i.i = phi ptr [ %i.v, %bb.cj ], [ %i.bf, %bb.cl ], [ %i.v, %bb.ck ]
  %i.hf = phi i64 [ 4, %bb.cj ], [ 5, %bb.cl ], [ 4, %bb.ck ] ; 2 uses
  %.041.i.i = phi i8 [ 4, %bb.cj ], [ 3, %bb.cl ], [ 1, %bb.ck ]
  %.040.i.i = phi i8 [ 16, %bb.cj ], [ %i.he, %bb.cl ], [ 4, %bb.ck ] ; 2 uses
  store i8 %.041.i.i, ptr %i.bg, align 1, !tbaa !91
  store i8 %.040.i.i, ptr %i.bh, align 1, !tbaa !91
  %i.hg = call i32 @Curl_bufq_write(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.u, i64 noundef %i.hf, ptr noundef nonnull %i.w) #6
  %.not47.i.i = icmp eq i32 %i.hg, 0
  %i.hh = load i64, ptr %i.w, align 8
  %.not48.i.i = icmp eq i64 %i.hh, %i.hf
  %or.cond54.i.i = select i1 %.not47.i.i, i1 %.not48.i.i, i1 false
  br i1 %or.cond54.i.i, label %bb.cn, label %select.unfold266.i

bb.cn:                                            ; preds = %bb.cm
  %i.hi = zext i8 %.040.i.i to i64                ; 2 uses
  %i.hj = call i32 @Curl_bufq_write(ptr noundef nonnull %i.bb, ptr noundef nonnull %.042.i.i, i64 noundef %i.hi, ptr noundef nonnull %i.w) #6
  %.not49.i.i = icmp eq i32 %i.hj, 0
  %i.hk = load i64, ptr %i.w, align 8
  %.not50.i.i = icmp eq i64 %i.hk, %i.hi
  %or.cond55.i.i = select i1 %.not49.i.i, i1 %.not50.i.i, i1 false
  br i1 %or.cond55.i.i, label %bb.co, label %select.unfold266.i

bb.co:                                            ; preds = %bb.cn
  %4 = load i16, ptr %i.bi, align 8, !tbaa !89    ; 2 uses
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  store i8 %6, ptr %i.u, align 1, !tbaa !91
  %i.hl = trunc i16 %4 to i8
  store i8 %i.hl, ptr %i.bc, align 1, !tbaa !91
  %i.hm = call i32 @Curl_bufq_write(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.u, i64 noundef 2, ptr noundef nonnull %i.w) #6
  %i.hn = icmp ne i32 %i.hm, 0
  %i.ho = load i64, ptr %i.w, align 8
  %i.hp = icmp ne i64 %i.ho, 2
  %or.cond3.i225.i = select i1 %i.hn, i1 true, i1 %i.hp
  br i1 %or.cond3.i225.i, label %select.unfold266.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %.not51.i.i, label %bb.cw, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hq = load i32, ptr %i.bj, align 1
  %i.hr = and i32 %i.hq, 134217728
  %.not52.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not52.i.i, label %bb.cw, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hs = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.hs, null
  br i1 %.not53.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !87
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.hw = load ptr, ptr %0, align 8, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !88
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.ia = load i16, ptr %i.bi, align 8, !tbaa !89
  %i.ib = zext i16 %i.ia to i32
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.bf, i32 noundef %i.ib) #6
  br label %bb.cw

select.unfold266.i:                               ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cj, %bb.ch
  %.0.i224.i = phi i32 [ 30, %bb.cm ], [ 30, %bb.co ], [ 30, %bb.cn ], [ 1, %bb.cj ], [ 30, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #6
  %i.ic = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.id = icmp eq i32 %i.ic, 17
  br i1 %i.id, label %socks_failed.exit226.i, label %bb.cv

bb.cv:                                            ; preds = %select.unfold266.i
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit226.i

socks_failed.exit226.i:                           ; preds = %bb.cv, %select.unfold266.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store i32 %.0.i224.i, ptr %i.ie, align 8, !tbaa !101
  br label %socks5_connect.exit

bb.cw:                                            ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #6
  %i.if = load i8, ptr %i.be, align 1             ; 2 uses
  %i.ig = and i8 %i.if, 1
  %.not184.i = icmp eq i8 %i.ig, 0
  br i1 %.not184.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ih = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.ii = icmp eq i32 %i.ih, 14
  br i1 %i.ii, label %socksstate.exit235.i, label %socksstate.exit235.sink.split.i

bb.cy:                                            ; preds = %bb.cw
  %i.ij = or i8 %i.if, 2                          ; 3 uses
  store i8 %i.ij, ptr %i.be, align 1
  %i.ik = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.il = icmp eq i32 %i.ik, 13
  br i1 %i.il, label %socksstate.exit228.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 13, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit228.i

socksstate.exit228.loopexit.i:                    ; preds = %bb.f
  %.pre332.i = load i8, ptr %i.be, align 1
  br label %socksstate.exit228.i

socksstate.exit228.i:                             ; preds = %socksstate.exit228.loopexit.i, %bb.cz, %bb.cy
  %i.im = phi i8 [ %.pre332.i, %socksstate.exit228.loopexit.i ], [ %i.ij, %bb.cz ], [ %i.ij, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #6
  store i8 0, ptr %i.ah, align 1, !tbaa !18
  %i.in = and i8 %i.im, 2
  %.not.i229.i = icmp eq i8 %i.in, 0
  br i1 %.not.i229.i, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %socksstate.exit228.i
  %i.io = and i8 %i.im, -3
  store i8 %i.io, ptr %i.be, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.iq = load i8, ptr %i.ip, align 8, !tbaa !94
  %i.ir = call zeroext i8 @Curl_resolv_dns_queries(ptr noundef %1, i8 noundef zeroext %i.iq) #6
  %i.is = load i16, ptr %i.bi, align 8, !tbaa !89
  %i.it = call i32 @Curl_cf_dns_insert_after(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %i.ir, ptr noundef nonnull %i.bf, i16 noundef zeroext %i.is, i8 noundef zeroext 3, i1 noundef zeroext true) #6
  %.not87.i.i = icmp eq i32 %i.it, 0
  br i1 %.not87.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.25) #6
  br label %socks5_resolving.exit.thread.i

bb.dc:                                            ; preds = %bb.da, %socksstate.exit228.i
  %i.iu = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.iv = call i32 @Curl_conn_cf_connect(ptr noundef %i.iu, ptr noundef %1, ptr noundef nonnull %i.t) #6
  %.not88.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not88.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.bf) #6
  br label %socks5_resolving.exit.thread.i

bb.de:                                            ; preds = %bb.dc
  %i.iw = load i8, ptr %i.t, align 1, !tbaa !18, !range !97, !noundef !98
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.df, label %bb.dv

bb.df:                                            ; preds = %bb.de
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 2046
  %i.iz = load i8, ptr %i.iy, align 2, !tbaa !102
  %.not89.i.i = icmp eq i8 %i.iz, 1
  br i1 %.not89.i.i, label %.thread.i233.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ja = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.jb = call ptr @Curl_cf_dns_get_ai(ptr noundef %i.ja, ptr noundef nonnull %1, i32 noundef 10, i32 noundef 0) #6 ; 2 uses
  %.not90.i.i = icmp eq ptr %i.jb, null
  br i1 %.not90.i.i, label %.thread.i233.i, label %.thread105.i.i

.thread.i233.i:                                   ; preds = %bb.dg, %bb.df
  %i.jc = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.jd = call ptr @Curl_cf_dns_get_ai(ptr noundef %i.jc, ptr noundef nonnull %1, i32 noundef 2, i32 noundef 0) #6 ; 2 uses
  %.not91.i.i = icmp eq ptr %i.jd, null
  br i1 %.not91.i.i, label %bb.dh, label %.thread105.i.i

bb.dh:                                            ; preds = %.thread.i233.i
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.bf) #6
  br label %socks5_resolving.exit.thread.i

.thread105.i.i:                                   ; preds = %.thread.i233.i, %bb.dg
  %.1108.i.i = phi ptr [ %i.jd, %.thread.i233.i ], [ %i.jb, %bb.dg ] ; 4 uses
  call void @Curl_printable_address(ptr noundef nonnull %.1108.i.i, ptr noundef nonnull %i.q, i64 noundef 46) #6
  %i.je = getelementptr inbounds nuw i8, ptr %.1108.i.i, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !106
  switch i32 %i.jf, label %bb.dq [
    i32 2, label %bb.di
    i32 10, label %bb.dm
  ]

bb.di:                                            ; preds = %.thread105.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.1108.i.i, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !107
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 4 uses
  %i.jj = load i32, ptr %i.bj, align 1
  %i.jk = and i32 %i.jj, 134217728
  %.not96.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not96.i.i, label %bb.dr, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jl = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 2 uses
  %.not97.i.i = icmp eq ptr %i.jl, null
  br i1 %.not97.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !87
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %bb.dl, label %bb.dr

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.jp = load ptr, ptr %0, align 8, !tbaa !20
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !88
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %.sink.split.i232.i, label %bb.dr

bb.dm:                                            ; preds = %.thread105.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.1108.i.i, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !107
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 4 uses
  %i.jw = load i32, ptr %i.bj, align 1
  %i.jx = and i32 %i.jw, 134217728
  %.not93.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not93.i.i, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jy = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.jy, null
  br i1 %.not94.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !87
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.kc = load ptr, ptr %0, align 8, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !88
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.sink.split.i232.i, label %bb.dr

bb.dq:                                            ; preds = %.thread105.i.i
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.q) #6
  br label %socks5_resolving.exit.thread.i

.sink.split.i232.i:                               ; preds = %bb.dp, %bb.dl
  %.str.27.sink.i.i = phi ptr [ @.str.27, %bb.dl ], [ @.str.28, %bb.dp ]
  %.079.ph.ph.i.i = phi ptr [ %i.ji, %bb.dl ], [ %i.jv, %bb.dp ]
  %.078.ph.ph.i.i = phi i8 [ 1, %bb.dl ], [ 4, %bb.dp ]
  %.077.ph.ph.i.i = phi i64 [ 4, %bb.dl ], [ 16, %bb.dp ]
  %i.kg = load i16, ptr %i.bi, align 8, !tbaa !89
  %i.kh = zext i16 %i.kg to i32
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %.str.27.sink.i.i, ptr noundef nonnull %i.q, i32 noundef %i.kh) #6
  br label %bb.dr

bb.dr:                                            ; preds = %.sink.split.i232.i, %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dk, %bb.di
  %.079.ph.i.i = phi ptr [ %i.jv, %bb.dp ], [ %i.jv, %bb.do ], [ %i.ji, %bb.di ], [ %i.ji, %bb.dk ], [ %i.jv, %bb.dm ], [ %i.ji, %bb.dl ], [ %.079.ph.ph.i.i, %.sink.split.i232.i ]
  %.078.ph.i.i = phi i8 [ 4, %bb.dp ], [ 4, %bb.do ], [ 1, %bb.di ], [ 1, %bb.dk ], [ 4, %bb.dm ], [ 1, %bb.dl ], [ %.078.ph.ph.i.i, %.sink.split.i232.i ]
  %.077.ph.i.i = phi i64 [ 16, %bb.dp ], [ 16, %bb.do ], [ 4, %bb.di ], [ 4, %bb.dk ], [ 16, %bb.dm ], [ 4, %bb.dl ], [ %.077.ph.ph.i.i, %.sink.split.i232.i ] ; 2 uses
  store i8 %.078.ph.i.i, ptr %i.r, align 1, !tbaa !91
  %i.ki = call i32 @Curl_bufq_write(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.r, i64 noundef 1, ptr noundef nonnull %i.s) #6
  %i.kj = icmp ne i32 %i.ki, 0
  %i.kk = load i64, ptr %i.s, align 8
  %i.kl = icmp ne i64 %i.kk, 1
  %or.cond7.i.i = select i1 %i.kj, i1 true, i1 %i.kl
  br i1 %or.cond7.i.i, label %socks5_resolving.exit.thread.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.km = call i32 @Curl_bufq_write(ptr noundef nonnull %i.bb, ptr noundef nonnull %.079.ph.i.i, i64 noundef %.077.ph.i.i, ptr noundef nonnull %i.s) #6
  %.not99.i.i = icmp eq i32 %i.km, 0
  %i.kn = load i64, ptr %i.s, align 8
  %.not100.i.i = icmp eq i64 %i.kn, %.077.ph.i.i
  %or.cond101.i.i = select i1 %.not99.i.i, i1 %.not100.i.i, i1 false
  br i1 %or.cond101.i.i, label %bb.dt, label %socks5_resolving.exit.thread.i

bb.dt:                                            ; preds = %bb.ds
  %7 = load i16, ptr %i.bi, align 8, !tbaa !89    ; 2 uses
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  store i8 %9, ptr %i.r, align 1, !tbaa !91
  %i.ko = trunc i16 %7 to i8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !91
  %i.kq = call i32 @Curl_bufq_write(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.r, i64 noundef 2, ptr noundef nonnull %i.s) #6
  %i.kr = icmp eq i32 %i.kq, 0
  %i.ks = load i64, ptr %i.s, align 8
  %i.kt = icmp eq i64 %i.ks, 2
  %or.cond10.not.i.i = select i1 %i.kr, i1 %i.kt, i1 false
  br i1 %or.cond10.not.i.i, label %bb.dw, label %socks5_resolving.exit.thread.i

socks5_resolving.exit.thread.i:                   ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dh, %bb.dd, %bb.db
  %.081.i271.i = phi i32 [ 31, %bb.db ], [ 27, %bb.dd ], [ 27, %bb.dq ], [ 30, %bb.dt ], [ 30, %bb.ds ], [ 30, %bb.dr ], [ 27, %bb.dh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  %i.ku = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.kv = icmp eq i32 %i.ku, 17
  br i1 %i.kv, label %socks_failed.exit234.i, label %bb.du

bb.du:                                            ; preds = %socks5_resolving.exit.thread.i
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit234.i

socks_failed.exit234.i:                           ; preds = %bb.du, %socks5_resolving.exit.thread.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store i32 %.081.i271.i, ptr %i.kw, align 8, !tbaa !101
  br label %socks5_connect.exit

bb.dv:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  br label %socks5_connect.exit

bb.dw:                                            ; preds = %bb.dt
  store i8 1, ptr %i.ah, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  %i.kx = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.ky = icmp eq i32 %i.kx, 14
  br i1 %i.ky, label %socksstate.exit235.i, label %socksstate.exit235.sink.split.i

socksstate.exit235.sink.split.i:                  ; preds = %bb.dw, %bb.cx
  store i32 14, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit235.i

socksstate.exit235.i:                             ; preds = %socksstate.exit235.sink.split.i, %bb.dw, %bb.cx, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dy, %socksstate.exit235.i
  %i.kz = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.bb) #6
  br i1 %i.kz, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.la = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.lb = call i32 @Curl_cf_send_bufq(ptr noundef %i.la, ptr noundef %1, ptr noundef nonnull %i.bb, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.p) #6 ; 2 uses
  switch i32 %i.lb, label %bb.dz [
    i32 81, label %.loopexit.i
    i32 0, label %bb.dx
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.lc = call ptr @curl_easy_strerror(i32 noundef %i.lb) #6
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %i.lc) #6
  %i.ld = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.le = icmp eq i32 %i.ld, 17
  br i1 %i.le, label %socks_failed.exit239.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit239.i

socks_failed.exit239.i:                           ; preds = %bb.ea, %bb.dz
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  store i32 29, ptr %i.lf, align 8, !tbaa !101
  br label %socks5_connect.exit

.loopexit.i:                                      ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  br label %socks5_connect.exit

bb.eb:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  %i.lg = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.lh = icmp eq i32 %i.lg, 15
  br i1 %i.lh, label %socksstate.exit240.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i32 15, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit240.i

socksstate.exit240.i:                             ; preds = %bb.ec, %bb.eb, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  %i.li = call fastcc i32 @socks_recv(ptr noundef nonnull %i.ak, ptr noundef nonnull readonly %0, ptr noundef %1, i64 noundef 8, ptr noundef nonnull %i.ah) ; 2 uses
  %.not.i241.i = icmp eq i32 %i.li, 0
  br i1 %.not.i241.i, label %bb.ed, label %socks5_recv_resp1.exit.thread.i

bb.ed:                                            ; preds = %socksstate.exit240.i
  %i.lj = load i8, ptr %i.ah, align 1, !tbaa !18, !range !97, !noundef !98
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.ee, label %socks5_recv_resp1.exit.thread286.thread.i

bb.ee:                                            ; preds = %bb.ed
  %i.ll = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #6
  %i.lm = load i64, ptr %i.o, align 8
  %i.ln = icmp ugt i64 %i.lm, 7
  %or.cond.not.i243.i = select i1 %i.ll, i1 %i.ln, i1 false
  br i1 %or.cond.not.i243.i, label %bb.ef, label %socks5_recv_resp1.exit.thread.sink.split.i

bb.ef:                                            ; preds = %bb.ee
  %i.lo = load ptr, ptr %i.n, align 8, !tbaa !92  ; 4 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !91
  %.not37.i.i = icmp eq i8 %i.lp, 5
  br i1 %.not37.i.i, label %bb.eg, label %socks5_recv_resp1.exit.thread.sink.split.i

bb.eg:                                            ; preds = %bb.ef
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !91  ; 4 uses
  %.not38.i244.i = icmp eq i8 %i.lr, 0
  br i1 %.not38.i244.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ls = zext i8 %i.lr to i32
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.bf, i32 noundef %i.ls) #6
  %i.lt = icmp ult i8 %i.lr, 9
  br i1 %i.lt, label %socks5_recv_resp1.exit.i, label %socks5_recv_resp1.exit.thread.i

bb.ei:                                            ; preds = %bb.eg
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 3
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !91
  switch i8 %i.lv, label %socks5_recv_resp1.exit.thread.sink.split.i [
    i8 1, label %bb.el
    i8 3, label %bb.ej
    i8 4, label %bb.ek
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !91
  %i.ly = zext i8 %i.lx to i64
  %i.lz = add nuw nsw i64 %i.ly, 7
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %.031.i.i = phi i64 [ 22, %bb.ek ], [ %i.lz, %bb.ej ], [ 10, %bb.ei ] ; 2 uses
  %i.ma = call fastcc i32 @socks_recv(ptr noundef nonnull %i.ak, ptr noundef nonnull readonly %0, ptr noundef %1, i64 noundef %.031.i.i, ptr noundef nonnull %i.ah) ; 2 uses
  %.not39.i245.i = icmp eq i32 %i.ma, 0
  br i1 %.not39.i245.i, label %bb.em, label %socks5_recv_resp1.exit.thread.i

bb.em:                                            ; preds = %bb.el
  %i.mb = load i8, ptr %i.ah, align 1, !tbaa !18, !range !97, !noundef !98
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.en, label %socks5_recv_resp1.exit.thread286.thread.i

bb.en:                                            ; preds = %bb.em
  %i.md = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #6
  %i.me = load i64, ptr %i.o, align 8
  %i.mf = icmp uge i64 %i.me, %.031.i.i
  %or.cond44.not.i.i = select i1 %i.md, i1 %i.mf, i1 false
  br i1 %or.cond44.not.i.i, label %bb.ep, label %socks5_recv_resp1.exit.thread.sink.split.i

socks5_recv_resp1.exit.thread.sink.split.i:       ; preds = %bb.en, %bb.ei, %bb.ef, %bb.ee
  %.str.30.sink.i = phi ptr [ @.str.33, %bb.ei ], [ @.str.30, %bb.ee ], [ @.str.31, %bb.ef ], [ @.str.30, %bb.en ]
  %.032.i242.ph.ph.i = phi i32 [ 1, %bb.ei ], [ 15, %bb.ee ], [ 2, %bb.ef ], [ 15, %bb.en ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull %.str.30.sink.i) #6
  br label %socks5_recv_resp1.exit.thread.i

socks5_recv_resp1.exit.thread286.thread.i:        ; preds = %bb.em, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  br label %socks5_connect.exit

socks5_recv_resp1.exit.i:                         ; preds = %bb.eh
  %i.mg = zext nneg i8 %i.lr to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr @socks5_recv_resp1.lookup, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !95
  br label %socks5_recv_resp1.exit.thread.i

socks5_recv_resp1.exit.thread.i:                  ; preds = %socks5_recv_resp1.exit.i, %socks5_recv_resp1.exit.thread.sink.split.i, %bb.el, %bb.eh, %socksstate.exit240.i
  %.032.i242284.i = phi i32 [ %i.mi, %socks5_recv_resp1.exit.i ], [ %i.ma, %bb.el ], [ %i.li, %socksstate.exit240.i ], [ 25, %bb.eh ], [ %.032.i242.ph.ph.i, %socks5_recv_resp1.exit.thread.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  %i.mj = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.mk = icmp eq i32 %i.mj, 17
  br i1 %i.mk, label %socks_failed.exit246.i, label %bb.eo

bb.eo:                                            ; preds = %socks5_recv_resp1.exit.thread.i
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit246.i

socks_failed.exit246.i:                           ; preds = %bb.eo, %socks5_recv_resp1.exit.thread.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store i32 %.032.i242284.i, ptr %i.ml, align 8, !tbaa !101
  br label %socks5_connect.exit

bb.ep:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  br i1 %.not51.i.i, label %bb.ev, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.mm = load i32, ptr %i.bj, align 1
  %i.mn = and i32 %i.mm, 134217728
  %.not189.i = icmp eq i32 %i.mn, 0
  br i1 %.not189.i, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.mo = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 2 uses
  %.not190.i = icmp eq ptr %i.mo, null
  br i1 %.not190.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !87
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.er, %bb.es
  %i.ms = load ptr, ptr %0, align 8, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !88
  %i.mv = icmp sgt i32 %i.mu, 0
  br i1 %i.mv, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #6
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es, %bb.eq, %bb.ep
  %i.mw = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.mx = icmp eq i32 %i.mw, 16
  br i1 %i.mx, label %socks5_connect.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  store i32 16, ptr %i.ak, align 8, !tbaa !30
  br label %socks5_connect.exit

bb.ex:                                            ; preds = %bb.f
  %i.my = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !101
  br label %socks5_connect.exit

socks_failed.exit248.i:                           ; preds = %bb.f
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  %i.na = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store i32 30, ptr %i.na, align 8, !tbaa !101
  br label %socks5_connect.exit

socks5_connect.exit:                              ; preds = %bb.f, %socks_failed.exit.i, %socks_failed.exit200.i, %.loopexit289.i, %socks_failed.exit202.i, %bb.al, %socks_failed.exit205.i, %socks_failed.exit206.i, %socks_failed.exit209.i, %socks_failed.exit214.i, %.loopexit290.i, %socks_failed.exit216.i, %bb.by, %socks_failed.exit220.i, %socks_failed.exit226.i, %socks_failed.exit234.i, %bb.dv, %socks_failed.exit239.i, %.loopexit.i, %socks5_recv_resp1.exit.thread286.thread.i, %socks_failed.exit246.i, %bb.ev, %bb.ew, %bb.ex, %socks_failed.exit248.i
  %.0.i = phi i32 [ 30, %socks_failed.exit248.i ], [ %.024.i.ph.i, %socks_failed.exit.i ], [ 29, %socks_failed.exit200.i ], [ %i.dm, %socks_failed.exit202.i ], [ %.0.i203.ph.i, %socks_failed.exit205.i ], [ 0, %bb.ew ], [ %i.mz, %bb.ex ], [ 5, %socks_failed.exit206.i ], [ %.033.i.ph.i, %socks_failed.exit209.i ], [ 29, %socks_failed.exit214.i ], [ %i.fz, %socks_failed.exit216.i ], [ %.0.i218.ph.i, %socks_failed.exit220.i ], [ %.0.i224.i, %socks_failed.exit226.i ], [ %.081.i271.i, %socks_failed.exit234.i ], [ 29, %socks_failed.exit239.i ], [ %.032.i242284.i, %socks_failed.exit246.i ], [ 0, %socks5_recv_resp1.exit.thread286.thread.i ], [ 0, %.loopexit.i ], [ 0, %bb.dv ], [ 0, %bb.ev ], [ 0, %.loopexit290.i ], [ 0, %.loopexit289.i ], [ 0, %bb.al ], [ 0, %bb.by ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #6
  br label %bb.hm

bb.ey:                                            ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 11 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ak, i64 107 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 10 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 2049 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 4296 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ak, i64 108 ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ak, i64 80 ; 2 uses
  %.pre.i68 = load i32, ptr %i.ak, align 8, !tbaa !30
  switch i32 %.pre.i68, label %socks_failed.exit171.i [
    i32 0, label %socksstate.exit.i82
    i32 1, label %bb.fa
    i32 2, label %socksstate.exit153.loopexit.i
    i32 3, label %socksstate.exit165.i
    i32 4, label %socksstate.exit167.i
    i32 16, label %socks4_connect.exit
    i32 17, label %bb.hl
  ]

bb.ez:                                            ; preds = %bb.fv, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  br label %socksstate.exit165.i

socksstate.exit.i82:                              ; preds = %bb.ey
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ak, i64 106
  store i8 4, ptr %i.nn, align 2, !tbaa !99
  store i32 1, ptr %i.ak, align 8, !tbaa !30
  br label %bb.fa

bb.fa:                                            ; preds = %socksstate.exit.i82, %bb.ey
  tail call void @Curl_bufq_reset(ptr noundef nonnull %i.nb) #6
  %i.no = load i8, ptr %i.nc, align 1
  %i.np = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.nq = icmp ne i8 %i.np, 6                     ; 3 uses
  %i.nr = select i1 %i.nq, i8 0, i8 4
  %i.ns = and i8 %i.no, -8
  %i.nt = zext i1 %i.nq to i8
  %i.nu = or disjoint i8 %i.ns, %i.nt
  %i.nv = or disjoint i8 %i.nu, %i.nr
  store i8 %i.nv, ptr %i.nc, align 1
  store i32 0, ptr %i.nd, align 8, !tbaa !101
  store i8 1, ptr %i.ne, align 8, !tbaa !94
  br i1 %.not.i, label %bb.fg, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.nw = load i32, ptr %i.nf, align 1
  %i.nx = and i32 %i.nw, 134217728
  %.not133.i = icmp eq i32 %i.nx, 0
  br i1 %.not133.i, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ny = load ptr, ptr %i.ng, align 8, !tbaa !85 ; 2 uses
  %.not134.i = icmp eq ptr %i.ny, null
  br i1 %.not134.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !87
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fc, %bb.fd
  %i.oc = load ptr, ptr %0, align 8, !tbaa !20
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !88
  %i.of = icmp sgt i32 %i.oe, 0
  br i1 %i.of, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.og = select i1 %i.nq, ptr @.str.4, ptr @.str.35
  %i.oh = load i16, ptr %i.ni, align 8, !tbaa !89
  %i.oi = zext i16 %i.oh to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.og, ptr noundef nonnull %i.nh, i32 noundef %i.oi) #6
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fb, %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  store i8 4, ptr %i.i, align 1, !tbaa !91
  store i8 1, ptr %i.nj, align 1, !tbaa !91
  %10 = load i16, ptr %i.ni, align 8, !tbaa !89   ; 2 uses
  %11 = lshr i16 %10, 8
  %12 = trunc nuw i16 %11 to i8
  store i8 %12, ptr %i.nk, align 1, !tbaa !91
  %i.oj = trunc i16 %10 to i8
  store i8 %i.oj, ptr %i.nl, align 1, !tbaa !91
  %i.ok = call i32 @Curl_bufq_write(ptr noundef nonnull %i.nb, ptr noundef nonnull %i.i, i64 noundef 4, ptr noundef nonnull %i.j) #6
  %i.ol = icmp eq i32 %i.ok, 0
  %i.om = load i64, ptr %i.j, align 8
  %i.on = icmp eq i64 %i.om, 4
  %or.cond.i.not.i = select i1 %i.ol, i1 %i.on, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br i1 %or.cond.i.not.i, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.oo = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.op = icmp eq i32 %i.oo, 17
  br i1 %i.op, label %socks_failed.exit.i76, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit.i76

socks_failed.exit.i76:                            ; preds = %bb.fi, %bb.fh
  store i32 30, ptr %i.nd, align 8, !tbaa !101
  br label %socks4_connect.exit

bb.fj:                                            ; preds = %bb.fg
  %i.oq = load i8, ptr %i.nc, align 1             ; 2 uses
  %i.or = and i8 %i.oq, 1
  %.not137.i = icmp eq i8 %i.or, 0
  br i1 %.not137.i, label %bb.fk, label %bb.fw

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  store i32 16777216, ptr %i.m, align 4
  %i.os = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nh) #7
  %i.ot = add i64 %i.os, 1                        ; 3 uses
  %i.ou = icmp ugt i64 %i.ot, 255
  br i1 %i.ou, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.36) #6
  %i.ov = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.ow = icmp eq i32 %i.ov, 17
  br i1 %i.ow, label %socksstate.exit152.thread.i, label %socksstate.exit152.thread.sink.split.i

bb.fm:                                            ; preds = %bb.fk
  %i.ox = call i32 @Curl_bufq_write(ptr noundef nonnull %i.nb, ptr noundef nonnull %i.m, i64 noundef 4, ptr noundef nonnull %i.k) #6
  %i.oy = icmp ne i32 %i.ox, 0
  %i.oz = load i64, ptr %i.k, align 8
  %i.pa = icmp ne i64 %i.oz, 4
  %or.cond4.i77 = select i1 %i.oy, i1 true, i1 %i.pa
  br i1 %or.cond4.i77, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.pb = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.pc = icmp eq i32 %i.pb, 17
  br i1 %i.pc, label %socksstate.exit152.thread.i, label %socksstate.exit152.thread.sink.split.i

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.pd = load ptr, ptr %i.nm, align 8, !tbaa !90 ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i78, label %bb.fr, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.pe = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pd) #7 ; 2 uses
  %i.pf = icmp ugt i64 %i.pe, 255
  br i1 %i.pf, label %.thread.i.i80, label %bb.fq

.thread.i.i80:                                    ; preds = %bb.fp
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.37) #6
  br label %.loopexit187.i

bb.fq:                                            ; preds = %bb.fp
  %i.pg = add nuw nsw i64 %i.pe, 1                ; 2 uses
  %i.ph = call i32 @Curl_bufq_cwrite(ptr noundef nonnull %i.nb, ptr noundef nonnull %i.pd, i64 noundef %i.pg, ptr noundef nonnull %i.g) #6
  %.not21.i.i = icmp eq i32 %i.ph, 0
  %i.pi = load i64, ptr %i.g, align 8
  %.not22.i.i79 = icmp eq i64 %i.pi, %i.pg
  %or.cond.i149.i = select i1 %.not21.i.i, i1 %.not22.i.i79, i1 false
  br i1 %or.cond.i149.i, label %bb.fs, label %.loopexit187.i

bb.fr:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  store i8 0, ptr %i.h, align 1, !tbaa !91
  %i.pj = call i32 @Curl_bufq_write(ptr noundef nonnull %i.nb, ptr noundef nonnull %i.h, i64 noundef 1, ptr noundef nonnull %i.g) #6
  %i.pk = icmp eq i32 %i.pj, 0
  %i.pl = load i64, ptr %i.g, align 8
  %i.pm = icmp eq i64 %i.pl, 1
  %or.cond.not.i.i81 = select i1 %i.pk, i1 %i.pm, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br i1 %or.cond.not.i.i81, label %bb.fs, label %.loopexit187.i

.loopexit187.i:                                   ; preds = %bb.fr, %bb.fq, %.thread.i.i80
  %.2.i.ph.i = phi i32 [ 11, %.thread.i.i80 ], [ 30, %bb.fr ], [ 30, %bb.fq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %i.pn = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.po = icmp eq i32 %i.pn, 17
  br i1 %i.po, label %socksstate.exit152.thread.i, label %socksstate.exit152.thread.sink.split.i

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %i.pp = call i32 @Curl_bufq_cwrite(ptr noundef nonnull %i.nb, ptr noundef nonnull %i.nh, i64 noundef %i.ot, ptr noundef nonnull %i.k) #6
  %.not139.i = icmp eq i32 %i.pp, 0
  %i.pq = load i64, ptr %i.k, align 8
  %.not140.i = icmp eq i64 %i.pq, %i.ot
  %or.cond146.i = select i1 %.not139.i, i1 %.not140.i, i1 false
  %i.pr = load i32, ptr %i.ak, align 8, !tbaa !30 ; 2 uses
  br i1 %or.cond146.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ps = icmp eq i32 %i.pr, 17
  br i1 %i.ps, label %socksstate.exit152.thread.i, label %socksstate.exit152.thread.sink.split.i

bb.fu:                                            ; preds = %bb.fs
  %i.pt = icmp eq i32 %i.pr, 3
  br i1 %i.pt, label %bb.ez, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store i32 3, ptr %i.ak, align 8, !tbaa !30
  br label %bb.ez

socksstate.exit152.thread.sink.split.i:           ; preds = %bb.ft, %.loopexit187.i, %bb.fn, %bb.fl
  %.sink.ph.i = phi i32 [ %.2.i.ph.i, %.loopexit187.i ], [ 9, %bb.fl ], [ 30, %bb.fn ], [ 30, %bb.ft ]
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit152.thread.i

socksstate.exit152.thread.i:                      ; preds = %socksstate.exit152.thread.sink.split.i, %bb.ft, %.loopexit187.i, %bb.fn, %bb.fl
  %.1.ph.i = phi i32 [ 30, %bb.fn ], [ %.2.i.ph.i, %.loopexit187.i ], [ 30, %bb.ft ], [ 9, %bb.fl ], [ %.sink.ph.i, %socksstate.exit152.thread.sink.split.i ] ; 2 uses
  store i32 %.1.ph.i, ptr %i.nd, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  br label %socks4_connect.exit

bb.fw:                                            ; preds = %bb.fj
  %i.pu = or i8 %i.oq, 2                          ; 3 uses
  store i8 %i.pu, ptr %i.nc, align 1
  %i.pv = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.pw = icmp eq i32 %i.pv, 2
  br i1 %i.pw, label %socksstate.exit153.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  store i32 2, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit153.i

socksstate.exit153.loopexit.i:                    ; preds = %bb.ey
  %.pre223.i = load i8, ptr %i.nc, align 1
  br label %socksstate.exit153.i

socksstate.exit153.i:                             ; preds = %socksstate.exit153.loopexit.i, %bb.fx, %bb.fw
  %i.px = phi i8 [ %.pre223.i, %socksstate.exit153.loopexit.i ], [ %i.pu, %bb.fx ], [ %i.pu, %bb.fw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.py = and i8 %i.px, 2
  %.not.i154.i = icmp eq i8 %i.py, 0
  br i1 %.not.i154.i, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %socksstate.exit153.i
  %i.pz = and i8 %i.px, -3
  store i8 %i.pz, ptr %i.nc, align 1
  %i.qa = load i8, ptr %i.ne, align 8, !tbaa !94
  %i.qb = call zeroext i8 @Curl_resolv_dns_queries(ptr noundef %1, i8 noundef zeroext %i.qa) #6
  %i.qc = load i16, ptr %i.ni, align 8, !tbaa !89
  %i.qd = call i32 @Curl_cf_dns_insert_after(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %i.qb, ptr noundef nonnull %i.nh, i16 noundef zeroext %i.qc, i8 noundef zeroext 3, i1 noundef zeroext true) #6
  %.not44.i.i70 = icmp eq i32 %i.qd, 0
  br i1 %.not44.i.i70, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.25) #6
  br label %bb.gm

bb.ga:                                            ; preds = %bb.fy, %socksstate.exit153.i
  %i.qe = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.qf = call i32 @Curl_conn_cf_connect(ptr noundef %i.qe, ptr noundef %1, ptr noundef nonnull %i.e) #6
  %.not45.i.i71 = icmp eq i32 %i.qf, 0
  br i1 %.not45.i.i71, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.nh) #6
  br label %bb.gm

bb.gc:                                            ; preds = %bb.ga
  %i.qg = load i8, ptr %i.e, align 1, !tbaa !18, !range !97, !noundef !98
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.gd, label %bb.go

bb.gd:                                            ; preds = %bb.gc
  %i.qi = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.qj = call ptr @Curl_cf_dns_get_ai(ptr noundef %i.qi, ptr noundef %1, i32 noundef 2, i32 noundef 0) #6 ; 3 uses
  %.not46.i.i72 = icmp eq ptr %i.qj, null
  br i1 %.not46.i.i72, label %bb.gl, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @Curl_printable_address(ptr noundef nonnull %i.qj, ptr noundef nonnull %i.f, i64 noundef 64) #6
  br i1 %.not.i, label %bb.gk, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.qk = load i32, ptr %i.nf, align 1
  %i.ql = and i32 %i.qk, 134217728
  %.not48.i.i73 = icmp eq i32 %i.ql, 0
  br i1 %.not48.i.i73, label %bb.gk, label %bb.gg

end_hunk_1
