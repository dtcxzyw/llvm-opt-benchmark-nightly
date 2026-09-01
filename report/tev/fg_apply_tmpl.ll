Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fg_apply_tmpl?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dav1d_prep_grain_16bpc:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call fastcc void @generate_scaling(i32 noundef %i.aj, ptr noundef nonnull %i.ak, i32 noundef %i.af, ptr noundef %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = load i32, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %.not99 = icmp eq i32 %i.al, 0
  br i1 %.not99, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4096
  tail call fastcc void @generate_scaling(i32 noundef %i.an, ptr noundef nonnull %i.ao, i32 noundef %i.al, ptr noundef nonnull %i.ap)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = load i32, ptr %i.s, align 4, !tbaa !25  ; 2 uses
  %.not100 = icmp eq i32 %i.aq, 0
  br i1 %.not100, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8192
  tail call fastcc void @generate_scaling(i32 noundef %i.as, ptr noundef nonnull %i.at, i32 noundef %i.aq, ptr noundef nonnull %i.au)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.az = icmp eq i64 %i.aw, %i.ay
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load i32, ptr %i.ae, align 4, !tbaa !30
  %.not101 = icmp eq i32 %i.ba, 0
  br i1 %.not101, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.aw, %i.bd                ; 5 uses
  %i.bf = icmp slt i64 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.be
  %i.bj = sub i64 0, %i.aw                        ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bj
  %i.bp = sub nsw i64 0, %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.br, i64 %i.be, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !28 ; 2 uses
  %.not102 = icmp eq i32 %i.bt, 0
  br i1 %.not102, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !26
  %.not103 = icmp eq i32 %i.bv, 0
  br i1 %.not103, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !31 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !31
  %i.ca = icmp eq i64 %i.bx, %i.bz
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i32 %i.bt, 1
  %i.cc = zext i1 %i.cb to i32                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !32
  %i.cf = add nsw i32 %i.ce, %i.cc
  %i.cg = ashr i32 %i.cf, %i.cc
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.bx, %i.ch                ; 9 uses
  %i.cj = icmp slt i64 %i.ci, 0
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !25
  %.not106 = icmp eq i32 %i.ck, 0                 ; 2 uses
  br i1 %i.cj, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  br i1 %.not106, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !29
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ci
  %i.co = sub i64 0, %i.bx                        ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !29
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.ci
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.co
  %i.cu = sub nsw i64 0, %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull align 1 %i.ct, i64 %i.cu, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cv = load i32, ptr %i.s, align 4, !tbaa !25
  %.not107 = icmp eq i32 %i.cv, 0
  br i1 %.not107, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.ci
  %i.cz = sub i64 0, %i.bx                        ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !29
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.ci
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cz
  %i.df = sub nsw i64 0, %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull align 1 %i.de, i64 %i.df, i1 false)
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  br i1 %.not106, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.dj, i64 %i.ci, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dk = load i32, ptr %i.s, align 4, !tbaa !25
  %.not105 = icmp eq i32 %i.dk, 0
  br i1 %.not105, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !29
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.do, i64 %i.ci, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.w, %bb.ab, %bb.aa, %bb.s, %bb.r
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @generate_scaling(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 8
  tail call void @llvm.assume(i1 %i.a)
  %i.b = add nsw i32 %0, -8                       ; 12 uses
  %i.c = shl nuw i32 1, %0                        ; 2 uses
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %3, i8 0, i64 %i.e, i1 false)
  br label %.loopexit96

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !33
  %i.h = load i8, ptr %1, align 1, !tbaa !33
  %i.i = zext i8 %i.h to i32
  %i.j = shl i32 %i.i, %i.b
  %i.k = sext i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 %i.g, i64 %i.k, i1 false)
  %i.l = add i32 %2, -1                           ; 3 uses
  %i.m = icmp sgt i32 %2, 1                       ; 2 uses
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count.a = zext nneg i32 %i.l to i64
  br label %.lr.ph

.loopexit97.unr-lcssa:                            ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit97, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit97.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit97.unr-lcssa ]
  %.09198.epil.init = phi i32 [ 32768, %.lr.ph ], [ %i.dx, %.loopexit97.unr-lcssa ]
  %lcmp.mod168 = trunc i32 %i.dc to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.n = lshr i32 %.09198.epil.init, 16
  %i.o = trunc i32 %i.n to i8
  %i.p = add i8 %i.cu, %i.o
  %4 = add nuw nsw i64 %indvars.iv.epil.init, %6
  %5 = trunc nuw nsw i64 %4 to i32
  %i.q = shl i32 %5, %i.b
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %3, i64 %i.r
  store i8 %i.p, ptr %i.s, align 1, !tbaa !33
  br label %.loopexit97

.loopexit97:                                      ; preds = %.loopexit97.unr-lcssa, %.epil.preheader
  %exitcond115.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count.a
  br i1 %exitcond115.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit97, %bb.c
  %i.t = sext i32 %i.l to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %1, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  %i.w = zext i8 %i.v to i32
  %i.x = shl i32 %i.w, %i.b                       ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33
  %i.ac = sub nsw i32 %i.c, %i.x
  %i.ad = sext i32 %i.ac to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 %i.ab, i64 %i.ad, i1 false)
  %i.ae = shl nuw i32 1, %i.b
  %.fr112 = freeze i32 %i.ae                      ; 7 uses
  %i.af = ashr i32 %.fr112, 1                     ; 5 uses
  br i1 %i.m, label %.lr.ph111, label %.loopexit96

.lr.ph111:                                        ; preds = %._crit_edge
  %i.ag = icmp sgt i32 %.fr112, 1
  br i1 %i.ag, label %.lr.ph111.split.us.preheader, label %.lr.ph111.split.preheader

.lr.ph111.split.preheader:                        ; preds = %.lr.ph111
  %i.ah = load i8, ptr %1, align 1, !tbaa !33
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !33
  %i.al = zext i8 %i.ak to i32
  %i.am = sub nsw i32 %i.al, %i.ai
  %i.an = shl i32 %i.am, %i.b                     ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph108, label %.loopexit96

.lr.ph111.split.us.preheader:                     ; preds = %.lr.ph111
  %i.ap = zext nneg i32 %.fr112 to i64            ; 2 uses
  %wide.trip.count130 = zext nneg i32 %i.l to i64
  %invariant.gep135 = getelementptr i8, ptr %3, i64 %i.ap
  %wide.trip.count122 = zext nneg i32 %.fr112 to i64 ; 2 uses
  %i.aq = add nsw i64 %wide.trip.count122, -1     ; 5 uses
  %min.iters.check = icmp ult i32 %.fr112, 5
  %min.iters.check138 = icmp ult i32 %.fr112, 17
  %i.ar = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 5 uses
  %i.as = or disjoint i64 %n.vec, 1
  %i.at = trunc nsw i64 %n.vec to i32
  %broadcast.splatinsert139 = insertelement <16 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat140 = shufflevector <16 x i32> %broadcast.splatinsert139, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <16 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat144 = shufflevector <16 x i32> %broadcast.splatinsert143, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  %n.vec148 = and i64 %i.aq, -4                   ; 4 uses
  %i.au = or disjoint i64 %n.vec148, 1
  %i.av = trunc nsw i64 %n.vec148 to i32
  %broadcast.splatinsert153.a = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat154.a = shufflevector <4 x i32> %broadcast.splatinsert153.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n164 = icmp eq i64 %i.aq, %n.vec148
  br label %.lr.ph111.split.us

.lr.ph111.split.us:                               ; preds = %.lr.ph111.split.us.preheader, %.loopexit.us
  %indvars.iv127 = phi i64 [ 0, %.lr.ph111.split.us.preheader ], [ %indvars.iv.next128, %.loopexit.us ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv127
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !33
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next128
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !33
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub nsw i32 %i.bb, %i.ay
  %i.bd = shl i32 %i.bc, %i.b                     ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph104.us.us.preheader, label %.loopexit.us

.lr.ph104.us.us.preheader:                        ; preds = %.lr.ph111.split.us
  %i.bf = shl i32 %i.ay, %i.b
  %i.bg = sext i32 %i.bf to i64
  %i.bh = zext nneg i32 %i.bd to i64
  br label %iter.check

.loopexit.us:                                     ; preds = %._crit_edge105.us.us, %.lr.ph111.split.us
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.loopexit96, label %.lr.ph111.split.us

iter.check:                                       ; preds = %.lr.ph104.us.us.preheader, %._crit_edge105.us.us
  %indvars.iv124 = phi i64 [ 0, %.lr.ph104.us.us.preheader ], [ %indvars.iv.next125, %._crit_edge105.us.us ] ; 2 uses
  %i.bi = add nsw i64 %indvars.iv124, %i.bg       ; 3 uses
  %gep136 = getelementptr i8, ptr %invariant.gep135, i64 %i.bi
  %i.bj = load i8, ptr %gep136, align 1, !tbaa !33
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %i.bi
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !33  ; 4 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 %i.bk, %i.bn                ; 7 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %i.bi ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = mul i32 %i.bo, %i.at
  %i.bq = add i32 %i.af, %i.bp                    ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bm, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <16 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat142 = shufflevector <16 x i32> %broadcast.splatinsert141, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.br = mul nsw <16 x i32> %broadcast.splat142, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %induction = add nsw <16 x i32> %broadcast.splat144, %i.br
  %i.bs = shl nsw i32 %i.bo, 4
  %broadcast.splatinsert145 = insertelement <16 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat146 = shufflevector <16 x i32> %broadcast.splatinsert145, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bt = add nsw <16 x i32> %vec.ind, %broadcast.splat142
  %i.bu = ashr <16 x i32> %i.bt, %broadcast.splat140
  %i.bv = trunc <16 x i32> %i.bu to <16 x i8>
  %i.bw = add <16 x i8> %broadcast.splat, %i.bv
  %i.bx = getelementptr i8, ptr %invariant.gep, i64 %index
  %i.by = getelementptr i8, ptr %i.bx, i64 1
  store <16 x i8> %i.bw, ptr %i.by, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, %broadcast.splat146
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge105.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val147 = phi i32 [ %i.bq, %vec.epilog.iter.check ], [ %i.af, %vector.main.loop.iter.check ]
  %i.ca = mul i32 %i.bo, %i.av
  %i.cb = add i32 %i.af, %i.ca
  %broadcast.splatinsert149 = insertelement <4 x i8> poison, i8 %i.bm, i64 0
  %broadcast.splat150 = shufflevector <4 x i8> %broadcast.splatinsert149, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert151 = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat152 = shufflevector <4 x i32> %broadcast.splatinsert151, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %bc.resume.val147, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cc = mul nsw <4 x i32> %broadcast.splat152, <i32 0, i32 1, i32 2, i32 3>
  %induction157 = add nsw <4 x i32> %broadcast.splat156, %i.cc
  %i.cd = shl nsw i32 %i.bo, 2
  %broadcast.splatinsert158 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat159 = shufflevector <4 x i32> %broadcast.splatinsert158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index160 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next162, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind161 = phi <4 x i32> [ %induction157, %vec.epilog.ph ], [ %vec.ind.next163, %vec.epilog.vector.body ] ; 2 uses
  %i.ce = add nsw <4 x i32> %vec.ind161, %broadcast.splat152
  %i.cf = ashr <4 x i32> %i.ce, %broadcast.splat154.a
  %i.cg = trunc <4 x i32> %i.cf to <4 x i8>
  %i.ch = add <4 x i8> %broadcast.splat150, %i.cg
  %i.ci = getelementptr i8, ptr %invariant.gep, i64 %index160
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  store <4 x i8> %i.ch, ptr %i.cj, align 1, !tbaa !33
  %index.next162 = add nuw i64 %index160, 4       ; 2 uses
  %vec.ind.next163 = add nsw <4 x i32> %vec.ind161, %broadcast.splat159
  %i.ck = icmp eq i64 %index.next162, %n.vec148
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n164, label %._crit_edge105.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv119.ph = phi i64 [ 1, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.0102.us.us.ph = phi i32 [ %i.af, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %vec.epilog.scalar.ph ], [ %indvars.iv119.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0102.us.us = phi i32 [ %i.cl, %vec.epilog.scalar.ph ], [ %.0102.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cl = add nsw i32 %.0102.us.us, %i.bo         ; 2 uses
  %i.cm = ashr i32 %i.cl, %i.b
  %i.cn = trunc i32 %i.cm to i8
  %i.co = add i8 %i.bm, %i.cn
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv119
  store i8 %i.co, ptr %gep, align 1, !tbaa !33
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge105.us.us, label %vec.epilog.scalar.ph, !llvm.loop !39

._crit_edge105.us.us:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, %i.ap ; 2 uses
  %i.cp = icmp samesign ult i64 %indvars.iv.next125, %i.bh
  br i1 %i.cp, label %iter.check, label %.loopexit.us

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit97
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.a, %.loopexit97 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.a ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !33  ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !33  ; 4 uses
  %i.cv = zext i8 %i.cu to i32
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.a ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !33
  %i.cy = zext i8 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !33
  %i.db = zext i8 %i.da to i32
  %i.dc = sub nsw i32 %i.cy, %i.cs                ; 6 uses
  %i.dd = sub nsw i32 %i.db, %i.cv
  %i.de = icmp sgt i32 %i.dc, 0
  tail call void @llvm.assume(i1 %i.de)
  %i.df = lshr i32 %i.dc, 1
  %i.dg = add nuw nsw i32 %i.df, 65536
  %i.dh = udiv i32 %i.dg, %i.dc
  %i.di = mul nsw i32 %i.dd, %i.dh                ; 2 uses
  %6 = zext i8 %i.cr to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.dc to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dj = icmp eq i32 %i.dc, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.09198 = phi i32 [ 32768, %.lr.ph.new ], [ %i.dx, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.dk = lshr i32 %.09198, 16
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = add i8 %i.cu, %i.dl
  %7 = add nuw nsw i64 %indvars.iv, %6
  %8 = trunc nuw nsw i64 %7 to i32
  %i.dn = shl i32 %8, %i.b
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %3, i64 %i.do
  store i8 %i.dm, ptr %i.dp, align 1, !tbaa !33
  %i.dq = add nsw i32 %.09198, %i.di              ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.dr = lshr i32 %i.dq, 16
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = add i8 %i.cu, %i.ds
  %9 = add nuw nsw i64 %indvars.iv.next, %6
  %10 = trunc nuw nsw i64 %9 to i32
  %i.du = shl i32 %10, %i.b
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %3, i64 %i.dv
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !33
  %i.dx = add nsw i32 %i.dq, %i.di                ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit97.unr-lcssa, label %bb.d

.lr.ph108:                                        ; preds = %.lr.ph111.split.preheader, %.lr.ph108
  %.088106 = phi i32 [ %i.dy, %.lr.ph108 ], [ 0, %.lr.ph111.split.preheader ]
  %i.dy = add nsw i32 %.088106, %.fr112           ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %i.an
  br i1 %i.dz, label %.lr.ph108, label %.loopexit96

.loopexit96:                                      ; preds = %.lr.ph108, %.loopexit.us, %.lr.ph111.split.preheader, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @dav1d_apply_grain_row_16bpc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 3 uses
  %i.f = zext i1 %i.e to i32                      ; 2 uses
  %i.g = icmp ne i32 %i.d, 3
  %i.h = zext i1 %i.g to i32                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = ashr i32 %i.k, %i.h
  %i.m = load ptr, ptr %1, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 4, !tbaa !42
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i1 %i.p to i32                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.t = shl nsw i32 %5, 5                        ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not.i = icmp eq i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.y = ashr exact i64 %i.w, 1
  %i.z = mul nsw i64 %i.y, %i.u
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.z ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %notmask = shl nsw i32 -1, %i.ac
  %i.ad = xor i32 %notmask, -1                    ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32
  %i.ai = sub nsw i32 %i.ah, %i.t
  %i.aj = tail call noundef range(i32 -2147483648, 33) i32 @llvm.smin.i32(i32 %i.ai, i32 32)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !31 ; 3 uses
  %i.aq = and i64 %i.ap, 1
  %.not.i108 = icmp eq i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i108)
  %i.ar = ashr exact i64 %i.ap, 1
  %i.as = mul nsw i64 %i.ar, %i.u
  %i.at = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.as
  %i.au = sext i32 %i.j to i64
  tail call void %i.al(ptr noundef %i.at, ptr noundef %i.aa, i64 noundef %i.ap, ptr noundef nonnull %i.b, i64 noundef %i.au, ptr noundef %3, ptr noundef %4, i32 noundef %i.aj, i32 noundef %5, i32 noundef %i.ad) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !25
  %.not102 = icmp eq i32 %i.aw, 0                 ; 2 uses
  br i1 %.not102, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !25
  %.not103 = icmp eq i32 %i.ay, 0
  br i1 %.not103, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26
  %.not104 = icmp eq i32 %i.ba, 0
  br i1 %.not104, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = sub nsw i32 %i.bc, %i.t
  %i.be = tail call noundef range(i32 -2147483648, 33) i32 @llvm.smin.i32(i32 %i.bd, i32 32)
  %i.bf = add nsw i32 %i.be, %i.f
  %i.bg = ashr i32 %i.bf, %i.f                    ; 8 uses
  %i.bh = load i32, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %i.bi = and i32 %i.bh, %i.h
  %.not105 = icmp ne i32 %i.bi, 0
  %i.bj = icmp sgt i32 %i.bg, 0
  %or.cond = select i1 %.not105, i1 %i.bj, i1 false
  br i1 %or.cond, label %.lr.ph, label %..loopexit114_crit_edge

..loopexit114_crit_edge:                          ; preds = %bb.f
  %.pre = zext i1 %i.e to i64
  br label %.loopexit114

.lr.ph:                                           ; preds = %bb.f
  %i.bk = sext i32 %i.bh to i64                   ; 5 uses
  %i.bl = load i64, ptr %i.v, align 8, !tbaa !31  ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %.not.i109 = icmp eq i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i109)
  %i.bn = ashr exact i64 %i.bl, 1
  %i.bo = zext i1 %i.e to i64                     ; 3 uses
  %i.bp = shl nsw i64 %i.bn, %i.bo                ; 5 uses
  %xtraiter = and i32 %i.bg, 3                    ; 3 uses
  %i.bq = icmp ult i32 %i.bg, 4
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.bg, 2147483644
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.0101115 = phi ptr [ %i.aa, %.lr.ph.new ], [ %i.cg, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.br = getelementptr [2 x i8], ptr %.0101115, i64 %i.bk ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !45
  store i16 %i.bt, ptr %i.br, align 2, !tbaa !45
  %i.bu = getelementptr inbounds [2 x i8], ptr %.0101115, i64 %i.bp ; 2 uses
  %i.bv = getelementptr [2 x i8], ptr %i.bu, i64 %i.bk ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !45
  store i16 %i.bx, ptr %i.bv, align 2, !tbaa !45
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %i.bp ; 2 uses
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %i.bk ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !45
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !45
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bp ; 2 uses
  %i.cd = getelementptr [2 x i8], ptr %i.cc, i64 %i.bk ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !45
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !45
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.bp ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit114.loopexit.unr-lcssa, label %bb.g

.loopexit114.loopexit.unr-lcssa:                  ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit114, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit114.loopexit.unr-lcssa, %.lr.ph
  %.0101115.epil.init = phi ptr [ %i.aa, %.lr.ph ], [ %i.cg, %.loopexit114.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.0101115.epil = phi ptr [ %.0101115.epil.init, %.epil.preheader ], [ %i.ck, %bb.h ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.ch = getelementptr [2 x i8], ptr %.0101115.epil, i64 %i.bk ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !45
  store i16 %i.cj, ptr %i.ch, align 2, !tbaa !45
  %i.ck = getelementptr inbounds [2 x i8], ptr %.0101115.epil, i64 %i.bp
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit114, label %bb.h, !llvm.loop !47

.loopexit114:                                     ; preds = %.loopexit114.loopexit.unr-lcssa, %bb.h, %..loopexit114_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..loopexit114_crit_edge ], [ %i.bo, %bb.h ], [ %i.bo, %.loopexit114.loopexit.unr-lcssa ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31 ; 2 uses
  %i.cn = and i64 %i.cm, 1
  %.not.i110 = icmp eq i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i110)
  %i.co = ashr exact i64 %i.cm, 1
  %i.cp = mul nsw i64 %i.co, %i.u
  %i.cq = ashr exact i64 %i.cp, %.pre-phi         ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !26
  %.not106 = icmp eq i32 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.cv = sext i32 %i.l to i64                    ; 4 uses
  br i1 %.not106, label %.preheader, label %.preheader111

end_hunk_0
