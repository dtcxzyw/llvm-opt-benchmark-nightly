Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/quant_levels_dec_utils?download=true
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
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !30  ; 2 uses
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
  store i8 1, ptr %i.ap, align 1, !tbaa !30
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.e, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %bb.e
  %i.aq = getelementptr inbounds i8, ptr %.046.i.i, i64 %i.ae
  %i.ar = add nuw nsw i32 %.03745.i.i, 1          ; 2 uses
  %exitcond58.not.i.i = icmp eq i32 %i.ar, %2
  br i1 %exitcond58.not.i.i, label %._crit_edge47.split.i.i, label %.preheader.i.i, !llvm.loop !9

._crit_edge47.split.i.i:                          ; preds = %._crit_edge.i.i
  %i.as = sub nsw i32 %.promoted4452.i.i, %.promoted49.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %._crit_edge47.split.i.i
  %.sroa.49.0 = phi i32 [ 0, %._crit_edge47.split.i.i ], [ %.sroa.49.1.1, %bb.l ] ; 2 uses
  %i.at = phi i32 [ %i.as, %._crit_edge47.split.i.i ], [ %i.bh, %bb.l ] ; 3 uses
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge47.split.i.i ], [ %indvars.iv.next60.i.i.1, %bb.l ] ; 4 uses
  %.03656.i.i = phi i32 [ -1, %._crit_edge47.split.i.i ], [ %.1.i.i.1, %bb.l ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv59.i.i
  %i.av = load i8, ptr %i.au, align 2, !tbaa !30
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
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !30
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
  br i1 %exitcond62.not.i.i.1, label %CountLevels.exit.i, label %bb.f, !llvm.loop !10

CountLevels.exit.i:                               ; preds = %bb.l
  %i.bi = getelementptr i8, ptr %i.w, i64 %i.r    ; 12 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.t   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bk = shl i32 %i.bh, 2                        ; 3 uses
  %i.bl = mul i32 %i.bh, 12
  %i.bm = ashr exact i32 %i.bl, 2                 ; 3 uses
  %i.bn = sub nsw i32 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 2046 ; 4 uses
  %i.bp = sext i32 %i.bk to i64
  %i.bq = sext i32 %i.bm to i64
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
  %i.bt = sub i32 %i.bk, %i.br
  %i.bu = mul i32 %i.bt, %i.bm
  %i.bv = sdiv i32 %i.bu, %i.bn
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bw = phi i32 [ 0, %bb.n ], [ %i.bv, %bb.o ], [ %i.br, %bb.m ]
  %i.bx = lshr i32 %i.bw, 2
  %i.by = trunc i32 %i.bx to i16                  ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv.i52.i
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !33
  %i.ca = sub i16 0, %i.by
  %i.cb = sub nsw i64 0, %indvars.iv.i52.i
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.cb
  store i16 %i.ca, ptr %i.cc, align 2, !tbaa !33
  %indvars.iv.next.i54.i = add nuw nsw i64 %indvars.iv.i52.i, 1 ; 2 uses
  %exitcond.not.i55.i = icmp eq i64 %indvars.iv.next.i54.i, 1024
  br i1 %exitcond.not.i55.i, label %bb.q, label %bb.m, !llvm.loop !11

bb.q:                                             ; preds = %bb.p
  %i.cd = mul nuw nsw i32 %i.y, %i.y
  %i.ce = udiv i32 262144, %i.cd                  ; 8 uses
  store i16 0, ptr %i.bo, align 2, !tbaa !33
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
  %5 = add nsw i32 %i.p, -2                       ; 2 uses
  %i.cp = add i32 %i.p, -2
  %6 = xor i32 %.1, -1
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.r
  %i.cq = sub nsw i64 2, %i.t
  %scevgep110 = getelementptr i8, ptr %i.w, i64 %i.cq
  %7 = add i32 %i.p, -2
  %i.cr = shl nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.cs = getelementptr i8, ptr %i.w, i64 %i.cr
  %scevgep112 = getelementptr i8, ptr %i.cs, i64 2
  %scevgep114 = getelementptr i8, ptr %i.w, i64 %i.cr
  %8 = xor i32 %.1, -1
  %i.ct = add nuw nsw i64 %i.s, %i.aa
  %i.cu = add nuw nsw i64 %wide.trip.count.i34, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cm)
  %i.cv = add nuw nsw i64 %i.ch, %i.aa
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = shl nuw nsw i64 %wide.trip.count.i34, 1 ; 3 uses
  %i.cy = add nuw nsw i64 %i.cx, %i.r             ; 2 uses
  %i.cz = shl nuw nsw i64 %i.aa, 1                ; 3 uses
  %scevgep146 = getelementptr i8, ptr %i.w, i64 %i.cy ; 2 uses
  %i.da = shl nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.db = add nuw nsw i64 %i.da, %i.cz            ; 3 uses
  %i.dc = getelementptr i8, ptr %i.w, i64 %i.db
  %scevgep147 = getelementptr i8, ptr %i.dc, i64 -2
  %i.dd = getelementptr i8, ptr %i.w, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.cx
  %scevgep148 = getelementptr i8, ptr %i.de, i64 -2
  %i.df = add nuw nsw i64 %i.db, 2
  %i.dg = sub nsw i64 %i.df, %i.cx
  %scevgep149 = getelementptr i8, ptr %i.w, i64 %i.dg
  %i.dh = getelementptr i8, ptr %i.w, i64 %i.da
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.cz
  %scevgep150 = getelementptr i8, ptr %i.di, i64 2
  %i.dj = zext nneg i32 %.1 to i64
  %xtraiter = and i64 %i.s, 1
  %i.dk = icmp eq i32 %1, 1
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
  %i.dl = add nuw nsw i64 %wide.trip.count.i34, 1
  %i.dm = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.cm)
  %i.dn = sub nsw i64 %i.dm, %wide.trip.count.i34 ; 3 uses
  %min.iters.check132 = icmp ugt i64 %i.dn, 7
  %i.do = sub nsw i64 %wide.trip.count.i34, %umax
  %.not173 = icmp ugt i64 %i.do, -2147483649
  %or.cond174 = select i1 %min.iters.check132, i1 %.not173, i1 false
  %i.dp = sub nsw i64 %i.cw, %i.r
  %diff.check = icmp ugt i64 %i.dp, -16
  %i.dq = sub nsw i64 %i.cz, %i.cy
  %diff.check129 = icmp ugt i64 %i.dq, -16
  %conflict.rdx130 = or i1 %diff.check, %diff.check129
  %n.vec134 = and i64 %i.dn, -8                   ; 3 uses
  %i.dr = add nsw i64 %n.vec134, %wide.trip.count.i34 ; 2 uses
  %broadcast.splatinsert135 = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat136 = shufflevector <8 x i32> %broadcast.splatinsert135, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n143 = icmp eq i64 %i.dn, %n.vec134
  %bound1 = icmp ult ptr %i.co, %i.bj
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %bb.t
  %.sroa.43.098 = phi ptr [ %i.ad, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.36.097, %bb.t ] ; 3 uses
  %.sroa.36.097 = phi ptr [ %i.w, %.lr.ph.preheader.i.lr.ph ], [ %spec.select86, %bb.t ] ; 5 uses
  %.sroa.23.096 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.23.1, %bb.t ] ; 3 uses
  %.sroa.20.095 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.20.2, %bb.t ] ; 4 uses
  %.sroa.14.094 = phi i32 [ %i.l, %.lr.ph.preheader.i.lr.ph ], [ %i.lj, %bb.t ] ; 4 uses
  br i1 %i.dk, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %.03437.i = phi i16 [ %i.eg, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !30
  %i.du = zext i8 %i.dt to i16
  %i.dv = add i16 %.03437.i, %i.du                ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !33
  %i.dy = add i16 %i.dv, %i.dx                    ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !33
  %i.eb = sub i16 %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !33
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !33
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.next.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !30
  %i.ef = zext i8 %i.ee to i16
  %i.eg = add i16 %i.dv, %i.ef                    ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.next.i
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !33
  %i.ej = add i16 %i.eg, %i.ei                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.next.i ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !33
  %i.em = sub i16 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i16 %i.em, ptr %i.en, align 2, !tbaa !33
  store i16 %i.ej, ptr %i.ek, align 2, !tbaa !33
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %.03437.i.epil.init = phi i16 [ 0, %.lr.ph.preheader.i ], [ %i.eg, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i.epil.init
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !30
  %i.eq = zext i8 %i.ep to i16
  %i.er = add i16 %.03437.i.epil.init, %i.eq
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i.epil.init
  %i.et = load i16, ptr %i.es, align 2, !tbaa !33
  %i.eu = add i16 %i.er, %i.et                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !33
  %i.ex = sub i16 %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !33
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !33
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %i.s ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ab
  %spec.select86 = select i1 %i.fa, ptr %i.w, ptr %i.ez
  %i.fb = icmp sgt i32 %.sroa.14.094, -1
  %i.fc = icmp slt i32 %.sroa.14.094, %i.j
  %or.cond88 = select i1 %i.fb, i1 %i.fc, i1 false
  %.sroa.20.2.idx = select i1 %or.cond88, i64 %i.ae, i64 0
  %.sroa.20.2 = getelementptr inbounds i8, ptr %.sroa.20.095, i64 %.sroa.20.2.idx
  %.not32 = icmp slt i32 %.sroa.14.094, %.1
  br i1 %.not32, label %bb.t, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %._crit_edge.i.loopexit
  %brmerge = select i1 %min.iters.check159, i1 true, i1 %conflict.rdx157
  br i1 %brmerge, label %.lr.ph.i35.preheader176, label %vector.body164

vector.body164:                                   ; preds = %.lr.ph.i35.preheader, %vector.body164
  %index165 = phi i64 [ %index.next169, %vector.body164 ], [ 0, %.lr.ph.i35.preheader ] ; 4 uses
  %i.fd = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index165
  %i.fe = getelementptr i8, ptr %i.fd, i64 -2
  %wide.load166 = load <8 x i16>, ptr %i.fe, align 2, !tbaa !33, !alias.scope !34
  %i.ff = sub nuw nsw i64 %i.ch, %index165
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ff
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -14
  %wide.load167 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !33, !alias.scope !35
  %reverse168 = shufflevector <8 x i16> %wide.load167, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fi = add <8 x i16> %reverse168, %wide.load166
  %i.fj = zext <8 x i16> %i.fi to <8 x i32>
  %i.fk = mul nuw <8 x i32> %broadcast.splat163, %i.fj
  %i.fl = lshr <8 x i32> %i.fk, splat (i32 16)
  %i.fm = trunc nuw <8 x i32> %i.fl to <8 x i16>
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index165
  store <8 x i16> %i.fm, ptr %i.fn, align 2, !tbaa !33, !alias.scope !36, !noalias !37
  %index.next169 = add nuw i64 %index165, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next169, %n.vec161
  br i1 %i.fo, label %middle.block170, label %vector.body164, !llvm.loop !17

middle.block170:                                  ; preds = %vector.body164
  br i1 %cmp.n171, label %.preheader53.i, label %.lr.ph.i35.preheader176

.lr.ph.i35.preheader176:                          ; preds = %.lr.ph.i35.preheader, %middle.block170
  %indvars.iv.i36.ph = phi i64 [ %n.vec161, %middle.block170 ], [ 0, %.lr.ph.i35.preheader ] ; 6 uses
  br i1 %lcmp.mod180.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader176
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36.ph
  %i.fp = getelementptr i8, ptr %gep.i.prol, i64 -2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !33
  %i.fr = sub nuw nsw i64 %i.ch, %indvars.iv.i36.ph
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !33
  %i.fu = add i16 %i.ft, %i.fq
  %i.fv = zext i16 %i.fu to i32
  %i.fw = mul nuw i32 %i.ce, %i.fv
  %i.fx = lshr i32 %i.fw, 16
  %i.fy = trunc nuw i32 %i.fx to i16
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36.ph
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !33
  %indvars.iv.next.i37.prol = or disjoint i64 %indvars.iv.i36.ph, 1
  br label %.lr.ph.i35.prol.loopexit

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader176
  %indvars.iv.i36.unr = phi i64 [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader176 ], [ %indvars.iv.next.i37.prol, %.lr.ph.i35.prol ]
  %i.ga = icmp eq i64 %indvars.iv.i36.ph, %i.dj
  br i1 %i.ga, label %.preheader53.i, label %.lr.ph.i35

.preheader53.i:                                   ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block170
  br i1 %i.ck, label %.lr.ph57.i.preheader, label %.preheader.i

.lr.ph57.i.preheader:                             ; preds = %.preheader53.i
  %or.cond174.not = xor i1 %or.cond174, true
  %brmerge183 = select i1 %or.cond174.not, i1 true, i1 %conflict.rdx130
  br i1 %brmerge183, label %.lr.ph57.i.preheader175, label %vector.body137

vector.body137:                                   ; preds = %.lr.ph57.i.preheader, %vector.body137
  %index138 = phi i64 [ %index.next141, %vector.body137 ], [ 0, %.lr.ph57.i.preheader ] ; 2 uses
  %i.gb = add nuw i64 %index138, %wide.trip.count.i34 ; 3 uses
  %i.gc = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gb
  %wide.load139 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !33
  %i.gd = trunc nuw nsw i64 %i.gb to i32
  %i.ge = add i32 %i.gd, %i.cl
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.gf
  %wide.load140 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !33
  %i.gh = sub <8 x i16> %wide.load139, %wide.load140
  %i.gi = zext <8 x i16> %i.gh to <8 x i32>
  %i.gj = mul nuw <8 x i32> %broadcast.splat136, %i.gi
  %i.gk = lshr <8 x i32> %i.gj, splat (i32 16)
  %i.gl = trunc nuw <8 x i32> %i.gk to <8 x i16>
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.gb
  store <8 x i16> %i.gl, ptr %i.gm, align 2, !tbaa !33
  %index.next141 = add nuw i64 %index138, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.gn, label %middle.block142, label %vector.body137, !llvm.loop !18

middle.block142:                                  ; preds = %vector.body137
  br i1 %cmp.n143, label %.preheader.loopexit.i, label %.lr.ph57.i.preheader175

.lr.ph57.i.preheader175:                          ; preds = %.lr.ph57.i.preheader, %middle.block142
  %indvars.iv63.i.ph = phi i64 [ %i.dr, %middle.block142 ], [ %wide.trip.count.i34, %.lr.ph57.i.preheader ]
  br label %.lr.ph57.i

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37.1, %.lr.ph.i35 ], [ %indvars.iv.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36
  %i.go = getelementptr i8, ptr %gep.i, i64 -2
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !33
  %i.gq = sub nuw nsw i64 %i.ch, %indvars.iv.i36
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !33
  %i.gt = add i16 %i.gs, %i.gp
  %i.gu = zext i16 %i.gt to i32
  %i.gv = mul nuw i32 %i.ce, %i.gu
  %i.gw = lshr i32 %i.gv, 16
  %i.gx = trunc nuw i32 %i.gw to i16
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !33
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 3 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i37
  %i.gz = getelementptr i8, ptr %gep.i.1, i64 -2
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !33
  %i.hb = sub nuw nsw i64 %i.ch, %indvars.iv.next.i37
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !33
  %i.he = add i16 %i.hd, %i.ha
  %i.hf = zext i16 %i.he to i32
  %i.hg = mul nuw i32 %i.ce, %i.hf
  %i.hh = lshr i32 %i.hg, 16
  %i.hi = trunc nuw i32 %i.hh to i16
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next.i37
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !33
  %indvars.iv.next.i37.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %exitcond.not.i38.1 = icmp eq i64 %indvars.iv.next.i37.1, %wide.trip.count.i34
  br i1 %exitcond.not.i38.1, label %.preheader53.i, label %.lr.ph.i35, !llvm.loop !19

.preheader.loopexit.i:                            ; preds = %.lr.ph57.i, %middle.block142
  %indvars.iv.next64.i.lcssa = phi i64 [ %i.dr, %middle.block142 ], [ %indvars.iv.next64.i, %.lr.ph57.i ]
  %i.hk = trunc nuw nsw i64 %indvars.iv.next64.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ci, %.preheader53.i ], [ %i.hk, %.preheader.loopexit.i ] ; 6 uses
  %i.hl = icmp slt i32 %.1.lcssa.i, %1
  br i1 %i.hl, label %.lr.ph60.i, label %.lr.ph.i41.preheader

.lr.ph60.i:                                       ; preds = %.preheader.i
  %i.hm = zext i32 %.1.lcssa.i to i64             ; 10 uses
  %i.hn = sub nsw i64 %i.s, %i.hm                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.hn, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph60.i
  %i.ho = xor i64 %i.hm, -1
  %i.hp = add nsw i64 %i.ho, %i.s                 ; 2 uses
  %i.hq = add i32 %.1, %.1.lcssa.i
  %i.hr = sub i32 %i.cp, %i.hq                    ; 2 uses
  %i.hs = trunc i64 %i.hp to i32                  ; 2 uses
  %i.ht = sub i32 %i.hr, %i.hs
  %i.hu = icmp sgt i32 %i.ht, %i.hr
  %i.hv = add i32 %.1.lcssa.i, %6                 ; 2 uses
  %i.hw = add i32 %i.hv, %i.hs
  %i.hx = icmp slt i32 %i.hw, %i.hv
  %i.hy = icmp ugt i64 %i.hp, 4294967295
  %i.hz = or i1 %i.hx, %i.hy
  %i.ia = or i1 %i.hu, %i.hz
  br i1 %i.ia, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ib = shl nuw nsw i64 %i.hm, 1
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.ib ; 3 uses
  %i.ic = add i32 %.1, %.1.lcssa.i
  %i.id = sub i32 %7, %i.ic
  %i.ie = sext i32 %i.id to i64                   ; 2 uses
  %i.if = add nsw i64 %i.aa, %i.ie
  %i.ig = add nsw i64 %i.if, %i.hm
  %i.ih = shl nsw i64 %i.ig, 1
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %i.ih
  %i.ii = shl nsw i64 %i.ie, 1
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.ii
  %i.ij = add i32 %.1.lcssa.i, %8
  %i.ik = sext i32 %i.ij to i64                   ; 2 uses
  %i.il = shl nsw i64 %i.ik, 1
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.il
  %i.im = add nsw i64 %i.ct, %i.ik
  %i.in = sub nsw i64 %i.im, %i.hm
  %i.io = shl nsw i64 %i.in, 1
  %scevgep116 = getelementptr i8, ptr %i.w, i64 %i.io
  %bound0 = icmp ult ptr %scevgep109, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  %bound0117 = icmp ult ptr %scevgep109, %scevgep113
  %bound1118 = icmp ult ptr %scevgep111, %i.bj
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx = or i1 %found.conflict, %found.conflict119
  %bound0120 = icmp ult ptr %scevgep109, %scevgep116
  %bound1121 = icmp ult ptr %scevgep115, %i.bj
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx, %found.conflict122
  br i1 %conflict.rdx123, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hn, -8                      ; 3 uses
  %i.ip = add nsw i64 %n.vec, %i.hm
  %i.iq = load i16, ptr %i.co, align 2, !tbaa !33, !alias.scope !40
  %i.ir = shl i16 %i.iq, 1
  %broadcast.splatinsert125 = insertelement <8 x i16> poison, i16 %i.ir, i64 0
  %broadcast.splat126 = shufflevector <8 x i16> %broadcast.splatinsert125, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.is = add nuw i64 %index, %i.hm               ; 2 uses
  %i.it = trunc nsw i64 %i.is to i32              ; 2 uses
  %i.iu = add i32 %.1, %i.it
  %i.iv = sub i32 %5, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.iw
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -14
  %wide.load = load <8 x i16>, ptr %i.iy, align 2, !tbaa !33, !alias.scope !41
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.iz = add i32 %i.it, %i.cl
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ja
  %wide.load124 = load <8 x i16>, ptr %i.jb, align 2, !tbaa !33, !alias.scope !42
  %i.jc = add <8 x i16> %reverse, %wide.load124
  %i.jd = sub <8 x i16> %broadcast.splat126, %i.jc
  %i.je = zext <8 x i16> %i.jd to <8 x i32>
  %i.jf = mul nuw <8 x i32> %broadcast.splat, %i.je
  %i.jg = lshr <8 x i32> %i.jf, splat (i32 16)
  %i.jh = trunc nuw <8 x i32> %i.jg to <8 x i16>
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.is
  store <8 x i16> %i.jh, ptr %i.ji, align 2, !tbaa !33, !alias.scope !43, !noalias !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hn, %n.vec
  br i1 %cmp.n, label %.lr.ph.i41.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph60.i, %middle.block
  %indvars.iv66.i.ph = phi i64 [ %i.hm, %vector.memcheck ], [ %i.hm, %vector.scevcheck ], [ %i.hm, %.lr.ph60.i ], [ %i.ip, %middle.block ]
  br label %scalar.ph

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.preheader175, %.lr.ph57.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph57.i ], [ %indvars.iv63.i.ph, %.lr.ph57.i.preheader175 ] ; 4 uses
  %gep74.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv63.i
  %i.jk = load i16, ptr %gep74.i, align 2, !tbaa !33
  %i.jl = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.jm = add i32 %i.jl, %i.cl
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !33
  %i.jq = sub i16 %i.jk, %i.jp
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw i32 %i.ce, %i.jr
  %i.jt = lshr i32 %i.js, 16
  %i.ju = trunc nuw i32 %i.jt to i16
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv63.i
  store i16 %i.ju, ptr %i.jv, align 2, !tbaa !33
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 3 uses
  %i.jw = icmp samesign ult i64 %indvars.iv.next64.i, %i.cm
  br i1 %i.jw, label %.lr.ph57.i, label %.preheader.loopexit.i, !llvm.loop !26

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph ], [ %indvars.iv66.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.jx = load i16, ptr %i.co, align 2, !tbaa !33
  %i.jy = shl i16 %i.jx, 1
  %i.jz = trunc nsw i64 %indvars.iv66.i to i32    ; 2 uses
  %i.ka = add i32 %.1, %i.jz
  %i.kb = sub i32 %5, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !33
  %i.kf = add i32 %i.jz, %i.cl
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.kg
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !33
  %i.kj = add i16 %i.ke, %i.ki
  %i.kk = sub i16 %i.jy, %i.kj
  %i.kl = zext i16 %i.kk to i32
  %i.km = mul nuw i32 %i.ce, %i.kl
  %i.kn = lshr i32 %i.km, 16
  %i.ko = trunc nuw i32 %i.kn to i16
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv66.i
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !33
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %i.s
  br i1 %exitcond70.not.i, label %.lr.ph.i41.preheader, label %scalar.ph, !llvm.loop !27

.lr.ph.i41.preheader:                             ; preds = %scalar.ph, %middle.block, %.preheader.i
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader, %bb.s
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %bb.s ], [ 0, %.lr.ph.i41.preheader ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.23.096, i64 %indvars.iv.i43 ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !30
  %i.ks = zext i8 %i.kr to i32                    ; 4 uses
  %i.kt = icmp sgt i32 %.sroa.55.2, %i.ks
  %i.ku = icmp slt i32 %.sroa.52.2, %i.ks
  %or.cond89 = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %or.cond89, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i41
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i43
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !33
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.ks, 2
  %i.kz = sub nsw i32 %i.kx, %i.ky
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !33
  %i.ld = sext i16 %i.lc to i32
  %i.le = add nsw i32 %i.ld, %i.ks
  %i.lf = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 33023) %i.le, i32 0)
  %i.lg = tail call i32 @llvm.umin.i32(i32 %i.lf, i32 255)
  %i.lh = trunc nuw i32 %i.lg to i8
  store i8 %i.lh, ptr %i.kq, align 1, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %i.s
  br i1 %exitcond.not.i45, label %ApplyFilter.exit.loopexit, label %.lr.ph.i41, !llvm.loop !28

ApplyFilter.exit.loopexit:                        ; preds = %bb.s
  %i.li = getelementptr inbounds i8, ptr %.sroa.23.096, i64 %i.ae
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.loopexit, %ApplyFilter.exit.loopexit
  %.sroa.23.1 = phi ptr [ %.sroa.23.096, %._crit_edge.i.loopexit ], [ %i.li, %ApplyFilter.exit.loopexit ]
  %i.lj = add nsw i32 %.sroa.14.094, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.lj, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i, !llvm.loop !29

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !31}
!9 = distinct !{!9, !31}
!10 = distinct !{!10, !31}
!11 = distinct !{!11, !31}
!12 = distinct !{!12, !31}
!13 = distinct !{!13, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !31, !38, !39}
!18 = distinct !{!18, !31, !38, !39}
!19 = distinct !{!19, !31, !38}
!20 = distinct !{!20, !"LVerDomain"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !31, !38, !39}
!26 = distinct !{!26, !31, !38}
!27 = distinct !{!27, !31, !38}
!28 = distinct !{!28, !31}
!29 = distinct !{!29, !31}
!30 = !{!4, !4, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"short", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!14}
!35 = !{!15}
!36 = !{!16}
!37 = !{!14, !15}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!21}
!41 = !{!22}
!42 = !{!23}
!43 = !{!24}
!44 = !{!21, !22, !23}
end_hunk_0
