Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/conncache?download=true
inline.NumInlined: 43
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.curl_trc_feat = type { ptr, i32 }
%struct.Curl_hash_iterator = type { ptr, i64, ptr }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.Curl_sigpipe_ctx = type { %struct.sigaction, i8 }

@Curl_trc_feat_multi = external local_unnamed_addr global %struct.curl_trc_feat, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s[CPOOL] destroy, %zu connections\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[SHARE] \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Discarding connection #%ld from %zu to reach destination limit of %zu\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Discarding connection #%ld from %zu to reach total limit of %zu\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"[CPOOL] added connection %ld. The cache now contains %zu members\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Connection pool is full, closing the oldest of %zu/%u\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%s connection #%ld\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"closing\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"shutting down\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"closing connection #%ld\00", align 1
@Curl_cfree = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [57 x i8] c"[CPOOL] not discarding #%ld still in use by %u transfers\00", align 1
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define void @Curl_cpool_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @Curl_hash_init(ptr noundef %0, i64 noundef %3, ptr noundef nonnull @Curl_hash_str, ptr noundef nonnull @curlx_str_key_compare, ptr noundef nonnull @cpool_bundle_free_entry) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = or i8 %i.d, 2
  store i8 %i.e, ptr %i.c, align 8
  ret void
}

declare void @Curl_hash_init(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @Curl_hash_str(ptr noundef, i64 noundef, i64 noundef) #1

declare i64 @curlx_str_key_compare(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @cpool_bundle_free_entry(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  tail call void %i.a(ptr noundef %0) #7, !inline_history !117
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_cpool_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Curl_hash_iterator, align 8 ; 6 uses
  %2 = alloca %struct.sigaction, align 8          ; 6 uses
  %3 = alloca %struct.Curl_hash_iterator, align 8 ; 6 uses
  %4 = alloca %struct.Curl_sigpipe_ctx, align 8   ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 2
  %.not37 = icmp eq i8 %i.c, 0
  br i1 %.not37, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  %.not38 = icmp eq ptr %i.e, null
  br i1 %.not38, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2187
  %i.g = load i64, ptr %i.f, align 1
  %i.h = and i64 %i.g, 536870912
  %.not40 = icmp eq i64 %i.h, 0
  br i1 %.not40, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4504
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not41 = icmp eq ptr %i.j, null
  br i1 %.not41, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.o = icmp sgt i32 %i.n, 0
  %or.cond = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !80
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %.not42 = icmp eq ptr %i.q, null
  %i.r = select i1 %.not42, ptr @.str.2, ptr @.str.1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !81
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.e, ptr noundef nonnull @.str, ptr noundef nonnull %i.r, i64 noundef %i.t) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 160, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 5 uses
  store i8 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %.not43 = icmp eq ptr %i.w, null
  br i1 %.not43, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  %i.z = and i32 %i.y, 32
  %.not44 = icmp eq i32 %i.z, 0
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ab = tail call i32 @Curl_share_lock(ptr noundef %i.aa, i32 noundef 5, i32 noundef 2) #7 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.ac = load i8, ptr %i.a, align 8
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %0, ptr noundef nonnull %3) #7
  %i.ae = call ptr @Curl_hash_next_element(ptr noundef nonnull %3) #7 ; 2 uses
  %.not10.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i, label %cpool_get_first.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.011.i = phi ptr [ %i.ai, %bb.m ], [ %i.ae, %bb.l ]
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ah = call ptr @Curl_llist_head(ptr noundef %i.ag) #7 ; 2 uses
  %.not9.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i, label %bb.m, label %cpool_get_first.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.ai = call ptr @Curl_hash_next_element(ptr noundef nonnull %3) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %cpool_get_first.exit.thread, label %.lr.ph.i, !llvm.loop !118

cpool_get_first.exit.thread:                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %._crit_edge

cpool_get_first.exit:                             ; preds = %.lr.ph.i
  %i.aj = call ptr @Curl_node_elem(ptr noundef nonnull %i.ah) #7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not45 = icmp eq ptr %i.aj, null
  br i1 %.not45, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %cpool_get_first.exit
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %.not.i49 = icmp eq ptr %i.ak, null
  br i1 %.not.i49, label %.lr.ph.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr i8, ptr %i.ak, i64 2191   ; 3 uses
  %5 = load i32, ptr %i.al, align 1               ; 2 uses
  %i.am = and i32 %5, 1
  %i.an = load i8, ptr %i.u, align 8              ; 2 uses
  %i.ao = and i8 %i.an, 1                         ; 2 uses
  %i.ap = zext nneg i8 %i.ao to i32
  %.not6.i = icmp eq i32 %i.am, %i.ap
  br i1 %.not6.i, label %.lr.ph.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i, label %bb.q, label %sigpipe_restore.exit.i

bb.q:                                             ; preds = %bb.p
  %i.aq = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %4, ptr noundef null) #7 ; 0 uses
  %.pre.i = load i32, ptr %i.al, align 1
  %.pre8.i = load i8, ptr %i.u, align 8
  br label %sigpipe_restore.exit.i

sigpipe_restore.exit.i:                           ; preds = %bb.q, %bb.p
  %6 = phi i8 [ %i.an, %bb.p ], [ %.pre8.i, %bb.q ]
  %7 = phi i32 [ %5, %bb.p ], [ %.pre.i, %bb.q ]
  %i.ar = trunc i32 %7 to i8
  %i.as = and i8 %i.ar, 1
  %i.at = and i8 %6, -2
  %i.au = or disjoint i8 %i.as, %i.at
  store i8 %i.au, ptr %i.u, align 8
  %8 = load i32, ptr %i.al, align 1
  %9 = and i32 %8, 1
  %.not.i7.i = icmp eq i32 %9, 0
  br i1 %.not.i7.i, label %bb.r, label %.lr.ph.preheader

bb.r:                                             ; preds = %sigpipe_restore.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.av = call i32 @sigaction(i32 noundef 13, ptr noundef null, ptr noundef nonnull %4) #7 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(152) %4, i64 152, i1 false), !tbaa.struct !121
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !120
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !124
  %i.ay = and i32 %i.ax, -5
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !124
  %i.az = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %2, ptr noundef null) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n, %bb.o, %sigpipe_restore.exit.i, %bb.r
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %cpool_get_first.exit56
  %.065 = phi ptr [ %i.bg, %cpool_get_first.exit56 ], [ %i.aj, %.lr.ph.preheader ] ; 2 uses
  call fastcc void @cpool_remove_conn(ptr noundef %0, ptr noundef nonnull %.065)
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !19
  call fastcc void @cpool_discard_conn(ptr noundef nonnull %0, ptr noundef %i.ba, ptr noundef nonnull %.065, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  %i.bb = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %.not10.i50 = icmp eq ptr %i.bb, null
  br i1 %.not10.i50, label %cpool_get_first.exit56.thread, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph, %bb.s
  %.011.i52 = phi ptr [ %i.bf, %bb.s ], [ %i.bb, %.lr.ph ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i52, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.be = call ptr @Curl_llist_head(ptr noundef %i.bd) #7 ; 2 uses
  %.not9.i53 = icmp eq ptr %i.be, null
  br i1 %.not9.i53, label %bb.s, label %cpool_get_first.exit56

bb.s:                                             ; preds = %.lr.ph.i51
  %i.bf = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bf, null
  br i1 %.not.i55, label %cpool_get_first.exit56.thread, label %.lr.ph.i51, !llvm.loop !118

cpool_get_first.exit56.thread:                    ; preds = %.lr.ph, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %._crit_edge

cpool_get_first.exit56:                           ; preds = %.lr.ph.i51
  %i.bg = call ptr @Curl_node_elem(ptr noundef nonnull %i.be) #7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %.not46 = icmp eq ptr %i.bg, null
  br i1 %.not46, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %cpool_get_first.exit56, %cpool_get_first.exit56.thread, %cpool_get_first.exit, %cpool_get_first.exit.thread
  %i.bh = load i8, ptr %i.a, align 8
  %i.bi = and i8 %i.bh, -2
  store i8 %i.bi, ptr %i.a, align 8
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %.not47 = icmp eq ptr %i.bj, null
  br i1 %.not47, label %bb.v, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !87
  %i.bm = and i32 %i.bl, 32
  %.not48 = icmp eq i32 %i.bm, 0
  br i1 %.not48, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.bo = call i32 @Curl_share_unlock(ptr noundef %i.bn, i32 noundef 5) #7 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.t, %bb.u
  %i.bp = load i8, ptr %i.u, align 8
  %i.bq = and i8 %i.bp, 1
  %.not.i57 = icmp eq i8 %i.bq, 0
  br i1 %.not.i57, label %bb.w, label %sigpipe_restore.exit

bb.w:                                             ; preds = %bb.v
  %i.br = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %4, ptr noundef null) #7 ; 0 uses
  br label %sigpipe_restore.exit

sigpipe_restore.exit:                             ; preds = %bb.v, %bb.w
  call void @Curl_hash_destroy(ptr noundef nonnull %0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.x

bb.x:                                             ; preds = %sigpipe_restore.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @Curl_trc_multi(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @Curl_share_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cpool_remove_conn(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Curl_node_llist(ptr noundef %1) #7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 88
  %.val = load ptr, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val) #8
  %i.d = add i64 %i.c, 1
  %i.e = tail call ptr @Curl_hash_pick(ptr noundef nonnull %0, ptr noundef nonnull %.val, i64 noundef %i.d) #7 ; 4 uses
  %i.f = icmp eq ptr %i.a, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @Curl_node_remove(ptr noundef nonnull %1) #7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -8388609
  store i32 %i.i, ptr %i.g, align 8
  %i.j = tail call i64 @Curl_llist_count(ptr noundef nonnull %i.e) #7
  %.not16 = icmp eq i64 %i.j, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100
  %i.n = tail call i32 @Curl_hash_delete(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i64 noundef %i.m) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load i32, ptr %i.g, align 8
  %i.p = and i32 %i.o, -8388609
  store i32 %i.p, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !81
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cpool_discard_conn(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i8 0, ptr %i.a, align 1, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 776
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %or.cond = or i1 %3, %i.d
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.f = load i64, ptr %i.e, align 1
  %i.g = and i64 %i.f, 536870912
  %.not26 = icmp eq i64 %i.g, 0
  br i1 %.not26, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.n = icmp sgt i32 %i.m, 0
  %or.cond3 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.m

bb.f:                                             ; preds = %bb.d
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !80
  %.old2 = icmp sgt i32 %.old, 0
  br i1 %.old2, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !102
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, i64 noundef %i.p, i32 noundef %i.c) #7
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 720 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not28 = trunc i32 %i.r to i1
  %spec.select = or i1 %3, %.not28                ; 2 uses
  %i.s = select i1 %spec.select, i32 524288, i32 0
end_hunk_0
