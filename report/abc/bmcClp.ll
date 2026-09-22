Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcClp?download=true
inline.NumInlined: 556
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [26 x i8] c"Number of patterns = %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%3c \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Off0  \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Off1  \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"On0   \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"On1   \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Diff  \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" %c    \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"  . \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" 1\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Processed output with %d supp vars. \00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"The resulting SOP exceeded %d cubes.\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"The best cover contains %d cubes.\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Onset  minterm\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Onset  expand \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Offset minterm\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Offset expand \00", align 1
@__const.Bmc_CollapseOne_int.iOOVars = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @Bmc_ComputeSimDiff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %.val80 = load i32, ptr %i.c, align 4, !tbaa !32 ; 2 uses
  %i.d = icmp sgt i32 %.val80, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val84.val = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %wide.trip.count = zext nneg i32 %.val80 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val84.val, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34   ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val81 = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val81, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %.not79 = icmp ne i32 %i.k, 0
  %i.l = sext i1 %.not79 to i64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = shl nuw i64 2, %indvars.iv
  %i.n = xor i64 %i.m, %i.l
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val90 = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.q = sext i32 %i.i to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val90, i64 %i.q
  store i64 %i.n, ptr %i.r, align 8, !tbaa !39
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !83

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph112, label %.critedge2

.lr.ph112:                                        ; preds = %.critedge
  %i.v = getelementptr i8, ptr %0, i64 32
  %.val82 = load ptr, ptr %i.v, align 8, !tbaa !42 ; 2 uses
  %.not70 = icmp eq ptr %.val82, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 856
  br i1 %.not70, label %.critedge2, label %.lr.ph112.split.preheader

.lr.ph112.split.preheader:                        ; preds = %.lr.ph112
  %wide.trip.count127 = zext nneg i32 %i.t to i64
  br label %.lr.ph112.split

.lr.ph112.split:                                  ; preds = %.lr.ph112.split.preheader, %bb.e
  %indvars.iv124 = phi i64 [ 0, %.lr.ph112.split.preheader ], [ %indvars.iv.next125, %bb.e ] ; 5 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %.val82, i64 %indvars.iv124
  %.val91 = load i64, ptr %i.x, align 4           ; 6 uses
  %i.y = and i64 %.val91, 2147483648
  %.not.i = icmp ne i64 %i.y, 0
  %i.z = and i64 %.val91, 536870911
  %i.aa = icmp eq i64 %i.z, 536870911
  %narrow.i.not = or i1 %.not.i, %i.aa
  br i1 %narrow.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph112.split
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ac = trunc i64 %.val91 to i32
  %i.ad = and i64 %.val91, 536870911
  %i.ae = sub nsw i64 %indvars.iv124, %i.ad
  %i.af = getelementptr i8, ptr %i.ab, i64 8
  %.val97 = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %sext = shl i64 %i.ae, 32
  %i.ag = ashr exact i64 %sext, 29
  %i.ah = getelementptr inbounds i8, ptr %.val97, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.aj = lshr i64 %.val91, 32
  %i.ak = and i64 %i.aj, 536870911
  %i.al = sub nsw i64 %indvars.iv124, %i.ak
  %sext144 = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext144, 29
  %i.an = getelementptr inbounds i8, ptr %.val97, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ap = shl i32 %i.ac, 2
  %i.aq = ashr i32 %i.ap, 31
  %i.ar = sext i32 %i.aq to i64
  %i.as = xor i64 %i.ai, %i.ar
  %i.at = shl i64 %.val91, 2
  %i.au = ashr i64 %i.at, 63
  %i.av = xor i64 %i.ao, %i.au
  %i.aw = and i64 %i.av, %i.as
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val97, i64 %indvars.iv124
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph112.split
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.critedge2, label %.lr.ph112.split, !llvm.loop !84

.critedge2:                                       ; preds = %bb.e, %.lr.ph112, %.critedge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %.val = load i32, ptr %i.ba, align 4, !tbaa !32 ; 2 uses
  %i.bb = icmp sgt i32 %.val, 0
  br i1 %i.bb, label %.lr.ph115, label %.critedge4

.lr.ph115:                                        ; preds = %.critedge2
  %i.bc = getelementptr i8, ptr %0, i64 32
  %.val104 = load ptr, ptr %i.bc, align 8, !tbaa !42 ; 2 uses
  %.not71 = icmp eq ptr %.val104, null
  br i1 %.not71, label %.critedge4, label %.lr.ph115.split

.lr.ph115.split:                                  ; preds = %.lr.ph115
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.be = getelementptr i8, ptr %i.az, i64 8
  %.val105.val = load ptr, ptr %i.be, align 8, !tbaa !33
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !35
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %.val95 = load ptr, ptr %i.bg, align 8, !tbaa !38 ; 2 uses
  %wide.trip.count132 = zext nneg i32 %.val to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph115.split, %bb.f
  %indvars.iv129 = phi i64 [ 0, %.lr.ph115.split ], [ %indvars.iv.next130, %bb.f ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val105.val, i64 %indvars.iv129
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !34 ; 2 uses
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [12 x i8], ptr %.val104, i64 %i.bj
  %.val92 = load i64, ptr %i.bk, align 4
  %i.bl = trunc i64 %.val92 to i32                ; 2 uses
  %i.bm = and i32 %i.bl, 536870911
  %i.bn = sub nsw i32 %i.bi, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %.val95, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !39
  %i.br = shl i32 %i.bl, 2
  %i.bs = ashr i32 %i.br, 31
  %i.bt = sext i32 %i.bs to i64
  %i.bu = xor i64 %i.bq, %i.bt
  %i.bv = getelementptr inbounds [8 x i8], ptr %.val95, i64 %i.bj
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !39
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.critedge4, label %bb.f, !llvm.loop !85

.critedge4:                                       ; preds = %bb.f, %.lr.ph115, %.critedge2
  %i.bw = getelementptr i8, ptr %i.az, i64 8
  %.val103.val = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.bx = load i32, ptr %.val103.val, align 4, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !35
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %.val94 = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.cb = sext i32 %i.bx to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %.val94, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !39 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store i32 0, ptr %i.ce, align 4, !tbaa !32
  %.val106.val119 = load i32, ptr %i.c, align 4, !tbaa !32
  %.not72120 = icmp slt i32 %.val106.val119, 1
  br i1 %.not72120, label %._crit_edge, label %.lr.ph122

.lr.ph122:                                        ; preds = %.critedge4
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br label %bb.g

thread-pre-split:                                 ; preds = %Vec_IntPush.exit
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %.pr = load i32, ptr %i.ce, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %.lr.ph122
  %i.cg = phi i32 [ %.pr, %thread-pre-split ], [ 0, %.lr.ph122 ] ; 7 uses
  %.val106139 = phi ptr [ %.val106, %thread-pre-split ], [ %i.b, %.lr.ph122 ] ; 2 uses
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %thread-pre-split ], [ 1, %.lr.ph122 ] ; 3 uses
  %i.ch = lshr i64 %i.cd, %indvars.iv134
  %i.ci = xor i64 %i.ch, %i.cd
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 1
  %i.cl = load i32, ptr %2, align 8, !tbaa !44
  %i.cm = icmp eq i32 %i.cg, %i.cl
  br i1 %i.cm, label %bb.h, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !33
  br label %Vec_IntPush.exit

end_hunk_0
begin_hunk_1_@Bmc_CollapseOne_int2:bb.a
  %i.fx = call i32 @sat_solver_solve(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.fx, label %bb.bg [
    i32 0, label %.loopexit275
    i32 -1, label %.lr.ph.i
  ]

bb.bg:                                            ; preds = %Vec_StrPush.exit206
  %i.fy = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx) #18 ; 0 uses
  %i.fz = load ptr, ptr %i.k, align 8, !tbaa !78  ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !57 ; 7 uses
  %i.gc = load i32, ptr %i.fz, align 8, !tbaa !70
  %i.gd = icmp eq i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.bh, label %Vec_StrPush.exit206.1

bb.bh:                                            ; preds = %bb.bg
  %i.ge = icmp slt i32 %i.gb, 16
  br i1 %i.ge, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gf = icmp samesign ult i32 %i.gb, 1073741823
  %i.gg = shl nuw nsw i32 %i.gb, 1
  %spec.select.i199.1 = select i1 %i.gf, i32 %i.gg, i32 2147483647 ; 3 uses
  %.not.i9.i200.1 = icmp samesign ult i32 %i.gb, %spec.select.i199.1
  br i1 %.not.i9.i200.1, label %bb.bj, label %Vec_StrPush.exit206.1

bb.bj:                                            ; preds = %bb.bi
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i201.1 = icmp eq ptr %i.gi, null
  %i.gj = zext nneg i32 %spec.select.i199.1 to i64 ; 2 uses
  br i1 %.not9.i10.i201.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = call ptr @realloc(ptr noundef nonnull %i.gi, i64 noundef %i.gj) #16
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.gl = call noalias ptr @malloc(i64 noundef %i.gj) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gm = phi ptr [ %i.gk, %bb.bk ], [ %i.gl, %bb.bl ]
  store ptr %i.gm, ptr %i.gh, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i202.1

bb.bn:                                            ; preds = %bb.bh
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i204.1 = icmp eq ptr %i.go, null
  br i1 %.not9.i.i204.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gp = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.go, i64 noundef 16) #16
  br label %Vec_StrGrow.exit.i205.1

bb.bp:                                            ; preds = %bb.bn
  %i.gq = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit.i205.1

Vec_StrGrow.exit.i205.1:                          ; preds = %bb.bp, %bb.bo
  %i.gr = phi ptr [ %i.gp, %bb.bo ], [ %i.gq, %bb.bp ]
  store ptr %i.gr, ptr %i.gn, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i202.1

Vec_StrGrow.exit11.sink.split.i202.1:             ; preds = %Vec_StrGrow.exit.i205.1, %bb.bm
  %spec.select.sink.i203.1 = phi i32 [ %spec.select.i199.1, %bb.bm ], [ 16, %Vec_StrGrow.exit.i205.1 ]
  store i32 %spec.select.sink.i203.1, ptr %i.fz, align 8, !tbaa !70
  %.pre384 = load i32, ptr %i.ga, align 4, !tbaa !57
  br label %Vec_StrPush.exit206.1

Vec_StrPush.exit206.1:                            ; preds = %Vec_StrGrow.exit11.sink.split.i202.1, %bb.bi, %bb.bg
  %i.gs = phi i32 [ %.pre384, %Vec_StrGrow.exit11.sink.split.i202.1 ], [ %i.gb, %bb.bi ], [ %i.gb, %bb.bg ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !46
  %i.gv = add nsw i32 %i.gs, 1
  store i32 %i.gv, ptr %i.ga, align 4, !tbaa !57
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 %i.gw
  store i8 0, ptr %i.gx, align 1, !tbaa !52
  %i.gy = icmp eq i32 %3, 0
  %i.gz = icmp sgt i32 %3, -1
  br i1 %i.gz, label %.preheader.lr.ph, label %.loopexit275

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.di
  %.0334 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.di ]
  %.0138333 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.of, %bb.di ] ; 4 uses
  br label %bb.br

bb.bq:                                            ; preds = %.critedge2
  br i1 %.not150, label %bb.br, label %.loopexit, !llvm.loop !171

bb.br:                                            ; preds = %.preheader, %bb.bq
  %.not150 = phi i1 [ true, %.preheader ], [ false, %bb.bq ] ; 2 uses
  %indvars.iv377.sroa.phi = phi ptr [ %i.d, %.preheader ], [ %indvars.iv377.sroa.gep457, %bb.bq ] ; 2 uses
  %indvars.iv377.sroa.phi458 = phi ptr [ %i.d, %.preheader ], [ %indvars.iv377.sroa.gep460, %bb.bq ]
  %indvars.iv377.sroa.phi461 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv377.sroa.gep463, %bb.bq ]
  %indvars.iv377.sroa.phi464 = phi ptr [ %i.a, %.preheader ], [ %indvars.iv377.sroa.gep466, %bb.bq ]
  %indvars.iv377 = phi i64 [ 0, %.preheader ], [ 1, %bb.bq ] ; 3 uses
  %.1332 = phi i64 [ %.0334, %.preheader ], [ %.3, %bb.bq ]
  br i1 %.not149, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ha = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #18
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %Abc_Clock.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hc = load i64, ptr %11, align 8, !tbaa !81
  %i.hd = mul nsw i64 %i.hc, 1000000
  %i.he = load i64, ptr %i.ca, align 8, !tbaa !82
  %i.hf = sdiv i64 %i.he, 1000
  %i.hg = add nsw i64 %i.hf, %i.hd
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.bs, %bb.bt
  %.0.i = phi i64 [ %i.hg, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bu

bb.bu:                                            ; preds = %Abc_Clock.exit, %bb.br
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1332, %bb.br ] ; 3 uses
  %i.hh = load ptr, ptr %indvars.iv377.sroa.phi464, align 8, !tbaa !72 ; 4 uses
  %.val162 = load ptr, ptr %i.v, align 8, !tbaa !33 ; 6 uses
  %.val157 = load i32, ptr %i.r, align 4, !tbaa !32 ; 4 uses
  %i.hi = icmp sgt i32 %.val157, 0                ; 2 uses
  br i1 %i.hi, label %.lr.ph.i207, label %sat_solver_clean_polarity.exit

.lr.ph.i207:                                      ; preds = %bb.bu
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 216 ; 5 uses
  %wide.trip.count.i208 = zext nneg i32 %.val157 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i208, 3    ; 3 uses
  %i.hk = icmp ult i32 %.val157, 4
  br i1 %i.hk, label %.epil.preheader, label %.lr.ph.i207.new

.lr.ph.i207.new:                                  ; preds = %.lr.ph.i207
  %unroll_iter = and i64 %wide.trip.count.i208, 2147483644
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i207.new
  %indvars.iv.i209 = phi i64 [ 0, %.lr.ph.i207.new ], [ %indvars.iv.next.i210.3, %bb.bv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i207.new ], [ %niter.next.3, %bb.bv ]
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !34
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hl, i64 %i.ho
  store i8 0, ptr %i.hp, align 1, !tbaa !52
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !34
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.hq, i64 %i.hu
  store i8 0, ptr %i.hv, align 1, !tbaa !52
  %i.hw = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !34
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hw, i64 %i.ia
  store i8 0, ptr %i.ib, align 1, !tbaa !52
  %i.ic = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !34
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds i8, ptr %i.ic, i64 %i.ig
  store i8 0, ptr %i.ih, align 1, !tbaa !52
  %indvars.iv.next.i210.3 = add nuw nsw i64 %indvars.iv.i209, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !0

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.bv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i207
  %indvars.iv.i209.epil.init = phi i64 [ 0, %.lr.ph.i207 ], [ %indvars.iv.next.i210.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod454 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod454)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.epil.preheader
  %indvars.iv.i209.epil = phi i64 [ %indvars.iv.i209.epil.init, %.epil.preheader ], [ %indvars.iv.next.i210.epil, %bb.bw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bw ]
  %i.ii = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209.epil
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !34
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 %i.il
  store i8 0, ptr %i.im, align 1, !tbaa !52
  %indvars.iv.next.i210.epil = add nuw nsw i64 %indvars.iv.i209.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.bw, !llvm.loop !172

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.bw, %bb.bu
  %12 = getelementptr inbounds nuw [4 x i8], ptr @__const.Bmc_CollapseOne_int.iOOVars, i64 %indvars.iv377
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %i.in = shl nsw i32 %13, 1                      ; 2 uses
  %i.io = or disjoint i32 %i.in, 1
  store i32 %i.io, ptr %i.c, align 4, !tbaa !34
  %i.ip = call i32 @sat_solver_solve(ptr noundef %i.hh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br i1 %.not149, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %sat_solver_clean_polarity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.iq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %Abc_Clock.exit213, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.is = load i64, ptr %10, align 8, !tbaa !81
  %i.it = mul nsw i64 %i.is, 1000000
  %i.iu = load i64, ptr %i.cb, align 8, !tbaa !82
  %i.iv = sdiv i64 %i.iu, 1000
  %i.iw = add nsw i64 %i.iv, %i.it
  br label %Abc_Clock.exit213

Abc_Clock.exit213:                                ; preds = %bb.bx, %bb.by
  %.0.i212 = phi i64 [ %i.iw, %bb.by ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ix = sub i64 %.0.i212, %.2
  %i.iy = load i64, ptr %indvars.iv377.sroa.phi, align 16, !tbaa !39
  %i.iz = add nsw i64 %i.ix, %i.iy
  store i64 %i.iz, ptr %indvars.iv377.sroa.phi, align 16, !tbaa !39
  br label %bb.bz

bb.bz:                                            ; preds = %Abc_Clock.exit213, %sat_solver_clean_polarity.exit
  switch i32 %i.ip, label %bb.ca [
    i32 0, label %.loopexit275
    i32 -1, label %.loopexit.sink.split
  ]

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.x, align 4, !tbaa !32
  br i1 %i.hi, label %.lr.ph312, label %.critedge

.lr.ph312:                                        ; preds = %bb.ca
  %i.ja = getelementptr i8, ptr %i.hh, i64 328
  %.promoted315 = load i32, ptr %i.w, align 8, !tbaa !44
  %.promoted318 = load ptr, ptr %i.ac, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %.val157 to i64
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph312, %Vec_IntPush.exit221
  %indvars.iv362 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next363, %Vec_IntPush.exit221 ] ; 2 uses
  %indvars.iv360 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next361, %Vec_IntPush.exit221 ] ; 7 uses
  %storemerge273319 = phi ptr [ %.promoted318, %.lr.ph312 ], [ %storemerge273320, %Vec_IntPush.exit221 ] ; 6 uses
  %spec.select.sink.i218317 = phi i32 [ %.promoted315, %.lr.ph312 ], [ %spec.select.sink.i218316, %Vec_IntPush.exit221 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv362
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !34 ; 2 uses
  %.val171 = load ptr, ptr %i.ja, align 8, !tbaa !77
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %.val171, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !34
  %i.jg = icmp ne i32 %i.jf, 1
  %i.jh = zext i1 %i.jg to i32
  %i.ji = shl nsw i32 %i.jc, 1
  %i.jj = or disjoint i32 %i.ji, %i.jh
  %i.jk = trunc nsw i64 %indvars.iv360 to i32
  %i.jl = icmp eq i32 %spec.select.sink.i218317, %i.jk
  br i1 %i.jl, label %bb.cc, label %Vec_IntPush.exit221

bb.cc:                                            ; preds = %bb.cb
  %i.jm = icmp samesign ult i64 %indvars.iv360, 16
  br i1 %i.jm, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %.not9.i.i219 = icmp eq ptr %storemerge273319, null
  br i1 %.not9.i.i219, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jn = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge273319, i64 noundef 64) #16
  br label %Vec_IntPush.exit221

bb.cf:                                            ; preds = %bb.cd
  %i.jo = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit221

bb.cg:                                            ; preds = %bb.cc
  %i.jp = icmp samesign ult i64 %indvars.iv360, 1073741823
  %indvars.iv360.tr = trunc nsw i64 %indvars.iv360 to i32
  %i.jq = shl nsw i32 %indvars.iv360.tr, 1
  %spec.select.i214 = select i1 %i.jp, i32 %i.jq, i32 2147483647 ; 4 uses
  %i.jr = sext i32 %spec.select.i214 to i64
  %.not.i9.i215 = icmp samesign ult i64 %indvars.iv360, %i.jr
  br i1 %.not.i9.i215, label %bb.ch, label %Vec_IntPush.exit221

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i216 = icmp eq ptr %storemerge273319, null
  %i.js = zext nneg i32 %spec.select.i214 to i64
  %i.jt = shl nuw nsw i64 %i.js, 2                ; 2 uses
  br i1 %.not9.i10.i216, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ju = call ptr @realloc(ptr noundef nonnull %storemerge273319, i64 noundef %i.jt) #16
  br label %Vec_IntPush.exit221

bb.cj:                                            ; preds = %bb.ch
  %i.jv = call noalias ptr @malloc(i64 noundef %i.jt) #17
  br label %Vec_IntPush.exit221

Vec_IntPush.exit221:                              ; preds = %bb.cf, %bb.ce, %bb.cj, %bb.ci, %bb.cb, %bb.cg
  %storemerge273320 = phi ptr [ %storemerge273319, %bb.cb ], [ %storemerge273319, %bb.cg ], [ %i.jo, %bb.cf ], [ %i.jn, %bb.ce ], [ %i.ju, %bb.ci ], [ %i.jv, %bb.cj ] ; 3 uses
  %spec.select.sink.i218316 = phi i32 [ %spec.select.sink.i218317, %bb.cb ], [ %spec.select.sink.i218317, %bb.cg ], [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i214, %bb.ci ], [ %spec.select.i214, %bb.cj ] ; 2 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %storemerge273320, i64 %indvars.iv360
  store i32 %i.jj, ptr %i.jw, align 4, !tbaa !34
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond367.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count
  br i1 %exitcond367.not, label %..critedge_crit_edge, label %bb.cb, !llvm.loop !173

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit221
  %i.jx = trunc nsw i64 %indvars.iv.next361 to i32
  store i32 %i.jx, ptr %i.x, align 4, !tbaa !32
  store i32 %spec.select.sink.i218316, ptr %i.w, align 8
  store ptr %storemerge273320, ptr %i.ac, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ca
  br i1 %.not149, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.jy = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #18
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %Abc_Clock.exit223, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ka = load i64, ptr %9, align 8, !tbaa !81
  %i.kb = mul nsw i64 %i.ka, 1000000
  %i.kc = load i64, ptr %i.cc, align 8, !tbaa !82
  %i.kd = sdiv i64 %i.kc, 1000
  %i.ke = add nsw i64 %i.kd, %i.kb
  br label %Abc_Clock.exit223

Abc_Clock.exit223:                                ; preds = %bb.ck, %bb.cl
  %.0.i222 = phi i64 [ %i.ke, %bb.cl ], [ -1, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.cm

bb.cm:                                            ; preds = %Abc_Clock.exit223, %.critedge
  %.3 = phi i64 [ %.0.i222, %Abc_Clock.exit223 ], [ %.2, %.critedge ] ; 4 uses
  %i.kf = xor i64 %indvars.iv377, 1
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kf
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !72
  %i.ki = call i32 @Bmc_CollapseExpand(ptr noundef %i.kh, ptr noundef null, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ak, i32 noundef %4, i32 noundef %5, i32 noundef -1)
  br i1 %.not149, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.kj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %i.kk = icmp slt i32 %i.kj, 0
  br i1 %i.kk, label %Abc_Clock.exit225, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kl = load i64, ptr %8, align 8, !tbaa !81
  %i.km = mul nsw i64 %i.kl, 1000000
  %i.kn = load i64, ptr %i.cd, align 8, !tbaa !82
  %i.ko = sdiv i64 %i.kn, 1000
  %i.kp = add nsw i64 %i.ko, %i.km
  br label %Abc_Clock.exit225

Abc_Clock.exit225:                                ; preds = %bb.cn, %bb.co
  %.0.i224 = phi i64 [ %i.kp, %bb.co ], [ -1, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.kq = sub i64 %.0.i224, %.3
  %i.kr = getelementptr inbounds nuw i8, ptr %indvars.iv377.sroa.phi458, i64 8 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !39
  %i.kt = add nsw i64 %i.kq, %i.ks
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !39
  br label %bb.cp

bb.cp:                                            ; preds = %Abc_Clock.exit225, %bb.cm
  %i.ku = icmp slt i32 %i.ki, 0
  br i1 %i.ku, label %.loopexit275, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kv = load ptr, ptr %indvars.iv377.sroa.phi461, align 8, !tbaa !78 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 12 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !46 ; 8 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 4 ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !57 ; 3 uses
  %i.la = add nsw i32 %i.kz, -1                   ; 6 uses
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !57
  %i.lb = add nsw i32 %i.la, %2                   ; 3 uses
  %i.lc = add nsw i32 %i.lb, 4                    ; 9 uses
  %.not.i226.not = icmp slt i32 %i.lc, %i.kz
  br i1 %.not.i226.not, label %Vec_StrFillExtra.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ld = load i32, ptr %i.kv, align 8, !tbaa !70 ; 4 uses
  %i.le = shl nsw i32 %i.ld, 1                    ; 2 uses
  %i.lf = icmp sgt i32 %i.lc, %i.le
  %.not.i.i = icmp slt i32 %i.ld, %i.lc           ; 2 uses
  br i1 %i.lf, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not.i.i, label %bb.ct, label %Vec_StrGrow.exit.i227
end_hunk_1
begin_hunk_2_@Bmc_CollapseOne_int:bb.a
  %spec.select.i195 = select i1 %i.er, i32 %i.es, i32 2147483647 ; 3 uses
  %.not.i9.i196 = icmp samesign ult i32 %i.ei, %spec.select.i195
  br i1 %.not.i9.i196, label %bb.at, label %Vec_StrPush.exit

bb.at:                                            ; preds = %bb.as
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i197 = icmp eq ptr %i.eu, null
  %i.ev = zext nneg i32 %spec.select.i195 to i64  ; 2 uses
  br i1 %.not9.i10.i197, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ew = call ptr @realloc(ptr noundef nonnull %i.eu, i64 noundef %i.ev) #16
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ex = call noalias ptr @malloc(i64 noundef %i.ev) #17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ey = phi ptr [ %i.ew, %bb.au ], [ %i.ex, %bb.av ]
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.aw, %Vec_StrGrow.exit.i
  %spec.select.sink.i198 = phi i32 [ %spec.select.i195, %bb.aw ], [ 16, %Vec_StrGrow.exit.i ]
  store i32 %spec.select.sink.i198, ptr %i.eg, align 8, !tbaa !70
  %.pre384 = load i32, ptr %i.eh, align 4, !tbaa !57
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %Vec_StrPush.exit.i.2, %bb.as, %Vec_StrGrow.exit11.sink.split.i
  %i.ez = phi i32 [ %i.ei, %Vec_StrPush.exit.i.2 ], [ %i.ei, %bb.as ], [ %.pre384, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !46
  %i.fc = add nsw i32 %i.ez, 1
  store i32 %i.fc, ptr %i.eh, align 4, !tbaa !57
  %i.fd = sext i32 %i.ez to i64
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %i.fd
  store i8 0, ptr %i.fe, align 1, !tbaa !52
  store i32 1, ptr %i.d, align 8, !tbaa !34
  br label %.loopexit276

bb.ax:                                            ; preds = %.loopexit281
  %i.ff = load i32, ptr %i.f, align 4, !tbaa !57  ; 7 uses
  %i.fg = load i32, ptr %i.e, align 8, !tbaa !70
  %i.fh = icmp eq i32 %i.ff, %i.fg
  br i1 %i.fh, label %bb.ay, label %.Vec_StrPush.exit207_crit_edge

.Vec_StrPush.exit207_crit_edge:                   ; preds = %bb.ax
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !46
  br label %Vec_StrPush.exit207

bb.ay:                                            ; preds = %bb.ax
  %i.fi = icmp slt i32 %i.ff, 16
  br i1 %i.fi, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i205 = icmp eq ptr %i.fj, null
  br i1 %.not9.i.i205, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fj, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i203

bb.bb:                                            ; preds = %bb.az
  %i.fl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i203

bb.bc:                                            ; preds = %bb.ay
  %i.fm = icmp samesign ult i32 %i.ff, 1073741823
  %i.fn = shl nuw nsw i32 %i.ff, 1
  %spec.select.i200 = select i1 %i.fm, i32 %i.fn, i32 2147483647 ; 4 uses
  %.not.i9.i201 = icmp samesign ult i32 %i.ff, %spec.select.i200
  %.pre381 = load ptr, ptr %i.h, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i201, label %bb.bd, label %Vec_StrPush.exit207

bb.bd:                                            ; preds = %bb.bc
  %.not9.i10.i202 = icmp eq ptr %.pre381, null
  %i.fo = zext nneg i32 %spec.select.i200 to i64  ; 2 uses
  br i1 %.not9.i10.i202, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fp = call ptr @realloc(ptr noundef nonnull %.pre381, i64 noundef %i.fo) #16
  br label %Vec_StrGrow.exit11.sink.split.i203

bb.bf:                                            ; preds = %bb.bd
  %i.fq = call noalias ptr @malloc(i64 noundef %i.fo) #17
  br label %Vec_StrGrow.exit11.sink.split.i203

Vec_StrGrow.exit11.sink.split.i203:               ; preds = %bb.be, %bb.bf, %bb.ba, %bb.bb
  %i.fr = phi ptr [ %i.fl, %bb.bb ], [ %i.fk, %bb.ba ], [ %i.fp, %bb.be ], [ %i.fq, %bb.bf ] ; 2 uses
  %spec.select.sink.i204 = phi i32 [ 16, %bb.bb ], [ 16, %bb.ba ], [ %spec.select.i200, %bb.be ], [ %spec.select.i200, %bb.bf ]
  store ptr %i.fr, ptr %i.h, align 8, !tbaa !46
  store i32 %spec.select.sink.i204, ptr %i.e, align 8, !tbaa !70
  %.pre382 = load i32, ptr %i.f, align 4, !tbaa !57
  br label %Vec_StrPush.exit207

Vec_StrPush.exit207:                              ; preds = %.Vec_StrPush.exit207_crit_edge, %bb.bc, %Vec_StrGrow.exit11.sink.split.i203
  %i.fs = phi i32 [ %i.ff, %.Vec_StrPush.exit207_crit_edge ], [ %i.ff, %bb.bc ], [ %.pre382, %Vec_StrGrow.exit11.sink.split.i203 ] ; 2 uses
  %i.ft = phi ptr [ %.pre, %.Vec_StrPush.exit207_crit_edge ], [ %.pre381, %bb.bc ], [ %i.fr, %Vec_StrGrow.exit11.sink.split.i203 ]
  %i.fu = add nsw i32 %i.fs, 1
  store i32 %i.fu, ptr %i.f, align 4, !tbaa !57
  %i.fv = sext i32 %i.fs to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ft, i64 %i.fv
  store i8 0, ptr %i.fw, align 1, !tbaa !52
  store i32 5, ptr %i.b, align 4, !tbaa !34
  %i.fx = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bv, i64 noundef %i.bw, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.fx, label %bb.bg [
    i32 0, label %.loopexit276
    i32 -1, label %.lr.ph.i
  ]

bb.bg:                                            ; preds = %Vec_StrPush.exit207
  %i.fy = load ptr, ptr %i.i, align 8, !tbaa !78  ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !57 ; 7 uses
  %i.gb = load i32, ptr %i.fy, align 8, !tbaa !70
  %i.gc = icmp eq i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.bh, label %Vec_StrPush.exit207.1

bb.bh:                                            ; preds = %bb.bg
  %i.gd = icmp slt i32 %i.ga, 16
  br i1 %i.gd, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ge = icmp samesign ult i32 %i.ga, 1073741823
  %i.gf = shl nuw nsw i32 %i.ga, 1
  %spec.select.i200.1 = select i1 %i.ge, i32 %i.gf, i32 2147483647 ; 3 uses
  %.not.i9.i201.1 = icmp samesign ult i32 %i.ga, %spec.select.i200.1
  br i1 %.not.i9.i201.1, label %bb.bj, label %Vec_StrPush.exit207.1

bb.bj:                                            ; preds = %bb.bi
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i202.1 = icmp eq ptr %i.gh, null
  %i.gi = zext nneg i32 %spec.select.i200.1 to i64 ; 2 uses
  br i1 %.not9.i10.i202.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gj = call ptr @realloc(ptr noundef nonnull %i.gh, i64 noundef %i.gi) #16
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.gk = call noalias ptr @malloc(i64 noundef %i.gi) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gl = phi ptr [ %i.gj, %bb.bk ], [ %i.gk, %bb.bl ]
  store ptr %i.gl, ptr %i.gg, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i203.1

bb.bn:                                            ; preds = %bb.bh
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i205.1 = icmp eq ptr %i.gn, null
  br i1 %.not9.i.i205.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.go = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.gn, i64 noundef 16) #16
  br label %Vec_StrGrow.exit.i206.1

bb.bp:                                            ; preds = %bb.bn
  %i.gp = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit.i206.1

Vec_StrGrow.exit.i206.1:                          ; preds = %bb.bp, %bb.bo
  %i.gq = phi ptr [ %i.go, %bb.bo ], [ %i.gp, %bb.bp ]
  store ptr %i.gq, ptr %i.gm, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i203.1

Vec_StrGrow.exit11.sink.split.i203.1:             ; preds = %Vec_StrGrow.exit.i206.1, %bb.bm
  %spec.select.sink.i204.1 = phi i32 [ %spec.select.i200.1, %bb.bm ], [ 16, %Vec_StrGrow.exit.i206.1 ]
  store i32 %spec.select.sink.i204.1, ptr %i.fy, align 8, !tbaa !70
  %.pre385 = load i32, ptr %i.fz, align 4, !tbaa !57
  br label %Vec_StrPush.exit207.1

Vec_StrPush.exit207.1:                            ; preds = %Vec_StrGrow.exit11.sink.split.i203.1, %bb.bi, %bb.bg
  %i.gr = phi i32 [ %.pre385, %Vec_StrGrow.exit11.sink.split.i203.1 ], [ %i.ga, %bb.bi ], [ %i.ga, %bb.bg ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !46
  %i.gu = add nsw i32 %i.gr, 1
  store i32 %i.gu, ptr %i.fz, align 4, !tbaa !57
  %i.gv = sext i32 %i.gr to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.gv
  store i8 0, ptr %i.gw, align 1, !tbaa !52
  %i.gx = icmp eq i32 %2, 0
  %i.gy = icmp sgt i32 %2, -1
  br i1 %i.gy, label %.preheader.lr.ph, label %.loopexit276

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.dh
  %.0335 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.dh ]
  %.0139334 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.oh, %bb.dh ] ; 4 uses
  br label %bb.br

bb.bq:                                            ; preds = %.critedge2
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1
  br i1 %.not151433, label %bb.br, label %.loopexit, !llvm.loop !179

bb.br:                                            ; preds = %.preheader, %bb.bq
  %indvars.iv378 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next379, %bb.bq ] ; 10 uses
  %.1333 = phi i64 [ %.0335, %.preheader ], [ %.3432, %bb.bq ]
  br i1 %.not150, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.gz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %Abc_Clock.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hb = load i64, ptr %10, align 8, !tbaa !81
  %i.hc = mul nsw i64 %i.hb, 1000000
  %i.hd = load i64, ptr %i.by, align 8, !tbaa !82
  %i.he = sdiv i64 %i.hd, 1000
  %i.hf = add nsw i64 %i.he, %i.hc
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.bs, %bb.bt
  %.0.i = phi i64 [ %i.hf, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bu

bb.bu:                                            ; preds = %Abc_Clock.exit, %bb.br
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1333, %bb.br ] ; 3 uses
  %.val163 = load ptr, ptr %i.t, align 8, !tbaa !33 ; 6 uses
  %.val158 = load i32, ptr %i.p, align 4, !tbaa !32 ; 4 uses
  %i.hg = icmp sgt i32 %.val158, 0                ; 2 uses
  br i1 %i.hg, label %.lr.ph.i208, label %sat_solver_clean_polarity.exit

.lr.ph.i208:                                      ; preds = %bb.bu
  %wide.trip.count.i209 = zext nneg i32 %.val158 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i209, 3    ; 3 uses
  %i.hh = icmp ult i32 %.val158, 4
  br i1 %i.hh, label %.epil.preheader, label %.lr.ph.i208.new

.lr.ph.i208.new:                                  ; preds = %.lr.ph.i208
  %unroll_iter = and i64 %wide.trip.count.i209, 2147483644
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i208.new
  %indvars.iv.i210 = phi i64 [ 0, %.lr.ph.i208.new ], [ %indvars.iv.next.i211.3, %bb.bv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i208.new ], [ %niter.next.3, %bb.bv ]
  %i.hi = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !34
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %i.hl
  store i8 0, ptr %i.hm, align 1, !tbaa !52
  %i.hn = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !34
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.hn, i64 %i.hr
  store i8 0, ptr %i.hs, align 1, !tbaa !52
  %i.ht = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !34
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds i8, ptr %i.ht, i64 %i.hx
  store i8 0, ptr %i.hy, align 1, !tbaa !52
  %i.hz = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !34
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %i.hz, i64 %i.id
  store i8 0, ptr %i.ie, align 1, !tbaa !52
  %indvars.iv.next.i211.3 = add nuw nsw i64 %indvars.iv.i210, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !0

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.bv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i208
  %indvars.iv.i210.epil.init = phi i64 [ 0, %.lr.ph.i208 ], [ %indvars.iv.next.i211.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod460 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod460)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.epil.preheader
  %indvars.iv.i210.epil = phi i64 [ %indvars.iv.i210.epil.init, %.epil.preheader ], [ %indvars.iv.next.i211.epil, %bb.bw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bw ]
  %i.if = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210.epil
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !34
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %i.if, i64 %i.ii
  store i8 0, ptr %i.ij, align 1, !tbaa !52
  %indvars.iv.next.i211.epil = add nuw nsw i64 %indvars.iv.i210.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.bw, !llvm.loop !180

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.bw, %bb.bu
  %i.ik = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.il = or i32 %i.ik, 4
  store i32 %i.il, ptr %i.b, align 4, !tbaa !34
  %11 = getelementptr inbounds nuw [4 x i8], ptr @__const.Bmc_CollapseOne_int.iOOVars, i64 %indvars.iv378
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %i.im = shl nsw i32 %12, 1                      ; 2 uses
  %i.in = or disjoint i32 %i.im, 1
  store i32 %i.in, ptr %i.bv, align 4, !tbaa !34
  %i.io = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ca, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br i1 %.not150, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %sat_solver_clean_polarity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ip = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #18
  %i.iq = icmp slt i32 %i.ip, 0
  br i1 %i.iq, label %Abc_Clock.exit214, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ir = load i64, ptr %9, align 8, !tbaa !81
  %i.is = mul nsw i64 %i.ir, 1000000
  %i.it = load i64, ptr %i.cb, align 8, !tbaa !82
  %i.iu = sdiv i64 %i.it, 1000
  %i.iv = add nsw i64 %i.iu, %i.is
  br label %Abc_Clock.exit214

Abc_Clock.exit214:                                ; preds = %bb.bx, %bb.by
  %.0.i213 = phi i64 [ %i.iv, %bb.by ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.iw = sub i64 %.0.i213, %.2
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv378 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 16, !tbaa !39
  %i.iz = add nsw i64 %i.iw, %i.iy
  store i64 %i.iz, ptr %i.ix, align 16, !tbaa !39
  br label %bb.bz

bb.bz:                                            ; preds = %Abc_Clock.exit214, %sat_solver_clean_polarity.exit
  switch i32 %i.io, label %bb.ca [
    i32 0, label %.loopexit276
    i32 -1, label %.loopexit.sink.split
  ]

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.v, align 4, !tbaa !32
  br i1 %i.hg, label %.lr.ph313, label %.critedge

.lr.ph313:                                        ; preds = %bb.ca
  %.promoted316 = load i32, ptr %i.u, align 8, !tbaa !44
  %.promoted319 = load ptr, ptr %i.aa, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %.val158 to i64
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph313, %Vec_IntPush.exit222
  %indvars.iv363 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next364, %Vec_IntPush.exit222 ] ; 2 uses
  %indvars.iv361 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next362, %Vec_IntPush.exit222 ] ; 7 uses
  %storemerge274320 = phi ptr [ %.promoted319, %.lr.ph313 ], [ %storemerge274321, %Vec_IntPush.exit222 ] ; 6 uses
  %spec.select.sink.i219318 = phi i32 [ %.promoted316, %.lr.ph313 ], [ %spec.select.sink.i219317, %Vec_IntPush.exit222 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv363
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !34 ; 2 uses
  %.val172 = load ptr, ptr %i.cc, align 8, !tbaa !77
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %.val172, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !34
  %i.jf = icmp ne i32 %i.je, 1
  %i.jg = zext i1 %i.jf to i32
  %i.jh = shl nsw i32 %i.jb, 1
  %i.ji = or disjoint i32 %i.jh, %i.jg
  %i.jj = trunc nsw i64 %indvars.iv361 to i32
  %i.jk = icmp eq i32 %spec.select.sink.i219318, %i.jj
  br i1 %i.jk, label %bb.cc, label %Vec_IntPush.exit222

bb.cc:                                            ; preds = %bb.cb
  %i.jl = icmp samesign ult i64 %indvars.iv361, 16
  br i1 %i.jl, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %.not9.i.i220 = icmp eq ptr %storemerge274320, null
  br i1 %.not9.i.i220, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jm = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge274320, i64 noundef 64) #16
  br label %Vec_IntPush.exit222

bb.cf:                                            ; preds = %bb.cd
  %i.jn = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit222

bb.cg:                                            ; preds = %bb.cc
  %i.jo = icmp samesign ult i64 %indvars.iv361, 1073741823
  %indvars.iv361.tr = trunc nsw i64 %indvars.iv361 to i32
  %i.jp = shl nsw i32 %indvars.iv361.tr, 1
  %spec.select.i215 = select i1 %i.jo, i32 %i.jp, i32 2147483647 ; 4 uses
  %i.jq = sext i32 %spec.select.i215 to i64
  %.not.i9.i216 = icmp samesign ult i64 %indvars.iv361, %i.jq
  br i1 %.not.i9.i216, label %bb.ch, label %Vec_IntPush.exit222

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i217 = icmp eq ptr %storemerge274320, null
  %i.jr = zext nneg i32 %spec.select.i215 to i64
  %i.js = shl nuw nsw i64 %i.jr, 2                ; 2 uses
  br i1 %.not9.i10.i217, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jt = call ptr @realloc(ptr noundef nonnull %storemerge274320, i64 noundef %i.js) #16
  br label %Vec_IntPush.exit222

bb.cj:                                            ; preds = %bb.ch
  %i.ju = call noalias ptr @malloc(i64 noundef %i.js) #17
  br label %Vec_IntPush.exit222

Vec_IntPush.exit222:                              ; preds = %bb.cf, %bb.ce, %bb.cj, %bb.ci, %bb.cb, %bb.cg
  %storemerge274321 = phi ptr [ %storemerge274320, %bb.cb ], [ %storemerge274320, %bb.cg ], [ %i.jn, %bb.cf ], [ %i.jm, %bb.ce ], [ %i.jt, %bb.ci ], [ %i.ju, %bb.cj ] ; 3 uses
  %spec.select.sink.i219317 = phi i32 [ %spec.select.sink.i219318, %bb.cb ], [ %spec.select.sink.i219318, %bb.cg ], [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i215, %bb.ci ], [ %spec.select.i215, %bb.cj ] ; 2 uses
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %storemerge274321, i64 %indvars.iv361
  store i32 %i.ji, ptr %i.jv, align 4, !tbaa !34
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count
  br i1 %exitcond368.not, label %..critedge_crit_edge, label %bb.cb, !llvm.loop !181

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit222
  %i.jw = trunc nsw i64 %indvars.iv.next362 to i32
  store i32 %i.jw, ptr %i.v, align 4, !tbaa !32
  store i32 %spec.select.sink.i219317, ptr %i.u, align 8
  store ptr %storemerge274321, ptr %i.aa, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ca
  br i1 %.not150, label %.thread429, label %bb.ck

.thread429:                                       ; preds = %.critedge
  %13 = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.jx = xor i32 %13, 5
  %i.jy = call i32 @Bmc_CollapseExpand(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ai, i32 noundef %3, i32 noundef %4, i32 noundef %i.jx)
  br label %bb.co

bb.ck:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.jz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %i.ka = icmp slt i32 %i.jz, 0
  br i1 %i.ka, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kb = load i64, ptr %8, align 8, !tbaa !81
  %i.kc = mul nsw i64 %i.kb, 1000000
  %i.kd = load i64, ptr %i.cd, align 8, !tbaa !82
  %i.ke = sdiv i64 %i.kd, 1000
  %i.kf = add nsw i64 %i.ke, %i.kc
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.0.i223 = phi i64 [ %i.kf, %bb.cl ], [ -1, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %14 = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.kg = xor i32 %14, 5
  %i.kh = call i32 @Bmc_CollapseExpand(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ai, i32 noundef %3, i32 noundef %4, i32 noundef %i.kg)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ki = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #18
  %i.kj = icmp slt i32 %i.ki, 0
  br i1 %i.kj, label %Abc_Clock.exit226, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kk = load i64, ptr %7, align 8, !tbaa !81
  %i.kl = mul nsw i64 %i.kk, 1000000
  %i.km = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.kn = sdiv i64 %i.km, 1000
  %i.ko = add nsw i64 %i.kn, %i.kl
  br label %Abc_Clock.exit226

Abc_Clock.exit226:                                ; preds = %bb.cm, %bb.cn
  %.0.i225 = phi i64 [ %i.ko, %bb.cn ], [ -1, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.kp = sub i64 %.0.i225, %.0.i223
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv378
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !39
  %i.kt = add nsw i64 %i.kp, %i.ks
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !39
  br label %bb.co

bb.co:                                            ; preds = %.thread429, %Abc_Clock.exit226
  %i.ku = phi i32 [ %i.jy, %.thread429 ], [ %i.kh, %Abc_Clock.exit226 ]
  %.3432 = phi i64 [ %.2, %.thread429 ], [ %.0.i223, %Abc_Clock.exit226 ] ; 3 uses
  %.not151433 = icmp eq i64 %indvars.iv378, 0     ; 2 uses
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %.loopexit276, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv378
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !78 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 12 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !46 ; 8 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 4 ; 4 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !57 ; 3 uses
  %i.lc = add nsw i32 %i.lb, -1                   ; 6 uses
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !57
  %i.ld = add nsw i32 %i.lc, %1                   ; 3 uses
  %i.le = add nsw i32 %i.ld, 4                    ; 9 uses
  %.not.i227.not = icmp slt i32 %i.le, %i.lb
  br i1 %.not.i227.not, label %Vec_StrFillExtra.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lf = load i32, ptr %i.kx, align 8, !tbaa !70 ; 4 uses
  %i.lg = shl nsw i32 %i.lf, 1                    ; 2 uses
  %i.lh = icmp sgt i32 %i.le, %i.lg
  %.not.i.i = icmp slt i32 %i.lf, %i.le           ; 2 uses
  br i1 %i.lh, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not.i.i, label %bb.cs, label %Vec_StrGrow.exit.i228

bb.cs:                                            ; preds = %bb.cr
  %.not9.i.i236 = icmp eq ptr %i.kz, null
  %i.li = sext i32 %i.le to i64                   ; 2 uses
  br i1 %.not9.i.i236, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lj = call ptr @realloc(ptr noundef nonnull %i.kz, i64 noundef %i.li) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cu:                                            ; preds = %bb.cs
  %i.lk = call noalias ptr @malloc(i64 noundef %i.li) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.cv:                                            ; preds = %bb.cq
  br i1 %.not.i.i, label %bb.cw, label %Vec_StrGrow.exit.i228

bb.cw:                                            ; preds = %bb.cv
  %i.ll = icmp slt i32 %i.lf, 1073741823
  %spec.select.i234 = select i1 %i.ll, i32 %i.lg, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.lf, %spec.select.i234
  br i1 %.not.i22.i, label %bb.cx, label %Vec_StrGrow.exit.i228

bb.cx:                                            ; preds = %bb.cw
  %.not9.i23.i = icmp eq ptr %i.kz, null
  %i.lm = sext i32 %spec.select.i234 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ln = call ptr @realloc(ptr noundef nonnull %i.kz, i64 noundef %i.lm) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cz:                                            ; preds = %bb.cx
  %i.lo = call noalias ptr @malloc(i64 noundef %i.lm) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.cy, %bb.cz, %bb.ct, %bb.cu
  %storemerge272 = phi ptr [ %i.lk, %bb.cu ], [ %i.lj, %bb.ct ], [ %i.ln, %bb.cy ], [ %i.lo, %bb.cz ] ; 2 uses
  %spec.select.sink.i235 = phi i32 [ %i.le, %bb.cu ], [ %i.le, %bb.ct ], [ %spec.select.i234, %bb.cy ], [ %spec.select.i234, %bb.cz ]
  store ptr %storemerge272, ptr %i.ky, align 8, !tbaa !46
  store i32 %spec.select.sink.i235, ptr %i.kx, align 8, !tbaa !70
  %.pre386 = load i32, ptr %i.la, align 4, !tbaa !57
  br label %Vec_StrGrow.exit.i228

Vec_StrGrow.exit.i228:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.cw, %bb.cv, %bb.cr
  %.val171.pre392 = phi ptr [ %storemerge272, %Vec_StrGrow.exit.sink.split.i ], [ %i.kz, %bb.cw ], [ %i.kz, %bb.cv ], [ %i.kz, %bb.cr ]
  %i.lp = phi i32 [ %.pre386, %Vec_StrGrow.exit.sink.split.i ], [ %i.lc, %bb.cw ], [ %i.lc, %bb.cv ], [ %i.lc, %bb.cr ] ; 2 uses
  %i.lq = icmp slt i32 %i.lp, %i.le
  br i1 %i.lq, label %.lr.ph.i229, label %._crit_edge.i

.lr.ph.i229:                                      ; preds = %Vec_StrGrow.exit.i228
  %i.lr = sext i32 %i.lp to i64                   ; 4 uses
  %wide.trip.count.i230 = sext i32 %i.le to i64   ; 3 uses
  %i.ls = sub nsw i64 %wide.trip.count.i230, %i.lr
  %xtraiter461 = and i64 %i.ls, 3                 ; 2 uses
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i229, %.prol.preheader
  %indvars.iv.i231.prol = phi i64 [ %indvars.iv.next.i232.prol, %.prol.preheader ], [ %i.lr, %.lr.ph.i229 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i229 ]
  %i.lt = load ptr, ptr %i.ky, align 8, !tbaa !46
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 %indvars.iv.i231.prol
  store i8 45, ptr %i.lu, align 1, !tbaa !52
  %indvars.iv.next.i232.prol = add nsw i64 %indvars.iv.i231.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter461
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !182

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i229
  %indvars.iv.i231.unr = phi i64 [ %i.lr, %.lr.ph.i229 ], [ %indvars.iv.next.i232.prol, %.prol.preheader ]
  %i.lv = sub nsw i64 %i.lr, %wide.trip.count.i230
  %i.lw = icmp ugt i64 %i.lv, -4
  br i1 %i.lw, label %._crit_edge.i.loopexit, label %.lr.ph.i229.new

.lr.ph.i229.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i229.new
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i232.3, %.lr.ph.i229.new ], [ %indvars.iv.i231.unr, %.prol.loopexit ] ; 5 uses
  %i.lx = load ptr, ptr %i.ky, align 8, !tbaa !46
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %indvars.iv.i231
  store i8 45, ptr %i.ly, align 1, !tbaa !52
  %i.lz = load ptr, ptr %i.ky, align 8, !tbaa !46
  %i.ma = getelementptr i8, ptr %i.lz, i64 %indvars.iv.i231
  %i.mb = getelementptr i8, ptr %i.ma, i64 1
  store i8 45, ptr %i.mb, align 1, !tbaa !52
  %i.mc = load ptr, ptr %i.ky, align 8, !tbaa !46
  %i.md = getelementptr i8, ptr %i.mc, i64 %indvars.iv.i231
  %i.me = getelementptr i8, ptr %i.md, i64 2
  store i8 45, ptr %i.me, align 1, !tbaa !52
  %i.mf = load ptr, ptr %i.ky, align 8, !tbaa !46
  %i.mg = getelementptr i8, ptr %i.mf, i64 %indvars.iv.i231
  %i.mh = getelementptr i8, ptr %i.mg, i64 3
  store i8 45, ptr %i.mh, align 1, !tbaa !52
  %indvars.iv.next.i232.3 = add nsw i64 %indvars.iv.i231, 4 ; 2 uses
  %exitcond.not.i233.3 = icmp eq i64 %indvars.iv.next.i232.3, %wide.trip.count.i230
  br i1 %exitcond.not.i233.3, label %._crit_edge.i.loopexit, label %.lr.ph.i229.new, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i229.new, %.prol.loopexit
  %.val171.pre.pre = load ptr, ptr %i.ky, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i228
  %.val171.pre = phi ptr [ %.val171.pre.pre, %._crit_edge.i.loopexit ], [ %.val171.pre392, %Vec_StrGrow.exit.i228 ]
  store i32 %i.le, ptr %i.la, align 4, !tbaa !57
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.cp, %._crit_edge.i
  %.val171 = phi ptr [ %i.kz, %bb.cp ], [ %.val171.pre, %._crit_edge.i ]
  %i.mi = sext i32 %i.ld to i64                   ; 3 uses
  %i.mj = getelementptr inbounds i8, ptr %.val171, i64 %i.mi
  store i8 32, ptr %i.mj, align 1, !tbaa !52
  %i.mk = add i32 %i.lb, %1
  %i.ml = select i1 %.not151433, i8 49, i8 48
  %.val170 = load ptr, ptr %i.ky, align 8, !tbaa !46
  %i.mm = sext i32 %i.mk to i64
  %i.mn = getelementptr inbounds i8, ptr %.val170, i64 %i.mm
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !52
  %.val169 = load ptr, ptr %i.ky, align 8, !tbaa !46
  %i.mo = getelementptr i8, ptr %.val169, i64 %i.mi
  %i.mp = getelementptr i8, ptr %i.mo, i64 2
  store i8 10, ptr %i.mp, align 1, !tbaa !52
  %.val168 = load ptr, ptr %i.ky, align 8, !tbaa !46
  %i.mq = getelementptr i8, ptr %.val168, i64 %i.mi
  %i.mr = getelementptr i8, ptr %i.mq, i64 3
  store i8 0, ptr %i.mr, align 1, !tbaa !52
  %i.ms = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.mt = icmp eq i32 %i.ms, 0
  %.pre388 = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 3 uses
  br i1 %i.mt, label %bb.da, label %Vec_IntPush.exit244

bb.da:                                            ; preds = %Vec_StrFillExtra.exit
  %.not9.i.i242 = icmp eq ptr %.pre388, null
  br i1 %.not9.i.i242, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre388, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i240

bb.dc:                                            ; preds = %bb.da
  %i.mv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i240

Vec_IntGrow.exit11.sink.split.i240:               ; preds = %bb.db, %bb.dc
  %i.mw = phi ptr [ %i.mu, %bb.db ], [ %i.mv, %bb.dc ] ; 2 uses
  store ptr %i.mw, ptr %i.ao, align 8, !tbaa !33
  store i32 16, ptr %i.ai, align 8, !tbaa !44
end_hunk_2
