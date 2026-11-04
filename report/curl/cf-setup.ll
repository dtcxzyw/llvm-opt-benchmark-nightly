Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cf-setup?download=true
inline.NumInlined: 9
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Curl_cftype = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@Curl_cft_setup = global %struct.Curl_cftype { ptr @.str, i32 32, i32 0, ptr @cf_setup_destroy, ptr @cf_setup_connect, ptr @Curl_cf_def_shutdown, ptr @Curl_cf_def_adjust_pollset, ptr @Curl_cf_def_data_pending, ptr @Curl_cf_def_send, ptr @Curl_cf_def_recv, ptr @Curl_cf_def_cntrl, ptr @Curl_cf_def_conn_is_alive, ptr @Curl_cf_def_conn_keep_alive, ptr @Curl_cf_def_query }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@Curl_cfree = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"retrying connect, %d. time\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cf_setup_connect\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"HTTP/3 proxy not possible via SOCKS\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"adding happy eyeballs failed -> %d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"happy eyeballing to HTTP/3 proxy %s:%u\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"happy eyeballing to %s %s:%u\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"adding SOCKS filter failed -> %d\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"added SOCKS filter to %s:%u\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"adding SSL filter for HTTP proxy failed -> %d\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"added SSL filter for HTTP proxy\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"adding HTTP proxy tunnel filter failed -> %d\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"added HTTP proxy tunnel filter\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"haproxy protocol does not support QUIC\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"adding HAPROXY filter failed -> %d\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"added HAPROXY filter\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"adding SSL filter for origin failed -> %d\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"added SSL filter for origin\00", align 1
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define internal void @cf_setup_destroy(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.d = load i64, ptr %i.c, align 1
  %i.e = and i64 %i.d, 536870912
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !81
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %i.o = load ptr, ptr @Curl_cfree, align 8, !tbaa !82
  tail call void %i.o(ptr noundef %i.b) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 82, 81) i32 @cf_setup_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4
  %3 = and i8 %i.d, 1
  %.not.i46 = icmp eq i8 %3, 0
  br i1 %.not.i46, label %.preheader.i.lr.ph, label %._crit_edge

.preheader.i.lr.ph:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %.not92.i.i = icmp eq ptr %1, null              ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4504 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.lr.ph, %bb.dr
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %.backedge.i

._crit_edge:                                      ; preds = %bb.dr, %bb.a
  store i8 1, ptr %2, align 1, !tbaa !89
  br label %cf_setup_connect_steps.exit.thread

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
  %i.l = load i32, ptr %i.e, align 8, !tbaa !90
  tail call void @Curl_conn_trc_filters(ptr noundef %1, i32 noundef %i.l, ptr noundef nonnull @.str.3) #3
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %.not57.i = icmp eq ptr %i.m, null
  br i1 %.not57.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.backedge.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.o = load i8, ptr %i.n, align 4
  %4 = and i8 %i.o, 1
  %.not58.i = icmp eq i8 %4, 0
  br i1 %.not58.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @Curl_conn_cf_connect(ptr noundef nonnull %i.m, ptr noundef %1, ptr noundef %2) #3 ; 2 uses
  %.not59.i = icmp eq i32 %i.p, 0
  br i1 %.not59.i, label %bb.d, label %cf_setup_connect_steps.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %2, align 1, !tbaa !89, !range !92, !noundef !93
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %cf_setup_connect_steps.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b, %.backedge.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !84
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %cf_setup_add_ip_happy.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !94   ; 4 uses
  %i.w = load i32, ptr %i.e, align 8, !tbaa !90   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.g, label %conn_get_first_origin.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !101 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i.i.i, label %bb.h, label %conn_get_first_origin.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i32 %i.w, 1
  %.in.v.i.i.i = select i1 %i.ab, i64 160, i64 144
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.in.v.i.i.i
  %i.ac = load ptr, ptr %.in.i.i.i, align 8, !tbaa !102
  br label %conn_get_first_origin.exit.i.i

conn_get_first_origin.exit.i.i:                   ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.y, %bb.f ], [ %i.aa, %bb.g ]
  %i.ad = tail call ptr @Curl_conn_get_first_peer(ptr noundef nonnull %i.v, i32 noundef %i.w) #3 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !85  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %cf_setup_connect_steps.exit.thread, label %bb.i

bb.i:                                             ; preds = %conn_get_first_origin.exit.i.i
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !94  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !101
  %.not85.i.i = icmp eq ptr %i.ai, null
  br i1 %.not85.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 720
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = and i32 %i.ak, 2
  %.not86.i.i = icmp eq i32 %i.al, 0
  br i1 %.not86.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %i.an = load i8, ptr %i.am, align 8, !tbaa !103
  %i.ao = tail call zeroext i8 @Curl_http_proxy_transport(i8 noundef zeroext %i.an) #3 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !90
  %i.ar = tail call ptr @Curl_conn_get_destination(ptr noundef %i.ap, i32 noundef %i.aq) #3 ; 2 uses
  %i.as = icmp eq i8 %i.ao, 5
  br i1 %i.as, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !100
  %.not87.i.i = icmp eq ptr %i.av, null
  br i1 %.not87.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.4) #3
  br label %cf_setup_connect_steps.exit.thread

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.073.i.i = phi ptr [ null, %bb.j ], [ %i.ar, %bb.l ], [ %i.ar, %bb.k ], [ null, %bb.i ] ; 2 uses
  %.072.i.i = phi i8 [ %i.af, %bb.j ], [ 5, %bb.l ], [ %i.ao, %bb.k ], [ %i.af, %bb.i ] ; 2 uses
  %i.aw = load i8, ptr %i.ae, align 4, !tbaa !85
  %i.ax = tail call i32 @cf_ip_happy_insert_after(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.0.i.i.i, ptr noundef nonnull %i.ad, i8 noundef zeroext %.072.i.i, ptr noundef %.073.i.i, i8 noundef zeroext %i.aw) #3 ; 7 uses
  %.not88.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not88.i.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not92.i.i, label %cf_setup_connect_steps.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.h, align 1
  %i.az = and i64 %i.ay, 536870912
  %.not96.i.i = icmp eq i64 %i.az, 0
  br i1 %.not96.i.i, label %cf_setup_connect_steps.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not97.i.i = icmp eq ptr %i.ba, null
  br i1 %.not97.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !78
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.s, label %cf_setup_connect_steps.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.be = load ptr, ptr %0, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !81
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %cf_setup_connect_steps.exit

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.ax) #3
  br label %cf_setup_connect_steps.exit

bb.u:                                             ; preds = %bb.n
  %i.bi = icmp ne ptr %.073.i.i, null             ; 2 uses
  %i.bj = icmp eq i8 %.072.i.i, 5
  %or.cond5.i.i = and i1 %i.bi, %i.bj
  br i1 %or.cond5.i.i, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  br i1 %.not92.i.i, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load i64, ptr %i.h, align 1
  %i.bl = and i64 %i.bk, 536870912
  %.not93.i.i.a = icmp eq i64 %i.bl, 0
  br i1 %.not93.i.i.a, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not94.i.i = icmp eq ptr %i.bm, null
  br i1 %.not94.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !78
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bq = load ptr, ptr %0, align 8, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !81
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !105
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !106
  %i.by = zext i16 %i.bx to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %i.bv, i32 noundef %i.by) #3
  br label %bb.ah

bb.ab:                                            ; preds = %bb.u
  br i1 %.not92.i.i, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load i64, ptr %i.h, align 1
  %i.ca = and i64 %i.bz, 536870912
  %.not90.i.i.a = icmp eq i64 %i.ca, 0
  br i1 %.not90.i.i.a, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not91.i.i = icmp eq ptr %i.cb, null
  br i1 %.not91.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !78
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cf = load ptr, ptr %0, align 8, !tbaa !79
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !81
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cj = select i1 %i.bi, ptr @.str.8, ptr @.str.9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !105
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !106
  %i.co = zext i16 %i.cn to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.cj, ptr noundef %i.cl, i32 noundef %i.co) #3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v
  %storemerge.i.i = phi i32 [ 3, %bb.v ], [ 3, %bb.aa ], [ 3, %bb.z ], [ 1, %bb.ab ], [ 3, %bb.y ], [ 3, %bb.w ], [ 1, %bb.ag ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.ae ]
  store i32 %storemerge.i.i, ptr %i.s, align 4, !tbaa !84
  br label %cf_setup_add_ip_happy.exit.i

cf_setup_add_ip_happy.exit.i:                     ; preds = %bb.ah, %bb.e
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !91  ; 2 uses
  %.not61.i = icmp eq ptr %i.cp, null
  br i1 %.not61.i, label %.backedge.i.backedge, label %bb.ai

bb.ai:                                            ; preds = %cf_setup_add_ip_happy.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.cr = load i8, ptr %i.cq, align 4
  %5 = and i8 %i.cr, 1
  %.not62.i = icmp eq i8 %5, 0
  br i1 %.not62.i, label %.backedge.i.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !84
  %i.cu = icmp ult i32 %i.ct, 2
  br i1 %i.cu, label %bb.ak, label %cf_setup_add_socks.exit.thread.i.thread

bb.ak:                                            ; preds = %bb.aj
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !94  ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 176
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !100
  %.not.i75.i = icmp eq ptr %i.cx, null
  br i1 %.not.i75.i, label %cf_setup_add_socks.exit.thread.i.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 200
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.cz, null
  br i1 %.not53.i.i, label %bb.am, label %.thread.i.i

bb.am:                                            ; preds = %bb.al
  %i.da = load i32, ptr %i.e, align 8, !tbaa !90
  %i.db = tail call ptr @Curl_conn_get_destination(ptr noundef nonnull %i.cv, i32 noundef %i.da) #3 ; 2 uses
  %.not54.i.i = icmp eq ptr %i.db, null
  br i1 %.not54.i.i, label %cf_setup_connect_steps.exit.thread, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.am
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !94
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread_crit_edge.i.i, %bb.al
  %i.dc = phi ptr [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %i.cv, %bb.al ] ; 3 uses
  %.04264.i.i = phi ptr [ %i.db, %..thread_crit_edge.i.i ], [ %i.cz, %bb.al ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 789
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !107
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !108
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 184
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !109
  %i.dj = tail call i32 @Curl_cf_socks_proxy_insert_after(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.04264.i.i, i8 noundef zeroext %i.de, i8 noundef zeroext %i.dg, ptr noundef %i.di) #3 ; 7 uses
  %.not55.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not55.i.i, label %bb.at, label %bb.an

bb.an:                                            ; preds = %.thread.i.i
  br i1 %.not92.i.i, label %cf_setup_connect_steps.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = load i64, ptr %i.h, align 1
  %i.dl = and i64 %i.dk, 536870912
  %.not60.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not60.i.i, label %cf_setup_connect_steps.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not61.i.i = icmp eq ptr %i.dm, null
  br i1 %.not61.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !78
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %bb.ar, label %cf_setup_connect_steps.exit

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dq = load ptr, ptr %0, align 8, !tbaa !79
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !81
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.as, label %cf_setup_connect_steps.exit

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i32 noundef %i.dj) #3
  br label %cf_setup_connect_steps.exit

bb.at:                                            ; preds = %.thread.i.i
  br i1 %.not92.i.i, label %cf_setup_add_socks.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.du = load i64, ptr %i.h, align 1
  %i.dv = and i64 %i.du, 536870912
  %.not57.i.i.a = icmp eq i64 %i.dv, 0
  br i1 %.not57.i.i.a, label %cf_setup_add_socks.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dw = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not58.i.i = icmp eq ptr %i.dw, null
  br i1 %.not58.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !78
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %bb.ax, label %cf_setup_add_socks.exit.i

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ea = load ptr, ptr %0, align 8, !tbaa !79
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !81
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.ay, label %cf_setup_add_socks.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.ee = getelementptr inbounds nuw i8, ptr %.04264.i.i, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !105
  %i.eg = getelementptr inbounds nuw i8, ptr %.04264.i.i, i64 32
  %i.eh = load i16, ptr %i.eg, align 8, !tbaa !106
  %i.ei = zext i16 %i.eh to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %i.ef, i32 noundef %i.ei) #3
  br label %cf_setup_add_socks.exit.i

cf_setup_add_socks.exit.i:                        ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.at
  store i32 2, ptr %i.cs, align 4, !tbaa !84
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !91 ; 2 uses
  %.not64.i = icmp eq ptr %.pre.i, null
  br i1 %.not64.i, label %.backedge.i.backedge, label %cf_setup_add_socks.exit.thread.i.a

cf_setup_add_socks.exit.thread.i.a:               ; preds = %cf_setup_add_socks.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 36
  %.pre = load i8, ptr %.phi.trans.insert, align 4
  %.pre66 = and i8 %.pre, 1
  %6 = icmp eq i8 %.pre66, 0
  br i1 %6, label %.backedge.i.backedge, label %cf_setup_add_socks.exit.thread.i.thread

cf_setup_add_socks.exit.thread.i.thread:          ; preds = %bb.aj, %bb.ak, %cf_setup_add_socks.exit.thread.i.a
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !84
  %i.el = icmp ult i32 %i.ek, 3
  br i1 %i.el, label %bb.az, label %cf_setup_add_http_proxy.exit.thread.i.thread

bb.az:                                            ; preds = %cf_setup_add_socks.exit.thread.i.thread
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !94  ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 200
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !101 ; 2 uses
  %.not.i77.i = icmp eq ptr %i.eo, null
  br i1 %.not.i77.i, label %cf_setup_add_http_proxy.exit.thread.i.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 720
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = and i32 %i.eq, 2
  %.not86.i78.i = icmp eq i32 %i.er, 0
  br i1 %.not86.i78.i, label %bb.bb, label %cf_setup_add_http_proxy.exit.thread.i.thread

bb.bb:                                            ; preds = %bb.ba
  %i.es = load i32, ptr %i.e, align 8, !tbaa !90
  %i.et = tail call ptr @Curl_conn_get_destination(ptr noundef nonnull %i.em, i32 noundef %i.es) #3
  %i.eu = load ptr, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 216
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !103
  switch i8 %i.ew, label %bb.bq [
    i8 2, label %bb.bc
    i8 3, label %bb.bc
    i8 8, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb
  %i.ex = load i32, ptr %i.e, align 8, !tbaa !90
  %i.ey = tail call zeroext i1 @Curl_conn_is_ssl(ptr noundef nonnull %i.eu, i32 noundef %i.ex) #3
  br i1 %i.ey, label %bb.bq, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ez = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 200
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !101
  %i.fc = tail call i32 @Curl_cf_ssl_proxy_insert_after(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.fb) #3 ; 7 uses
  %.not87.i79.i = icmp eq i32 %i.fc, 0
  br i1 %.not87.i79.i, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not92.i.i, label %cf_setup_connect_steps.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fd = load i64, ptr %i.h, align 1
  %i.fe = and i64 %i.fd, 536870912
  %.not92.i81.i = icmp eq i64 %i.fe, 0
  br i1 %.not92.i81.i, label %cf_setup_connect_steps.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ff = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not93.i82.i = icmp eq ptr %i.ff, null
  br i1 %.not93.i82.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !78
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %bb.bi, label %cf_setup_connect_steps.exit

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fj = load ptr, ptr %0, align 8, !tbaa !79
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !81
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %bb.bj, label %cf_setup_connect_steps.exit

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef %i.fc) #3
  br label %cf_setup_connect_steps.exit

bb.bk:                                            ; preds = %bb.bd
  br i1 %.not92.i.i, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fn = load i64, ptr %i.h, align 1
  %i.fo = and i64 %i.fn, 536870912
  %.not89.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not89.i.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not90.i83.i = icmp eq ptr %i.fp, null
  br i1 %.not90.i83.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !78
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ft = load ptr, ptr %0, align 8, !tbaa !79
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !81
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #3
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bc, %bb.bb
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fy = load i8, ptr %i.fx, align 4, !tbaa !85
  %i.fz = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 216
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !103
  %i.gc = tail call i32 @Curl_cf_http_proxy_insert_after(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.eo, ptr noundef %i.et, i8 noundef zeroext %i.fy, i8 noundef zeroext %i.gb) #3 ; 7 uses
  %.not94.i84.i = icmp eq i32 %i.gc, 0
  br i1 %.not94.i84.i, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %.not92.i.i, label %cf_setup_connect_steps.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gd = load i64, ptr %i.h, align 1
  %i.ge = and i64 %i.gd, 536870912
  %.not99.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not99.i.i, label %cf_setup_connect_steps.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gf = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not100.i.i = icmp eq ptr %i.gf, null
  br i1 %.not100.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !78
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %bb.bv, label %cf_setup_connect_steps.exit

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.gj = load ptr, ptr %0, align 8, !tbaa !79
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !81
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %bb.bw, label %cf_setup_connect_steps.exit

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %i.gc) #3
  br label %cf_setup_connect_steps.exit

bb.bx:                                            ; preds = %bb.bq
  br i1 %.not92.i.i, label %cf_setup_add_http_proxy.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gn = load i64, ptr %i.h, align 1
  %i.go = and i64 %i.gn, 536870912
  %.not96.i86.i = icmp eq i64 %i.go, 0
  br i1 %.not96.i86.i, label %cf_setup_add_http_proxy.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gp = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not97.i87.i = icmp eq ptr %i.gp, null
  br i1 %.not97.i87.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !78
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %bb.cb, label %cf_setup_add_http_proxy.exit.i

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.gt = load ptr, ptr %0, align 8, !tbaa !79
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !81
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %bb.cc, label %cf_setup_add_http_proxy.exit.i

bb.cc:                                            ; preds = %bb.cb
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #3
  br label %cf_setup_add_http_proxy.exit.i

cf_setup_add_http_proxy.exit.i:                   ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bx
  store i32 3, ptr %i.ej, align 4, !tbaa !84
  %.pre112.i = load ptr, ptr %i.f, align 8, !tbaa !91 ; 2 uses
  %.not67.i = icmp eq ptr %.pre112.i, null
  br i1 %.not67.i, label %.backedge.i.backedge, label %cf_setup_add_http_proxy.exit.thread.i.a

cf_setup_add_http_proxy.exit.thread.i.a:          ; preds = %cf_setup_add_http_proxy.exit.i
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %.pre112.i, i64 36
  %.pre61 = load i8, ptr %.phi.trans.insert60, align 4
  %.pre67 = and i8 %.pre61, 1
  %7 = icmp eq i8 %.pre67, 0
  br i1 %7, label %.backedge.i.backedge, label %cf_setup_add_http_proxy.exit.thread.i.thread

cf_setup_add_http_proxy.exit.thread.i.thread:     ; preds = %cf_setup_add_socks.exit.thread.i.thread, %bb.az, %bb.ba, %cf_setup_add_http_proxy.exit.thread.i.a
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !84
  %i.gz = icmp ult i32 %i.gy, 4
  br i1 %i.gz, label %bb.cd, label %cf_setup_add_haproxy.exit.thread.i.thread

bb.cd:                                            ; preds = %cf_setup_add_http_proxy.exit.thread.i.thread
  %i.ha = load i64, ptr %i.h, align 1
  %i.hb = and i64 %i.ha, 70368744177664
  %.not.i88.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i88.i, label %cf_setup_add_haproxy.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !85
  %i.he = icmp eq i8 %i.hd, 5
  br i1 %i.he, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.16) #3
  br label %cf_setup_connect_steps.exit.thread

bb.cg:                                            ; preds = %bb.ce
  %i.hf = tail call i32 @Curl_cf_haproxy_insert_after(ptr noundef nonnull %0, ptr noundef nonnull %1) #3 ; 6 uses
  %.not39.i.i = icmp eq i32 %i.hf, 0
  %i.hg = load i64, ptr %i.h, align 1
  %i.hh = and i64 %i.hg, 536870912
  %.not41.i.i.a = icmp eq i64 %i.hh, 0            ; 2 uses
  br i1 %.not39.i.i, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not41.i.i.a, label %cf_setup_connect_steps.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hi = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not45.i.i = icmp eq ptr %i.hi, null
  br i1 %.not45.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !78
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %bb.ck, label %cf_setup_connect_steps.exit

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.hm = load ptr, ptr %0, align 8, !tbaa !79
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !81
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %bb.cl, label %cf_setup_connect_steps.exit

bb.cl:                                            ; preds = %bb.ck
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %i.hf) #3
  br label %cf_setup_connect_steps.exit

bb.cm:                                            ; preds = %bb.cg
  br i1 %.not41.i.i.a, label %cf_setup_add_haproxy.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hq = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not42.i.i = icmp eq ptr %i.hq, null
  br i1 %.not42.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !78
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %bb.cp, label %cf_setup_add_haproxy.exit.i

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.hu = load ptr, ptr %0, align 8, !tbaa !79
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !81
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.cq, label %cf_setup_add_haproxy.exit.i

bb.cq:                                            ; preds = %bb.cp
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #3
  br label %cf_setup_add_haproxy.exit.i

cf_setup_add_haproxy.exit.i:                      ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cd
  store i32 4, ptr %i.gx, align 4, !tbaa !84
  %.pre113.i = load ptr, ptr %i.f, align 8, !tbaa !91 ; 2 uses
  %.not70.i = icmp eq ptr %.pre113.i, null
  br i1 %.not70.i, label %.backedge.i.backedge, label %cf_setup_add_haproxy.exit.thread.i.a

cf_setup_add_haproxy.exit.thread.i.a:             ; preds = %cf_setup_add_haproxy.exit.i
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %.pre113.i, i64 36
  %.pre63 = load i8, ptr %.phi.trans.insert62, align 4
  %.pre69 = and i8 %.pre63, 1
  %8 = icmp eq i8 %.pre69, 0
  br i1 %8, label %.backedge.i.backedge, label %cf_setup_add_haproxy.exit.thread.i.thread

cf_setup_add_haproxy.exit.thread.i.thread:        ; preds = %cf_setup_add_http_proxy.exit.thread.i.thread, %cf_setup_add_haproxy.exit.thread.i.a
  %i.hy = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !84
  %i.ia = icmp ult i32 %i.hz, 5
  br i1 %i.ia, label %bb.cr, label %cf_setup_add_origin_filters.exit.thread.i.thread

bb.cr:                                            ; preds = %cf_setup_add_haproxy.exit.thread.i.thread
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !86
  switch i32 %i.ic, label %bb.cs [
    i32 1, label %._crit_edge.i.i
    i32 0, label %cf_setup_add_origin_filters.exit.i
  ]

._crit_edge.i.i:                                  ; preds = %bb.cr
  %.pre.i89.i = load ptr, ptr %i.g, align 8, !tbaa !94
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.id = load ptr, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 728
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !110
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !113
  %9 = and i32 %i.ih, 1
  %.not49.i.i = icmp eq i32 %9, 0
  br i1 %.not49.i.i, label %cf_setup_add_origin_filters.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %._crit_edge.i.i
  %i.ii = phi ptr [ %.pre.i89.i, %._crit_edge.i.i ], [ %i.id, %bb.cs ]
  %i.ij = load i32, ptr %i.e, align 8, !tbaa !90
  %i.ik = tail call zeroext i1 @Curl_conn_is_ssl(ptr noundef %i.ii, i32 noundef %i.ij) #3
  br i1 %i.ik, label %cf_setup_add_origin_filters.exit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.il = load ptr, ptr %i.g, align 8, !tbaa !94  ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 720
  %i.in = load i32, ptr %i.im, align 8
  %i.io = and i32 %i.in, 2
  %.not50.i.i = icmp eq i32 %i.io, 0
  br i1 %.not50.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 144
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !114
  %i.ir = tail call i32 @Curl_cf_ssl_proxy_insert_after(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.iq) #3
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.is = tail call ptr @Curl_conn_get_origin(ptr noundef nonnull %i.il, i32 noundef 0) #3
  %i.it = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.iu = load i32, ptr %i.e, align 8, !tbaa !90
  %i.iv = tail call ptr @Curl_conn_get_destination(ptr noundef %i.it, i32 noundef %i.iu) #3
  %i.iw = tail call i32 @Curl_cf_ssl_insert_after(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.is, ptr noundef %i.iv) #3
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.043.i.i = phi i32 [ %i.ir, %bb.cv ], [ %i.iw, %bb.cw ] ; 7 uses
  %.not51.i.i = icmp eq i32 %.043.i.i, 0
  br i1 %.not51.i.i, label %bb.de, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not92.i.i, label %cf_setup_connect_steps.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ix = load i64, ptr %i.h, align 1
  %i.iy = and i64 %i.ix, 536870912
  %.not56.i90.i = icmp eq i64 %i.iy, 0
  br i1 %.not56.i90.i, label %cf_setup_connect_steps.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.iz = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not57.i91.i = icmp eq ptr %i.iz, null
  br i1 %.not57.i91.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !78
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %bb.dc, label %cf_setup_connect_steps.exit

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.jd = load ptr, ptr %0, align 8, !tbaa !79
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !81
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %bb.dd, label %cf_setup_connect_steps.exit

bb.dd:                                            ; preds = %bb.dc
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.19, i32 noundef %.043.i.i) #3
  br label %cf_setup_connect_steps.exit

bb.de:                                            ; preds = %bb.cx
  br i1 %.not92.i.i, label %cf_setup_add_origin_filters.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jh = load i64, ptr %i.h, align 1
  %i.ji = and i64 %i.jh, 536870912
  %.not53.i92.i = icmp eq i64 %i.ji, 0
  br i1 %.not53.i92.i, label %cf_setup_add_origin_filters.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jj = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not54.i93.i = icmp eq ptr %i.jj, null
  br i1 %.not54.i93.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !78
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %bb.di, label %cf_setup_add_origin_filters.exit.i

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.jn = load ptr, ptr %0, align 8, !tbaa !79
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !81
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %bb.dj, label %cf_setup_add_origin_filters.exit.i

bb.dj:                                            ; preds = %bb.di
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #3
  br label %cf_setup_add_origin_filters.exit.i

cf_setup_add_origin_filters.exit.i:               ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.de, %bb.ct, %bb.cs, %bb.cr
  store i32 5, ptr %i.hy, align 4, !tbaa !84
  %.pre114.i = load ptr, ptr %i.f, align 8, !tbaa !91 ; 2 uses
  %.not73.i = icmp eq ptr %.pre114.i, null
  br i1 %.not73.i, label %.backedge.i.backedge, label %cf_setup_add_origin_filters.exit.thread.i.a

cf_setup_add_origin_filters.exit.thread.i.a:      ; preds = %cf_setup_add_origin_filters.exit.i
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %.pre114.i, i64 36
  %.pre65 = load i8, ptr %.phi.trans.insert64, align 4
  %.pre71 = and i8 %.pre65, 1
  %10 = icmp eq i8 %.pre71, 0
  br i1 %10, label %.backedge.i.backedge, label %cf_setup_add_origin_filters.exit.thread.i.thread

.backedge.i.backedge:                             ; preds = %cf_setup_add_origin_filters.exit.thread.i.a, %cf_setup_add_origin_filters.exit.i, %cf_setup_add_haproxy.exit.thread.i.a, %cf_setup_add_haproxy.exit.i, %cf_setup_add_http_proxy.exit.thread.i.a, %cf_setup_add_http_proxy.exit.i, %cf_setup_add_socks.exit.thread.i.a, %cf_setup_add_socks.exit.i, %bb.ai, %cf_setup_add_ip_happy.exit.i
  br label %.backedge.i

cf_setup_add_origin_filters.exit.thread.i.thread: ; preds = %cf_setup_add_haproxy.exit.thread.i.thread, %cf_setup_add_origin_filters.exit.thread.i.a
  store i32 6, ptr %i.k, align 4, !tbaa !84
  %i.jr = load i8, ptr %i.c, align 4
  %i.js = or i8 %i.jr, 1
  store i8 %i.js, ptr %i.c, align 4
  store i8 1, ptr %2, align 1, !tbaa !89
  br label %cf_setup_connect_steps.exit.thread

cf_setup_connect_steps.exit:                      ; preds = %bb.c, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.as, %bb.be, %bb.bf, %bb.bh, %bb.bi, %bb.bj, %bb.br, %bb.bs, %bb.bu, %bb.bv, %bb.bw, %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cy, %bb.cz, %bb.db, %bb.dc, %bb.dd
  %.0.i = phi i32 [ %i.hf, %bb.ck ], [ %.043.i.i, %bb.dd ], [ %i.hf, %bb.cl ], [ %i.ax, %bb.p ], [ %i.dj, %bb.ao ], [ %i.gc, %bb.bu ], [ %.043.i.i, %bb.cy ], [ %.043.i.i, %bb.dc ], [ %.043.i.i, %bb.db ], [ %i.hf, %bb.cj ], [ %i.ax, %bb.t ], [ %i.ax, %bb.s ], [ %i.ax, %bb.o ], [ %i.ax, %bb.r ], [ %.043.i.i, %bb.cz ], [ %i.dj, %bb.as ], [ %i.dj, %bb.ar ], [ %i.dj, %bb.an ], [ %i.dj, %bb.aq ], [ %i.fc, %bb.be ], [ %i.fc, %bb.bj ], [ %i.fc, %bb.bi ], [ %i.gc, %bb.br ], [ %i.fc, %bb.bh ], [ %i.fc, %bb.bf ], [ %i.gc, %bb.bw ], [ %i.gc, %bb.bv ], [ %i.gc, %bb.bs ], [ %i.hf, %bb.ch ], [ %i.p, %bb.c ] ; 2 uses
  %i.jt = icmp eq i32 %.0.i, 81
  br i1 %i.jt, label %bb.dk, label %cf_setup_connect_steps.exit.thread

bb.dk:                                            ; preds = %cf_setup_connect_steps.exit
  %i.ju = load i8, ptr %i.j, align 1, !tbaa !115
  %i.jv = add i8 %i.ju, 1                         ; 3 uses
  store i8 %i.jv, ptr %i.j, align 1, !tbaa !115
  %i.jw = icmp ugt i8 %i.jv, 5
  br i1 %i.jw, label %cf_setup_connect_steps.exit.thread, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  br i1 %.not92.i.i, label %bb.dr, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jx = load i64, ptr %i.h, align 1
  %i.jy = and i64 %i.jx, 536870912
  %.not24 = icmp eq i64 %i.jy, 0
  br i1 %.not24, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jz = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not25 = icmp eq ptr %i.jz, null
  br i1 %.not25, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !78
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.kd = load ptr, ptr %0, align 8, !tbaa !79
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !81
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.kh = zext nneg i8 %i.jv to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.kh) #3
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dm, %bb.dl
  tail call void @Curl_conn_cf_discard_chain(ptr noundef nonnull %i.f, ptr noundef %1) #3
  store i32 0, ptr %i.b, align 4, !tbaa !84
  %i.ki = load i8, ptr %i.c, align 4
  %11 = and i8 %i.ki, 1
  %.not.i = icmp eq i8 %11, 0
  br i1 %.not.i, label %.preheader.i, label %._crit_edge

cf_setup_connect_steps.exit.thread:               ; preds = %cf_setup_connect_steps.exit, %bb.dk, %bb.d, %conn_get_first_origin.exit.i.i, %bb.am, %bb.m, %cf_setup_add_origin_filters.exit.thread.i.thread, %bb.cf, %._crit_edge
  %.0 = phi i32 [ 1, %bb.m ], [ 0, %bb.d ], [ 0, %cf_setup_add_origin_filters.exit.thread.i.thread ], [ 1, %bb.cf ], [ 0, %._crit_edge ], [ 2, %bb.am ], [ 2, %conn_get_first_origin.exit.i.i ], [ %.0.i, %cf_setup_connect_steps.exit ], [ 7, %bb.dk ]
  ret i32 %.0
}

declare i32 @Curl_cf_def_shutdown(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_adjust_pollset(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @Curl_cf_def_data_pending(ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_send(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) #1

declare i32 @Curl_cf_def_recv(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @Curl_cf_def_cntrl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare zeroext i1 @Curl_cf_def_conn_is_alive(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_conn_keep_alive(ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_query(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define noundef i32 @Curl_cf_setup_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !87
  %i.b = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !82
  %i.c = tail call ptr %i.b(i64 noundef 1, i64 noundef 12) #3, !inline_history !0 ; 6 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %cf_setup_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %4, ptr %i.d, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %3, ptr %i.e, align 4, !tbaa !85
  %i.f = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_setup, ptr noundef nonnull %i.c) #3
  %.fr.i = freeze i32 %i.f                        ; 2 uses
  %.not16.i = icmp eq i32 %.fr.i, 0
  br i1 %.not16.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @Curl_cfree, align 8, !tbaa !82
  call void %i.g(ptr noundef nonnull %i.c) #3, !inline_history !0
  br label %cf_setup_create.exit.thread

cf_setup_create.exit.thread:                      ; preds = %bb.c, %bb.a
  %.0611.i.ph = phi i32 [ 27, %bb.a ], [ %.fr.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @Curl_conn_cf_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #3
  br label %bb.e

bb.e:                                             ; preds = %cf_setup_create.exit.thread, %bb.d
  %.0611.i10 = phi i32 [ %.0611.i.ph, %cf_setup_create.exit.thread ], [ 0, %bb.d ]
  ret i32 %.0611.i10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @Curl_conn_cf_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define noundef i32 @Curl_cf_setup_insert_after(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !87
  %i.b = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !82
  %i.c = tail call ptr %i.b(i64 noundef 1, i64 noundef 12) #3, !inline_history !0 ; 6 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %cf_setup_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %3, ptr %i.d, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %2, ptr %i.e, align 4, !tbaa !85
  %i.f = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_setup, ptr noundef nonnull %i.c) #3
  %.fr.i = freeze i32 %i.f                        ; 2 uses
  %.not16.i = icmp eq i32 %.fr.i, 0
  br i1 %.not16.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @Curl_cfree, align 8, !tbaa !82
  call void %i.g(ptr noundef nonnull %i.c) #3, !inline_history !0
  br label %cf_setup_create.exit.thread

cf_setup_create.exit.thread:                      ; preds = %bb.c, %bb.a
  %.0611.i.ph = phi i32 [ 27, %bb.a ], [ %.fr.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @Curl_conn_cf_insert_after(ptr noundef %0, ptr noundef %i.h) #3
  br label %bb.e

bb.e:                                             ; preds = %cf_setup_create.exit.thread, %bb.d
  %.0611.i8 = phi i32 [ %.0611.i.ph, %cf_setup_create.exit.thread ], [ 0, %bb.d ]
  ret i32 %.0611.i8
}

declare void @Curl_conn_cf_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_trc_cf_infof(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @Curl_conn_cf_discard_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_conn_trc_filters(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Curl_conn_cf_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Curl_conn_get_first_peer(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @Curl_http_proxy_transport(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @Curl_conn_get_destination(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @cf_ip_happy_insert_after(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @Curl_cf_socks_proxy_insert_after(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @Curl_conn_is_ssl(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Curl_cf_ssl_proxy_insert_after(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Curl_cf_http_proxy_insert_after(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @Curl_cf_haproxy_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Curl_conn_get_origin(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Curl_cf_ssl_insert_after(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Curl_cf_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
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
!14 = !{!13, !9, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 _ZTS10Curl_llist", !9, i64 0}
!17 = !{!"p1 _ZTS15Curl_llist_node", !9, i64 0}
!18 = !{!"Curl_llist_node", !16, i64 0, !9, i64 8, !17, i64 16, !17, i64 24}
!19 = !{!"CURLMsg", !6, i64 0, !9, i64 8, !5, i64 16}
!20 = !{!"Curl_message", !18, i64 0, !19, i64 32}
!21 = !{!"p1 _ZTS10Curl_multi", !9, i64 0}
!22 = !{!"p1 _ZTS10Curl_share", !9, i64 0}
!23 = !{!"any p2 pointer", !9, i64 0}
!24 = !{!"p2 _ZTS17Curl_hash_element", !23, i64 0}
!25 = !{!"Curl_hash", !24, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !15, i64 32, !15, i64 40}
!26 = !{!"p1 _ZTS8PslCache", !9, i64 0}
!27 = !{!"curltime", !15, i64 0, !6, i64 8}
!28 = !{!"p1 _ZTS12Curl_cwriter", !9, i64 0}
!29 = !{!"p1 _ZTS12Curl_creader", !9, i64 0}
!30 = !{!"p1 _ZTS9buf_chunk", !9, i64 0}
!31 = !{!"p1 _ZTS9bufc_pool", !9, i64 0}
!32 = !{!"bufq", !30, i64 0, !30, i64 8, !30, i64 16, !31, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !6, i64 56}
!33 = !{!"p1 omnipotent char", !9, i64 0}
!34 = !{!"SingleRequest", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !27, i64 40, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !5, i64 76, !5, i64 77, !6, i64 80, !28, i64 88, !29, i64 96, !32, i64 104, !15, i64 168, !15, i64 176, !33, i64 184, !33, i64 192, !5, i64 200, !33, i64 208, !33, i64 216, !33, i64 224, !5, i64 232, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235}
!35 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!36 = !{!"p1 _ZTS10curl_slist", !9, i64 0}
end_hunk_0
