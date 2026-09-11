Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@triplet_decode:bb.a
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cv, %i.cy            ; 2 uses
  %i.da = and i8 %i.d, 1
  %.not.i105 = icmp eq i8 %i.da, 0
  %i.db = sub nsw i32 0, %i.cz
  %i.dc = select i1 %.not.i105, i32 %i.db, i32 %i.cz
  %i.dd = getelementptr i8, ptr %i.by, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !29
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr i8, ptr %i.by, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !29
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj            ; 2 uses
  %i.dl = and i8 %i.d, 2
  %.not.i106 = icmp eq i8 %i.dl, 0
  %i.dm = sub nsw i32 0, %i.dk
  %i.dn = select i1 %.not.i106, i32 %i.dm, i32 %i.dk
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.k, %bb.n, %bb.m, %bb.i
  %.087 = phi i32 [ %i.dc, %bb.n ], [ %i.ah, %bb.g ], [ %i.as, %bb.i ], [ %i.bl, %bb.k ], [ %i.cj, %bb.m ] ; 3 uses
  %.086 = phi i32 [ %i.dn, %bb.n ], [ 0, %bb.g ], [ %i.ba, %bb.i ], [ %i.bw, %bb.k ], [ %i.cs, %bb.m ]
  %i.do = icmp sgt i32 %.0114138, 0
  %i.dp = sub nuw nsw i32 2147483647, %.0114138
  %i.dq = icmp sgt i32 %.087, %i.dp
  %or.cond.i = select i1 %i.do, i1 %i.dq, i1 false
  br i1 %or.cond.i, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp slt i32 %.0114138, 0
  %i.ds = sub nsw i32 -2147483648, %.0114138
  %i.dt = icmp slt i32 %.087, %i.ds
  %or.cond12.i = select i1 %i.dr, i1 %i.dt, i1 false
  br i1 %or.cond12.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %.thread122, %bb.p
  %.087119127 = phi i32 [ 0, %.thread122 ], [ %.087, %bb.p ]
  %.086120126 = phi i32 [ %i.w, %.thread122 ], [ %.086, %bb.p ] ; 3 uses
  %i.du = add nsw i32 %.087119127, %.0114138      ; 2 uses
  %i.dv = icmp sgt i32 %.0139, 0
  %i.dw = sub nuw nsw i32 2147483647, %.0139
  %i.dx = icmp sgt i32 %.086120126, %i.dw
  %or.cond.i107 = select i1 %i.dv, i1 %i.dx, i1 false
  br i1 %or.cond.i107, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = icmp slt i32 %.0139, 0
  %i.dz = sub nsw i32 -2147483648, %.0139
  %i.ea = icmp slt i32 %.086120126, %i.dz
  %or.cond12.i108 = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %or.cond12.i108, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = add nsw i32 %.086120126, %.0139         ; 2 uses
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.b ; 3 uses
  store i32 %i.du, ptr %i.ec, align 4, !tbaa !343
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !344
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i8 %i.e, ptr %i.ee, align 4, !tbaa !703
  %i.ef = add i32 %.083141, 1                     ; 2 uses
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = icmp ugt i64 %3, %i.eg
  br i1 %i.eh, label %.lr.ph, label %._crit_edge, !llvm.loop !702

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %.085.lcssa = phi i64 [ 0, %.preheader ], [ %i.k, %bb.s ]
  store i64 %.085.lcssa, ptr %5, align 8, !tbaa !121
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r, %bb.o, %bb.p, %bb.d, %bb.a, %._crit_edge
  %.2 = phi i32 [ 0, %._crit_edge ], [ 8, %bb.a ], [ 8, %bb.d ], [ 8, %bb.p ], [ 8, %bb.o ], [ 8, %bb.r ], [ 8, %bb.q ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @compute_bbox(i64 noundef range(i64 0, 134217728) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #15 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !343    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !344  ; 6 uses
  %.not73 = icmp eq i64 %0, 1
  br i1 %.not73, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp eq i64 %0, 2
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.159 = phi i32 [ %i.a, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %.14858 = phi i32 [ %i.c, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %.15156 = phi i32 [ %i.c, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %.15355 = phi i32 [ %i.a, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !343  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !344  ; 2 uses
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %.159)
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %.14858)
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.15355)
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %.15156)
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !343  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !344  ; 2 uses
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.j) ; 3 uses
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.k) ; 3 uses
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.l) ; 3 uses
  %i.v = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %i.m) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !704

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.159.epil.init = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %.14858.epil.init = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %.15156.epil.init = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.15355.epil.init = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod84 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !343  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !344  ; 2 uses
  %i.aa = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.159.epil.init)
  %i.ab = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %.14858.epil.init)
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %.15355.epil.init)
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %.15156.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a, %bb.b
  %.153.lcssa = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil.preheader ] ; 2 uses
  %.151.lcssa = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.epil.preheader ] ; 2 uses
  %.148.lcssa = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = lshr i32 %.1.lcssa, 8
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !29
  %i.ai = trunc i32 %.1.lcssa to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !29
  %i.ak = lshr i32 %.148.lcssa, 8
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !29
  %i.an = trunc i32 %.148.lcssa to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.an, ptr %i.am, align 1, !tbaa !29
  %i.ap = lshr i32 %.153.lcssa, 8
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !29
  %i.as = trunc i32 %.153.lcssa to i8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !29
  %i.au = lshr i32 %.151.lcssa, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.av, ptr %i.at, align 1, !tbaa !29
  %i.ax = trunc i32 %.151.lcssa to i8
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !29
  %i.ay = trunc i32 %.1.lcssa to i16
  store i16 %i.ay, ptr %3, align 2, !tbaa !154
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 9) i32 @store_points(i64 noundef range(i64 0, 134217728) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext range(i8 0, 2) %4, ptr nofree noundef captures(none) %5, i64 noundef range(i64 5120, 0) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #15 {
bb.a:
  %i.a = zext i16 %2 to i32
  %i.b = shl nuw nsw i32 %i.a, 1
  %i.c = add nuw nsw i32 %i.b, 12
  %i.d = zext i16 %3 to i32
  %i.e = add nuw nsw i32 %i.c, %i.d               ; 6 uses
  %.not197 = icmp eq i64 %0, 0
  br i1 %.not197, label %.thread220, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not236 = icmp eq i8 %4, 0
  %i.f = trunc nuw nsw i64 %0 to i32
  %.sroa.0.0.copyload.peel = load i32, ptr %1, align 4, !tbaa !30 ; 4 uses
  %.sroa.5.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0.copyload.peel = load i32, ptr %.sroa.5.0..sroa_idx.peel, align 4, !tbaa !30 ; 4 uses
  %.sroa.7.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload.peel = load i8, ptr %.sroa.7.0..sroa_idx.peel, align 4, !tbaa !29
  %.not167.peel = icmp ne i8 %.sroa.7.0.copyload.peel, 0
  %i.g = zext i1 %.not167.peel to i8              ; 2 uses
  %8 = or disjoint i8 %i.g, 64
  %.0126.peel = select i1 %.not236, i8 %i.g, i8 %8 ; 3 uses
  %i.h = icmp eq i32 %.sroa.0.0.copyload.peel, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = add i32 %.sroa.0.0.copyload.peel, 255
  %or.cond4.peel = icmp ult i32 %i.i, 511
  br i1 %or.cond4.peel, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %.sroa.0.0.copyload.peel, 0
  %i.k = select i1 %i.j, i8 18, i8 2
  %i.l = or disjoint i8 %.0126.peel, %i.k
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.m = or disjoint i8 %.0126.peel, 16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.1136.peel = phi i32 [ 0, %bb.d ], [ 1, %bb.c ], [ 2, %bb.b ] ; 2 uses
  %.1.peel = phi i8 [ %i.m, %bb.d ], [ %i.l, %bb.c ], [ %.0126.peel, %bb.b ] ; 3 uses
  %i.n = icmp eq i32 %.sroa.5.0.copyload.peel, 0
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i32 %.sroa.5.0.copyload.peel, 255
  %or.cond6.peel = icmp ult i32 %i.o, 511
  br i1 %or.cond6.peel, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = icmp sgt i32 %.sroa.5.0.copyload.peel, 0
  %i.q = select i1 %i.p, i8 36, i8 4
  %i.r = or i8 %.1.peel, %i.q
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = or i8 %.1.peel, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.1134.peel = phi i32 [ 0, %bb.h ], [ 1, %bb.g ], [ 2, %bb.f ] ; 2 uses
  %.2.peel = phi i8 [ %i.s, %bb.h ], [ %i.r, %bb.g ], [ %.1.peel, %bb.f ] ; 3 uses
  %i.t = icmp eq i8 %.2.peel, -1
  br i1 %i.t, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = zext nneg i32 %i.e to i64                ; 2 uses
  %.not170.peel = icmp ugt i64 %6, %i.u
  br i1 %.not170.peel, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw nsw i32 %i.e, 1
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 %i.u
  store i8 %.2.peel, ptr %i.w, align 1, !tbaa !29
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.x = add nsw i32 %i.e, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29
  %i.ab = or i8 %i.aa, 8
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3.peel = phi i32 [ %i.e, %bb.l ], [ %i.v, %bb.k ] ; 2 uses
  %.2145.peel = phi i8 [ 1, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.not237 = icmp eq i64 %0, 1
  br i1 %.not237, label %._crit_edge, label %.lr.ph.peel.newph

.lr.ph.peel.newph:                                ; preds = %bb.m, %bb.ad
  %i.ac = phi i64 [ %i.bm, %bb.ad ], [ 1, %bb.m ]
  %.0131184 = phi i32 [ %i.bl, %bb.ad ], [ 1, %bb.m ]
  %.0133183 = phi i32 [ %.1134, %bb.ad ], [ %.1134.peel, %bb.m ] ; 3 uses
  %.0135182 = phi i32 [ %.1136, %bb.ad ], [ %.1136.peel, %bb.m ] ; 3 uses
  %.0137181 = phi i32 [ %.sroa.5.0.copyload, %bb.ad ], [ %.sroa.5.0.copyload.peel, %bb.m ] ; 2 uses
  %.0140180 = phi i32 [ %.sroa.0.0.copyload, %bb.ad ], [ %.sroa.0.0.copyload.peel, %bb.m ] ; 2 uses
  %.0143179 = phi i8 [ %.2145, %bb.ad ], [ %.2145.peel, %bb.m ] ; 4 uses
  %.0146178 = phi i8 [ %.2, %bb.ad ], [ %.2.peel, %bb.m ]
  %.0148177 = phi i32 [ %.3, %bb.ad ], [ %.3.peel, %bb.m ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.ac ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ad, align 4, !tbaa !30 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !30 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !29
  %.not167 = icmp ne i8 %.sroa.7.0.copyload, 0
  %i.ae = zext i1 %.not167 to i8                  ; 3 uses
  %i.af = sub nsw i32 %.sroa.0.0.copyload, %.0140180 ; 2 uses
  %i.ag = sub nsw i32 %.sroa.5.0.copyload, %.0137181 ; 2 uses
  %i.ah = icmp eq i32 %.sroa.0.0.copyload, %.0140180
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.peel.newph
  %i.ai = or disjoint i8 %i.ae, 16
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph.peel.newph
  %i.aj = add i32 %i.af, 255
  %or.cond4 = icmp ult i32 %i.aj, 511
  br i1 %or.cond4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = icmp sgt i32 %i.af, 0
  %i.al = select i1 %i.ak, i8 18, i8 2
  %i.am = or disjoint i8 %i.al, %i.ae
  %i.an = add i32 %.0135182, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ao = add i32 %.0135182, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.1136 = phi i32 [ %.0135182, %bb.n ], [ %i.an, %bb.p ], [ %i.ao, %bb.q ] ; 2 uses
  %.1 = phi i8 [ %i.ai, %bb.n ], [ %i.am, %bb.p ], [ %i.ae, %bb.q ] ; 3 uses
  %i.ap = icmp eq i32 %.sroa.5.0.copyload, %.0137181
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aq = or i8 %.1, 32
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.ar = add i32 %i.ag, 255
  %or.cond6 = icmp ult i32 %i.ar, 511
  br i1 %or.cond6, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = icmp sgt i32 %i.ag, 0
  %i.at = select i1 %i.as, i8 36, i8 4
  %i.au = or i8 %.1, %i.at
  %i.av = add i32 %.0133183, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.aw = add i32 %.0133183, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s
  %.1134 = phi i32 [ %.0133183, %bb.s ], [ %i.av, %bb.u ], [ %i.aw, %bb.v ] ; 2 uses
  %.2 = phi i8 [ %i.aq, %bb.s ], [ %i.au, %bb.u ], [ %.1, %bb.v ] ; 3 uses
  %i.ax = icmp eq i8 %.2, %.0146178
  %i.ay = icmp ne i8 %.0143179, -1
  %or.cond9 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.az = add i32 %.0148177, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %i.bd = or i8 %i.bc, 8
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !29
  %i.be = add nuw i8 %.0143179, 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %.not168 = icmp eq i8 %.0143179, 0
  br i1 %.not168, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = zext i32 %.0148177 to i64               ; 2 uses
  %.not169 = icmp ugt i64 %6, %i.bf
  br i1 %.not169, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.bg = add i32 %.0148177, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 %i.bf
  store i8 %.0143179, ptr %i.bh, align 1, !tbaa !29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.1149 = phi i32 [ %i.bg, %bb.aa ], [ %.0148177, %bb.y ] ; 2 uses
  %i.bi = zext i32 %.1149 to i64                  ; 2 uses
  %.not170 = icmp ugt i64 %6, %i.bi
  br i1 %.not170, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.bj = add i32 %.1149, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 %i.bi
  store i8 %.2, ptr %i.bk, align 1, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.3 = phi i32 [ %.0148177, %bb.x ], [ %i.bj, %bb.ac ] ; 2 uses
  %.2145 = phi i8 [ %i.be, %bb.x ], [ 0, %bb.ac ] ; 2 uses
  %i.bl = add nuw nsw i32 %.0131184, 1            ; 3 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = icmp samesign ult i32 %i.bl, %i.f
  br i1 %i.bn, label %.lr.ph.peel.newph, label %._crit_edge, !llvm.loop !705

._crit_edge:                                      ; preds = %bb.ad, %bb.m
  %.3.lcssa = phi i32 [ %.3.peel, %bb.m ], [ %.3, %bb.ad ] ; 3 uses
  %.2145.lcssa = phi i8 [ %.2145.peel, %bb.m ], [ %.2145, %bb.ad ] ; 2 uses
  %.1134.lcssa234 = phi i32 [ %.1134.peel, %bb.m ], [ %.1134, %bb.ad ]
  %.1136.lcssa233 = phi i32 [ %.1136.peel, %bb.m ], [ %.1136, %bb.ad ] ; 3 uses
  %.not = icmp eq i8 %.2145.lcssa, 0
  br i1 %.not, label %bb.ag, label %bb.ae
end_hunk_0
