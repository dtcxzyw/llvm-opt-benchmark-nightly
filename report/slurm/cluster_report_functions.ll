Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cluster_report_functions?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurmdb_cluster_cond_t = type { i16, ptr, ptr, i32, ptr, ptr, i64, i64, i16, i16 }

@.str = private unnamed_addr constant [39 x i8] c"slurmdb_report_cluster_account_by_user\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"slurmdb_report_cluster_user_by_account\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"slurmdb_report_cluster_wckey_by_user\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"slurmdb_report_cluster_user_by_wckey\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: Problem with cluster query.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: Problem with get query.\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"cluster_report_functions.c\00", align 1
@__func__._process_ua = private unnamed_addr constant [12 x i8] c"_process_ua\00", align 1
@__func__._process_au = private unnamed_addr constant [12 x i8] c"_process_au\00", align 1
@__func__._process_uw = private unnamed_addr constant [12 x i8] c"_process_uw\00", align 1
@__func__._process_wu = private unnamed_addr constant [12 x i8] c"_process_wu\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @slurmdb_report_cluster_account_by_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_process_util_by_report(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_process_util_by_report(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 4) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.slurmdb_cluster_cond_t, align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = tail call i32 @getuid() #6               ; 3 uses
  %i.d = tail call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_report_cluster_rec) #6 ; 8 uses
  call void @slurmdb_init_cluster_cond(ptr noundef nonnull %4, i1 noundef zeroext false) #6
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i16 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 66
  store i16 1, ptr %i.f, align 2
  %or.cond = icmp samesign ult i32 %3, 2          ; 5 uses
  %.sink175.in.v = select i1 %or.cond, i64 80, i64 48
  %.sink175.in = getelementptr inbounds nuw i8, ptr %2, i64 %.sink175.in.v
  %.sink174.in.v = select i1 %or.cond, i64 72, i64 40
  %.sink174.in = getelementptr inbounds nuw i8, ptr %2, i64 %.sink174.in.v
  %.sink.in.idx = select i1 %or.cond, i64 8, i64 0
  %.sink.in = getelementptr inbounds nuw i8, ptr %2, i64 %.sink.in.idx
  %.sink = load ptr, ptr %.sink.in, align 8
  %.sink174 = load i64, ptr %.sink174.in, align 8
  %.sink175 = load i64, ptr %.sink175.in, align 8
  store i64 %.sink175, ptr %i.a, align 8
  store i64 %.sink174, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sink, ptr %i.g, align 8
  %i.h = call i32 @slurmdb_report_set_start_end_time(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.i = load i64, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load i64, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.k, ptr %i.l, align 8
  %i.m = call ptr @acct_storage_g_get_clusters(ptr noundef %0, i32 noundef %i.c, ptr noundef nonnull %4) #6 ; 5 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread152, label %bb.b

.thread152:                                       ; preds = %bb.a
  %i.n = load ptr, ptr @stderr, align 8
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.5, ptr noundef %1) #7 ; 0 uses
  br label %bb.ar

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.p, ptr %i.q, align 8
  %i.r = load i64, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.r, ptr %i.s, align 8
  %i.t = call ptr @acct_storage_g_get_assocs(ptr noundef %0, i32 noundef %i.c, ptr noundef nonnull %2) #6 ; 3 uses
  %.not103 = icmp eq ptr %i.t, null
  br i1 %.not103, label %bb.aq, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.p, ptr %i.u, align 8
  %i.v = load i64, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.v, ptr %i.w, align 8
  %i.x = call ptr @acct_storage_g_get_wckeys(ptr noundef %0, i32 noundef %i.c, ptr noundef nonnull %2) #6 ; 2 uses
  %.not103129 = icmp eq ptr %i.x, null
  br i1 %.not103129, label %bb.aq, label %.thread131

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @slurmdb_get_hierarchical_sorted_assoc_list(ptr noundef nonnull %i.t) #6
  br label %.thread131

.thread131:                                       ; preds = %.thread, %bb.d
  %.194 = phi ptr [ %i.y, %bb.d ], [ %i.x, %.thread ] ; 3 uses
  %.092 = phi ptr [ %i.t, %bb.d ], [ null, %.thread ] ; 2 uses
  %i.z = call ptr @list_iterator_create(ptr noundef nonnull %i.m) #6 ; 6 uses
  %i.aa = call ptr @list_iterator_create(ptr noundef %.194) #6 ; 17 uses
  %i.ab = call ptr @list_next(ptr noundef %i.z) #6 ; 5 uses
  %.not104162 = icmp eq ptr %i.ab, null
  br i1 %.not104162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread131
  %i.ac = and i32 %3, 1
  %or.cond11 = icmp eq i32 %i.ac, 0               ; 8 uses
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ad = icmp eq i32 %3, 0
  br i1 %i.ad, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %slurmdb_destroy_report_user_rec.slurmdb_destroy_report_assoc_rec232 = select i1 %or.cond11, ptr @slurmdb_destroy_report_user_rec, ptr @slurmdb_destroy_report_assoc_rec
  %.233 = select i1 %or.cond11, i64 32, i64 8
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %slurmdb_destroy_report_user_rec.slurmdb_destroy_report_assoc_rec = select i1 %or.cond11, ptr @slurmdb_destroy_report_user_rec, ptr @slurmdb_destroy_report_assoc_rec
  %. = select i1 %or.cond11, i64 32, i64 8
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %.backedge.us.us
  %i.ae = phi ptr [ %i.bz, %.backedge.us.us ], [ %i.ab, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not109.us.us = icmp eq ptr %i.af, null
  br i1 %.not109.us.us, label %.backedge.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ag = call i32 @list_count(ptr noundef nonnull %i.af) #6
  %.not110.us.us = icmp eq i32 %i.ag, 0
  br i1 %.not110.us.us, label %.backedge.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = call ptr @slurmdb_cluster_rec_2_report(ptr noundef nonnull %i.ae) #6 ; 3 uses
  call void @list_append(ptr noundef %i.d, ptr noundef %i.ah) #6
  %i.ai = call ptr @list_create(ptr noundef nonnull %slurmdb_destroy_report_user_rec.slurmdb_destroy_report_assoc_rec) #6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 280
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call ptr @list_next(ptr noundef %i.aa) #6 ; 2 uses
  %.not26.i.us.us = icmp eq ptr %i.am, null
  br i1 %.not26.i.us.us, label %_process_assoc_type.exit.us.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  br label %.lr.ph.split.us.i.us.us

.lr.ph.split.us.i.us.us:                          ; preds = %.backedge.us.i.us.us, %.lr.ph.i.us.us
  %i.ao = phi ptr [ %i.by, %.backedge.us.i.us.us ], [ %i.am, %.lr.ph.i.us.us ] ; 6 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not16.us.i.us.us = icmp eq ptr %i.ap, null
  br i1 %.not16.us.i.us.us, label %.backedge.us.sink.split.i.us.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.us.us
  %i.aq = call i32 @list_count(ptr noundef nonnull %i.ap) #6
  %.not17.us.i.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not17.us.i.us.us, label %.backedge.us.sink.split.i.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 312 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not18.us.i.us.us = icmp eq ptr %i.as, null
  br i1 %.not18.us.i.us.us, label %.backedge.us.sink.split.i.us.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i32 @xstrcmp(ptr noundef %i.al, ptr noundef %i.au) #6
  %.not19.us.i.us.us = icmp eq i32 %i.av, 0
  br i1 %.not19.us.i.us.us, label %bb.j, label %.backedge.us.i.us.us

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ax = call ptr @list_iterator_create(ptr noundef %i.aw) #6 ; 4 uses
  %i.ay = call ptr @list_next(ptr noundef %i.ax) #6 ; 2 uses
  %.not27.i.us.i.us.us = icmp eq ptr %i.ay, null
  br i1 %.not27.i.us.i.us.us, label %._crit_edge.i.us.i.us.us, label %.lr.ph.i.us.i.us.us

.lr.ph.i.us.i.us.us:                              ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i.us.i.us.us
  %i.ba = phi ptr [ %i.ay, %.lr.ph.i.us.i.us.us ], [ %i.bi, %bb.m ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ar, align 8
  %i.be = call i32 @xstrcmp(ptr noundef %i.bc, ptr noundef %i.bd) #6
  %.not23.i.us.i.us.us = icmp eq i32 %i.be, 0
  br i1 %.not23.i.us.i.us.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.ba, align 8
  %i.bg = load ptr, ptr %i.az, align 8
  %i.bh = call i32 @xstrcmp(ptr noundef %i.bf, ptr noundef %i.bg) #6
  %.not24.i.us.i.us.us = icmp eq i32 %i.bh, 0
  br i1 %.not24.i.us.i.us.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = call ptr @list_next(ptr noundef %i.ax) #6 ; 2 uses
  %.not.i.us.i.us.us = icmp eq ptr %i.bi, null
  br i1 %.not.i.us.i.us.us, label %._crit_edge.i.us.i.us.us, label %bb.k, !llvm.loop !8

bb.n:                                             ; preds = %bb.l
  call void @list_iterator_destroy(ptr noundef %i.ax) #6
  br label %_process_ua.exit.us.i.us.us

._crit_edge.i.us.i.us.us:                         ; preds = %bb.m, %bb.j
  call void @list_iterator_destroy(ptr noundef %i.ax) #6
  %i.bj = load ptr, ptr %i.ar, align 8
  %i.bk = call ptr @getpwnam(ptr noundef %i.bj)   ; 2 uses
  %.not25.i.us.i.us.us = icmp eq ptr %i.bk, null
  br i1 %.not25.i.us.i.us.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.us.i.us.us
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.us.i.us.us
  %.0.i.us.i.us.us = phi i32 [ %i.bm, %bb.o ], [ -2, %._crit_edge.i.us.i.us.us ]
  %i.bn = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 56, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef 84, ptr noundef nonnull @__func__._process_ua) #6 ; 5 uses
  %i.bo = load ptr, ptr %i.ar, align 8
  %i.bp = call ptr @xstrdup(ptr noundef %i.bo) #6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store i32 %.0.i.us.i.us.us, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call ptr @xstrdup(ptr noundef %i.bt) #6
  store ptr %i.bu, ptr %i.bn, align 8
  call void @list_append(ptr noundef %i.aw, ptr noundef nonnull %i.bn) #6
  br label %_process_ua.exit.us.i.us.us

_process_ua.exit.us.i.us.us:                      ; preds = %bb.p, %bb.n
  %.020.i.us.i.us.us = phi ptr [ %i.ba, %bb.n ], [ %i.bn, %bb.p ]
  %i.bv = load ptr, ptr %i.ao, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.020.i.us.i.us.us, i64 40
  call void @slurmdb_transfer_acct_list_2_tres(ptr noundef %i.bv, ptr noundef nonnull %i.bw) #6
  br label %.backedge.us.sink.split.i.us.us

.backedge.us.sink.split.i.us.us:                  ; preds = %_process_ua.exit.us.i.us.us, %bb.h, %bb.g, %.lr.ph.split.us.i.us.us
  %i.bx = call i32 @list_delete_item(ptr noundef %i.aa) #6 ; 0 uses
  br label %.backedge.us.i.us.us

.backedge.us.i.us.us:                             ; preds = %.backedge.us.sink.split.i.us.us, %bb.i
  %i.by = call ptr @list_next(ptr noundef %i.aa) #6 ; 2 uses
  %.not.us.i.us.us = icmp eq ptr %i.by, null
  br i1 %.not.us.i.us.us, label %_process_assoc_type.exit.us.us, label %.lr.ph.split.us.i.us.us, !llvm.loop !9

_process_assoc_type.exit.us.us:                   ; preds = %.backedge.us.i.us.us, %bb.f
  call void @list_iterator_reset(ptr noundef %i.aa) #6
  br label %.backedge.us.us

.backedge.us.us:                                  ; preds = %.lr.ph.split.us.split.us, %bb.e, %_process_assoc_type.exit.us.us
  %i.bz = call ptr @list_next(ptr noundef %i.z) #6 ; 2 uses
  %.not104.us.us = icmp eq ptr %i.bz, null
  br i1 %.not104.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !10

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %.backedge.us
  %i.ca = phi ptr [ %i.eg, %.backedge.us ], [ %i.ab, %.lr.ph.split.us.split.preheader ] ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not109.us = icmp eq ptr %i.cb, null
  br i1 %.not109.us, label %.backedge.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.split
  %i.cc = call i32 @list_count(ptr noundef nonnull %i.cb) #6
  %.not110.us = icmp eq i32 %i.cc, 0
  br i1 %.not110.us, label %.backedge.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = call ptr @slurmdb_cluster_rec_2_report(ptr noundef nonnull %i.ca) #6 ; 3 uses
  call void @list_append(ptr noundef %i.d, ptr noundef %i.cd) #6
  %i.ce = call ptr @list_create(ptr noundef nonnull %slurmdb_destroy_report_user_rec.slurmdb_destroy_report_assoc_rec232) #6
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.233
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 280
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call ptr @list_next(ptr noundef %i.aa) #6 ; 2 uses
  %.not26.i.us = icmp eq ptr %i.ci, null
  br i1 %.not26.i.us, label %_process_assoc_type.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %.lr.ph.split.split.us.i.us

.lr.ph.split.split.us.i.us:                       ; preds = %.lr.ph.i.us, %.backedge.us29.i.us
  %i.ck = phi ptr [ %i.ef, %.backedge.us29.i.us ], [ %i.ci, %.lr.ph.i.us ] ; 6 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not16.us27.i.us = icmp eq ptr %i.cl, null
  br i1 %.not16.us27.i.us, label %.backedge.us29.sink.split.i.us, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split.us.i.us
  %i.cm = call i32 @list_count(ptr noundef nonnull %i.cl) #6
  %.not17.us28.i.us = icmp eq i32 %i.cm, 0
  br i1 %.not17.us28.i.us, label %.backedge.us29.sink.split.i.us, label %.thread.us.i.us

.thread.us.i.us:                                  ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call i32 @xstrcmp(ptr noundef %i.ch, ptr noundef %i.co) #6
  %.not1923.us.i.us = icmp eq i32 %i.cp, 0
  br i1 %.not1923.us.i.us, label %bb.t, label %.backedge.us29.i.us

bb.t:                                             ; preds = %.thread.us.i.us
  %i.cq = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cr = load ptr, ptr %i.ck, align 8
  %i.cs = call ptr @list_iterator_create(ptr noundef %i.cr) #6 ; 3 uses
  %i.ct = call ptr @list_next(ptr noundef %i.cs) #6 ; 2 uses
  %.not31.i.us.i.us = icmp eq ptr %i.ct, null
  br i1 %.not31.i.us.i.us, label %_process_au.exit.us.i.us, label %.lr.ph.i20.us.i.us

.lr.ph.i20.us.i.us:                               ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 248
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 312
  br label %bb.u

bb.u:                                             ; preds = %_find_assoc_in_report.exit.i.us.i.us, %.lr.ph.i20.us.i.us
  %i.cx = phi ptr [ %i.ct, %.lr.ph.i20.us.i.us ], [ %i.ed, %_find_assoc_in_report.exit.i.us.i.us ] ; 6 uses
  %.032.i.us.i.us = phi ptr [ null, %.lr.ph.i20.us.i.us ], [ %.1.i.us.i.us, %_find_assoc_in_report.exit.i.us.i.us ] ; 4 uses
  %.not26.i.us.i.us = icmp eq ptr %.032.i.us.i.us, null
  br i1 %.not26.i.us.i.us, label %_find_assoc_in_report.exit.thread.i.us.i.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %.032.i.us.i.us, i64 16
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.w, label %_find_assoc_in_report.exit.thread.i.us.i.us

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %.032.i.us.i.us, i64 20
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp eq i32 %i.de, %i.dg
  br i1 %i.dh, label %_find_assoc_in_report.exit.i.us.i.us, label %_find_assoc_in_report.exit.thread.i.us.i.us

_find_assoc_in_report.exit.thread.i.us.i.us:      ; preds = %bb.w, %bb.v, %bb.u
  %i.di = call ptr @list_find_first(ptr noundef %i.cq, ptr noundef nonnull @_find_assoc_in_report, ptr noundef nonnull %i.cx) #6 ; 2 uses
  %.not28.i.us.i.us = icmp eq ptr %i.di, null
  br i1 %.not28.i.us.i.us, label %bb.x, label %_find_assoc_in_report.exit.i.us.i.us

bb.x:                                             ; preds = %_find_assoc_in_report.exit.thread.i.us.i.us
  %i.dj = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef 125, ptr noundef nonnull @__func__._process_au) #6 ; 8 uses
  call void @list_append(ptr noundef %i.cq, ptr noundef %i.dj) #6
  %i.dk = load ptr, ptr %i.cu, align 8
  %i.dl = call ptr @xstrdup(ptr noundef %i.dk) #6
  store ptr %i.dl, ptr %i.dj, align 8
  %i.dm = load ptr, ptr %i.cn, align 8
  %i.dn = call ptr @xstrdup(ptr noundef %i.dm) #6
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dn, ptr %i.do, align 8
  %i.dp = load ptr, ptr %i.cv, align 8
  %i.dq = call ptr @xstrdup(ptr noundef %i.dp) #6
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.dq, ptr %i.dr, align 8
  %i.ds = load ptr, ptr %i.cw, align 8
  %i.dt = call ptr @xstrdup(ptr noundef %i.ds) #6
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 %i.dz, ptr %i.ea, align 4
  br label %_find_assoc_in_report.exit.i.us.i.us

_find_assoc_in_report.exit.i.us.i.us:             ; preds = %bb.x, %_find_assoc_in_report.exit.thread.i.us.i.us, %bb.w
  %.1.i.us.i.us = phi ptr [ %i.dj, %bb.x ], [ %i.di, %_find_assoc_in_report.exit.thread.i.us.i.us ], [ %.032.i.us.i.us, %bb.w ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1.i.us.i.us, i64 32
  %i.ec = call i32 @slurmdb_add_accounting_to_tres_list(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.eb) #6 ; 0 uses
  %i.ed = call ptr @list_next(ptr noundef %i.cs) #6 ; 2 uses
  %.not.i21.us.i.us = icmp eq ptr %i.ed, null
  br i1 %.not.i21.us.i.us, label %_process_au.exit.us.i.us, label %bb.u, !llvm.loop !11

_process_au.exit.us.i.us:                         ; preds = %_find_assoc_in_report.exit.i.us.i.us, %bb.t
  call void @list_iterator_destroy(ptr noundef %i.cs) #6
  br label %.backedge.us29.sink.split.i.us

.backedge.us29.sink.split.i.us:                   ; preds = %_process_au.exit.us.i.us, %bb.s, %.lr.ph.split.split.us.i.us
  %i.ee = call i32 @list_delete_item(ptr noundef %i.aa) #6 ; 0 uses
  br label %.backedge.us29.i.us

.backedge.us29.i.us:                              ; preds = %.backedge.us29.sink.split.i.us, %.thread.us.i.us
  %i.ef = call ptr @list_next(ptr noundef %i.aa) #6 ; 2 uses
  %.not.us30.i.us = icmp eq ptr %i.ef, null
  br i1 %.not.us30.i.us, label %_process_assoc_type.exit.us, label %.lr.ph.split.split.us.i.us, !llvm.loop !9

_process_assoc_type.exit.us:                      ; preds = %.backedge.us29.i.us, %bb.r
  call void @list_iterator_reset(ptr noundef %i.aa) #6
  br label %.backedge.us

.backedge.us:                                     ; preds = %.lr.ph.split.us.split, %bb.q, %_process_assoc_type.exit.us
  %i.eg = call ptr @list_next(ptr noundef %i.z) #6 ; 2 uses
  %.not104.us = icmp eq ptr %i.eg, null
  br i1 %.not104.us, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !10

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.eh = icmp eq i32 %3, 2
  br i1 %i.eh, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %slurmdb_destroy_report_user_rec.slurmdb_destroy_report_assoc_rec236 = select i1 %or.cond11, ptr @slurmdb_destroy_report_user_rec, ptr @slurmdb_destroy_report_assoc_rec
  %.237 = select i1 %or.cond11, i64 32, i64 8
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %slurmdb_destroy_report_user_rec.slurmdb_destroy_report_assoc_rec234 = select i1 %or.cond11, ptr @slurmdb_destroy_report_user_rec, ptr @slurmdb_destroy_report_assoc_rec
  %.235 = select i1 %or.cond11, i64 32, i64 8
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.backedge.us166
  %i.ei = phi ptr [ %i.fr, %.backedge.us166 ], [ %i.ab, %.lr.ph.split.split.us.preheader ] ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not109.us163 = icmp eq ptr %i.ej, null
  br i1 %.not109.us163, label %.backedge.us166, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.split.us
  %i.ek = call i32 @list_count(ptr noundef nonnull %i.ej) #6
  %.not110.us164 = icmp eq i32 %i.ek, 0
  br i1 %.not110.us164, label %.backedge.us166, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = call ptr @slurmdb_cluster_rec_2_report(ptr noundef nonnull %i.ei) #6 ; 3 uses
  call void @list_append(ptr noundef %i.d, ptr noundef %i.el) #6
  %i.em = call ptr @list_create(ptr noundef nonnull %slurmdb_destroy_report_user_rec.slurmdb_destroy_report_assoc_rec234) #6
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %.235
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 280
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call ptr @list_next(ptr noundef %i.aa) #6 ; 2 uses
  %.not25.i.us = icmp eq ptr %i.eq, null
  br i1 %.not25.i.us, label %_process_assoc_type.exit.us165, label %.lr.ph.i111.us

.lr.ph.i111.us:                                   ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  br label %.lr.ph.split.us.i118.us

.lr.ph.split.us.i118.us:                          ; preds = %.backedge.us.i123.us, %.lr.ph.i111.us
  %i.es = phi ptr [ %i.fq, %.backedge.us.i123.us ], [ %i.eq, %.lr.ph.i111.us ] ; 5 uses
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not16.us.i119.us = icmp eq ptr %i.et, null
  br i1 %.not16.us.i119.us, label %.backedge.us.sink.split.i127.us, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.us.i118.us
  %i.eu = call i32 @list_count(ptr noundef nonnull %i.et) #6
  %.not17.us.i120.us = icmp eq i32 %i.eu, 0
  br i1 %.not17.us.i120.us, label %.backedge.us.sink.split.i127.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  %.not18.us.i121.us = icmp eq ptr %i.ew, null
  br i1 %.not18.us.i121.us, label %.backedge.us.sink.split.i127.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call i32 @xstrcmp(ptr noundef %i.ep, ptr noundef %i.ey) #6
  %.not19.us.i122.us = icmp eq i32 %i.ez, 0
  br i1 %.not19.us.i122.us, label %bb.ad, label %.backedge.us.i123.us

bb.ad:                                            ; preds = %bb.ac
  %i.fa = load ptr, ptr %i.er, align 8
  %i.fb = load ptr, ptr %i.ev, align 8
  %i.fc = call ptr @getpwnam(ptr noundef %i.fb)   ; 2 uses
  %.not.i.us.i125.us = icmp eq ptr %i.fc, null
  br i1 %.not.i.us.i125.us, label %_process_uw.exit.us.i.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i32, ptr %i.fd, align 8
  br label %_process_uw.exit.us.i.us

_process_uw.exit.us.i.us:                         ; preds = %bb.ae, %bb.ad
  %.0.i.us.i126.us = phi i32 [ %i.fe, %bb.ae ], [ -2, %bb.ad ]
  %i.ff = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 56, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef 160, ptr noundef nonnull @__func__._process_uw) #6 ; 5 uses
  %i.fg = load ptr, ptr %i.ev, align 8
  %i.fh = call ptr @xstrdup(ptr noundef %i.fg) #6
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr %i.fh, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  store i32 %.0.i.us.i126.us, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = call ptr @xstrdup(ptr noundef %i.fl) #6
  store ptr %i.fm, ptr %i.ff, align 8
  call void @list_append(ptr noundef %i.fa, ptr noundef nonnull %i.ff) #6
  %i.fn = load ptr, ptr %i.es, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  call void @slurmdb_transfer_acct_list_2_tres(ptr noundef %i.fn, ptr noundef nonnull %i.fo) #6
  br label %.backedge.us.sink.split.i127.us

.backedge.us.sink.split.i127.us:                  ; preds = %_process_uw.exit.us.i.us, %bb.ab, %bb.aa, %.lr.ph.split.us.i118.us
  %i.fp = call i32 @list_delete_item(ptr noundef %i.aa) #6 ; 0 uses
  br label %.backedge.us.i123.us

.backedge.us.i123.us:                             ; preds = %.backedge.us.sink.split.i127.us, %bb.ac
  %i.fq = call ptr @list_next(ptr noundef %i.aa) #6 ; 2 uses
  %.not.us.i124.us = icmp eq ptr %i.fq, null
  br i1 %.not.us.i124.us, label %_process_assoc_type.exit.us165, label %.lr.ph.split.us.i118.us, !llvm.loop !12

_process_assoc_type.exit.us165:                   ; preds = %.backedge.us.i123.us, %bb.z
  call void @list_iterator_reset(ptr noundef %i.aa) #6
  br label %.backedge.us166

.backedge.us166:                                  ; preds = %.lr.ph.split.split.us, %bb.y, %_process_assoc_type.exit.us165
  %i.fr = call ptr @list_next(ptr noundef %i.z) #6 ; 2 uses
  %.not104.us167 = icmp eq ptr %i.fr, null
  br i1 %.not104.us167, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !10

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.backedge
  %i.fs = phi ptr [ %i.fv, %.backedge ], [ %i.ab, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %.not109 = icmp eq ptr %i.ft, null
  br i1 %.not109, label %.backedge, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.split
  %i.fu = call i32 @list_count(ptr noundef nonnull %i.ft) #6
  %.not110 = icmp eq i32 %i.fu, 0
  br i1 %.not110, label %.backedge, label %bb.ag

.backedge:                                        ; preds = %.lr.ph.split.split, %bb.af, %_process_assoc_type.exit
  %i.fv = call ptr @list_next(ptr noundef %i.z) #6 ; 2 uses
  %.not104 = icmp eq ptr %i.fv, null
  br i1 %.not104, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !10

bb.ag:                                            ; preds = %bb.af
  %i.fw = call ptr @slurmdb_cluster_rec_2_report(ptr noundef nonnull %i.fs) #6 ; 3 uses
  call void @list_append(ptr noundef %i.d, ptr noundef %i.fw) #6
  %i.fx = call ptr @list_create(ptr noundef nonnull %slurmdb_destroy_report_user_rec.slurmdb_destroy_report_assoc_rec236) #6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.237
  store ptr %i.fx, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 280
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call ptr @list_next(ptr noundef %i.aa) #6 ; 2 uses
  %.not25.i = icmp eq ptr %i.gb, null
  br i1 %.not25.i, label %_process_assoc_type.exit, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i111, %.backedge.i115
  %i.gd = phi ptr [ %i.gk, %.backedge.i115 ], [ %i.gb, %.lr.ph.i111 ] ; 8 uses
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  %.not16.i112 = icmp eq ptr %i.ge, null
  br i1 %.not16.i112, label %.backedge.sink.split.i117, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split.i
  %i.gf = call i32 @list_count(ptr noundef nonnull %i.ge) #6
  %.not17.i113 = icmp eq i32 %i.gf, 0
  br i1 %.not17.i113, label %.backedge.sink.split.i117, label %.thread.i114

.thread.i114:                                     ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call i32 @xstrcmp(ptr noundef %i.ga, ptr noundef %i.gh) #6
  %.not1922.i = icmp eq i32 %i.gi, 0
  br i1 %.not1922.i, label %bb.ai, label %.backedge.i115

.backedge.sink.split.i117:                        ; preds = %_process_wu.exit.i, %bb.ah, %.lr.ph.split.i
  %i.gj = call i32 @list_delete_item(ptr noundef %i.aa) #6 ; 0 uses
  br label %.backedge.i115

.backedge.i115:                                   ; preds = %.backedge.sink.split.i117, %.thread.i114
  %i.gk = call ptr @list_next(ptr noundef %i.aa) #6 ; 2 uses
  %.not.i116 = icmp eq ptr %i.gk, null
  br i1 %.not.i116, label %_process_assoc_type.exit, label %.lr.ph.split.i, !llvm.loop !12

bb.ai:                                            ; preds = %.thread.i114
  %i.gl = load ptr, ptr %i.gc, align 8            ; 3 uses
  %i.gm = call ptr @list_iterator_create(ptr noundef %i.gl) #6 ; 4 uses
  %i.gn = call ptr @list_next(ptr noundef %i.gm) #6 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.gn, null
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i.i
  %i.gp = phi ptr [ %i.gn, %.lr.ph.i.i ], [ %i.gv, %bb.al ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8
  %.not22.i.i = icmp eq ptr %i.gr, null
  br i1 %.not22.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gs = load ptr, ptr %i.gp, align 8
  %i.gt = load ptr, ptr %i.go, align 8
  %i.gu = call i32 @xstrcmp(ptr noundef %i.gs, ptr noundef %i.gt) #6
  %.not23.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not23.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gv = call ptr @list_next(ptr noundef %i.gm) #6 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.gv, null
  br i1 %.not.i20.i, label %._crit_edge.i.i, label %bb.aj, !llvm.loop !13

bb.am:                                            ; preds = %bb.ak
  call void @list_iterator_destroy(ptr noundef %i.gm) #6
  br label %_process_wu.exit.i

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ai
  call void @list_iterator_destroy(ptr noundef %i.gm) #6
  %i.gw = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef 188, ptr noundef nonnull @__func__._process_wu) #6 ; 3 uses
  call void @list_append(ptr noundef %i.gl, ptr noundef %i.gw) #6
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call ptr @xstrdup(ptr noundef %i.gy) #6
  store ptr %i.gz, ptr %i.gw, align 8
  br label %_process_wu.exit.i

_process_wu.exit.i:                               ; preds = %._crit_edge.i.i, %bb.am
  %.0.i21.i = phi ptr [ %i.gp, %bb.am ], [ %i.gw, %._crit_edge.i.i ]
  %i.ha = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef 196, ptr noundef nonnull @__func__._process_wu) #6 ; 4 uses
  call void @list_append(ptr noundef %i.gl, ptr noundef %i.ha) #6
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = call ptr @xstrdup(ptr noundef %i.hc) #6
  store ptr %i.hd, ptr %i.ha, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = call ptr @xstrdup(ptr noundef %i.hf) #6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store ptr %i.hg, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.gd, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  call void @slurmdb_transfer_acct_list_2_tres(ptr noundef %i.hi, ptr noundef nonnull %i.hj) #6
  %i.hk = load ptr, ptr %i.gd, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 32
  call void @slurmdb_transfer_acct_list_2_tres(ptr noundef %i.hk, ptr noundef nonnull %i.hl) #6
  br label %.backedge.sink.split.i117

_process_assoc_type.exit:                         ; preds = %.backedge.i115, %bb.ag
  call void @list_iterator_reset(ptr noundef %i.aa) #6
  br label %.backedge

end_hunk_0
