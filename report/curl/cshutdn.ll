Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cshutdn?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.curl_trc_feat = type { ptr, i32 }
%struct.sigaction = type { %union.anon.0, %struct.__sigset_t, i32, ptr }
%union.anon.0 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.Curl_sigpipe_ctx = type { %struct.sigaction, i8 }
%struct.pollfd = type { i32, i16, i16 }
%struct.curl_pollfds = type { ptr, i32, i32, i8 }
%struct.curltime = type { i64, i32 }
%struct.easy_pollset = type { ptr, ptr, i32, i32, [2 x i32], [2 x i8] }

@Curl_trc_feat_multi = external local_unnamed_addr global %struct.curl_trc_feat, align 8
@.str = private unnamed_addr constant [29 x i8] c"[SHUTDOWN] shutdown, done=%d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[SHUTDOWN] %sclosing connection #%ld\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"force \00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"[SHUTDOWN] trigger multi connchanged\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"[SHUTDOWN] destroy, %zu connections, timeout=%dms\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"[SHUTDOWN] discarding oldest shutdown connection due to connection limit of %zu\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"[SHUTDOWN] update events failed, discarding #%ld\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"[SHUTDOWN] added #%ld to shutdowns, now %zu conns in shutdown\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"[SHUTDOWN] shutdown all\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"[SHUTDOWN] shutdown finished cleanly\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"[SHUTDOWN] shutdown finished, %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"best effort done\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"[SHUTDOWN] shutdown finished, aborted\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"[SHUTDOWN] perform on %zu connections\00", align 1

; Function Attrs: nounwind uwtable
define void @Curl_cshutdn_run_once(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((0, 1)) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @Curl_attach_connection(ptr noundef %0, ptr noundef %1) #7
  tail call fastcc void @cshutdn_run_once(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not14 = icmp eq i64 %i.c, 0
  br i1 %.not14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.j = icmp sgt i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = load i8, ptr %2, align 1, !tbaa !76, !range !77, !noundef !78
  %i.l = zext nneg i8 %i.k to i32
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.l) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @Curl_detach_connection(ptr noundef %0) #7
  ret void
}

declare void @Curl_attach_connection(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cshutdn_run_once(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = tail call zeroext i1 @Curl_shutdown_started(ptr noundef %0, i32 noundef 0) #7
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Curl_shutdown_start(ptr noundef %0, i32 noundef 0, i32 noundef 0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = and i32 %i.e, 2097152
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %cshutdn_run_conn_handler.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %.not11.i = icmp eq ptr %i.h, null
  br i1 %.not11.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 2 uses
  %.not12.i = icmp eq ptr %i.l, null
  br i1 %.not12.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 65536
  %.not13.i = icmp eq i32 %i.o, 0
  br i1 %.not13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2048
  store i64 2000, ptr %i.p, align 8, !tbaa !90
  tail call void @Curl_pgrsTime(ptr noundef nonnull %0, i32 noundef 1) #7
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !84
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre14.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !87
  %.phi.trans.insert15.i = getelementptr inbounds nuw i8, ptr %.pre14.i, i64 88
  %.pre16.i = load ptr, ptr %.phi.trans.insert15.i, align 8, !tbaa !89
  %.pre17.i = load i32, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi i32 [ %.pre17.i, %bb.g ], [ %i.e, %bb.f ]
  %i.r = phi ptr [ %.pre16.i, %bb.g ], [ %i.l, %bb.f ]
  %i.s = and i32 %i.q, 524288
  %i.t = icmp ne i32 %i.s, 0
  %i.u = tail call i32 %i.r(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %i.t) #7, !inline_history !0 ; 0 uses
  %.pre18.i = load i32, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.v = phi i32 [ %.pre18.i, %bb.h ], [ %i.e, %bb.e ], [ %i.e, %bb.d ]
  %i.w = or i32 %i.v, 2097152                     ; 2 uses
  store i32 %i.w, ptr %i.d, align 8
  br label %cshutdn_run_conn_handler.exit

cshutdn_run_conn_handler.exit:                    ; preds = %bb.c, %bb.i
  %i.x = phi i32 [ %i.e, %bb.c ], [ %i.w, %bb.i ] ; 2 uses
  %i.y = and i32 %i.x, 4194304
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %cshutdn_run_conn_handler.exit
  store i8 1, ptr %2, align 1, !tbaa !76
  br label %bb.t

bb.k:                                             ; preds = %cshutdn_run_conn_handler.exit
  %i.z = and i32 %i.x, 1
  %.not18 = icmp eq i32 %i.z, 0
  br i1 %.not18, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call zeroext i1 @Curl_conn_is_connected(ptr noundef nonnull %1, i32 noundef 0) #7
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 @Curl_conn_shutdown(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a) #7
  %i.ac = icmp ne i32 %i.ab, 0
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  store i8 1, ptr %i.a, align 1, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.017 = phi i1 [ false, %bb.n ], [ %i.ac, %bb.m ]
  %i.ad = load i32, ptr %i.d, align 8
  %i.ae = and i32 %i.ad, 1
  %.not19 = icmp eq i32 %i.ae, 0
  br i1 %.not19, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.af = call zeroext i1 @Curl_conn_is_connected(ptr noundef nonnull %1, i32 noundef 1) #7
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = call i32 @Curl_conn_shutdown(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b) #7
  %i.ah = icmp ne i32 %i.ag, 0
  %.pre = load i8, ptr %i.b, align 1, !range !77
  %3 = trunc nuw i8 %.pre to i1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %4 = phi i1 [ %3, %bb.q ], [ true, %bb.p ], [ true, %bb.o ]
  %.0 = phi i1 [ %i.ah, %bb.q ], [ false, %bb.p ], [ false, %bb.o ]
  %or.cond = select i1 %.017, i1 true, i1 %.0
  %i.ai = load i8, ptr %i.a, align 1, !range !77
  %i.aj = trunc nuw i8 %i.ai to i1
  %5 = select i1 %i.aj, i1 %4, i1 false
  %i.ak = select i1 %or.cond, i1 true, i1 %5      ; 2 uses
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %2, align 1, !tbaa !76
  br i1 %i.ak, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.am = load i32, ptr %i.d, align 8
  %i.an = or i32 %i.am, 4194304
  store i32 %i.an, ptr %i.d, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @Curl_trc_multi(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @Curl_detach_connection(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Curl_cshutdn_terminate(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  %spec.select = select i1 %.not45, ptr %0, ptr %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.b ] ; 14 uses
  tail call void @Curl_attach_connection(ptr noundef %.0, ptr noundef %1) #7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8              ; 4 uses
  %i.h = and i32 %i.g, 2097152
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %cshutdn_run_conn_handler.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84   ; 2 uses
  %.not11.i = icmp eq ptr %i.j, null
  br i1 %.not11.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 2 uses
  %.not12.i = icmp eq ptr %i.n, null
  br i1 %.not12.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 4628
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 65536
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 2048
  store i64 2000, ptr %i.r, align 8, !tbaa !90
  tail call void @Curl_pgrsTime(ptr noundef nonnull %.0, i32 noundef 1) #7
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !84
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre14.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !87
  %.phi.trans.insert15.i = getelementptr inbounds nuw i8, ptr %.pre14.i, i64 88
  %.pre16.i = load ptr, ptr %.phi.trans.insert15.i, align 8, !tbaa !89
  %.pre17.i = load i32, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi i32 [ %.pre17.i, %bb.g ], [ %i.g, %bb.f ]
  %i.t = phi ptr [ %.pre16.i, %bb.g ], [ %i.n, %bb.f ]
  %i.u = and i32 %i.s, 524288
  %i.v = icmp ne i32 %i.u, 0
  %i.w = tail call i32 %i.t(ptr noundef nonnull %.0, ptr noundef nonnull %1, i1 noundef zeroext %i.v) #7, !inline_history !0 ; 0 uses
  %.pre18.i = load i32, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.x = phi i32 [ %.pre18.i, %bb.h ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.y = or i32 %i.x, 2097152
  store i32 %i.y, ptr %i.f, align 8
  br label %cshutdn_run_conn_handler.exit

cshutdn_run_conn_handler.exit:                    ; preds = %bb.c, %bb.i
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %cshutdn_run_conn_handler.exit
  call fastcc void @cshutdn_run_once(ptr noundef %.0, ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %cshutdn_run_conn_handler.exit, %bb.j
  %.not46 = icmp eq ptr %.0, null
  br i1 %.not46, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 2187
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = and i64 %i.aa, 536870912
  %.not47 = icmp eq i64 %i.ab, 0
  br i1 %.not47, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 4504
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
  %.not48 = icmp eq ptr %i.ad, null
  br i1 %.not48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !74
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ai = icmp sgt i32 %i.ah, 0
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aj = load i32, ptr %i.f, align 8
  %i.ak = and i32 %i.aj, 4194304
  %.not49 = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not49, ptr @.str.3, ptr @.str.2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load i64, ptr %i.am, align 8, !tbaa !108
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %.0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.al, i64 noundef %i.an) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.k
  tail call void @Curl_conn_cf_discard_all(ptr noundef %.0, ptr noundef nonnull %1, i32 noundef 1) #7
  tail call void @Curl_conn_cf_discard_all(ptr noundef %.0, ptr noundef nonnull %1, i32 noundef 0) #7
  tail call void @Curl_detach_connection(ptr noundef %.0) #7
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !91  ; 2 uses
  %.not50 = icmp eq ptr %i.ao, null
  br i1 %.not50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @Curl_multi_ev_conn_done(ptr noundef nonnull %i.ao, ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @Curl_conn_free(ptr noundef %.0, ptr noundef nonnull %1) #7
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !91  ; 4 uses
  %.not51 = icmp eq ptr %i.ap, null
  br i1 %.not51, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = and i64 %i.ar, 536870912
  %.not53 = icmp eq i64 %i.as, 0
  br i1 %.not53, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %.not54 = icmp eq ptr %i.au, null
  br i1 %.not54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.az = icmp sgt i32 %i.ay, 0
  %or.cond4 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond4, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %.old2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old3 = icmp sgt i32 %.old2, 0
  br i1 %.old3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.w
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #7
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !91
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.ba = phi ptr [ %.pre, %bb.x ], [ %i.ap, %bb.w ], [ %i.ap, %bb.v ], [ %i.ap, %bb.t ]
  tail call void @Curl_multi_connchanged(ptr noundef %i.ba) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

end_hunk_0
