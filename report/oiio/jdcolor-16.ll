inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@rgb_rgb_convert:bb.a
.lr.ph112.preheader:                              ; preds = %bb.j
  %i.lp = load ptr, ptr %.024.i60113, align 8, !tbaa !68 ; 8 uses
  br i1 %min.iters.check252, label %.lr.ph112.preheader268, label %vector.memcheck235

vector.memcheck235:                               ; preds = %.lr.ph112.preheader
  %scevgep236 = getelementptr i8, ptr %i.lp, i64 %i.la ; 3 uses
  %scevgep237 = getelementptr i8, ptr %i.li, i64 %i.lb
  %scevgep238 = getelementptr i8, ptr %i.lk, i64 %i.lb
  %scevgep239 = getelementptr i8, ptr %i.lm, i64 %i.lb
  %bound0240 = icmp ult ptr %i.lp, %scevgep237
  %bound1241 = icmp ult ptr %i.li, %scevgep236
  %found.conflict242 = and i1 %bound0240, %bound1241
  %bound0243 = icmp ult ptr %i.lp, %scevgep238
  %bound1244 = icmp ult ptr %i.lk, %scevgep236
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %found.conflict242, %found.conflict245
  %bound0247 = icmp ult ptr %i.lp, %scevgep239
  %bound1248 = icmp ult ptr %i.lm, %scevgep236
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  br i1 %conflict.rdx250, label %.lr.ph112.preheader268, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck235
  %i.lq = getelementptr i8, ptr %i.lp, i64 %i.lc
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph253
  %index257 = phi i64 [ 0, %vector.ph253 ], [ %index.next263, %vector.body256 ] ; 5 uses
  %i.lr = mul i64 %index257, 6
  %next.gep258 = getelementptr i8, ptr %i.lp, i64 %i.lr
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %index257
  %wide.load259 = load <8 x i16>, ptr %i.ls, align 2, !tbaa !70, !alias.scope !161
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %index257
  %wide.load260 = load <8 x i16>, ptr %i.lt, align 2, !tbaa !70, !alias.scope !164
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %index257
  %wide.load261 = load <8 x i16>, ptr %i.lu, align 2, !tbaa !70, !alias.scope !166
  %i.lv = shufflevector <8 x i16> %wide.load259, <8 x i16> %wide.load260, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lw = shufflevector <8 x i16> %wide.load261, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec262 = shufflevector <16 x i16> %i.lv, <16 x i16> %i.lw, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec262, ptr %next.gep258, align 2, !tbaa !70, !alias.scope !168, !noalias !170
  %index.next263 = add nuw i64 %index257, 8       ; 2 uses
  %i.lx = icmp eq i64 %index.next263, %n.vec255
  br i1 %i.lx, label %middle.block264, label %vector.body256, !llvm.loop !171

middle.block264:                                  ; preds = %vector.body256
  br i1 %cmp.n265, label %.loopexit, label %.lr.ph112.preheader268

.lr.ph112.preheader268:                           ; preds = %vector.memcheck235, %.lr.ph112.preheader, %middle.block264
  %indvars.iv160.ph = phi i64 [ 0, %vector.memcheck235 ], [ 0, %.lr.ph112.preheader ], [ %n.vec255, %middle.block264 ] ; 6 uses
  %.023.i62110.ph = phi ptr [ %i.lp, %vector.memcheck235 ], [ %i.lp, %.lr.ph112.preheader ], [ %i.lq, %middle.block264 ] ; 5 uses
  br i1 %lcmp.mod300.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader268
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv160.ph
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !70
  store i16 %i.lz, ptr %.023.i62110.ph, align 2, !tbaa !70
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv160.ph
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !70
  %i.mc = getelementptr inbounds nuw i8, ptr %.023.i62110.ph, i64 2
  store i16 %i.mb, ptr %i.mc, align 2, !tbaa !70
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %indvars.iv160.ph
  %i.me = load i16, ptr %i.md, align 2, !tbaa !70
  %i.mf = getelementptr inbounds nuw i8, ptr %.023.i62110.ph, i64 4
  store i16 %i.me, ptr %i.mf, align 2, !tbaa !70
  %i.mg = getelementptr inbounds nuw i8, ptr %.023.i62110.ph, i64 6
  %indvars.iv.next161.prol = or disjoint i64 %indvars.iv160.ph, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol, %.lr.ph112.preheader268
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %.lr.ph112.preheader268 ], [ %indvars.iv.next161.prol, %.lr.ph112.prol ]
  %.023.i62110.unr = phi ptr [ %.023.i62110.ph, %.lr.ph112.preheader268 ], [ %i.mg, %.lr.ph112.prol ]
  %i.mh = icmp eq i64 %indvars.iv160.ph, %i.ld
  br i1 %i.mh, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %.lr.ph112 ], [ %indvars.iv160.unr, %.lr.ph112.prol.loopexit ] ; 5 uses
  %.023.i62110 = phi ptr [ %i.mz, %.lr.ph112 ], [ %.023.i62110.unr, %.lr.ph112.prol.loopexit ] ; 7 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv160
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !70
  store i16 %i.mj, ptr %.023.i62110, align 2, !tbaa !70
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv160
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !70
  %i.mm = getelementptr inbounds nuw i8, ptr %.023.i62110, i64 2
  store i16 %i.ml, ptr %i.mm, align 2, !tbaa !70
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %indvars.iv160
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !70
  %i.mp = getelementptr inbounds nuw i8, ptr %.023.i62110, i64 4
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !70
  %i.mq = getelementptr inbounds nuw i8, ptr %.023.i62110, i64 6
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 3 uses
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv.next161
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !70
  store i16 %i.ms, ptr %i.mq, align 2, !tbaa !70
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv.next161
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !70
  %i.mv = getelementptr inbounds nuw i8, ptr %.023.i62110, i64 8
  store i16 %i.mu, ptr %i.mv, align 2, !tbaa !70
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %indvars.iv.next161
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !70
  %i.my = getelementptr inbounds nuw i8, ptr %.023.i62110, i64 10
  store i16 %i.mx, ptr %i.my, align 2, !tbaa !70
  %i.mz = getelementptr inbounds nuw i8, ptr %.023.i62110, i64 12
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %exitcond164.not.1 = icmp eq i64 %indvars.iv.next161.1, %wide.trip.count163
  br i1 %exitcond164.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !172

rgb_extrgb_convert_internal.exit:                 ; preds = %..loopexit74_crit_edge.us, %..loopexit72_crit_edge.us, %..loopexit70_crit_edge.us, %..loopexit68_crit_edge.us, %..loopexit66_crit_edge.us, %.loopexit64, %.loopexit, %.lr.ph80, %.lr.ph85, %.lr.ph91, %.lr.ph97, %.lr.ph103, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ycc_rgb565_convert(ptr noundef %0, ptr readnone captures(none) %1, i32 %2, ptr readnone captures(none) %3, i32 %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 28, ptr %i.b, align 8, !tbaa !36
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !40
  tail call void %i.c(ptr noundef nonnull %0) #5, !inline_history !173
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @gray_rgb565_convert(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph17, label %gray_rgb565_convert_le.exit

.lr.ph17:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !67
  %i.d = load ptr, ptr %1, align 8, !tbaa !65
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph17, %bb.f
  %.in = phi i32 [ %4, %.lr.ph17 ], [ %i.e, %bb.f ] ; 2 uses
  %.0.i15 = phi i32 [ %i.c, %.lr.ph17 ], [ %.1.i, %bb.f ] ; 2 uses
  %.041.i14 = phi ptr [ %3, %.lr.ph17 ], [ %i.j, %bb.f ] ; 2 uses
  %.042.i13 = phi i32 [ %2, %.lr.ph17 ], [ %i.f, %bb.f ] ; 2 uses
  %i.e = add nsw i32 %.in, -1
  %i.f = add i32 %.042.i13, 1
  %i.g = zext i32 %.042.i13 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.041.i14, i64 8
  %i.k = load ptr, ptr %.041.i14, align 8, !tbaa !68 ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 3
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.o = load i16, ptr %i.i, align 2, !tbaa !70   ; 3 uses
  %i.p = shl i16 %i.o, 8
  %i.q = and i16 %i.p, -2048
  %i.r = shl i16 %i.o, 3
  %i.s = and i16 %i.r, 2016
  %i.t = lshr i16 %i.o, 3
  %i.u = or i16 %i.s, %i.t
  %i.v = or i16 %i.u, %i.q
  store i16 %i.v, ptr %i.k, align 2, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.x = add i32 %.0.i15, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.038.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %.036.i = phi ptr [ %i.w, %bb.c ], [ %i.k, %bb.b ] ; 7 uses
  %.1.i = phi i32 [ %i.x, %bb.c ], [ %.0.i15, %bb.b ] ; 5 uses
  %i.y = lshr i32 %.1.i, 1                        ; 2 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.z = lshr i32 %.1.i, 1
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %.1.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aa, 2147483644              ; 5 uses
  %i.ab = trunc nuw nsw i64 %n.vec to i32
  %i.ac = shl nuw nsw i64 %n.vec, 3
  %i.ad = getelementptr i8, ptr %.036.i, i64 %i.ac ; 2 uses
  %i.ae = shl nuw nsw i64 %n.vec, 2
  %i.af = getelementptr i8, ptr %.038.i, i64 %i.ae ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = shl i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.036.i, i64 %i.ag
  %i.ah = getelementptr i8, ptr %.036.i, i64 %i.ag
  %next.gep22 = getelementptr i8, ptr %i.ah, i64 8
  %i.ai = getelementptr i8, ptr %.036.i, i64 %i.ag
  %next.gep23 = getelementptr i8, ptr %i.ai, i64 16
  %i.aj = getelementptr i8, ptr %.036.i, i64 %i.ag
  %next.gep24 = getelementptr i8, ptr %i.aj, i64 24
  %i.ak = shl i64 %index, 2
  %next.gep25 = getelementptr i8, ptr %.038.i, i64 %i.ak
  %wide.vec = load <8 x i16>, ptr %next.gep25, align 2, !tbaa !70 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec26 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %5 = zext <4 x i16> %strided.vec to <4 x i32>   ; 3 uses
  %i.al = shl nuw nsw <4 x i32> %5, splat (i32 8)
  %i.am = and <4 x i32> %i.al, splat (i32 63488)
  %i.an = shl nuw nsw <4 x i32> %5, splat (i32 3)
  %i.ao = and <4 x i32> %i.an, splat (i32 2016)
  %i.ap = lshr <4 x i32> %5, splat (i32 3)
  %i.aq = or <4 x i32> %i.ao, %i.ap
  %i.ar = or <4 x i32> %i.aq, %i.am
  %6 = zext <4 x i16> %strided.vec26 to <4 x i32> ; 3 uses
  %i.as = shl nuw nsw <4 x i32> %6, splat (i32 8)
  %i.at = and <4 x i32> %i.as, splat (i32 63488)
  %i.au = shl nuw nsw <4 x i32> %6, splat (i32 3)
  %i.av = and <4 x i32> %i.au, splat (i32 2016)
  %i.aw = lshr <4 x i32> %6, splat (i32 3)
  %i.ax = or <4 x i32> %i.av, %i.aw
  %i.ay = or <4 x i32> %i.ax, %i.at
  %i.az = shl nuw <4 x i32> %i.ay, splat (i32 16)
  %i.ba = or disjoint <4 x i32> %i.az, %i.ar      ; 4 uses
  %i.bb = extractelement <4 x i32> %i.ba, i64 0
  %i.bc = extractelement <4 x i32> %i.ba, i64 1
  %i.bd = extractelement <4 x i32> %i.ba, i64 2
  %i.be = extractelement <4 x i32> %i.ba, i64 3
  store i32 %i.bb, ptr %next.gep, align 4, !tbaa !3
  store i32 %i.bc, ptr %next.gep22, align 4, !tbaa !3
  store i32 %i.bd, ptr %next.gep23, align 4, !tbaa !3
  store i32 %i.be, ptr %next.gep24, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader29

.lr.ph.preheader29:                               ; preds = %.lr.ph.preheader, %middle.block
  %.035.i11.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.137.i10.ph = phi ptr [ %.036.i, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  %.139.i9.ph = phi ptr [ %.038.i, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader29, %.lr.ph
  %.035.i11 = phi i32 [ %i.bq, %.lr.ph ], [ %.035.i11.ph, %.lr.ph.preheader29 ]
  %.137.i10 = phi ptr [ %i.bp, %.lr.ph ], [ %.137.i10.ph, %.lr.ph.preheader29 ] ; 2 uses
  %.139.i9 = phi ptr [ %i.bg, %.lr.ph ], [ %.139.i9.ph, %.lr.ph.preheader29 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.139.i9, i64 4 ; 2 uses
  %i.bh = load <2 x i16>, ptr %.139.i9, align 2, !tbaa !70 ; 3 uses
  %i.bi = shl <2 x i16> %i.bh, splat (i16 8)
  %i.bj = and <2 x i16> %i.bi, splat (i16 -2048)
  %i.bk = shl <2 x i16> %i.bh, splat (i16 3)
  %i.bl = and <2 x i16> %i.bk, splat (i16 2016)
  %i.bm = lshr <2 x i16> %i.bh, splat (i16 3)
  %i.bn = or <2 x i16> %i.bl, %i.bm
  %i.bo = or <2 x i16> %i.bn, %i.bj
  store <2 x i16> %i.bo, ptr %.137.i10, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw i8, ptr %.137.i10, i64 8 ; 2 uses
  %i.bq = add nuw nsw i32 %.035.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !175

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.139.i.lcssa = phi ptr [ %.038.i, %bb.d ], [ %i.af, %middle.block ], [ %i.bg, %.lr.ph ]
  %.137.i.lcssa = phi ptr [ %.036.i, %bb.d ], [ %i.ad, %middle.block ], [ %i.bp, %.lr.ph ]
  %i.br = and i32 %.1.i, 1
  %.not44.i = icmp eq i32 %i.br, 0
  br i1 %.not44.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bs = load i16, ptr %.139.i.lcssa, align 2, !tbaa !70 ; 3 uses
  %i.bt = shl i16 %i.bs, 8
  %i.bu = and i16 %i.bt, -2048
  %i.bv = shl i16 %i.bs, 3
  %i.bw = and i16 %i.bv, 2016
  %i.bx = lshr i16 %i.bs, 3
  %i.by = or i16 %i.bw, %i.bx
  %i.bz = or i16 %i.by, %i.bu
  store i16 %i.bz, ptr %.137.i.lcssa, align 2, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.ca = icmp samesign ugt i32 %.in, 1
  br i1 %i.ca, label %bb.b, label %gray_rgb565_convert_le.exit, !llvm.loop !176

gray_rgb565_convert_le.exit:                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_rgb565_convert(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4) #2 {
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 3 uses
  %i.q = add i32 %.059.i17, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.058.i18, i64 8
  %i.s = load ptr, ptr %.058.i18, align 8, !tbaa !68 ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 3
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.w = load i16, ptr %i.l, align 2, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.y = load i16, ptr %i.n, align 2, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.aa = load i16, ptr %i.p, align 2, !tbaa !70
  %i.ab = shl i16 %i.w, 8
  %i.ac = and i16 %i.ab, -2048
  %i.ad = shl i16 %i.y, 3
  %i.ae = and i16 %i.ad, 2016
  %i.af = or disjoint i16 %i.ae, %i.ac
  %i.ag = lshr i16 %i.aa, 3
  %i.ah = or i16 %i.af, %i.ag
  store i16 %i.ah, ptr %i.s, align 2, !tbaa !70
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
  %wide.vec = load <8 x i16>, ptr %next.gep33, align 2, !tbaa !70 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec38 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %5 = zext <4 x i16> %strided.vec to <4 x i32>
  %wide.vec39 = load <8 x i16>, ptr %next.gep32, align 2, !tbaa !70 ; 2 uses
  %strided.vec40 = shufflevector <8 x i16> %wide.vec39, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec41 = shufflevector <8 x i16> %wide.vec39, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %6 = zext <4 x i16> %strided.vec40 to <4 x i32>
  %wide.vec42 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !70 ; 2 uses
  %strided.vec43 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.az = shl nuw nsw <4 x i32> %5, splat (i32 8)
  %i.ba = and <4 x i32> %i.az, splat (i32 63488)
  %i.bb = shl nuw nsw <4 x i32> %6, splat (i32 3)
  %i.bc = and <4 x i32> %i.bb, splat (i32 2016)
  %i.bd = or disjoint <4 x i32> %i.bc, %i.ba
  %i.be = lshr <4 x i16> %strided.vec43, splat (i16 3)
  %i.bf = zext nneg <4 x i16> %i.be to <4 x i32>
  %i.bg = or <4 x i32> %i.bd, %i.bf
  %7 = zext <4 x i16> %strided.vec38 to <4 x i32>
  %8 = zext <4 x i16> %strided.vec41 to <4 x i32>
  %9 = shl nuw nsw <4 x i32> %7, splat (i32 8)
  %i.bh = and <4 x i32> %9, splat (i32 63488)
  %10 = shl nuw nsw <4 x i32> %8, splat (i32 3)
  %i.bi = and <4 x i32> %10, splat (i32 2016)
  %i.bj = or disjoint <4 x i32> %i.bi, %i.bh
  %i.bk = lshr <4 x i16> %strided.vec44, splat (i16 3)
  %i.bl = zext nneg <4 x i16> %i.bk to <4 x i32>
  %i.bm = or <4 x i32> %i.bj, %i.bl
  %i.bn = shl nuw <4 x i32> %i.bm, splat (i32 16)
  %i.bo = or disjoint <4 x i32> %i.bn, %i.bg      ; 4 uses
  %i.bp = extractelement <4 x i32> %i.bo, i64 0
  %i.bq = extractelement <4 x i32> %i.bo, i64 1
  %i.br = extractelement <4 x i32> %i.bo, i64 2
  %i.bs = extractelement <4 x i32> %i.bo, i64 3
  store i32 %i.bp, ptr %next.gep34, align 4, !tbaa !3
  store i32 %i.bq, ptr %next.gep35, align 4, !tbaa !3
  store i32 %i.br, ptr %next.gep36, align 4, !tbaa !3
  store i32 %i.bs, ptr %next.gep37, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !177

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
  %.048.i13 = phi i32 [ %i.ck, %.lr.ph ], [ %.048.i13.ph, %.lr.ph.preheader49 ]
  %.150.i12 = phi ptr [ %i.bw, %.lr.ph ], [ %.150.i12.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.152.i11 = phi ptr [ %i.bv, %.lr.ph ], [ %.152.i11.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.154.i10 = phi ptr [ %i.bu, %.lr.ph ], [ %.154.i10.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.156.i9 = phi ptr [ %i.cj, %.lr.ph ], [ %.156.i9.ph, %.lr.ph.preheader49 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.154.i10, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.152.i11, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.150.i12, i64 4 ; 2 uses
  %i.bx = load <2 x i16>, ptr %.154.i10, align 2, !tbaa !70 ; 2 uses
  %i.by = load <2 x i16>, ptr %.152.i11, align 2, !tbaa !70 ; 2 uses
  %i.bz = shufflevector <2 x i16> %i.by, <2 x i16> %i.bx, <2 x i32> <i32 0, i32 3>
  %i.ca = shufflevector <2 x i16> %i.bx, <2 x i16> %i.by, <2 x i32> <i32 0, i32 3>
  %i.cb = load <2 x i16>, ptr %.150.i12, align 2, !tbaa !70
  %i.cc = shl <2 x i16> %i.bz, <i16 3, i16 8>
  %i.cd = and <2 x i16> %i.cc, <i16 2016, i16 -2048>
  %i.ce = shl <2 x i16> %i.ca, <i16 8, i16 3>
  %i.cf = and <2 x i16> %i.ce, <i16 -2048, i16 2016>
  %i.cg = or disjoint <2 x i16> %i.cd, %i.cf
  %i.ch = lshr <2 x i16> %i.cb, splat (i16 3)
  %i.ci = or <2 x i16> %i.cg, %i.ch
  store <2 x i16> %i.ci, ptr %.156.i9, align 4, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.156.i9, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.048.i13, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !178

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.156.i.lcssa = phi ptr [ %.055.i, %bb.d ], [ %i.at, %middle.block ], [ %i.cj, %.lr.ph ]
  %.154.i.lcssa = phi ptr [ %.053.i, %bb.d ], [ %i.ar, %middle.block ], [ %i.bu, %.lr.ph ]
  %.152.i.lcssa = phi ptr [ %.051.i, %bb.d ], [ %i.aq, %middle.block ], [ %i.bv, %.lr.ph ]
  %.150.i.lcssa = phi ptr [ %.049.i, %bb.d ], [ %i.ap, %middle.block ], [ %i.bw, %.lr.ph ]
  %i.cl = and i32 %.1.i, 1
  %.not61.i = icmp eq i32 %i.cl, 0
  br i1 %.not61.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cm = load i16, ptr %.154.i.lcssa, align 2, !tbaa !70
  %i.cn = load i16, ptr %.152.i.lcssa, align 2, !tbaa !70
  %i.co = load i16, ptr %.150.i.lcssa, align 2, !tbaa !70
  %i.cp = shl i16 %i.cm, 8
  %i.cq = and i16 %i.cp, -2048
  %i.cr = shl i16 %i.cn, 3
  %i.cs = and i16 %i.cr, 2016
  %i.ct = or disjoint i16 %i.cs, %i.cq
  %i.cu = lshr i16 %i.co, 3
  %i.cv = or i16 %i.ct, %i.cu
  store i16 %i.cv, ptr %.156.i.lcssa, align 2, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.cw = icmp samesign ugt i32 %.in, 1
  br i1 %i.cw, label %bb.b, label %rgb_rgb565_convert_le.exit, !llvm.loop !179

rgb_rgb565_convert_le.exit:                       ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ycc_rgb565D_convert(ptr noundef %0, ptr readnone captures(none) %1, i32 %2, ptr readnone captures(none) %3, i32 %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 28, ptr %i.b, align 8, !tbaa !36
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !40
  tail call void %i.c(ptr noundef nonnull %0) #5, !inline_history !180
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @gray_rgb565D_convert(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4) #2 {
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.062.i15, i64 8
  %i.s = load ptr, ptr %.062.i15, align 8, !tbaa !68 ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 3
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = load i16, ptr %i.q, align 2, !tbaa !70
  %i.x = zext i16 %i.w to i64
  %i.y = and i64 %.0.i18, 255
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.y
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.x
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !70 ; 3 uses
  %i.ac = shl i16 %i.ab, 8
  %i.ad = and i16 %i.ac, -2048
  %i.ae = shl i16 %i.ab, 3
  %i.af = and i16 %i.ae, 2016
  %i.ag = lshr i16 %i.ab, 3
  %i.ah = or i16 %i.af, %i.ag
  %i.ai = or i16 %i.ah, %i.ad
  store i16 %i.ai, ptr %i.s, align 2, !tbaa !70
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
  %i.an = load i16, ptr %.160.i9, align 2, !tbaa !70
  %i.ao = zext i16 %i.an to i64
  %i.ap = and i64 %.1.i12, 255                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ao
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !70
  %i.at = shl nuw nsw i64 %i.ap, 24
  %i.au = lshr i64 %.1.i12, 8                     ; 2 uses
  %i.av = and i64 %i.au, 16776960
  %i.aw = or disjoint i64 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.160.i9, i64 4 ; 2 uses
  %i.ay = load i16, ptr %i.am, align 2, !tbaa !70
  %i.az = zext i16 %i.ay to i64
  %i.ba = and i64 %i.au, 255                      ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.az
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !70
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
end_hunk_0
