begin_hunk_0_@fpAcc:bb.a
  %.narrow175 = add i8 %i.bt, %i.bs
  store i8 %.narrow175, ptr %i.br, align 1, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %.3162193, i64 1 ; 2 uses
  %i.bv = add nsw i64 %.0165192, -1
  %i.bw = icmp samesign ugt i64 %.0165192, 1
  br i1 %i.bw, label %.lr.ph, label %.loopexit189, !llvm.loop !85

.loopexit189:                                     ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.e
  %.4163 = phi ptr [ %.2161194, %bb.e ], [ %.2161194, %bb.f ], [ %i.bn, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.bu, %.lr.ph ] ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.4163, i64 %i.d ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = load i8, ptr %.4163, align 1, !tbaa !64
  %.narrow = add i8 %i.bz, %i.by
  store i8 %.narrow, ptr %i.bx, align 1, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %.4163, i64 1
  br label %bb.g

bb.g:                                             ; preds = %.loopexit189, %bb.e
  %.5164 = phi ptr [ %i.ca, %.loopexit189 ], [ %.2161194, %bb.e ] ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.5164, i64 %i.d ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = load i8, ptr %.5164, align 1, !tbaa !64
  %.narrow172 = add i8 %i.cd, %i.cc
  store i8 %.narrow172, ptr %i.cb, align 1, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %.5164, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.6 = phi ptr [ %i.ce, %bb.g ], [ %.2161194, %bb.e ] ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %.6, i64 %i.d ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = load i8, ptr %.6, align 1, !tbaa !64
  %.narrow173 = add i8 %i.ch, %i.cg
  store i8 %.narrow173, ptr %i.cf, align 1, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.d ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = load i8, ptr %i.ci, align 1, !tbaa !64
  %.narrow174 = add i8 %i.cl, %i.ck
  store i8 %.narrow174, ptr %i.cj, align 1, !tbaa !64
  %i.cm = getelementptr inbounds nuw i8, ptr %.6, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.8 = phi ptr [ %i.cm, %bb.h ], [ %.2161194, %bb.e ]
  %i.cn = sub nsw i64 %.2195, %i.d                ; 2 uses
  %i.co = icmp sgt i64 %i.cn, %i.d
  br i1 %i.co, label %bb.e, label %.loopexit187

.loopexit187:                                     ; preds = %bb.i, %.lr.ph204.prol.loopexit, %.lr.ph204, %.preheader190, %.preheader186
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.m, ptr noundef %1, i64 noundef %2) #10
  %i.cp = icmp eq i16 %i.g, 4
  %i.cq = icmp sgt i64 %i.j, 15
  %or.cond = and i1 %i.cp, %i.cq
  br i1 %or.cond, label %.lr.ph206, label %.loopexit

.lr.ph206:                                        ; preds = %.loopexit187
  %i.cr = mul nuw nsw i64 %i.j, 3
  %i.cs = shl nuw nsw i64 %i.j, 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph206, %bb.j
  %.3205 = phi i64 [ 0, %.lr.ph206 ], [ %i.ds, %bb.j ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 %.3205 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  %i.cv = load <16 x i8>, ptr %i.cu, align 1, !tbaa !64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  %i.cx = load <16 x i8>, ptr %i.cw, align 1, !tbaa !64 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.j
  %i.cz = load <16 x i8>, ptr %i.cy, align 1, !tbaa !64 ; 2 uses
  %i.da = load <16 x i8>, ptr %i.ct, align 1, !tbaa !64 ; 2 uses
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
  %i.ds = add nuw nsw i64 %.3205, 16              ; 4 uses
  %i.dt = or disjoint i64 %i.ds, 15
  %i.du = icmp slt i64 %i.dt, %i.j
  br i1 %i.du, label %bb.j, label %.loopexit.thread

.loopexit:                                        ; preds = %.loopexit187
  %i.dv = icmp slt i64 %i.j, 1
  %.not212 = icmp eq i16 %i.g, 0
  %or.cond236 = or i1 %i.dv, %.not212
  br i1 %or.cond236, label %._crit_edge211, label %.preheader.us.preheader

.loopexit.thread:                                 ; preds = %bb.j
  %i.dw = icmp samesign ult i64 %i.ds, %i.j
  br i1 %i.dw, label %.preheader.us.preheader, label %._crit_edge211

.preheader.us.preheader:                          ; preds = %.loopexit, %.loopexit.thread
  %.4228231 = phi i64 [ 0, %.loopexit ], [ %i.ds, %.loopexit.thread ]
  %xtraiter260 = and i64 %i.i, 1
  %i.dx = icmp eq i16 %i.g, 1
  %unroll_iter = and i64 %i.i, 8190
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  %lcmp.mod262 = trunc i16 %i.g to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.5210.us = phi i64 [ %i.et, %._crit_edge.us ], [ %.4228231, %.preheader.us.preheader ] ; 3 uses
  %invariant.gep.us = getelementptr i8, ptr %i.m, i64 %.5210.us ; 3 uses
  %i.dy = mul nuw nsw i64 %.5210.us, %i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %i.dy ; 3 uses
  br i1 %i.dx, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.ea = xor i64 %indvars.iv, -1
  %i.eb = add nsw i64 %i.ea, %i.h
  %i.ec = and i64 %i.eb, 4294967295
  %i.ed = mul nsw i64 %i.j, %i.ec
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.ed
  %i.ee = load i8, ptr %gep.us, align 1, !tbaa !64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !64
  %i.eg = xor i64 %indvars.iv, 4294967294
  %i.eh = add nuw i64 %i.eg, %i.h
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = mul nsw i64 %i.j, %i.ei
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %i.ej
  %i.ek = load i8, ptr %gep.us.1, align 1, !tbaa !64
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod261.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod262)
  %i.en = xor i64 %indvars.iv.epil.init, -1
  %i.eo = add nsw i64 %i.en, %i.h
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = mul nsw i64 %i.j, %i.ep
  %gep.us.epil = getelementptr i8, ptr %invariant.gep.us, i64 %i.eq
  %i.er = load i8, ptr %gep.us.epil, align 1, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.epil.init
  store i8 %i.er, ptr %i.es, align 1, !tbaa !64
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.et = add nuw nsw i64 %.5210.us, 1            ; 2 uses
  %exitcond219.not = icmp eq i64 %i.et, %i.j
  br i1 %exitcond219.not, label %._crit_edge211, label %.preheader.us

._crit_edge211:                                   ; preds = %._crit_edge.us, %.loopexit.thread, %.loopexit
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %._crit_edge211, %bb.b
  %.0157 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge211 ], [ 0, %bb.c ]
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
define internal range(i32 0, 2) i32 @horDiff8(ptr noundef %0, ptr noundef captures(none) %1, i64 noundef %2) #0 {
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
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec137 = and i64 %i.ag, -8                   ; 3 uses
  %i.ak = sub i64 0, %n.vec137
  %i.al = and i64 %i.ag, 7
  %cmp.n147 = icmp eq i64 %i.ag, %n.vec137
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit150
  %.2104.us = phi ptr [ %i.bo, %.loopexit150 ], [ %i.af, %iter.check.preheader ] ; 5 uses
  %.2.us = phi i64 [ %i.bp, %.loopexit150 ], [ %i.g, %iter.check.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = getelementptr i8, ptr %.2104.us, i64 %i.ai ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.2104.us, i64 %i.an ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep, i64 %i.d
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -15 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !64
  %i.aq = getelementptr i8, ptr %next.gep, i64 -15
  %wide.load132 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !64
  %i.ar = sub <16 x i8> %wide.load, %wide.load132
  store <16 x i8> %i.ar, ptr %i.ap, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.am, i64 1
  br i1 %cmp.n, label %.loopexit150, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !87

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
  %3 = sub <8 x i8> %wide.load140, %wide.load142
  store <8 x i8> %3, ptr %i.aw, align 1, !tbaa !64
  %index.next145 = add nuw i64 %index138, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next145, %n.vec137
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape146 = getelementptr i8, ptr %i.at, i64 1
  br i1 %cmp.n147, label %.loopexit150, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0118.us.ph = phi i64 [ %i.ag, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.3117.us.ph = phi ptr [ %.2104.us, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.loopexit150:                                     ; preds = %.lr.ph.us, %vec.epilog.middle.block, %middle.block
  %.3117.us.lcssa = phi ptr [ %ind.escape146, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.3117.us, %.lr.ph.us ] ; 4 uses
  %.lcssa = phi ptr [ %i.at, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %i.bu, %.lr.ph.us ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.d ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = load i8, ptr %.lcssa, align 1, !tbaa !64
  %.narrow.us = sub i8 %i.ba, %i.bb
  store i8 %.narrow.us, ptr %i.az, align 1, !tbaa !64
  %i.bc = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -2 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.d ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !64
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !64
  %.narrow111.us = sub i8 %i.be, %i.bf
  store i8 %.narrow111.us, ptr %i.bd, align 1, !tbaa !64
  %i.bg = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.d ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !64
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !64
  %.narrow112.us = sub i8 %i.bi, %i.bj
  store i8 %.narrow112.us, ptr %i.bh, align 1, !tbaa !64
  %i.bk = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.d ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !64
  %.narrow113.us = sub i8 %i.bm, %i.bn
  store i8 %.narrow113.us, ptr %i.bl, align 1, !tbaa !64
  %i.bo = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -5
  %i.bp = sub nsw i64 %.2.us, %i.d                ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %iter.check, label %.loopexit

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.0118.us = phi i64 [ %i.bv, %.lr.ph.us ], [ %.0118.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %.3117.us = phi ptr [ %i.bu, %.lr.ph.us ], [ %.3117.us.ph, %.lr.ph.us.preheader ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3117.us, i64 %i.d ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !64
  %i.bt = load i8, ptr %.3117.us, align 1, !tbaa !64
  %.narrow114.us = sub i8 %i.bs, %i.bt
  store i8 %.narrow114.us, ptr %i.br, align 1, !tbaa !64
  %i.bu = getelementptr inbounds i8, ptr %.3117.us, i64 -1 ; 2 uses
  %i.bv = add nsw i64 %.0118.us, -1
  %i.bw = icmp sgt i64 %.0118.us, 1
  br i1 %i.bw, label %.lr.ph.us, label %.loopexit150, !llvm.loop !89

.split:                                           ; preds = %bb.i, %bb.m
  %.2104 = phi ptr [ %.8, %bb.m ], [ %i.af, %bb.i ] ; 7 uses
  %.2 = phi i64 [ %i.cn, %bb.m ], [ %i.g, %bb.i ]
  switch i64 %i.d, label %bb.j [
    i64 0, label %bb.m
    i64 1, label %bb.l
    i64 2, label %bb.k
  ]

bb.j:                                             ; preds = %.split
  %i.bx = getelementptr inbounds i8, ptr %.2104, i64 %i.d ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = load i8, ptr %.2104, align 1, !tbaa !64
  %.narrow = sub i8 %i.by, %i.bz
  store i8 %.narrow, ptr %i.bx, align 1, !tbaa !64
  %i.ca = getelementptr inbounds i8, ptr %.2104, i64 -1 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.d ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = load i8, ptr %i.ca, align 1, !tbaa !64
  %.narrow111 = sub i8 %i.cc, %i.cd
  store i8 %.narrow111, ptr %i.cb, align 1, !tbaa !64
  %i.ce = getelementptr inbounds i8, ptr %.2104, i64 -2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split
  %.6 = phi ptr [ %i.ce, %bb.j ], [ %.2104, %.split ] ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.6, i64 %i.d ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = load i8, ptr %.6, align 1, !tbaa !64
  %.narrow112 = sub i8 %i.cg, %i.ch
  store i8 %.narrow112, ptr %i.cf, align 1, !tbaa !64
  %i.ci = getelementptr inbounds i8, ptr %.6, i64 -1
  br label %bb.l

bb.l:                                             ; preds = %.split, %bb.k
  %.7 = phi ptr [ %i.ci, %bb.k ], [ %.2104, %.split ] ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.7, i64 %i.d ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = load i8, ptr %.7, align 1, !tbaa !64
  %.narrow113 = sub i8 %i.ck, %i.cl
  store i8 %.narrow113, ptr %i.cj, align 1, !tbaa !64
  %i.cm = getelementptr inbounds i8, ptr %.7, i64 -1
  br label %bb.m

bb.m:                                             ; preds = %.split, %bb.l
  %.8 = phi ptr [ %i.cm, %bb.l ], [ %.2104, %.split ]
  %i.cn = sub nsw i64 %.2, %i.d                   ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %.split, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.m, %.loopexit150, %bb.c, %bb.b
  %.0100 = phi i32 [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %.loopexit150 ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.h ]
  ret i32 %.0100
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @horDiff16(ptr noundef %0, ptr noundef captures(none) %1, i64 noundef %2) #0 {
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
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -14 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -30 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.u, align 2, !tbaa !41
  %wide.load70 = load <8 x i16>, ptr %i.v, align 2, !tbaa !41
  %i.w = getelementptr i8, ptr %next.gep, i64 -14
  %i.x = getelementptr i8, ptr %next.gep, i64 -30
  %wide.load72 = load <8 x i16>, ptr %i.w, align 2, !tbaa !41
  %wide.load73 = load <8 x i16>, ptr %i.x, align 2, !tbaa !41
  %i.y = sub <8 x i16> %wide.load, %wide.load72
  %i.z = sub <8 x i16> %wide.load70, %wide.load73
  store <8 x i16> %i.y, ptr %i.u, align 2, !tbaa !41
  store <8 x i16> %i.z, ptr %i.v, align 2, !tbaa !41
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.r, i64 2
  br i1 %cmp.n, label %.loopexit93, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ab = getelementptr i8, ptr %.051.us, i64 %i.q ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = mul i64 %index81, -2
  %next.gep82 = getelementptr i8, ptr %.051.us, i64 %i.ac ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %next.gep82, i64 %.fr63
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -6 ; 2 uses
  %wide.load83 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !41
  %i.af = getelementptr i8, ptr %next.gep82, i64 -6
  %wide.load85 = load <4 x i16>, ptr %i.af, align 2, !tbaa !41
  %i.ag = sub <4 x i16> %wide.load83, %wide.load85
  store <4 x i16> %i.ag, ptr %i.ae, align 2, !tbaa !41
  %index.next88 = add nuw i64 %index81, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next88, %n.vec80
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape89 = getelementptr i8, ptr %i.ab, i64 2
  br i1 %cmp.n90, label %.loopexit93, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.062.us.ph = phi i64 [ %i.l, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  %.161.us.ph = phi ptr [ %.051.us, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.loopexit93:                                      ; preds = %.lr.ph.us, %vec.epilog.middle.block, %middle.block
  %.161.us.lcssa = phi ptr [ %ind.escape89, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.161.us, %.lr.ph.us ] ; 3 uses
  %.lcssa = phi ptr [ %i.ab, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.ba, %.lr.ph.us ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.lcssa, i64 %.fr63 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !41
  %i.ak = load i16, ptr %.lcssa, align 2, !tbaa !41
  %.narrow.us = sub i16 %i.aj, %i.ak
  store i16 %.narrow.us, ptr %i.ai, align 2, !tbaa !41
  %i.al = getelementptr inbounds i8, ptr %.161.us.lcssa, i64 -4 ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %.fr63 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !41
  %i.ao = load i16, ptr %i.al, align 2, !tbaa !41
  %.narrow56.us = sub i16 %i.an, %i.ao
  store i16 %.narrow56.us, ptr %i.am, align 2, !tbaa !41
  %i.ap = getelementptr inbounds i8, ptr %.161.us.lcssa, i64 -8 ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %.fr63 ; 2 uses
  %i.ar = load <2 x i16>, ptr %i.aq, align 2, !tbaa !41
  %i.as = load <2 x i16>, ptr %i.ap, align 2, !tbaa !41
  %i.at = sub <2 x i16> %i.ar, %i.as
  store <2 x i16> %i.at, ptr %i.aq, align 2, !tbaa !41
  %i.au = getelementptr inbounds i8, ptr %.161.us.lcssa, i64 -10
  %i.av = sub nsw i64 %.050.us, %.fr63            ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %iter.check, label %.loopexit60

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.062.us = phi i64 [ %i.bb, %.lr.ph.us ], [ %.062.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %.161.us = phi ptr [ %i.ba, %.lr.ph.us ], [ %.161.us.ph, %.lr.ph.us.preheader ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.161.us, i64 %.fr63 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !41
  %i.az = load i16, ptr %.161.us, align 2, !tbaa !41
  %.narrow59.us = sub i16 %i.ay, %i.az
  store i16 %.narrow59.us, ptr %i.ax, align 2, !tbaa !41
  %i.ba = getelementptr inbounds i8, ptr %.161.us, i64 -2 ; 2 uses
  %i.bb = add nsw i64 %.062.us, -1
  %i.bc = icmp sgt i64 %.062.us, 1
  br i1 %i.bc, label %.lr.ph.us, label %.loopexit93, !llvm.loop !92

.split:                                           ; preds = %bb.d, %bb.h
  %.051 = phi ptr [ %.6, %bb.h ], [ %i.k, %bb.d ] ; 7 uses
  %.050 = phi i64 [ %i.bt, %bb.h ], [ %i.i, %bb.d ]
  switch i64 %.fr63, label %.loopexit [
    i64 0, label %bb.h
    i64 3, label %bb.e
    i64 2, label %bb.f
    i64 1, label %bb.g
  ]

.loopexit:                                        ; preds = %.split
  %i.bd = getelementptr inbounds [2 x i8], ptr %.051, i64 %.fr63 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !41
  %i.bf = load i16, ptr %.051, align 2, !tbaa !41
  %.narrow = sub i16 %i.be, %i.bf
  store i16 %.narrow, ptr %i.bd, align 2, !tbaa !41
  %i.bg = getelementptr inbounds i8, ptr %.051, i64 -2
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.split
  %.3 = phi ptr [ %i.bg, %.loopexit ], [ %.051, %.split ] ; 3 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr %.3, i64 %.fr63 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !41
  %i.bj = load i16, ptr %.3, align 2, !tbaa !41
  %.narrow56 = sub i16 %i.bi, %i.bj
  store i16 %.narrow56, ptr %i.bh, align 2, !tbaa !41
  %i.bk = getelementptr inbounds i8, ptr %.3, i64 -2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split
  %.4 = phi ptr [ %i.bk, %bb.e ], [ %.051, %.split ] ; 3 uses
  %i.bl = getelementptr inbounds [2 x i8], ptr %.4, i64 %.fr63 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !41
  %i.bn = load i16, ptr %.4, align 2, !tbaa !41
  %.narrow57 = sub i16 %i.bm, %i.bn
  store i16 %.narrow57, ptr %i.bl, align 2, !tbaa !41
  %i.bo = getelementptr inbounds i8, ptr %.4, i64 -2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.5 = phi ptr [ %i.bo, %bb.f ], [ %.051, %.split ] ; 3 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr %.5, i64 %.fr63 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !41
  %i.br = load i16, ptr %.5, align 2, !tbaa !41
  %.narrow58 = sub i16 %i.bq, %i.br
  store i16 %.narrow58, ptr %i.bp, align 2, !tbaa !41
  %i.bs = getelementptr inbounds i8, ptr %.5, i64 -2
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %.6 = phi ptr [ %i.bs, %bb.g ], [ %.051, %.split ]
  %i.bt = sub nsw i64 %.050, %.fr63               ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.split, label %.loopexit60

.loopexit60:                                      ; preds = %bb.h, %.loopexit93, %bb.c, %bb.b
  %.052 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %.loopexit93 ], [ 1, %bb.h ]
  ret i32 %.052
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @horDiff32(ptr noundef %0, ptr noundef captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %.fr49 = freeze i64 %i.d                        ; 23 uses
  %i.e = sdiv i64 %2, 4                           ; 2 uses
  %i.f = shl nsw i64 %.fr49, 2
  %i.g = srem i64 %2, %i.f
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28) #10
  br label %.loopexit46

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i64 %i.e, %.fr49
  br i1 %i.h, label %bb.d, label %.loopexit46

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i64 %i.e, %.fr49                 ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4       ; 2 uses
  %i.l = add i64 %.fr49, -4                       ; 5 uses
  %i.m = icmp sgt i64 %.fr49, 4
  br i1 %i.m, label %.lr.ph.us.preheader.preheader, label %.split

.lr.ph.us.preheader.preheader:                    ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.l, 8
  %n.vec = and i64 %i.l, -8                       ; 3 uses
  %i.n = and i64 %i.l, 7
  %i.o = mul i64 %n.vec, -4
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph.us.preheader.preheader, %.loopexit64
  %.041.us = phi ptr [ %i.an, %.loopexit64 ], [ %i.k, %.lr.ph.us.preheader.preheader ] ; 3 uses
  %.040.us = phi i64 [ %i.ao, %.loopexit64 ], [ %i.i, %.lr.ph.us.preheader.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.preheader
  %i.p = getelementptr i8, ptr %.041.us, i64 %i.o ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.041.us, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 -12
  %i.s = getelementptr i8, ptr %next.gep, i64 -28
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !3
  %wide.load55 = load <4 x i32>, ptr %i.s, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %.fr49 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -28 ; 2 uses
  %wide.load57 = load <4 x i32>, ptr %i.u, align 4, !tbaa !3
  %wide.load58 = load <4 x i32>, ptr %i.v, align 4, !tbaa !3
  %i.w = sub <4 x i32> %wide.load57, %wide.load
  %i.x = sub <4 x i32> %wide.load58, %wide.load55
  store <4 x i32> %i.w, ptr %i.u, align 4, !tbaa !3
  store <4 x i32> %i.x, ptr %i.v, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.p, i64 4
  br i1 %cmp.n, label %.loopexit64, label %.lr.ph.us

.loopexit64:                                      ; preds = %.lr.ph.us, %.lr.ph.us.1, %.lr.ph.us.2, %.lr.ph.us.3, %.lr.ph.us.4, %.lr.ph.us.5, %.lr.ph.us.6, %middle.block
  %.147.us.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.147.us.ph, %.lr.ph.us ], [ %i.au, %.lr.ph.us.1 ], [ %i.ba, %.lr.ph.us.2 ], [ %i.bf, %.lr.ph.us.3 ], [ %i.bl, %.lr.ph.us.4 ], [ %i.bq, %.lr.ph.us.5 ], [ %i.bw, %.lr.ph.us.6 ] ; 3 uses
  %.lcssa = phi ptr [ %i.p, %middle.block ], [ %i.au, %.lr.ph.us ], [ %i.ba, %.lr.ph.us.1 ], [ %i.bf, %.lr.ph.us.2 ], [ %i.bl, %.lr.ph.us.3 ], [ %i.bq, %.lr.ph.us.4 ], [ %i.bw, %.lr.ph.us.5 ], [ %i.cc, %.lr.ph.us.6 ] ; 2 uses
  %i.z = load i32, ptr %.lcssa, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %.fr49 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = sub i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !3
  %i.ad = getelementptr inbounds i8, ptr %.147.us.lcssa, i64 -8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.fr49 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = sub i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !3
  %i.ai = getelementptr inbounds i8, ptr %.147.us.lcssa, i64 -16 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.fr49 ; 2 uses
  %i.ak = load <2 x i32>, ptr %i.ai, align 4, !tbaa !3
  %i.al = load <2 x i32>, ptr %i.aj, align 4, !tbaa !3
  %i.am = sub <2 x i32> %i.al, %i.ak
  store <2 x i32> %i.am, ptr %i.aj, align 4, !tbaa !3
  %i.an = getelementptr inbounds i8, ptr %.147.us.lcssa, i64 -20
  %i.ao = sub nsw i64 %.040.us, %.fr49            ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.us.preheader, label %.loopexit46

.lr.ph.us:                                        ; preds = %middle.block, %.lr.ph.us.preheader
  %.048.us.ph = phi i64 [ %i.l, %.lr.ph.us.preheader ], [ %i.n, %middle.block ] ; 6 uses
  %.147.us.ph = phi ptr [ %.041.us, %.lr.ph.us.preheader ], [ %i.p, %middle.block ] ; 10 uses
  %i.aq = load i32, ptr %.147.us.ph, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.147.us.ph, i64 %.fr49 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = sub i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !3
  %i.au = getelementptr inbounds i8, ptr %.147.us.ph, i64 -4 ; 4 uses
  %i.av = icmp samesign ugt i64 %.048.us.ph, 1
  br i1 %i.av, label %.lr.ph.us.1, label %.loopexit64

.lr.ph.us.1:                                      ; preds = %.lr.ph.us
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.fr49 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = sub i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !3
  %i.ba = getelementptr inbounds i8, ptr %.147.us.ph, i64 -8 ; 4 uses
  %.not69 = icmp eq i64 %.048.us.ph, 2
  br i1 %.not69, label %.loopexit64, label %.lr.ph.us.2

.lr.ph.us.2:                                      ; preds = %.lr.ph.us.1
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.fr49 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = sub i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !3
  %i.bf = getelementptr inbounds i8, ptr %.147.us.ph, i64 -12 ; 4 uses
  %i.bg = icmp samesign ugt i64 %.048.us.ph, 3
  br i1 %i.bg, label %.lr.ph.us.3, label %.loopexit64

.lr.ph.us.3:                                      ; preds = %.lr.ph.us.2
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.fr49 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = sub i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !3
  %i.bl = getelementptr inbounds i8, ptr %.147.us.ph, i64 -16 ; 4 uses
  %.not70 = icmp eq i64 %.048.us.ph, 4
  br i1 %.not70, label %.loopexit64, label %.lr.ph.us.4

.lr.ph.us.4:                                      ; preds = %.lr.ph.us.3
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.fr49 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = sub i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %i.bq = getelementptr inbounds i8, ptr %.147.us.ph, i64 -20 ; 4 uses
  %i.br = icmp samesign ugt i64 %.048.us.ph, 5
  br i1 %i.br, label %.lr.ph.us.5, label %.loopexit64

.lr.ph.us.5:                                      ; preds = %.lr.ph.us.4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.fr49 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = sub i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  %i.bw = getelementptr inbounds i8, ptr %.147.us.ph, i64 -24 ; 4 uses
  %i.bx = icmp eq i64 %.048.us.ph, 7
  br i1 %i.bx, label %.lr.ph.us.6, label %.loopexit64

.lr.ph.us.6:                                      ; preds = %.lr.ph.us.5
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.fr49 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = sub i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !3
  %i.cc = getelementptr inbounds i8, ptr %.147.us.ph, i64 -28
  br label %.loopexit64

.split:                                           ; preds = %bb.d, %bb.h
  %.041 = phi ptr [ %.6, %bb.h ], [ %i.k, %bb.d ] ; 7 uses
  %.040 = phi i64 [ %i.cx, %bb.h ], [ %i.i, %bb.d ]
  switch i64 %.fr49, label %.loopexit [
    i64 0, label %bb.h
    i64 3, label %bb.e
    i64 2, label %bb.f
    i64 1, label %bb.g
  ]

.loopexit:                                        ; preds = %.split
  %i.cd = load i32, ptr %.041, align 4, !tbaa !3
  %i.ce = getelementptr inbounds [4 x i8], ptr %.041, i64 %.fr49 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = sub i32 %i.cf, %i.cd
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.ch = getelementptr inbounds i8, ptr %.041, i64 -4
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.split
  %.3 = phi ptr [ %i.ch, %.loopexit ], [ %.041, %.split ] ; 3 uses
  %i.ci = load i32, ptr %.3, align 4, !tbaa !3
  %i.cj = getelementptr inbounds [4 x i8], ptr %.3, i64 %.fr49 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = sub i32 %i.ck, %i.ci
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !3
  %i.cm = getelementptr inbounds i8, ptr %.3, i64 -4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split
  %.4 = phi ptr [ %i.cm, %bb.e ], [ %.041, %.split ] ; 3 uses
  %i.cn = load i32, ptr %.4, align 4, !tbaa !3
  %i.co = getelementptr inbounds [4 x i8], ptr %.4, i64 %.fr49 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = sub i32 %i.cp, %i.cn
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !3
  %i.cr = getelementptr inbounds i8, ptr %.4, i64 -4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.5 = phi ptr [ %i.cr, %bb.f ], [ %.041, %.split ] ; 3 uses
  %i.cs = load i32, ptr %.5, align 4, !tbaa !3
  %i.ct = getelementptr inbounds [4 x i8], ptr %.5, i64 %.fr49 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = sub i32 %i.cu, %i.cs
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !3
  %i.cw = getelementptr inbounds i8, ptr %.5, i64 -4
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %.6 = phi ptr [ %i.cw, %bb.g ], [ %.041, %.split ]
  %i.cx = sub nsw i64 %.040, %.fr49               ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.split, label %.loopexit46

.loopexit46:                                      ; preds = %bb.h, %.loopexit64, %bb.c, %bb.b
  %.042 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %.loopexit64 ], [ 1, %bb.h ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @horDiff64(ptr noundef %0, ptr noundef captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %.fr49 = freeze i64 %i.d                        ; 20 uses
  %i.e = sdiv i64 %2, 8                           ; 2 uses
  %i.f = shl nsw i64 %.fr49, 3
  %i.g = srem i64 %2, %i.f
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.30) #10
  br label %.loopexit46

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i64 %i.e, %.fr49
  br i1 %i.h, label %bb.d, label %.loopexit46

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i64 %i.e, %.fr49                 ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8       ; 2 uses
  %i.l = add i64 %.fr49, -4                       ; 4 uses
  %i.m = icmp sgt i64 %.fr49, 4
  br i1 %i.m, label %.lr.ph.us.preheader.preheader, label %.split

.lr.ph.us.preheader.preheader:                    ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.l, 4
  %n.vec = and i64 %i.l, -4                       ; 3 uses
  %i.n = and i64 %.fr49, 3
  %i.o = mul i64 %n.vec, -8
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph.us.preheader.preheader, %.loopexit64
  %.041.us = phi ptr [ %i.an, %.loopexit64 ], [ %i.k, %.lr.ph.us.preheader.preheader ] ; 3 uses
  %.040.us = phi i64 [ %i.ao, %.loopexit64 ], [ %i.i, %.lr.ph.us.preheader.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.preheader
  %i.p = getelementptr i8, ptr %.041.us, i64 %i.o ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.041.us, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 -8
  %i.s = getelementptr i8, ptr %next.gep, i64 -24
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !79
  %wide.load55 = load <2 x i64>, ptr %i.s, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %next.gep, i64 %.fr49 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.u, align 8, !tbaa !79
  %wide.load58 = load <2 x i64>, ptr %i.v, align 8, !tbaa !79
  %i.w = sub <2 x i64> %wide.load57, %wide.load
  %i.x = sub <2 x i64> %wide.load58, %wide.load55
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !79
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.p, i64 8
  br i1 %cmp.n, label %.loopexit64, label %.lr.ph.us

.loopexit64:                                      ; preds = %.lr.ph.us, %.lr.ph.us.1, %.lr.ph.us.2, %middle.block
  %.147.us.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.147.us.ph, %.lr.ph.us ], [ %i.au, %.lr.ph.us.1 ], [ %i.ba, %.lr.ph.us.2 ] ; 3 uses
  %.lcssa = phi ptr [ %i.p, %middle.block ], [ %i.au, %.lr.ph.us ], [ %i.ba, %.lr.ph.us.1 ], [ %i.bg, %.lr.ph.us.2 ] ; 2 uses
  %i.z = load i64, ptr %.lcssa, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.fr49 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !79
  %i.ac = sub i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !79
  %i.ad = getelementptr inbounds i8, ptr %.147.us.lcssa, i64 -16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.fr49 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79
  %i.ah = sub i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !79
  %i.ai = getelementptr inbounds i8, ptr %.147.us.lcssa, i64 -32 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.fr49 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !79
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !79
  %i.am = sub <2 x i64> %i.al, %i.ak
  store <2 x i64> %i.am, ptr %i.aj, align 8, !tbaa !79
  %i.an = getelementptr inbounds i8, ptr %.147.us.lcssa, i64 -40
  %i.ao = sub nsw i64 %.040.us, %.fr49            ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.us.preheader, label %.loopexit46

.lr.ph.us:                                        ; preds = %middle.block, %.lr.ph.us.preheader
  %.048.us.ph = phi i64 [ %i.l, %.lr.ph.us.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %.147.us.ph = phi ptr [ %.041.us, %.lr.ph.us.preheader ], [ %i.p, %middle.block ] ; 6 uses
  %i.aq = load i64, ptr %.147.us.ph, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.147.us.ph, i64 %.fr49 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !79
  %i.at = sub i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !79
  %i.au = getelementptr inbounds i8, ptr %.147.us.ph, i64 -8 ; 4 uses
  %i.av = icmp samesign ugt i64 %.048.us.ph, 1
  br i1 %i.av, label %.lr.ph.us.1, label %.loopexit64

.lr.ph.us.1:                                      ; preds = %.lr.ph.us
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !79
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.fr49 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !79
  %i.az = sub i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !79
  %i.ba = getelementptr inbounds i8, ptr %.147.us.ph, i64 -16 ; 4 uses
  %i.bb = icmp eq i64 %.048.us.ph, 3
  br i1 %i.bb, label %.lr.ph.us.2, label %.loopexit64

.lr.ph.us.2:                                      ; preds = %.lr.ph.us.1
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !79
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.fr49 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !79
  %i.bf = sub i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !79
  %i.bg = getelementptr inbounds i8, ptr %.147.us.ph, i64 -24
  br label %.loopexit64

.split:                                           ; preds = %bb.d, %bb.h
  %.041 = phi ptr [ %.6, %bb.h ], [ %i.k, %bb.d ] ; 7 uses
  %.040 = phi i64 [ %i.cb, %bb.h ], [ %i.i, %bb.d ]
  switch i64 %.fr49, label %.loopexit [
    i64 0, label %bb.h
    i64 3, label %bb.e
    i64 2, label %bb.f
    i64 1, label %bb.g
  ]

.loopexit:                                        ; preds = %.split
  %i.bh = load i64, ptr %.041, align 8, !tbaa !79
  %i.bi = getelementptr inbounds [8 x i8], ptr %.041, i64 %.fr49 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !79
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !79
  %i.bl = getelementptr inbounds i8, ptr %.041, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.split
  %.3 = phi ptr [ %i.bl, %.loopexit ], [ %.041, %.split ] ; 3 uses
  %i.bm = load i64, ptr %.3, align 8, !tbaa !79
  %i.bn = getelementptr inbounds [8 x i8], ptr %.3, i64 %.fr49 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !79
  %i.bp = sub i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !79
  %i.bq = getelementptr inbounds i8, ptr %.3, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split
  %.4 = phi ptr [ %i.bq, %bb.e ], [ %.041, %.split ] ; 3 uses
  %i.br = load i64, ptr %.4, align 8, !tbaa !79
  %i.bs = getelementptr inbounds [8 x i8], ptr %.4, i64 %.fr49 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !79
  %i.bu = sub i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !79
  %i.bv = getelementptr inbounds i8, ptr %.4, i64 -8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.5 = phi ptr [ %i.bv, %bb.f ], [ %.041, %.split ] ; 3 uses
  %i.bw = load i64, ptr %.5, align 8, !tbaa !79
  %i.bx = getelementptr inbounds [8 x i8], ptr %.5, i64 %.fr49 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !79
  %i.bz = sub i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !79
  %i.ca = getelementptr inbounds i8, ptr %.5, i64 -8
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %.6 = phi ptr [ %i.ca, %bb.g ], [ %.041, %.split ]
  %i.cb = sub nsw i64 %.040, %.fr49               ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.split, label %.loopexit46

.loopexit46:                                      ; preds = %bb.h, %.loopexit64, %bb.c, %bb.b
  %.042 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %.loopexit64 ], [ 1, %bb.h ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorEncodeRow(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %2) #10 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PredictorEncodeRow.module, ptr noundef nonnull @.str.31, i64 noundef %2) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2, i16 noundef zeroext %3) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.j, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorEncodeTile(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %2) #10 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i64 noundef %2) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63   ; 4 uses
  %i.g = srem i64 %2, %i.f
  %.not = icmp eq i64 %i.g, 0
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
  %.fr99 = freeze i64 %i.d                        ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.f = load i16, ptr %i.e, align 4, !tbaa !81
  %i.g = lshr i16 %i.f, 3                         ; 6 uses
  %i.h = zext nneg i16 %i.g to i64                ; 3 uses
  %i.i = zext nneg i16 %i.g to i64                ; 3 uses
  %i.j = sdiv i64 %2, %i.i                        ; 5 uses
  %i.k = mul nsw i64 %.fr99, %i.i
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
  %i.n = icmp slt i64 %i.j, 1
  %.not98 = icmp eq i16 %i.g, 0
  %or.cond = or i1 %i.n, %.not98
  br i1 %or.cond, label %._crit_edge92, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.d
  %wide.trip.count = zext nneg i16 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i16 %i.g, 1
  %unroll_iter = and i64 %wide.trip.count, 8190
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod134 = trunc i16 %i.g to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.07891.us = phi i64 [ %i.ak, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %invariant.gep.us = getelementptr i8, ptr %1, i64 %.07891.us ; 3 uses
  %i.p = mul nuw nsw i64 %.07891.us, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 3 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !64
  %i.t = xor i64 %indvars.iv, -1
  %i.u = add nsw i64 %i.t, %i.h
  %i.v = and i64 %i.u, 4294967295
  %i.w = mul nuw nsw i64 %i.j, %i.v
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.w
  store i8 %i.s, ptr %gep.us, align 1, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64
  %i.aa = xor i64 %indvars.iv, 4294967294
  %i.ab = add nuw i64 %i.aa, %i.h
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = mul nuw nsw i64 %i.j, %i.ac
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %i.ad
  store i8 %i.z, ptr %gep.us.1, align 1, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.epil.init
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !64
  %i.ag = xor i64 %indvars.iv.epil.init, -1
  %i.ah = add nsw i64 %i.ag, %i.h
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = mul nuw nsw i64 %i.j, %i.ai
  %gep.us.epil = getelementptr i8, ptr %invariant.gep.us, i64 %i.aj
  store i8 %i.af, ptr %gep.us.epil, align 1, !tbaa !64
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.ak = add nuw nsw i64 %.07891.us, 1           ; 2 uses
  %exitcond103.not = icmp eq i64 %i.ak, %i.j
  br i1 %exitcond103.not, label %._crit_edge92, label %.preheader.us

._crit_edge92:                                    ; preds = %._crit_edge.us, %bb.d
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #10
  %i.al = icmp sgt i64 %2, %.fr99
  br i1 %i.al, label %.lr.ph97, label %.loopexit89

.lr.ph97:                                         ; preds = %._crit_edge92
  %i.am = getelementptr i8, ptr %1, i64 %2
  %i.an = xor i64 %.fr99, -1
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.an  ; 2 uses
  %i.ap = add i64 %.fr99, -4                      ; 10 uses
  %i.aq = icmp sgt i64 %.fr99, 4
  br i1 %i.aq, label %iter.check.preheader, label %.lr.ph97.split

iter.check.preheader:                             ; preds = %.lr.ph97
  %min.iters.check = icmp ult i64 %i.ap, 8
  %min.iters.check111 = icmp ult i64 %i.ap, 16
  %n.mod.vf = and i64 %i.ap, 8
  %n.vec = and i64 %i.ap, -16                     ; 4 uses
  %i.ar = sub i64 0, %n.vec
  %i.as = and i64 %i.ap, 15
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec117 = and i64 %i.ap, -8                   ; 3 uses
  %i.at = sub i64 0, %n.vec117
  %i.au = and i64 %i.ap, 7
  %cmp.n127 = icmp eq i64 %i.ap, %n.vec117
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit130
  %.07796.us = phi ptr [ %i.bx, %.loopexit130 ], [ %i.ao, %iter.check.preheader ] ; 5 uses
  %.17995.us = phi i64 [ %i.by, %.loopexit130 ], [ %2, %iter.check.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = getelementptr i8, ptr %.07796.us, i64 %i.ar ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.07796.us, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep, i64 %.fr99
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -15 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !64
  %i.az = getelementptr i8, ptr %next.gep, i64 -15
  %wide.load112 = load <16 x i8>, ptr %i.az, align 1, !tbaa !64
  %i.ba = sub <16 x i8> %wide.load, %wide.load112
  store <16 x i8> %i.ba, ptr %i.ay, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.av, i64 1
  br i1 %cmp.n, label %.loopexit130, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bc = getelementptr i8, ptr %.07796.us, i64 %i.at ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.bd = sub i64 0, %index118
  %next.gep119 = getelementptr i8, ptr %.07796.us, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %next.gep119, i64 %.fr99
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -7 ; 2 uses
  %wide.load120 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !64
  %i.bg = getelementptr i8, ptr %next.gep119, i64 -7
  %wide.load122 = load <8 x i8>, ptr %i.bg, align 1, !tbaa !64
  %3 = sub <8 x i8> %wide.load120, %wide.load122
  store <8 x i8> %3, ptr %i.bf, align 1, !tbaa !64
  %index.next125 = add nuw i64 %index118, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next125, %n.vec117
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape126 = getelementptr i8, ptr %i.bc, i64 1
  br i1 %cmp.n127, label %.loopexit130, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.094.us.ph = phi i64 [ %i.ap, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.193.us.ph = phi ptr [ %.07796.us, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.loopexit130:                                     ; preds = %.lr.ph.us, %vec.epilog.middle.block, %middle.block
  %.193.us.lcssa = phi ptr [ %ind.escape126, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.193.us, %.lr.ph.us ] ; 4 uses
  %.lcssa = phi ptr [ %i.bc, %vec.epilog.middle.block ], [ %i.av, %middle.block ], [ %i.cd, %.lr.ph.us ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.fr99 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !64
  %i.bk = load i8, ptr %.lcssa, align 1, !tbaa !64
  %.narrow.us = sub i8 %i.bj, %i.bk
  store i8 %.narrow.us, ptr %i.bi, align 1, !tbaa !64
  %i.bl = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -2 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr99 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !64
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !64
  %.narrow85.us = sub i8 %i.bn, %i.bo
  store i8 %.narrow85.us, ptr %i.bm, align 1, !tbaa !64
  %i.bp = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.fr99 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !64
  %.narrow86.us = sub i8 %i.br, %i.bs
  store i8 %.narrow86.us, ptr %i.bq, align 1, !tbaa !64
  %i.bt = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.fr99 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !64
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !64
  %.narrow87.us = sub i8 %i.bv, %i.bw
  store i8 %.narrow87.us, ptr %i.bu, align 1, !tbaa !64
  %i.bx = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -5
  %i.by = sub nsw i64 %.17995.us, %.fr99          ; 2 uses
  %i.bz = icmp sgt i64 %i.by, %.fr99
  br i1 %i.bz, label %iter.check, label %.loopexit89

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.094.us = phi i64 [ %i.ce, %.lr.ph.us ], [ %.094.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %.193.us = phi ptr [ %i.cd, %.lr.ph.us ], [ %.193.us.ph, %.lr.ph.us.preheader ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.193.us, i64 %.fr99 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = load i8, ptr %.193.us, align 1, !tbaa !64
  %.narrow88.us = sub i8 %i.cb, %i.cc
  store i8 %.narrow88.us, ptr %i.ca, align 1, !tbaa !64
  %i.cd = getelementptr inbounds i8, ptr %.193.us, i64 -1 ; 2 uses
  %i.ce = add nsw i64 %.094.us, -1
  %i.cf = icmp sgt i64 %.094.us, 1
  br i1 %i.cf, label %.lr.ph.us, label %.loopexit130, !llvm.loop !97

.lr.ph97.split:                                   ; preds = %.lr.ph97, %bb.h
  %.07796 = phi ptr [ %.6, %bb.h ], [ %i.ao, %.lr.ph97 ] ; 7 uses
  %.17995 = phi i64 [ %i.cw, %bb.h ], [ %2, %.lr.ph97 ]
  switch i64 %.fr99, label %.loopexit [
    i64 0, label %bb.h
    i64 3, label %bb.e
    i64 2, label %bb.f
    i64 1, label %bb.g
  ]

.loopexit:                                        ; preds = %.lr.ph97.split
  %i.cg = getelementptr inbounds i8, ptr %.07796, i64 %.fr99 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = load i8, ptr %.07796, align 1, !tbaa !64
  %.narrow = sub i8 %i.ch, %i.ci
  store i8 %.narrow, ptr %i.cg, align 1, !tbaa !64
  %i.cj = getelementptr inbounds i8, ptr %.07796, i64 -1
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.lr.ph97.split
  %.3 = phi ptr [ %i.cj, %.loopexit ], [ %.07796, %.lr.ph97.split ] ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.3, i64 %.fr99 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !64
  %i.cm = load i8, ptr %.3, align 1, !tbaa !64
  %.narrow85 = sub i8 %i.cl, %i.cm
  store i8 %.narrow85, ptr %i.ck, align 1, !tbaa !64
  %i.cn = getelementptr inbounds i8, ptr %.3, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph97.split
  %.4 = phi ptr [ %i.cn, %bb.e ], [ %.07796, %.lr.ph97.split ] ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %.4, i64 %.fr99 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !64
  %i.cq = load i8, ptr %.4, align 1, !tbaa !64
  %.narrow86 = sub i8 %i.cp, %i.cq
  store i8 %.narrow86, ptr %i.co, align 1, !tbaa !64
  %i.cr = getelementptr inbounds i8, ptr %.4, i64 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph97.split
  %.5 = phi ptr [ %i.cr, %bb.f ], [ %.07796, %.lr.ph97.split ] ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %.5, i64 %.fr99 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !64
  %i.cu = load i8, ptr %.5, align 1, !tbaa !64
  %.narrow87 = sub i8 %i.ct, %i.cu
  store i8 %.narrow87, ptr %i.cs, align 1, !tbaa !64
  %i.cv = getelementptr inbounds i8, ptr %.5, i64 -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph97.split, %bb.g
  %.6 = phi ptr [ %i.cv, %bb.g ], [ %.07796, %.lr.ph97.split ]
  %i.cw = sub nsw i64 %.17995, %.fr99             ; 2 uses
  %i.cx = icmp sgt i64 %i.cw, %.fr99
  br i1 %i.cx, label %.lr.ph97.split, label %.loopexit89

.loopexit89:                                      ; preds = %bb.h, %.loopexit130, %._crit_edge92, %bb.c, %bb.b
  %.076 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %._crit_edge92 ], [ 1, %.loopexit130 ], [ 1, %bb.h ]
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
end_hunk_0
