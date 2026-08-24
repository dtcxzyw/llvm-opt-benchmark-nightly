Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pair?download=true
inline.NumInlined: 21
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [38 x i8] c"can only pair binary-valued variables\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s+%s\00", align 1
@summary = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ESPRESSO  \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pair is\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" (%d %d)\00", align 1
@best_cost = internal unnamed_addr global i32 0, align 4
@best_pair = internal unnamed_addr global ptr null, align 8
@cost_array = internal unnamed_addr global ptr null, align 8
@debug = external local_unnamed_addr global i32, align 4
@trace = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"cost is %d \00", align 1
@global_PLA = internal unnamed_addr global ptr null, align 8
@pair_minim_strategy = internal unnamed_addr global i32 0, align 4
@best_phase = internal unnamed_addr global ptr null, align 8
@best_R = internal unnamed_addr global ptr null, align 8
@best_D = internal unnamed_addr global ptr null, align 8
@best_F = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"OPO       \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"# phase is %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"EXACT     \00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @set_pair(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @set_pair1(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_pair1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @makeup_labels(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #15 ; 11 uses
  %i.i = icmp sgt i32 %i.e, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader212

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = zext nneg i32 %i.e to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.h, i8 0, i64 %i.k, i1 false), !tbaa !4
  br label %.preheader212

.preheader212:                                    ; preds = %.lr.ph.preheader, %bb.c
  %i.l = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph215, label %._crit_edge

.lr.ph215:                                        ; preds = %.preheader212
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph215, %bb.i
  %i.p = phi i32 [ %i.l, %.lr.ph215 ], [ %i.af, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %.not170 = icmp sgt i32 %i.s, %i.u
  br i1 %.not170, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4    ; 3 uses
  %i.y = icmp slt i32 %i.x, 1
  %.not171 = icmp sgt i32 %i.x, %i.u
  %or.cond = or i1 %i.y, %.not171
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.s to i64
  %i.aa = getelementptr [4 x i8], ptr %i.h, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  store i32 1, ptr %i.ab, align 4, !tbaa !4
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = getelementptr [4 x i8], ptr %i.h, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  store i32 1, ptr %i.ae, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str) #14
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.af = phi i32 [ %i.p, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.preheader212
  %i.ai = load ptr, ptr %0, align 8, !tbaa !25
  %i.aj = tail call ptr @pairvar(ptr noundef %i.ai, ptr noundef nonnull %i.c) ; 2 uses
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %delvar.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.o
  %i.am = phi i32 [ %i.bc, %bb.o ], [ %i.ak, %._crit_edge ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %._crit_edge ] ; 5 uses
  %.038.i = phi i32 [ %.1.i, %bb.o ], [ 0, %._crit_edge ] ; 5 uses
  %.02236.i = phi i32 [ %.123.i, %bb.o ], [ 0, %._crit_edge ] ; 5 uses
  %.02435.i = phi i32 [ %.125.i, %bb.o ], [ undef, %._crit_edge ] ; 4 uses
  %.02634.i = phi i32 [ %.127.i, %bb.o ], [ 0, %._crit_edge ]
  %.02833.i = phi ptr [ %.129.i, %bb.o ], [ %i.aj, %._crit_edge ] ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %.not30.i = icmp eq i32 %i.ao, 0                ; 2 uses
  %.not31.i = icmp eq i32 %.02634.i, 0            ; 2 uses
  br i1 %.not30.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  br i1 %.not31.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = add nsw i32 %i.ar, %.02236.i
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph.i
  br i1 %.not31.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = sub nsw i32 %.02435.i, %.038.i
  %i.ba = tail call ptr (ptr, i32, i32, ...) @sf_delcol(ptr noundef %.02833.i, i32 noundef %i.az, i32 noundef %.02236.i) #14
  %i.bb = add nsw i32 %.02236.i, %.038.i
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bc = phi i32 [ %i.am, %bb.k ], [ %i.am, %bb.l ], [ %.pre.i, %bb.n ], [ %i.am, %bb.m ] ; 2 uses
  %.129.i = phi ptr [ %.02833.i, %bb.k ], [ %.02833.i, %bb.l ], [ %i.ba, %bb.n ], [ %.02833.i, %bb.m ] ; 3 uses
  %.127.i = phi i32 [ 1, %bb.k ], [ 1, %bb.l ], [ 0, %bb.n ], [ 0, %bb.m ]
  %.125.i = phi i32 [ %.02435.i, %bb.k ], [ %i.av, %bb.l ], [ %.02435.i, %bb.n ], [ %.02435.i, %bb.m ] ; 2 uses
  %.123.i = phi i32 [ %i.as, %bb.k ], [ %i.ay, %bb.l ], [ %.02236.i, %bb.n ], [ %.02236.i, %bb.m ] ; 2 uses
  %.1.i = phi i32 [ %.038.i, %bb.k ], [ %.038.i, %bb.l ], [ %i.bb, %bb.n ], [ %.038.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  br i1 %.not30.i, label %delvar.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.bf = sub nsw i32 %.125.i, %.1.i
  %i.bg = tail call ptr (ptr, i32, i32, ...) @sf_delcol(ptr noundef %.129.i, i32 noundef %i.bf, i32 noundef %.123.i) #14
  br label %delvar.exit

delvar.exit:                                      ; preds = %._crit_edge, %._crit_edge.i, %bb.p
  %.2.i = phi ptr [ %i.bg, %bb.p ], [ %.129.i, %._crit_edge.i ], [ %i.aj, %._crit_edge ]
  store ptr %.2.i, ptr %0, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !28
  %i.bj = tail call ptr @pairvar(ptr noundef %i.bi, ptr noundef nonnull %i.c) ; 2 uses
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i173, label %delvar.exit190

.lr.ph.i173:                                      ; preds = %delvar.exit, %bb.v
  %i.bm = phi i32 [ %i.cc, %bb.v ], [ %i.bk, %delvar.exit ] ; 3 uses
  %indvars.iv.i174 = phi i64 [ %indvars.iv.next.i187, %bb.v ], [ 0, %delvar.exit ] ; 5 uses
  %.038.i175 = phi i32 [ %.1.i186, %bb.v ], [ 0, %delvar.exit ] ; 5 uses
  %.02236.i176 = phi i32 [ %.123.i185, %bb.v ], [ 0, %delvar.exit ] ; 5 uses
  %.02435.i177 = phi i32 [ %.125.i184, %bb.v ], [ undef, %delvar.exit ] ; 4 uses
  %.02634.i178 = phi i32 [ %.127.i183, %bb.v ], [ 0, %delvar.exit ]
  %.02833.i179 = phi ptr [ %.129.i182, %bb.v ], [ %i.bj, %delvar.exit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i174
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %.not30.i180 = icmp eq i32 %i.bo, 0             ; 2 uses
  %.not31.i181 = icmp eq i32 %.02634.i178, 0      ; 2 uses
  br i1 %.not30.i180, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i173
  br i1 %.not31.i181, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i174
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = add nsw i32 %i.br, %.02236.i176
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i174
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i174
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  br label %bb.v

bb.t:                                             ; preds = %.lr.ph.i173
  br i1 %.not31.i181, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = sub nsw i32 %.02435.i177, %.038.i175
  %i.ca = tail call ptr (ptr, i32, i32, ...) @sf_delcol(ptr noundef %.02833.i179, i32 noundef %i.bz, i32 noundef %.02236.i176) #14
  %i.cb = add nsw i32 %.02236.i176, %.038.i175
  %.pre.i189 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.cc = phi i32 [ %i.bm, %bb.r ], [ %i.bm, %bb.s ], [ %.pre.i189, %bb.u ], [ %i.bm, %bb.t ] ; 2 uses
  %.129.i182 = phi ptr [ %.02833.i179, %bb.r ], [ %.02833.i179, %bb.s ], [ %i.ca, %bb.u ], [ %.02833.i179, %bb.t ] ; 3 uses
  %.127.i183 = phi i32 [ 1, %bb.r ], [ 1, %bb.s ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.125.i184 = phi i32 [ %.02435.i177, %bb.r ], [ %i.bv, %bb.s ], [ %.02435.i177, %bb.u ], [ %.02435.i177, %bb.t ] ; 2 uses
  %.123.i185 = phi i32 [ %i.bs, %bb.r ], [ %i.by, %bb.s ], [ %.02236.i176, %bb.u ], [ %.02236.i176, %bb.t ] ; 2 uses
  %.1.i186 = phi i32 [ %.038.i175, %bb.r ], [ %.038.i175, %bb.s ], [ %i.cb, %bb.u ], [ %.038.i175, %bb.t ] ; 2 uses
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next.i187, %i.cd
  br i1 %i.ce, label %.lr.ph.i173, label %._crit_edge.i188

._crit_edge.i188:                                 ; preds = %bb.v
  br i1 %.not30.i180, label %delvar.exit190, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i188
  %i.cf = sub nsw i32 %.125.i184, %.1.i186
end_hunk_0
begin_hunk_1_@delvar:bb.a
  %.123 = phi i32 [ %i.i, %bb.c ], [ %i.o, %bb.d ], [ %.02236, %bb.f ], [ %.02236, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.038, %bb.c ], [ %.038, %bb.d ], [ %i.r, %bb.f ], [ %.038, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  br i1 %.not30, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.v = sub nsw i32 %.125, %.1
  %i.w = tail call ptr (ptr, i32, i32, ...) @sf_delcol(ptr noundef %.129, i32 noundef %i.v, i32 noundef %.123) #14
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.h, %._crit_edge
  %.2 = phi ptr [ %i.w, %bb.h ], [ %.129, %._crit_edge ], [ %0, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @find_optimal_pairing(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_pairing_cost(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = load i32, ptr @summary, align 4, !tbaa !4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.03441 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.b ]
  %i.f = add nuw nsw i32 %.03441, 1               ; 3 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.f) ; 0 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph48, label %.loopexit.thread

.lr.ph48:                                         ; preds = %._crit_edge, %._crit_edge45
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge45 ], [ 0, %._crit_edge ] ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.next54 to i32
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.l) ; 0 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.lr.ph48
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph44, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.r) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.c, label %._crit_edge45

._crit_edge45:                                    ; preds = %bb.c, %.lr.ph48
  %putchar40 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next54, %i.x
  br i1 %i.y, label %.lr.ph48, label %.loopexit

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge45, %thread-pre-split
  %i.z = phi i32 [ %.pr, %thread-pre-split ], [ %i.w, %._crit_edge45 ]
  %i.aa = icmp slt i32 %i.z, 15
  br i1 %i.aa, label %.loopexit.thread, label %bb.d

.loopexit.thread:                                 ; preds = %._crit_edge, %.loopexit
  %i.ab = tail call ptr @pair_best_cost(ptr noundef %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = tail call i32 @greedy_best_cost(ptr noundef %i.a, ptr noundef nonnull %i.ad) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.thread
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 4 uses
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i, label %print_pair.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ap, i32 noundef %i.as) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %bb.f, label %print_pair.exit

print_pair.exit:                                  ; preds = %bb.f, %bb.e
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %print_pair.exit, %bb.h
  %i.az = phi i32 [ %i.bc, %bb.h ], [ %i.ax, %print_pair.exit ]
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.h ], [ 0, %print_pair.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv56 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58 ; 2 uses
  %.not39 = icmp eq ptr %i.bb, null
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph50
  tail call void @free(ptr noundef nonnull %i.bb) #14
  store ptr null, ptr %i.ba, align 8, !tbaa !58
  %.pre59 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph50, %bb.g
  %i.bc = phi i32 [ %i.az, %.lr.ph50 ], [ %.pre59, %bb.g ] ; 2 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next57, %i.bd
  br i1 %i.be, label %.lr.ph50, label %._crit_edge51.thread

._crit_edge51:                                    ; preds = %print_pair.exit
  %.not37 = icmp eq ptr %i.a, null
  br i1 %.not37, label %bb.i, label %._crit_edge51.thread

._crit_edge51.thread:                             ; preds = %bb.h, %._crit_edge51
  tail call void @free(ptr noundef nonnull %i.a) #14
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge51.thread, %._crit_edge51
  tail call void @set_pair1(ptr noundef %0, i32 noundef 1)
  %i.bf = tail call i64 (...) @util_cpu_time() #14
  %i.bg = load ptr, ptr %0, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !28
  %i.bl = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bk) #14 ; 2 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !25
  %i.bm = load i32, ptr @summary, align 4, !tbaa !4
  %.not38 = icmp eq i32 %i.bm, 0
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call i64 (...) @util_cpu_time() #14
  %i.bo = sub nsw i64 %i.bn, %i.bf
  tail call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.bl, ptr noundef nonnull @.str.6, i64 noundef %i.bo) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i64 @util_cpu_time(...) local_unnamed_addr #2

declare ptr @espresso(...) local_unnamed_addr #2

declare void @print_trace(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @find_pairing_cost(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 5 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = shl nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #15 ; 4 uses
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.preheader120, label %._crit_edge125

.preheader120:                                    ; preds = %bb.a
  %2 = shl nuw nsw i64 %i.b, 2
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader120, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader120 ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %2) #15
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %i.f, ptr %i.g, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %._crit_edge
  %i.h = phi i32 [ %i.p, %._crit_edge ], [ %i.a, %.lr.ph ] ; 3 uses
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %._crit_edge ], [ 0, %.lr.ph ] ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph123, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre178 = sext i32 %i.h to i64
  br label %._crit_edge

.lr.ph123:                                        ; preds = %.preheader
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv163
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph123, %bb.b
  %indvars.iv160 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next161, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv160
  store i32 0, ptr %i.l, align 4, !tbaa !4
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp slt i64 %indvars.iv.next161, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre178, %.preheader.._crit_edge_crit_edge ], [ %i.n, %bb.b ]
  %i.p = phi i32 [ %i.h, %.preheader.._crit_edge_crit_edge ], [ %i.m, %bb.b ] ; 2 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.q = icmp slt i64 %indvars.iv.next164, %.pre-phi
  br i1 %i.q, label %.preheader, label %._crit_edge125, !llvm.loop !59

._crit_edge125:                                   ; preds = %._crit_edge, %bb.a
  %3 = phi i32 [ %i.a, %bb.a ], [ %i.p, %._crit_edge ] ; 2 uses
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15 ; 5 uses
  %i.s = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #15
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.r, ptr %i.w, align 8, !tbaa !8
  store i32 1, ptr %i.r, align 8, !tbaa !21
  %i.x = icmp sgt i32 %3, 1
  br i1 %i.x, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %._crit_edge125
  %i.y = icmp sgt i32 %1, 0                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br label %bb.c

.loopexit:                                        ; preds = %bb.p, %bb.c
  %i.ab = phi i32 [ %i.ag, %bb.c ], [ %i.ej, %bb.p ] ; 2 uses
  %.195.lcssa = phi ptr [ %.094150, %bb.c ], [ %.296, %bb.p ]
  %.192.lcssa = phi i32 [ %.091151, %bb.c ], [ %.293115, %bb.p ]
  %.189.lcssa = phi ptr [ %.088152, %bb.c ], [ %.290, %bb.p ]
  %.186.lcssa = phi ptr [ %.085153, %bb.c ], [ %.287, %bb.p ]
  %.1.lcssa = phi ptr [ %.0154, %bb.c ], [ %.2, %bb.p ]
  %i.ac = phi <2 x i32> [ %i.ah, %bb.c ], [ %i.cg, %bb.p ]
  %i.ad = add nsw i32 %i.ab, -1
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next175, %i.ae
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br i1 %i.af, label %bb.c, label %._crit_edge157.loopexit

bb.c:                                             ; preds = %.lr.ph156, %.loopexit
  %i.ag = phi i32 [ %3, %.lr.ph156 ], [ %i.ab, %.loopexit ] ; 2 uses
  %indvars.iv174 = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next175, %.loopexit ] ; 3 uses
  %indvars.iv169 = phi i64 [ 1, %.lr.ph156 ], [ %indvars.iv.next170, %.loopexit ] ; 2 uses
  %.0154 = phi ptr [ undef, %.lr.ph156 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %.085153 = phi ptr [ undef, %.lr.ph156 ], [ %.186.lcssa, %.loopexit ] ; 2 uses
  %.088152 = phi ptr [ undef, %.lr.ph156 ], [ %.189.lcssa, %.loopexit ] ; 2 uses
  %.091151 = phi i32 [ undef, %.lr.ph156 ], [ %.192.lcssa, %.loopexit ] ; 2 uses
  %.094150 = phi ptr [ undef, %.lr.ph156 ], [ %.195.lcssa, %.loopexit ] ; 2 uses
  %i.ah = phi <2 x i32> [ undef, %.lr.ph156 ], [ %i.ac, %.loopexit ] ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 4 uses
  %i.ai = sext i32 %i.ag to i64
  %i.aj = icmp slt i64 %indvars.iv.next175, %i.ai
  br i1 %i.aj, label %.lr.ph140, label %.loopexit

.lr.ph140:                                        ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv174 ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next175 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph140, %bb.p
  %indvars.iv171 = phi i64 [ %indvars.iv169, %.lr.ph140 ], [ %indvars.iv.next172, %bb.p ] ; 6 uses
  %.1138 = phi ptr [ %.0154, %.lr.ph140 ], [ %.2, %bb.p ]
  %.186137 = phi ptr [ %.085153, %.lr.ph140 ], [ %.287, %bb.p ]
  %.189136 = phi ptr [ %.088152, %.lr.ph140 ], [ %.290, %bb.p ]
  %.192135 = phi i32 [ %.091151, %.lr.ph140 ], [ %.293115, %bb.p ] ; 3 uses
  %.195134 = phi ptr [ %.094150, %.lr.ph140 ], [ %.296, %bb.p ]
  %i.am = phi <2 x i32> [ %i.ah, %.lr.ph140 ], [ %i.cg, %bb.p ]
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %0, align 8, !tbaa !25
  %i.ao = tail call ptr (ptr, ...) @sf_save(ptr noundef %i.an) #14
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.aq = tail call ptr (ptr, ...) @sf_save(ptr noundef %i.ap) #14
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.as = tail call ptr (ptr, ...) @sf_save(ptr noundef %i.ar) #14
  %i.at = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !4
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31 ; 4 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.aw) #15 ; 8 uses
  %i.ay = icmp sgt i32 %i.au, 0
  br i1 %i.ay, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %bb.e
  %i.az = ptrtoaddr ptr %i.ax to i64
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26 ; 7 uses
  %wide.trip.count.a = zext nneg i32 %i.au to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.az
  %diff.check = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph128
  %n.vec = and i64 %wide.trip.count.a, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4
  %wide.load199 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x i32> %wide.load, ptr %i.bf, align 4, !tbaa !4
  store <4 x i32> %wide.load199, ptr %i.bg, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.a
  br i1 %cmp.n, label %._crit_edge129, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph128, %middle.block
  %indvars.iv166.ph = phi i64 [ 0, %.lr.ph128 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.a, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv166.prol = phi i64 [ %indvars.iv.next167.prol, %scalar.ph.prol ], [ %indvars.iv166.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv166.prol
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv166.prol
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !61

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %scalar.ph.preheader ], [ %indvars.iv.next167.prol, %scalar.ph.prol ]
  %i.bl = sub nsw i64 %indvars.iv166.ph, %wide.trip.count.a
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge129, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.3, %scalar.ph ], [ %indvars.iv166.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv166
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv166
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !4
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next167
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next167
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next167.1
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next167.1
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %indvars.iv.next167.2 = add nuw nsw i64 %indvars.iv166, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next167.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next167.2
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %indvars.iv.next167.3 = add nuw nsw i64 %indvars.iv166, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next167.3, %wide.trip.count.a
  br i1 %exitcond.not.3, label %._crit_edge129, label %scalar.ph, !llvm.loop !62

._crit_edge129:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e
  %i.bz = load ptr, ptr %i.w, align 8, !tbaa !8   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !23
  store i32 %i.al, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.ce = trunc i64 %indvars.iv171 to i32
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !4
  tail call void @set_pair1(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge129, %bb.d
  %.296 = phi ptr [ %i.ax, %._crit_edge129 ], [ %.195134, %bb.d ] ; 3 uses
  %.290 = phi ptr [ %i.ao, %._crit_edge129 ], [ %.189136, %bb.d ] ; 4 uses
  %.287 = phi ptr [ %i.aq, %._crit_edge129 ], [ %.186137, %bb.d ] ; 3 uses
  %.2 = phi ptr [ %i.as, %._crit_edge129 ], [ %.1138, %bb.d ] ; 3 uses
  %i.cg = phi <2 x i32> [ %i.at, %._crit_edge129 ], [ %i.am, %bb.d ] ; 3 uses
  switch i32 %1, label %bb.l [
    i32 3, label %bb.g
    i32 2, label %bb.h
    i32 1, label %bb.i
    i32 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.ch = load ptr, ptr %0, align 8, !tbaa !25
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ck = tail call ptr (ptr, ptr, ptr, i32, ...) @minimize_exact(ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cj, i32 noundef 1) #14
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.cl = load ptr, ptr %0, align 8, !tbaa !25
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.cn = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.co = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %i.cn) #14
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.cp = load ptr, ptr %0, align 8, !tbaa !25
  %i.cq = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.cr = tail call ptr (ptr, ptr, ...) @reduce(ptr noundef %i.cp, ptr noundef %i.cq) #14 ; 2 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !25
  %i.cs = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ct = tail call ptr (ptr, ptr, i32, ...) @expand(ptr noundef %i.cr, ptr noundef %i.cs, i32 noundef 0) #14 ; 2 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !25
  %i.cu = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.cv = tail call ptr (ptr, ptr, ...) @irredundant(ptr noundef %i.ct, ptr noundef %i.cu) #14
  br label %.thread

bb.j:                                             ; preds = %bb.f
  %i.cw = load i32, ptr @cube, align 8, !tbaa !30 ; 3 uses
  %i.cx = icmp slt i32 %i.cw, 33
  %i.cy = add nsw i32 %i.cw, -1
  %i.cz = lshr i32 %i.cy, 3
  %i.da = and i32 %i.cz, 536870908
  %i.db = add nuw nsw i32 %i.da, 8
  %narrow = select i1 %i.cx, i32 8, i32 %i.db
  %i.dc = zext nneg i32 %narrow to i64
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.dc) #15
  %i.de = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dd, i32 noundef %i.cw) #14 ; 4 uses
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !63 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv174
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !58
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv171
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !58
  %i.dk = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.de, ptr noundef %i.dh, ptr noundef %i.dj) #14 ; 0 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !25
  %i.dm = tail call ptr (ptr, ...) @sf_save(ptr noundef %i.dl) #14
  %i.dn = tail call ptr (ptr, ptr, ...) @dist_merge(ptr noundef %i.dm, ptr noundef %i.de) #14 ; 2 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !54
  %i.dt = sub nsw i32 %i.dq, %i.ds                ; 2 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.dn) #14
  %.not = icmp eq ptr %i.de, null
  br i1 %.not, label %.thread118, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.de) #14
  br label %.thread118

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g
  %.sink = phi ptr [ %i.cv, %bb.i ], [ %i.co, %bb.h ], [ %i.ck, %bb.g ] ; 2 uses
  store ptr %.sink, ptr %0, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %.290, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !54
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !54
  %i.dy = sub nsw i32 %i.dv, %i.dx                ; 2 uses
  %i.dz = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv171
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !4
  br label %bb.m

.thread118:                                       ; preds = %bb.j, %bb.k
  %i.eb = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv171
  store i32 %i.dt, ptr %i.ec, align 4, !tbaa !4
  br label %bb.p

bb.l:                                             ; preds = %bb.f
  %i.ed = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv171
  store i32 %.192135, ptr %i.ee, align 4, !tbaa !4
  br i1 %i.y, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.thread, %bb.l
  %.293116 = phi i32 [ %i.dy, %.thread ], [ %.192135, %bb.l ]
  tail call void (...) @setdown_cube() #14
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26 ; 2 uses
  %.not113 = icmp eq ptr %i.ef, null
  br i1 %.not113, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.ef) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store <2 x i32> %i.cg, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !4
  store ptr %.296, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26
  tail call void (...) @cube_setup() #14
  %i.eg = load ptr, ptr %0, align 8, !tbaa !25
  tail call void (ptr, ...) @sf_free(ptr noundef %i.eg) #14
  %i.eh = load ptr, ptr %i.z, align 8, !tbaa !29
  tail call void (ptr, ...) @sf_free(ptr noundef %i.eh) #14
  %i.ei = load ptr, ptr %i.aa, align 8, !tbaa !28
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ei) #14
  store ptr %.290, ptr %0, align 8, !tbaa !25
  store ptr %.287, ptr %i.z, align 8, !tbaa !29
  store ptr %.2, ptr %i.aa, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %.thread118, %bb.l, %bb.o
  %.293115 = phi i32 [ %.192135, %bb.l ], [ %.293116, %bb.o ], [ %i.dt, %.thread118 ] ; 2 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %i.ek = trunc nuw i64 %indvars.iv.next172 to i32
  %i.el = icmp sgt i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.d, label %.loopexit

._crit_edge157.loopexit:                          ; preds = %.loopexit
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !8   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre177 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.loopexit, %._crit_edge125
  %i.em = phi ptr [ %.pre177, %._crit_edge157.loopexit ], [ %i.s, %._crit_edge125 ] ; 2 uses
  %i.en = phi ptr [ %.pre, %._crit_edge157.loopexit ], [ %i.r, %._crit_edge125 ] ; 3 uses
  %.not.i = icmp eq ptr %i.em, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge157
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  tail call void @free(ptr noundef nonnull %i.em) #14
  store ptr null, ptr %i.eo, align 8, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge157
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !24 ; 2 uses
  %.not10.i = icmp eq ptr %i.eq, null
  br i1 %.not10.i, label %pair_free.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.eq) #14
  br label %pair_free.exit

pair_free.exit:                                   ; preds = %bb.r, %bb.s
  tail call void @free(ptr noundef nonnull %i.en) #14
  store ptr null, ptr %i.w, align 8, !tbaa !8
  ret ptr %i.d
}

declare ptr @sf_save(...) local_unnamed_addr #2

declare ptr @minimize_exact(...) local_unnamed_addr #2

declare ptr @reduce(...) local_unnamed_addr #2

declare ptr @expand(...) local_unnamed_addr #2

declare ptr @irredundant(...) local_unnamed_addr #2

declare ptr @set_clear(...) local_unnamed_addr #2

declare ptr @set_or(...) local_unnamed_addr #2

declare ptr @dist_merge(...) local_unnamed_addr #2

declare void @sf_free(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @print_pair(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !21
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.h, i32 noundef %i.k) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !21
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local i32 @greedy_best_cost(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !21
  %i.c = sext i32 %i.a to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !23
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !24
  %i.i = icmp slt i32 %i.a, 33
  %i.j = add nsw i32 %i.a, -1
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 536870908
  %i.m = add nuw nsw i32 %i.l, 8
  %narrow = select i1 %i.i, i32 8, i32 %i.m
  %i.n = zext nneg i32 %narrow to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #15
  %i.p = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.o, i32 noundef %i.a) #14 ; 8 uses
  %i.q = tail call i32 (ptr, ...) @set_ord(ptr noundef %i.p) #14
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %.preheader57, label %._crit_edge77

.preheader57:                                     ; preds = %bb.a, %._crit_edge
  %i.s = phi i32 [ %i.az, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.076 = phi i32 [ %i.bs, %._crit_edge ], [ 0, %bb.a ]
  %.04175 = phi i32 [ %.142.lcssa, %._crit_edge ], [ undef, %bb.a ] ; 2 uses
  %.04574 = phi i32 [ %.146.lcssa, %._crit_edge ], [ undef, %bb.a ] ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph70.preheader, label %._crit_edge

.lr.ph70.preheader:                               ; preds = %.preheader57
  %i.v = zext nneg i32 %i.t to i64
  %wide.trip.count86 = zext nneg i32 %i.t to i64  ; 2 uses
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.loopexit
  %indvars.iv82 = phi i64 [ 0, %.lr.ph70.preheader ], [ %.pre, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph70.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.04069 = phi i32 [ -1, %.lr.ph70.preheader ], [ %.3, %.loopexit ] ; 2 uses
  %.14268 = phi i32 [ %.04175, %.lr.ph70.preheader ], [ %.4, %.loopexit ] ; 2 uses
  %.14667 = phi i32 [ %.04574, %.lr.ph70.preheader ], [ %.449, %.loopexit ] ; 2 uses
  %i.w = trunc nuw nsw i64 %indvars.iv82 to i32   ; 2 uses
  %i.x = lshr i64 %indvars.iv82, 5
  %i.y = and i64 %i.x, 134217727
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = and i32 %i.w, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = and i32 %i.ab, %i.ad
  %.not55 = icmp ne i32 %i.ae, 0
  %.pre = add nuw nsw i64 %indvars.iv82, 1        ; 3 uses
  %i.af = icmp samesign ult i64 %.pre, %i.v
  %or.cond = select i1 %.not55, i1 %i.af, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph70
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv82
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv79 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next80, %bb.e ] ; 4 uses
  %.161 = phi i32 [ %.04069, %.lr.ph ], [ %.2, %bb.e ] ; 3 uses
  %.24360 = phi i32 [ %.14268, %.lr.ph ], [ %.344, %bb.e ] ; 2 uses
  %.24759 = phi i32 [ %.14667, %.lr.ph ], [ %.348, %bb.e ] ; 2 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv79 to i32  ; 2 uses
  %i.ai = lshr i64 %indvars.iv79, 5
  %i.aj = and i64 %i.ai, 134217727
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = and i32 %i.ah, 31
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = and i32 %i.am, %i.ao
  %.not56 = icmp eq i32 %i.ap, 0
  br i1 %.not56, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv79
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = icmp sgt i32 %i.as, %.161
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.348 = phi i32 [ %i.w, %bb.d ], [ %.24759, %bb.c ], [ %.24759, %bb.b ] ; 2 uses
  %.344 = phi i32 [ %i.ah, %bb.d ], [ %.24360, %bb.c ], [ %.24360, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %i.as, %bb.d ], [ %.161, %bb.c ], [ %.161, %bb.b ] ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count86
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.e, %.lr.ph70
  %.449 = phi i32 [ %.14667, %.lr.ph70 ], [ %.348, %bb.e ] ; 2 uses
  %.4 = phi i32 [ %.14268, %.lr.ph70 ], [ %.344, %bb.e ] ; 2 uses
  %.3 = phi i32 [ %.04069, %.lr.ph70 ], [ %.2, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond87.not = icmp eq i64 %.pre, %wide.trip.count86
  br i1 %exitcond87.not, label %._crit_edge, label %.lr.ph70

._crit_edge:                                      ; preds = %.loopexit, %.preheader57
  %.146.lcssa = phi i32 [ %.04574, %.preheader57 ], [ %.449, %.loopexit ] ; 4 uses
  %.142.lcssa = phi i32 [ %.04175, %.preheader57 ], [ %.4, %.loopexit ] ; 4 uses
  %.040.lcssa = phi i32 [ -1, %.preheader57 ], [ %.3, %.loopexit ]
  %i.au = add nsw i32 %.146.lcssa, 1
  %i.av = zext nneg i32 %i.s to i64               ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.av
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !4
  %i.ax = add nsw i32 %.142.lcssa, 1
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !4
  %i.az = add nuw nsw i32 %i.s, 1                 ; 2 uses
  store i32 %i.az, ptr %i.b, align 8, !tbaa !21
  %i.ba = and i32 %.146.lcssa, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = xor i32 %i.bb, -1
  %i.bd = ashr i32 %.146.lcssa, 5
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %i.p, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 4      ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = and i32 %i.bh, %i.bc
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !4
  %i.bj = and i32 %.142.lcssa, 31
  %i.bk = shl nuw i32 1, %i.bj
  %i.bl = xor i32 %i.bk, -1
  %i.bm = ashr i32 %.142.lcssa, 5
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr %i.p, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 4      ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = and i32 %i.bq, %i.bl
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  %i.bs = add nsw i32 %.040.lcssa, %.076          ; 2 uses
  %i.bt = tail call i32 (ptr, ...) @set_ord(ptr noundef %i.p) #14
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %.preheader57, label %._crit_edge77.thread

._crit_edge77:                                    ; preds = %bb.a
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.f, label %._crit_edge77.thread

._crit_edge77.thread:                             ; preds = %._crit_edge, %._crit_edge77
  %.0.lcssa93 = phi i32 [ 0, %._crit_edge77 ], [ %i.bs, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %i.p) #14
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge77.thread, %._crit_edge77
  %.0.lcssa94 = phi i32 [ %.0.lcssa93, %._crit_edge77.thread ], [ 0, %._crit_edge77 ]
  store ptr %i.b, ptr %1, align 8, !tbaa !64
  ret i32 %.0.lcssa94
}

declare ptr @set_fill(...) local_unnamed_addr #2

declare i32 @set_ord(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @pair_best_cost(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store i32 -1, ptr @best_cost, align 4, !tbaa !4
  store ptr null, ptr @best_pair, align 8, !tbaa !64
  store ptr %0, ptr @cost_array, align 8, !tbaa !65
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !21
  %i.c = sext i32 %i.a to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !23
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !24
  %i.i = icmp slt i32 %i.a, 33
  %i.j = add nsw i32 %i.a, -1
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 536870908
  %i.m = add nuw nsw i32 %i.l, 8
  %narrow = select i1 %i.i, i32 8, i32 %i.m
  %i.n = zext nneg i32 %narrow to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #15
  %i.p = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.o, i32 noundef %i.a) #14 ; 3 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.r = tail call i32 @generate_all_pairs(ptr noundef nonnull %i.b, i32 noundef %i.q, ptr noundef %i.p, ptr noundef nonnull @find_best_cost) ; 0 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.s) #14
  store ptr null, ptr %i.f, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.not10.i = icmp eq ptr %i.t, null
  br i1 %.not10.i, label %pair_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.t) #14
  br label %pair_free.exit

pair_free.exit:                                   ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #14
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pair_free.exit
  tail call void @free(ptr noundef nonnull %i.p) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %pair_free.exit
  %i.u = load ptr, ptr @best_pair, align 8, !tbaa !64
  ret ptr %i.u
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @find_best_cost(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @cost_array, align 8, !tbaa !65 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.a, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %.020 = phi i32 [ 0, %.lr.ph.new ], [ %i.bh, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [8 x i8], ptr %i.c, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = add nsw i32 %i.t, %.020
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.c, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [4 x i8], ptr %i.aa, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = add nsw i32 %i.ag, %i.u
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %i.c, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.an, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = add nsw i32 %i.at, %i.ah
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %i.c, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = add nsw i32 %i.bg, %i.au                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.020.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %.020.epil = phi i32 [ %.020.epil.init, %.epil.preheader ], [ %i.bu, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.c, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = add nsw i32 %i.bt, %.020.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !66

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ], [ %i.bu, %bb.c ] ; 3 uses
  %i.bv = load i32, ptr @best_cost, align 4, !tbaa !4
  %i.bw = icmp sgt i32 %.0.lcssa, %i.bv
  br i1 %i.bw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  store i32 %.0.lcssa, ptr @best_cost, align 4, !tbaa !4
  %i.bx = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15 ; 4 uses
  %i.by = sext i32 %i.a to i64
  %i.bz = shl nsw i64 %i.by, 2                    ; 2 uses
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bz) #15 ; 6 uses
  %i.cb = ptrtoaddr ptr %i.ca to i64              ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !23
  %i.cd = tail call noalias ptr @malloc(i64 noundef %i.bz) #15 ; 6 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64              ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !24
  %i.cg = load i32, ptr %0, align 8, !tbaa !21    ; 4 uses
  store i32 %i.cg, ptr %i.bx, align 8, !tbaa !21
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i, label %pair_save.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !24 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.cg to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.cg, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.cm = ptrtoaddr ptr %i.cl to i64              ; 2 uses
  %i.cn = ptrtoaddr ptr %i.cj to i64              ; 2 uses
  %i.co = sub i64 %i.cb, %i.ce
  %diff.check = icmp ugt i64 %i.co, -32
  %i.cp = sub i64 %i.cn, %i.cb
  %diff.check24 = icmp ugt i64 %i.cp, -32
  %conflict.rdx = or i1 %diff.check, %diff.check24
  %i.cq = sub i64 %i.cb, %i.cm
  %diff.check25 = icmp ugt i64 %i.cq, -32
  %conflict.rdx26 = or i1 %conflict.rdx, %diff.check25
  %i.cr = sub i64 %i.cn, %i.ce
  %diff.check27 = icmp ugt i64 %i.cr, -32
  %conflict.rdx28 = or i1 %conflict.rdx26, %diff.check27
  %i.cs = sub i64 %i.cm, %i.ce
  %diff.check29 = icmp ugt i64 %i.cs, -32
  %conflict.rdx30 = or i1 %conflict.rdx28, %diff.check29
  br i1 %conflict.rdx30, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !tbaa !4
  %wide.load31 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <4 x i32> %wide.load, ptr %i.cv, align 4, !tbaa !4
  store <4 x i32> %wide.load31, ptr %i.cw, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load32 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !4
  %wide.load33 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %wide.load32, ptr %i.cz, align 4, !tbaa !4
  store <4 x i32> %wide.load33, ptr %i.da, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %pair_save.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter36 = and i64 %wide.trip.count.i, 1
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.ph
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i.ph
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.i.ph
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i.ph
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.di = add nsw i64 %wide.trip.count.i, -1
  %i.dj = icmp eq i64 %indvars.iv.i.ph, %i.di
  br i1 %i.dj, label %pair_save.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next.i
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %pair_save.exit, label %scalar.ph, !llvm.loop !68

pair_save.exit:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  store ptr %i.bx, ptr @best_pair, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %pair_save.exit, %._crit_edge
  %i.dw = load i32, ptr @debug, align 4, !tbaa !4
  %i.dx = and i32 %i.dw, 2048
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = load i32, ptr @trace, align 4
  %i.ea = icmp ne i32 %i.dz, 0
  %or.cond = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.eb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.0.lcssa) ; 0 uses
  %i.ec = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.ed = load i32, ptr %0, align 8, !tbaa !21
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph.i16, label %print_pair.exit

.lr.ph.i16:                                       ; preds = %bb.f
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i16
  %indvars.iv.i17 = phi i64 [ 0, %.lr.ph.i16 ], [ %indvars.iv.next.i18, %bb.g ] ; 3 uses
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i17
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !4
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !24
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i17
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ej, i32 noundef %i.em) ; 0 uses
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %i.eo = load i32, ptr %0, align 8, !tbaa !21
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next.i18, %i.ep
  br i1 %i.eq, label %bb.g, label %print_pair.exit

print_pair.exit:                                  ; preds = %bb.g, %bb.f
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %print_pair.exit, %bb.e
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pair_all(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @global_PLA, align 8, !tbaa !69
  store i32 %1, ptr @pair_minim_strategy, align 4, !tbaa !4
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @best_cost, align 4, !tbaa !4
  store ptr null, ptr @best_pair, align 8, !tbaa !64
  store ptr null, ptr @best_phase, align 8, !tbaa !58
  store ptr null, ptr @best_R, align 8, !tbaa !70
  store ptr null, ptr @best_D, align 8, !tbaa !70
  store ptr null, ptr @best_F, align 8, !tbaa !70
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 4 uses
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !21
  %i.g = sext i32 %i.e to i64
  %i.h = shl nsw i64 %i.g, 2                      ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #15
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !23
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.h) #15
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !24
  %i.m = icmp slt i32 %i.e, 33
  %i.n = add nsw i32 %i.e, -1
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.o, 536870908
  %i.q = add nuw nsw i32 %i.p, 8
  %narrow = select i1 %i.m, i32 8, i32 %i.q
  %i.r = zext nneg i32 %narrow to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #15
  %i.t = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.s, i32 noundef %i.e) #14
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.v = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.t, i32 noundef %i.u) #14 ; 3 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.x = tail call i32 @generate_all_pairs(ptr noundef nonnull %i.f, i32 noundef %i.w, ptr noundef %i.v, ptr noundef nonnull @minimize_pair) ; 0 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.y) #14
  store ptr null, ptr %i.j, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %.not10.i = icmp eq ptr %i.z, null
  br i1 %.not10.i, label %pair_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.z) #14
  br label %pair_free.exit

pair_free.exit:                                   ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #14
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pair_free.exit
  tail call void @free(ptr noundef nonnull %i.v) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %pair_free.exit
  %i.aa = load ptr, ptr @best_pair, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !8
  %i.ac = load ptr, ptr @best_phase, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !71
  tail call void @set_pair1(ptr noundef nonnull %0, i32 noundef 1)
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !8  ; 4 uses
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !21
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %print_pair.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.an, i32 noundef %i.aq) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = load i32, ptr %i.af, align 8, !tbaa !21
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next.i, %i.at
  br i1 %i.au, label %bb.g, label %print_pair.exit

print_pair.exit:                                  ; preds = %bb.g, %bb.f
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !25
  tail call void (ptr, ...) @sf_free(ptr noundef %i.av) #14
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ax) #14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !28
  tail call void (ptr, ...) @sf_free(ptr noundef %i.az) #14
  %i.ba = load ptr, ptr @best_F, align 8, !tbaa !70
  store ptr %i.ba, ptr %0, align 8, !tbaa !25
  %i.bb = load ptr, ptr @best_D, align 8, !tbaa !70
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !29
  %i.bc = load ptr, ptr @best_R, align 8, !tbaa !70
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !28
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local i32 @minimize_pair(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @global_PLA, align 8, !tbaa !69
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call ptr (ptr, ...) @sf_save(ptr noundef %i.b) #14
  %i.d = load ptr, ptr @global_PLA, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = tail call ptr (ptr, ...) @sf_save(ptr noundef %i.f) #14
  %i.h = load ptr, ptr @global_PLA, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr (ptr, ...) @sf_save(ptr noundef %i.j) #14
  %i.l = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !4
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31 ; 4 uses
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #15 ; 8 uses
  %i.q = icmp sgt i32 %i.m, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.m, 8
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.r
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load47 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !4
  store <4 x i32> %wide.load47, ptr %i.y, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.prol
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !73

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.ar = load ptr, ptr @global_PLA, align 8, !tbaa !69 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store ptr %0, ptr %i.as, align 8, !tbaa !8
  tail call void @set_pair1(ptr noundef %i.ar, i32 noundef 0)
  %i.at = load i32, ptr @summary, align 4, !tbaa !4
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.av = load i32, ptr %0, align 8, !tbaa !21
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i, label %print_pair.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.bb, i32 noundef %i.be) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = load i32, ptr %0, align 8, !tbaa !21
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next.i, %i.bh
  br i1 %i.bi, label %bb.c, label %print_pair.exit

print_pair.exit:                                  ; preds = %bb.c, %bb.b
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %print_pair.exit, %._crit_edge
  %i.bj = load i32, ptr @pair_minim_strategy, align 4, !tbaa !4
  switch i32 %i.bj, label %.thread [
    i32 2, label %bb.e
    i32 1, label %bb.h
    i32 0, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.bk = tail call i64 (...) @util_cpu_time() #14
  %i.bl = load ptr, ptr @global_PLA, align 8, !tbaa !69
  tail call void (ptr, i32, ...) @phase_assignment(ptr noundef %i.bl, i32 noundef 0) #14
  %i.bm = load i32, ptr @summary, align 4, !tbaa !4
  %.not27 = icmp eq i32 %i.bm, 0
  br i1 %.not27, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr @global_PLA, align 8, !tbaa !69
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  %i.bp = tail call i64 (...) @util_cpu_time() #14
  %i.bq = sub nsw i64 %i.bp, %i.bk
  tail call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.bo, ptr noundef nonnull @.str.10, i64 noundef %i.bq) #14
  %.pr = load i32, ptr @summary, align 4, !tbaa !4
  %.not28 = icmp eq i32 %.pr, 0
  br i1 %.not28, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = load ptr, ptr @global_PLA, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !71
  %i.bu = tail call ptr (ptr, ...) @pc1(ptr noundef %i.bt) #14
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %i.bu) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.bw = tail call i64 (...) @util_cpu_time() #14
  %i.bx = load ptr, ptr @global_PLA, align 8, !tbaa !69 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.cd = tail call ptr (ptr, ptr, ptr, i32, ...) @minimize_exact(ptr noundef %i.by, ptr noundef %i.ca, ptr noundef %i.cc, i32 noundef 1) #14 ; 2 uses
  %i.ce = load ptr, ptr @global_PLA, align 8, !tbaa !69
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !25
  %i.cf = load i32, ptr @summary, align 4, !tbaa !4
  %.not26 = icmp eq i32 %i.cf, 0
  br i1 %.not26, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = tail call i64 (...) @util_cpu_time() #14
  %i.ch = sub nsw i64 %i.cg, %i.bw
  tail call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.cd, ptr noundef nonnull @.str.12, i64 noundef %i.ch) #14
  br label %.thread

bb.j:                                             ; preds = %bb.d
  %i.ci = tail call i64 (...) @util_cpu_time() #14
  %i.cj = load ptr, ptr @global_PLA, align 8, !tbaa !69 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !28
  %i.cp = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.co) #14 ; 2 uses
  %i.cq = load ptr, ptr @global_PLA, align 8, !tbaa !69
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !25
  %i.cr = load i32, ptr @summary, align 4, !tbaa !4
  %.not25 = icmp eq i32 %i.cr, 0
  br i1 %.not25, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = tail call i64 (...) @util_cpu_time() #14
  %i.ct = sub nsw i64 %i.cs, %i.ci
  tail call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.cp, ptr noundef nonnull @.str.6, i64 noundef %i.ct) #14
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.j, %bb.k, %bb.h, %bb.i, %bb.d, %bb.f, %bb.g
  %i.cu = load ptr, ptr @global_PLA, align 8, !tbaa !69 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !54 ; 2 uses
  %i.cy = load i32, ptr @best_cost, align 4, !tbaa !4
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.l, label %bb.u
end_hunk_1
