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
  %i.d = load i32, ptr @I, align 4, !tbaa !4      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr @Init1, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr @DD, align 4, !tbaa !4
  %i.g = icmp ugt i32 %i.f, %2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %2, 1
  store i32 %i.h, ptr @DD, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = icmp ugt i32 %i.d, %2
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %2, 1
  store i32 %i.j, ptr @I, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load i32, ptr @S, align 4, !tbaa !4
  %i.l = icmp ugt i32 %i.k, %2
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = add nuw i32 %2, 1
  store i32 %i.m, ptr @S, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10 ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 49151
  store i8 10, ptr %i.p, align 1, !tbaa !8
  %i.q = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !4 ; 8 uses
  %i.r = load i32, ptr @D_endpos, align 4, !tbaa !4 ; 5 uses
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
  %.0188218 = phi i32 [ %i.r, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.w = shl i32 %.0188218, 1
  %i.x = or i32 %i.w, %.0188218                   ; 2 uses
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
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0188218.epil.init = phi i32 [ %i.r, %.lr.ph.preheader ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod459 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod459)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0188218.epil = phi i32 [ %i.an, %.lr.ph.epil ], [ %.0188218.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.am = shl i32 %.0188218.epil, 1
  %i.an = or i32 %i.am, %.0188218.epil            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !11

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.i
  %.0188.lcssa = phi i32 [ %i.r, %bb.i ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ]
  %i.ao = xor i32 %.0188.lcssa, -1                ; 2 uses
  %i.ap = add i32 %2, 1                           ; 2 uses
  %i.aq = shl i32 %2, 1                           ; 4 uses
  %.not265 = icmp eq i32 %2, 0
  br i1 %.not265, label %.lr.ph225, label %.preheader213

.preheader213:                                    ; preds = %._crit_edge
  %i.ar = zext i32 %2 to i64
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.as, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.as, i1 false), !tbaa !4
  %.not223 = icmp slt i32 %2, 0
  br i1 %.not223, label %.preheader, label %.lr.ph225

.lr.ph225:                                        ; preds = %._crit_edge, %.preheader213
  %i.at = load i32, ptr @Init, align 4, !tbaa !4  ; 3 uses
  %i.au = zext i32 %2 to i64                      ; 5 uses
  %i.av = zext i32 %i.aq to i64                   ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.av)
  %i.aw = add nuw nsw i64 %umax, 1
  %3 = sub nsw i64 %i.aw, %i.au                   ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph225
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ax = add nsw i64 %n.vec, %i.au
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = add i64 %index, %i.au                   ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.az, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph225, %middle.block
  %indvars.iv.ph = phi i64 [ %i.au, %.lr.ph225 ], [ %i.ax, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %.preheader213
  %.not223314 = phi i1 [ true, %.preheader213 ], [ false, %middle.block ], [ false, %scalar.ph ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 49152 ; 4 uses
  %i.bf = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.be, i32 noundef 49152) #9 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph264, label %.loopexit212

.lr.ph264:                                        ; preds = %.preheader
  %sext = shl i64 %i.n, 32
  %i.bh = ashr exact i64 %sext, 32
  %i.bi = zext i32 %2 to i64                      ; 12 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bi ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bi ; 5 uses
  %.not197226 = icmp ugt i32 %i.ap, %i.aq         ; 4 uses
  %i.bl = zext i32 %i.aq to i64                   ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl ; 2 uses
  %i.bo = xor i32 %i.o, -1
  %i.bp = zext i32 %i.ap to i64                   ; 24 uses
  %i.bq = or disjoint i32 %i.aq, 1                ; 4 uses
  %i.br = add i32 %2, -1                          ; 3 uses
  %i.bs = add i32 %2, 1
  %umax341 = call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bl)
  %4 = add nuw nsw i64 %umax341, 1
  %5 = sub nsw i64 %4, %i.bi                      ; 3 uses
  %6 = add i32 %2, -1                             ; 6 uses
  %i.bt = add i32 %2, 1
  %i.bu = add i32 %2, 1
  %umax407 = call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bl)
  %7 = add nuw nsw i64 %umax407, 1
  %8 = sub nsw i64 %7, %i.bi                      ; 3 uses
  %i.bv = add i32 %2, -1                          ; 3 uses
  %i.bw = add i32 %2, 1
  %i.bx = add i32 %2, -1                          ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check427 = icmp ult i32 %i.bx, 7
  %invariant.op = sub i32 -2, %2
  %invariant.op462.a = sub i32 -2, %2
  %invariant.op464.a = sub i32 -2, %2
  %n.vec430 = and i64 %i.bz, 8589934588           ; 3 uses
  %i.ca = add nuw nsw i64 %n.vec430, %i.bp
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n445 = icmp eq i64 %i.bz, %n.vec430
  %min.iters.check409 = icmp ult i64 %8, 8
  %n.vec412 = and i64 %8, -8                      ; 3 uses
  %i.cb = add nsw i64 %n.vec412, %i.bi
  %cmp.n419 = icmp eq i64 %8, %n.vec412
  %i.cc = add i32 %2, -1                          ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check387 = icmp ult i32 %i.cc, 7
  %invariant.op466.a = sub i32 -2, %2
  %invariant.op468.a = sub i32 -2, %2
  %invariant.op470.a = sub i32 -2, %2
  %n.vec390 = and i64 %i.ce, 8589934588           ; 3 uses
  %i.cf = add nuw nsw i64 %n.vec390, %i.bp
  %broadcast.splatinsert395 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat396 = shufflevector <4 x i32> %broadcast.splatinsert395, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n405 = icmp eq i64 %i.ce, %n.vec390
  %i.cg = add i32 %2, -1                          ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check361 = icmp ult i32 %i.cg, 7
  %invariant.op472.a = sub i32 -2, %2
  %invariant.op474.a = sub i32 -2, %2
  %invariant.op476.a = sub i32 -2, %2
  %n.vec364 = and i64 %i.ci, 8589934588           ; 3 uses
  %i.cj = add nuw nsw i64 %n.vec364, %i.bp
  %broadcast.splatinsert369 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat370 = shufflevector <4 x i32> %broadcast.splatinsert369, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n379 = icmp eq i64 %i.ci, %n.vec364
  %min.iters.check343 = icmp ult i64 %5, 8
  %n.vec346 = and i64 %5, -8                      ; 3 uses
  %i.ck = add nsw i64 %n.vec346, %i.bi
  %cmp.n353 = icmp eq i64 %5, %n.vec346
  %i.cl = add i32 %2, -1                          ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check322 = icmp ult i32 %i.cl, 7
  %invariant.op478.a = sub i32 -2, %2
  %invariant.op480.a = sub i32 -2, %2
  %invariant.op482 = sub i32 -2, %2
  %n.vec325 = and i64 %i.cn, 8589934588           ; 3 uses
  %i.co = add nuw nsw i64 %n.vec325, %i.bp
  %broadcast.splatinsert330 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat331 = shufflevector <4 x i32> %broadcast.splatinsert330, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n339 = icmp eq i64 %i.cn, %n.vec325
  br label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.at, ptr %i.cp, align 4, !tbaa !4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.at, ptr %i.cq, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.av
  br i1 %.not.not, label %scalar.ph, label %.preheader, !llvm.loop !16

bb.j:                                             ; preds = %.lr.ph264, %bb.aa
  %i.cr = phi i32 [ %i.bf, %.lr.ph264 ], [ %i.qk, %bb.aa ] ; 3 uses
  %.0263 = phi i32 [ 0, %.lr.ph264 ], [ %.3.lcssa, %bb.aa ] ; 2 uses
  %.0177262 = phi i32 [ 49152, %.lr.ph264 ], [ %spec.store.select1, %bb.aa ] ; 2 uses
  %i.cs = add nuw nsw i32 %i.cr, 49152            ; 5 uses
  %i.ct = icmp samesign ult i32 %i.cr, 49152      ; 2 uses
  br i1 %i.ct, label %bb.k, label %.lr.ph258.preheader

bb.k:                                             ; preds = %bb.j
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cu
  %i.cw = call ptr @strncpy(ptr noundef nonnull %i.cv, ptr noundef nonnull %0, i64 noundef %i.bh) #9 ; 0 uses
  %i.cx = add i32 %i.cs, %i.o                     ; 3 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !8
  %i.da = icmp ugt i32 %i.cx, 49152
  br i1 %i.da, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.j, %bb.k
  %.0173317 = phi i32 [ %i.cx, %bb.k ], [ %i.cs, %bb.j ]
  %.pre = load i32, ptr @Init1, align 4, !tbaa !4
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %.loopexit
  %i.db = phi i32 [ %i.pz, %.loopexit ], [ %.pre, %.lr.ph258.preheader ] ; 4 uses
  %.3256 = phi i32 [ %.5, %.loopexit ], [ %.0263, %.lr.ph258.preheader ] ; 2 uses
  %.2176255 = phi i32 [ %i.jp, %.loopexit ], [ 49152, %.lr.ph258.preheader ] ; 4 uses
  %.1178254 = phi i32 [ %.3180, %.loopexit ], [ %.0177262, %.lr.ph258.preheader ] ; 3 uses
  %i.dc = or disjoint i32 %.2176255, 1            ; 2 uses
  %i.dd = zext i32 %.2176255 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 2, !tbaa !8
  %i.dg = sext i8 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4  ; 6 uses
  %i.dj = load i32, ptr %i.bj, align 4, !tbaa !4  ; 3 uses
  %i.dk = and i32 %i.dj, %i.db
  %i.dl = lshr i32 %i.dj, 1
  %i.dm = and i32 %i.dl, %i.di                    ; 2 uses
  %i.dn = or i32 %i.dm, %i.dk                     ; 2 uses
  store i32 %i.dn, ptr %i.bk, align 4, !tbaa !4
  br i1 %.not197226, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph258
  %i.do = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.dp = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.dq = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.scevcheck421

vector.scevcheck421:                              ; preds = %.lr.ph229
  %.reass = add i32 %i.dp, %invariant.op
  %i.dr = icmp ult i32 %.reass, %i.bv
  %.reass463.a = add i32 %i.do, %invariant.op462.a
  %i.ds = icmp ult i32 %.reass463.a, %i.bv
  %.reass465.a = add i32 %i.dq, %invariant.op464.a
  %i.dt = icmp ult i32 %.reass465.a, %i.bv
  %i.du = or i1 %i.dr, %i.ds
  %i.dv = or i1 %i.du, %i.dt
  br i1 %i.dv, label %scalar.ph426.preheader, label %vector.memcheck424

vector.memcheck424:                               ; preds = %vector.scevcheck421
  %i.dw = sub i32 %i.bw, %i.dp
  %i.dx = zext i32 %i.dw to i64
  %i.dy = sub nsw i64 %i.bp, %i.dx
  %i.dz = shl nsw i64 %i.dy, 2
  %i.ea = add nsw i64 %i.dz, -1
  %diff.check425 = icmp ult i64 %i.ea, 15
  br i1 %diff.check425, label %scalar.ph426.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck424
  %broadcast.splatinsert431.a = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %broadcast.splat432.a = shufflevector <4 x i32> %broadcast.splatinsert431.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat434 = shufflevector <4 x i32> %broadcast.splatinsert433, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph428
  %index438 = phi i64 [ 0, %vector.ph428 ], [ %index.next443, %vector.body437 ] ; 2 uses
  %i.eb = add i64 %index438, %i.bp                ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eb
  %wide.load439.a = load <4 x i32>, ptr %i.ec, align 4, !tbaa !4 ; 2 uses
  %i.ed = and <4 x i32> %wide.load439.a, %broadcast.splat432.a
  %i.ee = lshr <4 x i32> %wide.load439.a, splat (i32 1)
  %i.ef = and <4 x i32> %i.ee, %broadcast.splat434
  %i.eg = trunc nuw i64 %i.eb to i32              ; 3 uses
  %i.eh = sub i32 %i.eg, %i.do
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei
  %wide.load440.a = load <4 x i32>, ptr %i.ej, align 4, !tbaa !4
  %i.ek = sub i32 %i.eg, %i.dp
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.el
  %wide.load441 = load <4 x i32>, ptr %i.em, align 4, !tbaa !4
  %i.en = sub i32 %i.eg, %i.dq
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eo
  %wide.load442 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !4
  %i.eq = or <4 x i32> %wide.load442, %wide.load441
  %i.er = lshr <4 x i32> %i.eq, splat (i32 1)
  %i.es = and <4 x i32> %i.er, %broadcast.splat436
  %i.et = or <4 x i32> %wide.load440.a, %i.ed
  %i.eu = or <4 x i32> %i.et, %i.ef
  %i.ev = or <4 x i32> %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eb
  store <4 x i32> %i.ev, ptr %i.ew, align 4, !tbaa !4
  %index.next443 = add nuw i64 %index438, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next443, %n.vec430
  br i1 %i.ex, label %middle.block444, label %vector.body437, !llvm.loop !17

middle.block444:                                  ; preds = %vector.body437
  br i1 %cmp.n445, label %._crit_edge230.loopexit, label %scalar.ph426.preheader

scalar.ph426.preheader:                           ; preds = %vector.memcheck424, %vector.scevcheck421, %.lr.ph229, %middle.block444
  %indvars.iv268.ph = phi i64 [ %i.bp, %vector.memcheck424 ], [ %i.bp, %vector.scevcheck421 ], [ %i.bp, %.lr.ph229 ], [ %i.ca, %middle.block444 ]
  br label %scalar.ph426

scalar.ph426:                                     ; preds = %scalar.ph426.preheader, %scalar.ph426
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %scalar.ph426 ], [ %indvars.iv268.ph, %scalar.ph426.preheader ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv268
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4  ; 2 uses
  %i.fa = and i32 %i.ez, %i.db
  %i.fb = lshr i32 %i.ez, 1
  %i.fc = and i32 %i.fb, %i.di
  %i.fd = trunc nuw i64 %indvars.iv268 to i32     ; 3 uses
  %i.fe = sub i32 %i.fd, %i.do
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4
  %i.fi = sub i32 %i.fd, %i.dp
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = sub i32 %i.fd, %i.dq
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = or i32 %i.fp, %i.fl
  %i.fr = lshr i32 %i.fq, 1
  %i.fs = and i32 %i.fr, %i.q
  %i.ft = or i32 %i.fh, %i.fa
  %i.fu = or i32 %i.ft, %i.fc
  %i.fv = or i32 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv268
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next269 to i32
  %exitcond271 = icmp eq i32 %i.bq, %lftr.wideiv
  br i1 %exitcond271, label %._crit_edge230.loopexit, label %scalar.ph426, !llvm.loop !18

._crit_edge230.loopexit:                          ; preds = %scalar.ph426, %middle.block444
  %.pre293 = load i32, ptr %i.bk, align 4, !tbaa !4
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %.lr.ph258
  %i.fx = phi i32 [ %.pre293, %._crit_edge230.loopexit ], [ %i.dn, %.lr.ph258 ] ; 2 uses
  %i.fy = and i32 %i.fx, %i.r
  %.not198 = icmp eq i32 %i.fy, 0
  br i1 %.not198, label %.loopexit211, label %bb.l

bb.l:                                             ; preds = %._crit_edge230
  %i.fz = add nsw i32 %.3256, 1                   ; 3 uses
  %i.ga = load i32, ptr @AND, align 4, !tbaa !4
  switch i32 %i.ga, label %.thread [
    i32 1, label %bb.m
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.gb = load i32, ptr %i.bm, align 8, !tbaa !4
  %i.gc = load i32, ptr @endposition, align 4, !tbaa !4 ; 2 uses
  %i.gd = and i32 %i.gc, %i.gb
  %i.ge = icmp eq i32 %i.gd, %i.gc
  br i1 %i.ge, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  %i.gf = load i32, ptr %i.bm, align 8, !tbaa !4
  %i.gg = load i32, ptr @endposition, align 4, !tbaa !4
  %i.gh = and i32 %i.gg, %i.gf
  %i.gi = icmp ne i32 %i.gh, 0
  %i.gj = zext i1 %i.gi to i32
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.n
  %i.gk = phi i32 [ 0, %bb.l ], [ %i.gj, %bb.n ], [ 0, %bb.m ]
  %i.gl = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not199 = icmp eq i32 %i.gk, %i.gl
  br i1 %.not199, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m
  %i.gm = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not200 = icmp eq i32 %i.gm, 0
  br i1 %.not200, label %bb.p, label %.loopexit212.sink.split

bb.p:                                             ; preds = %bb.o
  %i.gn = icmp slt i32 %.1178254, %i.cs
  br i1 %i.gn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.go = sub i32 %.2176255, %i.o
  call void @output(ptr noundef nonnull %i.c, i32 noundef %.1178254, i32 noundef %i.go, i32 noundef %i.fz) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.thread
  %i.gp = sub i32 %i.dc, %i.o                     ; 2 uses
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !4
  br i1 %.not223314, label %._crit_edge235, label %.lr.ph234

.lr.ph234:                                        ; preds = %bb.r
  %i.gq = load i32, ptr @Init, align 4, !tbaa !4  ; 3 uses
  br i1 %min.iters.check409, label %scalar.ph408.preheader, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph234
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.gq, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph410
  %index416 = phi i64 [ 0, %vector.ph410 ], [ %index.next417, %vector.body415 ] ; 2 uses
  %i.gr = add i64 %index416, %i.bi                ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <4 x i32> %broadcast.splat414, ptr %i.gs, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat414, ptr %i.gt, align 4, !tbaa !4
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gr ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <4 x i32> %broadcast.splat414, ptr %i.gu, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat414, ptr %i.gv, align 4, !tbaa !4
  %index.next417 = add nuw i64 %index416, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.gw, label %middle.block418, label %vector.body415, !llvm.loop !19

middle.block418:                                  ; preds = %vector.body415
  br i1 %cmp.n419, label %._crit_edge235.loopexit, label %scalar.ph408.preheader

scalar.ph408.preheader:                           ; preds = %.lr.ph234, %middle.block418
  %indvars.iv272.ph = phi i64 [ %i.bi, %.lr.ph234 ], [ %i.cb, %middle.block418 ]
  br label %scalar.ph408

scalar.ph408:                                     ; preds = %scalar.ph408.preheader, %scalar.ph408
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %scalar.ph408 ], [ %indvars.iv272.ph, %scalar.ph408.preheader ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv272
  store i32 %i.gq, ptr %i.gx, align 4, !tbaa !4
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv272
  store i32 %i.gq, ptr %i.gy, align 4, !tbaa !4
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1
  %.not201.not = icmp samesign ult i64 %indvars.iv272, %i.bl
  br i1 %.not201.not, label %scalar.ph408, label %._crit_edge235.loopexit, !llvm.loop !20

._crit_edge235.loopexit:                          ; preds = %scalar.ph408, %middle.block418
  %.pre294 = load i32, ptr %i.bj, align 4, !tbaa !4 ; 2 uses
  %.pre301 = lshr i32 %.pre294, 1
  %.pre303 = and i32 %.pre301, %i.di
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %._crit_edge235.loopexit, %bb.r
  %.pre-phi304 = phi i32 [ %.pre303, %._crit_edge235.loopexit ], [ %i.dm, %bb.r ]
  %i.gz = phi i32 [ %.pre294, %._crit_edge235.loopexit ], [ %i.dj, %bb.r ]
  %i.ha = load i32, ptr @Init1, align 4, !tbaa !4 ; 5 uses
  %i.hb = and i32 %i.gz, %i.ha
  %i.hc = or i32 %.pre-phi304, %i.hb
  %i.hd = and i32 %i.hc, %i.ao                    ; 2 uses
  store i32 %i.hd, ptr %i.bk, align 4, !tbaa !4
  br i1 %.not197226, label %.loopexit211, label %.lr.ph239

.lr.ph239:                                        ; preds = %._crit_edge235
  %i.he = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.hf = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.hg = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check387, label %scalar.ph386.preheader, label %vector.scevcheck381

vector.scevcheck381:                              ; preds = %.lr.ph239
  %.reass467.a = add i32 %i.hf, %invariant.op466.a
  %i.hh = icmp ult i32 %.reass467.a, %6
  %.reass469.a = add i32 %i.he, %invariant.op468.a
  %i.hi = icmp ult i32 %.reass469.a, %6
  %.reass471.a = add i32 %i.hg, %invariant.op470.a
  %i.hj = icmp ult i32 %.reass471.a, %6
  %i.hk = or i1 %i.hh, %i.hi
  %i.hl = or i1 %i.hk, %i.hj
  br i1 %i.hl, label %scalar.ph386.preheader, label %vector.memcheck384

vector.memcheck384:                               ; preds = %vector.scevcheck381
  %i.hm = sub i32 %i.bu, %i.hf
  %i.hn = zext i32 %i.hm to i64
  %i.ho = sub nsw i64 %i.bp, %i.hn
  %i.hp = shl nsw i64 %i.ho, 2
  %i.hq = add nsw i64 %i.hp, -1
  %diff.check385 = icmp ult i64 %i.hq, 15
  br i1 %diff.check385, label %scalar.ph386.preheader, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck384
  %broadcast.splatinsert391 = insertelement <4 x i32> poison, i32 %i.ha, i64 0
  %broadcast.splat392 = shufflevector <4 x i32> %broadcast.splatinsert391, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert393 = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat394 = shufflevector <4 x i32> %broadcast.splatinsert393, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph388
  %index398 = phi i64 [ 0, %vector.ph388 ], [ %index.next403, %vector.body397 ] ; 2 uses
  %i.hr = add i64 %index398, %i.bp                ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hr
  %wide.load399.a = load <4 x i32>, ptr %i.hs, align 4, !tbaa !4 ; 2 uses
  %i.ht = and <4 x i32> %wide.load399.a, %broadcast.splat392
  %i.hu = lshr <4 x i32> %wide.load399.a, splat (i32 1)
  %i.hv = and <4 x i32> %i.hu, %broadcast.splat394
  %i.hw = trunc nuw i64 %i.hr to i32              ; 3 uses
  %i.hx = sub i32 %i.hw, %i.he
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hy
  %wide.load400.a = load <4 x i32>, ptr %i.hz, align 4, !tbaa !4
  %i.ia = sub i32 %i.hw, %i.hf
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ib
  %wide.load401.a = load <4 x i32>, ptr %i.ic, align 4, !tbaa !4
  %i.id = sub i32 %i.hw, %i.hg
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ie
  %wide.load402 = load <4 x i32>, ptr %i.if, align 4, !tbaa !4
  %i.ig = or <4 x i32> %wide.load402, %wide.load401.a
  %i.ih = lshr <4 x i32> %i.ig, splat (i32 1)
  %i.ii = and <4 x i32> %i.ih, %broadcast.splat396
  %i.ij = or <4 x i32> %wide.load400.a, %i.ht
  %i.ik = or <4 x i32> %i.ij, %i.hv
  %i.il = or <4 x i32> %i.ik, %i.ii
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hr
  store <4 x i32> %i.il, ptr %i.im, align 4, !tbaa !4
  %index.next403 = add nuw i64 %index398, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next403, %n.vec390
  br i1 %i.in, label %middle.block404, label %vector.body397, !llvm.loop !21

middle.block404:                                  ; preds = %vector.body397
  br i1 %cmp.n405, label %.loopexit211.loopexit, label %scalar.ph386.preheader

scalar.ph386.preheader:                           ; preds = %vector.memcheck384, %vector.scevcheck381, %.lr.ph239, %middle.block404
  %indvars.iv275.ph = phi i64 [ %i.bp, %vector.memcheck384 ], [ %i.bp, %vector.scevcheck381 ], [ %i.bp, %.lr.ph239 ], [ %i.cf, %middle.block404 ]
  br label %scalar.ph386

scalar.ph386:                                     ; preds = %scalar.ph386.preheader, %scalar.ph386
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph386 ], [ %indvars.iv275.ph, %scalar.ph386.preheader ] ; 4 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv275
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !4  ; 2 uses
  %i.iq = and i32 %i.ip, %i.ha
  %i.ir = lshr i32 %i.ip, 1
  %i.is = and i32 %i.ir, %i.di
  %i.it = trunc nuw i64 %indvars.iv275 to i32     ; 3 uses
  %i.iu = sub i32 %i.it, %i.he
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  %i.iy = sub i32 %i.it, %i.hf
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !4
  %i.jc = sub i32 %i.it, %i.hg
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !4
  %i.jg = or i32 %i.jf, %i.jb
  %i.jh = lshr i32 %i.jg, 1
  %i.ji = and i32 %i.jh, %i.q
  %i.jj = or i32 %i.ix, %i.iq
  %i.jk = or i32 %i.jj, %i.is
  %i.jl = or i32 %i.jk, %i.ji
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv275
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !4
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %lftr.wideiv278 = trunc i64 %indvars.iv.next276 to i32
  %exitcond279 = icmp eq i32 %i.bq, %lftr.wideiv278
  br i1 %exitcond279, label %.loopexit211.loopexit, label %scalar.ph386, !llvm.loop !22

.loopexit211.loopexit:                            ; preds = %scalar.ph386, %middle.block404
  %.pre295 = load i32, ptr %i.bk, align 4, !tbaa !4
  br label %.loopexit211

.loopexit211:                                     ; preds = %.loopexit211.loopexit, %._crit_edge235, %._crit_edge230
  %i.jn = phi i32 [ %i.db, %._crit_edge230 ], [ %i.ha, %._crit_edge235 ], [ %i.ha, %.loopexit211.loopexit ] ; 4 uses
  %i.jo = phi i32 [ %i.fx, %._crit_edge230 ], [ %i.hd, %._crit_edge235 ], [ %.pre295, %.loopexit211.loopexit ] ; 3 uses
  %.2179 = phi i32 [ %.1178254, %._crit_edge230 ], [ %i.gp, %._crit_edge235 ], [ %i.gp, %.loopexit211.loopexit ] ; 3 uses
  %.4 = phi i32 [ %.3256, %._crit_edge230 ], [ %i.fz, %._crit_edge235 ], [ %i.fz, %.loopexit211.loopexit ] ; 2 uses
  %i.jp = add i32 %.2176255, 2                    ; 4 uses
  %i.jq = zext i32 %i.dc to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !8
  %i.jt = sext i8 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !4  ; 6 uses
  %i.jw = and i32 %i.jn, %i.jo
  %i.jx = lshr i32 %i.jo, 1
  %i.jy = and i32 %i.jx, %i.jv                    ; 2 uses
  %i.jz = or i32 %i.jy, %i.jw                     ; 2 uses
  store i32 %i.jz, ptr %i.bj, align 4, !tbaa !4
  br i1 %.not197226, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %.loopexit211
  %i.ka = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.kb = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.kc = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.scevcheck355

vector.scevcheck355:                              ; preds = %.lr.ph243
  %.reass473.a = add i32 %i.kb, %invariant.op472.a
  %i.kd = icmp ult i32 %.reass473.a, %6
  %.reass475.a = add i32 %i.ka, %invariant.op474.a
  %i.ke = icmp ult i32 %.reass475.a, %6
  %.reass477.a = add i32 %i.kc, %invariant.op476.a
  %i.kf = icmp ult i32 %.reass477.a, %6
  %i.kg = or i1 %i.kd, %i.ke
  %i.kh = or i1 %i.kg, %i.kf
  br i1 %i.kh, label %scalar.ph360.preheader, label %vector.memcheck358

vector.memcheck358:                               ; preds = %vector.scevcheck355
  %i.ki = sub i32 %i.bt, %i.kb
  %i.kj = zext i32 %i.ki to i64
  %i.kk = sub nsw i64 %i.bp, %i.kj
  %i.kl = shl nsw i64 %i.kk, 2
  %i.km = add nsw i64 %i.kl, -1
  %diff.check359 = icmp ult i64 %i.km, 15
  br i1 %diff.check359, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck358
  %broadcast.splatinsert365 = insertelement <4 x i32> poison, i32 %i.jn, i64 0
  %broadcast.splat366 = shufflevector <4 x i32> %broadcast.splatinsert365, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert367 = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %broadcast.splat368 = shufflevector <4 x i32> %broadcast.splatinsert367, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph362
  %index372 = phi i64 [ 0, %vector.ph362 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.kn = add i64 %index372, %i.bp                ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kn
  %wide.load373.a = load <4 x i32>, ptr %i.ko, align 4, !tbaa !4 ; 2 uses
  %i.kp = and <4 x i32> %wide.load373.a, %broadcast.splat366
  %i.kq = lshr <4 x i32> %wide.load373.a, splat (i32 1)
  %i.kr = and <4 x i32> %i.kq, %broadcast.splat368
  %i.ks = trunc nuw i64 %i.kn to i32              ; 3 uses
  %i.kt = sub i32 %i.ks, %i.ka
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ku
  %wide.load374.a = load <4 x i32>, ptr %i.kv, align 4, !tbaa !4
  %i.kw = sub i32 %i.ks, %i.kb
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kx
  %wide.load375.a = load <4 x i32>, ptr %i.ky, align 4, !tbaa !4
  %i.kz = sub i32 %i.ks, %i.kc
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.la
  %wide.load376 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !4
  %i.lc = or <4 x i32> %wide.load376, %wide.load375.a
  %i.ld = lshr <4 x i32> %i.lc, splat (i32 1)
  %i.le = and <4 x i32> %i.ld, %broadcast.splat370
  %i.lf = or <4 x i32> %wide.load374.a, %i.kp
  %i.lg = or <4 x i32> %i.lf, %i.kr
  %i.lh = or <4 x i32> %i.lg, %i.le
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kn
  store <4 x i32> %i.lh, ptr %i.li, align 4, !tbaa !4
  %index.next377 = add nuw i64 %index372, 4       ; 2 uses
  %i.lj = icmp eq i64 %index.next377, %n.vec364
  br i1 %i.lj, label %middle.block378, label %vector.body371, !llvm.loop !23

middle.block378:                                  ; preds = %vector.body371
  br i1 %cmp.n379, label %._crit_edge244.loopexit, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %vector.memcheck358, %vector.scevcheck355, %.lr.ph243, %middle.block378
  %indvars.iv280.ph = phi i64 [ %i.bp, %vector.memcheck358 ], [ %i.bp, %vector.scevcheck355 ], [ %i.bp, %.lr.ph243 ], [ %i.cj, %middle.block378 ]
  br label %scalar.ph360

scalar.ph360:                                     ; preds = %scalar.ph360.preheader, %scalar.ph360
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %scalar.ph360 ], [ %indvars.iv280.ph, %scalar.ph360.preheader ] ; 4 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv280
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4  ; 2 uses
  %i.lm = and i32 %i.ll, %i.jn
  %i.ln = lshr i32 %i.ll, 1
  %i.lo = and i32 %i.ln, %i.jv
  %i.lp = trunc nuw i64 %indvars.iv280 to i32     ; 3 uses
  %i.lq = sub i32 %i.lp, %i.ka
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !4
  %i.lu = sub i32 %i.lp, %i.kb
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !4
  %i.ly = sub i32 %i.lp, %i.kc
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !4
  %i.mc = or i32 %i.mb, %i.lx
  %i.md = lshr i32 %i.mc, 1
  %i.me = and i32 %i.md, %i.q
  %i.mf = or i32 %i.lt, %i.lm
  %i.mg = or i32 %i.mf, %i.lo
  %i.mh = or i32 %i.mg, %i.me
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv280
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !4
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %lftr.wideiv283 = trunc i64 %indvars.iv.next281 to i32
  %exitcond284 = icmp eq i32 %i.bq, %lftr.wideiv283
  br i1 %exitcond284, label %._crit_edge244.loopexit, label %scalar.ph360, !llvm.loop !24

._crit_edge244.loopexit:                          ; preds = %scalar.ph360, %middle.block378
  %.pre296 = load i32, ptr %i.bj, align 4, !tbaa !4
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %.loopexit211
  %i.mj = phi i32 [ %.pre296, %._crit_edge244.loopexit ], [ %i.jz, %.loopexit211 ]
  %i.mk = and i32 %i.mj, %i.r
  %.not204 = icmp eq i32 %i.mk, 0
  br i1 %.not204, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %._crit_edge244
  %i.ml = add nsw i32 %.4, 1                      ; 4 uses
  %i.mm = load i32, ptr @AND, align 4, !tbaa !4
  switch i32 %i.mm, label %.thread210 [
    i32 1, label %bb.t
    i32 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.mn = load i32, ptr %i.bn, align 8, !tbaa !4
  %i.mo = load i32, ptr @endposition, align 4, !tbaa !4 ; 2 uses
  %i.mp = and i32 %i.mo, %i.mn
  %i.mq = icmp eq i32 %i.mp, %i.mo
  br i1 %i.mq, label %bb.v, label %.thread210

bb.u:                                             ; preds = %bb.s
  %i.mr = load i32, ptr %i.bn, align 8, !tbaa !4
  %i.ms = load i32, ptr @endposition, align 4, !tbaa !4
  %i.mt = and i32 %i.ms, %i.mr
  %i.mu = icmp ne i32 %i.mt, 0
  %i.mv = zext i1 %i.mu to i32
  br label %.thread210

.thread210:                                       ; preds = %bb.s, %bb.t, %bb.u
  %i.mw = phi i32 [ 0, %bb.s ], [ %i.mv, %bb.u ], [ 0, %bb.t ]
  %i.mx = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not205 = icmp eq i32 %i.mw, %i.mx
  br i1 %.not205, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.thread210, %bb.t
  %i.my = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not206 = icmp eq i32 %i.my, 0
  br i1 %.not206, label %bb.w, label %.loopexit212.sink.split

bb.w:                                             ; preds = %bb.v
  %i.mz = icmp slt i32 %.2179, %i.cs
  br i1 %i.mz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.na = add i32 %i.jp, %i.bo
  call void @output(ptr noundef nonnull %i.c, i32 noundef %.2179, i32 noundef %i.na, i32 noundef %i.ml) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %.thread210
  %i.nb = sub i32 %i.jp, %i.o                     ; 3 uses
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !4
  br i1 %.not223314, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.y
  %i.nc = load i32, ptr @Init, align 4, !tbaa !4  ; 3 uses
  br i1 %min.iters.check343, label %scalar.ph342.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %.lr.ph248
  %broadcast.splatinsert347 = insertelement <4 x i32> poison, i32 %i.nc, i64 0
  %broadcast.splat348 = shufflevector <4 x i32> %broadcast.splatinsert347, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph344
  %index350 = phi i64 [ 0, %vector.ph344 ], [ %index.next351, %vector.body349 ] ; 2 uses
  %i.nd = add i64 %index350, %i.bi                ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nd ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store <4 x i32> %broadcast.splat348, ptr %i.ne, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat348, ptr %i.nf, align 4, !tbaa !4
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nd ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store <4 x i32> %broadcast.splat348, ptr %i.ng, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat348, ptr %i.nh, align 4, !tbaa !4
  %index.next351 = add nuw i64 %index350, 8       ; 2 uses
  %i.ni = icmp eq i64 %index.next351, %n.vec346
  br i1 %i.ni, label %middle.block352, label %vector.body349, !llvm.loop !25

middle.block352:                                  ; preds = %vector.body349
  br i1 %cmp.n353, label %._crit_edge249.loopexit, label %scalar.ph342.preheader

scalar.ph342.preheader:                           ; preds = %.lr.ph248, %middle.block352
  %indvars.iv285.ph = phi i64 [ %i.bi, %.lr.ph248 ], [ %i.ck, %middle.block352 ]
  br label %scalar.ph342

scalar.ph342:                                     ; preds = %scalar.ph342.preheader, %scalar.ph342
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %scalar.ph342 ], [ %indvars.iv285.ph, %scalar.ph342.preheader ] ; 4 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv285
  store i32 %i.nc, ptr %i.nj, align 4, !tbaa !4
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv285
  store i32 %i.nc, ptr %i.nk, align 4, !tbaa !4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1
  %.not207.not = icmp samesign ult i64 %indvars.iv285, %i.bl
  br i1 %.not207.not, label %scalar.ph342, label %._crit_edge249.loopexit, !llvm.loop !26

._crit_edge249.loopexit:                          ; preds = %scalar.ph342, %middle.block352
  %.pre297 = load i32, ptr %i.bk, align 4, !tbaa !4 ; 2 uses
  %.pre298 = lshr i32 %.pre297, 1
  %.pre299 = and i32 %.pre298, %i.jv
  br label %._crit_edge249

._crit_edge249:                                   ; preds = %._crit_edge249.loopexit, %bb.y
  %.pre-phi300 = phi i32 [ %.pre299, %._crit_edge249.loopexit ], [ %i.jy, %bb.y ]
  %i.nl = phi i32 [ %.pre297, %._crit_edge249.loopexit ], [ %i.jo, %bb.y ]
  %i.nm = load i32, ptr @Init1, align 4, !tbaa !4 ; 6 uses
  %i.nn = and i32 %i.nl, %i.nm
  %i.no = or i32 %.pre-phi300, %i.nn
  %i.np = and i32 %i.no, %i.ao
  store i32 %i.np, ptr %i.bj, align 4, !tbaa !4
  br i1 %.not197226, label %.loopexit, label %.lr.ph253

.lr.ph253:                                        ; preds = %._crit_edge249
  %i.nq = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.nr = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.ns = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check322, label %scalar.ph321.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph253
  %.reass479.a = add i32 %i.nr, %invariant.op478.a
  %i.nt = icmp ult i32 %.reass479.a, %i.br
  %.reass481.a = add i32 %i.nq, %invariant.op480.a
  %i.nu = icmp ult i32 %.reass481.a, %i.br
  %.reass483 = add i32 %i.ns, %invariant.op482
  %i.nv = icmp ult i32 %.reass483, %i.br
  %i.nw = or i1 %i.nt, %i.nu
  %i.nx = or i1 %i.nw, %i.nv
  br i1 %i.nx, label %scalar.ph321.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ny = sub i32 %i.bs, %i.nr
  %i.nz = zext i32 %i.ny to i64
  %i.oa = sub nsw i64 %i.bp, %i.nz
  %i.ob = shl nsw i64 %i.oa, 2
  %i.oc = add nsw i64 %i.ob, -1
  %diff.check = icmp ult i64 %i.oc, 15
  br i1 %diff.check, label %scalar.ph321.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert326 = insertelement <4 x i32> poison, i32 %i.nm, i64 0
  %broadcast.splat327 = shufflevector <4 x i32> %broadcast.splatinsert326, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert328 = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %broadcast.splat329 = shufflevector <4 x i32> %broadcast.splatinsert328, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph323
  %index333 = phi i64 [ 0, %vector.ph323 ], [ %index.next337, %vector.body332 ] ; 2 uses
  %i.od = add i64 %index333, %i.bp                ; 3 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.od
  %wide.load = load <4 x i32>, ptr %i.oe, align 4, !tbaa !4 ; 2 uses
  %i.of = and <4 x i32> %wide.load, %broadcast.splat327
  %i.og = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.oh = and <4 x i32> %i.og, %broadcast.splat329
  %i.oi = trunc nuw i64 %i.od to i32              ; 3 uses
  %i.oj = sub i32 %i.oi, %i.nq
  %i.ok = zext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ok
  %wide.load334 = load <4 x i32>, ptr %i.ol, align 4, !tbaa !4
  %i.om = sub i32 %i.oi, %i.nr
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.on
  %wide.load335 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !4
  %i.op = sub i32 %i.oi, %i.ns
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oq
  %wide.load336 = load <4 x i32>, ptr %i.or, align 4, !tbaa !4
  %i.os = or <4 x i32> %wide.load336, %wide.load335
  %i.ot = lshr <4 x i32> %i.os, splat (i32 1)
  %i.ou = and <4 x i32> %i.ot, %broadcast.splat331
  %i.ov = or <4 x i32> %wide.load334, %i.of
  %i.ow = or <4 x i32> %i.ov, %i.oh
  %i.ox = or <4 x i32> %i.ow, %i.ou
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.od
  store <4 x i32> %i.ox, ptr %i.oy, align 4, !tbaa !4
  %index.next337 = add nuw i64 %index333, 4       ; 2 uses
  %i.oz = icmp eq i64 %index.next337, %n.vec325
  br i1 %i.oz, label %middle.block338, label %vector.body332, !llvm.loop !27

middle.block338:                                  ; preds = %vector.body332
  br i1 %cmp.n339, label %.loopexit, label %scalar.ph321.preheader

scalar.ph321.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph253, %middle.block338
  %indvars.iv288.ph = phi i64 [ %i.bp, %vector.memcheck ], [ %i.bp, %vector.scevcheck ], [ %i.bp, %.lr.ph253 ], [ %i.co, %middle.block338 ]
  br label %scalar.ph321

scalar.ph321:                                     ; preds = %scalar.ph321.preheader, %scalar.ph321
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %scalar.ph321 ], [ %indvars.iv288.ph, %scalar.ph321.preheader ] ; 4 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv288
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !4  ; 2 uses
  %i.pc = and i32 %i.pb, %i.nm
  %i.pd = lshr i32 %i.pb, 1
  %i.pe = and i32 %i.pd, %i.jv
  %i.pf = trunc nuw i64 %indvars.iv288 to i32     ; 3 uses
  %i.pg = sub i32 %i.pf, %i.nq
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !4
  %i.pk = sub i32 %i.pf, %i.nr
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !4
  %i.po = sub i32 %i.pf, %i.ns
  %i.pp = zext i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !4
  %i.ps = or i32 %i.pr, %i.pn
  %i.pt = lshr i32 %i.ps, 1
  %i.pu = and i32 %i.pt, %i.q
  %i.pv = or i32 %i.pj, %i.pc
  %i.pw = or i32 %i.pv, %i.pe
  %i.px = or i32 %i.pw, %i.pu
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv288
  store i32 %i.px, ptr %i.py, align 4, !tbaa !4
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %lftr.wideiv291 = trunc i64 %indvars.iv.next289 to i32
  %exitcond292 = icmp eq i32 %i.bq, %lftr.wideiv291
  br i1 %exitcond292, label %.loopexit, label %scalar.ph321, !llvm.loop !28

.loopexit:                                        ; preds = %scalar.ph321, %middle.block338, %._crit_edge249, %._crit_edge244
  %i.pz = phi i32 [ %i.jn, %._crit_edge244 ], [ %i.nm, %._crit_edge249 ], [ %i.nm, %middle.block338 ], [ %i.nm, %scalar.ph321 ]
  %.3180 = phi i32 [ %.2179, %._crit_edge244 ], [ %i.nb, %._crit_edge249 ], [ %i.nb, %middle.block338 ], [ %i.nb, %scalar.ph321 ] ; 2 uses
  %.5 = phi i32 [ %.4, %._crit_edge244 ], [ %i.ml, %._crit_edge249 ], [ %i.ml, %middle.block338 ], [ %i.ml, %scalar.ph321 ] ; 2 uses
  %i.qa = icmp ult i32 %i.jp, %.0173317
  br i1 %i.qa, label %.lr.ph258, label %._crit_edge259, !llvm.loop !29

._crit_edge259:                                   ; preds = %.loopexit, %bb.k
  %.1178.lcssa = phi i32 [ %.0177262, %bb.k ], [ %.3180, %.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.0263, %bb.k ], [ %.5, %.loopexit ]
  %i.qb = sub nsw i32 %i.cs, %.1178.lcssa         ; 2 uses
  %i.qc = icmp sgt i32 %i.qb, 49152
  br i1 %i.qc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge259
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge259
  %.0181 = phi i32 [ 49152, %bb.z ], [ %i.qb, %._crit_edge259 ] ; 2 uses
  %i.qd = sext i32 %.0181 to i64                  ; 2 uses
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr inbounds i8, ptr %i.be, i64 %i.qe
  %i.qg = sext i32 %.1178.lcssa to i64
  %i.qh = getelementptr inbounds i8, ptr %i.c, i64 %i.qg
  %i.qi = call ptr @strncpy(ptr noundef nonnull %i.qf, ptr noundef nonnull %i.qh, i64 noundef %i.qd) #9 ; 0 uses
  %i.qj = sub nsw i32 49152, %.0181
  %spec.store.select1 = select i1 %i.ct, i32 49152, i32 %i.qj
  %i.qk = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.be, i32 noundef 49152) #9 ; 2 uses
  %i.ql = icmp sgt i32 %i.qk, 0
  br i1 %i.ql, label %bb.j, label %.loopexit212, !llvm.loop !30

.loopexit212.sink.split:                          ; preds = %bb.v, %bb.o
  %i.qm = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.qn = add nsw i32 %i.qm, 1
  store i32 %i.qn, ptr @num_of_matched, align 4, !tbaa !4
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %.loopexit212

.loopexit212:                                     ; preds = %bb.aa, %.loopexit212.sink.split, %.preheader
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
declare i64 @llvm.umax.i64(i64, i64) #7

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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !15, !14}
!17 = distinct !{!17, !10, !14, !15}
!18 = distinct !{!18, !10, !14}
!19 = distinct !{!19, !10, !14, !15}
!20 = distinct !{!20, !10, !15, !14}
!21 = distinct !{!21, !10, !14, !15}
!22 = distinct !{!22, !10, !14}
!23 = distinct !{!23, !10, !14, !15}
!24 = distinct !{!24, !10, !14}
!25 = distinct !{!25, !10, !14, !15}
!26 = distinct !{!26, !10, !15, !14}
!27 = distinct !{!27, !10, !14, !15}
!28 = distinct !{!28, !10, !14}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
end_hunk_0
