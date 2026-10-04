Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtpreprocesskeys?download=true
inline.NumInlined: 28
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FmgrInfo = type { ptr, i32, i16, i8, i8, i8, ptr, ptr, ptr }
%struct.BTSortArrayContext = type { ptr, i32, i8 }
%struct.BTScanKeyPreproc = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"btree index keys must be ordered by attribute\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"nbtpreprocesskeys.c\00", align 1
@__func__._bt_preprocess_keys = private unnamed_addr constant [20 x i8] c"_bt_preprocess_keys\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unrecognized StrategyNumber: %d\00", align 1
@__func__._bt_mark_scankey_required = private unnamed_addr constant [26 x i8] c"_bt_mark_scankey_required\00", align 1
@__func__._bt_compare_scankey_args = private unnamed_addr constant [25 x i8] c"_bt_compare_scankey_args\00", align 1
@__func__._bt_saoparray_shrink = private unnamed_addr constant [21 x i8] c"_bt_saoparray_shrink\00", align 1
@__func__._bt_skiparray_shrink = private unnamed_addr constant [21 x i8] c"_bt_skiparray_shrink\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"BTree array context\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"missing oprcode for skipping equals operator %u\00", align 1
@__func__._bt_preprocess_array_keys = private unnamed_addr constant [26 x i8] c"_bt_preprocess_array_keys\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"missing support function %d(%u,%u) for attribute %d of index \22%s\22\00", align 1
@__func__._bt_setup_array_cmp = private unnamed_addr constant [20 x i8] c"_bt_setup_array_cmp\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"missing operator %d(%u,%u) in opfamily %u\00", align 1
@__func__._bt_find_extreme_element = private unnamed_addr constant [25 x i8] c"_bt_find_extreme_element\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"missing oprcode for operator %u\00", align 1
@.str.8 = private unnamed_addr constant [116 x i8] c"number of array scan keys left by preprocessing (%d) exceeds the maximum allowed by parallel btree index scans (%d)\00", align 1
@__func__._bt_preprocess_array_keys_final = private unnamed_addr constant [32 x i8] c"_bt_preprocess_array_keys_final\00", align 1
@switch.table._bt_mark_scankey_required = private unnamed_addr constant [5 x i32] [i32 65536, i32 65536, i32 196608, i32 131072, i32 131072], align 4

; Function Attrs: nounwind uwtable
define dso_local void @_bt_preprocess_keys(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.FmgrInfo, align 8           ; 5 uses
  %2 = alloca %struct.BTSortArrayContext, align 8 ; 7 uses
  %i.a = alloca [32 x i32], align 16              ; 7 uses
  %3 = alloca %struct.FmgrInfo, align 8           ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 13 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %4 = alloca [5 x %struct.BTScanKeyPreproc], align 16 ; 25 uses
  %i.i = alloca i8, align 1                       ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 392
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.thread312, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.k, align 8
  store i32 0, ptr %i.r, align 4
  %i.u = icmp slt i32 %i.m, 1
  br i1 %i.u, label %.thread312, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.j, align 8              ; 6 uses
  %i.w = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.z = load i32, ptr %i.l, align 8              ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 9 uses
  %wide.trip.count.i.i = zext nneg i32 %i.z to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.z, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi505 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %index
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %index
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %i.ak = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 288
  %i.am = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 360
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 432
  %i.aq = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 504
  %i.as = load i32, ptr %i.ad, align 8
  %i.at = load i32, ptr %i.af, align 8
  %i.au = load i32, ptr %i.ah, align 8
  %i.av = load i32, ptr %i.aj, align 8
  %i.aw = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 1
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 2
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 3
  %i.ba = load i32, ptr %i.al, align 8
  %i.bb = load i32, ptr %i.an, align 8
  %i.bc = load i32, ptr %i.ap, align 8
  %i.bd = load i32, ptr %i.ar, align 8
  %i.be = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 1
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 2
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 3
  %i.bi = lshr <4 x i32> %i.az, splat (i32 5)
  %i.bj = lshr <4 x i32> %i.bh, splat (i32 5)
  %i.bk = and <4 x i32> %i.bi, splat (i32 1)
  %i.bl = and <4 x i32> %i.bj, splat (i32 1)
  %i.bm = add <4 x i32> %i.bk, %vec.phi           ; 2 uses
  %i.bn = add <4 x i32> %i.bl, %vec.phi505        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bn, %i.bm
  %i.bp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.075148.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bp, %middle.block ]
  br label %scalar.ph

.preheader.i.i:                                   ; preds = %scalar.ph, %middle.block, %bb.c
  %.075.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.bp, %middle.block ], [ %spec.select.i.i, %scalar.ph ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 360 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 368 ; 4 uses
  br label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.075148.i.i = phi i32 [ %spec.select.i.i, %scalar.ph ], [ %.075148.i.i.ph, %scalar.ph.preheader ]
  %i.bt = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = lshr i32 %i.bu, 5
  %i.bw = and i32 %i.bv, 1
  %spec.select.i.i = add i32 %i.bw, %.075148.i.i  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %scalar.ph, !llvm.loop !10

bb.d:                                             ; preds = %.thread116.i.i, %.preheader.i.i
  %.087.i.i = phi i16 [ %.390.i.i, %.thread116.i.i ], [ 1, %.preheader.i.i ] ; 4 uses
  %.084.i.i = phi i16 [ %.185.i.i, %.thread116.i.i ], [ 1, %.preheader.i.i ] ; 6 uses
  %.080.i.i = phi i1 [ %spec.select172.i.i, %.thread116.i.i ], [ false, %.preheader.i.i ] ; 2 uses
  %.077.i.i = phi i1 [ %.not100.i.i, %.thread116.i.i ], [ false, %.preheader.i.i ]
  %.072.i.i = phi i32 [ %.5.i.i, %.thread116.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.070.i.i = phi i32 [ %.173.lcssa.i.i, %.thread116.i.i ], [ 0, %.preheader.i.i ]
  %.068.i.i = phi i32 [ %i.do, %.thread116.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.bx = load ptr, ptr %i.bq, align 8
  %i.by = sext i32 %.068.i.i to i64
  %i.bz = getelementptr inbounds [72 x i8], ptr %i.bx, i64 %i.by ; 3 uses
  %i.ca = sext i16 %.087.i.i to i32               ; 2 uses
  %i.cb = icmp slt i16 %.087.i.i, %.084.i.i
  br i1 %i.cb, label %.lr.ph152.preheader.i.i, label %._crit_edge.i.i

.lr.ph152.preheader.i.i:                          ; preds = %bb.d
  %i.cc = sext i16 %.087.i.i to i64
  %wide.trip.count166.i.i = sext i16 %.084.i.i to i32 ; 2 uses
  %i.cd = sub nsw i32 %wide.trip.count166.i.i, %i.ca
  %i.ce = add i32 %i.cd, %.072.i.i
  %sext = sext i16 %.084.i.i to i64
  br label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %bb.e, %.lr.ph152.preheader.i.i
  %indvars.iv161.i.i = phi i64 [ %i.cc, %.lr.ph152.preheader.i.i ], [ %indvars.iv.next162.i.i, %bb.e ] ; 2 uses
  %i.cf = load ptr, ptr %i.br, align 8
  %i.cg = add nsw i64 %indvars.iv161.i.i, -1      ; 3 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = load ptr, ptr %i.bs, align 8
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cg
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = tail call i32 @get_opfamily_member(i32 noundef %i.ci, i32 noundef %i.cl, i32 noundef %i.cl, i16 noundef signext 3) #8 ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cg
  store i32 %i.cm, ptr %i.cn, align 4
  %.not101.not.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not101.not.i.i, label %_bt_num_array_keys.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph152.i.i
  %indvars.iv.next162.i.i = add nsw i64 %indvars.iv161.i.i, 1 ; 2 uses
  %exitcond167.not.i.i = icmp eq i64 %indvars.iv.next162.i.i, %sext
  br i1 %exitcond167.not.i.i, label %._crit_edge.i.i, label %.lr.ph152.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.188.lcssa.i.i = phi i16 [ %.087.i.i, %bb.d ], [ %.084.i.i, %bb.e ] ; 3 uses
  %.173.lcssa.i.i = phi i32 [ %.072.i.i, %bb.d ], [ %i.ce, %bb.e ] ; 6 uses
  %.lcssa.i.i = phi i32 [ %i.ca, %bb.d ], [ %wide.trip.count166.i.i, %bb.e ]
  %i.co = load i32, ptr %i.l, align 8
  %i.cp = icmp eq i32 %.068.i.i, %i.co
  %or.cond.i.i = select i1 %i.cp, i1 true, i1 %.077.i.i
  br i1 %or.cond.i.i, label %_bt_num_array_keys.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 4            ; 2 uses
  %i.cs = icmp slt i16 %.084.i.i, %i.cr
  br i1 %i.cs, label %bb.g, label %.thread116.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %.080.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ct = sext i16 %.188.lcssa.i.i to i64
  %i.cu = getelementptr [4 x i8], ptr %i.a, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -4
  store i32 0, ptr %i.cv, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cw = load ptr, ptr %i.br, align 8
  %i.cx = add nsw i32 %.lcssa.i.i, -1
  %i.cy = sext i32 %i.cx to i64                   ; 3 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = load ptr, ptr %i.bs, align 8
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.cy
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = tail call i32 @get_opfamily_member(i32 noundef %i.da, i32 noundef %i.dd, i32 noundef %i.dd, i16 noundef signext 3) #8 ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cy
  store i32 %i.de, ptr %i.df, align 4
  %.not.not.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.not.i.i, label %_bt_num_array_keys.exit.i, label %._crit_edge373.i

._crit_edge373.i:                                 ; preds = %bb.i
  %i.dg = add i32 %.173.lcssa.i.i, 1
  %.pre.i = load i16, ptr %i.cq, align 4
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge373.i, %bb.h
  %i.dh = phi i16 [ %i.cr, %bb.h ], [ %.pre.i, %._crit_edge373.i ]
  %.4.i.i = phi i32 [ %.173.lcssa.i.i, %bb.h ], [ %i.dg, %._crit_edge373.i ]
  %i.di = add i16 %.188.lcssa.i.i, 1
  br label %.thread116.i.i

.thread116.i.i:                                   ; preds = %bb.j, %bb.f
  %.390.i.i = phi i16 [ %i.di, %bb.j ], [ %.188.lcssa.i.i, %bb.f ]
  %.185.i.i = phi i16 [ %i.dh, %bb.j ], [ %.084.i.i, %bb.f ]
  %.181.i.i = phi i1 [ false, %bb.j ], [ %.080.i.i, %bb.f ]
  %.5.i.i = phi i32 [ %.4.i.i, %bb.j ], [ %.173.lcssa.i.i, %bb.f ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = icmp eq i16 %i.dk, 3
  %.pre.pre.i.i = load i32, ptr %i.bz, align 8    ; 2 uses
  %i.dm = and i32 %.pre.pre.i.i, 64
  %.not.i.i = icmp ne i32 %i.dm, 0
  %or.cond171.not.i.i = select i1 %i.dl, i1 true, i1 %.not.i.i
  %spec.select172.i.i = select i1 %or.cond171.not.i.i, i1 true, i1 %.181.i.i
  %i.dn = and i32 %.pre.pre.i.i, 4
  %.not100.i.i = icmp ne i32 %i.dn, 0
  %i.do = add i32 %.068.i.i, 1
  br label %bb.d

_bt_num_array_keys.exit.i:                        ; preds = %bb.i, %._crit_edge.i.i, %.lr.ph152.i.i
  %.173.pn.i.i = phi i32 [ %.070.i.i, %.lr.ph152.i.i ], [ %.173.lcssa.i.i, %._crit_edge.i.i ], [ %.173.lcssa.i.i, %bb.i ] ; 4 uses
  %.496.i.i = add i32 %.173.pn.i.i, %.075.lcssa.i.i ; 2 uses
  %i.dp = icmp sgt i32 %.173.pn.i.i, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.dr = zext i1 %i.dp to i8
  store i8 %i.dr, ptr %i.dq, align 4
  %i.ds = icmp eq i32 %.496.i.i, 0
  br i1 %i.ds, label %_bt_preprocess_array_keys.exit.thread, label %bb.k

bb.k:                                             ; preds = %_bt_num_array_keys.exit.i
  %i.dt = load i32, ptr %i.l, align 8
  %i.du = add i32 %i.dt, %.173.pn.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dy = load ptr, ptr @CurrentMemoryContext, align 8
  %i.dz = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.dy, ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef 1024, i64 noundef 8192) #8 ; 2 uses
  store ptr %i.dz, ptr %i.dv, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @MemoryContextReset(ptr noundef nonnull %i.dw) #8
  %.pre374.i = load ptr, ptr %i.dv, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ea = phi ptr [ %.pre374.i, %bb.m ], [ %i.dz, %bb.l ]
  %i.eb = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.ea, ptr @CurrentMemoryContext, align 8
  %i.ec = sext i32 %i.du to i64                   ; 2 uses
  %i.ed = mul nsw i64 %i.ec, 72
  %i.ee = tail call ptr @palloc(i64 noundef %i.ed) #8 ; 5 uses
  %i.ef = sext i32 %.496.i.i to i64
  %i.eg = mul nsw i64 %i.ef, 48
  %i.eh = tail call ptr @palloc(i64 noundef %i.eg) #8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 14 uses
  store ptr %i.eh, ptr %i.ei, align 8
  %i.ej = mul nsw i64 %i.ec, 48
  %i.ek = tail call ptr @palloc(i64 noundef %i.ej) #8
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  store ptr %i.ek, ptr %i.el, align 8
  %i.em = load i32, ptr %i.l, align 8
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph332.i, label %_bt_preprocess_array_keys.exit

.lr.ph332.i:                                      ; preds = %bb.n
  %i.eo = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  %i.ep = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.bh, %.lr.ph332.i
  %indvars.iv371.i = phi i64 [ 0, %.lr.ph332.i ], [ %indvars.iv.next372.i, %bb.bh ] ; 2 uses
  %.0166329.i = phi i32 [ 0, %.lr.ph332.i ], [ %.2168243.i, %bb.bh ] ; 7 uses
  %.0169328.i = phi i32 [ -1, %.lr.ph332.i ], [ %.2171242.i, %bb.bh ] ; 6 uses
  %.0172327.i = phi i32 [ 0, %.lr.ph332.i ], [ %.2174241.i, %bb.bh ] ; 6 uses
  %.0175326.i = phi i16 [ 1, %.lr.ph332.i ], [ %.3.i, %bb.bh ] ; 2 uses
  %.0178325.i = phi i32 [ 0, %.lr.ph332.i ], [ %.4240.i, %bb.bh ] ; 3 uses
  %.0182324.i = phi i32 [ 0, %.lr.ph332.i ], [ %.4186239.i, %bb.bh ] ; 2 uses
  %.0215323.i = phi i32 [ %.173.pn.i.i, %.lr.ph332.i ], [ %.1216279.i, %bb.bh ] ; 2 uses
  %i.es = load ptr, ptr %i.bq, align 8
  %i.et = getelementptr inbounds nuw [72 x i8], ptr %i.es, i64 %indvars.iv371.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %.pn301.i = sext i32 %.0178325.i to i64
  %.0160302.i = getelementptr inbounds [72 x i8], ptr %i.ee, i64 %.pn301.i ; 2 uses
  %.not303.i = icmp eq i32 %.0215323.i, 0
  br i1 %.not303.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.y, %.lr.ph.i
  %.0160308.i = phi ptr [ %.0160302.i, %.lr.ph.i ], [ %.0160.i, %bb.y ] ; 5 uses
  %.1176307.i = phi i16 [ %.0175326.i, %.lr.ph.i ], [ %.2177.i, %bb.y ] ; 6 uses
  %.1179306.i = phi i32 [ %.0178325.i, %.lr.ph.i ], [ %i.hy, %bb.y ] ; 5 uses
  %.1183305.i = phi i32 [ %.0182324.i, %.lr.ph.i ], [ %i.hx, %bb.y ] ; 4 uses
  %.1216304.i = phi i32 [ %.0215323.i, %.lr.ph.i ], [ %i.hz, %bb.y ] ; 3 uses
  %i.ev = load i16, ptr %i.eu, align 4
  %.not196.i = icmp sgt i16 %.1176307.i, %i.ev
  br i1 %.not196.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ew = sext i16 %.1176307.i to i64
  %i.ex = load ptr, ptr %i.br, align 8
  %i.ey = add nsw i64 %i.ew, -1                   ; 6 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = load ptr, ptr %i.bs, align 8
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ey
  %i.fd = load i32, ptr %i.fc, align 4            ; 4 uses
  %i.fe = load ptr, ptr %i.eo, align 8
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.ey
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ey
  %i.fi = load i32, ptr %i.fh, align 4            ; 3 uses
  %.not197.i = icmp eq i32 %i.fi, 0
  br i1 %.not197.i, label %.thread.i, label %bb.r

.thread.i:                                        ; preds = %bb.q
  %.2177224.i = add i16 %.1176307.i, 1
  br label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.fj = call i32 @get_opcode(i32 noundef %i.fi) #8 ; 2 uses
  %.not198.i = icmp eq i32 %i.fj, 0
  br i1 %.not198.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fk = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.fl = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %i.fi) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1959, ptr noundef nonnull @__func__._bt_preprocess_array_keys) #8
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @ScanKeyEntryInitialize(ptr noundef %.0160308.i, i32 noundef 262176, i16 noundef signext %.1176307.i, i16 noundef zeroext 3, i32 noundef 0, i32 noundef %i.fg, i32 noundef %i.fj, i64 noundef 0) #8
end_hunk_0
