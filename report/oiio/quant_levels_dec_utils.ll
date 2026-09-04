Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/quant_levels_dec_utils?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @WebPDequantizeLevels(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = sdiv i32 %4, 25                          ; 2 uses
  %or.cond = icmp ugt i32 %4, 100
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp slt i32 %1, 1
  %or.cond3 = or i1 %i.c, %i.d
  %i.e = icmp slt i32 %2, 1
  %or.cond5 = or i1 %or.cond3, %i.e
  br i1 %or.cond5, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i32 %i.b, 1
  %.not = icmp slt i32 %i.f, %1
  %i.g = add nsw i32 %1, -1
  %i.h = lshr i32 %i.g, 1
  %.024 = select i1 %.not, i32 %i.b, i32 %i.h     ; 2 uses
  %i.i = shl nuw nsw i32 %.024, 1
  %.not30 = icmp slt i32 %i.i, %2
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = lshr i32 %i.j, 1
  %.1 = select i1 %.not30, i32 %.024, i32 %i.k    ; 14 uses
  %i.l = sub nsw i32 0, %.1                       ; 2 uses
  %i.m = icmp sgt i32 %.1, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = shl nuw nsw i32 %.1, 1                   ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = shl nuw i32 %1, 1                        ; 4 uses
  %i.q = mul nuw i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64                     ; 5 uses
  %i.s = zext nneg i32 %1 to i64                  ; 12 uses
  %i.t = shl nuw nsw i64 %i.s, 1                  ; 4 uses
  %i.u = add nuw nsw i64 %i.t, 4094
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.v) #6 ; 16 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %.preheader.lr.ph.split.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %bb.d
  %i.y = or disjoint i32 %i.n, 1                  ; 3 uses
  %i.z = mul nuw nsw i32 %i.y, %1
  %i.aa = zext nneg i32 %i.z to i64               ; 7 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aa ; 16 uses
  %i.ac = sub nsw i64 0, %i.s
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ad, i8 0, i64 %i.t, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.ae = sext i32 %3 to i64                      ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.split.i.i
  %.sroa.52.0 = phi i32 [ 255, %.preheader.lr.ph.split.i.i ], [ %.sroa.52.2, %._crit_edge.i.i ]
  %.sroa.55.0 = phi i32 [ 0, %.preheader.lr.ph.split.i.i ], [ %.sroa.55.2, %._crit_edge.i.i ]
  %.promoted4454.i.i = phi i32 [ 0, %.preheader.lr.ph.split.i.i ], [ %.promoted4452.i.i, %._crit_edge.i.i ] ; 2 uses
  %.promoted51.i.i = phi i32 [ 255, %.preheader.lr.ph.split.i.i ], [ %.promoted49.i.i, %._crit_edge.i.i ] ; 2 uses
  %.046.i.i = phi ptr [ %0, %.preheader.lr.ph.split.i.i ], [ %i.aq, %._crit_edge.i.i ] ; 2 uses
  %.03745.i.i = phi i32 [ 0, %.preheader.lr.ph.split.i.i ], [ %i.ar, %._crit_edge.i.i ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i
  %.sroa.52.1 = phi i32 [ %.sroa.52.0, %.preheader.i.i ], [ %.sroa.52.2, %bb.e ]
  %.sroa.55.1 = phi i32 [ %.sroa.55.0, %.preheader.i.i ], [ %.sroa.55.2, %bb.e ]
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %.promoted4453.i.i = phi i32 [ %.promoted4454.i.i, %.preheader.i.i ], [ %.promoted4452.i.i, %bb.e ]
  %.promoted50.i.i = phi i32 [ %.promoted51.i.i, %.preheader.i.i ], [ %.promoted49.i.i, %bb.e ]
  %i.af = phi i32 [ %.promoted4454.i.i, %.preheader.i.i ], [ %i.an, %bb.e ] ; 2 uses
  %i.ag = phi i32 [ %.promoted51.i.i, %.preheader.i.i ], [ %i.al, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.046.i.i, i64 %indvars.iv.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29  ; 2 uses
  %i.aj = zext i8 %i.ai to i32                    ; 8 uses
  %i.ak = icmp sgt i32 %i.ag, %i.aj               ; 2 uses
  %.sroa.52.2 = select i1 %i.ak, i32 %i.aj, i32 %.sroa.52.1 ; 3 uses
  %.promoted49.i.i = select i1 %i.ak, i32 %i.aj, i32 %.promoted50.i.i ; 3 uses
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.aj)
  %i.am = icmp slt i32 %i.af, %i.aj               ; 2 uses
  %.sroa.55.2 = select i1 %i.am, i32 %i.aj, i32 %.sroa.55.1 ; 3 uses
  %.promoted4452.i.i = select i1 %i.am, i32 %i.aj, i32 %.promoted4453.i.i ; 3 uses
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %i.aj)
  %i.ao = zext i8 %i.ai to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  store i8 1, ptr %i.ap, align 1, !tbaa !29
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.e, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %bb.e
  %i.aq = getelementptr inbounds i8, ptr %.046.i.i, i64 %i.ae
  %i.ar = add nuw nsw i32 %.03745.i.i, 1          ; 2 uses
  %exitcond58.not.i.i = icmp eq i32 %i.ar, %2
  br i1 %exitcond58.not.i.i, label %._crit_edge47.split.i.i, label %.preheader.i.i, !llvm.loop !8

._crit_edge47.split.i.i:                          ; preds = %._crit_edge.i.i
  %i.as = sub nsw i32 %.promoted4452.i.i, %.promoted49.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %._crit_edge47.split.i.i
  %.sroa.49.0 = phi i32 [ 0, %._crit_edge47.split.i.i ], [ %.sroa.49.1.1, %bb.l ] ; 2 uses
  %i.at = phi i32 [ %i.as, %._crit_edge47.split.i.i ], [ %i.bh, %bb.l ] ; 3 uses
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge47.split.i.i ], [ %indvars.iv.next60.i.i.1, %bb.l ] ; 4 uses
  %.03656.i.i = phi i32 [ -1, %._crit_edge47.split.i.i ], [ %.1.i.i.1, %bb.l ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv59.i.i
  %i.av = load i8, ptr %i.au, align 2, !tbaa !29
  %.not.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = add nsw i32 %.sroa.49.0, 1              ; 2 uses
  %i.ax = icmp sgt i32 %.03656.i.i, -1
  %i.ay = trunc nuw nsw i64 %indvars.iv59.i.i to i32 ; 3 uses
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = sub nsw i32 %i.ay, %.03656.i.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.at)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.49.1 = phi i32 [ %.sroa.49.0, %bb.f ], [ %i.aw, %bb.g ], [ %i.aw, %bb.h ] ; 2 uses
  %i.ba = phi i32 [ %i.at, %bb.f ], [ %i.at, %bb.g ], [ %spec.select, %bb.h ] ; 3 uses
  %.1.i.i = phi i32 [ %.03656.i.i, %bb.f ], [ %i.ay, %bb.g ], [ %i.ay, %bb.h ] ; 3 uses
  %indvars.iv.next60.i.i = or disjoint i64 %indvars.iv59.i.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next60.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %.not.i.i.1 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.1, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = add nsw i32 %.sroa.49.1, 1              ; 2 uses
  %i.be = icmp sgt i32 %.1.i.i, -1
  %i.bf = trunc nuw nsw i64 %indvars.iv.next60.i.i to i32 ; 3 uses
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = sub nsw i32 %i.bf, %.1.i.i
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.ba)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.49.1.1 = phi i32 [ %.sroa.49.1, %bb.i ], [ %i.bd, %bb.j ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bh = phi i32 [ %i.ba, %bb.i ], [ %i.ba, %bb.j ], [ %spec.select.1, %bb.k ] ; 3 uses
  %.1.i.i.1 = phi i32 [ %.1.i.i, %bb.i ], [ %i.bf, %bb.j ], [ %i.bf, %bb.k ]
  %indvars.iv.next60.i.i.1 = add nuw nsw i64 %indvars.iv59.i.i, 2 ; 2 uses
  %exitcond62.not.i.i.1 = icmp eq i64 %indvars.iv.next60.i.i.1, 256
  br i1 %exitcond62.not.i.i.1, label %CountLevels.exit.i, label %bb.f, !llvm.loop !9

CountLevels.exit.i:                               ; preds = %bb.l
  %i.bi = getelementptr i8, ptr %i.w, i64 %i.r    ; 12 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.t   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2046 ; 4 uses
  %i.bl = shl i32 %i.bh, 2                        ; 3 uses
  %i.bm = mul i32 %i.bh, 12
  %i.bn = ashr exact i32 %i.bm, 2                 ; 3 uses
  %i.bo = sub nsw i32 %i.bl, %i.bn
  %i.bp = sext i32 %i.bl to i64
  %i.bq = sext i32 %i.bn to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %CountLevels.exit.i
  %indvars.iv.i52.i = phi i64 [ 1, %CountLevels.exit.i ], [ %indvars.iv.next.i54.i, %bb.p ] ; 6 uses
  %.not.i53.i = icmp sgt i64 %indvars.iv.i52.i, %i.bq
  %i.br = trunc i64 %indvars.iv.i52.i to i32      ; 2 uses
  br i1 %.not.i53.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bs = icmp slt i64 %indvars.iv.i52.i, %i.bp
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = sub i32 %i.bl, %i.br
  %i.bu = mul i32 %i.bt, %i.bn
  %i.bv = sdiv i32 %i.bu, %i.bo
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bw = phi i32 [ 0, %bb.n ], [ %i.bv, %bb.o ], [ %i.br, %bb.m ]
  %i.bx = lshr i32 %i.bw, 2
  %i.by = trunc i32 %i.bx to i16                  ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.i52.i
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !32
  %i.ca = sub i16 0, %i.by
  %i.cb = sub nsw i64 0, %indvars.iv.i52.i
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.cb
  store i16 %i.ca, ptr %i.cc, align 2, !tbaa !32
  %indvars.iv.next.i54.i = add nuw nsw i64 %indvars.iv.i52.i, 1 ; 2 uses
  %exitcond.not.i55.i = icmp eq i64 %indvars.iv.next.i54.i, 1024
  br i1 %exitcond.not.i55.i, label %bb.q, label %bb.m, !llvm.loop !10

bb.q:                                             ; preds = %bb.p
  %i.cd = mul nuw nsw i32 %i.y, %i.y
  %i.ce = udiv i32 262144, %i.cd                  ; 8 uses
  store i16 0, ptr %i.bk, align 2, !tbaa !32
  %i.cf = icmp sgt i32 %.sroa.49.1.1, 2
  %i.cg = icmp sgt i32 %2, %i.l
  %or.cond108 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond108, label %.lr.ph.preheader.i.lr.ph, label %.loopexit

.lr.ph.preheader.i.lr.ph:                         ; preds = %bb.q
  %i.ch = zext nneg i32 %.1 to i64                ; 7 uses
  %i.ci = add nuw i32 %.1, 1                      ; 3 uses
  %wide.trip.count.i34 = zext i32 %i.ci to i64    ; 12 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ab, i64 %i.ch ; 6 uses
  %i.cj = sub nsw i32 %1, %.1                     ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  %i.cl = xor i32 %.1, -1                         ; 3 uses
  %i.cm = zext i32 %i.cj to i64                   ; 3 uses
  %i.cn = getelementptr [2 x i8], ptr %i.ab, i64 %i.s ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -2     ; 3 uses
  %5 = sext i32 %i.cl to i64                      ; 3 uses
  %invariant.gep75.i = getelementptr [2 x i8], ptr %i.ab, i64 %5 ; 2 uses
  %i.cp = add nsw i32 %i.p, -2                    ; 2 uses
  %6 = add i32 %i.p, -2
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.r
  %i.cq = sub nsw i64 2, %i.t
  %scevgep110 = getelementptr i8, ptr %i.w, i64 %i.cq
  %i.cr = add i32 %i.p, -2
  %i.cs = shl nuw nsw i64 %i.aa, 1
  %i.ct = getelementptr i8, ptr %i.w, i64 %i.cs
  %scevgep112 = getelementptr i8, ptr %i.ct, i64 2
  %7 = add nsw i64 %5, %i.aa
  %8 = shl nsw i64 %7, 1
  %scevgep114 = getelementptr i8, ptr %i.w, i64 %8
  %9 = add nsw i64 %5, %i.s
  %i.cu = add nsw i64 %9, %i.aa
  %10 = shl nsw i64 %i.cu, 1
  %scevgep116 = getelementptr i8, ptr %i.w, i64 %10
  %i.cv = add nuw nsw i64 %wide.trip.count.i34, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cm)
  %i.cw = add nuw nsw i64 %i.ch, %i.aa
  %i.cx = shl nuw nsw i64 %i.cw, 1
  %i.cy = shl nuw nsw i64 %wide.trip.count.i34, 1 ; 3 uses
  %i.cz = add nuw nsw i64 %i.cy, %i.r             ; 2 uses
  %i.da = shl nuw nsw i64 %i.aa, 1                ; 3 uses
  %scevgep146 = getelementptr i8, ptr %i.w, i64 %i.cz ; 2 uses
  %i.db = shl nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.dc = add nuw nsw i64 %i.db, %i.da            ; 3 uses
  %i.dd = getelementptr i8, ptr %i.w, i64 %i.dc
  %scevgep147 = getelementptr i8, ptr %i.dd, i64 -2
  %i.de = getelementptr i8, ptr %i.w, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 %i.cy
  %scevgep148 = getelementptr i8, ptr %i.df, i64 -2
  %i.dg = add nuw nsw i64 %i.dc, 2
  %i.dh = sub nsw i64 %i.dg, %i.cy
  %scevgep149 = getelementptr i8, ptr %i.w, i64 %i.dh
  %i.di = getelementptr i8, ptr %i.w, i64 %i.db
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.da
  %scevgep150 = getelementptr i8, ptr %i.dj, i64 2
  %i.dk = zext nneg i32 %.1 to i64
  %xtraiter = and i64 %i.s, 1
  %i.dl = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod178 = trunc i32 %1 to i1
  %min.iters.check159 = icmp ult i32 %.1, 7
  %bound0151 = icmp ult ptr %i.bi, %scevgep148
  %bound1152 = icmp ult ptr %scevgep147, %scevgep146
  %found.conflict153 = and i1 %bound0151, %bound1152
  %bound0154 = icmp ult ptr %i.bi, %scevgep150
  %bound1155 = icmp ult ptr %scevgep149, %scevgep146
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %found.conflict153, %found.conflict156
  %n.vec161 = and i64 %wide.trip.count.i34, 4294967288 ; 3 uses
  %broadcast.splatinsert162 = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat163 = shufflevector <8 x i32> %broadcast.splatinsert162, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n171 = icmp eq i64 %n.vec161, %wide.trip.count.i34
  %xtraiter179 = and i64 %wide.trip.count.i34, 1
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  %i.dm = add nuw nsw i64 %wide.trip.count.i34, 1
  %i.dn = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.cm)
  %i.do = sub nsw i64 %i.dn, %wide.trip.count.i34 ; 3 uses
  %min.iters.check132 = icmp ugt i64 %i.do, 7
  %i.dp = sub nsw i64 %wide.trip.count.i34, %umax
  %.not173 = icmp ugt i64 %i.dp, -2147483649
  %or.cond174 = select i1 %min.iters.check132, i1 %.not173, i1 false
  %i.dq = sub nsw i64 %i.cx, %i.r
  %diff.check = icmp ugt i64 %i.dq, -16
  %i.dr = sub nsw i64 %i.da, %i.cz
  %diff.check129 = icmp ugt i64 %i.dr, -16
  %conflict.rdx130 = or i1 %diff.check, %diff.check129
  %n.vec134 = and i64 %i.do, -8                   ; 3 uses
  %i.ds = add nsw i64 %n.vec134, %wide.trip.count.i34 ; 2 uses
  %broadcast.splatinsert135 = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat136 = shufflevector <8 x i32> %broadcast.splatinsert135, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n143 = icmp eq i64 %i.do, %n.vec134
  %bound1 = icmp ult ptr %i.co, %i.bj
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %bb.t
  %.sroa.43.098 = phi ptr [ %i.ad, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.36.097, %bb.t ] ; 3 uses
  %.sroa.36.097 = phi ptr [ %i.w, %.lr.ph.preheader.i.lr.ph ], [ %spec.select86, %bb.t ] ; 5 uses
  %.sroa.23.096 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.23.1, %bb.t ] ; 3 uses
  %.sroa.20.095 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.20.2, %bb.t ] ; 4 uses
  %.sroa.14.094 = phi i32 [ %i.l, %.lr.ph.preheader.i.lr.ph ], [ %i.kw, %bb.t ] ; 4 uses
  br i1 %i.dl, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %.03437.i = phi i16 [ %i.eh, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !29
  %i.dv = zext i8 %i.du to i16
  %i.dw = add i16 %.03437.i, %i.dv                ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !32
  %i.dz = add i16 %i.dw, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !32
  %i.ec = sub i16 %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !32
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !32
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.next.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !29
  %i.eg = zext i8 %i.ef to i16
  %i.eh = add i16 %i.dw, %i.eg                    ; 3 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.next.i
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !32
  %i.ek = add i16 %i.eh, %i.ej                    ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.next.i ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !32
  %i.en = sub i16 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !32
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !32
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %.03437.i.epil.init = phi i16 [ 0, %.lr.ph.preheader.i ], [ %i.eh, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i.epil.init
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !29
  %i.er = zext i8 %i.eq to i16
  %i.es = add i16 %.03437.i.epil.init, %i.er
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i.epil.init
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !32
  %i.ev = add i16 %i.es, %i.eu                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !32
  %i.ey = sub i16 %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !32
  store i16 %i.ev, ptr %i.ew, align 2, !tbaa !32
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %i.s ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ab
  %spec.select86 = select i1 %i.fb, ptr %i.w, ptr %i.fa
  %i.fc = icmp sgt i32 %.sroa.14.094, -1
  %i.fd = icmp slt i32 %.sroa.14.094, %i.j
  %or.cond88 = select i1 %i.fc, i1 %i.fd, i1 false
  %.sroa.20.2.idx = select i1 %or.cond88, i64 %i.ae, i64 0
  %.sroa.20.2 = getelementptr inbounds i8, ptr %.sroa.20.095, i64 %.sroa.20.2.idx
  %.not32 = icmp slt i32 %.sroa.14.094, %.1
  br i1 %.not32, label %bb.t, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %._crit_edge.i.loopexit
  %brmerge = select i1 %min.iters.check159, i1 true, i1 %conflict.rdx157
  br i1 %brmerge, label %.lr.ph.i35.preheader176, label %vector.body164

vector.body164:                                   ; preds = %.lr.ph.i35.preheader, %vector.body164
  %index165 = phi i64 [ %index.next169, %vector.body164 ], [ 0, %.lr.ph.i35.preheader ] ; 4 uses
  %i.fe = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index165
  %i.ff = getelementptr i8, ptr %i.fe, i64 -2
  %wide.load166 = load <8 x i16>, ptr %i.ff, align 2, !tbaa !32, !alias.scope !33
  %i.fg = sub nuw nsw i64 %i.ch, %index165
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -14
  %wide.load167 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !32, !alias.scope !34
  %reverse168 = shufflevector <8 x i16> %wide.load167, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fj = add <8 x i16> %reverse168, %wide.load166
  %i.fk = zext <8 x i16> %i.fj to <8 x i32>
  %i.fl = mul nuw <8 x i32> %broadcast.splat163, %i.fk
  %i.fm = lshr <8 x i32> %i.fl, splat (i32 16)
  %i.fn = trunc nuw <8 x i32> %i.fm to <8 x i16>
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index165
  store <8 x i16> %i.fn, ptr %i.fo, align 2, !tbaa !32, !alias.scope !35, !noalias !36
  %index.next169 = add nuw i64 %index165, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next169, %n.vec161
  br i1 %i.fp, label %middle.block170, label %vector.body164, !llvm.loop !16

middle.block170:                                  ; preds = %vector.body164
  br i1 %cmp.n171, label %.preheader53.i, label %.lr.ph.i35.preheader176

.lr.ph.i35.preheader176:                          ; preds = %.lr.ph.i35.preheader, %middle.block170
  %indvars.iv.i36.ph = phi i64 [ %n.vec161, %middle.block170 ], [ 0, %.lr.ph.i35.preheader ] ; 6 uses
  br i1 %lcmp.mod180.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader176
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36.ph
  %i.fq = getelementptr i8, ptr %gep.i.prol, i64 -2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !32
  %i.fs = sub nuw nsw i64 %i.ch, %indvars.iv.i36.ph
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !32
  %i.fv = add i16 %i.fu, %i.fr
  %i.fw = zext i16 %i.fv to i32
  %i.fx = mul nuw i32 %i.ce, %i.fw
  %i.fy = lshr i32 %i.fx, 16
  %i.fz = trunc nuw i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36.ph
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !32
  %indvars.iv.next.i37.prol = or disjoint i64 %indvars.iv.i36.ph, 1
  br label %.lr.ph.i35.prol.loopexit

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader176
  %indvars.iv.i36.unr = phi i64 [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader176 ], [ %indvars.iv.next.i37.prol, %.lr.ph.i35.prol ]
  %i.gb = icmp eq i64 %indvars.iv.i36.ph, %i.dk
  br i1 %i.gb, label %.preheader53.i, label %.lr.ph.i35

.preheader53.i:                                   ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block170
  br i1 %i.ck, label %.lr.ph57.i.preheader, label %.preheader.i

.lr.ph57.i.preheader:                             ; preds = %.preheader53.i
  %or.cond174.not = xor i1 %or.cond174, true
  %brmerge183 = select i1 %or.cond174.not, i1 true, i1 %conflict.rdx130
  br i1 %brmerge183, label %.lr.ph57.i.preheader175, label %vector.body137

vector.body137:                                   ; preds = %.lr.ph57.i.preheader, %vector.body137
  %index138 = phi i64 [ %index.next141, %vector.body137 ], [ 0, %.lr.ph57.i.preheader ] ; 2 uses
  %i.gc = add nuw i64 %index138, %wide.trip.count.i34 ; 3 uses
  %i.gd = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gc
  %wide.load139 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !32
  %i.ge = trunc nuw nsw i64 %i.gc to i32
  %i.gf = add nsw i32 %i.ge, %i.cl
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.gg
  %wide.load140 = load <8 x i16>, ptr %i.gh, align 2, !tbaa !32
  %i.gi = sub <8 x i16> %wide.load139, %wide.load140
  %i.gj = zext <8 x i16> %i.gi to <8 x i32>
  %i.gk = mul nuw <8 x i32> %broadcast.splat136, %i.gj
  %i.gl = lshr <8 x i32> %i.gk, splat (i32 16)
  %i.gm = trunc nuw <8 x i32> %i.gl to <8 x i16>
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.gc
  store <8 x i16> %i.gm, ptr %i.gn, align 2, !tbaa !32
  %index.next141 = add nuw i64 %index138, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.go, label %middle.block142, label %vector.body137, !llvm.loop !17

middle.block142:                                  ; preds = %vector.body137
  br i1 %cmp.n143, label %.preheader.loopexit.i, label %.lr.ph57.i.preheader175

.lr.ph57.i.preheader175:                          ; preds = %.lr.ph57.i.preheader, %middle.block142
  %indvars.iv63.i.ph = phi i64 [ %i.ds, %middle.block142 ], [ %wide.trip.count.i34, %.lr.ph57.i.preheader ]
  br label %.lr.ph57.i

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37.1, %.lr.ph.i35 ], [ %indvars.iv.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36
  %i.gp = getelementptr i8, ptr %gep.i, i64 -2
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !32
  %i.gr = sub nuw nsw i64 %i.ch, %indvars.iv.i36
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !32
  %i.gu = add i16 %i.gt, %i.gq
  %i.gv = zext i16 %i.gu to i32
  %i.gw = mul nuw i32 %i.ce, %i.gv
  %i.gx = lshr i32 %i.gw, 16
  %i.gy = trunc nuw i32 %i.gx to i16
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !32
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 3 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i37
  %i.ha = getelementptr i8, ptr %gep.i.1, i64 -2
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !32
  %i.hc = sub nuw nsw i64 %i.ch, %indvars.iv.next.i37
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !32
  %i.hf = add i16 %i.he, %i.hb
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nuw i32 %i.ce, %i.hg
  %i.hi = lshr i32 %i.hh, 16
  %i.hj = trunc nuw i32 %i.hi to i16
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next.i37
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !32
  %indvars.iv.next.i37.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %exitcond.not.i38.1 = icmp eq i64 %indvars.iv.next.i37.1, %wide.trip.count.i34
  br i1 %exitcond.not.i38.1, label %.preheader53.i, label %.lr.ph.i35, !llvm.loop !18

.preheader.loopexit.i:                            ; preds = %.lr.ph57.i, %middle.block142
  %indvars.iv.next64.i.lcssa = phi i64 [ %i.ds, %middle.block142 ], [ %indvars.iv.next64.i, %.lr.ph57.i ]
  %i.hl = trunc nuw nsw i64 %indvars.iv.next64.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ci, %.preheader53.i ], [ %i.hl, %.preheader.loopexit.i ] ; 4 uses
  %i.hm = icmp slt i32 %.1.lcssa.i, %1
  br i1 %i.hm, label %.lr.ph60.i, label %.lr.ph.i41.preheader

.lr.ph60.i:                                       ; preds = %.preheader.i
  %i.hn = zext i32 %.1.lcssa.i to i64             ; 9 uses
  %i.ho = sub nsw i64 %i.s, %i.hn                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ho, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph60.i
  %i.hp = xor i64 %i.hn, -1
  %i.hq = add nsw i64 %i.hp, %i.s                 ; 2 uses
  %i.hr = add i32 %.1, %.1.lcssa.i
  %i.hs = sub i32 %6, %i.hr                       ; 2 uses
  %i.ht = trunc i64 %i.hq to i32
  %i.hu = sub i32 %i.hs, %i.ht
  %i.hv = icmp sgt i32 %i.hu, %i.hs
  %i.hw = icmp ugt i64 %i.hq, 4294967295
  %i.hx = or i1 %i.hv, %i.hw
  br i1 %i.hx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hy = shl nuw nsw i64 %i.hn, 1                ; 2 uses
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.hy ; 3 uses
  %i.hz = add i32 %.1, %.1.lcssa.i
  %i.ia = sub i32 %i.cr, %i.hz
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = add nsw i64 %i.aa, %i.ib
  %i.id = add nsw i64 %i.ic, %i.hn
  %i.ie = shl nsw i64 %i.id, 1
  %scevgep113.a = getelementptr i8, ptr %scevgep110, i64 %i.ie
  %i.if = shl nsw i64 %i.ib, 1
  %scevgep115.a = getelementptr i8, ptr %scevgep112, i64 %i.if
  %scevgep116.a = getelementptr i8, ptr %scevgep114, i64 %i.hy
  %bound0 = icmp ult ptr %scevgep109, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  %bound0117 = icmp ult ptr %scevgep109, %scevgep115.a
  %bound1118 = icmp ult ptr %scevgep113.a, %i.bj
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx = or i1 %found.conflict, %found.conflict119
  %bound0120 = icmp ult ptr %scevgep109, %scevgep116
  %bound1121 = icmp ult ptr %scevgep116.a, %i.bj
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx, %found.conflict122
  br i1 %conflict.rdx123, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ho, -8                      ; 3 uses
  %i.ig = add nsw i64 %n.vec, %i.hn
  %i.ih = load i16, ptr %i.co, align 2, !tbaa !32, !alias.scope !39
  %i.ii = shl i16 %i.ih, 1
  %broadcast.splatinsert125 = insertelement <8 x i16> poison, i16 %i.ii, i64 0
  %broadcast.splat126 = shufflevector <8 x i16> %broadcast.splatinsert125, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ij = add nuw i64 %index, %i.hn               ; 3 uses
  %i.ik = trunc nsw i64 %i.ij to i32
  %i.il = add i32 %.1, %i.ik
  %i.im = sub i32 %i.cp, %i.il
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.in
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -14
  %wide.load = load <8 x i16>, ptr %i.ip, align 2, !tbaa !32, !alias.scope !40
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.iq = getelementptr [2 x i8], ptr %invariant.gep75.i, i64 %i.ij
  %wide.load124 = load <8 x i16>, ptr %i.iq, align 2, !tbaa !32, !alias.scope !41
  %i.ir = add <8 x i16> %reverse, %wide.load124
  %i.is = sub <8 x i16> %broadcast.splat126, %i.ir
  %i.it = zext <8 x i16> %i.is to <8 x i32>
  %i.iu = mul nuw <8 x i32> %broadcast.splat, %i.it
  %i.iv = lshr <8 x i32> %i.iu, splat (i32 16)
  %i.iw = trunc nuw <8 x i32> %i.iv to <8 x i16>
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ij
  store <8 x i16> %i.iw, ptr %i.ix, align 2, !tbaa !32, !alias.scope !42, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ho, %n.vec
  br i1 %cmp.n, label %.lr.ph.i41.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph60.i, %middle.block
  %indvars.iv66.i.ph = phi i64 [ %i.hn, %vector.memcheck ], [ %i.hn, %vector.scevcheck ], [ %i.hn, %.lr.ph60.i ], [ %i.ig, %middle.block ]
  br label %scalar.ph

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.preheader175, %.lr.ph57.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph57.i ], [ %indvars.iv63.i.ph, %.lr.ph57.i.preheader175 ] ; 4 uses
  %gep74.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv63.i
  %i.iz = load i16, ptr %gep74.i, align 2, !tbaa !32
  %i.ja = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.jb = add nsw i32 %i.ja, %i.cl
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jc
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !32
  %i.jf = sub i16 %i.iz, %i.je
  %i.jg = zext i16 %i.jf to i32
  %i.jh = mul nuw i32 %i.ce, %i.jg
  %i.ji = lshr i32 %i.jh, 16
  %i.jj = trunc nuw i32 %i.ji to i16
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv63.i
  store i16 %i.jj, ptr %i.jk, align 2, !tbaa !32
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 3 uses
  %i.jl = icmp samesign ult i64 %indvars.iv.next64.i, %i.cm
  br i1 %i.jl, label %.lr.ph57.i, label %.preheader.loopexit.i, !llvm.loop !25

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph ], [ %indvars.iv66.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jm = load i16, ptr %i.co, align 2, !tbaa !32
  %i.jn = shl i16 %i.jm, 1
  %i.jo = trunc nsw i64 %indvars.iv66.i to i32
  %i.jp = add i32 %.1, %i.jo
  %i.jq = sub i32 %i.cp, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jr
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !32
  %i.ju = getelementptr [2 x i8], ptr %invariant.gep75.i, i64 %indvars.iv66.i
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !32
  %i.jw = add i16 %i.jt, %i.jv
  %i.jx = sub i16 %i.jn, %i.jw
  %i.jy = zext i16 %i.jx to i32
  %i.jz = mul nuw i32 %i.ce, %i.jy
  %i.ka = lshr i32 %i.jz, 16
  %i.kb = trunc nuw i32 %i.ka to i16
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv66.i
  store i16 %i.kb, ptr %i.kc, align 2, !tbaa !32
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %i.s
  br i1 %exitcond70.not.i, label %.lr.ph.i41.preheader, label %scalar.ph, !llvm.loop !26

.lr.ph.i41.preheader:                             ; preds = %scalar.ph, %middle.block, %.preheader.i
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader, %bb.s
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %bb.s ], [ 0, %.lr.ph.i41.preheader ] ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.23.096, i64 %indvars.iv.i43 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29
  %i.kf = zext i8 %i.ke to i32                    ; 4 uses
  %i.kg = icmp sgt i32 %.sroa.55.2, %i.kf
  %i.kh = icmp slt i32 %.sroa.52.2, %i.kf
  %or.cond89 = select i1 %i.kg, i1 %i.kh, i1 false
  br i1 %or.cond89, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i41
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i43
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !32
  %i.kk = zext i16 %i.kj to i32
  %i.kl = shl nuw nsw i32 %i.kf, 2
  %i.km = sub nsw i32 %i.kk, %i.kl
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !32
  %i.kq = sext i16 %i.kp to i32
  %i.kr = add nsw i32 %i.kq, %i.kf
  %i.ks = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 33023) %i.kr, i32 0)
  %i.kt = tail call i32 @llvm.umin.i32(i32 %i.ks, i32 255)
  %i.ku = trunc nuw i32 %i.kt to i8
  store i8 %i.ku, ptr %i.kd, align 1, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %i.s
  br i1 %exitcond.not.i45, label %ApplyFilter.exit.loopexit, label %.lr.ph.i41, !llvm.loop !27

ApplyFilter.exit.loopexit:                        ; preds = %bb.s
  %i.kv = getelementptr inbounds i8, ptr %.sroa.23.096, i64 %i.ae
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.loopexit, %ApplyFilter.exit.loopexit
  %.sroa.23.1 = phi ptr [ %.sroa.23.096, %._crit_edge.i.loopexit ], [ %i.kv, %ApplyFilter.exit.loopexit ]
  %i.kw = add nsw i32 %.sroa.14.094, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.kw, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i, !llvm.loop !28

.loopexit:                                        ; preds = %bb.t, %bb.q
  tail call void @WebPSafeFree(ptr noundef nonnull %i.w) #6
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %.loopexit, %bb.b, %bb.a
  %.126 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.loopexit ], [ 0, %bb.d ]
  ret i32 %.126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = distinct !{!7, !30}
!8 = distinct !{!8, !30}
!9 = distinct !{!9, !30}
!10 = distinct !{!10, !30}
!11 = distinct !{!11, !30}
!12 = distinct !{!12, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !30, !37, !38}
!17 = distinct !{!17, !30, !37, !38}
!18 = distinct !{!18, !30, !37}
!19 = distinct !{!19, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !30, !37, !38}
!25 = distinct !{!25, !30, !37}
!26 = distinct !{!26, !30, !37}
!27 = distinct !{!27, !30}
!28 = distinct !{!28, !30}
!29 = !{!4, !4, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"short", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!13}
!34 = !{!14}
!35 = !{!15}
!36 = !{!13, !14}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!20}
!40 = !{!21}
!41 = !{!22}
!42 = !{!23}
!43 = !{!20, !21, !22}
end_hunk_0
