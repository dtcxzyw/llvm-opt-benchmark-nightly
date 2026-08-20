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
  %.1 = select i1 %.not30, i32 %.024, i32 %i.k    ; 16 uses
  %i.l = sub nsw i32 0, %.1                       ; 2 uses
  %i.m = icmp sgt i32 %.1, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = shl nuw nsw i32 %.1, 1                   ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = shl nuw i32 %1, 1                        ; 4 uses
  %i.q = mul nuw i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64                     ; 6 uses
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
  %i.aa = zext nneg i32 %i.z to i64               ; 6 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aa ; 17 uses
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
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !7   ; 2 uses
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
  store i8 1, ptr %i.ap, align 1, !tbaa !7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.e, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %bb.e
  %i.aq = getelementptr inbounds i8, ptr %.046.i.i, i64 %i.ae
  %i.ar = add nuw nsw i32 %.03745.i.i, 1          ; 2 uses
  %exitcond58.not.i.i = icmp eq i32 %i.ar, %2
  br i1 %exitcond58.not.i.i, label %._crit_edge47.split.i.i, label %.preheader.i.i, !llvm.loop !10

._crit_edge47.split.i.i:                          ; preds = %._crit_edge.i.i
  %i.as = sub nsw i32 %.promoted4452.i.i, %.promoted49.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %._crit_edge47.split.i.i
  %.sroa.49.0 = phi i32 [ 0, %._crit_edge47.split.i.i ], [ %.sroa.49.1.1, %bb.l ] ; 2 uses
  %i.at = phi i32 [ %i.as, %._crit_edge47.split.i.i ], [ %i.bh, %bb.l ] ; 3 uses
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge47.split.i.i ], [ %indvars.iv.next60.i.i.1, %bb.l ] ; 4 uses
  %.03656.i.i = phi i32 [ -1, %._crit_edge47.split.i.i ], [ %.1.i.i.1, %bb.l ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv59.i.i
  %i.av = load i8, ptr %i.au, align 2, !tbaa !7
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
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
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
  br i1 %exitcond62.not.i.i.1, label %CountLevels.exit.i, label %bb.f, !llvm.loop !11

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
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !12
  %i.ca = sub i16 0, %i.by
  %i.cb = sub nsw i64 0, %indvars.iv.i52.i
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.cb
  store i16 %i.ca, ptr %i.cc, align 2, !tbaa !12
  %indvars.iv.next.i54.i = add nuw nsw i64 %indvars.iv.i52.i, 1 ; 2 uses
  %exitcond.not.i55.i = icmp eq i64 %indvars.iv.next.i54.i, 1024
  br i1 %exitcond.not.i55.i, label %bb.q, label %bb.m, !llvm.loop !14

bb.q:                                             ; preds = %bb.p
  %i.cd = mul nuw nsw i32 %i.y, %i.y
  %i.ce = udiv i32 262144, %i.cd                  ; 8 uses
  store i16 0, ptr %i.bk, align 2, !tbaa !12
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
  %i.cl = xor i32 %.1, -1                         ; 4 uses
  %i.cm = zext i32 %i.cj to i64                   ; 3 uses
  %i.cn = getelementptr [2 x i8], ptr %i.ab, i64 %i.s ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -2     ; 3 uses
  %i.cp = add nsw i32 %i.p, -2                    ; 2 uses
  %i.cq = add i32 %i.p, -2
  %i.cr = xor i32 %.1, -1
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.r
  %i.cs = sub nsw i64 2, %i.t
  %scevgep110 = getelementptr i8, ptr %i.w, i64 %i.cs
  %i.ct = add i32 %i.p, -2
  %i.cu = shl nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.cv = getelementptr i8, ptr %i.w, i64 %i.cu
  %scevgep112 = getelementptr i8, ptr %i.cv, i64 2
  %scevgep114 = getelementptr i8, ptr %i.w, i64 %i.cu
  %i.cw = xor i32 %.1, -1
  %i.cx = add nuw nsw i64 %i.s, %i.aa
  %i.cy = add nuw nsw i64 %wide.trip.count.i34, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.cm)
  %i.cz = add nuw nsw i64 %i.ch, %i.aa
  %i.da = shl nuw nsw i64 %i.cz, 1
  %i.db = shl nuw nsw i64 %wide.trip.count.i34, 1 ; 4 uses
  %i.dc = add nuw nsw i64 %i.db, %i.r
  %i.dd = shl nuw nsw i64 %i.aa, 1                ; 3 uses
  %5 = getelementptr i8, ptr %i.w, i64 %i.db
  %scevgep146 = getelementptr i8, ptr %5, i64 %i.r ; 2 uses
  %i.de = shl nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.df = add nuw nsw i64 %i.de, %i.dd            ; 3 uses
  %i.dg = getelementptr i8, ptr %i.w, i64 %i.df
  %scevgep147 = getelementptr i8, ptr %i.dg, i64 -2
  %i.dh = getelementptr i8, ptr %i.w, i64 %i.df
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.db
  %scevgep148 = getelementptr i8, ptr %i.di, i64 -2
  %i.dj = add nuw nsw i64 %i.df, 2
  %i.dk = sub nsw i64 %i.dj, %i.db
  %scevgep149 = getelementptr i8, ptr %i.w, i64 %i.dk
  %i.dl = getelementptr i8, ptr %i.w, i64 %i.de
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.dd
  %scevgep150 = getelementptr i8, ptr %i.dm, i64 2
  %i.dn = zext nneg i32 %.1 to i64
  %xtraiter = and i64 %i.s, 1
  %i.do = icmp eq i32 %1, 1
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
  %i.dp = add nuw nsw i64 %wide.trip.count.i34, 1
  %i.dq = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.cm)
  %i.dr = sub nsw i64 %i.dq, %wide.trip.count.i34 ; 3 uses
  %min.iters.check132 = icmp ugt i64 %i.dr, 7
  %i.ds = sub nsw i64 %wide.trip.count.i34, %umax
  %.not173 = icmp ugt i64 %i.ds, -2147483649
  %or.cond174 = select i1 %min.iters.check132, i1 %.not173, i1 false
  %i.dt = sub nsw i64 %i.da, %i.r
  %diff.check = icmp ugt i64 %i.dt, -16
  %i.du = sub nsw i64 %i.dd, %i.dc
  %diff.check129 = icmp ugt i64 %i.du, -16
  %conflict.rdx130 = or i1 %diff.check, %diff.check129
  %n.vec134 = and i64 %i.dr, -8                   ; 3 uses
  %i.dv = add nsw i64 %n.vec134, %wide.trip.count.i34 ; 2 uses
  %broadcast.splatinsert135 = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat136 = shufflevector <8 x i32> %broadcast.splatinsert135, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n143 = icmp eq i64 %i.dr, %n.vec134
  %bound1 = icmp ult ptr %i.co, %i.bj
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %bb.t
  %.sroa.43.098 = phi ptr [ %i.ad, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.36.097, %bb.t ] ; 3 uses
  %.sroa.36.097 = phi ptr [ %i.w, %.lr.ph.preheader.i.lr.ph ], [ %spec.select86, %bb.t ] ; 5 uses
  %.sroa.23.096 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.23.1, %bb.t ] ; 3 uses
  %.sroa.20.095 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.20.2, %bb.t ] ; 4 uses
  %.sroa.14.094 = phi i32 [ %i.l, %.lr.ph.preheader.i.lr.ph ], [ %i.ln, %bb.t ] ; 4 uses
  br i1 %i.do, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %.03437.i = phi i16 [ %i.ek, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !7
  %i.dy = zext i8 %i.dx to i16
  %i.dz = add i16 %.03437.i, %i.dy                ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !12
  %i.ec = add i16 %i.dz, %i.eb                    ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !12
  %i.ef = sub i16 %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !12
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !12
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.next.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7
  %i.ej = zext i8 %i.ei to i16
  %i.ek = add i16 %i.dz, %i.ej                    ; 3 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.next.i
  %i.em = load i16, ptr %i.el, align 2, !tbaa !12
  %i.en = add i16 %i.ek, %i.em                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.next.i ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !12
  %i.eq = sub i16 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !12
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %.03437.i.epil.init = phi i16 [ 0, %.lr.ph.preheader.i ], [ %i.ek, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i.epil.init
  %i.et = load i8, ptr %i.es, align 1, !tbaa !7
  %i.eu = zext i8 %i.et to i16
  %i.ev = add i16 %.03437.i.epil.init, %i.eu
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i.epil.init
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !12
  %i.ey = add i16 %i.ev, %i.ex                    ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !12
  %i.fb = sub i16 %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !12
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !12
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %i.s ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ab
  %spec.select86 = select i1 %i.fe, ptr %i.w, ptr %i.fd
  %i.ff = icmp sgt i32 %.sroa.14.094, -1
  %i.fg = icmp slt i32 %.sroa.14.094, %i.j
  %or.cond88 = select i1 %i.ff, i1 %i.fg, i1 false
  %.sroa.20.2.idx = select i1 %or.cond88, i64 %i.ae, i64 0
  %.sroa.20.2 = getelementptr inbounds i8, ptr %.sroa.20.095, i64 %.sroa.20.2.idx
  %.not32 = icmp slt i32 %.sroa.14.094, %.1
  br i1 %.not32, label %bb.t, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %._crit_edge.i.loopexit
  %brmerge = select i1 %min.iters.check159, i1 true, i1 %conflict.rdx157
  br i1 %brmerge, label %.lr.ph.i35.preheader176, label %vector.body164

vector.body164:                                   ; preds = %.lr.ph.i35.preheader, %vector.body164
  %index165 = phi i64 [ %index.next169, %vector.body164 ], [ 0, %.lr.ph.i35.preheader ] ; 4 uses
  %i.fh = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index165
  %i.fi = getelementptr i8, ptr %i.fh, i64 -2
  %wide.load166 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !12, !alias.scope !16
  %i.fj = sub nsw i64 %i.ch, %index165
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fj
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -14
  %wide.load167 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !12, !alias.scope !19
  %reverse168 = shufflevector <8 x i16> %wide.load167, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fm = add <8 x i16> %reverse168, %wide.load166
  %i.fn = zext <8 x i16> %i.fm to <8 x i32>
  %i.fo = mul nuw <8 x i32> %broadcast.splat163, %i.fn
  %i.fp = lshr <8 x i32> %i.fo, splat (i32 16)
  %i.fq = trunc nuw <8 x i32> %i.fp to <8 x i16>
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index165
  store <8 x i16> %i.fq, ptr %i.fr, align 2, !tbaa !12, !alias.scope !21, !noalias !23
  %index.next169 = add nuw i64 %index165, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next169, %n.vec161
  br i1 %i.fs, label %middle.block170, label %vector.body164, !llvm.loop !24

middle.block170:                                  ; preds = %vector.body164
  br i1 %cmp.n171, label %.preheader53.i, label %.lr.ph.i35.preheader176

.lr.ph.i35.preheader176:                          ; preds = %.lr.ph.i35.preheader, %middle.block170
  %indvars.iv.i36.ph = phi i64 [ %n.vec161, %middle.block170 ], [ 0, %.lr.ph.i35.preheader ] ; 6 uses
  br i1 %lcmp.mod180.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader176
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36.ph
  %i.ft = getelementptr i8, ptr %gep.i.prol, i64 -2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !12
  %i.fv = sub nsw i64 %i.ch, %indvars.iv.i36.ph
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !12
  %i.fy = add i16 %i.fx, %i.fu
  %i.fz = zext i16 %i.fy to i32
  %i.ga = mul nuw i32 %i.ce, %i.fz
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = trunc nuw i32 %i.gb to i16
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36.ph
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !12
  %indvars.iv.next.i37.prol = or disjoint i64 %indvars.iv.i36.ph, 1
  br label %.lr.ph.i35.prol.loopexit

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader176
  %indvars.iv.i36.unr = phi i64 [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader176 ], [ %indvars.iv.next.i37.prol, %.lr.ph.i35.prol ]
  %i.ge = icmp eq i64 %indvars.iv.i36.ph, %i.dn
  br i1 %i.ge, label %.preheader53.i, label %.lr.ph.i35

.preheader53.i:                                   ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block170
  br i1 %i.ck, label %.lr.ph57.i.preheader, label %.preheader.i

.lr.ph57.i.preheader:                             ; preds = %.preheader53.i
  %or.cond174.not = xor i1 %or.cond174, true
  %brmerge183 = select i1 %or.cond174.not, i1 true, i1 %conflict.rdx130
  br i1 %brmerge183, label %.lr.ph57.i.preheader175, label %vector.body137

vector.body137:                                   ; preds = %.lr.ph57.i.preheader, %vector.body137
  %index138 = phi i64 [ %index.next141, %vector.body137 ], [ 0, %.lr.ph57.i.preheader ] ; 2 uses
  %i.gf = add nuw i64 %index138, %wide.trip.count.i34 ; 3 uses
  %i.gg = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gf
  %wide.load139 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !12
end_hunk_0
