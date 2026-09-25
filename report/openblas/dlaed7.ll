Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed7?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DLAED7\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b10 = internal global double 1.000000e+00, align 8
@c_b11 = internal global double 0.000000e+00, align 8
@c_n1 = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define void @dlaed7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef initializes((0, 4)) %21) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.f = getelementptr inbounds i8, ptr %9, i64 -4
  %i.g = getelementptr inbounds i8, ptr %12, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %13, i64 -4 ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %14, i64 -4 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %15, i64 -4
  %i.k = getelementptr inbounds i8, ptr %16, i64 -4 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %17, i64 -12
  %i.m = getelementptr inbounds i8, ptr %18, i64 -24
  %i.n = getelementptr inbounds i8, ptr %19, i64 -8 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %20, i64 -4
  store i32 0, ptr %21, align 4, !tbaa !12
  %i.p = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %or.cond = icmp ugt i32 %i.p, 1
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %1, align 4, !tbaa !12     ; 12 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %i.p, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %2, align 4, !tbaa !12
  %i.u = icmp slt i32 %i.t, %i.q
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load i32, ptr %8, align 4, !tbaa !12
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.q, i32 1)
  %i.w = icmp slt i32 %i.v, %spec.select
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not199 = icmp ne i32 %i.q, 0
  %spec.select185 = zext i1 %.not199 to i32
  %i.x = load i32, ptr %11, align 4, !tbaa !12    ; 2 uses
  %i.y = icmp slt i32 %i.x, %spec.select185
  %i.z = icmp samesign ult i32 %i.q, %i.x
  %or.cond198 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond198, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -9, %bb.e ], [ -3, %bb.d ], [ -12, %bb.f ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 9, %bb.e ], [ 3, %bb.d ], [ 12, %bb.f ]
  store i32 %.sink, ptr %21, align 4, !tbaa !12
  store i32 %.neg, ptr %i.a, align 4, !tbaa !12
  %i.aa = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %2, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %storemerge = phi i32 [ %i.ac, %bb.i ], [ %i.q, %bb.h ] ; 2 uses
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !12
  %i.ad = add nuw nsw i32 %i.q, 1                 ; 2 uses
  %i.ae = add nuw nsw i32 %i.ad, %i.q             ; 2 uses
  %i.af = add nuw nsw i32 %i.ae, %i.q             ; 2 uses
  %i.ag = mul nsw i32 %storemerge, %i.q
  %i.ah = add nsw i32 %i.ag, %i.af
  %i.ai = load i32, ptr %3, align 4, !tbaa !12    ; 7 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %spec.select32.i = zext i1 %i.aj to i32
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %bb.k, label %pow_ii.exit

bb.k:                                             ; preds = %bb.j
  %i.al = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.am = and i64 %i.al, 1
  %.not33.i = icmp eq i64 %i.am, 0
  %i.an = select i1 %.not33.i, i32 1, i32 2       ; 2 uses
  %i.ao = lshr i64 %i.al, 1                       ; 2 uses
  %.not3134.i = icmp eq i64 %i.ao, 0
  br i1 %.not3134.i, label %pow_ii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.ap = phi i64 [ %i.at, %.lr.ph.i ], [ %i.ao, %bb.k ] ; 2 uses
  %spec.select36.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.an, %bb.k ]
  %.02635.i = phi i32 [ %i.aq, %.lr.ph.i ], [ 2, %bb.k ] ; 2 uses
  %i.aq = mul nuw nsw i32 %.02635.i, %.02635.i    ; 2 uses
  %i.ar = and i64 %i.ap, 1
  %.not.i = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not.i, i32 1, i32 %i.aq
  %spec.select.i = mul nuw nsw i32 %i.as, %spec.select36.i ; 2 uses
  %i.at = lshr i64 %i.ap, 1                       ; 2 uses
  %.not31.i = icmp eq i64 %i.at, 0
  br i1 %.not31.i, label %pow_ii.exit, label %.lr.ph.i

pow_ii.exit:                                      ; preds = %.lr.ph.i, %bb.j, %bb.k
  %.3.i = phi i32 [ %spec.select32.i, %bb.j ], [ %i.an, %bb.k ], [ %spec.select.i, %.lr.ph.i ]
  %i.au = add nsw i32 %.3.i, 1                    ; 3 uses
  %i.av = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %.not181.not200 = icmp sgt i32 %i.av, 1
  br i1 %.not181.not200, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %pow_ii.exit
  %i.aw = zext i32 %i.ai to i64                   ; 3 uses
  %i.ax = sext i32 %i.ai to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.av to i64
  %i.ay = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ay, 1
  %i.az = icmp eq i32 %i.av, 2
  br i1 %i.az, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ay, -2
  %.mask = and i32 %i.ai, 1
  %i.ba = and i32 %i.ai, 1
  %i.bb = sub nuw nsw i32 2, %i.ba                ; 2 uses
  %i.bc = add nuw nsw i32 %.mask, 1               ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %pow_ii.exit196.1, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %pow_ii.exit196.1 ] ; 4 uses
  %.0202 = phi i32 [ %i.au, %.lr.ph.preheader.new ], [ %i.bw, %pow_ii.exit196.1 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %pow_ii.exit196.1 ]
  %i.bd = sub nsw i64 %i.ax, %indvars.iv          ; 2 uses
  %i.be = icmp eq i64 %indvars.iv, %i.aw
  %spec.select32.i186 = zext i1 %i.be to i32
  %i.bf = icmp sgt i64 %i.bd, 0
  br i1 %i.bf, label %bb.l, label %pow_ii.exit196

bb.l:                                             ; preds = %.lr.ph
  %i.bg = lshr i64 %i.bd, 1                       ; 2 uses
  %.not3134.i189 = icmp eq i64 %i.bg, 0
  br i1 %.not3134.i189, label %pow_ii.exit196, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %bb.l, %.lr.ph.i190
  %i.bh = phi i64 [ %i.bl, %.lr.ph.i190 ], [ %i.bg, %bb.l ] ; 2 uses
  %spec.select36.i191 = phi i32 [ %spec.select.i194, %.lr.ph.i190 ], [ %i.bb, %bb.l ]
  %.02635.i192 = phi i32 [ %i.bi, %.lr.ph.i190 ], [ 2, %bb.l ] ; 2 uses
  %i.bi = mul nuw nsw i32 %.02635.i192, %.02635.i192 ; 2 uses
  %i.bj = and i64 %i.bh, 1
  %.not.i193 = icmp eq i64 %i.bj, 0
  %i.bk = select i1 %.not.i193, i32 1, i32 %i.bi
  %spec.select.i194 = mul nuw nsw i32 %i.bk, %spec.select36.i191 ; 2 uses
  %i.bl = lshr i64 %i.bh, 1                       ; 2 uses
  %.not31.i195 = icmp eq i64 %i.bl, 0
  br i1 %.not31.i195, label %pow_ii.exit196, label %.lr.ph.i190

pow_ii.exit196:                                   ; preds = %.lr.ph.i190, %.lr.ph, %bb.l
  %.3.i187 = phi i32 [ %spec.select32.i186, %.lr.ph ], [ %i.bb, %bb.l ], [ %spec.select.i194, %.lr.ph.i190 ]
  %i.bm = add nsw i32 %.3.i187, %.0202
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sub nsw i64 %i.ax, %indvars.iv.next     ; 2 uses
  %i.bo = icmp eq i64 %indvars.iv.next, %i.aw
  %spec.select32.i186.1 = zext i1 %i.bo to i32
  %i.bp = icmp sgt i64 %i.bn, 0
  br i1 %i.bp, label %bb.m, label %pow_ii.exit196.1

bb.m:                                             ; preds = %pow_ii.exit196
  %i.bq = lshr i64 %i.bn, 1                       ; 2 uses
  %.not3134.i189.1 = icmp eq i64 %i.bq, 0
  br i1 %.not3134.i189.1, label %pow_ii.exit196.1, label %.lr.ph.i190.1

.lr.ph.i190.1:                                    ; preds = %bb.m, %.lr.ph.i190.1
  %i.br = phi i64 [ %i.bv, %.lr.ph.i190.1 ], [ %i.bq, %bb.m ] ; 2 uses
  %spec.select36.i191.1 = phi i32 [ %spec.select.i194.1, %.lr.ph.i190.1 ], [ %i.bc, %bb.m ]
  %.02635.i192.1 = phi i32 [ %i.bs, %.lr.ph.i190.1 ], [ 2, %bb.m ] ; 2 uses
  %i.bs = mul nuw nsw i32 %.02635.i192.1, %.02635.i192.1 ; 2 uses
  %i.bt = and i64 %i.br, 1
  %.not.i193.1 = icmp eq i64 %i.bt, 0
  %i.bu = select i1 %.not.i193.1, i32 1, i32 %i.bs
  %spec.select.i194.1 = mul nuw nsw i32 %i.bu, %spec.select36.i191.1 ; 2 uses
  %i.bv = lshr i64 %i.br, 1                       ; 2 uses
  %.not31.i195.1 = icmp eq i64 %i.bv, 0
  br i1 %.not31.i195.1, label %pow_ii.exit196.1, label %.lr.ph.i190.1

pow_ii.exit196.1:                                 ; preds = %.lr.ph.i190.1, %bb.m, %pow_ii.exit196
  %.3.i187.1 = phi i32 [ %spec.select32.i186.1, %pow_ii.exit196 ], [ %i.bc, %bb.m ], [ %spec.select.i194.1, %.lr.ph.i190.1 ]
  %i.bw = add nsw i32 %.3.i187.1, %i.bm           ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !8

._crit_edge.loopexit.unr-lcssa:                   ; preds = %pow_ii.exit196.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0202.epil.init = phi i32 [ %i.au, %.lr.ph.preheader ], [ %i.bw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod231 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.bx = sub nsw i64 %i.ax, %indvars.iv.epil.init ; 3 uses
  %i.by = icmp eq i64 %indvars.iv.epil.init, %i.aw
  %spec.select32.i186.epil = zext i1 %i.by to i32
  %i.bz = icmp sgt i64 %i.bx, 0
  br i1 %i.bz, label %bb.n, label %pow_ii.exit196.epil

bb.n:                                             ; preds = %.lr.ph.epil.preheader
  %i.ca = and i64 %i.bx, 1
  %.not33.i188.epil = icmp eq i64 %i.ca, 0
  %i.cb = select i1 %.not33.i188.epil, i32 1, i32 2 ; 2 uses
  %i.cc = lshr i64 %i.bx, 1                       ; 2 uses
  %.not3134.i189.epil = icmp eq i64 %i.cc, 0
  br i1 %.not3134.i189.epil, label %pow_ii.exit196.epil, label %.lr.ph.i190.epil

.lr.ph.i190.epil:                                 ; preds = %bb.n, %.lr.ph.i190.epil
  %i.cd = phi i64 [ %i.ch, %.lr.ph.i190.epil ], [ %i.cc, %bb.n ] ; 2 uses
  %spec.select36.i191.epil = phi i32 [ %spec.select.i194.epil, %.lr.ph.i190.epil ], [ %i.cb, %bb.n ]
  %.02635.i192.epil = phi i32 [ %i.ce, %.lr.ph.i190.epil ], [ 2, %bb.n ] ; 2 uses
  %i.ce = mul nuw nsw i32 %.02635.i192.epil, %.02635.i192.epil ; 2 uses
  %i.cf = and i64 %i.cd, 1
  %.not.i193.epil = icmp eq i64 %i.cf, 0
  %i.cg = select i1 %.not.i193.epil, i32 1, i32 %i.ce
  %spec.select.i194.epil = mul nuw nsw i32 %i.cg, %spec.select36.i191.epil ; 2 uses
  %i.ch = lshr i64 %i.cd, 1                       ; 2 uses
  %.not31.i195.epil = icmp eq i64 %i.ch, 0
  br i1 %.not31.i195.epil, label %pow_ii.exit196.epil, label %.lr.ph.i190.epil

pow_ii.exit196.epil:                              ; preds = %.lr.ph.i190.epil, %bb.n, %.lr.ph.epil.preheader
  %.3.i187.epil = phi i32 [ %spec.select32.i186.epil, %.lr.ph.epil.preheader ], [ %i.cb, %bb.n ], [ %spec.select.i194.epil, %.lr.ph.i190.epil ]
  %i.ci = add nsw i32 %.3.i187.epil, %.0202.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %pow_ii.exit196.epil, %._crit_edge.loopexit.unr-lcssa, %pow_ii.exit
  %.0.lcssa = phi i32 [ %i.au, %pow_ii.exit ], [ %i.bw, %._crit_edge.loopexit.unr-lcssa ], [ %i.ci, %pow_ii.exit196.epil ]
  %i.cj = load i32, ptr %5, align 4, !tbaa !12
  %i.ck = add nsw i32 %i.cj, %.0.lcssa            ; 2 uses
  %i.cl = zext nneg i32 %i.q to i64
  %i.cm = getelementptr [8 x i8], ptr %i.n, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  tail call void @dlaeda_(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %12, ptr noundef %13, ptr noundef %19, ptr noundef %i.cn, ptr noundef nonnull %21) #5
  %i.co = load i32, ptr %4, align 4, !tbaa !12
  %i.cp = load i32, ptr %3, align 4, !tbaa !12
  %i.cq = icmp eq i32 %i.co, %i.cp
  %i.cr = sext i32 %i.ck to i64                   ; 8 uses
  br i1 %i.cq, label %bb.o, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert213 = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.cr
  %.pre = load i32, ptr %.phi.trans.insert213, align 4, !tbaa !12
  %i.cs = shl i32 %.pre, 1
  %i.ct = or disjoint i32 %i.cs, 1
  %i.cu = sext i32 %i.ct to i64
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cr
  store i32 1, ptr %i.cv, align 4, !tbaa !12
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cr
  store i32 1, ptr %i.cw, align 4, !tbaa !12
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.cr
  store i32 1, ptr %i.cx, align 4, !tbaa !12
  br label %bb.p
end_hunk_0
