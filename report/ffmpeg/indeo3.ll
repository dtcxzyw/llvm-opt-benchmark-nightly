Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/indeo3?download=true
inline.NumInlined: 29
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@decode_cell:bb.a
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !67
  %i.cv = icmp samesign ugt i32 %.0127, 15
  %i.cw = zext i1 %i.cv to i32
  store i32 %i.cw, ptr %i.b, align 4, !tbaa !41
  %i.cx = icmp samesign ugt i32 %.0128, 15
  %i.cy = zext i1 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !41
  %i.da = icmp samesign ugt i32 %.0129, 7
  %i.db = icmp ne ptr %.0124, null
  %or.cond5 = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond5, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 4, !tbaa !65
  %i.de = icmp sgt i16 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.df = and i32 %.0129, 7
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [128 x i8], ptr @requant_tab, i64 %i.dg
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0124, i64 %indvars.iv ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !36
  %i.dk = and i8 %i.dj, 127
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !36
  store i8 %i.dn, ptr %i.di, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = load i16, ptr %i.dc, align 4, !tbaa !65
  %i.dp = sext i16 %i.do to i32
  %i.dq = shl nsw i32 %i.dp, 2
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %bb.p, label %.loopexit, !llvm.loop !96

.loopexit:                                        ; preds = %bb.p, %.preheader, %bb.o
  switch i32 %i.g, label %bb.y [
    i32 0, label %bb.q
    i32 1, label %bb.q
    i32 3, label %bb.q
    i32 4, label %bb.q
    i32 10, label %bb.u
    i32 11, label %bb.w
  ]

bb.q:                                             ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %i.dt = icmp ugt i8 %i.e, 47                    ; 2 uses
  br i1 %i.dt, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !57
  %.not138 = icmp eq ptr %i.du, null
  br i1 %.not138, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.21) #10
  br label %bb.ag

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.dv = zext i1 %i.dt to i32
  %i.dw = load i64, ptr %i.m, align 8, !tbaa !61
  %i.dx = call fastcc i32 @decode_cell_data(ptr noundef %3, ptr noundef %i.ab, ptr noundef %.0124, i64 noundef %i.dw, i32 noundef 0, i32 noundef %i.dv, i32 noundef %i.g, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %5)
  br label %bb.z

bb.u:                                             ; preds = %.loopexit
  %i.dy = load ptr, ptr %i.ac, align 8, !tbaa !57
  %.not136 = icmp eq ptr %i.dy, null
  %i.dz = load i64, ptr %i.m, align 8, !tbaa !61  ; 2 uses
  br i1 %.not136, label %bb.v, label %.split

bb.v:                                             ; preds = %bb.u
  %i.ea = call fastcc i32 @decode_cell_data(ptr noundef %3, ptr noundef %i.ab, ptr noundef %.0124, i64 noundef %i.dz, i32 noundef 1, i32 noundef 1, i32 noundef 10, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %5)
  br label %bb.z

.split:                                           ; preds = %bb.u
  %i.eb = call fastcc i32 @decode_cell_data(ptr noundef %3, ptr noundef %i.ab, ptr noundef %i.ab, i64 noundef %i.dz, i32 noundef 1, i32 noundef 1, i32 noundef 10, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %5)
  br label %bb.z

bb.w:                                             ; preds = %.loopexit
  %i.ec = load ptr, ptr %i.ac, align 8, !tbaa !57
  %.not137 = icmp eq ptr %i.ec, null
  br i1 %.not137, label %bb.x, label %.split132

.split132:                                        ; preds = %bb.w
  %i.ed = load i64, ptr %i.m, align 8, !tbaa !61
  %i.ee = call fastcc i32 @decode_cell_data(ptr noundef %3, ptr noundef %i.ab, ptr noundef %i.ab, i64 noundef %i.ed, i32 noundef 0, i32 noundef 1, i32 noundef 11, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %5)
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.22) #10
  br label %bb.ag

bb.y:                                             ; preds = %.loopexit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.g) #10
  br label %bb.ag

bb.z:                                             ; preds = %.split, %.split132, %bb.v, %bb.t
  %.0126 = phi i32 [ %i.dx, %bb.t ], [ %i.ea, %bb.v ], [ %i.eb, %.split ], [ %i.ee, %.split132 ]
  switch i32 %.0126, label %bb.af [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !36
  %i.ei = zext i8 %i.eh to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %i.g, i32 noundef %i.ei) #10
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.25, i32 noundef %i.g) #10
  br label %bb.ag

bb.ac:                                            ; preds = %bb.z
  %i.ej = zext i8 %.0125 to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.26, i32 noundef %i.g, i32 noundef %i.ej) #10
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !36
  %i.en = zext i8 %i.em to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %i.g, i32 noundef %i.en) #10
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.g) #10
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %4 to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.er to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.d, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.s, %bb.n, %bb.h
  %.1 = phi i32 [ -1094995529, %bb.n ], [ -1094995529, %bb.y ], [ -1094995529, %bb.s ], [ %i.es, %bb.af ], [ -1094995529, %bb.aa ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.ac ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.ae ], [ -1094995529, %bb.x ], [ %i.ah, %bb.d ], [ -1094995529, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 6) i32 @decode_cell_data(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 16) %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef nonnull readonly captures(none) %8, ptr nofree noundef nonnull captures(none) %9, ptr nofree noundef readnone captures(address) %10) unnamed_addr #6 {
bb.a:
  %i.a = or disjoint i32 %5, 2
  %i.b = zext nneg i32 %i.a to i64
  %i.c = shl i64 %3, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !65   ; 2 uses
  %i.f = sext i16 %i.e to i32                     ; 2 uses
  %i.g = shl nsw i32 %i.f, 2
  %i.h = sext i32 %i.g to i64
  %i.i = sub nsw i64 %i.c, %i.h                   ; 2 uses
  %.not = icmp eq i32 %5, 0
  %i.j = select i1 %.not, i64 0, i64 %3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !64   ; 3 uses
  %i.m = zext i16 %i.l to i32
  %i.n = and i32 %5, %i.m
  %.not343 = icmp eq i32 %i.n, 0
  %i.o = and i32 %4, %i.f
  %.not344 = icmp eq i32 %i.o, 0
  %or.cond360 = select i1 %.not343, i1 %.not344, i1 false
  br i1 %or.cond360, label %.preheader30, label %.thread12

.preheader30:                                     ; preds = %bb.a
  %i.p = icmp sgt i16 %i.l, 0
  br i1 %i.p, label %.preheader29.lr.ph, label %.thread12

.preheader29.lr.ph:                               ; preds = %.preheader30
  %i.q = icmp samesign ugt i32 %6, 4              ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.t = icmp samesign ugt i32 %6, 9
  %i.u = icmp eq i32 %6, 10                       ; 4 uses
  %i.v = icmp samesign ugt i32 %6, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.x = icmp samesign ult i32 %6, 5
  %i.y = shl nuw nsw i32 4, %4
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = add nuw nsw i32 %4, 1
  %i.ab = add nuw nsw i32 %5, 1
  %.not122.not = icmp eq i32 %5, 0
  %lcmp.mod103 = icmp eq i32 %5, 0
  %i.ac = icmp eq i32 %5, 0
  %.not123.not = icmp eq i32 %5, 0
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.lr.ph, %._crit_edge
  %i.ad = phi i16 [ %i.l, %.preheader29.lr.ph ], [ %i.of, %._crit_edge ]
  %i.ae = phi i16 [ %i.e, %.preheader29.lr.ph ], [ %i.og, %._crit_edge ] ; 2 uses
  %.not34559 = phi i1 [ false, %.preheader29.lr.ph ], [ true, %._crit_edge ] ; 2 uses
  %.029858 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.1299.lcssa, %._crit_edge ] ; 2 uses
  %.030857 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.1309.lcssa, %._crit_edge ] ; 2 uses
  %.032056 = phi i32 [ 0, %.preheader29.lr.ph ], [ %i.oj, %._crit_edge ]
  %.032255 = phi ptr [ %1, %.preheader29.lr.ph ], [ %i.oi, %._crit_edge ] ; 2 uses
  %.032554 = phi ptr [ %2, %.preheader29.lr.ph ], [ %i.oh, %._crit_edge ] ; 2 uses
  %i.af = icmp sgt i16 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader29, %.loopexit
  %.129950 = phi i32 [ %.7, %.loopexit ], [ %.029858, %.preheader29 ] ; 3 uses
  %.130949 = phi i32 [ %.7315, %.loopexit ], [ %.030857, %.preheader29 ] ; 3 uses
  %.032148 = phi i32 [ %i.ob, %.loopexit ], [ 0, %.preheader29 ]
  %.132346 = phi ptr [ %i.nz, %.loopexit ], [ %.032255, %.preheader29 ] ; 8 uses
  %.132644 = phi ptr [ %i.oa, %.loopexit ], [ %.032554, %.preheader29 ] ; 6 uses
  %i.ag = icmp sgt i32 %.130949, 0
  br i1 %i.ag, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = icmp ne i32 %.129950, 0
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %copy_block4.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0811.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.132346, %.lr.ph.i.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.132644, %.lr.ph.i.preheader ] ; 2 uses
  %niter121 = phi i32 [ %niter121.next.7, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.ak = load i32, ptr %.0910.i, align 1, !tbaa !36
  store i32 %i.ak, ptr %.0811.i, align 1, !tbaa !36
  %i.al = getelementptr inbounds i8, ptr %.0811.i, i64 %3 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.0910.i, i64 %3 ; 2 uses
  %i.an = load i32, ptr %i.am, align 1, !tbaa !36
  store i32 %i.an, ptr %i.al, align 1, !tbaa !36
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %3 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %3 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !36
  store i32 %i.aq, ptr %i.ao, align 1, !tbaa !36
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %3 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %3 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1, !tbaa !36
  store i32 %i.at, ptr %i.ar, align 1, !tbaa !36
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %3 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %3 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !36
  store i32 %i.aw, ptr %i.au, align 1, !tbaa !36
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %3 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %3 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !36
  store i32 %i.az, ptr %i.ax, align 1, !tbaa !36
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %3 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %3 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !36
  store i32 %i.bc, ptr %i.ba, align 1, !tbaa !36
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %3 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %3 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !36
  store i32 %i.bf, ptr %i.bd, align 1, !tbaa !36
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %3
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %3
  %niter121.next.7 = add i32 %niter121, 8
  %niter121.ncmp.7 = icmp eq i32 %niter121, 0
  br i1 %niter121.ncmp.7, label %copy_block4.exit, label %.lr.ph.i, !llvm.loop !97

bb.d:                                             ; preds = %bb.b
  br i1 %i.u, label %bb.e, label %copy_block4.exit

bb.e:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !57
  %.not358 = icmp eq ptr %i.bi, null
  br i1 %.not358, label %bb.f, label %copy_block4.exit

bb.f:                                             ; preds = %bb.e
  %i.bj = load i64, ptr %.132644, align 1, !tbaa !36 ; 9 uses
  br i1 %.not34559, label %.lr.ph.i365.preheader, label %.lr.ph.i364

.lr.ph.i365.preheader:                            ; preds = %bb.f
  store i64 %i.bj, ptr %.132346, align 8, !tbaa !36
  %i.bk = getelementptr inbounds i8, ptr %.132346, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !36
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !36
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bn, align 8, !tbaa !36
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bo, align 8, !tbaa !36
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bp, align 8, !tbaa !36
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %3
  store i64 %i.bj, ptr %i.bq, align 8, !tbaa !36
  br label %copy_block4.exit

.lr.ph.i364:                                      ; preds = %bb.f
  %i.br = and i64 %i.bj, 71777214294589695
  %i.bs = mul nuw i64 %i.br, 257                  ; 7 uses
  %i.bt = getelementptr inbounds i8, ptr %.132346, i64 %3 ; 3 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !36
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !36
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.bv, align 8, !tbaa !36
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.bw, align 8, !tbaa !36
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.bx, align 8, !tbaa !36
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !36
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %3
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !36
  %i.ca = load i64, ptr %.132644, align 1, !tbaa !36
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !36
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = and i64 %i.cd, 9187201950435737471
  store i64 %i.ce, ptr %.132346, align 8, !tbaa !36
  br label %copy_block4.exit

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i.preheader
  tail call void @llvm.assume(i1 %.not123.not)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0811.i.epil = phi ptr [ %i.cg, %.lr.ph.i.epil ], [ %.132346, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0910.i.epil = phi ptr [ %i.ch, %.lr.ph.i.epil ], [ %.132644, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter117 = phi i32 [ %epil.iter117.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cf = load i32, ptr %.0910.i.epil, align 1, !tbaa !36
  store i32 %i.cf, ptr %.0811.i.epil, align 1, !tbaa !36
  %i.cg = getelementptr inbounds i8, ptr %.0811.i.epil, i64 %3
  %i.ch = getelementptr inbounds i8, ptr %.0910.i.epil, i64 %3
  %epil.iter117.next = add i32 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i32 %epil.iter117.next, 4
  br i1 %epil.iter117.cmp.not, label %copy_block4.exit, label %.lr.ph.i.epil, !llvm.loop !98

copy_block4.exit:                                 ; preds = %.lr.ph.i, %.lr.ph.i.epil, %.lr.ph.i365.preheader, %bb.d, %bb.e, %.lr.ph.i364, %bb.c
  %i.ci = add nsw i32 %.130949, -1
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.thread2
  %.029142 = phi ptr [ %i.nx, %.thread2 ], [ %.132346, %.lr.ph ] ; 31 uses
  %.029341 = phi ptr [ %i.nw, %.thread2 ], [ %.132644, %.lr.ph ] ; 18 uses
  %.230040 = phi i32 [ %.5303, %.thread2 ], [ %.129950, %.lr.ph ] ; 11 uses
  %.231039 = phi i32 [ %.5313, %.thread2 ], [ %.130949, %.lr.ph ] ; 11 uses
  %.031838 = phi i32 [ %i.ns, %.thread2 ], [ 0, %.lr.ph ] ; 5 uses
  %.not346 = icmp ne i32 %.031838, 0              ; 2 uses
  %spec.select.not = or i1 %.not34559, %.not346   ; 4 uses
  %i.cj = and i32 %.031838, 1
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ck
  %.0307.in = select i1 %i.q, ptr %i.r, ptr %i.cl
  %.0307 = load ptr, ptr %.0307.in, align 8, !tbaa !67 ; 11 uses
  %i.cm = load ptr, ptr %9, align 8, !tbaa !58    ; 5 uses
  %.not347 = icmp ult ptr %i.cm, %10
  br i1 %.not347, label %bb.g, label %.thread12

bb.g:                                             ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 5 uses
  store ptr %i.cn, ptr %9, align 8, !tbaa !58
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !36  ; 5 uses
  %i.cp = zext i8 %i.co to i32                    ; 4 uses
  %i.cq = icmp ult i8 %i.co, -8
  br i1 %i.cq, label %bb.h, label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %.0307, i64 16
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !108 ; 3 uses
  %i.ct = icmp ult i8 %i.co, %i.cs
  br i1 %i.ct, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not354 = icmp ult ptr %i.cn, %10
  br i1 %.not354, label %bb.j, label %.thread12

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store ptr %i.cu, ptr %9, align 8, !tbaa !58
  %i.cv = load i8, ptr %i.cn, align 1, !tbaa !36  ; 3 uses
  %i.cw = zext i8 %i.cv to i32
  %i.cx = icmp uge i8 %i.cv, %i.cs
  %i.cy = icmp ugt i8 %i.cv, -9
  %or.cond4 = or i1 %i.cx, %i.cy
  br i1 %or.cond4, label %.thread12, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cz = sub nuw i8 %i.co, %i.cs                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0307, i64 17
  %i.db = load i8, ptr %i.da, align 1, !tbaa !109 ; 2 uses
  %i.dc = udiv i8 %i.cz, %i.db
  %.zext = zext i8 %i.dc to i32                   ; 2 uses
  %i.dd = urem i8 %i.cz, %i.db
  %.zext21 = zext i8 %i.dd to i32                 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ck
  %i.df = load i32, ptr %i.de, align 4, !tbaa !41
  %.not353 = icmp eq i32 %i.df, 0                 ; 2 uses
  %spec.select361 = select i1 %.not353, i32 %.zext, i32 %.zext21
  %spec.select362 = select i1 %.not353, i32 %.zext21, i32 %.zext
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0306 = phi i32 [ %i.cw, %bb.j ], [ %spec.select361, %bb.k ] ; 5 uses
  %.0305 = phi i32 [ %i.cp, %bb.j ], [ %spec.select362, %bb.k ] ; 5 uses
  br i1 %i.q, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i16, ptr %.029341, align 1, !tbaa !36
  %i.dh = load ptr, ptr %.0307, align 8, !tbaa !110
  %i.di = zext nneg i32 %.0306 to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !55
  %i.dl = add i16 %i.dk, %i.dg
  %i.dm = and i16 %i.dl, 32639
  %i.dn = getelementptr inbounds i8, ptr %.029142, i64 %i.j ; 2 uses
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !36
  %i.do = getelementptr inbounds nuw i8, ptr %.029341, i64 2
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !36
  %i.dq = load ptr, ptr %.0307, align 8, !tbaa !110
  %i.dr = zext nneg i32 %.0305 to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !55
  %i.du = add i16 %i.dt, %i.dp
  %i.dv = and i16 %i.du, 32639
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !36
  br i1 %i.v, label %bb.n, label %.thread2

bb.n:                                             ; preds = %bb.m
  br i1 %spec.select.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = load i16, ptr %i.w, align 2, !tbaa !53
  %.not357 = icmp eq i16 %i.dx, 0
  br i1 %.not357, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds i8, ptr %.029142, i64 %3
  %i.dz = load i32, ptr %i.dy, align 1, !tbaa !36
  store i32 %i.dz, ptr %.029142, align 1, !tbaa !36
  br label %.thread2

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ea = load i32, ptr %.029341, align 1, !tbaa !36
  %i.eb = getelementptr inbounds i8, ptr %.029142, i64 %3
  %i.ec = load i32, ptr %i.eb, align 1, !tbaa !36
  %i.ed = add i32 %i.ec, %i.ea
  %i.ee = lshr i32 %i.ed, 1
  %i.ef = and i32 %i.ee, 2139062143
  store i32 %i.ef, ptr %.029142, align 4, !tbaa !36
  br label %.thread2

bb.r:                                             ; preds = %bb.l
  br i1 %i.u, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.eg = load ptr, ptr %i.s, align 8, !tbaa !57
  %.not355 = icmp eq ptr %i.eg, null
  br i1 %.not355, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.eh = load i32, ptr %.029341, align 1, !tbaa !36 ; 2 uses
  br i1 %spec.select.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %.0307, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !111
  %i.ek = zext nneg i32 %.0306 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !41
  %i.en = add i32 %i.em, %i.eh
  %i.eo = and i32 %i.en, 2139062143
  %i.ep = getelementptr inbounds i8, ptr %.029142, i64 %3 ; 2 uses
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !36
  %i.eq = getelementptr inbounds nuw i8, ptr %.029341, i64 4
  %i.er = load i32, ptr %i.eq, align 1, !tbaa !36
  %i.es = load ptr, ptr %i.ei, align 8, !tbaa !111
  %i.et = zext nneg i32 %.0305 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !41
  %i.ew = add i32 %i.ev, %i.er
  %i.ex = and i32 %i.ew, 2139062143
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !36
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ez = and i32 %i.eh, 16711935
  %i.fa = mul nuw i32 %i.ez, 257
  %i.fb = getelementptr inbounds nuw i8, ptr %.0307, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !111
  %i.fd = zext nneg i32 %.0306 to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  %i.fg = add i32 %i.fa, %i.ff
  %i.fh = and i32 %i.fg, 2139062143
  %i.fi = getelementptr inbounds i8, ptr %.029142, i64 %3 ; 3 uses
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !36
  %i.fj = getelementptr inbounds nuw i8, ptr %.029341, i64 4
  %i.fk = load i32, ptr %i.fj, align 1, !tbaa !36
  %i.fl = and i32 %i.fk, 16711935
  %i.fm = mul nuw i32 %i.fl, 257
  %i.fn = load ptr, ptr %i.fb, align 8, !tbaa !111
  %i.fo = zext nneg i32 %.0305 to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !41
  %i.fr = add i32 %i.fm, %i.fq
  %i.fs = and i32 %i.fr, 2139062143
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !36
  %i.fu = load i16, ptr %i.w, align 2, !tbaa !53
  %.not356 = icmp eq i16 %i.fu, 0
  br i1 %.not356, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fv = load i64, ptr %i.fi, align 4, !tbaa !36
  store i64 %i.fv, ptr %.029142, align 1, !tbaa !36
  br label %.thread2

bb.x:                                             ; preds = %bb.u, %bb.v
  %i.fw = load i64, ptr %.029341, align 1, !tbaa !36
  %i.fx = getelementptr inbounds i8, ptr %.029142, i64 %3
  %i.fy = load i64, ptr %i.fx, align 1, !tbaa !36
  %i.fz = add i64 %i.fy, %i.fw
  %i.ga = lshr i64 %i.fz, 1
  %i.gb = and i64 %i.ga, 9187201950435737471
  store i64 %i.gb, ptr %.029142, align 8, !tbaa !36
  br label %.thread2

bb.y:                                             ; preds = %bb.s
  %i.gc = load i32, ptr %.029142, align 1, !tbaa !36
  %i.gd = getelementptr inbounds nuw i8, ptr %.0307, i64 8 ; 4 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !111
  %i.gf = zext nneg i32 %.0306 to i64             ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !41
  %i.gi = add i32 %i.gh, %i.gc
  %i.gj = and i32 %i.gi, 2139062143
end_hunk_0
