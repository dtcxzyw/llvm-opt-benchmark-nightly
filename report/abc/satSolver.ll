Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver?download=true
inline.NumInlined: 548
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@sat_solver_reducedb.TimeTotal = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"reduceDB: Keeping %7d out of %7d clauses (%5.2f %%)  \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@sat_solver_rollback.Count = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"| %9.0f | %7.0f %8.0f | %7.0f %7.0f %8.0f %7.1f | %6.3f %% |\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [54 x i8] c"Running SAT solver with parameters %d and %d and %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Failed to realloc memory from %.1f MB to %.1f MB.\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@str = private unnamed_addr constant [79 x i8] c"==================================[MINISAT]===================================\00", align 1
@str.1 = private unnamed_addr constant [79 x i8] c"| Conflicts |     ORIGINAL     |              LEARNT              | Progress |\00", align 1
@str.2 = private unnamed_addr constant [79 x i8] c"|           | Clauses Literals |   Limit Clauses Literals  Lit/Cl |          |\00", align 1
@str.4 = private unnamed_addr constant [79 x i8] c"==============================================================================\00", align 1
@str.5 = private unnamed_addr constant [65 x i8] c"sat_solver_solve_lexsat(): A satisfying assignment should exist.\00", align 1
@switch.table.sat_solver_setnvars = private unnamed_addr constant [3 x i16] [i16 1024, i16 0, i16 0], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @sat_solver_get_var_value(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr %.val7, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !25    ; 2 uses
  %switch.selectcmp = icmp eq i8 %i.d, 0
  %switch.select = zext i1 %switch.selectcmp to i32
  %switch.selectcmp8 = icmp eq i8 %i.d, 1
  %switch.select9 = select i1 %switch.selectcmp8, i32 -1, i32 %switch.select
  ret i32 %switch.select9
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @sat_solver_set_var_activity(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = zext nneg i32 %i.a to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.f, i1 false), !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  switch i32 %i.h, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %bb.j
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 32, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 -1, ptr %i.j, align 8, !tbaa !31
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph67, label %.loopexit

.lr.ph67:                                         ; preds = %bb.b
  %.not46 = icmp eq ptr %1, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 304
  %wide.trip.count80 = zext nneg i32 %2 to i64    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph67, %bb.i
  %indvars.iv77 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next78, %bb.i ] ; 4 uses
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv77
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33
  %i.s = sext i32 %i.r to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = phi i64 [ %i.s, %bb.d ], [ %indvars.iv77, %bb.c ] ; 2 uses
  %i.u = load i64, ptr %i.i, align 8, !tbaa !30
  %i.v = sub nuw nsw i64 %wide.trip.count80, %indvars.iv77
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  store i64 %i.w, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.t
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33   ; 4 uses
  %.not47 = icmp eq i32 %i.z, -1
  br i1 %.not47, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !34 ; 4 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33 ; 2 uses
  %.not31.i = icmp eq i32 %i.z, 0
  %.pre.i = sext i32 %i.ac to i64                 ; 2 uses
  br i1 %.not31.i, label %order_update.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.pre.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %.02832.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.033.i, %bb.h ] ; 5 uses
  %.033.in.i = add nsw i32 %.02832.i, -1
  %.033.i = sdiv i32 %.033.in.i, 2                ; 3 uses
  %i.af = sext i32 %.033.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.al = icmp ugt i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.h, label %order_update.exit

bb.h:                                             ; preds = %bb.g
  %i.am = sext i32 %.02832.i to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.am
  store i32 %i.ah, ptr %i.an, align 4, !tbaa !33
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ai
  store i32 %.02832.i, ptr %i.ao, align 4, !tbaa !33
  %.not.i = icmp ult i32 %.02832.i, 3
  br i1 %.not.i, label %order_update.exit, label %bb.g, !llvm.loop !35

order_update.exit:                                ; preds = %bb.g, %bb.h, %bb.f
  %.028.lcssa.i = phi i32 [ 0, %bb.f ], [ %.033.i, %bb.h ], [ %.02832.i, %bb.g ] ; 2 uses
  %i.ap = sext i32 %.028.lcssa.i to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ap
  store i32 %i.ac, ptr %i.aq, align 4, !tbaa !33
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.pre.i
  store i32 %.028.lcssa.i, ptr %i.ar, align 4, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %order_update.exit, %bb.e
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %.loopexit, label %bb.c, !llvm.loop !37

bb.j:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 4607182418800017408, ptr %i.as, align 8, !tbaa !30
  %i.at = icmp sgt i32 %2, 0
  br i1 %i.at, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %bb.j
  %.not = icmp eq ptr %1, null
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32 ; 6 uses
  %i.ay = getelementptr i8, ptr %0, i64 304       ; 2 uses
  %wide.trip.count75 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %.not, label %.lr.ph64.split.us, label %.lr.ph64.split

.lr.ph64.split.us:                                ; preds = %.lr.ph64, %bb.n
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.n ], [ 0, %.lr.ph64 ] ; 4 uses
  %i.az = trunc i64 %indvars.iv72 to i32
  %i.ba = sub i32 %2, %i.az
  %3 = uitofp nneg i32 %i.ba to double
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv72
  store double %3, ptr %i.bb, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv72
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33 ; 4 uses
  %.not45.us = icmp eq i32 %i.bd, -1
  br i1 %.not45.us, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph64.split.us
  %.val.i48.us = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 4 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.val.i48.us, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33 ; 2 uses
  %.not31.i49.us = icmp eq i32 %i.bd, 0
  %.pre.i58.us = sext i32 %i.bg to i64            ; 2 uses
  br i1 %.not31.i49.us, label %order_update.exit59.us, label %.lr.ph.i50.us

.lr.ph.i50.us:                                    ; preds = %bb.k
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.pre.i58.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i50.us
  %.02832.i51.us = phi i32 [ %i.bd, %.lr.ph.i50.us ], [ %.033.i53.us, %bb.m ] ; 5 uses
  %.033.in.i52.us = add nsw i32 %.02832.i51.us, -1
  %.033.i53.us = sdiv i32 %.033.in.i52.us, 2      ; 3 uses
  %i.bj = sext i32 %.033.i53.us to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val.i48.us, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !33 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !28
  %i.bp = icmp ugt i64 %i.bi, %i.bo
  br i1 %i.bp, label %bb.m, label %order_update.exit59.us

bb.m:                                             ; preds = %bb.l
  %i.bq = sext i32 %.02832.i51.us to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val.i48.us, i64 %i.bq
  store i32 %i.bl, ptr %i.br, align 4, !tbaa !33
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bm
  store i32 %.02832.i51.us, ptr %i.bs, align 4, !tbaa !33
  %.not.i56.us = icmp ult i32 %.02832.i51.us, 3
  br i1 %.not.i56.us, label %order_update.exit59.us, label %bb.l, !llvm.loop !35

order_update.exit59.us:                           ; preds = %bb.l, %bb.m, %bb.k
  %.028.lcssa.i55.us = phi i32 [ 0, %bb.k ], [ %.033.i53.us, %bb.m ], [ %.02832.i51.us, %bb.l ] ; 2 uses
  %i.bt = sext i32 %.028.lcssa.i55.us to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val.i48.us, i64 %i.bt
  store i32 %i.bg, ptr %i.bu, align 4, !tbaa !33
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %.pre.i58.us
  store i32 %.028.lcssa.i55.us, ptr %i.bv, align 4, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %order_update.exit59.us, %.lr.ph64.split.us
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit, label %.lr.ph64.split.us, !llvm.loop !38

.lr.ph64.split:                                   ; preds = %.lr.ph64, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.lr.ph64 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !33
  %i.by = trunc i64 %indvars.iv to i32
  %i.bz = sub i32 %2, %i.by
  %4 = uitofp nneg i32 %i.bz to double
  %i.ca = sext i32 %i.bx to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ca
  store double %4, ptr %i.cb, align 8, !tbaa !28
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ca
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !33 ; 4 uses
  %.not45 = icmp eq i32 %i.cd, -1
  br i1 %.not45, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph64.split
  %.val.i48 = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 4 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val.i48, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %.not31.i49 = icmp eq i32 %i.cd, 0
  %.pre.i58 = sext i32 %i.cg to i64               ; 2 uses
  br i1 %.not31.i49, label %order_update.exit59, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.o
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.pre.i58
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i50
  %.02832.i51 = phi i32 [ %i.cd, %.lr.ph.i50 ], [ %.033.i53, %bb.q ] ; 5 uses
  %.033.in.i52 = add nsw i32 %.02832.i51, -1
  %.033.i53 = sdiv i32 %.033.in.i52, 2            ; 3 uses
  %i.cj = sext i32 %.033.i53 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %.val.i48, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !33 ; 2 uses
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !28
  %i.cp = icmp ugt i64 %i.ci, %i.co
  br i1 %i.cp, label %bb.q, label %order_update.exit59

bb.q:                                             ; preds = %bb.p
  %i.cq = sext i32 %.02832.i51 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %.val.i48, i64 %i.cq
  store i32 %i.cl, ptr %i.cr, align 4, !tbaa !33
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.cm
  store i32 %.02832.i51, ptr %i.cs, align 4, !tbaa !33
  %.not.i56 = icmp ult i32 %.02832.i51, 3
  br i1 %.not.i56, label %order_update.exit59, label %bb.p, !llvm.loop !35

order_update.exit59:                              ; preds = %bb.p, %bb.q, %bb.o
  %.028.lcssa.i55 = phi i32 [ 0, %bb.o ], [ %.033.i53, %bb.q ], [ %.02832.i51, %bb.p ] ; 2 uses
  %i.ct = sext i32 %.028.lcssa.i55 to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %.val.i48, i64 %i.ct
  store i32 %i.cg, ptr %i.cu, align 4, !tbaa !33
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %.pre.i58
  store i32 %.028.lcssa.i55, ptr %i.cv, align 4, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %order_update.exit59, %.lr.ph64.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count75
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph64.split, !llvm.loop !38

.loopexit:                                        ; preds = %bb.r, %bb.n, %bb.i, %bb.j, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i32 @sat_solver_clause_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr exact i64 %i.c, 2
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp ne i32 %i.e, 2
  %i.g = icmp ne i32 %3, 0                        ; 3 uses
  %or.cond3 = or i1 %i.g, %i.f
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %1, align 4, !tbaa !33
  %i.i = xor i32 %i.h, 1
  %i.j = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %.val57 = load ptr, ptr %i.j, align 8, !tbaa !39 ; 2 uses
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %.val57, i64 %i.k ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %i.o = shl nsw i32 %i.n, 1
  %i.p = or disjoint i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40   ; 5 uses
  %i.s = load i32, ptr %i.l, align 8, !tbaa !41
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.c, label %veci_push.exit

bb.c:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.r, 4
  %i.v = shl nsw i32 %i.r, 1
  %i.w = lshr i32 %i.r, 1
  %i.x = mul nuw nsw i32 %i.w, 3
  %i.y = select i1 %i.u, i32 %i.v, i32 %i.x       ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  %i.ab = sext i32 %i.y to i64
  %i.ac = shl nsw i64 %i.ab, 2                    ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ac) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = phi ptr [ %i.ad, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  store ptr %i.af, ptr %i.z, align 8, !tbaa !34
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !41
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fmul nnan double %i.ai, f0x3EB0000000000000
  %i.ak = sitofp i32 %i.y to double
  %i.al = fmul nnan double %i.ak, f0x3EB0000000000000
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.aj, double noundef %i.al) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.ao = tail call i32 @fflush(ptr noundef %i.an) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.y, ptr %i.l, align 8, !tbaa !41
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !40
  %.val56.pre = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.b, %bb.h
  %.val56 = phi ptr [ %.val56.pre, %bb.h ], [ %.val57, %bb.b ]
  %i.ap = phi i32 [ %.pre.i, %bb.h ], [ %i.r, %bb.b ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = add nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.q, align 4, !tbaa !40
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.at
  store i32 %i.p, ptr %i.au, align 4, !tbaa !33
  %i.av = load i32, ptr %i.m, align 4, !tbaa !33
  %i.aw = xor i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr %.val56, i64 %i.ax ; 6 uses
  %i.az = load i32, ptr %1, align 4, !tbaa !33
  %i.ba = shl nsw i32 %i.az, 1
  %i.bb = or disjoint i32 %i.ba, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !40 ; 5 uses
  %i.be = load i32, ptr %i.ay, align 8, !tbaa !41
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %veci_push.exit60

bb.i:                                             ; preds = %veci_push.exit
  %i.bg = icmp slt i32 %i.bd, 4
  %i.bh = shl nsw i32 %i.bd, 1
  %i.bi = lshr i32 %i.bd, 1
  %i.bj = mul nuw nsw i32 %i.bi, 3
  %i.bk = select i1 %i.bg, i32 %i.bh, i32 %i.bj   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !34 ; 2 uses
  %.not.i58 = icmp eq ptr %i.bm, null
  %i.bn = sext i32 %i.bk to i64
  %i.bo = shl nsw i64 %i.bn, 2                    ; 2 uses
  br i1 %.not.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef %i.bo) #29
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.br = phi ptr [ %i.bp, %bb.j ], [ %i.bq, %bb.k ] ; 2 uses
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !34
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = load i32, ptr %i.ay, align 8, !tbaa !41
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = fmul nnan double %i.bu, f0x3EB0000000000000
  %i.bw = sitofp i32 %i.bk to double
  %i.bx = fmul nnan double %i.bw, f0x3EB0000000000000
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.bv, double noundef %i.bx) ; 0 uses
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.ca = tail call i32 @fflush(ptr noundef %i.bz) ; 0 uses
  br label %bb.n

end_hunk_0
