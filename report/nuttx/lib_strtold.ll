Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_strtold?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@__const.decfloat.p10s = private unnamed_addr constant [8 x i64] [i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000], align 16
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"
@switch.table.strtox = private unnamed_addr constant [3 x i8] c"\185@", align 4
@switch.table.strtox.1 = private unnamed_addr constant [3 x i32] [i32 -149, i32 -1074, i32 -16445], align 4

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local float @strtof(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc x86_fp80 @strtox(ptr noundef %0, ptr noundef %1, i32 noundef 1) #9
  %i.b = fptrunc x86_fp80 %i.a to float
  ret float %i.b
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc x86_fp80 @strtox(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef range(i32 1, 4) %2) unnamed_addr #2 {
switch.lookup:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %switch.tableidx = add nsw i32 %2, -1           ; 2 uses
  %3 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.strtox, i64 %3
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i32
  %4 = zext nneg i32 %switch.tableidx to i64
  %switch.gep214 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.strtox.1, i64 %4
  %switch.load215 = load i32, ptr %switch.gep214, align 4 ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %switch.lookup
  %.060 = phi ptr [ %0, %switch.lookup ], [ %i.f, %bb.a ] ; 3 uses
  %i.c = load i8, ptr %.060, align 1              ; 2 uses
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @isspace(i32 noundef %i.d) #10
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.a, !llvm.loop !9

bb.b:                                             ; preds = %bb.a
  switch i8 %i.c, label %bb.e [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.161 = phi ptr [ %.060, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %.159 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.161, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %.2108 = phi ptr [ %.161, %bb.e ], [ %i.l, %bb.g ] ; 6 uses
  %i.g = load i8, ptr %.2108, align 1
  %i.h = or i8 %i.g, 32
  %i.i = getelementptr inbounds nuw i8, ptr @.str, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.2108, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.critedge.thread, label %bb.f, !llvm.loop !10

.critedge:                                        ; preds = %bb.f
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.m, label %bb.j [
    i32 8, label %.critedge.thread
    i32 3, label %.critedge.thread
  ]

.critedge.thread:                                 ; preds = %bb.g, %.critedge, %.critedge
  %.2.lcssa164 = phi ptr [ %.2108, %.critedge ], [ %.2108, %.critedge ], [ %scevgep, %bb.g ]
  %.not69 = icmp eq ptr %1, null
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  store ptr %.2.lcssa164, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge.thread
  %i.n = select i1 %.159, x86_fp80 -inf, x86_fp80 +inf
  br label %bb.cc

bb.j:                                             ; preds = %.critedge
  %i.o = sub nsw i64 0, %indvars.iv
  %i.p = getelementptr inbounds i8, ptr %.2108, i64 %i.o
  %i.q = sub nsw i64 3, %indvars.iv
  %scevgep148 = getelementptr i8, ptr %.2108, i64 %i.q
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  %indvars.iv146 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next147, %bb.l ] ; 3 uses
  %.3110 = phi ptr [ %i.p, %bb.j ], [ %i.w, %bb.l ] ; 3 uses
  %i.r = load i8, ptr %.3110, align 1
  %i.s = or i8 %i.r, 32
  %i.t = getelementptr inbounds nuw i8, ptr @.str.1, i64 %indvars.iv146
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.l, label %.critedge3.thread

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.3110, i64 1
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, 3
  br i1 %exitcond150.not, label %.critedge3, label %bb.k, !llvm.loop !11

.critedge3:                                       ; preds = %bb.l
  %.not68 = icmp eq ptr %1, null
  br i1 %.not68, label %bb.cc, label %bb.m

bb.m:                                             ; preds = %.critedge3
  store ptr %scevgep148, ptr %1, align 8
  br label %bb.cc

.critedge3.thread:                                ; preds = %bb.k
  %i.x = sub nsw i64 0, %indvars.iv146
  %i.y = getelementptr inbounds i8, ptr %.3110, i64 %i.x ; 6 uses
  %i.z = load i8, ptr %i.y, align 1               ; 3 uses
  %i.aa = icmp eq i8 %i.z, 48
  br i1 %i.aa, label %bb.n, label %bb.au

bb.n:                                             ; preds = %.critedge3.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, -33
  %i.ae = icmp eq i8 %i.ad, 88
  br i1 %i.ae, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0107.i = phi i32 [ 0, %bb.o ], [ 1, %bb.p ]   ; 2 uses
  %.097.in.in.i = phi ptr [ %i.af, %bb.o ], [ %storemerge130.i, %bb.p ] ; 3 uses
  %storemerge130.i = getelementptr inbounds nuw i8, ptr %.097.in.in.i, i64 1 ; 3 uses
  %.097.in.i = load i8, ptr %.097.in.in.i, align 1 ; 2 uses
  switch i8 %.097.in.i, label %.loopexit.i [
    i8 48, label %bb.p
    i8 46, label %bb.q
  ], !llvm.loop !12

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.097.in.in.i, i64 2 ; 2 uses
  %.198.in155.i = load i8, ptr %storemerge130.i, align 1 ; 2 uses
  %i.ah = icmp eq i8 %.198.in155.i, 48
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %.083156.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %bb.q ]
  %i.ai = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ag, %bb.q ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ak = add nsw i64 %.083156.i, -1              ; 2 uses
  %.198.in.i = load i8, ptr %i.ai, align 1        ; 2 uses
  %i.al = icmp eq i8 %.198.in.i, 48
  br i1 %i.al, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !13

.loopexit.i:                                      ; preds = %bb.p, %.lr.ph.i, %bb.q
  %.promoted159.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ag, %bb.q ], [ %storemerge130.i, %bb.p ] ; 4 uses
  %.0112.i = phi i32 [ 1, %.lr.ph.i ], [ 1, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.2109.i = phi i32 [ 1, %.lr.ph.i ], [ %.0107.i, %bb.q ], [ %.0107.i, %bb.p ] ; 2 uses
  %.299.in.i = phi i8 [ %.198.in.i, %.lr.ph.i ], [ %.198.in155.i, %bb.q ], [ %.097.in.i, %bb.p ] ; 4 uses
  %.184.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.3100161.i = sext i8 %.299.in.i to i32         ; 2 uses
  %i.am = tail call i32 @isxdigit(i32 noundef %.3100161.i) #10, !inline_history !14
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = icmp eq i8 %.299.in.i, 46               ; 2 uses
  %i.ap = or i1 %i.ao, %i.an
  br i1 %i.ap, label %.lr.ph172.i, label %._crit_edge.thread.i

.lr.ph172.i:                                      ; preds = %.loopexit.i, %bb.y
  %i.aq = phi i1 [ %i.bl, %bb.y ], [ %i.ao, %.loopexit.i ]
  %.3100171.i = phi i32 [ %.3100.i, %bb.y ], [ %.3100161.i, %.loopexit.i ] ; 2 uses
  %.081170.i = phi i64 [ %.182.i, %bb.y ], [ 0, %.loopexit.i ] ; 6 uses
  %.285169.i = phi i64 [ %.3.i, %bb.y ], [ %.184.i, %.loopexit.i ] ; 2 uses
  %.088168.i = phi x86_fp80 [ %.290.i, %bb.y ], [ 1.000000e+00, %.loopexit.i ] ; 5 uses
  %.092167.i = phi x86_fp80 [ %.294.i, %bb.y ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %.3100.in166.i = phi i8 [ %i.bi, %bb.y ], [ %.299.in.i, %.loopexit.i ] ; 2 uses
  %.0101165.i = phi i32 [ %.2103.i, %bb.y ], [ 0, %.loopexit.i ] ; 5 uses
  %.3110164.i = phi i32 [ %.4111.i, %bb.y ], [ %.2109.i, %.loopexit.i ] ; 2 uses
  %.1113163.i = phi i32 [ %.2114.i, %bb.y ], [ %.0112.i, %.loopexit.i ] ; 2 uses
  %.0115162.i = phi i32 [ %.2117.i, %bb.y ], [ 0, %.loopexit.i ] ; 5 uses
  %i.ar = phi ptr [ %i.bh, %bb.y ], [ %.promoted159.i, %.loopexit.i ] ; 3 uses
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph172.i
  %.not.i = icmp eq i32 %.1113163.i, 0
  br i1 %.not.i, label %bb.y, label %._crit_edge.i

bb.s:                                             ; preds = %.lr.ph172.i
  %i.as = icmp sgt i8 %.3100.in166.i, 57
  %i.at = or i32 %.3100171.i, 32
  %i.au = add nsw i32 %i.at, -87
  %i.av = add nsw i32 %.3100171.i, -48
  %.091.i = select i1 %i.as, i32 %i.au, i32 %i.av ; 3 uses
  %i.aw = icmp slt i64 %.081170.i, 8
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = shl i32 %.0101165.i, 4
  %i.ay = add i32 %.091.i, %i.ax
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.az = icmp samesign ult i64 %.081170.i, 17
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ba = sitofp i32 %.091.i to x86_fp80
  %i.bb = fmul x86_fp80 %.088168.i, 6.250000e-02  ; 2 uses
  %i.bc = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.ba, x86_fp80 %i.bb, x86_fp80 %.092167.i)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bd = icmp eq i32 %.091.i, 0
  %i.be = icmp ne i32 %.0115162.i, 0
  %or.cond.i = select i1 %i.bd, i1 true, i1 %i.be ; 2 uses
  %i.bf = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.088168.i, x86_fp80 5.000000e-01, x86_fp80 %.092167.i)
  %spec.select.i = select i1 %or.cond.i, i32 %.0115162.i, i32 1
  %spec.select132.i = select i1 %or.cond.i, x86_fp80 %.092167.i, x86_fp80 %i.bf
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.1116.i = phi i32 [ %.0115162.i, %bb.t ], [ %.0115162.i, %bb.v ], [ %spec.select.i, %bb.w ]
  %.1102.i = phi i32 [ %i.ay, %bb.t ], [ %.0101165.i, %bb.v ], [ %.0101165.i, %bb.w ]
  %.193.i = phi x86_fp80 [ %.092167.i, %bb.t ], [ %i.bc, %bb.v ], [ %spec.select132.i, %bb.w ]
  %.189.i = phi x86_fp80 [ %.088168.i, %bb.t ], [ %i.bb, %bb.v ], [ %.088168.i, %bb.w ]
  %i.bg = add nsw i64 %.081170.i, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.2117.i = phi i32 [ %.1116.i, %bb.x ], [ %.0115162.i, %bb.r ]
  %.2114.i = phi i32 [ %.1113163.i, %bb.x ], [ 1, %bb.r ] ; 2 uses
  %.4111.i = phi i32 [ 1, %bb.x ], [ %.3110164.i, %bb.r ] ; 2 uses
  %.2103.i = phi i32 [ %.1102.i, %bb.x ], [ %.0101165.i, %bb.r ] ; 2 uses
  %.294.i = phi x86_fp80 [ %.193.i, %bb.x ], [ %.092167.i, %bb.r ] ; 2 uses
  %.290.i = phi x86_fp80 [ %.189.i, %bb.x ], [ %.088168.i, %bb.r ]
  %.3.i = phi i64 [ %.285169.i, %bb.x ], [ %.081170.i, %bb.r ] ; 2 uses
  %.182.i = phi i64 [ %i.bg, %bb.x ], [ %.081170.i, %bb.r ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.ar, align 1             ; 4 uses
  %.3100.i = sext i8 %i.bi to i32                 ; 2 uses
  %i.bj = tail call i32 @isxdigit(i32 noundef %.3100.i) #10, !inline_history !14
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = icmp eq i8 %i.bi, 46                    ; 2 uses
  %i.bm = or i1 %i.bl, %i.bk
  br i1 %i.bm, label %.lr.ph172.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.y, %bb.r
  %i.bn = phi ptr [ %i.ar, %bb.r ], [ %i.bh, %bb.y ] ; 4 uses
  %.1113.lcssa.i = phi i32 [ 1, %bb.r ], [ %.2114.i, %bb.y ] ; 2 uses
  %.3110.lcssa.i = phi i32 [ %.3110164.i, %bb.r ], [ %.4111.i, %bb.y ]
  %.0101.lcssa.i = phi i32 [ %.0101165.i, %bb.r ], [ %.2103.i, %bb.y ] ; 2 uses
  %.3100.in.lcssa.i = phi i8 [ %.3100.in166.i, %bb.r ], [ %i.bi, %bb.y ] ; 2 uses
  %.092.lcssa.i = phi x86_fp80 [ %.092167.i, %bb.r ], [ %.294.i, %bb.y ] ; 2 uses
  %.285.lcssa.i = phi i64 [ %.285169.i, %bb.r ], [ %.3.i, %bb.y ]
  %.081.lcssa.i = phi i64 [ %.081170.i, %bb.r ], [ %.182.i, %bb.y ] ; 3 uses
  store ptr %i.bn, ptr %i.b, align 8
  %.not123.i = icmp eq i32 %.3110.lcssa.i, 0
  br i1 %.not123.i, label %bb.z, label %bb.ab

._crit_edge.thread.i:                             ; preds = %.loopexit.i
  store ptr %.promoted159.i, ptr %i.b, align 8
  %.not123225.i = icmp eq i32 %.2109.i, 0
  br i1 %.not123225.i, label %bb.z, label %.lr.ph193.preheader.i

bb.z:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.1113.lcssa226.i = phi i32 [ %.0112.i, %._crit_edge.thread.i ], [ %.1113.lcssa.i, %._crit_edge.i ]
  %i.bo = phi ptr [ %.promoted159.i, %._crit_edge.thread.i ], [ %i.bn, %._crit_edge.i ]
  %.not125.i = icmp eq ptr %1, null
  br i1 %.not125.i, label %hexfloat.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not124.i = icmp eq i32 %.1113.lcssa226.i, 0
  %spec.select133.v.i = select i1 %.not124.i, i64 -1, i64 -2
  %spec.select133.i = getelementptr inbounds i8, ptr %i.bo, i64 %spec.select133.v.i
  store ptr %spec.select133.i, ptr %1, align 8
  br label %hexfloat.exit

bb.ab:                                            ; preds = %._crit_edge.i
  %.not126.i = icmp eq i32 %.1113.lcssa.i, 0
  %spec.select134.i = select i1 %.not126.i, i64 %.081.lcssa.i, i64 %.285.lcssa.i ; 2 uses
  %i.bp = icmp slt i64 %.081.lcssa.i, 8
  br i1 %i.bp, label %.lr.ph193.preheader.i, label %._crit_edge194.i

.lr.ph193.preheader.i:                            ; preds = %._crit_edge.thread.i, %bb.ab
  %spec.select134248.i = phi i64 [ %spec.select134.i, %bb.ab ], [ %.184.i, %._crit_edge.thread.i ]
  %5 = phi ptr [ %i.bn, %bb.ab ], [ %.promoted159.i, %._crit_edge.thread.i ]
  %.0101.lcssa228246.i = phi i32 [ %.0101.lcssa.i, %bb.ab ], [ 0, %._crit_edge.thread.i ]
  %.3100.in.lcssa229245.i.a = phi i8 [ %.3100.in.lcssa.i, %bb.ab ], [ %.299.in.i, %._crit_edge.thread.i ]
  %.092.lcssa230243.i.a = phi x86_fp80 [ %.092.lcssa.i, %bb.ab ], [ 0.000000e+00, %._crit_edge.thread.i ]
  %.081.lcssa232241.i = phi i64 [ %.081.lcssa.i, %bb.ab ], [ 0, %._crit_edge.thread.i ]
  br label %.lr.ph193.i

.lr.ph193.i:                                      ; preds = %.lr.ph193.i, %.lr.ph193.preheader.i
  %.2191.i = phi i64 [ %i.br, %.lr.ph193.i ], [ %.081.lcssa232241.i, %.lr.ph193.preheader.i ]
  %.3104190.i = phi i32 [ %i.bq, %.lr.ph193.i ], [ %.0101.lcssa228246.i, %.lr.ph193.preheader.i ]
  %i.bq = shl i32 %.3104190.i, 4                  ; 2 uses
  %i.br = add i64 %.2191.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, 8
  br i1 %exitcond.not.i, label %._crit_edge194.i, label %.lr.ph193.i, !llvm.loop !16

._crit_edge194.i:                                 ; preds = %.lr.ph193.i, %bb.ab
  %spec.select134247.i = phi i64 [ %spec.select134.i, %bb.ab ], [ %spec.select134248.i, %.lr.ph193.i ]
  %6 = phi ptr [ %i.bn, %bb.ab ], [ %5, %.lr.ph193.i ]
  %.3100.in.lcssa229244.i = phi i8 [ %.3100.in.lcssa.i, %bb.ab ], [ %.3100.in.lcssa229245.i.a, %.lr.ph193.i ]
  %.092.lcssa230242.i = phi x86_fp80 [ %.092.lcssa.i, %bb.ab ], [ %.092.lcssa230243.i.a, %.lr.ph193.i ] ; 2 uses
  %.3104.lcssa.i = phi i32 [ %.0101.lcssa.i, %bb.ab ], [ %i.bq, %.lr.ph193.i ] ; 4 uses
  %i.bs = and i8 %.3100.in.lcssa229244.i, -33
  %i.bt = icmp eq i8 %i.bs, 80
  br i1 %i.bt, label %bb.ac, label %.sink.split.i

bb.ac:                                            ; preds = %._crit_edge194.i
  %i.bu = call fastcc i64 @scanexp(ptr noundef %i.b) #9 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, -9223372036854775808
  br i1 %i.bv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bw = load ptr, ptr %i.b, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ad, %._crit_edge194.i
  %.sink256.i = phi ptr [ %i.bw, %bb.ad ], [ %6, %._crit_edge194.i ]
  %i.bx = getelementptr inbounds i8, ptr %.sink256.i, i64 -1
  store ptr %i.bx, ptr %i.b, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i, %bb.ac
  %.080.i = phi i64 [ %i.bu, %bb.ac ], [ 0, %.sink.split.i ]
  %.not127.i = icmp eq ptr %1, null
  br i1 %.not127.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = load ptr, ptr %i.b, align 8
  store ptr %i.by, ptr %1, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bz = shl nsw i64 %spec.select134247.i, 2
  %i.ca = add nsw i64 %i.bz, -32
  %i.cb = add nsw i64 %i.ca, %.080.i              ; 4 uses
  %.not128.i = icmp eq i32 %.3104.lcssa.i, 0
  br i1 %.not128.i, label %hexfloat.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = sub nsw i32 0, %switch.load215
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = icmp sgt i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cf = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #11, !inline_history !14, !srcloc !24
  %i.cg = trunc i8 %i.cf to i1
  br i1 %i.cg, label %hexfloat.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = tail call ptr @__errno() #12, !inline_history !14
  store i32 34, ptr %i.ch, align 4
  br label %hexfloat.exit

bb.ak:                                            ; preds = %bb.ah
  %i.ci = add nsw i32 %switch.load215, -128
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %i.cb, %i.cj
  br i1 %i.ck, label %bb.al, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak
  %i.cl = icmp sgt i32 %.3104.lcssa.i, -1
  br i1 %i.cl, label %.lr.ph199.i, label %._crit_edge200.i

bb.al:                                            ; preds = %bb.ak
  %i.cm = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #11, !inline_history !14, !srcloc !24
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %hexfloat.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.co = tail call ptr @__errno() #12, !inline_history !14
  store i32 34, ptr %i.co, align 4
  br label %hexfloat.exit

.lr.ph199.i:                                      ; preds = %.preheader.i, %.lr.ph199.i
  %.1198.i = phi i64 [ %i.cs, %.lr.ph199.i ], [ %i.cb, %.preheader.i ]
  %.395197.i = phi x86_fp80 [ %.496.i, %.lr.ph199.i ], [ %.092.lcssa230242.i, %.preheader.i ] ; 4 uses
  %.4105196.i = phi i32 [ %.5106.i, %.lr.ph199.i ], [ %.3104.lcssa.i, %.preheader.i ]
  %i.cp = fcmp oge x86_fp80 %.395197.i, 5.000000e-01 ; 2 uses
  %reass.add.i = shl nuw i32 %.4105196.i, 1       ; 2 uses
  %i.cq = fadd x86_fp80 %.395197.i, -1.000000e+00
  %i.cr = zext i1 %i.cp to i32
  %.5106.i = or disjoint i32 %reass.add.i, %i.cr  ; 2 uses
  %.pn.i = select i1 %i.cp, x86_fp80 %i.cq, x86_fp80 %.395197.i
  %.496.i = fadd x86_fp80 %.395197.i, %.pn.i      ; 2 uses
  %i.cs = add nsw i64 %.1198.i, -1                ; 2 uses
  %i.ct = icmp sgt i32 %reass.add.i, -1
  br i1 %i.ct, label %.lr.ph199.i, label %._crit_edge200.i, !llvm.loop !17

._crit_edge200.i:                                 ; preds = %.lr.ph199.i, %.preheader.i
  %.4105.lcssa.i = phi i32 [ %.3104.lcssa.i, %.preheader.i ], [ %.5106.i, %.lr.ph199.i ] ; 2 uses
  %.395.lcssa.i = phi x86_fp80 [ %.092.lcssa230242.i, %.preheader.i ], [ %.496.i, %.lr.ph199.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %i.cb, %.preheader.i ], [ %i.cs, %.lr.ph199.i ] ; 4 uses
  %i.cu = zext i8 %switch.load to i64
  %narrow204.i = sub nsw i32 32, %switch.load215
  %i.cv = zext nneg i32 %narrow204.i to i64
  %i.cw = add i64 %.1.lcssa.i, %i.cv              ; 2 uses
  %i.cx = icmp slt i64 %i.cw, %i.cu
  %i.cy = trunc i64 %i.cw to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 0)
  %.087.i = select i1 %i.cx, i32 %spec.store.select.i, i32 %switch.ext ; 3 uses
  %i.cz = icmp samesign ult i32 %.087.i, 64
  br i1 %i.cz, label %.lr.ph.preheader.i.i, label %scalbnx.exit.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge200.i
  %i.da = sub nuw nsw i32 95, %.087.i
  %i.db = zext nneg i32 %i.da to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.122.i.i = phi i64 [ %i.de, %.lr.ph.i.i ], [ %i.db, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01321.i.i = phi x86_fp80 [ %i.df, %.lr.ph.i.i ], [ 2.000000e+00, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01420.i.i = phi x86_fp80 [ %spec.select148.i, %.lr.ph.i.i ], [ 1.000000e+00, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.dc = and i64 %.122.i.i, 1
  %.not18.i.i = icmp eq i64 %i.dc, 0
  %i.dd = fmul x86_fp80 %.01321.i.i, %.01420.i.i
  %spec.select148.i = select i1 %.not18.i.i, x86_fp80 %.01420.i.i, x86_fp80 %i.dd ; 2 uses
  %i.de = lshr i64 %.122.i.i, 1                   ; 2 uses
  %i.df = fmul x86_fp80 %.01321.i.i, %.01321.i.i
  %.not.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i, label %scalbnx.exit.i, label %.lr.ph.i.i, !llvm.loop !18

scalbnx.exit.i:                                   ; preds = %.lr.ph.i.i, %._crit_edge200.i
  %.086.i = phi x86_fp80 [ 0.000000e+00, %._crit_edge200.i ], [ %spec.select148.i, %.lr.ph.i.i ] ; 2 uses
  %i.dg = icmp samesign ult i32 %.087.i, 32
  %i.dh = fcmp une x86_fp80 %.395.lcssa.i, 0.000000e+00
  %or.cond3.i = select i1 %i.dg, i1 %i.dh, i1 false
  %i.di = and i32 %.4105.lcssa.i, 1
  %.not129.i = icmp eq i32 %i.di, 0
  %or.cond135.i = and i1 %.not129.i, %or.cond3.i  ; 2 uses
  %i.dj = zext i1 %or.cond135.i to i32
  %.6.i = or disjoint i32 %.4105.lcssa.i, %i.dj
  %.5.i = select i1 %or.cond135.i, x86_fp80 0.000000e+00, x86_fp80 %.395.lcssa.i
  %i.dk = uitofp i32 %.6.i to x86_fp80
  %i.dl = fadd x86_fp80 %.086.i, %i.dk
  %i.dm = fadd x86_fp80 %.5.i, %i.dl
  %i.dn = fsub x86_fp80 %i.dm, %.086.i            ; 3 uses
  %i.do = fcmp une x86_fp80 %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %scalbnx.exit.i
  %i.dp = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #11, !inline_history !14, !srcloc !24
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = tail call ptr @__errno() #12, !inline_history !14
  store i32 34, ptr %i.dr, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %scalbnx.exit.i
  %i.ds = icmp slt i64 %.1.lcssa.i, 0
  %.not19.i136.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not19.i136.i, label %hexfloat.exit, label %.lr.ph.preheader.i137.i

.lr.ph.preheader.i137.i:                          ; preds = %bb.ap
  %spec.select.i138.i = tail call i64 @llvm.abs.i64(i64 %.1.lcssa.i, i1 true)
  br label %.lr.ph.i139.i

.lr.ph.i139.i:                                    ; preds = %bb.at, %.lr.ph.preheader.i137.i
  %.122.i140.i = phi i64 [ %i.dw, %bb.at ], [ %spec.select.i138.i, %.lr.ph.preheader.i137.i ] ; 2 uses
  %.01321.i141.i = phi x86_fp80 [ %i.dx, %bb.at ], [ 2.000000e+00, %.lr.ph.preheader.i137.i ] ; 4 uses
  %.01420.i142.i = phi x86_fp80 [ %.115.i144.i, %bb.at ], [ %i.dn, %.lr.ph.preheader.i137.i ] ; 3 uses
  %i.dt = and i64 %.122.i140.i, 1
  %.not18.i143.i = icmp eq i64 %i.dt, 0
  br i1 %.not18.i143.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i139.i
  br i1 %i.ds, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.du = fdiv x86_fp80 %.01420.i142.i, %.01321.i141.i
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.dv = fmul x86_fp80 %.01321.i141.i, %.01420.i142.i
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %.lr.ph.i139.i
  %.115.i144.i = phi x86_fp80 [ %i.du, %bb.ar ], [ %i.dv, %bb.as ], [ %.01420.i142.i, %.lr.ph.i139.i ] ; 2 uses
  %i.dw = lshr i64 %.122.i140.i, 1                ; 2 uses
  %i.dx = fmul x86_fp80 %.01321.i141.i, %.01321.i141.i
  %.not.i145.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i145.i, label %hexfloat.exit, label %.lr.ph.i139.i, !llvm.loop !18

hexfloat.exit:                                    ; preds = %bb.at, %bb.z, %bb.aa, %bb.ag, %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.ap
  %.0.i = phi x86_fp80 [ 0.000000e+00, %bb.ag ], [ +inf, %bb.ai ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.aa ], [ +inf, %bb.aj ], [ 0.000000e+00, %bb.am ], [ %i.dn, %bb.ap ], [ %.115.i144.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.cb

bb.au:                                            ; preds = %.critedge3.thread
  %i.dy = sext i8 %i.z to i32
  %isdigittmp = add nsw i32 %i.dy, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dz = icmp eq i8 %i.z, 46
  br i1 %i.dz, label %bb.aw, label %bb.bz

bb.aw:                                            ; preds = %bb.av
  %i.ea = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = sext i8 %i.eb to i32
  %isdigittmp65 = add nsw i32 %i.ec, -48
  %isdigit66 = icmp ult i32 %isdigittmp65, 10
  br i1 %isdigit66, label %.thread, label %bb.bz

.thread:                                          ; preds = %bb.n, %bb.aw, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.thread
  %.0.in.in.i.i = phi ptr [ %i.y, %.thread ], [ %.08.i.i, %bb.ax ] ; 3 uses
  %.0.in.i.i = load i8, ptr %.0.in.in.i.i, align 1 ; 3 uses
  %i.ed = icmp eq i8 %.0.in.i.i, 48
  %.08.i.i = getelementptr inbounds nuw i8, ptr %.0.in.in.i.i, i64 1 ; 3 uses
  br i1 %i.ed, label %bb.ax, label %ifallzero.exit.i.preheader, !llvm.loop !19

ifallzero.exit.i.preheader:                       ; preds = %bb.ax
  %.041.i113 = sext i8 %.0.in.i.i to i32          ; 2 uses
  %isdigittmp.i114 = add nsw i32 %.041.i113, -48
  %isdigit.i115 = icmp ult i32 %isdigittmp.i114, 10
  br i1 %isdigit.i115, label %thread-pre-split.i.lr.ph, label %bb.ay, !llvm.loop !20

thread-pre-split.i.lr.ph:                         ; preds = %ifallzero.exit.i.preheader
  br label %thread-pre-split.i, !llvm.loop !20

thread-pre-split.i:                               ; preds = %thread-pre-split.i.lr.ph, %thread-pre-split.i
  %i.ee = phi i64 [ 1, %thread-pre-split.i.lr.ph ], [ %i.ef, %thread-pre-split.i ] ; 2 uses
  %storemerge63.i116 = phi ptr [ %.08.i.i, %thread-pre-split.i.lr.ph ], [ %storemerge63.i, %thread-pre-split.i ] ; 3 uses
  %.041.in.pr.i = load i8, ptr %storemerge63.i116, align 1 ; 2 uses
  %storemerge63.i = getelementptr inbounds nuw i8, ptr %storemerge63.i116, i64 1 ; 2 uses
end_hunk_0
