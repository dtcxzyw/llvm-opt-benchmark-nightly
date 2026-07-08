loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@fpAcc:bb.a
  %i.db = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dc = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cx, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dd = shufflevector <16 x i8> %i.cz, <16 x i8> %i.da, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.de = shufflevector <16 x i8> %i.cz, <16 x i8> %i.da, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.df = bitcast <16 x i8> %i.db to <8 x i16>    ; 2 uses
  %i.dg = bitcast <16 x i8> %i.dd to <8 x i16>    ; 2 uses
  %i.dh = shufflevector <8 x i16> %i.df, <8 x i16> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.di = shufflevector <8 x i16> %i.df, <8 x i16> %i.dg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dj = bitcast <16 x i8> %i.dc to <8 x i16>    ; 2 uses
  %i.dk = bitcast <16 x i8> %i.de to <8 x i16>    ; 2 uses
  %i.dl = shufflevector <8 x i16> %i.dj, <8 x i16> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dm = shufflevector <8 x i16> %i.dj, <8 x i16> %i.dk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dn = shl nsw i64 %.3205, 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %i.dn ; 4 uses
  store <8 x i16> %i.dh, ptr %i.do, align 1, !tbaa !64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <8 x i16> %i.di, ptr %i.dp, align 1, !tbaa !64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store <8 x i16> %i.dl, ptr %i.dq, align 1, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store <8 x i16> %i.dm, ptr %i.dr, align 1, !tbaa !64
  %i.ds = add nuw nsw i64 %.3205, 16              ; 3 uses
  %i.dt = or disjoint i64 %i.ds, 15
  %i.du = icmp slt i64 %i.dt, %i.j
  br i1 %i.du, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit187
  %.4 = phi i64 [ 0, %.loopexit187 ], [ %i.ds, %bb.j ] ; 2 uses
  %i.dv = icmp slt i64 %.4, %i.j
  %i.dw = icmp ne i16 %i.g, 0
  %or.cond212 = and i1 %i.dv, %i.dw
  br i1 %or.cond212, label %.preheader.preheader, label %._crit_edge211.split

.preheader.preheader:                             ; preds = %.loopexit
  %xtraiter253 = and i64 %i.i, 1
  %i.dx = icmp eq i16 %i.g, 1
  %unroll_iter = and i64 %i.i, 8190
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  %lcmp.mod255 = trunc i16 %i.g to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.5210 = phi i64 [ %i.et, %._crit_edge ], [ %.4, %.preheader.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %.5210 ; 3 uses
  %i.dy = mul nuw nsw i64 %.5210, %i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %i.dy ; 3 uses
  br i1 %i.dx, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ea = xor i64 %indvars.iv, -1
  %i.eb = add nsw i64 %i.ea, %i.h
  %i.ec = and i64 %i.eb, 4294967295
  %i.ed = mul nsw i64 %i.j, %i.ec
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ed
  %i.ee = load i8, ptr %gep, align 1, !tbaa !64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !64
  %i.eg = xor i64 %indvars.iv, 4294967294
  %i.eh = add nuw i64 %i.eg, %i.h
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = mul nsw i64 %i.j, %i.ei
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ej
  %i.ek = load i8, ptr %gep.1, align 1, !tbaa !64
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod254.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod255)
  %i.en = xor i64 %indvars.iv.epil.init, -1
  %i.eo = add nsw i64 %i.en, %i.h
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = mul nsw i64 %i.j, %i.ep
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.eq
  %i.er = load i8, ptr %gep.epil, align 1, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.epil.init
  store i8 %i.er, ptr %i.es, align 1, !tbaa !64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.et = add nuw nsw i64 %.5210, 1               ; 2 uses
  %exitcond218.not = icmp eq i64 %i.et, %i.j
  br i1 %exitcond218.not, label %._crit_edge211.split, label %.preheader

._crit_edge211.split:                             ; preds = %._crit_edge, %.loopexit
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %._crit_edge211.split, %bb.b
  %.0157 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge211.split ], [ 0, %bb.c ]
  ret i32 %.0157
}

declare i64 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #1

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfLong8(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_TIFFmallocExt(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @horDiff8(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62   ; 20 uses
  %i.e = srem i64 %2, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %2, %i.d
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = sub nsw i64 %2, %i.d                     ; 5 uses
  switch i64 %i.d, label %bb.i [
    i64 3, label %bb.e
    i64 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %1, align 1, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0107 = phi i8 [ %i.h, %bb.e ], [ %i.n, %bb.f ]
  %.0106 = phi i8 [ %i.j, %bb.e ], [ %i.q, %bb.f ]
  %.0105 = phi i8 [ %i.l, %bb.e ], [ %i.t, %bb.f ]
  %.0102 = phi ptr [ %1, %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %.0101 = phi i64 [ %i.g, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0102, i64 3 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !64    ; 2 uses
  %i.o = sub i8 %i.n, %.0107
  store i8 %i.o, ptr %i.m, align 1, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %.0102, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64    ; 2 uses
  %i.r = sub i8 %i.q, %.0106
  store i8 %i.r, ptr %i.p, align 1, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %.0102, i64 5 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !64    ; 2 uses
  %i.u = sub i8 %i.t, %.0105
  store i8 %i.u, ptr %i.s, align 1, !tbaa !64
  %i.v = add nsw i64 %.0101, -3
  %i.w = icmp sgt i64 %.0101, 3
  br i1 %i.w, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.x = load <4 x i8>, ptr %1, align 1, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1103 = phi ptr [ %1, %bb.g ], [ %i.z, %bb.h ]
  %.1 = phi i64 [ %i.g, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %i.y = phi <4 x i8> [ %i.x, %bb.g ], [ %i.aa, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %.1103, i64 4 ; 3 uses
  %i.aa = load <4 x i8>, ptr %i.z, align 1, !tbaa !64 ; 2 uses
  %i.ab = sub <4 x i8> %i.aa, %i.y
  store <4 x i8> %i.ab, ptr %i.z, align 1, !tbaa !64
  %i.ac = add nsw i64 %.1, -4
  %i.ad = icmp sgt i64 %.1, 4
  br i1 %i.ad, label %bb.h, label %.loopexit

bb.i:                                             ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %1, i64 %i.g
  %i.af = getelementptr i8, ptr %i.ae, i64 -1     ; 2 uses
  %i.ag = add i64 %i.d, -4                        ; 10 uses
  %i.ah = icmp sgt i64 %i.d, 4
  br i1 %i.ah, label %iter.check.preheader, label %.split

iter.check.preheader:                             ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.ag, 8
  %min.iters.check131 = icmp ult i64 %i.ag, 16
  %n.mod.vf = and i64 %i.ag, 8
  %n.vec = and i64 %i.ag, -16                     ; 4 uses
  %i.ai = sub i64 0, %n.vec
  %i.aj = and i64 %i.ag, 15
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  %n.vec137 = and i64 %i.ag, -8                   ; 3 uses
  %i.ak = sub i64 0, %n.vec137
  %i.al = and i64 %i.ag, 7
  %cmp.n147 = icmp eq i64 %i.ag, %n.vec137
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit150
  %.2104.us = phi ptr [ %i.bp, %.loopexit150 ], [ %i.af, %iter.check.preheader ] ; 5 uses
  %.2.us = phi i64 [ %i.bq, %.loopexit150 ], [ %i.g, %iter.check.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = getelementptr i8, ptr %.2104.us, i64 %i.ai ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = sub i64 0, %index
  %next.gep.a = getelementptr i8, ptr %.2104.us, i64 %i.an ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep.a, i64 %i.d
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -15 ; 2 uses
  %wide.load.a = load <16 x i8>, ptr %i.ap, align 1, !tbaa !64
  %i.aq = getelementptr i8, ptr %next.gep.a, i64 -15
  %wide.load132 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !64
  %i.ar = sub <16 x i8> %wide.load.a, %wide.load132
  store <16 x i8> %i.ar, ptr %i.ap, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.am, i64 1
  br i1 %cmp.n, label %.loopexit150, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.at = getelementptr i8, ptr %.2104.us, i64 %i.ak ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.au = sub i64 0, %index138
  %next.gep139 = getelementptr i8, ptr %.2104.us, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep139, i64 %i.d
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -7 ; 2 uses
  %wide.load140 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !64
  %i.ax = getelementptr i8, ptr %next.gep139, i64 -7
  %wide.load142 = load <8 x i8>, ptr %i.ax, align 1, !tbaa !64
  %i.ay = sub <8 x i8> %wide.load140, %wide.load142
  store <8 x i8> %i.ay, ptr %i.aw, align 1, !tbaa !64
  %index.next145 = add nuw i64 %index138, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next145, %n.vec137
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape146 = getelementptr i8, ptr %i.at, i64 1
  br i1 %cmp.n147, label %.loopexit150, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0118.us.ph = phi i64 [ %i.ag, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.3117.us.ph = phi ptr [ %.2104.us, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.loopexit150:                                     ; preds = %.lr.ph.us, %vec.epilog.middle.block, %middle.block
  %.3117.us.lcssa = phi ptr [ %ind.escape146, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.3117.us, %.lr.ph.us ] ; 4 uses
  %.lcssa = phi ptr [ %i.at, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %i.bv, %.lr.ph.us ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.d ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  %i.bc = load i8, ptr %.lcssa, align 1, !tbaa !64
  %.narrow.us = sub i8 %i.bb, %i.bc
  store i8 %.narrow.us, ptr %i.ba, align 1, !tbaa !64
  %i.bd = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.d ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !64
  %.narrow111.us = sub i8 %i.bf, %i.bg
  store i8 %.narrow111.us, ptr %i.be, align 1, !tbaa !64
  %i.bh = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -3 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.d ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !64
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !64
  %.narrow112.us = sub i8 %i.bj, %i.bk
  store i8 %.narrow112.us, ptr %i.bi, align 1, !tbaa !64
  %i.bl = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.d ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !64
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !64
  %.narrow113.us = sub i8 %i.bn, %i.bo
  store i8 %.narrow113.us, ptr %i.bm, align 1, !tbaa !64
  %i.bp = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -5
  %i.bq = sub nsw i64 %.2.us, %i.d                ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %iter.check, label %.loopexit

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.0118.us = phi i64 [ %i.bw, %.lr.ph.us ], [ %.0118.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %.3117.us = phi ptr [ %i.bv, %.lr.ph.us ], [ %.3117.us.ph, %.lr.ph.us.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.3117.us, i64 %i.d ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !64
  %i.bu = load i8, ptr %.3117.us, align 1, !tbaa !64
  %.narrow114.us = sub i8 %i.bt, %i.bu
  store i8 %.narrow114.us, ptr %i.bs, align 1, !tbaa !64
  %i.bv = getelementptr inbounds i8, ptr %.3117.us, i64 -1 ; 2 uses
  %i.bw = add nsw i64 %.0118.us, -1
  %i.bx = icmp sgt i64 %.0118.us, 1
  br i1 %i.bx, label %.lr.ph.us, label %.loopexit150, !llvm.loop !89

.split:                                           ; preds = %bb.i, %bb.m
  %.2104 = phi ptr [ %.8, %bb.m ], [ %i.af, %bb.i ] ; 7 uses
  %.2 = phi i64 [ %i.co, %bb.m ], [ %i.g, %bb.i ]
  switch i64 %i.d, label %bb.j [
    i64 0, label %bb.m
    i64 1, label %bb.l
    i64 2, label %bb.k
  ]

bb.j:                                             ; preds = %.split
  %i.by = getelementptr inbounds i8, ptr %.2104, i64 %i.d ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64
  %i.ca = load i8, ptr %.2104, align 1, !tbaa !64
  %.narrow = sub i8 %i.bz, %i.ca
  store i8 %.narrow, ptr %i.by, align 1, !tbaa !64
  %i.cb = getelementptr inbounds i8, ptr %.2104, i64 -1 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.d ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !64
  %i.ce = load i8, ptr %i.cb, align 1, !tbaa !64
  %.narrow111 = sub i8 %i.cd, %i.ce
  store i8 %.narrow111, ptr %i.cc, align 1, !tbaa !64
  %i.cf = getelementptr inbounds i8, ptr %.2104, i64 -2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split
  %.6 = phi ptr [ %i.cf, %bb.j ], [ %.2104, %.split ] ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.6, i64 %i.d ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = load i8, ptr %.6, align 1, !tbaa !64
  %.narrow112 = sub i8 %i.ch, %i.ci
  store i8 %.narrow112, ptr %i.cg, align 1, !tbaa !64
  %i.cj = getelementptr inbounds i8, ptr %.6, i64 -1
  br label %bb.l

bb.l:                                             ; preds = %.split, %bb.k
  %.7 = phi ptr [ %i.cj, %bb.k ], [ %.2104, %.split ] ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.7, i64 %i.d ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !64
  %i.cm = load i8, ptr %.7, align 1, !tbaa !64
  %.narrow113 = sub i8 %i.cl, %i.cm
  store i8 %.narrow113, ptr %i.ck, align 1, !tbaa !64
  %i.cn = getelementptr inbounds i8, ptr %.7, i64 -1
  br label %bb.m

bb.m:                                             ; preds = %.split, %bb.l
  %.8 = phi ptr [ %i.cn, %bb.l ], [ %.2104, %.split ]
  %i.co = sub nsw i64 %.2, %i.d                   ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.split, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.m, %.loopexit150, %bb.c, %bb.b
  %.0100 = phi i32 [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %.loopexit150 ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.h ]
  ret i32 %.0100
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @horDiff16(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %.fr63 = freeze i64 %i.d                        ; 19 uses
  %i.e = sdiv i64 %2, 2                           ; 2 uses
  %i.f = shl nsw i64 %.fr63, 1
  %i.g = srem i64 %2, %i.f
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26) #10
  br label %.loopexit60

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i64 %i.e, %.fr63
  br i1 %i.h, label %bb.d, label %.loopexit60

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i64 %i.e, %.fr63                 ; 3 uses
  %i.j = getelementptr [2 x i8], ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -2       ; 2 uses
  %i.l = add i64 %.fr63, -4                       ; 9 uses
  %i.m = icmp sgt i64 %.fr63, 4
  br i1 %i.m, label %iter.check.preheader, label %.split

iter.check.preheader:                             ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.l, 4
  %min.iters.check69 = icmp ult i64 %i.l, 16
  %n.mod.vf = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 4 uses
  %i.n = and i64 %i.l, 15
  %i.o = mul i64 %n.vec, -2
  %cmp.n = icmp eq i64 %i.l, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec80 = and i64 %i.l, -4                     ; 3 uses
  %i.p = and i64 %.fr63, 3
  %i.q = mul i64 %n.vec80, -2
  %cmp.n90 = icmp eq i64 %i.l, %n.vec80
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit93
  %.051.us = phi ptr [ %i.au, %.loopexit93 ], [ %i.k, %iter.check.preheader ] ; 5 uses
  %.050.us = phi i64 [ %i.av, %.loopexit93 ], [ %i.i, %iter.check.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = getelementptr i8, ptr %.051.us, i64 %i.o ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %.051.us, i64 %i.s ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %.fr63 ; 2 uses
end_hunk_0
begin_hunk_1_@PredictorEncodeTile:bb.a
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.03438 = phi ptr [ %i.c, %.lr.ph ], [ %i.m, %bb.e ] ; 2 uses
  %.03537 = phi i64 [ %2, %.lr.ph ], [ %i.l, %bb.e ]
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef %.03438, i64 noundef %i.f) #10 ; 0 uses
  %i.l = sub nsw i64 %.03537, %i.f                ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.03438, i64 %i.f
  %i.n = icmp sgt i64 %i.l, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2, i16 noundef zeroext %3) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.q, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff16(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff16(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 2
  tail call void @TIFFSwabArrayOfShort(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff32(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff32(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 4
  tail call void @TIFFSwabArrayOfLong(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff64(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 8
  tail call void @TIFFSwabArrayOfLong8(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fpDiff(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %.fr100 = freeze i64 %i.d                       ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.f = load i16, ptr %i.e, align 4, !tbaa !81
  %i.g = lshr i16 %i.f, 3                         ; 6 uses
  %i.h = zext nneg i16 %i.g to i64                ; 3 uses
  %i.i = zext nneg i16 %i.g to i64                ; 3 uses
  %i.j = sdiv i64 %2, %i.i                        ; 5 uses
  %i.k = mul nsw i64 %.fr100, %i.i
  %i.l = srem i64 %2, %i.k
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.35) #10
  br label %.loopexit89

bb.c:                                             ; preds = %bb.a
  %i.m = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %2) #10 ; 4 uses
  %.not84 = icmp eq ptr %i.m, null
  br i1 %.not84, label %.loopexit89, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.m, ptr noundef %1, i64 noundef %2) #10
  %i.n = icmp sgt i64 %i.j, 0
  %i.o = icmp ne i16 %i.g, 0
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge92.split

.preheader.preheader:                             ; preds = %bb.d
  %wide.trip.count = zext nneg i16 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i16 %i.g, 1
  %unroll_iter = and i64 %wide.trip.count, 8190
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod134 = trunc i16 %i.g to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07891 = phi i64 [ %i.al, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %.07891 ; 3 uses
  %i.q = mul nuw nsw i64 %.07891, %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  br i1 %i.p, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !64
  %i.u = xor i64 %indvars.iv, -1
  %i.v = add nsw i64 %i.u, %i.h
  %i.w = and i64 %i.v, 4294967295
  %i.x = mul nuw nsw i64 %i.j, %i.w
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.x
  store i8 %i.t, ptr %gep, align 1, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !64
  %i.ab = xor i64 %indvars.iv, 4294967294
  %i.ac = add nuw i64 %i.ab, %i.h
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = mul nuw nsw i64 %i.j, %i.ad
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ae
  store i8 %i.aa, ptr %gep.1, align 1, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.epil.init
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !64
  %i.ah = xor i64 %indvars.iv.epil.init, -1
  %i.ai = add nsw i64 %i.ah, %i.h
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = mul nuw nsw i64 %i.j, %i.aj
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.ak
  store i8 %i.ag, ptr %gep.epil, align 1, !tbaa !64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.al = add nuw nsw i64 %.07891, 1              ; 2 uses
  %exitcond103.not = icmp eq i64 %i.al, %i.j
  br i1 %exitcond103.not, label %._crit_edge92.split, label %.preheader

._crit_edge92.split:                              ; preds = %._crit_edge, %bb.d
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #10
  %i.am = icmp sgt i64 %2, %.fr100
  br i1 %i.am, label %.lr.ph99, label %.loopexit89

.lr.ph99:                                         ; preds = %._crit_edge92.split
  %i.an = getelementptr i8, ptr %1, i64 %2
  %i.ao = xor i64 %.fr100, -1
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao  ; 2 uses
  %i.aq = add i64 %.fr100, -4                     ; 10 uses
  %i.ar = icmp sgt i64 %.fr100, 4
  br i1 %i.ar, label %iter.check.preheader, label %.lr.ph99.split

iter.check.preheader:                             ; preds = %.lr.ph99
  %min.iters.check = icmp ult i64 %i.aq, 8
  %min.iters.check111 = icmp ult i64 %i.aq, 16
  %n.mod.vf = and i64 %i.aq, 8
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.as = sub i64 0, %n.vec
  %i.at = and i64 %i.aq, 15
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  %n.vec117 = and i64 %i.aq, -8                   ; 3 uses
  %i.au = sub i64 0, %n.vec117
  %i.av = and i64 %i.aq, 7
  %cmp.n127 = icmp eq i64 %i.aq, %n.vec117
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit130
  %.07797.us = phi ptr [ %i.bz, %.loopexit130 ], [ %i.ap, %iter.check.preheader ] ; 5 uses
  %.17996.us = phi i64 [ %i.ca, %.loopexit130 ], [ %2, %iter.check.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = getelementptr i8, ptr %.07797.us, i64 %i.as ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = sub i64 0, %index
  %next.gep.a = getelementptr i8, ptr %.07797.us, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep.a, i64 %.fr100
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -15 ; 2 uses
  %wide.load.a = load <16 x i8>, ptr %i.az, align 1, !tbaa !64
  %i.ba = getelementptr i8, ptr %next.gep.a, i64 -15
  %wide.load112 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !64
  %i.bb = sub <16 x i8> %wide.load.a, %wide.load112
  store <16 x i8> %i.bb, ptr %i.az, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.aw, i64 1
  br i1 %cmp.n, label %.loopexit130, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bd = getelementptr i8, ptr %.07797.us, i64 %i.au ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.be = sub i64 0, %index118
  %next.gep119 = getelementptr i8, ptr %.07797.us, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %next.gep119, i64 %.fr100
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -7 ; 2 uses
  %wide.load120 = load <8 x i8>, ptr %i.bg, align 1, !tbaa !64
  %i.bh = getelementptr i8, ptr %next.gep119, i64 -7
  %wide.load122 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !64
  %i.bi = sub <8 x i8> %wide.load120, %wide.load122
  store <8 x i8> %i.bi, ptr %i.bg, align 1, !tbaa !64
  %index.next125 = add nuw i64 %index118, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next125, %n.vec117
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape126 = getelementptr i8, ptr %i.bd, i64 1
  br i1 %cmp.n127, label %.loopexit130, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.094.us.ph = phi i64 [ %i.aq, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.193.us.ph = phi ptr [ %.07797.us, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.loopexit130:                                     ; preds = %.lr.ph.us, %vec.epilog.middle.block, %middle.block
  %.193.us.lcssa = phi ptr [ %ind.escape126, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.193.us, %.lr.ph.us ] ; 4 uses
  %.lcssa = phi ptr [ %i.bd, %vec.epilog.middle.block ], [ %i.aw, %middle.block ], [ %i.cf, %.lr.ph.us ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.fr100 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !64
  %i.bm = load i8, ptr %.lcssa, align 1, !tbaa !64
  %.narrow.us = sub i8 %i.bl, %i.bm
  store i8 %.narrow.us, ptr %i.bk, align 1, !tbaa !64
  %i.bn = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.fr100 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !64
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !64
  %.narrow85.us = sub i8 %i.bp, %i.bq
  store i8 %.narrow85.us, ptr %i.bo, align 1, !tbaa !64
  %i.br = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -3 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.fr100 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !64
  %i.bu = load i8, ptr %i.br, align 1, !tbaa !64
  %.narrow86.us = sub i8 %i.bt, %i.bu
  store i8 %.narrow86.us, ptr %i.bs, align 1, !tbaa !64
  %i.bv = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.fr100 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !64
  %.narrow87.us = sub i8 %i.bx, %i.by
  store i8 %.narrow87.us, ptr %i.bw, align 1, !tbaa !64
  %i.bz = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -5
  %i.ca = sub nsw i64 %.17996.us, %.fr100         ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, %.fr100
  br i1 %i.cb, label %iter.check, label %.loopexit89

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.094.us = phi i64 [ %i.cg, %.lr.ph.us ], [ %.094.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %.193.us = phi ptr [ %i.cf, %.lr.ph.us ], [ %.193.us.ph, %.lr.ph.us.preheader ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.193.us, i64 %.fr100 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !64
  %i.ce = load i8, ptr %.193.us, align 1, !tbaa !64
  %.narrow88.us = sub i8 %i.cd, %i.ce
  store i8 %.narrow88.us, ptr %i.cc, align 1, !tbaa !64
  %i.cf = getelementptr inbounds i8, ptr %.193.us, i64 -1 ; 2 uses
  %i.cg = add nsw i64 %.094.us, -1
  %i.ch = icmp sgt i64 %.094.us, 1
  br i1 %i.ch, label %.lr.ph.us, label %.loopexit130, !llvm.loop !97

.lr.ph99.split:                                   ; preds = %.lr.ph99, %bb.h
  %.07797 = phi ptr [ %.6, %bb.h ], [ %i.ap, %.lr.ph99 ] ; 7 uses
  %.17996 = phi i64 [ %i.cy, %bb.h ], [ %2, %.lr.ph99 ]
  switch i64 %.fr100, label %.loopexit [
    i64 0, label %bb.h
    i64 3, label %bb.e
    i64 2, label %bb.f
    i64 1, label %bb.g
  ]

.loopexit:                                        ; preds = %.lr.ph99.split
  %i.ci = getelementptr inbounds i8, ptr %.07797, i64 %.fr100 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = load i8, ptr %.07797, align 1, !tbaa !64
  %.narrow = sub i8 %i.cj, %i.ck
  store i8 %.narrow, ptr %i.ci, align 1, !tbaa !64
  %i.cl = getelementptr inbounds i8, ptr %.07797, i64 -1
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.lr.ph99.split
  %.3 = phi ptr [ %i.cl, %.loopexit ], [ %.07797, %.lr.ph99.split ] ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.3, i64 %.fr100 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !64
  %i.co = load i8, ptr %.3, align 1, !tbaa !64
  %.narrow85 = sub i8 %i.cn, %i.co
  store i8 %.narrow85, ptr %i.cm, align 1, !tbaa !64
  %i.cp = getelementptr inbounds i8, ptr %.3, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph99.split
  %.4 = phi ptr [ %i.cp, %bb.e ], [ %.07797, %.lr.ph99.split ] ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.4, i64 %.fr100 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !64
  %i.cs = load i8, ptr %.4, align 1, !tbaa !64
  %.narrow86 = sub i8 %i.cr, %i.cs
  store i8 %.narrow86, ptr %i.cq, align 1, !tbaa !64
  %i.ct = getelementptr inbounds i8, ptr %.4, i64 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph99.split
  %.5 = phi ptr [ %i.ct, %bb.f ], [ %.07797, %.lr.ph99.split ] ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.5, i64 %.fr100 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !64
  %i.cw = load i8, ptr %.5, align 1, !tbaa !64
  %.narrow87 = sub i8 %i.cv, %i.cw
  store i8 %.narrow87, ptr %i.cu, align 1, !tbaa !64
  %i.cx = getelementptr inbounds i8, ptr %.5, i64 -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph99.split, %bb.g
  %.6 = phi ptr [ %i.cx, %bb.g ], [ %.07797, %.lr.ph99.split ]
  %i.cy = sub nsw i64 %.17996, %.fr100            ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, %.fr100
  br i1 %i.cz, label %.lr.ph99.split, label %.loopexit89

.loopexit89:                                      ; preds = %bb.h, %.loopexit130, %._crit_edge92.split, %bb.c, %bb.b
  %.076 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %._crit_edge92.split ], [ 1, %.loopexit130 ], [ 1, %bb.h ]
  ret i32 %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 1072}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!10, !10, i64 0}
!28 = !{!8, !10, i64 1264}
!29 = !{!8, !10, i64 1256}
!30 = !{!8, !10, i64 1272}
!31 = !{!32, !10, i64 104}
!32 = !{!"", !4, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!33 = !{!8, !10, i64 936}
!34 = !{!32, !10, i64 112}
!35 = !{!8, !10, i64 952}
!36 = !{!32, !10, i64 120}
!37 = !{!32, !4, i64 0}
!38 = !{!32, !10, i64 48}
!39 = !{!32, !10, i64 80}
!40 = !{!17, !17, i64 0}
!41 = !{!14, !14, i64 0}
!42 = !{!32, !10, i64 88}
!43 = !{!8, !4, i64 16}
!44 = !{!32, !10, i64 96}
!45 = !{!13, !14, i64 44}
!46 = !{!8, !10, i64 984}
!47 = !{!32, !10, i64 56}
!48 = !{!8, !10, i64 1000}
!49 = !{!32, !10, i64 64}
!50 = !{!8, !10, i64 1016}
!51 = !{!32, !10, i64 72}
!52 = !{!8, !10, i64 1224}
!53 = !{!8, !10, i64 992}
!54 = !{!32, !10, i64 24}
!55 = !{!8, !10, i64 1008}
!56 = !{!32, !10, i64 32}
!57 = !{!8, !10, i64 1024}
!58 = !{!32, !10, i64 40}
!59 = !{!13, !14, i64 46}
!60 = !{!13, !14, i64 98}
!61 = !{!13, !14, i64 58}
!62 = !{!32, !11, i64 8}
!63 = !{!32, !11, i64 16}
!64 = !{!5, !5, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 28}
!71 = distinct !{!71, !68, !69}
!72 = distinct !{!72, !69, !68}
!73 = distinct !{!73, !66}
!74 = distinct !{!74, !68, !69}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = distinct !{!76, !68, !69}
!77 = distinct !{!77, !69, !68}
!78 = distinct !{!78, !68, !69}
!79 = !{!11, !11, i64 0}
!80 = distinct !{!80, !68, !69}
!81 = !{!8, !14, i64 116}
!82 = distinct !{!82, !66}
!83 = distinct !{!83, !68, !69}
!84 = distinct !{!84, !68, !69}
!85 = distinct !{!85, !69, !68}
!86 = distinct !{!86, !68, !69}
!87 = !{!"branch_weights", i32 8, i32 8}
!88 = distinct !{!88, !68, !69}
!89 = distinct !{!89, !69, !68}
!90 = distinct !{!90, !68, !69}
!91 = distinct !{!91, !68, !69}
!92 = distinct !{!92, !69, !68}
!93 = distinct !{!93, !68, !69}
!94 = distinct !{!94, !68, !69}
!95 = distinct !{!95, !68, !69}
!96 = distinct !{!96, !68, !69}
!97 = distinct !{!97, !69, !68}
end_hunk_1
