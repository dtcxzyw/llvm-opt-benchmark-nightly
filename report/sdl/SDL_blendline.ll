Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blendline?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@SDL_BlendLine_ARGB8888:bb.a
bb.dc:                                            ; preds = %.split21
  %i.auq = sub nsw i32 %3, %1
  %i.aur = tail call i32 @llvm.abs.i32(i32 %i.auq, i1 true) ; 6 uses
  %i.aus = sub nsw i32 %4, %2
  %i.aut = tail call i32 @llvm.abs.i32(i32 %i.aus, i1 true) ; 6 uses
  %.not = icmp samesign ult i32 %i.aur, %i.aut
  br i1 %.not, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.auu = shl nuw nsw i32 %i.aut, 1              ; 2 uses
  %i.auv = sub nsw i32 %i.auu, %i.aur
  %i.auw = sub nsw i32 %i.aut, %i.aur
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.aux = shl nuw nsw i32 %i.aur, 1              ; 2 uses
  %i.auy = sub nsw i32 %i.aux, %i.aut
  %i.auz = sub nsw i32 %i.aur, %i.aut
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.01433.in = phi i32 [ %i.aur, %bb.dd ], [ %i.aut, %bb.de ]
  %.01430 = phi i32 [ %i.auv, %bb.dd ], [ %i.auy, %bb.de ]
  %.01429 = phi i32 [ %i.auu, %bb.dd ], [ %i.aux, %bb.de ]
  %.01428.in = phi i32 [ %i.auw, %bb.dd ], [ %i.auz, %bb.de ]
  %.01424 = phi i32 [ 1, %bb.dd ], [ 0, %bb.de ]  ; 2 uses
  %.01418 = phi i32 [ 0, %bb.dd ], [ 1, %bb.de ]  ; 2 uses
  %.01428 = shl nsw i32 %.01428.in, 1
  %i.ava = icmp sgt i32 %1, %3                    ; 2 uses
  %i.avb = sub nsw i32 0, %.01424
  %spec.select1766 = select i1 %i.ava, i32 %i.avb, i32 %.01424
  %spec.select1767 = select i1 %i.ava, i32 -1, i32 1
  %i.avc = icmp sgt i32 %2, %4                    ; 2 uses
  %i.avd = sub nsw i32 0, %.01418
  %.11419 = select i1 %i.avc, i32 %i.avd, i32 %.01418
  %.11417 = select i1 %i.avc, i32 -1, i32 1
  %.01433 = zext i1 %10 to i32
  %.11434 = add nuw nsw i32 %.01433.in, %.01433   ; 2 uses
  %.not1901 = icmp eq i32 %.11434, 0
  br i1 %.not1901, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.df
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.avf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph, %bb.dg
  %.014201803 = phi i32 [ %2, %.lr.ph ], [ %.11421, %bb.dg ] ; 2 uses
  %.014261802 = phi i32 [ %1, %.lr.ph ], [ %.11427, %bb.dg ] ; 2 uses
  %.114311801 = phi i32 [ %.01430, %.lr.ph ], [ %.21432, %bb.dg ] ; 2 uses
  %.014351800 = phi i32 [ 0, %.lr.ph ], [ %i.awr, %bb.dg ]
  %i.avg = load ptr, ptr %i.ave, align 8
  %i.avh = load i32, ptr %i.avf, align 8
  %i.avi = mul nsw i32 %i.avh, %.014201803
  %i.avj = sext i32 %i.avi to i64
  %i.avk = getelementptr inbounds i8, ptr %i.avg, i64 %i.avj
  %i.avl = shl nsw i32 %.014261802, 2
  %i.avm = sext i32 %i.avl to i64
  %i.avn = getelementptr inbounds i8, ptr %i.avk, i64 %i.avm ; 2 uses
  %i.avo = load i32, ptr %i.avn, align 4          ; 4 uses
  %i.avp = lshr i32 %i.avo, 16
  %i.avq = and i32 %i.avp, 255                    ; 2 uses
  %i.avr = lshr i32 %i.avo, 8
  %i.avs = and i32 %i.avo, -16777216
  %i.avt = mul nuw nsw i32 %i.avq, %.0
  %.lhs.trunc2107 = trunc i32 %i.avt to i16
  %i.avu = udiv i16 %.lhs.trunc2107, 255
  %i.avv = mul nuw nsw i32 %i.avq, %i.ae
  %.lhs.trunc2109 = trunc nuw i32 %i.avv to i16
  %i.avw = udiv i16 %.lhs.trunc2109, 255
  %narrow = add nuw nsw i16 %i.avu, %i.avw
  %i.avx = tail call i16 @llvm.umin.i16(i16 %narrow, i16 255)
  %spec.store.select37 = zext nneg i16 %i.avx to i32
  %i.avy = shl nuw nsw i32 %spec.store.select37, 16
  %i.avz = and i32 %i.avr, 255                    ; 2 uses
  %i.awa = and i32 %i.avo, 255                    ; 2 uses
  %i.awb = mul nuw nsw i32 %i.avz, %i.ad
  %.lhs.trunc2111 = trunc i32 %i.awb to i16
  %i.awc = mul nuw nsw i32 %i.avz, %i.ae
  %.lhs.trunc2113 = trunc nuw i32 %i.awc to i16
  %i.awd = mul nuw nsw i32 %i.awa, %i.ac
  %.lhs.trunc2115 = trunc i32 %i.awd to i16
  %i.awe = insertelement <2 x i16> poison, i16 %.lhs.trunc2111, i64 0
  %i.awf = insertelement <2 x i16> %i.awe, i16 %.lhs.trunc2115, i64 1
  %i.awg = udiv <2 x i16> %i.awf, splat (i16 255)
  %i.awh = mul nuw nsw i32 %i.awa, %i.ae
  %.lhs.trunc2117 = trunc nuw i32 %i.awh to i16
  %i.awi = insertelement <2 x i16> poison, i16 %.lhs.trunc2113, i64 0
  %i.awj = insertelement <2 x i16> %i.awi, i16 %.lhs.trunc2117, i64 1
  %i.awk = udiv <2 x i16> %i.awj, splat (i16 255)
  %i.awl = add nuw nsw <2 x i16> %i.awg, %i.awk
  %i.awm = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.awl, <2 x i16> splat (i16 255))
  %i.awn = shl nuw <2 x i16> %i.awm, <i16 8, i16 0>
  %i.awo = zext <2 x i16> %i.awn to <2 x i32>
  %i.awp = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %i.awo)
  %op.rdx2309 = or disjoint i32 %i.awp, %i.avs
  %op.rdx2310 = or disjoint i32 %op.rdx2309, %i.avy
  store i32 %op.rdx2310, ptr %i.avn, align 4
  %i.awq = icmp slt i32 %.114311801, 0            ; 3 uses
  %.01429..01428 = select i1 %i.awq, i32 %.01429, i32 %.01428
  %spec.select1766.spec.select1767 = select i1 %i.awq, i32 %spec.select1766, i32 %spec.select1767
  %.11419..11417 = select i1 %i.awq, i32 %.11419, i32 %.11417
  %.11421 = add nsw i32 %.014201803, %.11419..11417
  %.11427 = add nsw i32 %spec.select1766.spec.select1767, %.014261802
  %.21432 = add nsw i32 %.01429..01428, %.114311801
  %i.awr = add nuw nsw i32 %.014351800, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.awr, %.11434
  br i1 %exitcond.not, label %.loopexit, label %bb.dg, !llvm.loop !125

bb.dh:                                            ; preds = %bb.ch, %.split21
  %i.aws = sub nsw i32 %3, %1
  %i.awt = tail call i32 @llvm.abs.i32(i32 %i.aws, i1 true) ; 6 uses
  %i.awu = sub nsw i32 %4, %2
  %i.awv = tail call i32 @llvm.abs.i32(i32 %i.awu, i1 true) ; 6 uses
  %.not1698 = icmp samesign ult i32 %i.awt, %i.awv
  br i1 %.not1698, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aww = shl nuw nsw i32 %i.awv, 1              ; 2 uses
  %i.awx = sub nsw i32 %i.aww, %i.awt
  %i.awy = sub nsw i32 %i.awv, %i.awt
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.awz = shl nuw nsw i32 %i.awt, 1              ; 2 uses
  %i.axa = sub nsw i32 %i.awz, %i.awv
  %i.axb = sub nsw i32 %i.awt, %i.awv
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.01406.in = phi i32 [ %i.awt, %bb.di ], [ %i.awv, %bb.dj ]
  %.01404 = phi i32 [ %i.awx, %bb.di ], [ %i.axa, %bb.dj ]
  %.01403 = phi i32 [ %i.aww, %bb.di ], [ %i.awz, %bb.dj ]
  %.01402.in = phi i32 [ %i.awy, %bb.di ], [ %i.axb, %bb.dj ]
  %.01398 = phi i32 [ 1, %bb.di ], [ 0, %bb.dj ]  ; 2 uses
  %.01392 = phi i32 [ 0, %bb.di ], [ 1, %bb.dj ]  ; 2 uses
  %.01402 = shl nsw i32 %.01402.in, 1
  %i.axc = icmp sgt i32 %1, %3                    ; 2 uses
  %i.axd = sub nsw i32 0, %.01398
  %spec.select1768 = select i1 %i.axc, i32 %i.axd, i32 %.01398
  %spec.select1769 = select i1 %i.axc, i32 -1, i32 1
  %i.axe = icmp sgt i32 %2, %4                    ; 2 uses
  %i.axf = sub nsw i32 0, %.01392
  %.11393 = select i1 %i.axe, i32 %i.axf, i32 %.01392
  %.1 = select i1 %i.axe, i32 -1, i32 1
  %.01406 = zext i1 %10 to i32
  %.11407 = add nuw nsw i32 %.01406.in, %.01406   ; 2 uses
  %.not1906 = icmp eq i32 %.11407, 0
  br i1 %.not1906, label %.loopexit, label %.lr.ph1828

.lr.ph1828:                                       ; preds = %bb.dk
  %i.axg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axi = shl nuw i32 %.01390, 24
  %i.axj = shl nuw nsw i32 %.0, 16
  %i.axk = shl nuw nsw i32 %i.ad, 8
  %i.axl = or disjoint i32 %i.axi, %i.axk
  %i.axm = or i32 %i.axl, %i.axj
  %i.axn = or i32 %i.axm, %i.ac
  br label %bb.dl

bb.dl:                                            ; preds = %.lr.ph1828, %bb.dl
  %.013941827 = phi i32 [ %2, %.lr.ph1828 ], [ %.11395, %bb.dl ] ; 2 uses
  %.014001826 = phi i32 [ %1, %.lr.ph1828 ], [ %.11401, %bb.dl ] ; 2 uses
  %.114051825 = phi i32 [ %.01404, %.lr.ph1828 ], [ %.2, %bb.dl ] ; 2 uses
  %.014081824 = phi i32 [ 0, %.lr.ph1828 ], [ %i.axx, %bb.dl ]
  %i.axo = load ptr, ptr %i.axg, align 8
  %i.axp = load i32, ptr %i.axh, align 8
  %i.axq = mul nsw i32 %i.axp, %.013941827
  %i.axr = sext i32 %i.axq to i64
  %i.axs = getelementptr inbounds i8, ptr %i.axo, i64 %i.axr
  %i.axt = shl nsw i32 %.014001826, 2
  %i.axu = sext i32 %i.axt to i64
  %i.axv = getelementptr inbounds i8, ptr %i.axs, i64 %i.axu
  store i32 %i.axn, ptr %i.axv, align 4
  %i.axw = icmp slt i32 %.114051825, 0            ; 3 uses
  %.01403..01402 = select i1 %i.axw, i32 %.01403, i32 %.01402
  %spec.select1768.spec.select1769 = select i1 %i.axw, i32 %spec.select1768, i32 %spec.select1769
  %.11393..1 = select i1 %i.axw, i32 %.11393, i32 %.1
  %.11395 = add nsw i32 %.013941827, %.11393..1
  %.11401 = add nsw i32 %spec.select1768.spec.select1769, %.014001826
  %.2 = add nsw i32 %.01403..01402, %.114051825
  %i.axx = add nuw nsw i32 %.014081824, 1         ; 2 uses
  %exitcond1934.not = icmp eq i32 %i.axx, %.11407
  br i1 %exitcond1934.not, label %.loopexit, label %bb.dl, !llvm.loop !126

.loopexit:                                        ; preds = %bb.dg, %bb.db, %bb.cw, %bb.cr, %bb.cm, %bb.dl, %bb.cc, %bb.bx, %bb.bs, %bb.bn, %bb.bi, %.prol.loopexit, %.lr.ph1852.new, %bb.ay, %bb.au, %bb.aq, %bb.am, %bb.ai, %.prol.loopexit2340, %.lr.ph1876.new, %.lr.ph1880, %.lr.ph1884, %.lr.ph1888, %.lr.ph1892, %.lr.ph1896, %scalar.ph2290, %middle.block, %middle.block2221, %middle.block2240, %middle.block2263, %middle.block2286, %middle.block2300, %bb.df, %bb.da, %bb.cv, %bb.cq, %bb.cl, %bb.dk, %bb.cb, %bb.bw, %bb.br, %bb.bm, %bb.bh, %bb.cg, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.ac
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @SDL_BlendLine_XRGB8888(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i1 noundef zeroext %10) unnamed_addr #3 {
bb.a:
  %i.a = add i32 %5, -1
  %or.cond = icmp ult i32 %i.a, 2
  %i.b = zext i8 %6 to i32                        ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %9 to i32                        ; 4 uses
  %11 = zext i8 %7 to i32
  %i.d = mul nuw nsw i32 %i.c, %i.b
  %.lhs.trunc = trunc nuw i32 %i.d to i16
  %i.e = udiv i16 %.lhs.trunc, 255
  %i.f = zext nneg i16 %i.e to i32
  %i.g = mul nuw nsw i32 %i.c, %11
  %.lhs.trunc1726 = trunc nuw i32 %i.g to i16
  %i.h = udiv i16 %.lhs.trunc1726, 255
  %.zext1727 = zext nneg i16 %i.h to i32
  %i.i = zext i8 %8 to i32
  %i.j = mul nuw nsw i32 %i.c, %i.i
  %.lhs.trunc1728 = trunc nuw i32 %i.j to i16
  %i.k = udiv i16 %.lhs.trunc1728, 255
  %.zext1729 = zext nneg i16 %i.k to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = zext i8 %7 to i32
  %i.m = zext i8 %8 to i32
  %i.n = zext i8 %9 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.01346 = phi i32 [ %i.c, %bb.b ], [ %i.n, %bb.c ]
  %.01345 = phi i32 [ %.zext1729, %bb.b ], [ %i.m, %bb.c ] ; 29 uses
  %.01344 = phi i32 [ %.zext1727, %bb.b ], [ %i.l, %bb.c ] ; 29 uses
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.c ]  ; 29 uses
  %i.o = xor i32 %.01346, 255                     ; 39 uses
  %i.p = icmp eq i32 %2, %4
  br i1 %i.p, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %5)
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %.split, label %bb.z

.split:                                           ; preds = %bb.e
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  switch i32 %i.s, label %bb.z [
    i32 0, label %bb.f
    i32 4, label %bb.j
    i32 1, label %bb.n
    i32 5, label %bb.n
    i32 2, label %bb.r
    i32 3, label %bb.v
  ]

bb.f:                                             ; preds = %.split
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = sdiv i32 %i.u, %i.z
  %.not1699 = icmp sgt i32 %1, %3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = mul nsw i32 %i.aa, %2
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  br i1 %.not1699, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = sub i32 %3, %1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = sext i32 %3 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.aj
  %spec.select.idx = select i1 %10, i64 0, i64 4
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ak, i64 %spec.select.idx
  %i.al = sub i32 %1, %3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i32 [ %i.al, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %.11368 = phi ptr [ %spec.select, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.am = zext i1 %10 to i32
  %i.an = add nuw nsw i32 %.sink, %i.am           ; 3 uses
  %.not17001849 = icmp eq i32 %i.an, 0
  br i1 %.not17001849, label %.loopexit, label %.lr.ph1852.preheader

.lr.ph1852.preheader:                             ; preds = %bb.i
  %i.ao = zext i32 %.sink to i64
  %i.ap = zext i1 %10 to i64
  %i.aq = add nuw nsw i64 %i.ao, %i.ap            ; 3 uses
  %min.iters.check2206 = icmp samesign ult i64 %i.aq, 4
  br i1 %min.iters.check2206, label %.lr.ph1852.preheader2262, label %vector.ph2207

vector.ph2207:                                    ; preds = %.lr.ph1852.preheader
  %n.vec2208 = and i64 %i.aq, 8589934588          ; 4 uses
  %i.ar = trunc i64 %n.vec2208 to i32
  %i.as = sub i32 %i.an, %i.ar
  %i.at = shl nuw nsw i64 %n.vec2208, 2
  %i.au = getelementptr i8, ptr %.11368, i64 %i.at
  %broadcast.splatinsert2209 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat2210 = shufflevector <4 x i32> %broadcast.splatinsert2209, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert2211 = insertelement <4 x i32> poison, i32 %.0, i64 0
  %broadcast.splat2212 = shufflevector <4 x i32> %broadcast.splatinsert2211, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2213 = insertelement <4 x i32> poison, i32 %.01344, i64 0
  %broadcast.splat2214 = shufflevector <4 x i32> %broadcast.splatinsert2213, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2215 = insertelement <4 x i32> poison, i32 %.01345, i64 0
  %broadcast.splat2216 = shufflevector <4 x i32> %broadcast.splatinsert2215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body2217

vector.body2217:                                  ; preds = %vector.body2217, %vector.ph2207
  %index2218 = phi i64 [ 0, %vector.ph2207 ], [ %index.next2221, %vector.body2217 ] ; 2 uses
  %i.av = shl i64 %index2218, 2
  %next.gep2219 = getelementptr i8, ptr %.11368, i64 %i.av ; 2 uses
  %wide.load2220 = load <4 x i32>, ptr %next.gep2219, align 4 ; 3 uses
  %i.aw = lshr <4 x i32> %wide.load2220, splat (i32 16)
  %i.ax = and <4 x i32> %i.aw, splat (i32 255)
  %i.ay = lshr <4 x i32> %wide.load2220, splat (i32 8)
  %i.az = and <4 x i32> %i.ay, splat (i32 255)
  %i.ba = and <4 x i32> %wide.load2220, splat (i32 255)
  %i.bb = mul nuw nsw <4 x i32> %i.ax, %broadcast.splat2210
  %i.bc = trunc nuw <4 x i32> %i.bb to <4 x i16>
  %i.bd = udiv <4 x i16> %i.bc, splat (i16 255)
  %i.be = zext nneg <4 x i16> %i.bd to <4 x i32>
  %i.bf = add nuw nsw <4 x i32> %broadcast.splat2212, %i.be
  %i.bg = mul nuw nsw <4 x i32> %i.az, %broadcast.splat2210
  %i.bh = trunc nuw <4 x i32> %i.bg to <4 x i16>
  %i.bi = udiv <4 x i16> %i.bh, splat (i16 255)
  %i.bj = zext nneg <4 x i16> %i.bi to <4 x i32>
  %i.bk = add nuw nsw <4 x i32> %broadcast.splat2214, %i.bj
  %i.bl = mul nuw nsw <4 x i32> %i.ba, %broadcast.splat2210
  %i.bm = trunc nuw <4 x i32> %i.bl to <4 x i16>
  %i.bn = udiv <4 x i16> %i.bm, splat (i16 255)
  %i.bo = zext nneg <4 x i16> %i.bn to <4 x i32>
  %i.bp = add nuw nsw <4 x i32> %broadcast.splat2216, %i.bo
  %i.bq = shl nuw nsw <4 x i32> %i.bf, splat (i32 16)
  %i.br = shl nuw nsw <4 x i32> %i.bk, splat (i32 8)
  %i.bs = or <4 x i32> %i.br, %i.bp
  %i.bt = or <4 x i32> %i.bs, %i.bq
  store <4 x i32> %i.bt, ptr %next.gep2219, align 4
  %index.next2221 = add nuw i64 %index2218, 4     ; 2 uses
  %i.bu = icmp eq i64 %index.next2221, %n.vec2208
  br i1 %i.bu, label %middle.block2222, label %vector.body2217, !llvm.loop !127

middle.block2222:                                 ; preds = %vector.body2217
  %cmp.n2223 = icmp eq i64 %i.aq, %n.vec2208
  br i1 %cmp.n2223, label %.loopexit, label %.lr.ph1852.preheader2262

.lr.ph1852.preheader2262:                         ; preds = %.lr.ph1852.preheader, %middle.block2222
  %.113661851.ph = phi i32 [ %i.an, %.lr.ph1852.preheader ], [ %i.as, %middle.block2222 ]
  %.213691850.ph = phi ptr [ %.11368, %.lr.ph1852.preheader ], [ %i.au, %middle.block2222 ]
  br label %.lr.ph1852

.lr.ph1852:                                       ; preds = %.lr.ph1852.preheader2262, %.lr.ph1852
  %.113661851 = phi i32 [ %i.bv, %.lr.ph1852 ], [ %.113661851.ph, %.lr.ph1852.preheader2262 ]
  %.213691850 = phi ptr [ %i.cp, %.lr.ph1852 ], [ %.213691850.ph, %.lr.ph1852.preheader2262 ] ; 3 uses
  %i.bv = add nsw i32 %.113661851, -1             ; 2 uses
  %i.bw = load i32, ptr %.213691850, align 4      ; 3 uses
  %i.bx = lshr i32 %i.bw, 16
  %i.by = and i32 %i.bx, 255
  %i.bz = lshr i32 %i.bw, 8
  %i.ca = and i32 %i.bz, 255
  %i.cb = and i32 %i.bw, 255
  %i.cc = mul nuw nsw i32 %i.by, %i.o
  %.lhs.trunc1939 = trunc nuw i32 %i.cc to i16
  %i.cd = udiv i16 %.lhs.trunc1939, 255
  %.zext1940 = zext nneg i16 %i.cd to i32
  %i.ce = add nuw nsw i32 %.0, %.zext1940
  %i.cf = mul nuw nsw i32 %i.ca, %i.o
  %.lhs.trunc1941 = trunc nuw i32 %i.cf to i16
  %i.cg = udiv i16 %.lhs.trunc1941, 255
  %.zext1942 = zext nneg i16 %i.cg to i32
  %i.ch = add nuw nsw i32 %.01344, %.zext1942
  %i.ci = mul nuw nsw i32 %i.cb, %i.o
  %.lhs.trunc1943 = trunc nuw i32 %i.ci to i16
  %i.cj = udiv i16 %.lhs.trunc1943, 255
  %.zext1944 = zext nneg i16 %i.cj to i32
  %i.ck = add nuw nsw i32 %.01345, %.zext1944
  %i.cl = shl nuw nsw i32 %i.ce, 16
  %i.cm = shl nuw nsw i32 %i.ch, 8
  %i.cn = or i32 %i.cm, %i.ck
  %i.co = or i32 %i.cn, %i.cl
  store i32 %i.co, ptr %.213691850, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.213691850, i64 4
  %.not1700 = icmp eq i32 %i.bv, 0
  br i1 %.not1700, label %.loopexit, label %.lr.ph1852, !llvm.loop !128

bb.j:                                             ; preds = %.split
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 5
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sdiv i32 %i.cr, %i.cw
  %.not1697 = icmp sgt i32 %1, %3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = mul nsw i32 %i.cx, %2
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.db ; 2 uses
  br i1 %.not1697, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = sext i32 %1 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = sub i32 %3, %1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dg = sext i32 %3 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dg
  %spec.select1703.idx = select i1 %10, i64 0, i64 4
  %spec.select1703 = getelementptr inbounds nuw i8, ptr %i.dh, i64 %spec.select1703.idx
  %i.di = sub i32 %1, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink2083 = phi i32 [ %i.di, %bb.l ], [ %i.df, %bb.k ] ; 2 uses
  %.11393 = phi ptr [ %spec.select1703, %bb.l ], [ %i.de, %bb.k ] ; 3 uses
  %i.dj = zext i1 %10 to i32
  %i.dk = add nuw nsw i32 %.sink2083, %i.dj       ; 3 uses
  %.not16981845 = icmp eq i32 %i.dk, 0
  br i1 %.not16981845, label %.loopexit, label %.lr.ph1848.preheader

.lr.ph1848.preheader:                             ; preds = %bb.m
  %i.dl = zext i32 %.sink2083 to i64
end_hunk_0
