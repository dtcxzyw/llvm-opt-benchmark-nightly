inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.NewColorMapType = type { [3 x i8], [3 x i8], i32, i64, ptr }

@SortRGBAxis = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @GifQuantizeBuffer(i32 noundef %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef writeonly captures(none) %6, ptr noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca [256 x %struct.NewColorMapType], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.a = tail call noalias dereferenceable_or_null(786432) ptr @malloc(i64 noundef 786432) #9 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.v, label %.preheader238

.preheader237:                                    ; preds = %.preheader238
  %i.c = mul i32 %1, %0                           ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader236.preheader

.lr.ph.preheader:                                 ; preds = %.preheader237
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

.preheader238:                                    ; preds = %bb.a, %.preheader238
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader238 ], [ 0, %bb.a ] ; 8 uses
  %i.e = lshr i64 %indvars.iv, 10
  %i.f = trunc i64 %i.e to i8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  store i8 %i.f, ptr %i.g, align 8, !tbaa !7
  %i.h = lshr i64 %indvars.iv, 5
  %i.i = trunc i64 %i.h to i8
  %i.j = and i8 %i.i, 31
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !7
  %i.l = trunc i64 %indvars.iv to i8
  %i.m = and i8 %i.l, 30
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.m, ptr %i.n, align 2, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = lshr i64 %indvars.iv, 10
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next ; 4 uses
  store i8 %i.q, ptr %i.r, align 8, !tbaa !7
  %i.s = lshr i64 %indvars.iv, 5
  %i.t = trunc i64 %i.s to i8
  %i.u = and i8 %i.t, 31
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !7
  %i.w = trunc i64 %indvars.iv.next to i8
  %i.x = and i8 %i.w, 31
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 %i.x, ptr %i.y, align 2, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32768
  br i1 %exitcond.not.1, label %.preheader237, label %.preheader238, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv290 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next291, %.lr.ph ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv290
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = lshr i8 %i.ab, 3
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv290
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7
  %i.ag = lshr i8 %i.af, 3
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv290
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !7
  %i.ak = lshr i8 %i.aj, 3
  %i.al = zext nneg i8 %i.ak to i64
  %.idx212 = mul nuw nsw i64 %i.ad, 24576
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx212
  %.idx213 = mul nuw nsw i64 %i.ah, 768
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx213
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !8
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !8
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count
  br i1 %exitcond293.not, label %.preheader236.preheader, label %.lr.ph, !llvm.loop !15

.preheader236.preheader:                          ; preds = %.lr.ph, %.preheader237
  br label %.preheader236

.preheader236:                                    ; preds = %.preheader236, %.preheader236.preheader
  %indvars.iv298 = phi i64 [ 0, %.preheader236.preheader ], [ %indvars.iv.next299.3, %.preheader236 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %indvars.iv298 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 -1, ptr %i.av, align 4, !tbaa !7
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, ptr %i.as, align 16, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  store i8 -1, ptr %i.aw, align 1, !tbaa !7
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %indvars.iv298 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i32 0, ptr %i.az, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  store i8 -1, ptr %i.bb, align 4, !tbaa !7
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, ptr %i.ay, align 16, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 37
  store i8 -1, ptr %i.bc, align 1, !tbaa !7
  %indvars.iv.next299.3 = add nuw nsw i64 %indvars.iv298, 2 ; 2 uses
  %exitcond301.not.3 = icmp eq i64 %indvars.iv.next299.3, 256
  br i1 %exitcond301.not.3, label %.preheader235, label %.preheader236, !llvm.loop !18

.preheader235:                                    ; preds = %.preheader236, %bb.b
  %indvars.iv302 = phi i64 [ %indvars.iv.next303.3, %bb.b ], [ 0, %.preheader236 ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv302
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !8
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %bb.c, label %.preheader235.1

.preheader235.1:                                  ; preds = %.preheader235
  %indvars.iv.next303 = or disjoint i64 %indvars.iv302, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next303
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !8
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %bb.c, label %.preheader235.2

.preheader235.2:                                  ; preds = %.preheader235.1
  %indvars.iv.next303.1 = or disjoint i64 %indvars.iv302, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next303.1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !8
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %bb.c, label %.preheader235.3

.preheader235.3:                                  ; preds = %.preheader235.2
  %indvars.iv.next303.2 = or disjoint i64 %indvars.iv302, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next303.2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !8
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader235.3
  %indvars.iv.next303.3 = add nuw nsw i64 %indvars.iv302, 4 ; 2 uses
  %exitcond305.not.3 = icmp eq i64 %indvars.iv.next303.3, 32768
  br i1 %exitcond305.not.3, label %.thread, label %.preheader235, !llvm.loop !19

.thread:                                          ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 786432 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !20
  br label %._crit_edge

bb.c:                                             ; preds = %.preheader235.3, %.preheader235.2, %.preheader235.1, %.preheader235
  %indvars.iv302.lcssa = phi i64 [ %indvars.iv302, %.preheader235 ], [ %indvars.iv.next303, %.preheader235.1 ], [ %indvars.iv.next303.1, %.preheader235.2 ], [ %indvars.iv.next303.2, %.preheader235.3 ] ; 2 uses
  %i.bv = and i64 %indvars.iv302.lcssa, 4294967295 ; 5 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.bv ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !20
  %i.by = icmp samesign ult i64 %indvars.iv302.lcssa, 32767
  br i1 %i.by, label %.lr.ph247.preheader, label %._crit_edge

.lr.ph247.preheader:                              ; preds = %bb.c
  %i.bz = sub nuw nsw i64 32767, %i.bv            ; 3 uses
  %xtraiter = and i64 %i.bz, 1
  %i.ca = icmp eq i64 %i.bv, 32766
  br i1 %i.ca, label %.lr.ph247.epil.preheader, label %.lr.ph247.preheader.new

.lr.ph247.preheader.new:                          ; preds = %.lr.ph247.preheader
  %unroll_iter = and i64 %i.bz, 32766
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %bb.f, %.lr.ph247.preheader.new
  %indvars.iv306 = phi i64 [ %i.bv, %.lr.ph247.preheader.new ], [ %indvars.iv.next307.1, %bb.f ] ; 2 uses
  %.0246 = phi ptr [ %i.bw, %.lr.ph247.preheader.new ], [ %.1.1, %bb.f ] ; 2 uses
  %.0191245 = phi i32 [ 1, %.lr.ph247.preheader.new ], [ %.1192.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph247.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv306 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !8
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %bb.d, label %.lr.ph247.1

bb.d:                                             ; preds = %.lr.ph247
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0246, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !21
  %i.ch = add i32 %.0191245, 1
  br label %.lr.ph247.1

.lr.ph247.1:                                      ; preds = %bb.d, %.lr.ph247
  %.1192 = phi i32 [ %i.ch, %bb.d ], [ %.0191245, %.lr.ph247 ] ; 2 uses
  %.1 = phi ptr [ %i.cf, %bb.d ], [ %.0246, %.lr.ph247 ] ; 2 uses
  %indvars.iv.next307.1 = add nuw nsw i64 %indvars.iv306, 2 ; 3 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next307.1 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !8
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph247.1
  %i.cm = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !21
  %i.cn = add i32 %.1192, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph247.1
  %.1192.1 = phi i32 [ %i.cn, %bb.e ], [ %.1192, %.lr.ph247.1 ] ; 3 uses
  %.1.1 = phi ptr [ %i.ci, %bb.e ], [ %.1, %.lr.ph247.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph247, !llvm.loop !22

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph247.epil.preheader

.lr.ph247.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph247.preheader
  %indvars.iv306.epil.init = phi i64 [ %i.bv, %.lr.ph247.preheader ], [ %indvars.iv.next307.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0246.epil.init = phi ptr [ %i.bw, %.lr.ph247.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0191245.epil.init = phi i32 [ 1, %.lr.ph247.preheader ], [ %.1192.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod378 = trunc i64 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod378)
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv306.epil.init ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !8
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph247.epil.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0246.epil.init, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !21
  %i.cu = add i32 %.0191245.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.lr.ph247.epil.preheader, %.thread, %bb.c
  %.0191.lcssa = phi i32 [ 1, %bb.c ], [ 1, %.thread ], [ %.1192.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %bb.g ], [ %.0191245.epil.init, %.lr.ph247.epil.preheader ]
  %.0.lcssa = phi ptr [ %i.bw, %bb.c ], [ %i.bt, %.thread ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.cs, %bb.g ], [ %.0246.epil.init, %.lr.ph247.epil.preheader ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  store ptr null, ptr %i.cv, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.0191.lcssa, ptr %i.cw, align 8, !tbaa !16
  %i.cx = zext i32 %0 to i64
  %i.cy = zext i32 %1 to i64
  %i.cz = mul nuw nsw i64 %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.cz, ptr %i.da, align 16, !tbaa !23
  %i.db = load i32, ptr %2, align 4, !tbaa !3     ; 4 uses
  %i.dc = icmp ugt i32 %i.db, 1
  br i1 %i.dc, label %.preheader141.i.preheader, label %.loopexit234

.preheader141.i.preheader:                        ; preds = %._crit_edge
  %wide.trip.count313 = zext i32 %i.db to i64
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.critedge.i, %.preheader141.i.preheader
  %indvars.iv310 = phi i64 [ 1, %.preheader141.i.preheader ], [ %indvars.iv.next311, %.critedge.i ] ; 4 uses
  %.0125191.i = phi i32 [ 0, %.preheader141.i.preheader ], [ %.3.2.i, %.critedge.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 5 uses
  %.0117151.i = phi i32 [ -1, %.preheader.preheader.i ], [ %.2.2.i, %bb.p ] ; 3 uses
  %.1126150.i = phi i32 [ %.0125191.i, %.preheader.preheader.i ], [ %.3.2.i, %bb.p ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %indvars.iv.i ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !7
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %i.di = icmp slt i32 %.0117151.i, %i.dh
  br i1 %i.di, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.preheader.i
  %i.dj = load i32, ptr %i.df, align 8, !tbaa !16
  %i.dk = icmp ugt i32 %i.dj, 1
  br i1 %i.dk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr @SortRGBAxis, align 4, !tbaa !3
  %i.dl = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.preheader.i
  %.3.i = phi i32 [ %i.dl, %bb.i ], [ %.1126150.i, %bb.h ], [ %.1126150.i, %.preheader.i ] ; 2 uses
  %.2.i = phi i32 [ %i.dh, %bb.i ], [ %.0117151.i, %bb.h ], [ %.0117151.i, %.preheader.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !7
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = icmp slt i32 %.2.i, %i.do
  br i1 %i.dp, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dq = load i32, ptr %i.df, align 8, !tbaa !16
  %i.dr = icmp ugt i32 %i.dq, 1
  br i1 %i.dr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr @SortRGBAxis, align 4, !tbaa !3
  %i.ds = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.3.1.i = phi i32 [ %i.ds, %bb.l ], [ %.3.i, %bb.k ], [ %.3.i, %bb.j ] ; 2 uses
  %.2.1.i = phi i32 [ %i.do, %bb.l ], [ %.2.i, %bb.k ], [ %.2.i, %bb.j ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 5
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !7
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = icmp slt i32 %.2.1.i, %i.dv
  br i1 %i.dw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dx = load i32, ptr %i.df, align 8, !tbaa !16
  %i.dy = icmp ugt i32 %i.dx, 1
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr @SortRGBAxis, align 4, !tbaa !3
  %i.dz = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.3.2.i = phi i32 [ %i.dz, %bb.o ], [ %.3.1.i, %bb.n ], [ %.3.1.i, %bb.m ] ; 3 uses
  %.2.2.i = phi i32 [ %i.dv, %bb.o ], [ %.2.1.i, %bb.n ], [ %.2.1.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv310
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.p
  %i.ea = icmp eq i32 %.2.2.i, -1
  br i1 %i.ea, label %.loopexit234.loopexit.split.loop.exit348, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.eb = zext i32 %.3.2.i to i64
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %i.eb ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !16 ; 4 uses
  %i.ef = zext i32 %i.ee to i64                   ; 3 uses
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = tail call noalias ptr @malloc(i64 noundef %i.eg) #9 ; 16 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %SubdivColorMap.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %.0123153.i = load ptr, ptr %i.ej, align 8, !tbaa !25 ; 2 uses
  %i.ek = icmp ne i32 %i.ee, 0
  %i.el = icmp ne ptr %.0123153.i, null
  %i.em = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %i.em, label %.lr.ph.i, label %._crit_edge157.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %indvars.iv201.i = phi i64 [ %indvars.iv.next202.i, %.lr.ph.i ], [ 0, %bb.r ] ; 2 uses
  %.0123155.i = phi ptr [ %.0123.i, %.lr.ph.i ], [ %.0123153.i, %bb.r ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv201.i
  store ptr %.0123155.i, ptr %i.en, align 8, !tbaa !25
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0123155.i, i64 16
  %.0123.i = load ptr, ptr %i.eo, align 8, !tbaa !25 ; 2 uses
  %i.ep = icmp samesign ult i64 %indvars.iv.next202.i, %i.ef
  %i.eq = icmp ne ptr %.0123.i, null
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %i.er, label %.lr.ph.i, label %._crit_edge157.i, !llvm.loop !26

._crit_edge157.i:                                 ; preds = %.lr.ph.i, %bb.r
  tail call void @qsort(ptr noundef nonnull %i.eh, i64 noundef %i.ef, i64 noundef 8, ptr noundef nonnull @SortCmpRtn) #8
  %i.es = add i32 %i.ee, -1                       ; 3 uses
  %.not198.i = icmp eq i32 %i.es, 0
  br i1 %.not198.i, label %._crit_edge162.i, label %.lr.ph161.preheader.i

.lr.ph161.preheader.i:                            ; preds = %._crit_edge157.i
  %wide.trip.count207.i = zext i32 %i.es to i64   ; 4 uses
  %.pre.i = load ptr, ptr %i.eh, align 8, !tbaa !25 ; 2 uses
  %xtraiter379 = and i64 %wide.trip.count207.i, 7 ; 3 uses
  %i.et = icmp ult i32 %i.es, 8
  br i1 %i.et, label %.lr.ph161.i.epil.preheader, label %.lr.ph161.preheader.i.new

.lr.ph161.preheader.i.new:                        ; preds = %.lr.ph161.preheader.i
  %unroll_iter382 = and i64 %wide.trip.count207.i, 4294967288
  br label %.lr.ph161.i

.lr.ph161.i:                                      ; preds = %.lr.ph161.i, %.lr.ph161.preheader.i.new
  %i.eu = phi ptr [ %.pre.i, %.lr.ph161.preheader.i.new ], [ %i.fy, %.lr.ph161.i ]
  %indvars.iv204.i = phi i64 [ 0, %.lr.ph161.preheader.i.new ], [ %indvars.iv.next205.i.7, %.lr.ph161.i ] ; 8 uses
  %niter383 = phi i64 [ 0, %.lr.ph161.preheader.i.new ], [ %niter383.next.7, %.lr.ph161.i ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv204.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !25 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !21
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv204.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !25 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !21
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv204.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !25 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !21
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv204.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !25 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !21
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv204.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !25 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !21
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv204.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !25 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv204.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !25 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !21
  %indvars.iv.next205.i.7 = add nuw nsw i64 %indvars.iv204.i, 8 ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next205.i.7
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !25 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !21
  %niter383.next.7 = add i64 %niter383, 8         ; 2 uses
  %niter383.ncmp.7 = icmp eq i64 %niter383.next.7, %unroll_iter382
  br i1 %niter383.ncmp.7, label %._crit_edge162.i.loopexit.unr-lcssa, label %.lr.ph161.i, !llvm.loop !27

._crit_edge162.i.loopexit.unr-lcssa:              ; preds = %.lr.ph161.i
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %._crit_edge162.i, label %.lr.ph161.i.epil.preheader

.lr.ph161.i.epil.preheader:                       ; preds = %._crit_edge162.i.loopexit.unr-lcssa, %.lr.ph161.preheader.i
  %.epil.init = phi ptr [ %.pre.i, %.lr.ph161.preheader.i ], [ %i.fy, %._crit_edge162.i.loopexit.unr-lcssa ]
  %indvars.iv204.i.epil.init = phi i64 [ 0, %.lr.ph161.preheader.i ], [ %indvars.iv.next205.i.7, %._crit_edge162.i.loopexit.unr-lcssa ]
  %lcmp.mod381 = icmp ne i64 %xtraiter379, 0
  tail call void @llvm.assume(i1 %lcmp.mod381)
  br label %.lr.ph161.i.epil

.lr.ph161.i.epil:                                 ; preds = %.lr.ph161.i.epil, %.lr.ph161.i.epil.preheader
  %i.ga = phi ptr [ %.epil.init, %.lr.ph161.i.epil.preheader ], [ %i.gc, %.lr.ph161.i.epil ]
  %indvars.iv204.i.epil = phi i64 [ %indvars.iv204.i.epil.init, %.lr.ph161.i.epil.preheader ], [ %indvars.iv.next205.i.epil, %.lr.ph161.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph161.i.epil.preheader ], [ %epil.iter.next, %.lr.ph161.i.epil ]
  %indvars.iv.next205.i.epil = add nuw nsw i64 %indvars.iv204.i.epil, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next205.i.epil
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !25 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !21
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter379
  br i1 %epil.iter.cmp.not, label %._crit_edge162.i, label %.lr.ph161.i.epil, !llvm.loop !28

._crit_edge162.i:                                 ; preds = %._crit_edge162.i.loopexit.unr-lcssa, %.lr.ph161.i.epil, %._crit_edge157.i
  %.pre-phi215.i = phi i64 [ 0, %._crit_edge157.i ], [ %wide.trip.count207.i, %.lr.ph161.i.epil ], [ %wide.trip.count207.i, %._crit_edge162.i.loopexit.unr-lcssa ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.pre-phi215.i
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !25
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr null, ptr %i.gg, align 8, !tbaa !21
  %i.gh = load ptr, ptr %i.eh, align 8, !tbaa !25 ; 5 uses
  store ptr %i.gh, ptr %i.ej, align 8, !tbaa !20
  tail call void @free(ptr noundef nonnull %i.eh) #8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !8  ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !21, !nonnull !30, !noundef !30 ; 5 uses
  %i.gn = load i64, ptr %i.gi, align 16, !tbaa !23
  %i.go = lshr i64 %i.gn, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !8  ; 2 uses
  %i.gr = add i64 %i.gk, %i.gq
  %i.gs = sub i64 %i.go, %i.gr                    ; 2 uses
  %i.gt = icmp sgt i64 %i.gs, -1
  br i1 %i.gt, label %.lr.ph253.preheader, label %.critedge.i

.lr.ph253.preheader:                              ; preds = %._crit_edge162.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !21 ; 2 uses
  %.not138.i356 = icmp eq ptr %i.gv, null
  br i1 %.not138.i356, label %.critedge.i, label %.lr.ph172.i

.lr.ph253:                                        ; preds = %.lr.ph172.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !21 ; 2 uses
  %.not138.i = icmp eq ptr %i.gx, null
  br i1 %.not138.i, label %.critedge.i, label %.lr.ph172.i

.lr.ph172.i:                                      ; preds = %.lr.ph253.preheader, %.lr.ph253
  %i.gy = phi ptr [ %i.gx, %.lr.ph253 ], [ %i.gv, %.lr.ph253.preheader ] ; 5 uses
  %i.gz = phi ptr [ %i.gy, %.lr.ph253 ], [ %i.gm, %.lr.ph253.preheader ] ; 2 uses
  %.0116170.i250358 = phi i32 [ %i.hc, %.lr.ph253 ], [ 1, %.lr.ph253.preheader ]
  %.0118169.i251357 = phi i64 [ %i.hd, %.lr.ph253 ], [ %i.gk, %.lr.ph253.preheader ]
  %i.ha = phi i64 [ %i.hf, %.lr.ph253 ], [ %i.gq, %.lr.ph253.preheader ]
  %i.hb = phi i64 [ %i.hg, %.lr.ph253 ], [ %i.gs, %.lr.ph253.preheader ]
  %i.hc = add i32 %.0116170.i250358, 1            ; 3 uses
  %i.hd = add nsw i64 %i.ha, %.0118169.i251357    ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !8  ; 2 uses
  %i.hg = sub nsw i64 %i.hb, %i.hf                ; 2 uses
  %i.hh = icmp sgt i64 %i.hg, -1
  br i1 %i.hh, label %.lr.ph253, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph253, %.lr.ph172.i, %.lr.ph253.preheader, %._crit_edge162.i
  %.lcssa = phi ptr [ %i.gm, %._crit_edge162.i ], [ %i.gm, %.lr.ph253.preheader ], [ %i.gy, %.lr.ph172.i ], [ %i.gy, %.lr.ph253 ] ; 2 uses
  %.0116170.i.lcssa = phi i32 [ 1, %._crit_edge162.i ], [ 1, %.lr.ph253.preheader ], [ %i.hc, %.lr.ph172.i ], [ %i.hc, %.lr.ph253 ] ; 2 uses
  %.0118169.i.lcssa = phi i64 [ %i.gk, %._crit_edge162.i ], [ %i.gk, %.lr.ph253.preheader ], [ %i.hd, %.lr.ph172.i ], [ %i.hd, %.lr.ph253 ] ; 2 uses
  %.1124167.i.lcssa = phi ptr [ %i.gh, %._crit_edge162.i ], [ %i.gh, %.lr.ph253.preheader ], [ %i.gz, %.lr.ph172.i ], [ %i.gz, %.lr.ph253 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.1124167.i.lcssa, i64 16
  %i.hj = load i32, ptr @SortRGBAxis, align 4, !tbaa !3
  %i.hk = zext nneg i32 %i.hj to i64              ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.1124167.i.lcssa, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !7
  %i.hn = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.hk
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !7
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %indvars.iv310 ; 8 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  store ptr %.lcssa, ptr %i.hq, align 8, !tbaa !20
  store ptr null, ptr %i.hi, align 8, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i64 %.0118169.i.lcssa, ptr %i.hr, align 16, !tbaa !23
  %i.hs = load i64, ptr %i.gi, align 16, !tbaa !23
  %i.ht = sub i64 %i.hs, %.0118169.i.lcssa
  store i64 %i.ht, ptr %i.gi, align 16, !tbaa !23
  %i.hu = sub i32 %i.ee, %.0116170.i.lcssa
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i32 %i.hu, ptr %i.hv, align 8, !tbaa !16
  store i32 %.0116170.i.lcssa, ptr %i.ed, align 8, !tbaa !16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ec, i64 3
  %9 = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %10 = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %11 = load i8, ptr %10, align 4, !tbaa !7
  %12 = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store i8 %11, ptr %12, align 4, !tbaa !7
  %13 = load <4 x i8>, ptr %i.ec, align 16, !tbaa !7
  store <4 x i8> %13, ptr %i.hp, align 16, !tbaa !7
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ec, i64 5
  %14 = load i8, ptr %i.hx, align 1, !tbaa !7
  %15 = getelementptr inbounds nuw i8, ptr %i.hp, i64 5
  store i8 %14, ptr %15, align 1, !tbaa !7
  %i.hy = shl i8 %i.hm, 3
  %i.hz = shl i8 %i.ho, 3                         ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hk ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !7
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 %i.hk ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !7
  %i.ie = sub i8 %i.ib, %i.hz
  %i.if = add i8 %i.ie, %i.id
  store i8 %i.if, ptr %i.ic, align 1, !tbaa !7
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !7
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.hk
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !7
  %i.ii = sub i8 %i.hy, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hk
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !7
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond314.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count313
  br i1 %exitcond314.not, label %.loopexit234.loopexit, label %.preheader.preheader.i, !llvm.loop !31

SubdivColorMap.exit:                              ; preds = %bb.q
  tail call void @free(ptr noundef %i.a) #8
  br label %bb.v

.loopexit234.loopexit.split.loop.exit348:         ; preds = %._crit_edge.i
  %i.ik = trunc nuw i64 %indvars.iv310 to i32
  br label %.loopexit234.loopexit

.loopexit234.loopexit:                            ; preds = %.critedge.i, %.loopexit234.loopexit.split.loop.exit348
  %.1228.ph.ph.ph = phi i32 [ %i.ik, %.loopexit234.loopexit.split.loop.exit348 ], [ %i.db, %.critedge.i ]
  %.pre = load i32, ptr %2, align 4, !tbaa !3
  br label %.loopexit234

.loopexit234:                                     ; preds = %.loopexit234.loopexit, %._crit_edge
  %i.il = phi i32 [ %i.db, %._crit_edge ], [ %.pre, %.loopexit234.loopexit ] ; 3 uses
  %.1228.ph = phi i32 [ 1, %._crit_edge ], [ %.1228.ph.ph.ph, %.loopexit234.loopexit ] ; 6 uses
  %i.im = icmp ult i32 %.1228.ph, %i.il
  %i.in = icmp slt i32 %.1228.ph, %i.il
  %or.cond = and i1 %i.im, %i.in
  br i1 %or.cond, label %.lr.ph263.preheader, label %.lr.ph279.preheader

.lr.ph263.preheader:                              ; preds = %.loopexit234
  %i.io = sext i32 %.1228.ph to i64
  %i.ip = mul nsw i64 %i.io, 3
  %scevgep = getelementptr i8, ptr %7, i64 %i.ip
  %i.iq = xor i32 %.1228.ph, -1
  %i.ir = add i32 %i.il, %i.iq
  %i.is = zext i32 %i.ir to i64
  %i.it = mul nuw nsw i64 %i.is, 3
  %i.iu = add nuw nsw i64 %i.it, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.iu, i1 false), !tbaa !7
  br label %.lr.ph279.preheader

.lr.ph279.preheader:                              ; preds = %.loopexit234, %.lr.ph263.preheader
  %wide.trip.count321 = zext i32 %.1228.ph to i64
  br label %.lr.ph279

.preheader:                                       ; preds = %bb.u
  br i1 %i.d, label %.lr.ph284.preheader, label %._crit_edge285

.lr.ph284.preheader:                              ; preds = %.preheader
  %wide.trip.count326 = zext nneg i32 %i.c to i64
  br label %.lr.ph284

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %bb.u
  %indvars.iv318 = phi i64 [ 0, %.lr.ph279.preheader ], [ %indvars.iv.next319, %bb.u ] ; 4 uses
  %i.iv = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %indvars.iv318 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !16 ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph279
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %.2264 = load ptr, ptr %i.iz, align 8, !tbaa !25 ; 2 uses
  %.not211265 = icmp eq ptr %.2264, null
  br i1 %.not211265, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %bb.s
  %i.ja = trunc i64 %indvars.iv318 to i8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph271, %bb.t
  %.2269 = phi ptr [ %.2264, %.lr.ph271 ], [ %.2, %bb.t ] ; 5 uses
  %.0184268 = phi i64 [ 0, %.lr.ph271 ], [ %i.jm, %bb.t ]
  %.0185267 = phi i64 [ 0, %.lr.ph271 ], [ %i.ji, %bb.t ]
  %.0186266 = phi i64 [ 0, %.lr.ph271 ], [ %i.je, %bb.t ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.2269, i64 3
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !32
  %i.jc = load i8, ptr %.2269, align 8, !tbaa !7
  %i.jd = zext i8 %i.jc to i64
  %i.je = add nuw nsw i64 %.0186266, %i.jd        ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.2269, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !7
  %i.jh = zext i8 %i.jg to i64
  %i.ji = add nuw nsw i64 %.0185267, %i.jh        ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.2269, i64 2
  %i.jk = load i8, ptr %i.jj, align 2, !tbaa !7
  %i.jl = zext i8 %i.jk to i64
  %i.jm = add nuw nsw i64 %.0184268, %i.jl        ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.2269, i64 16
  %.2 = load ptr, ptr %i.jn, align 8, !tbaa !25   ; 2 uses
  %.not211 = icmp eq ptr %.2, null
  br i1 %.not211, label %._crit_edge272.loopexit, label %bb.t, !llvm.loop !33

._crit_edge272.loopexit:                          ; preds = %bb.t
  %i.jo = shl i64 %i.je, 3
  %i.jp = shl i64 %i.ji, 3
  %i.jq = shl i64 %i.jm, 3
  br label %._crit_edge272

._crit_edge272:                                   ; preds = %._crit_edge272.loopexit, %bb.s
  %.0186.lcssa = phi i64 [ 0, %bb.s ], [ %i.jo, %._crit_edge272.loopexit ]
  %.0185.lcssa = phi i64 [ 0, %bb.s ], [ %i.jp, %._crit_edge272.loopexit ]
  %.0184.lcssa = phi i64 [ 0, %bb.s ], [ %i.jq, %._crit_edge272.loopexit ]
  %i.jr = zext nneg i32 %i.ix to i64              ; 3 uses
  %i.js = sdiv i64 %.0186.lcssa, %i.jr
  %i.jt = trunc i64 %i.js to i8
  %i.ju = getelementptr inbounds nuw [3 x i8], ptr %7, i64 %indvars.iv318 ; 3 uses
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !34
  %i.jv = sdiv i64 %.0185.lcssa, %i.jr
  %i.jw = trunc i64 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !36
  %i.jy = sdiv i64 %.0184.lcssa, %i.jr
  %i.jz = trunc i64 %i.jy to i8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph279, %._crit_edge272
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count321
  br i1 %exitcond322.not, label %.preheader, label %.lr.ph279, !llvm.loop !38

.lr.ph284:                                        ; preds = %.lr.ph284.preheader, %.lr.ph284
  %indvars.iv323 = phi i64 [ 0, %.lr.ph284.preheader ], [ %indvars.iv.next324, %.lr.ph284 ] ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv323
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !7
  %i.kd = lshr i8 %i.kc, 3
  %i.ke = zext nneg i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv323
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !7
  %i.kh = lshr i8 %i.kg, 3
  %i.ki = zext nneg i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv323
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !7
  %i.kl = lshr i8 %i.kk, 3
  %i.km = zext nneg i8 %i.kl to i64
  %.idx = mul nuw nsw i64 %i.ke, 24576
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.idx210 = mul nuw nsw i64 %i.ki, 768
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.idx210
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %i.km
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 3
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !32
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv323
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !7
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %._crit_edge285, label %.lr.ph284, !llvm.loop !39

._crit_edge285:                                   ; preds = %.lr.ph284, %.preheader
  tail call void @free(ptr noundef %i.a) #8
  store i32 %.1228.ph, ptr %2, align 4, !tbaa !3
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %._crit_edge285, %SubdivColorMap.exit
  %.0183 = phi i32 [ 1, %._crit_edge285 ], [ 0, %SubdivColorMap.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  ret i32 %.0183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -16777215, 16777216) i32 @SortCmpRtn(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !25     ; 3 uses
  %i.c = load i32, ptr @SortRGBAxis, align 4, !tbaa !3 ; 3 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = add nuw nsw i32 %i.c, 1
  %i.j = urem i32 %i.i, 3
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
end_hunk_0
