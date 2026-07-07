inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@gray_rgb565_convert:bb.a
  %.139.i9 = phi ptr [ %i.bl, %.lr.ph ], [ %.139.i9.ph, %.lr.ph.preheader29 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.139.i9, i64 4 ; 2 uses
  %i.bm = load <2 x i16>, ptr %.139.i9, align 2, !tbaa !68 ; 3 uses
  %i.bn = shl <2 x i16> %i.bm, splat (i16 8)
  %i.bo = and <2 x i16> %i.bn, splat (i16 -2048)
  %i.bp = shl <2 x i16> %i.bm, splat (i16 3)
  %i.bq = and <2 x i16> %i.bp, splat (i16 2016)
  %i.br = lshr <2 x i16> %i.bm, splat (i16 3)
  %i.bs = or <2 x i16> %i.bq, %i.br
  %i.bt = or <2 x i16> %i.bs, %i.bo
  store <2 x i16> %i.bt, ptr %.137.i10, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.137.i10, i64 8 ; 2 uses
  %i.bv = add nuw nsw i32 %.035.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !175

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.139.i.lcssa = phi ptr [ %.038.i, %bb.d ], [ %i.af, %middle.block ], [ %i.bl, %.lr.ph ]
  %.137.i.lcssa = phi ptr [ %.036.i, %bb.d ], [ %i.ad, %middle.block ], [ %i.bu, %.lr.ph ]
  %i.bw = and i32 %.1.i, 1
  %.not44.i = icmp eq i32 %i.bw, 0
  br i1 %.not44.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bx = load i16, ptr %.139.i.lcssa, align 2, !tbaa !68 ; 3 uses
  %i.by = shl i16 %i.bx, 8
  %i.bz = and i16 %i.by, -2048
  %i.ca = shl i16 %i.bx, 3
  %i.cb = and i16 %i.ca, 2016
  %i.cc = lshr i16 %i.bx, 3
  %i.cd = or i16 %i.cb, %i.cc
  %i.ce = or i16 %i.cd, %i.bz
  store i16 %i.ce, ptr %.137.i.lcssa, align 2, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.cf = icmp samesign ugt i32 %.in, 1
  br i1 %i.cf, label %bb.b, label %gray_rgb565_convert_le.exit, !llvm.loop !176

gray_rgb565_convert_le.exit:                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_rgb565_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph21, label %rgb_rgb565_convert_le.exit

.lr.ph21:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !67
  %i.d = load ptr, ptr %1, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph21, %bb.f
  %.in = phi i32 [ %4, %.lr.ph21 ], [ %i.i, %bb.f ] ; 2 uses
  %.0.i19 = phi i32 [ %i.c, %.lr.ph21 ], [ %.1.i, %bb.f ] ; 2 uses
  %.058.i18 = phi ptr [ %3, %.lr.ph21 ], [ %i.r, %bb.f ] ; 2 uses
  %.059.i17 = phi i32 [ %2, %.lr.ph21 ], [ %i.q, %bb.f ] ; 2 uses
  %i.i = add nsw i32 %.in, -1
  %i.j = zext i32 %.059.i17 to i64                ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71   ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71   ; 3 uses
  %i.q = add i32 %.059.i17, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.058.i18, i64 8
  %i.s = load ptr, ptr %.058.i18, align 8, !tbaa !71 ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 3
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.w = load i16, ptr %i.l, align 2, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.y = load i16, ptr %i.n, align 2, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.aa = load i16, ptr %i.p, align 2, !tbaa !68
  %i.ab = shl i16 %i.w, 8
  %i.ac = and i16 %i.ab, -2048
  %i.ad = shl i16 %i.y, 3
  %i.ae = and i16 %i.ad, 2016
  %i.af = or disjoint i16 %i.ae, %i.ac
  %i.ag = lshr i16 %i.aa, 3
  %i.ah = or i16 %i.af, %i.ag
  store i16 %i.ah, ptr %i.s, align 2, !tbaa !68
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aj = add i32 %.0.i19, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.055.i = phi ptr [ %i.ai, %bb.c ], [ %i.s, %bb.b ] ; 7 uses
  %.053.i = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %.051.i = phi ptr [ %i.x, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.049.i = phi ptr [ %i.z, %bb.c ], [ %i.p, %bb.b ] ; 4 uses
  %.1.i = phi i32 [ %i.aj, %bb.c ], [ %.0.i19, %bb.b ] ; 5 uses
  %i.ak = lshr i32 %.1.i, 1                       ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.al = lshr i32 %.1.i, 1
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.1.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.am, 2147483644              ; 5 uses
  %i.an = trunc nuw nsw i64 %n.vec to i32
  %i.ao = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.ap = getelementptr i8, ptr %.049.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr i8, ptr %.051.i, i64 %i.ao ; 2 uses
  %i.ar = getelementptr i8, ptr %.053.i, i64 %i.ao ; 2 uses
  %i.as = shl nuw nsw i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %.055.i, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.049.i, i64 %i.au
  %next.gep32 = getelementptr i8, ptr %.051.i, i64 %i.au
  %next.gep33 = getelementptr i8, ptr %.053.i, i64 %i.au
  %i.av = shl i64 %index, 3                       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %.055.i, i64 %i.av
  %i.aw = getelementptr i8, ptr %.055.i, i64 %i.av
  %next.gep35 = getelementptr i8, ptr %i.aw, i64 8
  %i.ax = getelementptr i8, ptr %.055.i, i64 %i.av
  %next.gep36 = getelementptr i8, ptr %i.ax, i64 16
  %i.ay = getelementptr i8, ptr %.055.i, i64 %i.av
  %next.gep37 = getelementptr i8, ptr %i.ay, i64 24
  %wide.vec = load <8 x i16>, ptr %next.gep33, align 2, !tbaa !68
  %i.az = freeze <8 x i16> %wide.vec
  %i.ba = bitcast <8 x i16> %i.az to <4 x i32>    ; 2 uses
  %wide.vec39 = load <8 x i16>, ptr %next.gep32, align 2, !tbaa !68
  %i.bb = freeze <8 x i16> %wide.vec39
  %i.bc = bitcast <8 x i16> %i.bb to <4 x i32>    ; 2 uses
  %wide.vec42 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !68 ; 2 uses
  %strided.vec43 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bd = shl <4 x i32> %i.ba, splat (i32 8)
  %i.be = and <4 x i32> %i.bd, splat (i32 63488)
  %i.bf = shl <4 x i32> %i.bc, splat (i32 3)
  %i.bg = and <4 x i32> %i.bf, splat (i32 2016)
  %i.bh = or disjoint <4 x i32> %i.bg, %i.be
  %i.bi = lshr <4 x i16> %strided.vec43, splat (i16 3)
  %i.bj = zext nneg <4 x i16> %i.bi to <4 x i32>
  %i.bk = or <4 x i32> %i.bh, %i.bj
  %i.bl = lshr <4 x i32> %i.ba, splat (i32 8)
  %i.bm = and <4 x i32> %i.bl, splat (i32 63488)
  %i.bn = lshr <4 x i32> %i.bc, splat (i32 13)
  %i.bo = and <4 x i32> %i.bn, splat (i32 2016)
  %i.bp = or disjoint <4 x i32> %i.bo, %i.bm
  %i.bq = lshr <4 x i16> %strided.vec44, splat (i16 3)
  %i.br = zext nneg <4 x i16> %i.bq to <4 x i32>
  %i.bs = or <4 x i32> %i.bp, %i.br
  %i.bt = shl nuw <4 x i32> %i.bs, splat (i32 16)
  %i.bu = or disjoint <4 x i32> %i.bt, %i.bk      ; 4 uses
  %i.bv = extractelement <4 x i32> %i.bu, i64 0
  store i32 %i.bv, ptr %next.gep34, align 4, !tbaa !3
  %i.bw = extractelement <4 x i32> %i.bu, i64 1
  store i32 %i.bw, ptr %next.gep35, align 4, !tbaa !3
  %i.bx = extractelement <4 x i32> %i.bu, i64 2
  store i32 %i.bx, ptr %next.gep36, align 4, !tbaa !3
  %i.by = extractelement <4 x i32> %i.bu, i64 3
  store i32 %i.by, ptr %next.gep37, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.am
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader49

.lr.ph.preheader49:                               ; preds = %.lr.ph.preheader, %middle.block
  %.048.i13.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  %.150.i12.ph = phi ptr [ %.049.i, %.lr.ph.preheader ], [ %i.ap, %middle.block ]
  %.152.i11.ph = phi ptr [ %.051.i, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  %.154.i10.ph = phi ptr [ %.053.i, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %.156.i9.ph = phi ptr [ %.055.i, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader49, %.lr.ph
  %.048.i13 = phi i32 [ %i.co, %.lr.ph ], [ %.048.i13.ph, %.lr.ph.preheader49 ]
  %.150.i12 = phi ptr [ %i.cc, %.lr.ph ], [ %.150.i12.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.152.i11 = phi ptr [ %i.cb, %.lr.ph ], [ %.152.i11.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.154.i10 = phi ptr [ %i.ca, %.lr.ph ], [ %.154.i10.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.156.i9 = phi ptr [ %i.cn, %.lr.ph ], [ %.156.i9.ph, %.lr.ph.preheader49 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.154.i10, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.152.i11, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.150.i12, i64 4 ; 2 uses
  %i.cd = load <2 x i16>, ptr %.154.i10, align 2, !tbaa !68 ; 2 uses
  %i.ce = load <2 x i16>, ptr %.152.i11, align 2, !tbaa !68 ; 2 uses
  %5 = shufflevector <2 x i16> %i.ce, <2 x i16> %i.cd, <2 x i32> <i32 0, i32 3>
  %6 = shufflevector <2 x i16> %i.cd, <2 x i16> %i.ce, <2 x i32> <i32 0, i32 3>
  %i.cf = load <2 x i16>, ptr %.150.i12, align 2, !tbaa !68
  %i.cg = shl <2 x i16> %5, <i16 3, i16 8>
  %i.ch = and <2 x i16> %i.cg, <i16 2016, i16 -2048>
  %i.ci = shl <2 x i16> %6, <i16 8, i16 3>
  %i.cj = and <2 x i16> %i.ci, <i16 -2048, i16 2016>
  %i.ck = or disjoint <2 x i16> %i.ch, %i.cj
  %i.cl = lshr <2 x i16> %i.cf, splat (i16 3)
  %i.cm = or <2 x i16> %i.ck, %i.cl
  store <2 x i16> %i.cm, ptr %.156.i9, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw i8, ptr %.156.i9, i64 8 ; 2 uses
  %i.co = add nuw nsw i32 %.048.i13, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !178

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.156.i.lcssa = phi ptr [ %.055.i, %bb.d ], [ %i.at, %middle.block ], [ %i.cn, %.lr.ph ]
  %.154.i.lcssa = phi ptr [ %.053.i, %bb.d ], [ %i.ar, %middle.block ], [ %i.ca, %.lr.ph ]
  %.152.i.lcssa = phi ptr [ %.051.i, %bb.d ], [ %i.aq, %middle.block ], [ %i.cb, %.lr.ph ]
  %.150.i.lcssa = phi ptr [ %.049.i, %bb.d ], [ %i.ap, %middle.block ], [ %i.cc, %.lr.ph ]
  %i.cp = and i32 %.1.i, 1
  %.not61.i = icmp eq i32 %i.cp, 0
  br i1 %.not61.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cq = load i16, ptr %.154.i.lcssa, align 2, !tbaa !68
  %i.cr = load i16, ptr %.152.i.lcssa, align 2, !tbaa !68
  %i.cs = load i16, ptr %.150.i.lcssa, align 2, !tbaa !68
  %i.ct = shl i16 %i.cq, 8
  %i.cu = and i16 %i.ct, -2048
  %i.cv = shl i16 %i.cr, 3
  %i.cw = and i16 %i.cv, 2016
  %i.cx = or disjoint i16 %i.cw, %i.cu
  %i.cy = lshr i16 %i.cs, 3
  %i.cz = or i16 %i.cx, %i.cy
  store i16 %i.cz, ptr %.156.i.lcssa, align 2, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.da = icmp samesign ugt i32 %.in, 1
  br i1 %i.da, label %bb.b, label %rgb_rgb565_convert_le.exit, !llvm.loop !179

rgb_rgb565_convert_le.exit:                       ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ycc_rgb565D_convert(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3, i32 %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 28, ptr %i.b, align 8, !tbaa !36
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !40
  tail call void %i.c(ptr noundef nonnull %0) #5, !inline_history !180
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @gray_rgb565D_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 4 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph20, label %gray_rgb565D_convert_le.exit

.lr.ph20:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !182
  %i.f = and i32 %i.e, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @dither_matrix, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !183
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !67
  %i.l = load ptr, ptr %1, align 8, !tbaa !65
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph20, %bb.f
  %.in = phi i32 [ %4, %.lr.ph20 ], [ %i.m, %bb.f ] ; 2 uses
  %.0.i18 = phi i64 [ %i.i, %.lr.ph20 ], [ %.1.i.lcssa, %bb.f ] ; 3 uses
  %.053.i17 = phi i32 [ %i.k, %.lr.ph20 ], [ %.154.i, %bb.f ] ; 2 uses
  %.055.i16 = phi i32 [ %2, %.lr.ph20 ], [ %i.n, %bb.f ] ; 2 uses
  %.062.i15 = phi ptr [ %3, %.lr.ph20 ], [ %i.r, %bb.f ] ; 2 uses
  %i.m = add nsw i32 %.in, -1
  %i.n = add i32 %.055.i16, 1
  %i.o = zext i32 %.055.i16 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.062.i15, i64 8
  %i.s = load ptr, ptr %.062.i15, align 8, !tbaa !71 ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 3
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = load i16, ptr %i.q, align 2, !tbaa !68
  %i.x = zext i16 %i.w to i64
  %i.y = and i64 %.0.i18, 255
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.y
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.x
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !68 ; 3 uses
  %i.ac = shl i16 %i.ab, 8
  %i.ad = and i16 %i.ac, -2048
  %i.ae = shl i16 %i.ab, 3
  %i.af = and i16 %i.ae, 2016
  %i.ag = lshr i16 %i.ab, 3
  %i.ah = or i16 %i.af, %i.ag
  %i.ai = or i16 %i.ah, %i.ad
  store i16 %i.ai, ptr %i.s, align 2, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ak = add i32 %.053.i17, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.059.i = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.057.i = phi ptr [ %i.aj, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %.154.i = phi i32 [ %i.ak, %bb.c ], [ %.053.i17, %bb.b ] ; 3 uses
  %i.al = lshr i32 %.154.i, 1                     ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.1.i12 = phi i64 [ %i.bv, %.lr.ph ], [ %.0.i18, %bb.d ] ; 2 uses
  %.056.i11 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %bb.d ]
  %.158.i10 = phi ptr [ %i.bw, %.lr.ph ], [ %.057.i, %bb.d ] ; 2 uses
  %.160.i9 = phi ptr [ %i.ax, %.lr.ph ], [ %.059.i, %bb.d ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.160.i9, i64 2
  %i.an = load i16, ptr %.160.i9, align 2, !tbaa !68
  %i.ao = zext i16 %i.an to i64
  %i.ap = and i64 %.1.i12, 255                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ao
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !68
  %i.at = shl nuw nsw i64 %i.ap, 24
  %i.au = lshr i64 %.1.i12, 8                     ; 2 uses
  %i.av = and i64 %i.au, 16776960
  %i.aw = or disjoint i64 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.160.i9, i64 4 ; 2 uses
  %i.ay = load i16, ptr %i.am, align 2, !tbaa !68
  %i.az = zext i16 %i.ay to i64
  %i.ba = and i64 %i.au, 255                      ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.az
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !68
  %i.be = insertelement <2 x i16> poison, i16 %i.bd, i64 0
  %i.bf = insertelement <2 x i16> %i.be, i16 %i.as, i64 1 ; 3 uses
  %i.bg = shl <2 x i16> %i.bf, splat (i16 8)
  %i.bh = and <2 x i16> %i.bg, splat (i16 -2048)
  %i.bi = shl <2 x i16> %i.bf, splat (i16 3)
  %i.bj = and <2 x i16> %i.bi, splat (i16 2016)
  %i.bk = lshr <2 x i16> %i.bf, splat (i16 3)
  %i.bl = or <2 x i16> %i.bj, %i.bk
  %i.bm = or <2 x i16> %i.bl, %i.bh               ; 2 uses
  %i.bn = extractelement <2 x i16> %i.bm, i64 0
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw i32 %i.bo, 16
  %i.bq = extractelement <2 x i16> %i.bm, i64 1
  %i.br = zext i16 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = shl nuw nsw i64 %i.ba, 24
  %i.bu = lshr exact i64 %i.aw, 8
  %i.bv = or disjoint i64 %i.bu, %i.bt            ; 2 uses
  store i32 %i.bs, ptr %.158.i10, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %.158.i10, i64 8 ; 2 uses
  %i.bx = add nuw nsw i32 %.056.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.160.i.lcssa = phi ptr [ %.059.i, %bb.d ], [ %i.ax, %.lr.ph ]
  %.158.i.lcssa = phi ptr [ %.057.i, %bb.d ], [ %i.bw, %.lr.ph ]
  %.1.i.lcssa = phi i64 [ %.0.i18, %bb.d ], [ %i.bv, %.lr.ph ] ; 2 uses
  %i.by = and i32 %.154.i, 1
  %.not64.i = icmp eq i32 %i.by, 0
  br i1 %.not64.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bz = load i16, ptr %.160.i.lcssa, align 2, !tbaa !68
  %i.ca = zext i16 %i.bz to i64
  %i.cb = and i64 %.1.i.lcssa, 255
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ca
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !68 ; 3 uses
  %i.cf = shl i16 %i.ce, 8
  %i.cg = and i16 %i.cf, -2048
  %i.ch = shl i16 %i.ce, 3
  %i.ci = and i16 %i.ch, 2016
  %i.cj = lshr i16 %i.ce, 3
  %i.ck = or i16 %i.ci, %i.cj
  %i.cl = or i16 %i.ck, %i.cg
  store i16 %i.cl, ptr %.158.i.lcssa, align 2, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.cm = icmp samesign ugt i32 %.in, 1
  br i1 %i.cm, label %bb.b, label %gray_rgb565D_convert_le.exit, !llvm.loop !185

gray_rgb565D_convert_le.exit:                     ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_rgb565D_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
end_hunk_0
