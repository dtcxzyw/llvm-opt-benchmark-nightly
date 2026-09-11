Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/asearch1?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@I = external local_unnamed_addr global i32, align 4
@Init1 = external local_unnamed_addr global i32, align 4
@DD = external local_unnamed_addr global i32, align 4
@S = external local_unnamed_addr global i32, align 4
@NO_ERR_MASK = external local_unnamed_addr global i32, align 4
@D_endpos = external local_unnamed_addr global i32, align 4
@Init = external local_unnamed_addr global [0 x i32], align 4
@Mask = external local_unnamed_addr global [0 x i32], align 4
@AND = external local_unnamed_addr global i32, align 4
@endposition = external local_unnamed_addr global i32, align 4
@INVERSE = external local_unnamed_addr global i32, align 4
@FILENAMEONLY = external local_unnamed_addr global i32, align 4
@num_of_matched = external local_unnamed_addr global i32, align 4
@CurrentFileName = external global [0 x i8], align 1
@TRUNCATE = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @asearch1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 31 uses
  %i.b = alloca [17 x i32], align 16              ; 31 uses
  %i.c = alloca [98305 x i8], align 16            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = load i32, ptr @I, align 4, !tbaa !7      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr @Init1, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr @DD, align 4, !tbaa !7
  %i.g = icmp ugt i32 %i.f, %2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %2, 1
  store i32 %i.h, ptr @DD, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = icmp ugt i32 %i.d, %2
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %2, 1
  store i32 %i.j, ptr @I, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load i32, ptr @S, align 4, !tbaa !7
  %i.l = icmp ugt i32 %i.k, %2
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = add nuw i32 %2, 1
  store i32 %i.m, ptr @S, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10 ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 49151
  store i8 10, ptr %i.p, align 1, !tbaa !26
  %i.q = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !7 ; 8 uses
  %i.r = load i32, ptr @D_endpos, align 4, !tbaa !7 ; 5 uses
  %i.s = icmp ugt i32 %i.o, 1
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.t = add i32 %i.o, -1                         ; 2 uses
  %i.u = add i32 %i.o, -2
  %xtraiter = and i32 %i.t, 7                     ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.t, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0186221 = phi i32 [ %i.r, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.w = shl i32 %.0186221, 1
  %i.x = or i32 %i.w, %.0186221                   ; 2 uses
  %i.y = shl i32 %i.x, 1
  %i.z = or i32 %i.y, %i.x                        ; 2 uses
  %i.aa = shl i32 %i.z, 1
  %i.ab = or i32 %i.aa, %i.z                      ; 2 uses
  %i.ac = shl i32 %i.ab, 1
  %i.ad = or i32 %i.ac, %i.ab                     ; 2 uses
  %i.ae = shl i32 %i.ad, 1
  %i.af = or i32 %i.ae, %i.ad                     ; 2 uses
  %i.ag = shl i32 %i.af, 1
  %i.ah = or i32 %i.ag, %i.af                     ; 2 uses
  %i.ai = shl i32 %i.ah, 1
  %i.aj = or i32 %i.ai, %i.ah                     ; 2 uses
  %i.ak = shl i32 %i.aj, 1
  %i.al = or i32 %i.ak, %i.aj                     ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !8

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0186221.epil.init = phi i32 [ %i.r, %.lr.ph.preheader ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod455 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod455)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0186221.epil = phi i32 [ %i.an, %.lr.ph.epil ], [ %.0186221.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.am = shl i32 %.0186221.epil, 1
  %i.an = or i32 %i.am, %.0186221.epil            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !9

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.i
  %.0186.lcssa = phi i32 [ %i.r, %bb.i ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ]
  %i.ao = xor i32 %.0186.lcssa, -1                ; 2 uses
  %3 = add i32 %2, 1                              ; 2 uses
  %i.ap = shl i32 %2, 1                           ; 5 uses
  %.not267 = icmp eq i32 %2, 0
  br i1 %.not267, label %.lr.ph227, label %.preheader215

.preheader215:                                    ; preds = %._crit_edge
  %i.aq = zext i32 %2 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.ar, i1 false), !tbaa !7
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ar, i1 false), !tbaa !7
  %.not225 = icmp slt i32 %2, 0
  br i1 %.not225, label %.preheader, label %.lr.ph227

.lr.ph227:                                        ; preds = %._crit_edge, %.preheader215
  %i.as = load i32, ptr @Init, align 4, !tbaa !7  ; 3 uses
  %i.at = zext nneg i32 %2 to i64                 ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %2, i32 %i.ap) ; 2 uses
  %i.au = add nuw i32 %umax, 1
  %i.av = sub i32 %umax, %2                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.av, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph227
  %n.vec = and i64 %i.ax, 8589934584              ; 3 uses
  %i.ay = add nuw nsw i64 %n.vec, %i.at
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = add nuw i64 %index, %i.at               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bd, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph227, %middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %.lr.ph227 ], [ %i.ay, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %.preheader215
  %.not225326 = phi i1 [ true, %.preheader215 ], [ false, %middle.block ], [ false, %scalar.ph ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 49152 ; 4 uses
  %i.bg = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.bf, i32 noundef 49152) #9 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph266, label %.loopexit214

.lr.ph266:                                        ; preds = %.preheader
  %sext = shl i64 %i.n, 32
  %i.bi = ashr exact i64 %sext, 32
  %i.bj = zext i32 %2 to i64                      ; 8 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bj ; 5 uses
  %.not199228 = icmp ugt i32 %3, %i.ap            ; 4 uses
  %i.bm = zext i32 %i.ap to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bm ; 2 uses
  %i.bp = xor i32 %i.o, -1
  %4 = zext i32 %3 to i64                         ; 24 uses
  %5 = or disjoint i32 %i.ap, 1                   ; 4 uses
  %umax279 = call i32 @llvm.umax.i32(i32 %2, i32 %i.ap) ; 3 uses
  %i.bq = add i32 %umax279, 1                     ; 2 uses
  %6 = add i32 %2, -1                             ; 6 uses
  %i.br = add i32 %2, 1
  %i.bs = add i32 %2, 1
  %7 = add i32 %2, -1                             ; 6 uses
  %i.bt = add i32 %2, 1
  %i.bu = add i32 %2, 1
  %8 = add i32 %2, -1                             ; 2 uses
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %min.iters.check424 = icmp ult i32 %8, 7
  %invariant.op = sub i32 -2, %2
  %invariant.op458.a = sub i32 -2, %2
  %invariant.op460.a = sub i32 -2, %2
  %n.vec426 = and i64 %10, 8589934588             ; 3 uses
  %i.bv = add nuw nsw i64 %n.vec426, %4
  %broadcast.splatinsert431 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat432 = shufflevector <4 x i32> %broadcast.splatinsert431, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n441 = icmp eq i64 %10, %n.vec426
  %i.bw = sub i32 %umax279, %2                    ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check409 = icmp ult i32 %i.bw, 7
  %n.vec411 = and i64 %i.by, 8589934584           ; 3 uses
  %i.bz = add nuw nsw i64 %n.vec411, %i.bj
  %cmp.n418 = icmp eq i64 %i.by, %n.vec411
  %11 = add i32 %2, -1                            ; 2 uses
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %12, 1                    ; 2 uses
  %min.iters.check389 = icmp ult i32 %11, 7
  %invariant.op462.a = sub i32 -2, %2
  %invariant.op464.a = sub i32 -2, %2
  %invariant.op466.a = sub i32 -2, %2
  %n.vec391 = and i64 %13, 8589934588             ; 3 uses
  %i.ca = add nuw nsw i64 %n.vec391, %4
  %broadcast.splatinsert396 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat397 = shufflevector <4 x i32> %broadcast.splatinsert396, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n406 = icmp eq i64 %13, %n.vec391
  %14 = add i32 %2, -1                            ; 2 uses
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1                    ; 2 uses
  %min.iters.check366 = icmp ult i32 %14, 7
  %invariant.op468.a = sub i32 -2, %2
  %invariant.op470.a = sub i32 -2, %2
  %invariant.op472.a = sub i32 -2, %2
  %n.vec368 = and i64 %16, 8589934588             ; 3 uses
  %i.cb = add nuw nsw i64 %n.vec368, %4
  %broadcast.splatinsert373 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat374 = shufflevector <4 x i32> %broadcast.splatinsert373, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n383 = icmp eq i64 %16, %n.vec368
  %i.cc = sub i32 %umax279, %2                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check351 = icmp ult i32 %i.cc, 7
  %n.vec353 = and i64 %i.ce, 8589934584           ; 3 uses
  %i.cf = add nuw nsw i64 %n.vec353, %i.bj
  %cmp.n360 = icmp eq i64 %i.ce, %n.vec353
  %17 = add i32 %2, -1                            ; 2 uses
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %18, 1                    ; 2 uses
  %min.iters.check332 = icmp ult i32 %17, 7
  %invariant.op474.a = sub i32 -2, %2
  %invariant.op476 = sub i32 -2, %2
  %invariant.op478 = sub i32 -2, %2
  %n.vec334 = and i64 %19, 8589934588             ; 3 uses
  %i.cg = add nuw nsw i64 %n.vec334, %4
  %broadcast.splatinsert339 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat340 = shufflevector <4 x i32> %broadcast.splatinsert339, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n348 = icmp eq i64 %19, %n.vec334
  br label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.as, ptr %i.ch, align 4, !tbaa !7
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.as, ptr %i.ci, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond270.not = icmp eq i32 %i.au, %lftr.wideiv
  br i1 %exitcond270.not, label %.preheader, label %scalar.ph, !llvm.loop !11

bb.j:                                             ; preds = %.lr.ph266, %bb.aa
  %i.cj = phi i32 [ %i.bg, %.lr.ph266 ], [ %i.qa, %bb.aa ] ; 3 uses
  %.0265 = phi i32 [ 0, %.lr.ph266 ], [ %.3.lcssa, %bb.aa ] ; 2 uses
  %.0175264 = phi i32 [ 49152, %.lr.ph266 ], [ %spec.store.select1, %bb.aa ] ; 2 uses
  %i.ck = add nuw nsw i32 %i.cj, 49152            ; 5 uses
  %i.cl = icmp samesign ult i32 %i.cj, 49152      ; 2 uses
  br i1 %i.cl, label %bb.k, label %.lr.ph260.preheader

bb.k:                                             ; preds = %bb.j
  %i.cm = zext nneg i32 %i.cj to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cm
  %i.co = call ptr @strncpy(ptr noundef nonnull %i.cn, ptr noundef nonnull %0, i64 noundef %i.bi) #9 ; 0 uses
  %i.cp = add i32 %i.ck, %i.o                     ; 3 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cq
  store i8 0, ptr %i.cr, align 1, !tbaa !26
  %i.cs = icmp ugt i32 %i.cp, 49152
  br i1 %i.cs, label %.lr.ph260.preheader, label %._crit_edge261

.lr.ph260.preheader:                              ; preds = %bb.j, %bb.k
  %.0190329 = phi i32 [ %i.cp, %bb.k ], [ %i.ck, %bb.j ]
  %i.ct = zext i32 %.0190329 to i64
  %.pre = load i32, ptr @Init1, align 4, !tbaa !7
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.preheader, %.loopexit
  %i.cu = phi i32 [ %.pre, %.lr.ph260.preheader ], [ %i.pp, %.loopexit ] ; 4 uses
  %indvars.iv303 = phi i64 [ 49152, %.lr.ph260.preheader ], [ %indvars.iv.next304, %.loopexit ] ; 4 uses
  %.3258 = phi i32 [ %.0265, %.lr.ph260.preheader ], [ %.5, %.loopexit ] ; 2 uses
  %.1176257 = phi i32 [ %.0175264, %.lr.ph260.preheader ], [ %.3178, %.loopexit ] ; 3 uses
  %i.cv = or disjoint i64 %indvars.iv303, 1       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv303
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !26
  %i.cy = sext i8 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7  ; 6 uses
  %i.db = load i32, ptr %i.bk, align 4, !tbaa !7  ; 3 uses
  %i.dc = and i32 %i.db, %i.cu
  %i.dd = lshr i32 %i.db, 1
  %i.de = and i32 %i.dd, %i.da                    ; 2 uses
  %i.df = or i32 %i.de, %i.dc                     ; 2 uses
  store i32 %i.df, ptr %i.bl, align 4, !tbaa !7
  br i1 %.not199228, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %.lr.ph260
  %i.dg = load i32, ptr @I, align 4, !tbaa !7     ; 3 uses
  %i.dh = load i32, ptr @DD, align 4, !tbaa !7    ; 4 uses
  %i.di = load i32, ptr @S, align 4, !tbaa !7     ; 3 uses
  br i1 %min.iters.check424, label %scalar.ph423.preheader, label %vector.scevcheck420

vector.scevcheck420:                              ; preds = %.lr.ph231
  %.reass = add i32 %i.dh, %invariant.op
  %i.dj = icmp ult i32 %.reass, %7
  %.reass459.a = add i32 %i.dg, %invariant.op458.a
  %i.dk = icmp ult i32 %.reass459.a, %7
  %.reass461.a = add i32 %i.di, %invariant.op460.a
  %i.dl = icmp ult i32 %.reass461.a, %7
  %i.dm = or i1 %i.dj, %i.dk
  %i.dn = or i1 %i.dm, %i.dl
  br i1 %i.dn, label %scalar.ph423.preheader, label %vector.memcheck421

vector.memcheck421:                               ; preds = %vector.scevcheck420
  %i.do = sub i32 %i.bu, %i.dh
  %i.dp = zext i32 %i.do to i64
  %i.dq = sub nsw i64 %4, %i.dp
  %i.dr = shl nsw i64 %i.dq, 2
  %20 = add nsw i64 %i.dr, -1
  %diff.check422 = icmp ult i64 %20, 15
  br i1 %diff.check422, label %scalar.ph423.preheader, label %vector.ph425

vector.ph425:                                     ; preds = %vector.memcheck421
  %broadcast.splatinsert427 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat428 = shufflevector <4 x i32> %broadcast.splatinsert427, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert429 = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat430 = shufflevector <4 x i32> %broadcast.splatinsert429, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph425
  %index434 = phi i64 [ 0, %vector.ph425 ], [ %index.next439, %vector.body433 ] ; 2 uses
  %i.ds = add nuw i64 %index434, %4               ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ds
  %wide.load435 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !7 ; 2 uses
  %i.du = and <4 x i32> %wide.load435, %broadcast.splat428
  %i.dv = lshr <4 x i32> %wide.load435, splat (i32 1)
  %i.dw = and <4 x i32> %i.dv, %broadcast.splat430
  %i.dx = trunc nuw i64 %i.ds to i32              ; 3 uses
  %i.dy = sub i32 %i.dx, %i.dg
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dz
  %wide.load436 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !7
  %i.eb = sub i32 %i.dx, %i.dh
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ec
  %wide.load437 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !7
  %i.ee = sub i32 %i.dx, %i.di
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ef
  %wide.load438 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !7
  %i.eh = or <4 x i32> %wide.load438, %wide.load437
  %i.ei = lshr <4 x i32> %i.eh, splat (i32 1)
  %i.ej = and <4 x i32> %i.ei, %broadcast.splat432
  %i.ek = or <4 x i32> %wide.load436, %i.du
  %i.el = or <4 x i32> %i.ek, %i.dw
  %i.em = or <4 x i32> %i.el, %i.ej
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ds
  store <4 x i32> %i.em, ptr %i.en, align 4, !tbaa !7
  %index.next439 = add nuw i64 %index434, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next439, %n.vec426
  br i1 %i.eo, label %middle.block440, label %vector.body433, !llvm.loop !12

middle.block440:                                  ; preds = %vector.body433
  br i1 %cmp.n441, label %._crit_edge232.loopexit, label %scalar.ph423.preheader

scalar.ph423.preheader:                           ; preds = %vector.memcheck421, %vector.scevcheck420, %.lr.ph231, %middle.block440
  %indvars.iv271.ph = phi i64 [ %4, %vector.memcheck421 ], [ %4, %vector.scevcheck420 ], [ %4, %.lr.ph231 ], [ %i.bv, %middle.block440 ]
  br label %scalar.ph423

scalar.ph423:                                     ; preds = %scalar.ph423.preheader, %scalar.ph423
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph423 ], [ %indvars.iv271.ph, %scalar.ph423.preheader ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv271
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !7  ; 2 uses
  %i.er = and i32 %i.eq, %i.cu
  %i.es = lshr i32 %i.eq, 1
  %i.et = and i32 %i.es, %i.da
  %i.eu = trunc nuw i64 %indvars.iv271 to i32     ; 3 uses
  %i.ev = sub i32 %i.eu, %i.dg
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7
  %i.ez = sub i32 %i.eu, %i.dh
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !7
  %i.fd = sub i32 %i.eu, %i.di
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7
  %i.fh = or i32 %i.fg, %i.fc
  %i.fi = lshr i32 %i.fh, 1
  %i.fj = and i32 %i.fi, %i.q
  %i.fk = or i32 %i.ey, %i.er
  %i.fl = or i32 %i.fk, %i.et
  %i.fm = or i32 %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv271
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !7
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %lftr.wideiv274 = trunc i64 %indvars.iv.next272 to i32
  %exitcond275.not = icmp eq i32 %5, %lftr.wideiv274
  br i1 %exitcond275.not, label %._crit_edge232.loopexit, label %scalar.ph423, !llvm.loop !13

._crit_edge232.loopexit:                          ; preds = %scalar.ph423, %middle.block440
  %.pre306.a = load i32, ptr %i.bl, align 4, !tbaa !7
  br label %._crit_edge232

._crit_edge232:                                   ; preds = %._crit_edge232.loopexit, %.lr.ph260
  %i.fo = phi i32 [ %.pre306.a, %._crit_edge232.loopexit ], [ %i.df, %.lr.ph260 ] ; 2 uses
  %i.fp = and i32 %i.fo, %i.r
  %.not200 = icmp eq i32 %i.fp, 0
  br i1 %.not200, label %.loopexit213, label %bb.l

bb.l:                                             ; preds = %._crit_edge232
  %i.fq = add nsw i32 %.3258, 1                   ; 3 uses
  %i.fr = load i32, ptr @AND, align 4, !tbaa !7
  switch i32 %i.fr, label %.thread [
    i32 1, label %bb.m
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.fs = load i32, ptr %i.bn, align 8, !tbaa !7
  %i.ft = load i32, ptr @endposition, align 4, !tbaa !7 ; 2 uses
  %i.fu = and i32 %i.ft, %i.fs
  %i.fv = icmp eq i32 %i.fu, %i.ft
  br i1 %i.fv, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  %i.fw = load i32, ptr %i.bn, align 8, !tbaa !7
  %i.fx = load i32, ptr @endposition, align 4, !tbaa !7
  %i.fy = and i32 %i.fx, %i.fw
  %i.fz = icmp ne i32 %i.fy, 0
  %i.ga = zext i1 %i.fz to i32
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.n
  %i.gb = phi i32 [ 0, %bb.l ], [ %i.ga, %bb.n ], [ 0, %bb.m ]
  %i.gc = load i32, ptr @INVERSE, align 4, !tbaa !7
  %.not201 = icmp eq i32 %i.gb, %i.gc
  br i1 %.not201, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m
  %i.gd = load i32, ptr @FILENAMEONLY, align 4, !tbaa !7
  %.not202 = icmp eq i32 %i.gd, 0
  br i1 %.not202, label %bb.p, label %.loopexit214.sink.split

bb.p:                                             ; preds = %bb.o
  %i.ge = icmp slt i32 %.1176257, %i.ck
  br i1 %i.ge, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gf = trunc nuw i64 %indvars.iv303 to i32
  %i.gg = sub i32 %i.gf, %i.o
  call void @output(ptr noundef nonnull %i.c, i32 noundef %.1176257, i32 noundef %i.gg, i32 noundef %i.fq) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.thread
  %i.gh = trunc nuw i64 %i.cv to i32
  %i.gi = sub i32 %i.gh, %i.o                     ; 2 uses
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !7
  br i1 %.not225326, label %._crit_edge237, label %.lr.ph236

.lr.ph236:                                        ; preds = %bb.r
  %i.gj = load i32, ptr @Init, align 4, !tbaa !7  ; 3 uses
  br i1 %min.iters.check409, label %scalar.ph408.preheader, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph236
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph410
  %index415 = phi i64 [ 0, %vector.ph410 ], [ %index.next416, %vector.body414 ] ; 2 uses
  %i.gk = add nuw i64 %index415, %i.bj            ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <4 x i32> %broadcast.splat413, ptr %i.gl, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat413, ptr %i.gm, align 4, !tbaa !7
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <4 x i32> %broadcast.splat413, ptr %i.gn, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat413, ptr %i.go, align 4, !tbaa !7
  %index.next416 = add nuw i64 %index415, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next416, %n.vec411
  br i1 %i.gp, label %middle.block417, label %vector.body414, !llvm.loop !14

middle.block417:                                  ; preds = %vector.body414
  br i1 %cmp.n418, label %._crit_edge237.loopexit, label %scalar.ph408.preheader

scalar.ph408.preheader:                           ; preds = %.lr.ph236, %middle.block417
  %indvars.iv276.ph = phi i64 [ %i.bj, %.lr.ph236 ], [ %i.bz, %middle.block417 ]
  br label %scalar.ph408

scalar.ph408:                                     ; preds = %scalar.ph408.preheader, %scalar.ph408
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %scalar.ph408 ], [ %indvars.iv276.ph, %scalar.ph408.preheader ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv276
  store i32 %i.gj, ptr %i.gq, align 4, !tbaa !7
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv276
  store i32 %i.gj, ptr %i.gr, align 4, !tbaa !7
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %lftr.wideiv280 = trunc i64 %indvars.iv.next277 to i32
  %exitcond281.not = icmp eq i32 %i.bq, %lftr.wideiv280
  br i1 %exitcond281.not, label %._crit_edge237.loopexit, label %scalar.ph408, !llvm.loop !15

._crit_edge237.loopexit:                          ; preds = %scalar.ph408, %middle.block417
  %.pre307 = load i32, ptr %i.bk, align 4, !tbaa !7 ; 2 uses
  %.pre314 = lshr i32 %.pre307, 1
  %.pre316 = and i32 %.pre314, %i.da
  br label %._crit_edge237

._crit_edge237:                                   ; preds = %._crit_edge237.loopexit, %bb.r
  %.pre-phi317 = phi i32 [ %.pre316, %._crit_edge237.loopexit ], [ %i.de, %bb.r ]
  %i.gs = phi i32 [ %.pre307, %._crit_edge237.loopexit ], [ %i.db, %bb.r ]
  %i.gt = load i32, ptr @Init1, align 4, !tbaa !7 ; 5 uses
  %i.gu = and i32 %i.gs, %i.gt
  %i.gv = or i32 %.pre-phi317, %i.gu
  %i.gw = and i32 %i.gv, %i.ao                    ; 2 uses
  store i32 %i.gw, ptr %i.bl, align 4, !tbaa !7
  br i1 %.not199228, label %.loopexit213, label %.lr.ph241

.lr.ph241:                                        ; preds = %._crit_edge237
  %i.gx = load i32, ptr @I, align 4, !tbaa !7     ; 3 uses
  %i.gy = load i32, ptr @DD, align 4, !tbaa !7    ; 4 uses
  %i.gz = load i32, ptr @S, align 4, !tbaa !7     ; 3 uses
  br i1 %min.iters.check389, label %scalar.ph388.preheader, label %vector.scevcheck385

vector.scevcheck385:                              ; preds = %.lr.ph241
  %.reass463.a = add i32 %i.gy, %invariant.op462.a
  %i.ha = icmp ult i32 %.reass463.a, %7
  %.reass465.a = add i32 %i.gx, %invariant.op464.a
  %i.hb = icmp ult i32 %.reass465.a, %7
  %.reass467.a = add i32 %i.gz, %invariant.op466.a
  %i.hc = icmp ult i32 %.reass467.a, %7
  %i.hd = or i1 %i.ha, %i.hb
  %i.he = or i1 %i.hd, %i.hc
  br i1 %i.he, label %scalar.ph388.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %vector.scevcheck385
  %i.hf = sub i32 %i.bt, %i.gy
  %i.hg = zext i32 %i.hf to i64
  %i.hh = sub nsw i64 %4, %i.hg
  %i.hi = shl nsw i64 %i.hh, 2
  %21 = add nsw i64 %i.hi, -1
  %diff.check387 = icmp ult i64 %21, 15
  br i1 %diff.check387, label %scalar.ph388.preheader, label %vector.ph390

vector.ph390:                                     ; preds = %vector.memcheck386
  %broadcast.splatinsert392 = insertelement <4 x i32> poison, i32 %i.gt, i64 0
  %broadcast.splat393 = shufflevector <4 x i32> %broadcast.splatinsert392, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert394 = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat395 = shufflevector <4 x i32> %broadcast.splatinsert394, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph390
  %index399 = phi i64 [ 0, %vector.ph390 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.hj = add nuw i64 %index399, %4               ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hj
  %wide.load400 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !7 ; 2 uses
  %i.hl = and <4 x i32> %wide.load400, %broadcast.splat393
  %i.hm = lshr <4 x i32> %wide.load400, splat (i32 1)
  %i.hn = and <4 x i32> %i.hm, %broadcast.splat395
  %i.ho = trunc nuw i64 %i.hj to i32              ; 3 uses
  %i.hp = sub i32 %i.ho, %i.gx
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hq
  %wide.load401 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !7
  %i.hs = sub i32 %i.ho, %i.gy
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ht
  %wide.load402 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !7
  %i.hv = sub i32 %i.ho, %i.gz
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hw
  %wide.load403 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !7
  %i.hy = or <4 x i32> %wide.load403, %wide.load402
  %i.hz = lshr <4 x i32> %i.hy, splat (i32 1)
  %i.ia = and <4 x i32> %i.hz, %broadcast.splat397
  %i.ib = or <4 x i32> %wide.load401, %i.hl
  %i.ic = or <4 x i32> %i.ib, %i.hn
  %i.id = or <4 x i32> %i.ic, %i.ia
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hj
  store <4 x i32> %i.id, ptr %i.ie, align 4, !tbaa !7
  %index.next404 = add nuw i64 %index399, 4       ; 2 uses
  %i.if = icmp eq i64 %index.next404, %n.vec391
  br i1 %i.if, label %middle.block405, label %vector.body398, !llvm.loop !16

middle.block405:                                  ; preds = %vector.body398
  br i1 %cmp.n406, label %.loopexit213.loopexit, label %scalar.ph388.preheader

scalar.ph388.preheader:                           ; preds = %vector.memcheck386, %vector.scevcheck385, %.lr.ph241, %middle.block405
  %indvars.iv282.ph = phi i64 [ %4, %vector.memcheck386 ], [ %4, %vector.scevcheck385 ], [ %4, %.lr.ph241 ], [ %i.ca, %middle.block405 ]
  br label %scalar.ph388

scalar.ph388:                                     ; preds = %scalar.ph388.preheader, %scalar.ph388
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %scalar.ph388 ], [ %indvars.iv282.ph, %scalar.ph388.preheader ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv282
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !7  ; 2 uses
  %i.ii = and i32 %i.ih, %i.gt
  %i.ij = lshr i32 %i.ih, 1
  %i.ik = and i32 %i.ij, %i.da
  %i.il = trunc nuw i64 %indvars.iv282 to i32     ; 3 uses
  %i.im = sub i32 %i.il, %i.gx
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !7
  %i.iq = sub i32 %i.il, %i.gy
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !7
  %i.iu = sub i32 %i.il, %i.gz
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !7
  %i.iy = or i32 %i.ix, %i.it
  %i.iz = lshr i32 %i.iy, 1
  %i.ja = and i32 %i.iz, %i.q
  %i.jb = or i32 %i.ip, %i.ii
  %i.jc = or i32 %i.jb, %i.ik
  %i.jd = or i32 %i.jc, %i.ja
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv282
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !7
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %lftr.wideiv285 = trunc i64 %indvars.iv.next283 to i32
  %exitcond286.not = icmp eq i32 %5, %lftr.wideiv285
  br i1 %exitcond286.not, label %.loopexit213.loopexit, label %scalar.ph388, !llvm.loop !17

.loopexit213.loopexit:                            ; preds = %scalar.ph388, %middle.block405
  %.pre308 = load i32, ptr %i.bl, align 4, !tbaa !7
  br label %.loopexit213

.loopexit213:                                     ; preds = %.loopexit213.loopexit, %._crit_edge237, %._crit_edge232
  %i.jf = phi i32 [ %i.cu, %._crit_edge232 ], [ %i.gt, %._crit_edge237 ], [ %i.gt, %.loopexit213.loopexit ] ; 4 uses
  %i.jg = phi i32 [ %i.fo, %._crit_edge232 ], [ %i.gw, %._crit_edge237 ], [ %.pre308, %.loopexit213.loopexit ] ; 3 uses
  %.2177 = phi i32 [ %.1176257, %._crit_edge232 ], [ %i.gi, %._crit_edge237 ], [ %i.gi, %.loopexit213.loopexit ] ; 3 uses
  %.4 = phi i32 [ %.3258, %._crit_edge232 ], [ %i.fq, %._crit_edge237 ], [ %i.fq, %.loopexit213.loopexit ] ; 2 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 2 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cv
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !26
  %i.jj = sext i8 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !7  ; 6 uses
  %i.jm = and i32 %i.jf, %i.jg
  %i.jn = lshr i32 %i.jg, 1
  %i.jo = and i32 %i.jn, %i.jl                    ; 2 uses
  %i.jp = or i32 %i.jo, %i.jm                     ; 2 uses
  store i32 %i.jp, ptr %i.bk, align 4, !tbaa !7
  br i1 %.not199228, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %.loopexit213
  %i.jq = load i32, ptr @I, align 4, !tbaa !7     ; 3 uses
  %i.jr = load i32, ptr @DD, align 4, !tbaa !7    ; 4 uses
  %i.js = load i32, ptr @S, align 4, !tbaa !7     ; 3 uses
  br i1 %min.iters.check366, label %scalar.ph365.preheader, label %vector.scevcheck362

vector.scevcheck362:                              ; preds = %.lr.ph245
  %.reass469.a = add i32 %i.jr, %invariant.op468.a
  %i.jt = icmp ult i32 %.reass469.a, %6
  %.reass471.a = add i32 %i.jq, %invariant.op470.a
  %i.ju = icmp ult i32 %.reass471.a, %6
  %.reass473.a = add i32 %i.js, %invariant.op472.a
  %i.jv = icmp ult i32 %.reass473.a, %6
  %i.jw = or i1 %i.jt, %i.ju
  %i.jx = or i1 %i.jw, %i.jv
  br i1 %i.jx, label %scalar.ph365.preheader, label %vector.memcheck363

vector.memcheck363:                               ; preds = %vector.scevcheck362
  %i.jy = sub i32 %i.bs, %i.jr
  %i.jz = zext i32 %i.jy to i64
  %i.ka = sub nsw i64 %4, %i.jz
  %i.kb = shl nsw i64 %i.ka, 2
  %22 = add nsw i64 %i.kb, -1
  %diff.check364 = icmp ult i64 %22, 15
  br i1 %diff.check364, label %scalar.ph365.preheader, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck363
  %broadcast.splatinsert369 = insertelement <4 x i32> poison, i32 %i.jf, i64 0
  %broadcast.splat370 = shufflevector <4 x i32> %broadcast.splatinsert369, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert371 = insertelement <4 x i32> poison, i32 %i.jl, i64 0
  %broadcast.splat372 = shufflevector <4 x i32> %broadcast.splatinsert371, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph367
  %index376 = phi i64 [ 0, %vector.ph367 ], [ %index.next381, %vector.body375 ] ; 2 uses
  %i.kc = add nuw i64 %index376, %4               ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kc
  %wide.load377 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !7 ; 2 uses
  %i.ke = and <4 x i32> %wide.load377, %broadcast.splat370
  %i.kf = lshr <4 x i32> %wide.load377, splat (i32 1)
  %i.kg = and <4 x i32> %i.kf, %broadcast.splat372
  %i.kh = trunc nuw i64 %i.kc to i32              ; 3 uses
  %i.ki = sub i32 %i.kh, %i.jq
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kj
  %wide.load378 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !7
  %i.kl = sub i32 %i.kh, %i.jr
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.km
  %wide.load379 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !7
  %i.ko = sub i32 %i.kh, %i.js
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kp
  %wide.load380 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !7
  %i.kr = or <4 x i32> %wide.load380, %wide.load379
  %i.ks = lshr <4 x i32> %i.kr, splat (i32 1)
  %i.kt = and <4 x i32> %i.ks, %broadcast.splat374
  %i.ku = or <4 x i32> %wide.load378, %i.ke
  %i.kv = or <4 x i32> %i.ku, %i.kg
  %i.kw = or <4 x i32> %i.kv, %i.kt
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kc
  store <4 x i32> %i.kw, ptr %i.kx, align 4, !tbaa !7
  %index.next381 = add nuw i64 %index376, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next381, %n.vec368
  br i1 %i.ky, label %middle.block382, label %vector.body375, !llvm.loop !18

middle.block382:                                  ; preds = %vector.body375
  br i1 %cmp.n383, label %._crit_edge246.loopexit, label %scalar.ph365.preheader

scalar.ph365.preheader:                           ; preds = %vector.memcheck363, %vector.scevcheck362, %.lr.ph245, %middle.block382
  %indvars.iv287.ph = phi i64 [ %4, %vector.memcheck363 ], [ %4, %vector.scevcheck362 ], [ %4, %.lr.ph245 ], [ %i.cb, %middle.block382 ]
  br label %scalar.ph365

scalar.ph365:                                     ; preds = %scalar.ph365.preheader, %scalar.ph365
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %scalar.ph365 ], [ %indvars.iv287.ph, %scalar.ph365.preheader ] ; 4 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv287
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !7  ; 2 uses
  %i.lb = and i32 %i.la, %i.jf
  %i.lc = lshr i32 %i.la, 1
  %i.ld = and i32 %i.lc, %i.jl
  %i.le = trunc nuw i64 %indvars.iv287 to i32     ; 3 uses
  %i.lf = sub i32 %i.le, %i.jq
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !7
  %i.lj = sub i32 %i.le, %i.jr
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !7
  %i.ln = sub i32 %i.le, %i.js
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = or i32 %i.lq, %i.lm
  %i.ls = lshr i32 %i.lr, 1
  %i.lt = and i32 %i.ls, %i.q
  %i.lu = or i32 %i.li, %i.lb
  %i.lv = or i32 %i.lu, %i.ld
  %i.lw = or i32 %i.lv, %i.lt
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv287
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !7
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %lftr.wideiv290 = trunc i64 %indvars.iv.next288 to i32
  %exitcond291.not = icmp eq i32 %5, %lftr.wideiv290
  br i1 %exitcond291.not, label %._crit_edge246.loopexit, label %scalar.ph365, !llvm.loop !19

._crit_edge246.loopexit:                          ; preds = %scalar.ph365, %middle.block382
  %.pre309 = load i32, ptr %i.bk, align 4, !tbaa !7
  br label %._crit_edge246

._crit_edge246:                                   ; preds = %._crit_edge246.loopexit, %.loopexit213
  %i.ly = phi i32 [ %.pre309, %._crit_edge246.loopexit ], [ %i.jp, %.loopexit213 ]
  %i.lz = and i32 %i.ly, %i.r
  %.not206 = icmp eq i32 %i.lz, 0
  br i1 %.not206, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %._crit_edge246
  %i.ma = add nsw i32 %.4, 1                      ; 4 uses
  %i.mb = load i32, ptr @AND, align 4, !tbaa !7
  switch i32 %i.mb, label %.thread212 [
    i32 1, label %bb.t
    i32 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.mc = load i32, ptr %i.bo, align 8, !tbaa !7
  %i.md = load i32, ptr @endposition, align 4, !tbaa !7 ; 2 uses
  %i.me = and i32 %i.md, %i.mc
  %i.mf = icmp eq i32 %i.me, %i.md
  br i1 %i.mf, label %bb.v, label %.thread212

bb.u:                                             ; preds = %bb.s
  %i.mg = load i32, ptr %i.bo, align 8, !tbaa !7
  %i.mh = load i32, ptr @endposition, align 4, !tbaa !7
  %i.mi = and i32 %i.mh, %i.mg
  %i.mj = icmp ne i32 %i.mi, 0
  %i.mk = zext i1 %i.mj to i32
  br label %.thread212

.thread212:                                       ; preds = %bb.s, %bb.t, %bb.u
  %i.ml = phi i32 [ 0, %bb.s ], [ %i.mk, %bb.u ], [ 0, %bb.t ]
  %i.mm = load i32, ptr @INVERSE, align 4, !tbaa !7
  %.not207 = icmp eq i32 %i.ml, %i.mm
  br i1 %.not207, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.thread212, %bb.t
  %i.mn = load i32, ptr @FILENAMEONLY, align 4, !tbaa !7
  %.not208 = icmp eq i32 %i.mn, 0
  br i1 %.not208, label %bb.w, label %.loopexit214.sink.split

bb.w:                                             ; preds = %bb.v
  %i.mo = icmp slt i32 %.2177, %i.ck
  br i1 %i.mo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.mp = trunc nuw i64 %indvars.iv.next304 to i32
  %i.mq = add i32 %i.mp, %i.bp
  call void @output(ptr noundef nonnull %i.c, i32 noundef %.2177, i32 noundef %i.mq, i32 noundef %i.ma) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %.thread212
  %i.mr = trunc nuw i64 %indvars.iv.next304 to i32
  %i.ms = sub i32 %i.mr, %i.o                     ; 3 uses
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !7
  br i1 %.not225326, label %._crit_edge251, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.y
  %i.mt = load i32, ptr @Init, align 4, !tbaa !7  ; 3 uses
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph250
  %broadcast.splatinsert354 = insertelement <4 x i32> poison, i32 %i.mt, i64 0
  %broadcast.splat355 = shufflevector <4 x i32> %broadcast.splatinsert354, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph352
  %index357 = phi i64 [ 0, %vector.ph352 ], [ %index.next358, %vector.body356 ] ; 2 uses
  %i.mu = add nuw i64 %index357, %i.bj            ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <4 x i32> %broadcast.splat355, ptr %i.mv, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat355, ptr %i.mw, align 4, !tbaa !7
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mu ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <4 x i32> %broadcast.splat355, ptr %i.mx, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat355, ptr %i.my, align 4, !tbaa !7
  %index.next358 = add nuw i64 %index357, 8       ; 2 uses
  %i.mz = icmp eq i64 %index.next358, %n.vec353
  br i1 %i.mz, label %middle.block359, label %vector.body356, !llvm.loop !20

middle.block359:                                  ; preds = %vector.body356
  br i1 %cmp.n360, label %._crit_edge251.loopexit, label %scalar.ph350.preheader

scalar.ph350.preheader:                           ; preds = %.lr.ph250, %middle.block359
  %indvars.iv292.ph.a = phi i64 [ %i.bj, %.lr.ph250 ], [ %i.cf, %middle.block359 ]
  br label %scalar.ph350

scalar.ph350:                                     ; preds = %scalar.ph350.preheader, %scalar.ph350
  %indvars.iv292.a = phi i64 [ %indvars.iv.next293.a, %scalar.ph350 ], [ %indvars.iv292.ph.a, %scalar.ph350.preheader ] ; 3 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv292.a
  store i32 %i.mt, ptr %i.na, align 4, !tbaa !7
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv292.a
  store i32 %i.mt, ptr %i.nb, align 4, !tbaa !7
  %indvars.iv.next293.a = add nuw nsw i64 %indvars.iv292.a, 1 ; 2 uses
  %lftr.wideiv296 = trunc i64 %indvars.iv.next293.a to i32
  %exitcond297.not = icmp eq i32 %i.bq, %lftr.wideiv296
  br i1 %exitcond297.not, label %._crit_edge251.loopexit, label %scalar.ph350, !llvm.loop !21

._crit_edge251.loopexit:                          ; preds = %scalar.ph350, %middle.block359
  %.pre310 = load i32, ptr %i.bl, align 4, !tbaa !7 ; 2 uses
  %.pre311 = lshr i32 %.pre310, 1
  %.pre312 = and i32 %.pre311, %i.jl
  br label %._crit_edge251

._crit_edge251:                                   ; preds = %._crit_edge251.loopexit, %bb.y
  %.pre-phi313 = phi i32 [ %.pre312, %._crit_edge251.loopexit ], [ %i.jo, %bb.y ]
  %i.nc = phi i32 [ %.pre310, %._crit_edge251.loopexit ], [ %i.jg, %bb.y ]
  %i.nd = load i32, ptr @Init1, align 4, !tbaa !7 ; 6 uses
  %i.ne = and i32 %i.nc, %i.nd
  %i.nf = or i32 %.pre-phi313, %i.ne
  %i.ng = and i32 %i.nf, %i.ao
  store i32 %i.ng, ptr %i.bk, align 4, !tbaa !7
  br i1 %.not199228, label %.loopexit, label %.lr.ph255

.lr.ph255:                                        ; preds = %._crit_edge251
  %i.nh = load i32, ptr @I, align 4, !tbaa !7     ; 3 uses
  %i.ni = load i32, ptr @DD, align 4, !tbaa !7    ; 4 uses
  %i.nj = load i32, ptr @S, align 4, !tbaa !7     ; 3 uses
  br i1 %min.iters.check332, label %scalar.ph331.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph255
  %.reass475.a = add i32 %i.ni, %invariant.op474.a
  %i.nk = icmp ult i32 %.reass475.a, %6
  %.reass477 = add i32 %i.nh, %invariant.op476
  %i.nl = icmp ult i32 %.reass477, %6
  %.reass479 = add i32 %i.nj, %invariant.op478
  %i.nm = icmp ult i32 %.reass479, %6
  %i.nn = or i1 %i.nk, %i.nl
  %i.no = or i1 %i.nn, %i.nm
  br i1 %i.no, label %scalar.ph331.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.np = sub i32 %i.br, %i.ni
  %i.nq = zext i32 %i.np to i64
  %i.nr = sub nsw i64 %4, %i.nq
  %i.ns = shl nsw i64 %i.nr, 2
  %23 = add nsw i64 %i.ns, -1
  %diff.check = icmp ult i64 %23, 15
  br i1 %diff.check, label %scalar.ph331.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert335 = insertelement <4 x i32> poison, i32 %i.nd, i64 0
  %broadcast.splat336 = shufflevector <4 x i32> %broadcast.splatinsert335, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert337 = insertelement <4 x i32> poison, i32 %i.jl, i64 0
  %broadcast.splat338 = shufflevector <4 x i32> %broadcast.splatinsert337, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph333
  %index342 = phi i64 [ 0, %vector.ph333 ], [ %index.next346, %vector.body341 ] ; 2 uses
  %i.nt = add nuw i64 %index342, %4               ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nt
  %wide.load = load <4 x i32>, ptr %i.nu, align 4, !tbaa !7 ; 2 uses
  %i.nv = and <4 x i32> %wide.load, %broadcast.splat336
  %i.nw = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.nx = and <4 x i32> %i.nw, %broadcast.splat338
  %i.ny = trunc nuw i64 %i.nt to i32              ; 3 uses
  %i.nz = sub i32 %i.ny, %i.nh
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oa
  %wide.load343 = load <4 x i32>, ptr %i.ob, align 4, !tbaa !7
  %i.oc = sub i32 %i.ny, %i.ni
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.od
  %wide.load344 = load <4 x i32>, ptr %i.oe, align 4, !tbaa !7
  %i.of = sub i32 %i.ny, %i.nj
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.og
  %wide.load345 = load <4 x i32>, ptr %i.oh, align 4, !tbaa !7
  %i.oi = or <4 x i32> %wide.load345, %wide.load344
  %i.oj = lshr <4 x i32> %i.oi, splat (i32 1)
  %i.ok = and <4 x i32> %i.oj, %broadcast.splat340
  %i.ol = or <4 x i32> %wide.load343, %i.nv
  %i.om = or <4 x i32> %i.ol, %i.nx
  %i.on = or <4 x i32> %i.om, %i.ok
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nt
  store <4 x i32> %i.on, ptr %i.oo, align 4, !tbaa !7
  %index.next346 = add nuw i64 %index342, 4       ; 2 uses
  %i.op = icmp eq i64 %index.next346, %n.vec334
  br i1 %i.op, label %middle.block347, label %vector.body341, !llvm.loop !22

middle.block347:                                  ; preds = %vector.body341
  br i1 %cmp.n348, label %.loopexit, label %scalar.ph331.preheader

scalar.ph331.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph255, %middle.block347
  %indvars.iv298.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %vector.scevcheck ], [ %4, %.lr.ph255 ], [ %i.cg, %middle.block347 ]
  br label %scalar.ph331

scalar.ph331:                                     ; preds = %scalar.ph331.preheader, %scalar.ph331
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %scalar.ph331 ], [ %indvars.iv298.ph, %scalar.ph331.preheader ] ; 4 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv298
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !7  ; 2 uses
  %i.os = and i32 %i.or, %i.nd
  %i.ot = lshr i32 %i.or, 1
  %i.ou = and i32 %i.ot, %i.jl
  %i.ov = trunc nuw i64 %indvars.iv298 to i32     ; 3 uses
  %i.ow = sub i32 %i.ov, %i.nh
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !7
  %i.pa = sub i32 %i.ov, %i.ni
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !7
  %i.pe = sub i32 %i.ov, %i.nj
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !7
  %i.pi = or i32 %i.ph, %i.pd
  %i.pj = lshr i32 %i.pi, 1
  %i.pk = and i32 %i.pj, %i.q
  %i.pl = or i32 %i.oz, %i.os
  %i.pm = or i32 %i.pl, %i.ou
  %i.pn = or i32 %i.pm, %i.pk
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv298
  store i32 %i.pn, ptr %i.po, align 4, !tbaa !7
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %lftr.wideiv301 = trunc i64 %indvars.iv.next299 to i32
  %exitcond302.not = icmp eq i32 %5, %lftr.wideiv301
  br i1 %exitcond302.not, label %.loopexit, label %scalar.ph331, !llvm.loop !23

.loopexit:                                        ; preds = %scalar.ph331, %middle.block347, %._crit_edge251, %._crit_edge246
  %i.pp = phi i32 [ %i.jf, %._crit_edge246 ], [ %i.nd, %._crit_edge251 ], [ %i.nd, %middle.block347 ], [ %i.nd, %scalar.ph331 ]
  %.3178 = phi i32 [ %.2177, %._crit_edge246 ], [ %i.ms, %._crit_edge251 ], [ %i.ms, %middle.block347 ], [ %i.ms, %scalar.ph331 ] ; 2 uses
  %.5 = phi i32 [ %.4, %._crit_edge246 ], [ %i.ma, %._crit_edge251 ], [ %i.ma, %middle.block347 ], [ %i.ma, %scalar.ph331 ] ; 2 uses
  %i.pq = icmp samesign ult i64 %indvars.iv.next304, %i.ct
  br i1 %i.pq, label %.lr.ph260, label %._crit_edge261, !llvm.loop !24

._crit_edge261:                                   ; preds = %.loopexit, %bb.k
  %.1176.lcssa = phi i32 [ %.0175264, %bb.k ], [ %.3178, %.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.0265, %bb.k ], [ %.5, %.loopexit ]
  %i.pr = sub nsw i32 %i.ck, %.1176.lcssa         ; 2 uses
  %i.ps = icmp sgt i32 %i.pr, 49152
  br i1 %i.ps, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge261
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge261
  %.0179 = phi i32 [ 49152, %bb.z ], [ %i.pr, %._crit_edge261 ] ; 2 uses
  %i.pt = sext i32 %.0179 to i64                  ; 2 uses
  %i.pu = sub nsw i64 0, %i.pt
  %i.pv = getelementptr inbounds i8, ptr %i.bf, i64 %i.pu
  %i.pw = sext i32 %.1176.lcssa to i64
  %i.px = getelementptr inbounds i8, ptr %i.c, i64 %i.pw
  %i.py = call ptr @strncpy(ptr noundef nonnull %i.pv, ptr noundef nonnull %i.px, i64 noundef %i.pt) #9 ; 0 uses
  %i.pz = sub nsw i32 49152, %.0179
  %spec.store.select1 = select i1 %i.cl, i32 49152, i32 %i.pz
  %i.qa = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.bf, i32 noundef 49152) #9 ; 2 uses
  %i.qb = icmp sgt i32 %i.qa, 0
  br i1 %i.qb, label %bb.j, label %.loopexit214, !llvm.loop !25

.loopexit214.sink.split:                          ; preds = %bb.v, %bb.o
  %i.qc = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %i.qd = add nsw i32 %i.qc, 1
  store i32 %i.qd, ptr @num_of_matched, align 4, !tbaa !7
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %.loopexit214

.loopexit214:                                     ; preds = %bb.aa, %.loopexit214.sink.split, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @fill_buf(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare void @output(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !27}
!9 = distinct !{!9, !28}
!10 = distinct !{!10, !27, !29, !30}
!11 = distinct !{!11, !27, !30, !29}
!12 = distinct !{!12, !27, !29, !30}
!13 = distinct !{!13, !27, !29}
!14 = distinct !{!14, !27, !29, !30}
!15 = distinct !{!15, !27, !30, !29}
!16 = distinct !{!16, !27, !29, !30}
!17 = distinct !{!17, !27, !29}
!18 = distinct !{!18, !27, !29, !30}
!19 = distinct !{!19, !27, !29}
!20 = distinct !{!20, !27, !29, !30}
!21 = distinct !{!21, !27, !30, !29}
!22 = distinct !{!22, !27, !29, !30}
!23 = distinct !{!23, !27, !29}
!24 = distinct !{!24, !27}
!25 = distinct !{!25, !27}
!26 = !{!5, !5, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
