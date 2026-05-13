inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN6Assimp23VertexTriangleAdjacencyC1EP6aiFacejjb = unnamed_addr alias void (ptr, ptr, i32, i32, i1), ptr @_ZN6Assimp23VertexTriangleAdjacencyC2EP6aiFacejjb
@_ZN6Assimp23VertexTriangleAdjacencyD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp23VertexTriangleAdjacencyD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp23VertexTriangleAdjacencyC2EP6aiFacejjb(ptr noundef nonnull align 8 captures(none) dereferenceable(28) %0, ptr noundef readonly captures(address) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
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
  %i.e = lshr exact i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, 2305843009213693950
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0106 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 3 uses
  %.096105 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.sroa.speculated.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0106, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %.sroa.speculated84 = tail call i32 @llvm.umax.i32(i32 %.096105, i32 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %.sroa.speculated81 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated84, i32 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated81, i32 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.0106, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = load i32, ptr %i.p, align 4
  %.sroa.speculated84.1 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated, i32 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %.sroa.speculated81.1 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated84.1, i32 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %.sroa.speculated.1 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated81.1, i32 %i.u) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0106, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %i.w = and i64 %i.d, 16
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0106.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.v, %.loopexit.loopexit.unr-lcssa ]
  %.096105.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.speculated.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod130 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.x = getelementptr inbounds nuw i8, ptr %.0106.epil.init, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %.sroa.speculated84.epil = tail call i32 @llvm.umax.i32(i32 %.096105.epil.init, i32 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %.sroa.speculated81.epil = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated84.epil, i32 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  %.sroa.speculated.epil = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated81.epil, i32 %i.ad)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.a
  %.197 = phi i32 [ %3, %bb.a ], [ 0, %.preheader ], [ %.sroa.speculated.1, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph.epil.preheader ] ; 5 uses
  %i.ae = add i32 %.197, 1                        ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ae, ptr %i.af, align 8
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.ag = zext i32 %i.ae to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #7 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ai, ptr %i.aj, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.ah, i1 false)
  %i.ak = add i32 %.197, 2
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.ap = add i32 %.197, 2
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 3 uses
  %i.au = zext i32 %i.ae to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 0, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.aw, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = phi ptr [ %i.ao, %bb.b ], [ %i.at, %bb.c ] ; 6 uses
  %.057 = phi ptr [ %i.ai, %bb.b ], [ %i.at, %bb.c ] ; 6 uses
  store ptr %i.ax, ptr %0, align 8
  %i.ay = zext i32 %.197 to i64                   ; 2 uses
  %.idx124 = shl nuw nsw i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %.057, i64 %.idx124
  store i32 0, ptr %i.az, align 4
  %.not64107 = icmp eq i32 %2, 0                  ; 2 uses
  br i1 %.not64107, label %.lr.ph115.preheader, label %.lr.ph109

.lr.ph115.preheader:                              ; preds = %.thread98, %bb.d
  %i.ba = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %xtraiter131 = and i64 %i.ba, 7                 ; 3 uses
  %i.bb = icmp ult i32 %.197, 7
  br i1 %i.bb, label %.lr.ph115.epil.preheader, label %.lr.ph115.preheader.new

.lr.ph115.preheader.new:                          ; preds = %.lr.ph115.preheader
  %unroll_iter135 = and i64 %i.ba, 8589934584
  br label %.lr.ph115

.lr.ph109:                                        ; preds = %bb.d, %.thread98
  %.062108 = phi ptr [ %i.bx, %.thread98 ], [ %1, %bb.d ] ; 3 uses
  %i.bc = load i32, ptr %.062108, align 8         ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.062108, i64 8
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %.not68 = icmp eq i32 %i.bc, 0
  br i1 %.not68, label %.thread98, label %bb.e

bb.e:                                             ; preds = %.lr.ph109
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.057, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4
  %.not102 = icmp eq i32 %i.bc, 1
  br i1 %.not102, label %.thread98, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.057, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = icmp ugt i32 %i.bc, 2
  br i1 %i.bq, label %bb.g, label %.thread98

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.057, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4
  br label %.thread98

.thread98:                                        ; preds = %.lr.ph109, %bb.e, %bb.g, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.062108, i64 16 ; 2 uses
  %.not64 = icmp eq ptr %i.bx, %i.b
  br i1 %.not64, label %.lr.ph115.preheader, label %.lr.ph109, !llvm.loop !5

._crit_edge116.unr-lcssa:                         ; preds = %.lr.ph115
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %._crit_edge116, label %.lr.ph115.epil.preheader

.lr.ph115.epil.preheader:                         ; preds = %._crit_edge116.unr-lcssa, %.lr.ph115.preheader
  %.059113.epil.init = phi ptr [ %.057, %.lr.ph115.preheader ], [ %i.dk, %._crit_edge116.unr-lcssa ]
  %.060112.epil.init = phi ptr [ %i.ax, %.lr.ph115.preheader ], [ %i.dl, %._crit_edge116.unr-lcssa ]
  %.061111.epil.init = phi i32 [ 0, %.lr.ph115.preheader ], [ %i.dj, %._crit_edge116.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %.lr.ph115.epil

.lr.ph115.epil:                                   ; preds = %.lr.ph115.epil, %.lr.ph115.epil.preheader
  %.059113.epil = phi ptr [ %i.ca, %.lr.ph115.epil ], [ %.059113.epil.init, %.lr.ph115.epil.preheader ] ; 2 uses
  %.060112.epil = phi ptr [ %i.cb, %.lr.ph115.epil ], [ %.060112.epil.init, %.lr.ph115.epil.preheader ] ; 2 uses
  %.061111.epil = phi i32 [ %i.bz, %.lr.ph115.epil ], [ %.061111.epil.init, %.lr.ph115.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph115.epil ], [ 0, %.lr.ph115.epil.preheader ]
  %i.by = load i32, ptr %.059113.epil, align 4
  %i.bz = add i32 %i.by, %.061111.epil            ; 2 uses
  store i32 %.061111.epil, ptr %.060112.epil, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.059113.epil, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.060112.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %._crit_edge116, label %.lr.ph115.epil, !llvm.loop !6

._crit_edge116:                                   ; preds = %.lr.ph115.epil, %._crit_edge116.unr-lcssa
  %.lcssa = phi i32 [ %i.dj, %._crit_edge116.unr-lcssa ], [ %i.bz, %.lr.ph115.epil ]
  %i.cc = zext i32 %.lcssa to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #7
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.ce, ptr %i.cf, align 8
  br i1 %.not64107, label %._crit_edge123, label %.lr.ph122

.lr.ph115:                                        ; preds = %.lr.ph115, %.lr.ph115.preheader.new
  %.059113 = phi ptr [ %.057, %.lr.ph115.preheader.new ], [ %i.dk, %.lr.ph115 ] ; 9 uses
  %.060112 = phi ptr [ %i.ax, %.lr.ph115.preheader.new ], [ %i.dl, %.lr.ph115 ] ; 9 uses
  %.061111 = phi i32 [ 0, %.lr.ph115.preheader.new ], [ %i.dj, %.lr.ph115 ] ; 2 uses
  %niter136 = phi i64 [ 0, %.lr.ph115.preheader.new ], [ %niter136.next.7, %.lr.ph115 ]
  %i.cg = load i32, ptr %.059113, align 4
  %i.ch = add i32 %i.cg, %.061111                 ; 2 uses
  store i32 %.061111, ptr %.060112, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.059113, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.060112, i64 4
  %i.ck = load i32, ptr %i.ci, align 4
  %i.cl = add i32 %i.ck, %i.ch                    ; 2 uses
  store i32 %i.ch, ptr %i.cj, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.059113, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.060112, i64 8
  %i.co = load i32, ptr %i.cm, align 4
  %i.cp = add i32 %i.co, %i.cl                    ; 2 uses
  store i32 %i.cl, ptr %i.cn, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.059113, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %.060112, i64 12
  %i.cs = load i32, ptr %i.cq, align 4
  %i.ct = add i32 %i.cs, %i.cp                    ; 2 uses
  store i32 %i.cp, ptr %i.cr, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.059113, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %.060112, i64 16
  %i.cw = load i32, ptr %i.cu, align 4
  %i.cx = add i32 %i.cw, %i.ct                    ; 2 uses
  store i32 %i.ct, ptr %i.cv, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.059113, i64 20
  %i.cz = getelementptr inbounds nuw i8, ptr %.060112, i64 20
  %i.da = load i32, ptr %i.cy, align 4
  %i.db = add i32 %i.da, %i.cx                    ; 2 uses
  store i32 %i.cx, ptr %i.cz, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.059113, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %.060112, i64 24
  %i.de = load i32, ptr %i.dc, align 4
  %i.df = add i32 %i.de, %i.db                    ; 2 uses
  store i32 %i.db, ptr %i.dd, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.059113, i64 28
  %i.dh = getelementptr inbounds nuw i8, ptr %.060112, i64 28
  %i.di = load i32, ptr %i.dg, align 4
  %i.dj = add i32 %i.di, %i.df                    ; 3 uses
  store i32 %i.df, ptr %i.dh, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.059113, i64 32 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.060112, i64 32 ; 2 uses
  %niter136.next.7 = add i64 %niter136, 8         ; 2 uses
  %niter136.ncmp.7 = icmp eq i64 %niter136.next.7, %unroll_iter135
  br i1 %niter136.ncmp.7, label %._crit_edge116.unr-lcssa, label %.lr.ph115, !llvm.loop !8

._crit_edge123:                                   ; preds = %.thread101, %._crit_edge116
  %5 = load ptr, ptr %0, align 8
  %i.dm = getelementptr inbounds i8, ptr %5, i64 -4 ; 2 uses
  store ptr %i.dm, ptr %0, align 8
  store i32 0, ptr %i.dm, align 4
  ret void

.lr.ph122:                                        ; preds = %._crit_edge116, %.thread101
  %.058120 = phi ptr [ %i.er, %.thread101 ], [ %1, %._crit_edge116 ] ; 3 uses
  %.1119 = phi i32 [ %i.es, %.thread101 ], [ 0, %._crit_edge116 ] ; 4 uses
  %i.dn = load i32, ptr %.058120, align 8         ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.058120, i64 8
  %i.dp = load ptr, ptr %i.do, align 8            ; 3 uses
  %.not67 = icmp eq i32 %i.dn, 0
  br i1 %.not67, label %.thread101, label %bb.h

bb.h:                                             ; preds = %.lr.ph122
  %i.dq = load ptr, ptr %i.cf, align 8
  %i.dr = load i32, ptr %i.dp, align 4
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4            ; 2 uses
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dw
  store i32 %.1119, ptr %i.dx, align 4
  %.not103 = icmp eq i32 %i.dn, 1
  br i1 %.not103, label %.thread101, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dy = load ptr, ptr %i.cf, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ef
  store i32 %.1119, ptr %i.eg, align 4
  %i.eh = icmp ugt i32 %i.dn, 2
  br i1 %i.eh, label %bb.j, label %.thread101

bb.j:                                             ; preds = %bb.i
  %i.ei = load ptr, ptr %i.cf, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ep
  store i32 %.1119, ptr %i.eq, align 4
  br label %.thread101

.thread101:                                       ; preds = %.lr.ph122, %bb.h, %bb.j, %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %.058120, i64 16 ; 2 uses
  %i.es = add nuw i32 %.1119, 1
  %.not66 = icmp eq ptr %i.er, %i.b
  br i1 %.not66, label %._crit_edge123, label %.lr.ph122, !llvm.loop !9
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Assimp23VertexTriangleAdjacencyD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(28) dereferenceable(28) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
end_hunk_0
