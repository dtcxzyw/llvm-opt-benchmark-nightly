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
  %.1 = select i1 %.not30, i32 %.024, i32 %i.k    ; 15 uses
  %i.l = sub nsw i32 0, %.1                       ; 2 uses
  %i.m = icmp sgt i32 %.1, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = shl nuw nsw i32 %.1, 1                   ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = shl nuw i32 %1, 1                        ; 3 uses
  %i.q = mul nuw i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64                     ; 5 uses
  %i.s = zext nneg i32 %1 to i64                  ; 12 uses
  %i.t = shl nuw nsw i64 %i.s, 1                  ; 4 uses
  %i.u = add nuw nsw i64 %i.t, 4094
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.v) #6 ; 14 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %.preheader.lr.ph.split.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %bb.d
  %i.y = or disjoint i32 %i.n, 1                  ; 3 uses
  %i.z = mul nuw nsw i32 %i.y, %1
  %i.aa = zext nneg i32 %i.z to i64               ; 6 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aa ; 18 uses
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
  %i.bi = getelementptr i8, ptr %i.w, i64 %i.r    ; 13 uses
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
  %or.cond109 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond109, label %.lr.ph.preheader.i.lr.ph, label %.loopexit

.lr.ph.preheader.i.lr.ph:                         ; preds = %bb.q
  %i.ch = zext nneg i32 %.1 to i64                ; 7 uses
  %i.ci = add nuw i32 %.1, 1                      ; 3 uses
  %wide.trip.count.i34 = zext i32 %i.ci to i64    ; 13 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ab, i64 %i.ch ; 6 uses
  %i.cj = sub nsw i32 %1, %.1                     ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  %i.cl = xor i32 %.1, -1                         ; 5 uses
  %i.cm = zext i32 %i.cj to i64                   ; 3 uses
  %i.cn = getelementptr [2 x i8], ptr %i.ab, i64 %i.s ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -2     ; 3 uses
  %i.cp = add i32 %i.p, -2                        ; 3 uses
  %i.cq = add i32 %i.p, -2
  %i.cr = xor i32 %.1, -1
  %i.cs = add nuw nsw i64 %i.s, %i.aa
  %i.ct = shl nuw nsw i64 %i.aa, 1
  %5 = getelementptr i8, ptr %i.w, i64 %i.ct
  %scevgep = getelementptr i8, ptr %5, i64 2
  %6 = sub nsw i64 2, %i.t
  %scevgep125 = getelementptr i8, ptr %i.w, i64 %6
  %i.cu = add nuw nsw i64 %wide.trip.count.i34, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cm)
  %i.cv = shl nuw nsw i64 %wide.trip.count.i34, 1
  %i.cw = add nuw nsw i64 %i.cv, %i.r
  %i.cx = shl nuw nsw i64 %i.aa, 1                ; 3 uses
  %i.cy = add nuw nsw i64 %i.ch, %i.aa
  %i.cz = shl nuw nsw i64 %i.cy, 1
  %i.da = shl nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.db = add nuw nsw i64 %i.da, %i.cx            ; 2 uses
  %i.dc = add nuw nsw i64 %i.db, 2                ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.w, i64 %i.dc
  %i.dd = shl nuw nsw i64 %wide.trip.count.i34, 1 ; 3 uses
  %i.de = sub nsw i64 %i.dc, %i.dd
  %scevgep168 = getelementptr i8, ptr %i.w, i64 %i.de
  %i.df = getelementptr i8, ptr %i.w, i64 %i.db
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.dd
  %scevgep169 = getelementptr i8, ptr %i.dg, i64 -2
  %i.dh = getelementptr i8, ptr %i.w, i64 %i.da
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.cx
  %scevgep170 = getelementptr i8, ptr %i.di, i64 -2
  %i.dj = getelementptr i8, ptr %i.w, i64 %i.dd
  %scevgep171 = getelementptr i8, ptr %i.dj, i64 %i.r ; 2 uses
  %i.dk = zext nneg i32 %.1 to i64
  %xtraiter = and i64 %i.s, 1
  %i.dl = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod200 = trunc i32 %1 to i1
  %min.iters.check173 = icmp ult i32 %.1, 7
  %bound0175 = icmp ult ptr %i.bi, %scevgep169
  %bound1176 = icmp ult ptr %scevgep170, %scevgep171
  %found.conflict177 = and i1 %bound0175, %bound1176
  %bound0178 = icmp ult ptr %i.bi, %scevgep.a
  %bound1179 = icmp ult ptr %scevgep168, %scevgep171
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %found.conflict177, %found.conflict180
  %n.vec183 = and i64 %wide.trip.count.i34, 4294967288 ; 3 uses
  %broadcast.splatinsert184 = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat185 = shufflevector <8 x i32> %broadcast.splatinsert184, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n193 = icmp eq i64 %n.vec183, %wide.trip.count.i34
  %xtraiter201 = and i64 %wide.trip.count.i34, 1
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  %i.dm = add nuw nsw i64 %wide.trip.count.i34, 1
  %i.dn = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.cm)
  %i.do = sub nsw i64 %i.dn, %wide.trip.count.i34 ; 3 uses
  %min.iters.check140 = icmp ugt i64 %i.do, 7
  %i.dp = sub nsw i64 %wide.trip.count.i34, %umax
  %.not195 = icmp ugt i64 %i.dp, -2147483649
  %or.cond196 = select i1 %min.iters.check140, i1 %.not195, i1 false
  %i.dq = sub nsw i64 %i.cz, %i.r
  %diff.check = icmp ugt i64 %i.dq, -16
  %i.dr = sub nsw i64 %i.cx, %i.cw
  %diff.check142 = icmp ugt i64 %i.dr, -16
  %conflict.rdx143 = or i1 %diff.check, %diff.check142
  %n.vec145 = and i64 %i.do, -8                   ; 3 uses
  %i.ds = add nsw i64 %n.vec145, %wide.trip.count.i34 ; 2 uses
  %broadcast.splatinsert146 = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat147 = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n154 = icmp eq i64 %i.do, %n.vec145
  %bound1 = icmp ult ptr %i.co, %i.bj
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %bb.t
  %.sroa.43.099 = phi ptr [ %i.ad, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.36.098, %bb.t ] ; 3 uses
  %.sroa.36.098 = phi ptr [ %i.w, %.lr.ph.preheader.i.lr.ph ], [ %spec.select87, %bb.t ] ; 5 uses
  %.sroa.23.097 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.23.1, %bb.t ] ; 3 uses
  %.sroa.20.096 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.20.2, %bb.t ] ; 4 uses
  %.sroa.14.095 = phi i32 [ %i.l, %.lr.ph.preheader.i.lr.ph ], [ %i.lm, %bb.t ] ; 4 uses
  br i1 %i.dl, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %.03437.i = phi i16 [ %i.eh, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.20.096, i64 %indvars.iv.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !30
  %i.dv = zext i8 %i.du to i16
  %i.dw = add i16 %.03437.i, %i.dv                ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.099, i64 %indvars.iv.i
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !33
  %i.dz = add i16 %i.dw, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.098, i64 %indvars.iv.i ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !33
  %i.ec = sub i16 %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !33
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !33
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.20.096, i64 %indvars.iv.next.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !30
  %i.eg = zext i8 %i.ef to i16
  %i.eh = add i16 %i.dw, %i.eg                    ; 3 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.099, i64 %indvars.iv.next.i
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !33
  %i.ek = add i16 %i.eh, %i.ej                    ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.098, i64 %indvars.iv.next.i ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !33
  %i.en = sub i16 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !33
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !33
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %.03437.i.epil.init = phi i16 [ 0, %.lr.ph.preheader.i ], [ %i.eh, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.20.096, i64 %indvars.iv.i.epil.init
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !30
  %i.er = zext i8 %i.eq to i16
  %i.es = add i16 %.03437.i.epil.init, %i.er
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.099, i64 %indvars.iv.i.epil.init
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !33
  %i.ev = add i16 %i.es, %i.eu                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.098, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !33
  %i.ey = sub i16 %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !33
  store i16 %i.ev, ptr %i.ew, align 2, !tbaa !33
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.098, i64 %i.s ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ab
  %spec.select87 = select i1 %i.fb, ptr %i.w, ptr %i.fa
  %i.fc = icmp sgt i32 %.sroa.14.095, -1
  %i.fd = icmp slt i32 %.sroa.14.095, %i.j
  %or.cond89 = select i1 %i.fc, i1 %i.fd, i1 false
  %.sroa.20.2.idx = select i1 %or.cond89, i64 %i.ae, i64 0
  %.sroa.20.2 = getelementptr inbounds i8, ptr %.sroa.20.096, i64 %.sroa.20.2.idx
  %.not32 = icmp slt i32 %.sroa.14.095, %.1
  br i1 %.not32, label %bb.t, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %._crit_edge.i.loopexit
  %brmerge = select i1 %min.iters.check173, i1 true, i1 %conflict.rdx181
  br i1 %brmerge, label %.lr.ph.i35.preheader198, label %vector.body186

vector.body186:                                   ; preds = %.lr.ph.i35.preheader, %vector.body186
  %index187 = phi i64 [ %index.next191, %vector.body186 ], [ 0, %.lr.ph.i35.preheader ] ; 4 uses
  %i.fe = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index187
  %i.ff = getelementptr i8, ptr %i.fe, i64 -2
  %wide.load188 = load <8 x i16>, ptr %i.ff, align 2, !tbaa !33, !alias.scope !34
  %i.fg = sub nuw nsw i64 %i.ch, %index187
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -14
  %wide.load189 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !33, !alias.scope !35
  %reverse190 = shufflevector <8 x i16> %wide.load189, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fj = add <8 x i16> %reverse190, %wide.load188
  %i.fk = zext <8 x i16> %i.fj to <8 x i32>
  %i.fl = mul nuw nsw <8 x i32> %broadcast.splat185, %i.fk
  %i.fm = lshr <8 x i32> %i.fl, splat (i32 16)
  %i.fn = trunc nuw nsw <8 x i32> %i.fm to <8 x i16>
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index187
  store <8 x i16> %i.fn, ptr %i.fo, align 2, !tbaa !33, !alias.scope !36, !noalias !37
  %index.next191 = add nuw i64 %index187, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next191, %n.vec183
  br i1 %i.fp, label %middle.block192, label %vector.body186, !llvm.loop !17

middle.block192:                                  ; preds = %vector.body186
  br i1 %cmp.n193, label %.preheader53.i, label %.lr.ph.i35.preheader198

.lr.ph.i35.preheader198:                          ; preds = %.lr.ph.i35.preheader, %middle.block192
  %indvars.iv.i36.ph = phi i64 [ %n.vec183, %middle.block192 ], [ 0, %.lr.ph.i35.preheader ] ; 6 uses
  br i1 %lcmp.mod202.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader198
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36.ph
  %i.fq = getelementptr i8, ptr %gep.i.prol, i64 -2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !33
  %i.fs = sub nuw nsw i64 %i.ch, %indvars.iv.i36.ph
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !33
  %i.fv = add i16 %i.fu, %i.fr
  %i.fw = zext i16 %i.fv to i32
  %i.fx = mul nuw nsw i32 %i.ce, %i.fw
  %i.fy = lshr i32 %i.fx, 16
  %i.fz = trunc nuw nsw i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36.ph
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !33
  %indvars.iv.next.i37.prol = or disjoint i64 %indvars.iv.i36.ph, 1
  br label %.lr.ph.i35.prol.loopexit

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader198
  %indvars.iv.i36.unr = phi i64 [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader198 ], [ %indvars.iv.next.i37.prol, %.lr.ph.i35.prol ]
  %i.gb = icmp eq i64 %indvars.iv.i36.ph, %i.dk
  br i1 %i.gb, label %.preheader53.i, label %.lr.ph.i35

.preheader53.i:                                   ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block192
  br i1 %i.ck, label %.lr.ph57.i.preheader, label %.preheader.i

.lr.ph57.i.preheader:                             ; preds = %.preheader53.i
  %or.cond196.not = xor i1 %or.cond196, true
  %brmerge205 = select i1 %or.cond196.not, i1 true, i1 %conflict.rdx143
  br i1 %brmerge205, label %.lr.ph57.i.preheader197, label %vector.body148

vector.body148:                                   ; preds = %.lr.ph57.i.preheader, %vector.body148
  %index149 = phi i64 [ %index.next152, %vector.body148 ], [ 0, %.lr.ph57.i.preheader ] ; 2 uses
  %i.gc = add nuw i64 %index149, %wide.trip.count.i34 ; 3 uses
  %i.gd = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gc
  %wide.load150 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !33
  %i.ge = trunc nuw nsw i64 %i.gc to i32
  %i.gf = add i32 %i.ge, %i.cl
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.gg
  %wide.load151 = load <8 x i16>, ptr %i.gh, align 2, !tbaa !33
  %i.gi = sub <8 x i16> %wide.load150, %wide.load151
  %i.gj = zext <8 x i16> %i.gi to <8 x i32>
  %i.gk = mul nuw nsw <8 x i32> %broadcast.splat147, %i.gj
  %i.gl = lshr <8 x i32> %i.gk, splat (i32 16)
  %i.gm = trunc nuw nsw <8 x i32> %i.gl to <8 x i16>
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.gc
  store <8 x i16> %i.gm, ptr %i.gn, align 2, !tbaa !33
  %index.next152 = add nuw i64 %index149, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.go, label %middle.block153, label %vector.body148, !llvm.loop !18

middle.block153:                                  ; preds = %vector.body148
  br i1 %cmp.n154, label %.preheader.loopexit.i, label %.lr.ph57.i.preheader197

.lr.ph57.i.preheader197:                          ; preds = %.lr.ph57.i.preheader, %middle.block153
  %indvars.iv63.i.ph = phi i64 [ %i.ds, %middle.block153 ], [ %wide.trip.count.i34, %.lr.ph57.i.preheader ]
  br label %.lr.ph57.i

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37.1, %.lr.ph.i35 ], [ %indvars.iv.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36
  %i.gp = getelementptr i8, ptr %gep.i, i64 -2
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !33
  %i.gr = sub nuw nsw i64 %i.ch, %indvars.iv.i36
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !33
  %i.gu = add i16 %i.gt, %i.gq
  %i.gv = zext i16 %i.gu to i32
  %i.gw = mul nuw nsw i32 %i.ce, %i.gv
  %i.gx = lshr i32 %i.gw, 16
  %i.gy = trunc nuw nsw i32 %i.gx to i16
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !33
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 3 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i37
  %i.ha = getelementptr i8, ptr %gep.i.1, i64 -2
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !33
  %i.hc = sub nuw nsw i64 %i.ch, %indvars.iv.next.i37
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !33
  %i.hf = add i16 %i.he, %i.hb
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.ce, %i.hg
  %i.hi = lshr i32 %i.hh, 16
  %i.hj = trunc nuw nsw i32 %i.hi to i16
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next.i37
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !33
  %indvars.iv.next.i37.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %exitcond.not.i38.1 = icmp eq i64 %indvars.iv.next.i37.1, %wide.trip.count.i34
  br i1 %exitcond.not.i38.1, label %.preheader53.i, label %.lr.ph.i35, !llvm.loop !19

.preheader.loopexit.i:                            ; preds = %.lr.ph57.i, %middle.block153
  %indvars.iv.next64.i.lcssa = phi i64 [ %i.ds, %middle.block153 ], [ %indvars.iv.next64.i, %.lr.ph57.i ]
  %i.hl = trunc nuw nsw i64 %indvars.iv.next64.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ci, %.preheader53.i ], [ %i.hl, %.preheader.loopexit.i ] ; 6 uses
  %i.hm = icmp slt i32 %.1.lcssa.i, %1
  br i1 %i.hm, label %.lr.ph60.i, label %.lr.ph.i41.preheader

.lr.ph60.i:                                       ; preds = %.preheader.i
  %i.hn = zext i32 %.1.lcssa.i to i64             ; 10 uses
  %i.ho = sub nsw i64 %i.s, %i.hn                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ho, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph60.i
  %i.hp = xor i64 %i.hn, -1
  %i.hq = add nsw i64 %i.hp, %i.s                 ; 2 uses
  %i.hr = add i32 %.1, %.1.lcssa.i
  %i.hs = sub i32 %i.cq, %i.hr                    ; 2 uses
  %i.ht = trunc i64 %i.hq to i32                  ; 2 uses
  %i.hu = sub i32 %i.hs, %i.ht
  %i.hv = icmp sgt i32 %i.hu, %i.hs
  %i.hw = add i32 %.1.lcssa.i, %i.cr              ; 2 uses
  %i.hx = add i32 %i.hw, %i.ht
  %i.hy = icmp slt i32 %i.hx, %i.hw
  %i.hz = icmp ugt i64 %i.hq, 4294967295
  %i.ia = or i1 %i.hy, %i.hz
  %i.ib = or i1 %i.hv, %i.ia
  br i1 %i.ib, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ic = shl nuw nsw i64 %i.hn, 1
  %gep = getelementptr i8, ptr %i.bi, i64 %i.ic   ; 3 uses
  %i.id = add i32 %.1, %.1.lcssa.i
  %i.ie = sub i32 %i.cp, %i.id
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = add nsw i64 %i.if, %i.hn
  %.reass = add nsw i64 %i.ig, %i.aa
  %reass.sub = shl nsw i64 %.reass, 1
  %i.ih = getelementptr i8, ptr %scevgep125, i64 %reass.sub
  %i.ii = shl nsw i64 %i.if, 1
  %i.ij = getelementptr i8, ptr %scevgep, i64 %i.ii
  %i.ik = add i32 %.1.lcssa.i, %i.cl
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = shl nsw i64 %i.il, 1
  %i.in = getelementptr i8, ptr %i.ab, i64 %i.im
  %i.io = add nsw i64 %i.cs, %i.il
  %i.ip = sub nsw i64 %i.io, %i.hn
  %i.iq = shl nsw i64 %i.ip, 1
  %i.ir = getelementptr i8, ptr %i.w, i64 %i.iq
  %bound0 = icmp ult ptr %gep, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  %bound0125 = icmp ult ptr %gep, %i.ij
  %bound1126 = icmp ult ptr %i.ih, %i.bj
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx = or i1 %found.conflict, %found.conflict127
  %bound0128 = icmp ult ptr %gep, %i.ir
  %bound1129 = icmp ult ptr %i.in, %i.bj
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx, %found.conflict130
  br i1 %conflict.rdx131, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ho, -8                      ; 3 uses
  %i.is = add nsw i64 %n.vec, %i.hn
  %i.it = load i16, ptr %i.co, align 2, !tbaa !33, !alias.scope !40
  %i.iu = shl i16 %i.it, 1
  %broadcast.splatinsert133 = insertelement <8 x i16> poison, i16 %i.iu, i64 0
  %broadcast.splat134 = shufflevector <8 x i16> %broadcast.splatinsert133, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iv = add nuw i64 %index, %i.hn               ; 2 uses
  %i.iw = trunc nuw nsw i64 %i.iv to i32          ; 2 uses
  %i.ix = add i32 %.1, %i.iw
  %i.iy = sub i32 %i.cp, %i.ix
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.iz
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 -14
  %wide.load = load <8 x i16>, ptr %i.jb, align 2, !tbaa !33, !alias.scope !41
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jc = add i32 %i.iw, %i.cl
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jd
  %wide.load132 = load <8 x i16>, ptr %i.je, align 2, !tbaa !33, !alias.scope !42
  %i.jf = add <8 x i16> %reverse, %wide.load132
  %i.jg = sub <8 x i16> %broadcast.splat134, %i.jf
  %i.jh = zext <8 x i16> %i.jg to <8 x i32>
  %i.ji = mul nuw nsw <8 x i32> %broadcast.splat, %i.jh
  %i.jj = lshr <8 x i32> %i.ji, splat (i32 16)
  %i.jk = trunc nuw nsw <8 x i32> %i.jj to <8 x i16>
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.iv
  store <8 x i16> %i.jk, ptr %i.jl, align 2, !tbaa !33, !alias.scope !43, !noalias !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ho, %n.vec
  br i1 %cmp.n, label %.lr.ph.i41.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph60.i, %middle.block
  %indvars.iv66.i.ph = phi i64 [ %i.hn, %vector.memcheck ], [ %i.hn, %vector.scevcheck ], [ %i.hn, %.lr.ph60.i ], [ %i.is, %middle.block ]
  br label %scalar.ph

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.preheader197, %.lr.ph57.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph57.i ], [ %indvars.iv63.i.ph, %.lr.ph57.i.preheader197 ] ; 4 uses
  %gep74.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv63.i
  %i.jn = load i16, ptr %gep74.i, align 2, !tbaa !33
  %i.jo = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.jp = add i32 %i.jo, %i.cl
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !33
  %i.jt = sub i16 %i.jn, %i.js
  %i.ju = zext i16 %i.jt to i32
  %i.jv = mul nuw nsw i32 %i.ce, %i.ju
  %i.jw = lshr i32 %i.jv, 16
  %i.jx = trunc nuw nsw i32 %i.jw to i16
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv63.i
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !33
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 3 uses
  %i.jz = icmp samesign ult i64 %indvars.iv.next64.i, %i.cm
  br i1 %i.jz, label %.lr.ph57.i, label %.preheader.loopexit.i, !llvm.loop !26

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph ], [ %indvars.iv66.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ka = load i16, ptr %i.co, align 2, !tbaa !33
  %i.kb = shl i16 %i.ka, 1
  %i.kc = trunc nuw nsw i64 %indvars.iv66.i to i32 ; 2 uses
  %i.kd = add i32 %.1, %i.kc
  %i.ke = sub i32 %i.cp, %i.kd
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.kf
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !33
  %i.ki = add i32 %i.kc, %i.cl
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.kj
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !33
  %i.km = add i16 %i.kh, %i.kl
  %i.kn = sub i16 %i.kb, %i.km
  %i.ko = zext i16 %i.kn to i32
  %i.kp = mul nuw nsw i32 %i.ce, %i.ko
  %i.kq = lshr i32 %i.kp, 16
  %i.kr = trunc nuw nsw i32 %i.kq to i16
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv66.i
  store i16 %i.kr, ptr %i.ks, align 2, !tbaa !33
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %i.s
  br i1 %exitcond70.not.i, label %.lr.ph.i41.preheader, label %scalar.ph, !llvm.loop !27

.lr.ph.i41.preheader:                             ; preds = %scalar.ph, %middle.block, %.preheader.i
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader, %bb.s
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %bb.s ], [ 0, %.lr.ph.i41.preheader ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.23.097, i64 %indvars.iv.i43 ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !30
  %i.kv = zext i8 %i.ku to i32                    ; 4 uses
  %i.kw = icmp sgt i32 %.sroa.55.2, %i.kv
  %i.kx = icmp slt i32 %.sroa.52.2, %i.kv
  %or.cond90 = select i1 %i.kw, i1 %i.kx, i1 false
  br i1 %or.cond90, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i41
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i43
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !33
  %i.la = zext i16 %i.kz to i32
  %i.lb = shl nuw nsw i32 %i.kv, 2
  %i.lc = sub nsw i32 %i.la, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !33
  %i.lg = sext i16 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, %i.kv
  %i.li = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 33023) %i.lh, i32 0)
  %i.lj = tail call i32 @llvm.umin.i32(i32 %i.li, i32 255)
  %i.lk = trunc nuw i32 %i.lj to i8
  store i8 %i.lk, ptr %i.kt, align 1, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %i.s
  br i1 %exitcond.not.i45, label %ApplyFilter.exit.loopexit, label %.lr.ph.i41, !llvm.loop !28

ApplyFilter.exit.loopexit:                        ; preds = %bb.s
  %i.ll = getelementptr inbounds i8, ptr %.sroa.23.097, i64 %i.ae
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.loopexit, %ApplyFilter.exit.loopexit
  %.sroa.23.1 = phi ptr [ %.sroa.23.097, %._crit_edge.i.loopexit ], [ %i.ll, %ApplyFilter.exit.loopexit ]
  %i.lm = add nsw i32 %.sroa.14.095, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.lm, %2
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

end_hunk_0
