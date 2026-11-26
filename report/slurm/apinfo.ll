Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/apinfo?download=true
inline.NumInlined: 9
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pals_header_t = type { i32, i64, i64, i64, i32, i64, i64, i32, i64, i64, i32, i64, i64, i32, i64, i64, i32, i64, i64, i64 }
%struct.pals_node_t = type { i32, [64 x i8] }

@appdir = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s: no tasks found\00", align 1
@plugin_type = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: no cmds found\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: no nodes found\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: no per-node task counts\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s: no task IDs found\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: no nodelist found\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: %s: %s:%d: %s: safe_write (%zu of %d) failed: %m\00", align 1
@__func__.create_apinfo = private unnamed_addr constant [14 x i8] c"create_apinfo\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"apinfo.c\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"%s: %s: %s:%d: %s: safe_write (%zu of %d) partial write\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: Couldn't sync %s to disk: %m\00", align 1
@apinfo = external global ptr, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"%s: %s: %s: Wrote apinfo file %s\00", align 1
@__func__._multi_prog_parse = private unnamed_addr constant [18 x i8] c"_multi_prog_parse\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%s: invalid rank id %s\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"%s: no command for task id %d\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"%s/%s/apinfo.%u.%u\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"switch_hpe_slingshot\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"%s: %s: %s: Couldn't open %s: %m\00", align 1
@__func__._open_ss_info = private unnamed_addr constant [14 x i8] c"_open_ss_info\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"%s: %s: %s:%d: %s: safe_read EOF\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"%s: %s: %s:%d: %s: safe_read (%zu of %d) EOF\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"%s: %s: %s:%d: %s: safe_read (%zu of %d) failed: %m\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"%s: %s: %s:%d: %s: safe_read (%zu of %d) partial read\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"%s: %s version %d doesn't match expected version %d\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"%s: %s invalid ncomm_profiles %d\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"%s: %s invalid comm_profile_size %zu != %zu\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"%s: %s: %s: Found %d comm profiles in %s\00", align 1
@__func__._setup_pals_profiles = private unnamed_addr constant [21 x i8] c"_setup_pals_profiles\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"%s: Couldn't seek to %zu in %s: %m\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"%s: %s invalid nnics %d\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"%s: %s invalid nic_size %zu != %zu\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"%s: %s: %s: Found %d hsn nics in %s\00", align 1
@__func__._setup_pals_nics = private unnamed_addr constant [17 x i8] c"_setup_pals_nics\00", align 1
@__func__._setup_pals_pes = private unnamed_addr constant [16 x i8] c"_setup_pals_pes\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"%s: task %d node %d >= ntasks %d; skipping\00", align 1
@__func__._setup_pals_cmds = private unnamed_addr constant [17 x i8] c"_setup_pals_cmds\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"%s/apinfo\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"%s: Couldn't open apinfo file %s: %m\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"%s: Couldn't chown %s to uid %u gid %u: %m\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"%s: Couldn't create hostlist\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__._write_pals_nodes = private unnamed_addr constant [18 x i8] c"_write_pals_nodes\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"nid%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @create_apinfo(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.pals_header_t, align 8      ; 30 uses
  %i.i = alloca ptr, align 8                      ; 9 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca ptr, align 8                      ; 6 uses
  %i.n = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store ptr null, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  store ptr null, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  %i.o = load ptr, ptr @appdir, align 8
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.ea, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load i32, ptr %i.p, align 8
  %.not145 = icmp eq i32 %i.q, -2
  br i1 %.not145, label %bb.c, label %.thread715

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 7 uses
  %i.s = load i32, ptr %i.r, align 4              ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.aa = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 592
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 2
  %.not146 = icmp eq i32 %i.af, 0
  br i1 %.not146, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.ag = zext i32 %i.s to i64
  %i.ah = tail call ptr @slurm_xcalloc(i64 noundef %i.ag, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef 84, ptr noundef nonnull @__func__._multi_prog_parse) #11 ; 7 uses
  store ptr %i.ah, ptr %i.h, align 8
  %i.ai = load i32, ptr %i.r, align 4
  %.not134.i = icmp eq i32 %i.ai, 0
  br i1 %.not134.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  store i32 -2, ptr %i.aj, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = load i32, ptr %i.r, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call ptr @xstrdup(ptr noundef %i.aq) #11 ; 3 uses
  store ptr %i.ar, ptr %i.d, align 8
  %i.as = tail call ptr @xstrstr(ptr noundef %i.ar, ptr noundef nonnull @.str.11) #11 ; 2 uses
  %.not113.i = icmp eq ptr %i.as, null
  br i1 %.not113.i, label %.critedge4.preheader.i, label %.lr.ph115.i

.critedge4.preheader.i:                           ; preds = %.lr.ph115.i, %._crit_edge.i
  %i.at = phi ptr [ %i.ar, %._crit_edge.i ], [ %3, %.lr.ph115.i ]
  %i.au = call ptr @strtok_r(ptr noundef %i.at, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.f) #11 ; 2 uses
  %.not84.i445448 = icmp eq ptr %i.au, null
  br i1 %.not84.i445448, label %.preheader.i, label %.lr.ph

.lr.ph115.i:                                      ; preds = %._crit_edge.i, %.lr.ph115.i
  %i.av = phi ptr [ %i.ax, %.lr.ph115.i ], [ %i.as, %._crit_edge.i ] ; 2 uses
  store i8 32, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 32, ptr %i.aw, align 1
  %3 = load ptr, ptr %i.d, align 8                ; 2 uses
  %i.ax = tail call ptr @xstrstr(ptr noundef %3, ptr noundef nonnull @.str.11) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %.critedge4.preheader.i, label %.lr.ph115.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.loopexit.i, %.critedge4.backedge.i, %.critedge4.preheader.i
  %.070.ph.i.lcssa = phi i32 [ %.070.ph.i450, %.critedge4.backedge.i ], [ 0, %.critedge4.preheader.i ], [ %spec.select.i, %.loopexit.i ] ; 2 uses
  %i.ay = load i32, ptr %i.r, align 4             ; 2 uses
  %.not136.i = icmp eq i32 %i.ay, 0
  br i1 %.not136.i, label %.loopexit, label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.ay to i64
  br label %bb.r

bb.e:                                             ; preds = %.lr.ph, %.critedge4.backedge.i
  %i.az = phi ptr [ %i.de, %.lr.ph ], [ %i.bm, %.critedge4.backedge.i ] ; 2 uses
  %.072.i446 = phi i32 [ %.072.ph.i449, %.lr.ph ], [ %i.ba, %.critedge4.backedge.i ]
  %i.ba = add nsw i32 %.072.i446, 1               ; 4 uses
  %i.bb = load i8, ptr %i.az, align 1             ; 2 uses
  %cond116.i = icmp eq i8 %i.bb, 0
  br i1 %cond116.i, label %.critedge4.backedge.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.e
  %i.bc = tail call ptr @__ctype_b_loc() #12      ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph119.i
  %i.be = phi i8 [ %i.bb, %.lr.ph119.i ], [ %i.bk, %bb.g ] ; 3 uses
  %.0117.i = phi ptr [ %i.az, %.lr.ph119.i ], [ %i.bj, %bb.g ] ; 4 uses
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = and i16 %i.bh, 8192
  %.not86.i = icmp eq i16 %i.bi, 0
  br i1 %.not86.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.0117.i, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1             ; 2 uses
  %cond.i = icmp eq i8 %i.bk, 0
  br i1 %cond.i, label %.critedge4.backedge.i, label %bb.f, !llvm.loop !12

.critedge.i:                                      ; preds = %bb.f
  %cond176.i = icmp eq i8 %i.be, 35
  br i1 %cond176.i, label %.critedge4.backedge.i, label %.lr.ph122.i

.critedge4.backedge.i:                            ; preds = %bb.g, %bb.i, %.critedge.i, %bb.e
  %.not83.i = icmp eq i32 %i.ba, 0
  %i.bl = load ptr, ptr %i.d, align 8
  %.sink.i = select i1 %.not83.i, ptr %i.bl, ptr null
  %i.bm = call ptr @strtok_r(ptr noundef %.sink.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.f) #11 ; 2 uses
  %.not84.i = icmp eq ptr %i.bm, null
  br i1 %.not84.i, label %.preheader.i, label %bb.e

.lr.ph122.i:                                      ; preds = %.critedge.i, %bb.h
  %i.bn = phi i8 [ %i.bt, %bb.h ], [ %i.be, %.critedge.i ]
  %.1121.i = phi ptr [ %i.bs, %bb.h ], [ %.0117.i, %.critedge.i ] ; 3 uses
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = and i16 %i.bq, 8192
  %.not88.i = icmp eq i16 %i.br, 0
  br i1 %.not88.i, label %bb.h, label %.critedge2.i

bb.h:                                             ; preds = %.lr.ph122.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.1121.i, i64 1 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %.not87.i = icmp eq i8 %i.bt, 0
  br i1 %.not87.i, label %.critedge2.thread.i, label %.lr.ph122.i, !llvm.loop !13

.critedge2.i:                                     ; preds = %.lr.ph122.i
  store i8 0, ptr %.1121.i, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.critedge2.i
  %.1.pn.i = phi ptr [ %.1121.i, %.critedge2.i ], [ %.2.i, %bb.j ]
  %.2.i = getelementptr inbounds nuw i8, ptr %.1.pn.i, i64 1 ; 2 uses
  %i.bu = load i8, ptr %.2.i, align 1             ; 2 uses
  %.not89.i = icmp eq i8 %i.bu, 0
  br i1 %.not89.i, label %.critedge4.backedge.i, label %bb.j, !llvm.loop !14

bb.j:                                             ; preds = %bb.i
  %i.bv = load ptr, ptr %i.bc, align 8
  %i.bw = sext i8 %i.bu to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = and i16 %i.by, 8192
  %.not90.i = icmp eq i16 %i.bz, 0
  br i1 %.not90.i, label %bb.k, label %bb.i, !llvm.loop !15

bb.k:                                             ; preds = %bb.j
  %i.ca = call i32 @xstrcmp(ptr noundef nonnull %.0117.i, ptr noundef nonnull @.str.13) #11
  %.not91.i = icmp eq i32 %i.ca, 0
  br i1 %.not91.i, label %.preheader95.i, label %bb.n

.preheader95.i:                                   ; preds = %bb.k
  %i.cb = load i32, ptr %i.r, align 4             ; 2 uses
  %.not135.i = icmp eq i32 %i.cb, 0
  br i1 %.not135.i, label %.loopexit.i, label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %.preheader95.i, %bb.m
  %i.cc = phi i32 [ %i.ch, %bb.m ], [ %i.cb, %.preheader95.i ]
  %indvars.iv159.i = phi i64 [ %indvars.iv.next160.i, %bb.m ], [ 0, %.preheader95.i ] ; 2 uses
  %.067128.i = phi i32 [ %.168.i, %bb.m ], [ 0, %.preheader95.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv159.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp eq i32 %i.ce, -2
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph129.i
  store i32 %.070.ph.i450, ptr %i.cd, align 4
  %i.cg = add nsw i32 %.067128.i, 1
  %.pre.i = load i32, ptr %i.r, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph129.i
  %i.ch = phi i32 [ %.pre.i, %bb.l ], [ %i.cc, %.lr.ph129.i ] ; 2 uses
  %.168.i = phi i32 [ %i.cg, %bb.l ], [ %.067128.i, %.lr.ph129.i ] ; 2 uses
  %indvars.iv.next160.i = add nuw nsw i64 %indvars.iv159.i, 1 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next160.i, %i.ci
  br i1 %i.cj, label %.lr.ph129.i, label %.loopexit.i, !llvm.loop !16

bb.n:                                             ; preds = %bb.k
  %i.ck = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.14, ptr noundef nonnull %.0117.i) #11 ; 2 uses
  store ptr %i.ck, ptr %i.g, align 8
  %i.cl = call ptr @hostlist_create(ptr noundef %i.ck) #11 ; 5 uses
  call void @slurm_xfree(ptr noundef nonnull %i.g) #11
  %.not92.i = icmp eq ptr %i.cl, null
  br i1 %.not92.i, label %.critedge2.thread.i, label %.preheader96.i

.preheader96.i:                                   ; preds = %bb.n
  %i.cm = call ptr @hostlist_pop(ptr noundef nonnull %i.cl) #11 ; 2 uses
  %.not93123.i = icmp eq ptr %i.cm, null
  br i1 %.not93123.i, label %._crit_edge126.i, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.preheader96.i, %bb.q
  %i.cn = phi ptr [ %i.cz, %bb.q ], [ %i.cm, %.preheader96.i ] ; 4 uses
  %.269124.i = phi i32 [ %i.cy, %bb.q ], [ 0, %.preheader96.i ]
  %i.co = call i64 @strtol(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.e, i32 noundef 10) #11 ; 2 uses
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %i.cq = load ptr, ptr %i.e, align 8
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = icmp ne i8 %i.cr, 0
  %i.ct = icmp slt i32 %i.cp, 0
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph125.i
  %i.cu = load i32, ptr %i.r, align 4
  %.not94.i = icmp ugt i32 %i.cu, %i.cp
  br i1 %.not94.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph125.i
  call void @hostlist_destroy(ptr noundef nonnull %i.cl) #11
  %i.cv = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef nonnull @plugin_type, ptr noundef nonnull %i.cn) #11 ; 0 uses
  call void @free(ptr noundef nonnull %i.cn) #11
  br label %.critedge2.thread.i

bb.q:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.cn) #11
  %i.cw = and i64 %i.co, 2147483647
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cw
  store i32 %.070.ph.i450, ptr %i.cx, align 4
  %i.cy = add nuw nsw i32 %.269124.i, 1           ; 2 uses
  %i.cz = call ptr @hostlist_pop(ptr noundef nonnull %i.cl) #11 ; 2 uses
  %.not93.i = icmp eq ptr %i.cz, null
  br i1 %.not93.i, label %._crit_edge126.i, label %.lr.ph125.i, !llvm.loop !17

._crit_edge126.i:                                 ; preds = %bb.q, %.preheader96.i
  %.269.lcssa.i = phi i32 [ 0, %.preheader96.i ], [ %i.cy, %bb.q ]
  call void @hostlist_destroy(ptr noundef nonnull %i.cl) #11
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.m, %._crit_edge126.i, %.preheader95.i
  %.3.i = phi i32 [ %.269.lcssa.i, %._crit_edge126.i ], [ 0, %.preheader95.i ], [ %.168.i, %bb.m ]
  %i.da = icmp sgt i32 %.3.i, 0
  %i.db = zext i1 %i.da to i32
  %spec.select.i = add nuw nsw i32 %.070.ph.i450, %i.db ; 2 uses
  %.not83.i443 = icmp eq i32 %i.ba, 0
  %i.dc = load ptr, ptr %i.d, align 8
  %.sink.i444 = select i1 %.not83.i443, ptr %i.dc, ptr null
  %i.dd = call ptr @strtok_r(ptr noundef %.sink.i444, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.f) #11 ; 2 uses
  %.not84.i445 = icmp eq ptr %i.dd, null
  br i1 %.not84.i445, label %.preheader.i, label %.lr.ph, !llvm.loop !14

.lr.ph:                                           ; preds = %.critedge4.preheader.i, %.loopexit.i
  %i.de = phi ptr [ %i.dd, %.loopexit.i ], [ %i.au, %.critedge4.preheader.i ]
  %.070.ph.i450 = phi i32 [ %spec.select.i, %.loopexit.i ], [ 0, %.critedge4.preheader.i ] ; 4 uses
  %.072.ph.i449 = phi i32 [ %i.ba, %.loopexit.i ], [ 0, %.critedge4.preheader.i ]
  br label %bb.e

bb.r:                                             ; preds = %bb.t, %.lr.ph132.i
  %indvars.iv162.i = phi i64 [ 0, %.lr.ph132.i ], [ %indvars.iv.next163.i, %bb.t ] ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv162.i
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp eq i32 %i.dg, -2
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.di = trunc nuw nsw i64 %indvars.iv162.i to i32
  %i.dj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.16, ptr noundef nonnull @plugin_type, i32 noundef %i.di) #11 ; 0 uses
end_hunk_0
