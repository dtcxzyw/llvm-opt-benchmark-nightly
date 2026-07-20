inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN6Assimp23VertexTriangleAdjacencyC1EP6aiFacejjb = unnamed_addr alias void (ptr, ptr, i32, i32, i1), ptr @_ZN6Assimp23VertexTriangleAdjacencyC2EP6aiFacejjb
@_ZN6Assimp23VertexTriangleAdjacencyD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp23VertexTriangleAdjacencyD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp23VertexTriangleAdjacencyC2EP6aiFacejjb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.a, 4                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.not104 = icmp eq i32 %2, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.d = add nsw i64 %.idx, -16                   ; 3 uses
  %5 = lshr exact i64 %i.d, 4
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %6, 2305843009213693950
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0106 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 3 uses
  %.096105 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.sroa.speculated.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0106, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %.sroa.speculated84 = tail call i32 @llvm.umax.i32(i32 %.096105, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %.sroa.speculated81 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated84, i32 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated81, i32 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.0106, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = load i32, ptr %i.n, align 4
  %.sroa.speculated84.1 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated, i32 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %.sroa.speculated81.1 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated84.1, i32 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %.sroa.speculated.1 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated81.1, i32 %i.s) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0106, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %7 = and i64 %i.d, 16
  %lcmp.mod.not.not = icmp eq i64 %7, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0106.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.t, %.loopexit.loopexit.unr-lcssa ]
  %.096105.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.speculated.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod130 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.u = getelementptr inbounds nuw i8, ptr %.0106.epil.init, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = load i32, ptr %i.v, align 4
  %.sroa.speculated84.epil = tail call i32 @llvm.umax.i32(i32 %.096105.epil.init, i32 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %.sroa.speculated81.epil = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated84.epil, i32 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load i32, ptr %i.z, align 4
  %.sroa.speculated.epil = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated81.epil, i32 %i.aa)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.a
  %.197 = phi i32 [ %3, %bb.a ], [ 0, %.preheader ], [ %.sroa.speculated.1, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph.epil.preheader ] ; 5 uses
  %i.ab = add i32 %.197, 1                        ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ab, ptr %i.ac, align 8
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.ad = zext i32 %i.ab to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #7 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.ag, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.af, i8 0, i64 %i.ae, i1 false)
  %i.ah = add i32 %.197, 2
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.am = add i32 %.197, 2
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.ar = zext i32 %i.ab to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.as, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.at, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.au = phi ptr [ %i.al, %bb.b ], [ %i.aq, %bb.c ] ; 7 uses
  %.057 = phi ptr [ %i.af, %bb.b ], [ %i.aq, %bb.c ] ; 6 uses
  store ptr %i.au, ptr %0, align 8
  %i.av = zext i32 %.197 to i64                   ; 2 uses
  %.idx124 = shl nuw nsw i64 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.057, i64 %.idx124
  store i32 0, ptr %i.aw, align 4
  %.not64107 = icmp eq i32 %2, 0                  ; 2 uses
  br i1 %.not64107, label %.lr.ph115.preheader, label %.lr.ph109

.lr.ph115.preheader:                              ; preds = %.thread98, %bb.d
  %i.ax = add nuw nsw i64 %i.av, 1                ; 2 uses
  %xtraiter131 = and i64 %i.ax, 7                 ; 3 uses
  %i.ay = icmp ult i32 %.197, 7
  br i1 %i.ay, label %.lr.ph115.epil.preheader, label %.lr.ph115.preheader.new

.lr.ph115.preheader.new:                          ; preds = %.lr.ph115.preheader
  %unroll_iter135 = and i64 %i.ax, 8589934584
  br label %.lr.ph115

.lr.ph109:                                        ; preds = %bb.d, %.thread98
  %.062108 = phi ptr [ %i.bu, %.thread98 ], [ %1, %bb.d ] ; 3 uses
  %i.az = load i32, ptr %.062108, align 8         ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.062108, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %.not68 = icmp eq i32 %i.az, 0
  br i1 %.not68, label %.thread98, label %bb.e

bb.e:                                             ; preds = %.lr.ph109
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.057, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4
  %.not102 = icmp eq i32 %i.az, 1
  br i1 %.not102, label %.thread98, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.057, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4
  %i.bn = icmp ugt i32 %i.az, 2
  br i1 %i.bn, label %bb.g, label %.thread98

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.057, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4
  br label %.thread98

.thread98:                                        ; preds = %.lr.ph109, %bb.e, %bb.g, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %.062108, i64 16 ; 2 uses
  %.not64 = icmp eq ptr %i.bu, %i.b
  br i1 %.not64, label %.lr.ph115.preheader, label %.lr.ph109, !llvm.loop !5

._crit_edge116.unr-lcssa:                         ; preds = %.lr.ph115
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %._crit_edge116, label %.lr.ph115.epil.preheader

.lr.ph115.epil.preheader:                         ; preds = %._crit_edge116.unr-lcssa, %.lr.ph115.preheader
  %.059113.epil.init = phi ptr [ %.057, %.lr.ph115.preheader ], [ %i.dh, %._crit_edge116.unr-lcssa ]
  %.060112.epil.init = phi ptr [ %i.au, %.lr.ph115.preheader ], [ %i.di, %._crit_edge116.unr-lcssa ]
  %.061111.epil.init = phi i32 [ 0, %.lr.ph115.preheader ], [ %i.dg, %._crit_edge116.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %.lr.ph115.epil

.lr.ph115.epil:                                   ; preds = %.lr.ph115.epil, %.lr.ph115.epil.preheader
  %.059113.epil = phi ptr [ %i.bx, %.lr.ph115.epil ], [ %.059113.epil.init, %.lr.ph115.epil.preheader ] ; 2 uses
  %.060112.epil = phi ptr [ %i.by, %.lr.ph115.epil ], [ %.060112.epil.init, %.lr.ph115.epil.preheader ] ; 2 uses
  %.061111.epil = phi i32 [ %i.bw, %.lr.ph115.epil ], [ %.061111.epil.init, %.lr.ph115.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph115.epil ], [ 0, %.lr.ph115.epil.preheader ]
  %i.bv = load i32, ptr %.059113.epil, align 4
  %i.bw = add i32 %i.bv, %.061111.epil            ; 2 uses
  store i32 %.061111.epil, ptr %.060112.epil, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.059113.epil, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.060112.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %._crit_edge116, label %.lr.ph115.epil, !llvm.loop !6

._crit_edge116:                                   ; preds = %.lr.ph115.epil, %._crit_edge116.unr-lcssa
  %.lcssa = phi i32 [ %i.dg, %._crit_edge116.unr-lcssa ], [ %i.bw, %.lr.ph115.epil ]
  %i.bz = zext i32 %.lcssa to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ca) #7
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.cb, ptr %i.cc, align 8
  br i1 %.not64107, label %._crit_edge123, label %.lr.ph122

.lr.ph115:                                        ; preds = %.lr.ph115, %.lr.ph115.preheader.new
  %.059113 = phi ptr [ %.057, %.lr.ph115.preheader.new ], [ %i.dh, %.lr.ph115 ] ; 9 uses
  %.060112 = phi ptr [ %i.au, %.lr.ph115.preheader.new ], [ %i.di, %.lr.ph115 ] ; 9 uses
  %.061111 = phi i32 [ 0, %.lr.ph115.preheader.new ], [ %i.dg, %.lr.ph115 ] ; 2 uses
  %niter136 = phi i64 [ 0, %.lr.ph115.preheader.new ], [ %niter136.next.7, %.lr.ph115 ]
  %i.cd = load i32, ptr %.059113, align 4
  %i.ce = add i32 %i.cd, %.061111                 ; 2 uses
  store i32 %.061111, ptr %.060112, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.059113, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.060112, i64 4
  %i.ch = load i32, ptr %i.cf, align 4
  %i.ci = add i32 %i.ch, %i.ce                    ; 2 uses
  store i32 %i.ce, ptr %i.cg, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.059113, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.060112, i64 8
  %i.cl = load i32, ptr %i.cj, align 4
  %i.cm = add i32 %i.cl, %i.ci                    ; 2 uses
  store i32 %i.ci, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.059113, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %.060112, i64 12
  %i.cp = load i32, ptr %i.cn, align 4
  %i.cq = add i32 %i.cp, %i.cm                    ; 2 uses
  store i32 %i.cm, ptr %i.co, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.059113, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.060112, i64 16
  %i.ct = load i32, ptr %i.cr, align 4
  %i.cu = add i32 %i.ct, %i.cq                    ; 2 uses
  store i32 %i.cq, ptr %i.cs, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.059113, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %.060112, i64 20
  %i.cx = load i32, ptr %i.cv, align 4
  %i.cy = add i32 %i.cx, %i.cu                    ; 2 uses
  store i32 %i.cu, ptr %i.cw, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.059113, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %.060112, i64 24
  %i.db = load i32, ptr %i.cz, align 4
  %i.dc = add i32 %i.db, %i.cy                    ; 2 uses
  store i32 %i.cy, ptr %i.da, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.059113, i64 28
  %i.de = getelementptr inbounds nuw i8, ptr %.060112, i64 28
  %i.df = load i32, ptr %i.dd, align 4
  %i.dg = add i32 %i.df, %i.dc                    ; 3 uses
  store i32 %i.dc, ptr %i.de, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.059113, i64 32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.060112, i64 32 ; 2 uses
  %niter136.next.7 = add i64 %niter136, 8         ; 2 uses
  %niter136.ncmp.7 = icmp eq i64 %niter136.next.7, %unroll_iter135
  br i1 %niter136.ncmp.7, label %._crit_edge116.unr-lcssa, label %.lr.ph115, !llvm.loop !8

._crit_edge123.loopexit:                          ; preds = %.thread101
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %._crit_edge123.loopexit, %._crit_edge116
  %i.dj = phi ptr [ %.pre, %._crit_edge123.loopexit ], [ %i.au, %._crit_edge116 ]
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -4 ; 2 uses
  store ptr %i.dk, ptr %0, align 8
  store i32 0, ptr %i.dk, align 4
  ret void

.lr.ph122:                                        ; preds = %._crit_edge116, %.thread101
  %.058120 = phi ptr [ %i.ep, %.thread101 ], [ %1, %._crit_edge116 ] ; 3 uses
  %.1119 = phi i32 [ %i.eq, %.thread101 ], [ 0, %._crit_edge116 ] ; 4 uses
  %i.dl = load i32, ptr %.058120, align 8         ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.058120, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8            ; 3 uses
  %.not67 = icmp eq i32 %i.dl, 0
  br i1 %.not67, label %.thread101, label %bb.h
end_hunk_0
