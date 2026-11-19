Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fg_apply_tmpl?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@generate_scaling:bb.a
  %induction158 = add nsw <4 x i32> %broadcast.splat157, %i.bw
  %i.bx = shl nsw i32 %i.bi, 2
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index161 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next163, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind162 = phi <4 x i32> [ %induction158, %vec.epilog.ph ], [ %vec.ind.next164, %vec.epilog.vector.body ] ; 2 uses
  %i.by = add nsw <4 x i32> %vec.ind162, %broadcast.splat153
  %i.bz = ashr <4 x i32> %i.by, %broadcast.splat155
  %i.ca = trunc <4 x i32> %i.bz to <4 x i8>
  %i.cb = add <4 x i8> %broadcast.splat151, %i.ca
  %i.cc = getelementptr i8, ptr %invariant.gep, i64 %index161
  %i.cd = getelementptr i8, ptr %i.cc, i64 1
  store <4 x i8> %i.cb, ptr %i.cd, align 1, !tbaa !36
  %index.next163 = add nuw i64 %index161, 4       ; 2 uses
  %vec.ind.next164 = add nsw <4 x i32> %vec.ind162, %broadcast.splat160
  %i.ce = icmp eq i64 %index.next163, %n.vec149
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n165, label %._crit_edge105.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv121.ph = phi i64 [ 1, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0102.us.us.ph = phi i32 [ %i.ag, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %vec.epilog.scalar.ph ], [ %indvars.iv121.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0102.us.us = phi i32 [ %i.cf, %vec.epilog.scalar.ph ], [ %.0102.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cf = add nsw i32 %.0102.us.us, %i.bi         ; 2 uses
  %i.cg = ashr i32 %i.cf, %i.b
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = add i8 %i.bg, %i.ch
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv121
  store i8 %i.ci, ptr %gep, align 1, !tbaa !36
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge105.us.us, label %vec.epilog.scalar.ph, !llvm.loop !35

._crit_edge105.us.us:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, %i.aj ; 2 uses
  %i.cj = icmp samesign ult i64 %indvars.iv.next127, %i.bb
  br i1 %i.cj, label %iter.check, label %.loopexit.us

.loopexit.us:                                     ; preds = %._crit_edge105.us.us, %.lr.ph111.split.us
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.loopexit96, label %.lr.ph111.split.us

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit97
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit97 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !36
  %i.cm = zext i8 %i.cl to i32                    ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !36  ; 4 uses
  %i.cp = zext i8 %i.co to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !36
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !36
  %i.cv = zext i8 %i.cu to i32
  %i.cw = sub nsw i32 %i.cs, %i.cm                ; 6 uses
  %i.cx = sub nsw i32 %i.cv, %i.cp
  %i.cy = icmp sgt i32 %i.cw, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = lshr i32 %i.cw, 1
  %i.da = add nuw nsw i32 %i.cz, 65536
  %i.db = udiv i32 %i.da, %i.cw
  %i.dc = mul nsw i32 %i.cx, %i.db                ; 2 uses
  %xtraiter = and i32 %i.cw, 1
  %i.dd = add nsw i32 %i.cs, -1
  %i.de = icmp eq i32 %i.dd, %i.cm
  br i1 %i.de, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.cw, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.09099 = phi i32 [ 32768, %.lr.ph.new ], [ %i.dv, %bb.d ] ; 2 uses
  %.09198 = phi i32 [ 0, %.lr.ph.new ], [ %i.dw, %bb.d ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.df = lshr i32 %.09099, 16
  %i.dg = trunc i32 %i.df to i8
  %i.dh = add i8 %i.co, %i.dg
  %i.di = add nuw nsw i32 %.09198, %i.cm
  %i.dj = shl i32 %i.di, %i.b
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %3, i64 %i.dk
  store i8 %i.dh, ptr %i.dl, align 1, !tbaa !36
  %i.dm = add nsw i32 %.09099, %i.dc              ; 2 uses
  %i.dn = or disjoint i32 %.09198, 1
  %i.do = lshr i32 %i.dm, 16
  %i.dp = trunc i32 %i.do to i8
  %i.dq = add i8 %i.co, %i.dp
  %i.dr = add nuw nsw i32 %i.dn, %i.cm
  %i.ds = shl i32 %i.dr, %i.b
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %3, i64 %i.dt
  store i8 %i.dq, ptr %i.du, align 1, !tbaa !36
  %i.dv = add nsw i32 %i.dm, %i.dc                ; 2 uses
  %i.dw = add nuw nsw i32 %.09198, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit97.unr-lcssa, label %bb.d

.loopexit:                                        ; preds = %.lr.ph108, %.lr.ph111.split
  %i.dx = zext i8 %i.ek to i32
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 3 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next117.1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !36  ; 3 uses
  %i.ea = zext i8 %i.dz to i32
  %i.eb = sub nsw i32 %i.ea, %i.dx
  %i.ec = shl i32 %i.eb, %i.b                     ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph108.1, label %.loopexit.1

.lr.ph108.1:                                      ; preds = %.loopexit, %.lr.ph108.1
  %.088106.1 = phi i32 [ %i.ee, %.lr.ph108.1 ], [ 0, %.loopexit ]
  %i.ee = add nsw i32 %.088106.1, %.fr112         ; 2 uses
  %i.ef = icmp slt i32 %i.ee, %i.ec
  br i1 %i.ef, label %.lr.ph108.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph108.1, %.loopexit
  %niter174.next.1 = add nuw i64 %niter174, 2     ; 2 uses
  %niter174.ncmp.1 = icmp eq i64 %niter174.next.1, %unroll_iter173
  br i1 %niter174.ncmp.1, label %.loopexit96.loopexit168.unr-lcssa, label %.lr.ph111.split

.lr.ph111.split:                                  ; preds = %.loopexit.1, %.lr.ph111.split.preheader.new
  %i.eg = phi i8 [ %.pre, %.lr.ph111.split.preheader.new ], [ %i.dz, %.loopexit.1 ]
  %indvars.iv116 = phi i64 [ 0, %.lr.ph111.split.preheader.new ], [ %indvars.iv.next117.1, %.loopexit.1 ] ; 2 uses
  %niter174 = phi i64 [ 0, %.lr.ph111.split.preheader.new ], [ %niter174.next.1, %.loopexit.1 ]
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv116
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !36  ; 2 uses
  %i.el = zext i8 %i.ek to i32
  %i.em = sub nsw i32 %i.el, %i.eh
  %i.en = shl i32 %i.em, %i.b                     ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph108, label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph111.split, %.lr.ph108
  %.088106 = phi i32 [ %i.ep, %.lr.ph108 ], [ 0, %.lr.ph111.split ]
  %i.ep = add nsw i32 %.088106, %.fr112           ; 2 uses
  %i.eq = icmp slt i32 %i.ep, %i.en
  br i1 %i.eq, label %.lr.ph108, label %.loopexit

.loopexit96.loopexit168.unr-lcssa:                ; preds = %.loopexit.1
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.loopexit96, label %.lr.ph111.split.epil.preheader

.lr.ph111.split.epil.preheader:                   ; preds = %.loopexit96.loopexit168.unr-lcssa, %.lr.ph111.split.preheader
  %.epil.init = phi i8 [ %.pre, %.lr.ph111.split.preheader ], [ %i.dz, %.loopexit96.loopexit168.unr-lcssa ]
  %indvars.iv116.epil.init = phi i64 [ 0, %.lr.ph111.split.preheader ], [ %indvars.iv.next117.1, %.loopexit96.loopexit168.unr-lcssa ]
  %lcmp.mod172 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.er = zext i8 %.epil.init to i32
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv116.epil.init
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !36
  %i.ev = zext i8 %i.eu to i32
  %i.ew = sub nsw i32 %i.ev, %i.er
  %i.ex = shl i32 %i.ew, %i.b                     ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph108.epil, label %.loopexit96

.lr.ph108.epil:                                   ; preds = %.lr.ph111.split.epil.preheader, %.lr.ph108.epil
  %.088106.epil = phi i32 [ %i.ez, %.lr.ph108.epil ], [ 0, %.lr.ph111.split.epil.preheader ]
  %i.ez = add nsw i32 %.088106.epil, %.fr112      ; 2 uses
  %i.fa = icmp slt i32 %i.ez, %i.ex
  br i1 %i.fa, label %.lr.ph108.epil, label %.loopexit96

.loopexit96:                                      ; preds = %.loopexit96.loopexit168.unr-lcssa, %.lr.ph108.epil, %.lr.ph111.split.epil.preheader, %.loopexit.us, %._crit_edge, %bb.b
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 3 uses
  %i.f = zext i1 %i.e to i32                      ; 2 uses
  %i.g = icmp ne i32 %i.d, 3
  %i.h = zext i1 %i.g to i32                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = ashr i32 %i.k, %i.h
  %i.m = load ptr, ptr %1, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i1 %i.p to i32                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = shl i32 %5, 5                            ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not.i = icmp eq i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.y = ashr exact i64 %i.w, 1                   ; 2 uses
  %i.z = mul nsw i64 %i.y, %i.u
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.z ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %notmask = shl nsw i32 -1, %i.ac
  %i.ad = xor i32 %notmask, -1                    ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !31
  %i.ai = sub nsw i32 %i.ah, %i.t
  %i.aj = tail call noundef range(i32 -2147483648, 33) i32 @llvm.smin.i32(i32 %i.ai, i32 32)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !30 ; 3 uses
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
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !24
  %.not102 = icmp eq i32 %i.aw, 0                 ; 2 uses
  br i1 %.not102, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %.not103 = icmp eq i32 %i.ay, 0
  br i1 %.not103, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26
  %.not104 = icmp eq i32 %i.ba, 0
  br i1 %.not104, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31
  %i.bd = sub nsw i32 %i.bc, %i.t
  %i.be = tail call noundef range(i32 -2147483648, 33) i32 @llvm.smin.i32(i32 %i.bd, i32 32)
  %i.bf = add nsw i32 %i.be, %i.f
  %i.bg = ashr i32 %i.bf, %i.f                    ; 11 uses
  %i.bh = load i32, ptr %i.i, align 8, !tbaa !42  ; 2 uses
  %i.bi = and i32 %i.bh, %i.h
  %.not105 = icmp ne i32 %i.bi, 0
  %i.bj = icmp sgt i32 %i.bg, 0
  %or.cond = select i1 %.not105, i1 %i.bj, i1 false
  br i1 %or.cond, label %.lr.ph, label %..loopexit114_crit_edge

..loopexit114_crit_edge:                          ; preds = %bb.f
  %.pre = zext i1 %i.e to i64
  br label %.loopexit114

.lr.ph:                                           ; preds = %bb.f
  %i.bk = sext i32 %i.bh to i64                   ; 15 uses
  %i.bl = load i64, ptr %i.v, align 8, !tbaa !30  ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %.not.i109 = icmp eq i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i109)
  %i.bn = ashr exact i64 %i.bl, 1
  %i.bo = zext i1 %i.e to i64                     ; 5 uses
  %i.bp = shl nsw i64 %i.bn, %i.bo                ; 15 uses
  %ident.check.not = icmp eq i64 %i.bp, 1
  br i1 %ident.check.not, label %.ph, label %.ph.lver.orig.preheader

.ph.lver.orig.preheader:                          ; preds = %.lr.ph
  %xtraiter = and i32 %i.bg, 3                    ; 3 uses
  %6 = icmp ult i32 %i.bg, 4
  br i1 %6, label %.epil.preheader.a, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.ph.lver.orig.preheader
  %unroll_iter = and i32 %i.bg, 2147483644
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.0101115.a = phi ptr [ %i.aa, %.lr.ph.new ], [ %i.cf, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bq = getelementptr [2 x i8], ptr %.0101115.a, i64 %i.bk ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !48
  store i16 %i.bs, ptr %i.bq, align 2, !tbaa !48
  %i.bt = getelementptr inbounds [2 x i8], ptr %.0101115.a, i64 %i.bp ; 2 uses
  %i.bu = getelementptr [2 x i8], ptr %i.bt, i64 %i.bk ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !48
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !48
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.bp ; 2 uses
  %i.by = getelementptr [2 x i8], ptr %i.bx, i64 %i.bk ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !48
  store i16 %i.ca, ptr %i.by, align 2, !tbaa !48
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.bp ; 2 uses
  %i.cc = getelementptr [2 x i8], ptr %i.cb, i64 %i.bk ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !48
  store i16 %i.ce, ptr %i.cc, align 2, !tbaa !48
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.bp ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit114.loopexit.unr-lcssa.a, label %bb.g

.ph:                                              ; preds = %.lr.ph
  %7 = mul i64 %i.y, %i.u
  %8 = add i64 %7, %i.bk
  %9 = shl i64 %8, 1
  %10 = getelementptr i8, ptr %i.s, i64 %9
  %scevgep = getelementptr i8, ptr %10, i64 -2
  %load_initial = load i16, ptr %scevgep, align 2 ; 9 uses
  %xtraiter125 = and i32 %i.bg, 7                 ; 3 uses
  %11 = icmp ult i32 %i.bg, 8
  br i1 %11, label %.epil.preheader, label %.ph.new

.ph.new:                                          ; preds = %.ph
  %unroll_iter129 = and i32 %i.bg, 2147483640
  br label %12

12:                                               ; preds = %12, %.ph.new
  %.0101115 = phi ptr [ %i.aa, %.ph.new ], [ %28, %12 ] ; 2 uses
  %niter130 = phi i32 [ 0, %.ph.new ], [ %niter130.next.7, %12 ]
  %13 = getelementptr [2 x i8], ptr %.0101115, i64 %i.bk
  store i16 %load_initial, ptr %13, align 2, !tbaa !48
  %14 = getelementptr inbounds nuw [2 x i8], ptr %.0101115, i64 %i.bp ; 2 uses
  %15 = getelementptr [2 x i8], ptr %14, i64 %i.bk
  store i16 %load_initial, ptr %15, align 2, !tbaa !48
  %16 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %i.bp ; 2 uses
  %17 = getelementptr [2 x i8], ptr %16, i64 %i.bk
  store i16 %load_initial, ptr %17, align 2, !tbaa !48
  %18 = getelementptr inbounds nuw [2 x i8], ptr %16, i64 %i.bp ; 2 uses
  %19 = getelementptr [2 x i8], ptr %18, i64 %i.bk
  store i16 %load_initial, ptr %19, align 2, !tbaa !48
  %20 = getelementptr inbounds nuw [2 x i8], ptr %18, i64 %i.bp ; 2 uses
  %21 = getelementptr [2 x i8], ptr %20, i64 %i.bk
  store i16 %load_initial, ptr %21, align 2, !tbaa !48
  %22 = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %i.bp ; 2 uses
  %23 = getelementptr [2 x i8], ptr %22, i64 %i.bk
  store i16 %load_initial, ptr %23, align 2, !tbaa !48
  %24 = getelementptr inbounds nuw [2 x i8], ptr %22, i64 %i.bp ; 2 uses
  %25 = getelementptr [2 x i8], ptr %24, i64 %i.bk
  store i16 %load_initial, ptr %25, align 2, !tbaa !48
  %26 = getelementptr inbounds nuw [2 x i8], ptr %24, i64 %i.bp ; 2 uses
  %27 = getelementptr [2 x i8], ptr %26, i64 %i.bk
  store i16 %load_initial, ptr %27, align 2, !tbaa !48
  %28 = getelementptr inbounds nuw [2 x i8], ptr %26, i64 %i.bp ; 2 uses
  %niter130.next.7 = add nuw nsw i32 %niter130, 8 ; 2 uses
  %niter130.ncmp.7 = icmp eq i32 %niter130.next.7, %unroll_iter129
  br i1 %niter130.ncmp.7, label %.loopexit114.loopexit.unr-lcssa, label %12

.loopexit114.loopexit.unr-lcssa:                  ; preds = %12
  %lcmp.mod127.not = icmp eq i32 %xtraiter125, 0
  br i1 %lcmp.mod127.not, label %.loopexit114, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit114.loopexit.unr-lcssa, %.ph
  %.0101115.epil.init = phi ptr [ %i.aa, %.ph ], [ %28, %.loopexit114.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i32 %xtraiter125, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %29

29:                                               ; preds = %29, %.epil.preheader
  %.0101115.epil = phi ptr [ %.0101115.epil.init, %.epil.preheader ], [ %31, %29 ] ; 2 uses
  %epil.iter126 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter126.next, %29 ]
  %30 = getelementptr [2 x i8], ptr %.0101115.epil, i64 %i.bk
  store i16 %load_initial, ptr %30, align 2, !tbaa !48
  %31 = getelementptr inbounds nuw [2 x i8], ptr %.0101115.epil, i64 %i.bp
  %epil.iter126.next = add i32 %epil.iter126, 1   ; 2 uses
  %epil.iter126.cmp.not = icmp eq i32 %epil.iter126.next, %xtraiter125
  br i1 %epil.iter126.cmp.not, label %.loopexit114, label %29, !llvm.loop !40

.loopexit114.loopexit.unr-lcssa.a:                ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit114, label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %.loopexit114.loopexit.unr-lcssa.a, %.ph.lver.orig.preheader
  %.0101115.epil.init.a = phi ptr [ %i.aa, %.ph.lver.orig.preheader ], [ %i.cf, %.loopexit114.loopexit.unr-lcssa.a ]
  %lcmp.mod122 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader.a
  %.0101115.epil.a = phi ptr [ %i.cj, %bb.h ], [ %.0101115.epil.init.a, %.epil.preheader.a ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %bb.h ], [ 0, %.epil.preheader.a ]
  %i.cg = getelementptr [2 x i8], ptr %.0101115.epil.a, i64 %i.bk ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !48
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !48
  %i.cj = getelementptr inbounds [2 x i8], ptr %.0101115.epil.a, i64 %i.bp
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit114, label %bb.h, !llvm.loop !41

.loopexit114:                                     ; preds = %.loopexit114.loopexit.unr-lcssa.a, %bb.h, %.loopexit114.loopexit.unr-lcssa, %29, %..loopexit114_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..loopexit114_crit_edge ], [ %i.bo, %.loopexit114.loopexit.unr-lcssa ], [ %i.bo, %29 ], [ %i.bo, %bb.h ], [ %i.bo, %.loopexit114.loopexit.unr-lcssa.a ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !30 ; 2 uses
  %i.cm = and i64 %i.cl, 1
  %.not.i110 = icmp eq i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i110)
  %i.cn = ashr exact i64 %i.cl, 1
  %i.co = mul nsw i64 %i.cn, %i.u
  %i.cp = ashr exact i64 %i.co, %.pre-phi         ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !26
  %.not106 = icmp eq i32 %i.cr, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.cu = sext i32 %i.l to i64                    ; 4 uses
  br i1 %.not106, label %.preheader, label %.preheader111

.preheader111:                                    ; preds = %.loopexit114
  %i.cv = load i32, ptr %i.c, align 8, !tbaa !27
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !28
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.cp
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !28
  %i.df = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.cp
  %i.dg = load i64, ptr %i.ct, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 12136
  %i.di = load i64, ptr %i.v, align 8, !tbaa !30
  tail call void %i.cz(ptr noundef %i.dc, ptr noundef %i.df, i64 noundef %i.dg, ptr noundef nonnull %i.b, i64 noundef %i.cu, ptr noundef %3, ptr noundef nonnull %i.dh, i32 noundef %i.bg, i32 noundef %5, ptr noundef %i.aa, i64 noundef %i.di, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.ad) #6
  %i.dj = load i32, ptr %i.c, align 8, !tbaa !27
  %i.dk = add i32 %i.dj, -1
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !28
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !28
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.cp
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !28
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.cp
  %i.du = load i64, ptr %i.ct, align 8, !tbaa !30
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 24272
  %i.dw = load i64, ptr %i.v, align 8, !tbaa !30
  tail call void %i.dn(ptr noundef %i.dq, ptr noundef %i.dt, i64 noundef %i.du, ptr noundef nonnull %i.b, i64 noundef %i.cu, ptr noundef %3, ptr noundef nonnull %i.dv, i32 noundef %i.bg, i32 noundef %5, ptr noundef %i.aa, i64 noundef %i.dw, i32 noundef 1, i32 noundef %i.q, i32 noundef %i.ad) #6
  br label %.loopexit

.preheader:                                       ; preds = %.loopexit114
  br i1 %.not102, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !27
  %i.dy = add i32 %i.dx, -1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !28
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.cp
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !28
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.cp
  %i.ei = load i64, ptr %i.ct, align 8, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 12136
  %i.el = load i64, ptr %i.v, align 8, !tbaa !30
  tail call void %i.eb(ptr noundef %i.ee, ptr noundef %i.eh, i64 noundef %i.ei, ptr noundef nonnull %i.b, i64 noundef %i.cu, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ek, i32 noundef %i.bg, i32 noundef %5, ptr noundef %i.aa, i64 noundef %i.el, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.ad) #6
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.en = load i32, ptr %i.em, align 4, !tbaa !24
  %.not107.1 = icmp eq i32 %i.en, 0
  br i1 %.not107.1, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eo = load i32, ptr %i.c, align 8, !tbaa !27
  %i.ep = add i32 %i.eo, -1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !28
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !28
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.cp
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !28
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.cp
  %i.ez = load i64, ptr %i.ct, align 8, !tbaa !30
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8192
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 24272
  %i.fc = load i64, ptr %i.v, align 8, !tbaa !30
  tail call void %i.es(ptr noundef %i.ev, ptr noundef %i.ey, i64 noundef %i.ez, ptr noundef nonnull %i.b, i64 noundef %i.cu, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fb, i32 noundef %i.bg, i32 noundef %5, ptr noundef %i.aa, i64 noundef %i.fc, i32 noundef 1, i32 noundef %i.q, i32 noundef %i.ad) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.k, %.preheader111, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @dav1d_apply_grain_16bpc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x [74 x [82 x i16]]], align 16 ; 4 uses
  %i.b = alloca [3 x [4096 x i8]], align 16       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 2 uses
  call void @dav1d_prep_grain_16bpc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.d, 31
  %i.g = lshr i32 %i.f, 5
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi i32 [ %i.h, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  call void @dav1d_apply_grain_row_16bpc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %.010)
  %i.h = add nuw nsw i32 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS19Dav1dSequenceHeader", !8, i64 0}
!10 = !{!"p1 _ZTS16Dav1dFrameHeader", !8, i64 0}
!11 = !{!"Dav1dPictureParameters", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"p1 _ZTS8Dav1dRef", !8, i64 0}
!15 = !{!"Dav1dUserData", !13, i64 0, !14, i64 8}
!16 = !{!"Dav1dDataProps", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !15, i64 32}
!17 = !{!"p1 _ZTS22Dav1dContentLightLevel", !8, i64 0}
!18 = !{!"p1 _ZTS21Dav1dMasteringDisplay", !8, i64 0}
!19 = !{!"p1 _ZTS12Dav1dITUTT35", !8, i64 0}
!20 = !{!"Dav1dPicture", !9, i64 0, !10, i64 8, !4, i64 16, !4, i64 40, !11, i64 56, !16, i64 72, !17, i64 120, !18, i64 128, !19, i64 136, !12, i64 144, !4, i64 152, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !4, i64 224, !14, i64 256, !8, i64 264}
!21 = !{!20, !10, i64 8}
!22 = !{!20, !5, i64 68}
!23 = !{!"Dav1dFilmGrainDSPContext", !8, i64 0, !4, i64 8, !8, i64 32, !4, i64 40}
!24 = !{!5, !5, i64 0}
!25 = !{!"Dav1dFilmGrainData", !5, i64 0, !5, i64 4, !4, i64 8, !5, i64 36, !4, i64 40, !4, i64 48, !5, i64 88, !5, i64 92, !4, i64 96, !4, i64 120, !12, i64 176, !5, i64 184, !4, i64 188, !4, i64 196, !4, i64 204, !5, i64 212, !5, i64 216}
!26 = !{!25, !5, i64 36}
!27 = !{!20, !5, i64 64}
!28 = !{!8, !8, i64 0}
!29 = !{!25, !5, i64 4}
!30 = !{!12, !12, i64 0}
!31 = !{!20, !5, i64 60}
!32 = !{!23, !8, i64 0}
!33 = distinct !{!33, !37, !38}
!34 = distinct !{!34, !37, !38}
!35 = distinct !{!35, !38, !37}
!36 = !{!4, !4, i64 0}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"branch_weights", i32 4, i32 12}
!40 = distinct !{!40, !49}
!41 = distinct !{!41, !49}
!42 = !{!20, !5, i64 56}
!43 = !{!20, !9, i64 0}
!44 = !{!"Dav1dSequenceHeader", !4, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 33, !4, i64 34, !4, i64 36, !4, i64 356, !4, i64 357, !4, i64 358, !5, i64 360, !5, i64 364, !4, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !5, i64 380, !4, i64 384, !4, i64 385, !4, i64 386, !4, i64 387, !4, i64 388, !4, i64 389, !4, i64 390, !4, i64 391, !4, i64 392, !4, i64 393, !4, i64 394, !4, i64 395, !4, i64 396, !4, i64 397, !4, i64 398, !4, i64 399, !4, i64 400, !4, i64 401, !5, i64 404, !5, i64 408, !4, i64 412, !4, i64 413, !4, i64 414, !4, i64 415, !4, i64 416, !4, i64 417, !4, i64 418, !4, i64 419, !4, i64 420, !4, i64 421, !4, i64 424}
!45 = !{!44, !5, i64 24}
!46 = !{!23, !8, i64 32}
!47 = !{!"short", !4, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
