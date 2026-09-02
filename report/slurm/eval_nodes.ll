Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/eval_nodes?download=true
inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.foreach_add_nodes_lln_t = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.foreach_gres_filter_sock_core_args_t = type { ptr, ptr, i16, i16, i16, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i16, ptr, ptr, i16, ptr, i32, i32 }

@eval_nodes.pack_serial_at_end = internal unnamed_addr global i1 false, align 1
@eval_nodes.set = internal unnamed_addr global i1 false, align 1
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str = private unnamed_addr constant [19 x i8] c"pack_serial_at_end\00", align 1
@node_record_table_ptr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: %s: Topo:%s weight:%lu\00", align 1
@plugin_type = external constant [0 x i8], align 1
@__func__.eval_nodes_topo_weight_log = private unnamed_addr constant [27 x i8] c"eval_nodes_topo_weight_log\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"eval_nodes.c\00", align 1
@__func__._reduce_res_cores = private unnamed_addr constant [18 x i8] c"_reduce_res_cores\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"%s: %s: does not support arbitrary tasks distribution\00", align 1
@__func__._eval_nodes_spread = private unnamed_addr constant [19 x i8] c"_eval_nodes_spread\00", align 1
@node_record_count = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"%s: %s: %pJ required node %s lacks available resources\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"%s: %s: SELECT_TYPE: %pJ requires nodes exceed maximum node limit\00", align 1
@__func__._build_node_weight_list = private unnamed_addr constant [24 x i8] c"_build_node_weight_list\00", align 1
@__func__._eval_nodes_busy = private unnamed_addr constant [17 x i8] c"_eval_nodes_busy\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"%s: %s: %pJ can't use required nodes due to max CPU limit\00", align 1
@idle_node_bitmap = external local_unnamed_addr global ptr, align 8
@__func__._eval_nodes_lln = private unnamed_addr constant [16 x i8] c"_eval_nodes_lln\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%s: %s: %pJ required node %s not available\00", align 1
@__func__._eval_nodes_serial = private unnamed_addr constant [19 x i8] c"_eval_nodes_serial\00", align 1
@__func__._eval_nodes_consec = private unnamed_addr constant [19 x i8] c"_eval_nodes_consec\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"%s: %s: %pJ required node %s needed %d cpus but only has %d\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%s: %s: consec_index is zero\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [83 x i8] c"%s: %s: set:%d consec CPUs:%d nodes:%d:%s %sbegin:%d end:%d required:%d weight:%lu\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @eval_nodes_gres(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %i.d = add nsw i32 %i.c, -1                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.f = zext nneg i32 %i.d to i64
  %i.g = load i64, ptr %1, align 8
  %i.h = sub i64 %i.g, %i.f                       ; 5 uses
  store i64 %i.h, ptr %1, align 8
  %i.i = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 305
  %i.k = load i8, ptr %i.j, align 1
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i16, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.o = load i16, ptr %i.n, align 8
  %i.p = udiv i16 %i.m, %i.o
  %i.q = zext i16 %i.p to i64                     ; 3 uses
  %i.r = icmp ugt i64 %i.h, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sub nuw i64 %i.h, %i.q
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.d, %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.v = phi i64 [ %i.h, %bb.a ], [ %i.q, %bb.c ], [ %i.h, %bb.b ]
  %.066 = phi i32 [ %i.d, %bb.a ], [ %i.u, %bb.c ], [ %i.d, %bb.b ]
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1) ; 2 uses
  store i64 %spec.select, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = sext i32 %5 to i64                       ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 436 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 305
  %i.aj = load i8, ptr %i.ai, align 1
  %.not.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 1176
  %i.al = load ptr, ptr %i.ak, align 8
  %.not30.i = icmp eq ptr %i.al, null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i1 [ %.not30.i, %bb.e ], [ false, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 504
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = and i32 %i.an, 65535                    ; 2 uses
  %i.ap = icmp ne i32 %i.ao, 4
  %or.cond.i = or i1 %.0.i, %i.ap
  br i1 %or.cond.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 248
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not31.i = icmp eq ptr %i.ar, null
  br i1 %.not31.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.av = icmp eq i32 %i.ao, 3
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = sext i32 %6 to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.026.i = phi i64 [ 65534, %bb.j ], [ 65534, %bb.i ], [ %i.au, %bb.h ], [ 1, %bb.g ]
  %.025.i = phi i64 [ %i.bb, %bb.j ], [ 65534, %bb.i ], [ 65534, %bb.h ], [ 65534, %bb.g ]
  %i.bc = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %spec.select, i64 %.026.i)
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %.025.i) ; 5 uses
  %i.be = load i32, ptr %i.ab, align 4
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.l, label %_reduce_res_core_by_task_cnt.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 554
  %i.bi = load i16, ptr %i.bh, align 2            ; 3 uses
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 90
  %i.bl = load i16, ptr %i.bk, align 2            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 568
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %0, align 8
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.y
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = and i16 %i.bw, 2
  %.not.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i, label %bb.m, label %_reduce_res_cores.exit.i

bb.m:                                             ; preds = %bb.l
  %i.by = zext i16 %i.bi to i64                   ; 2 uses
  %i.bz = tail call ptr @slurm_xcalloc(i64 noundef %i.by, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 143, ptr noundef nonnull @__func__._reduce_res_cores) #8 ; 3 uses
  store ptr %i.bz, ptr %i.a, align 8
  %.not193.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not193.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.ca = zext i16 %i.bl to i32
  %7 = zext i16 %i.bl to i64
  br label %bb.n

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.m
  %.0119.lcssa.i.i = phi i32 [ 0, %bb.m ], [ %i.cr, %bb.n ]
  %i.cb = tail call ptr @list_iterator_create(ptr noundef %i.bp) #8 ; 3 uses
  %i.cc = tail call ptr @list_next(ptr noundef %i.cb) #8 ; 2 uses
  %.not142188.i.i = icmp eq ptr %i.cc, null
  br i1 %.not142188.i.i, label %._crit_edge192.i.i, label %.lr.ph191.i.i

.lr.ph191.i.i:                                    ; preds = %._crit_edge.i.i
  %i.cd = zext i16 %i.bl to i32                   ; 2 uses
  %i.ce = mul nuw nsw i32 %i.cd, %i.bj
  %i.cf = add nsw i32 %i.ce, -1
  %i.cg = zext i16 %i.af to i64                   ; 2 uses
  %i.ch = zext i16 %i.bn to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 5 uses
  %.0119164.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cr, %bb.n ]
  %indvars194.i.i = trunc i64 %indvars.iv.i.i to i32
  %8 = mul nuw nsw i64 %indvars.iv.i.i, %7
  %i.cj = add i32 %indvars194.i.i, 1
  %i.ck = mul nuw i32 %i.cj, %i.ca
  %9 = trunc nuw nsw i64 %8 to i32
  %i.cl = tail call i32 @bit_set_count_range(ptr noundef %i.bs, i32 noundef %9, i32 noundef %i.ck) #8
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv.i.i
  store i16 %i.cm, ptr %i.cn, align 2
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = zext i16 %i.cp to i32
  %i.cr = add i32 %.0119164.i.i, %i.cq            ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.by
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !12

bb.o:                                             ; preds = %bb.ae, %.lr.ph191.i.i
  %.1.i = phi i64 [ %i.bd, %.lr.ph191.i.i ], [ %.2.i, %bb.ae ] ; 9 uses
  %i.cs = phi ptr [ %i.bz, %.lr.ph191.i.i ], [ %i.gb, %bb.ae ] ; 9 uses
  %i.ct = phi ptr [ %i.cc, %.lr.ph191.i.i ], [ %i.gc, %bb.ae ] ; 2 uses
  %.1120189.i.i = phi i32 [ %.0119.lcssa.i.i, %.lr.ph191.i.i ], [ %.7.i.i, %bb.ae ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8            ; 3 uses
  %.not143.i.i = icmp eq ptr %i.cv, null
  br i1 %.not143.i.i, label %bb.ae, label %bb.p, !llvm.loop !13

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8            ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %.not144.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not144.i.i, label %bb.q, label %.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.db = load i16, ptr %i.da, align 8            ; 3 uses
  switch i16 %i.db, label %bb.r [
    i16 0, label %bb.ae
    i16 -2, label %bb.ae
  ], !llvm.loop !13

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dd = load i64, ptr %i.dc, align 8
  %.not146.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not146.i.i, label %bb.s, label %bb.ae, !llvm.loop !13

.thread.i.i:                                      ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.df = load i64, ptr %i.de, align 8
  %.not146157.i.i = icmp eq i64 %i.df, 0
  br i1 %.not146157.i.i, label %.thread158.i.i, label %bb.ae, !llvm.loop !13

.thread158.i.i:                                   ; preds = %.thread.i.i
  %i.dg = mul i64 %i.cz, %.1.i
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not148.i.i = icmp eq i16 %i.db, 0
  br i1 %.not148.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = zext i16 %i.db to i64                   ; 2 uses
  %i.di = udiv i64 %.1.i, %i.dh                   ; 2 uses
  %i.dj = mul i64 %i.di, %i.dh
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.thread158.i.i
  %.4.i = phi i64 [ %.1.i, %bb.s ], [ %i.dj, %bb.t ], [ %.1.i, %.thread158.i.i ] ; 4 uses
  %.0107.i.i = phi i64 [ 0, %bb.s ], [ %i.di, %bb.t ], [ %i.dg, %.thread158.i.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 64 ; 4 uses
  %i.dl = load i64, ptr %i.dk, align 8
  %..0107.i.i = call i64 @llvm.umin.i64(i64 %i.dl, i64 %.0107.i.i)
  store i64 %..0107.i.i, ptr %i.dk, align 8
  %i.dm = call i32 @gres_find_gpu_or_alt(ptr noundef nonnull %i.cv, ptr noundef null) #8
  %.not149.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not149.i.i, label %bb.ae, label %bb.v, !llvm.loop !13

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not150.i.i = icmp eq ptr %i.do, null
  br i1 %.not150.i.i, label %bb.ae, label %bb.w, !llvm.loop !13

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.y
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not151.i.i = icmp eq ptr %i.dq, null
  br i1 %.not151.i.i, label %bb.ae, label %bb.x, !llvm.loop !13

bb.x:                                             ; preds = %bb.w
  %i.dr = mul i64 %.0107.i.i, %i.cg
  %i.ds = call ptr @bit_copy(ptr noundef nonnull %i.dq) #8 ; 2 uses
  store ptr %i.ds, ptr %i.b, align 8
  call void @bit_and(ptr noundef %i.ds, ptr noundef %i.bs) #8
  %i.dt = load ptr, ptr %i.b, align 8
  %i.du = call i32 @bit_set_count(ptr noundef %i.dt) #8
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %bb.x
  %.5.i = phi i64 [ %.4.i, %bb.x ], [ %.6.i, %.loopexit.i.i ] ; 4 uses
  %i.dy = phi ptr [ %i.cs, %bb.x ], [ %i.ff, %.loopexit.i.i ] ; 2 uses
  %.0105186.i.i = phi i32 [ %i.cf, %bb.x ], [ %.3.i.i, %.loopexit.i.i ] ; 2 uses
  %.1108185.i.i = phi i64 [ %.0107.i.i, %bb.x ], [ %.2109.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.0111184.in.i.i = phi i64 [ %i.dr, %bb.x ], [ %i.fy, %.loopexit.i.i ] ; 2 uses
  %.0113183.i.i = phi i16 [ %i.dv, %bb.x ], [ %.1114.lcssa.i.i, %.loopexit.i.i ] ; 4 uses
  %.2121182.i.i = phi i32 [ %.1120189.i.i, %bb.x ], [ %.3122.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.0111184.i.i = trunc i64 %.0111184.in.i.i to i32
  %i.dz = zext i16 %.0113183.i.i to i32
  %i.ea = icmp ult i32 %.0111184.i.i, %i.dz
  br i1 %i.ea, label %.lr.ph169.preheader.i.i, label %.thread159.i.i

.lr.ph169.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.eb = trunc i64 %.0111184.in.i.i to i16       ; 2 uses
  %i.ec = add i16 %.0113183.i.i, -1
  %umin.i = call i16 @llvm.umin.i16(i16 %i.ec, i16 %i.eb)
  br label %.lr.ph169.i.i

.lr.ph169.i.i:                                    ; preds = %bb.ab, %.lr.ph169.preheader.i.i
  %i.ed = phi ptr [ %i.eq, %bb.ab ], [ %i.dy, %.lr.ph169.preheader.i.i ] ; 2 uses
  %.1106168.i.i = phi i32 [ %i.fd, %bb.ab ], [ %.0105186.i.i, %.lr.ph169.preheader.i.i ]
  %.1114167.i.i = phi i16 [ %i.ek, %bb.ab ], [ %.0113183.i.i, %.lr.ph169.preheader.i.i ] ; 2 uses
  %.3122166.i.i = phi i32 [ %.4123.i.i, %bb.ab ], [ %.2121182.i.i, %.lr.ph169.preheader.i.i ] ; 3 uses
  %i.ee = load ptr, ptr %i.b, align 8
  %i.ef = sext i32 %.1106168.i.i to i64
  %i.eg = call i64 @bit_fls_from_bit(ptr noundef %i.ee, i64 noundef %i.ef) #8 ; 2 uses
  %i.eh = trunc i64 %i.eg to i32                  ; 4 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %.thread159.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph169.i.i
  %i.ej = and i64 %i.eg, 2147483647
  call void @bit_clear(ptr noundef %i.bs, i64 noundef %i.ej) #8
  %i.ek = add i16 %.1114167.i.i, -1               ; 2 uses
  %i.el = udiv i32 %i.eh, %i.cd
  %i.em = zext nneg i32 %i.el to i64              ; 3 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.em ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = add i16 %i.eo, -1
  store i16 %i.ep, ptr %i.en, align 2
  %i.eq = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.em
  %i.es = load i16, ptr %i.er, align 2
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.em ; 2 uses
  %i.eu = load i16, ptr %i.et, align 2            ; 2 uses
  %i.ev = icmp ult i16 %i.es, %i.eu
  br i1 %i.ev, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ew = add i16 %i.eu, -1
  store i16 %i.ew, ptr %i.et, align 2
  %i.ex = add i32 %.3122166.i.i, -1               ; 3 uses
  %i.ey = mul i32 %i.ex, %i.ch                    ; 2 uses
  %i.ez = load i16, ptr %i.ci, align 8
  %i.fa = zext i16 %i.ez to i32
  %i.fb = icmp slt i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fc = trunc i32 %i.ey to i16
  store i16 %i.fc, ptr %i.ci, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.4123.i.i = phi i32 [ %.3122166.i.i, %bb.y ], [ %i.ex, %bb.aa ], [ %i.ex, %bb.z ] ; 2 uses
  %i.fd = add nsw i32 %i.eh, -1                   ; 2 uses
  %i.fe = icmp ugt i16 %i.ek, %i.eb
  br i1 %i.fe, label %.lr.ph169.i.i, label %.thread159.i.i

.thread159.i.i:                                   ; preds = %bb.ab, %.lr.ph169.i.i, %.preheader.i.i
  %i.ff = phi ptr [ %i.dy, %.preheader.i.i ], [ %i.ed, %.lr.ph169.i.i ], [ %i.eq, %bb.ab ] ; 3 uses
  %.3122.lcssa.i.i = phi i32 [ %.2121182.i.i, %.preheader.i.i ], [ %.3122166.i.i, %.lr.ph169.i.i ], [ %.4123.i.i, %bb.ab ] ; 3 uses
  %.1114.lcssa.i.i = phi i16 [ %.0113183.i.i, %.preheader.i.i ], [ %.1114167.i.i, %.lr.ph169.i.i ], [ %umin.i, %bb.ab ] ; 2 uses
  %.3.i.i = phi i32 [ %.0105186.i.i, %.preheader.i.i ], [ %i.eh, %.lr.ph169.i.i ], [ %i.fd, %bb.ab ]
  %i.fg = load i16, ptr %i.dw, align 2            ; 2 uses
  %.not153.i.i = icmp eq i16 %i.fg, 0
  br i1 %.not153.i.i, label %.thread211.i.i, label %bb.ac

bb.ac:                                            ; preds = %.thread159.i.i
  %i.fh = load i16, ptr %i.ci, align 8
  %i.fi = udiv i16 %i.fh, %i.fg
  %i.fj = zext i16 %i.fi to i64                   ; 3 uses
  %i.fk = icmp ugt i64 %.1108185.i.i, %i.fj
  br i1 %i.fk, label %.lr.ph179.i.preheader.i, label %.loopexit.i.i

.lr.ph179.i.preheader.i:                          ; preds = %bb.ac
  %i.fl = load i64, ptr %i.cy, align 8            ; 2 uses
  %.not155.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not155.i.i, label %.lr.ph179.i.preheader.split.us.i, label %.lr.ph179.i.i

.lr.ph179.i.preheader.split.us.i:                 ; preds = %.lr.ph179.i.preheader.i
  %i.fm = load i16, ptr %i.dx, align 8            ; 2 uses
  %.not156.i.us.i = icmp eq i16 %i.fm, 0
  %i.fn = zext i16 %i.fm to i64                   ; 2 uses
  br i1 %.not156.i.us.i, label %.lr.ph179.i.us.us.us.i, label %.lr.ph179.i.us.i

.lr.ph179.i.us.us.us.i:                           ; preds = %.lr.ph179.i.preheader.split.us.i, %.lr.ph179.i.us.us.us.i
  br label %.lr.ph179.i.us.us.us.i

.lr.ph179.i.us.i:                                 ; preds = %.lr.ph179.i.preheader.split.us.i, %.lr.ph179.i.us.i
end_hunk_0
