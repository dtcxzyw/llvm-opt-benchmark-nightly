Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ricecomp?download=true
inline.NumInlined: 21
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@fits_rcomp_byte:bb.a
  br i1 %i.iu, label %iter.check460, label %.loopexit

iter.check460:                                    ; preds = %bb.r
  %smax439 = tail call i32 @llvm.smax.i32(i32 %i.it, i32 -7)
  %i.iv = add i32 %i.ht, %smax439
  %i.iw = sub i32 %i.iv, %.1                      ; 3 uses
  %i.ix = lshr i32 %i.iw, 3
  %narrow524 = add nuw nsw i32 %i.ix, 1
  %i.iy = zext nneg i32 %narrow524 to i64         ; 5 uses
  %min.iters.check440 = icmp ult i32 %i.iw, 56
  br i1 %min.iters.check440, label %.lr.ph232.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check460
  %min.iters.check442 = icmp ult i32 %i.iw, 120
  br i1 %min.iters.check442, label %vec.epilog.ph464, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.iz = and i64 %i.iy, 8
  %n.vec444 = and i64 %i.iy, 1073741808           ; 5 uses
  %i.ja = trunc nuw nsw i64 %n.vec444 to i32
  %i.jb = shl i32 %i.ja, 3
  %i.jc = add i32 %i.it, %i.jb                    ; 3 uses
  %i.jd = getelementptr i8, ptr %.sroa.33.4, i64 %n.vec444 ; 2 uses
  %broadcast.splatinsert445 = insertelement <16 x i32> poison, i32 %i.is, i64 0
  %broadcast.splat446 = shufflevector <16 x i32> %broadcast.splatinsert445, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert447 = insertelement <16 x i32> poison, i32 %i.it, i64 0
  %broadcast.splat448 = shufflevector <16 x i32> %broadcast.splatinsert447, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction449 = add nsw <16 x i32> %broadcast.splat448, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  br label %vector.body450

vector.body450:                                   ; preds = %vector.ph443, %vector.body450
  %index451 = phi i64 [ 0, %vector.ph443 ], [ %index.next454, %vector.body450 ] ; 2 uses
  %vec.ind452 = phi <16 x i32> [ %induction449, %vector.ph443 ], [ %vec.ind.next455, %vector.body450 ] ; 2 uses
  %next.gep453 = getelementptr i8, ptr %.sroa.33.4, i64 %index451
  %i.je = sub nsw <16 x i32> zeroinitializer, %vec.ind452
  %i.jf = ashr <16 x i32> %broadcast.splat446, %i.je
  %i.jg = trunc <16 x i32> %i.jf to <16 x i8>
  store <16 x i8> %i.jg, ptr %next.gep453, align 1, !tbaa !10
  %index.next454 = add nuw i64 %index451, 16      ; 2 uses
  %vec.ind.next455 = add nsw <16 x i32> %vec.ind452, splat (i32 128)
  %i.jh = icmp eq i64 %index.next454, %n.vec444
  br i1 %i.jh, label %middle.block456, label %vector.body450, !llvm.loop !69

middle.block456:                                  ; preds = %vector.body450
  %cmp.n457 = icmp eq i64 %n.vec444, %i.iy
  br i1 %cmp.n457, label %.loopexit, label %vec.epilog.iter.check462

vec.epilog.iter.check462:                         ; preds = %middle.block456
  %min.epilog.iters.check463.not.not = icmp eq i64 %i.iz, 0
  br i1 %min.epilog.iters.check463.not.not, label %.lr.ph232.preheader, label %vec.epilog.ph464, !prof !14

vec.epilog.ph464:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check462
  %vec.epilog.resume.val458 = phi i64 [ %n.vec444, %vec.epilog.iter.check462 ], [ 0, %vector.main.loop.iter.check441 ]
  %bc.resume.val = phi i32 [ %i.jc, %vec.epilog.iter.check462 ], [ %i.it, %vector.main.loop.iter.check441 ]
  %n.vec465 = and i64 %i.iy, 1073741816           ; 4 uses
  %i.ji = trunc nuw nsw i64 %n.vec465 to i32
  %i.jj = shl i32 %i.ji, 3
  %i.jk = add i32 %i.it, %i.jj                    ; 2 uses
  %i.jl = getelementptr i8, ptr %.sroa.33.4, i64 %n.vec465 ; 2 uses
  %broadcast.splatinsert466 = insertelement <8 x i32> poison, i32 %i.is, i64 0
  %broadcast.splat467 = shufflevector <8 x i32> %broadcast.splatinsert466, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert468 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat469 = shufflevector <8 x i32> %broadcast.splatinsert468, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction470 = add nsw <8 x i32> %broadcast.splat469, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body471

vec.epilog.vector.body471:                        ; preds = %vec.epilog.vector.body471, %vec.epilog.ph464
  %index472 = phi i64 [ %vec.epilog.resume.val458, %vec.epilog.ph464 ], [ %index.next475, %vec.epilog.vector.body471 ] ; 2 uses
  %vec.ind473 = phi <8 x i32> [ %induction470, %vec.epilog.ph464 ], [ %vec.ind.next476, %vec.epilog.vector.body471 ] ; 2 uses
  %next.gep474 = getelementptr i8, ptr %.sroa.33.4, i64 %index472
  %i.jm = sub nsw <8 x i32> zeroinitializer, %vec.ind473
  %i.jn = ashr <8 x i32> %broadcast.splat467, %i.jm
  %i.jo = trunc <8 x i32> %i.jn to <8 x i8>
  store <8 x i8> %i.jo, ptr %next.gep474, align 1, !tbaa !10
  %index.next475 = add nuw i64 %index472, 8       ; 2 uses
  %vec.ind.next476 = add nsw <8 x i32> %vec.ind473, splat (i32 64)
  %i.jp = icmp eq i64 %index.next475, %n.vec465
  br i1 %i.jp, label %vec.epilog.middle.block477, label %vec.epilog.vector.body471, !llvm.loop !70

vec.epilog.middle.block477:                       ; preds = %vec.epilog.vector.body471
  %cmp.n478 = icmp eq i64 %n.vec465, %i.iy
  br i1 %cmp.n478, label %.loopexit, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %iter.check460, %vec.epilog.iter.check462, %vec.epilog.middle.block477
  %.2230.ph = phi i32 [ %i.it, %iter.check460 ], [ %i.jc, %vec.epilog.iter.check462 ], [ %i.jk, %vec.epilog.middle.block477 ]
  %.sroa.33.5229.ph = phi ptr [ %.sroa.33.4, %iter.check460 ], [ %i.jd, %vec.epilog.iter.check462 ], [ %i.jl, %vec.epilog.middle.block477 ]
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %.lr.ph232
  %.2230 = phi i32 [ %i.ju, %.lr.ph232 ], [ %.2230.ph, %.lr.ph232.preheader ] ; 3 uses
  %.sroa.33.5229 = phi ptr [ %i.jt, %.lr.ph232 ], [ %.sroa.33.5229.ph, %.lr.ph232.preheader ] ; 2 uses
  %i.jq = sub nsw i32 0, %.2230
  %i.jr = ashr i32 %i.is, %i.jq
  %i.js = trunc i32 %i.jr to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.33.5229, i64 1 ; 2 uses
  store i8 %i.js, ptr %.sroa.33.5229, align 1, !tbaa !10
  %i.ju = add nsw i32 %.2230, 8                   ; 2 uses
  %i.jv = icmp slt i32 %.2230, -7
  br i1 %i.jv, label %.lr.ph232, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %.lr.ph232, %middle.block456, %vec.epilog.middle.block477, %bb.r, %bb.q
  %.sroa.33.6 = phi ptr [ %.sroa.33.4, %bb.q ], [ %.sroa.33.4, %bb.r ], [ %i.jl, %vec.epilog.middle.block477 ], [ %i.jd, %middle.block456 ], [ %i.jt, %.lr.ph232 ] ; 2 uses
  %.2130 = phi i32 [ %.1129, %bb.q ], [ %i.is, %bb.r ], [ %i.is, %vec.epilog.middle.block477 ], [ %i.is, %middle.block456 ], [ %i.is, %.lr.ph232 ] ; 2 uses
  %.3 = phi i32 [ %.1, %bb.q ], [ %i.it, %bb.r ], [ %i.jk, %vec.epilog.middle.block477 ], [ %i.jc, %middle.block456 ], [ %i.ju, %.lr.ph232 ] ; 2 uses
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %._crit_edge240, label %.lr.ph239, !llvm.loop !72

._crit_edge240:                                   ; preds = %.loopexit, %output_nbits.exit178
  %.sroa.33.2.lcssa = phi ptr [ %.sroa.33.22, %output_nbits.exit178 ], [ %.sroa.33.6, %.loopexit ] ; 2 uses
  %.0128.lcssa = phi i32 [ %i.gn, %output_nbits.exit178 ], [ %.2130, %.loopexit ]
  %.0127.lcssa = phi i32 [ %.1.lcssa.i175, %output_nbits.exit178 ], [ %.3, %.loopexit ]
  %i.jw = icmp ugt ptr %.sroa.33.2.lcssa, %i.b
  br i1 %i.jw, label %bb.s, label %output_nbits.exit171

bb.s:                                             ; preds = %._crit_edge240
  tail call void @ffpmsg(ptr noundef nonnull @.str.1) #9
  tail call void @free(ptr noundef %i.e) #9
  br label %bb.u

output_nbits.exit171:                             ; preds = %.lr.ph.i169, %output_nbits.exit164, %middle.block414, %vec.epilog.middle.block435, %output_nbits.exit157, %._crit_edge240, %bb.k
  %.sroa.33.7 = phi ptr [ %.sroa.33.2.lcssa, %._crit_edge240 ], [ %.sroa.33.17, %bb.k ], [ %.sroa.33.16, %output_nbits.exit164 ], [ %.sroa.33.13, %output_nbits.exit157 ], [ %i.fo, %vec.epilog.middle.block435 ], [ %i.fg, %middle.block414 ], [ %i.fz, %.lr.ph.i169 ] ; 4 uses
  %.sroa.16.2 = phi i32 [ %.0127.lcssa, %._crit_edge240 ], [ %i.ey, %bb.k ], [ %.1.lcssa.i161, %output_nbits.exit164 ], [ %.1.lcssa.i154, %output_nbits.exit157 ], [ %i.fr, %vec.epilog.middle.block435 ], [ %i.fj, %middle.block414 ], [ %i.ga, %.lr.ph.i169 ] ; 3 uses
  %.sroa.0.2 = phi i32 [ %.0128.lcssa, %._crit_edge240 ], [ %i.ex, %bb.k ], [ %i.dl, %output_nbits.exit164 ], [ %i.bo, %output_nbits.exit157 ], [ %i.ex, %vec.epilog.middle.block435 ], [ %i.ex, %middle.block414 ], [ %i.ex, %.lr.ph.i169 ] ; 2 uses
  %indvars.iv.next291 = add nsw i64 %indvars.iv290, %i.c ; 2 uses
  %i.jx = icmp slt i64 %indvars.iv.next291, %i.k
  br i1 %i.jx, label %.lr.ph258, label %._crit_edge259, !llvm.loop !73

._crit_edge259:                                   ; preds = %output_nbits.exit171
  %i.jy = icmp slt i32 %.sroa.16.2, 8
  br i1 %i.jy, label %bb.t, label %done_outputing_bits.exit

bb.t:                                             ; preds = %._crit_edge259
  %i.jz = shl i32 %.sroa.0.2, %.sroa.16.2
  %i.ka = trunc i32 %i.jz to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.33.7, i64 1
  store i8 %i.ka, ptr %.sroa.33.7, align 1, !tbaa !10
  br label %done_outputing_bits.exit

done_outputing_bits.exit:                         ; preds = %.lr.ph.i, %._crit_edge259, %bb.t
  %.sroa.33.23 = phi ptr [ %i.kb, %bb.t ], [ %.sroa.33.7, %._crit_edge259 ], [ %i.h, %.lr.ph.i ]
  tail call void @free(ptr noundef %i.e) #9
  %i.kc = ptrtoint ptr %.sroa.33.23 to i64
  %i.kd = ptrtoint ptr %2 to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = trunc i64 %i.ke to i32
  br label %bb.u

bb.u:                                             ; preds = %done_outputing_bits.exit, %bb.s, %bb.b
  %.0141 = phi i32 [ -1, %bb.b ], [ %i.kf, %done_outputing_bits.exit ], [ -1, %bb.s ]
  ret i32 %.0141
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fits_rdecomp(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.i = load i8, ptr %i.d, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.0133 = phi ptr [ %i.h, %bb.b ], [ %.8, %.loopexit ] ; 3 uses
  %.0127 = phi i32 [ 0, %bb.b ], [ %.4131, %.loopexit ] ; 10 uses
  %.0119 = phi i32 [ 8, %bb.b ], [ %.5124, %.loopexit ] ; 2 uses
  %.0115 = phi i32 [ %i.j, %bb.b ], [ %.7, %.loopexit ] ; 2 uses
  %.0 = phi i32 [ %i.c, %bb.b ], [ %.3, %.loopexit ] ; 9 uses
  %i.k = icmp slt i32 %.0127, %3
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.0119, -5                   ; 2 uses
  %i.m = icmp slt i32 %.0119, 5
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.1116155 = phi i32 [ %i.r, %.lr.ph ], [ %.0115, %bb.d ]
  %.1120154 = phi i32 [ %i.s, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %.1134153 = phi ptr [ %i.o, %.lr.ph ], [ %.0133, %bb.d ] ; 2 uses
  %i.n = shl i32 %.1116155, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.1134153, i64 1 ; 2 uses
  %i.p = load i8, ptr %.1134153, align 1, !tbaa !10
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 2 uses
  %i.s = add nsw i32 %.1120154, 8                 ; 2 uses
  %i.t = icmp samesign ult i32 %.1120154, -8
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.1134.lcssa = phi ptr [ %.0133, %bb.d ], [ %i.o, %.lr.ph ] ; 7 uses
  %.1120.lcssa = phi i32 [ %i.l, %bb.d ], [ %i.s, %.lr.ph ] ; 22 uses
  %.1116.lcssa = phi i32 [ %.0115, %bb.d ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.u = lshr i32 %.1116.lcssa, %.1120.lcssa
  %i.v = add i32 %i.u, -1                         ; 4 uses
  %notmask = shl nsw i32 -1, %.1120.lcssa
  %i.w = xor i32 %notmask, -1                     ; 2 uses
  %i.x = and i32 %.1116.lcssa, %i.w               ; 7 uses
  %i.y = add i32 %.0127, %4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %3) ; 9 uses
  %i.z = icmp slt i32 %i.v, 0
  br i1 %i.z, label %.preheader147, label %bb.e

.preheader147:                                    ; preds = %._crit_edge
  %i.aa = icmp slt i32 %.0127, %spec.select
  br i1 %i.aa, label %.lr.ph203.preheader, label %.loopexit

.lr.ph203.preheader:                              ; preds = %.preheader147
  %i.ab = zext i32 %.0127 to i64                  ; 4 uses
  %wide.trip.count235 = zext nneg i32 %spec.select to i64 ; 2 uses
  %i.ac = sub nsw i64 %wide.trip.count235, %i.ab  ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph203.preheader282, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph203.preheader
  %n.vec = and i64 %i.ac, -8                      ; 3 uses
  %i.ad = add nsw i64 %n.vec, %i.ab
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !9
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph203.preheader282

.lr.ph203.preheader282:                           ; preds = %.lr.ph203.preheader, %middle.block
  %indvars.iv232.ph = phi i64 [ %i.ab, %.lr.ph203.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader282, %.lr.ph203
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.lr.ph203 ], [ %indvars.iv232.ph, %.lr.ph203.preheader282 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv232
  store i32 %.0, ptr %i.ag, align 4, !tbaa !9
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.loopexit, label %.lr.ph203, !llvm.loop !76

bb.e:                                             ; preds = %._crit_edge
  %i.ah = icmp eq i32 %i.v, 25
  %i.ai = icmp slt i32 %.0127, %spec.select       ; 2 uses
  br i1 %i.ah, label %.preheader148, label %.preheader150

.preheader150:                                    ; preds = %bb.e
  br i1 %i.ai, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader150
  %i.aj = zext nneg i32 %.0127 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader

.preheader148:                                    ; preds = %bb.e
  br i1 %i.ai, label %.lr.ph197, label %.loopexit

.lr.ph197:                                        ; preds = %.preheader148
  %i.ak = sub nsw i32 32, %.1120.lcssa
  %.neg303 = add nsw i32 %.1120.lcssa, -24
  %i.al = sub nsw i32 24, %.1120.lcssa
  %i.am = icmp samesign ult i32 %.1120.lcssa, 25
  %.not = icmp eq i32 %.1120.lcssa, 0
  %i.an = zext nneg i32 %.0127 to i64
  %wide.trip.count230 = zext nneg i32 %spec.select to i64
  %.neg300 = add nsw i32 %.1120.lcssa, -16
  %5 = icmp slt i32 %.1120.lcssa, 17
  %6 = sub nsw i32 16, %.1120.lcssa
  %.neg301 = add nsw i32 %.1120.lcssa, -8
  %7 = icmp slt i32 %.1120.lcssa, 9
  %8 = sub nsw i32 8, %.1120.lcssa
  %9 = icmp eq i32 %.1120.lcssa, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph197, %bb.g
  %indvars.iv227 = phi i64 [ %i.an, %.lr.ph197 ], [ %indvars.iv.next228, %bb.g ] ; 2 uses
  %.1196 = phi i32 [ %.0, %.lr.ph197 ], [ %i.bc, %bb.g ]
  %.2117195 = phi i32 [ %i.x, %.lr.ph197 ], [ %.3118, %bb.g ]
  %.2135193 = phi ptr [ %.1134.lcssa, %.lr.ph197 ], [ %.4137, %bb.g ] ; 6 uses
  %i.ao = shl i32 %.2117195, %i.ak                ; 2 uses
  br i1 %i.am, label %.lr.ph188, label %._crit_edge189.thread

.lr.ph188:                                        ; preds = %bb.f
  %10 = getelementptr inbounds nuw i8, ptr %.2135193, i64 1 ; 2 uses
  %11 = load i8, ptr %.2135193, align 1, !tbaa !10
  %12 = zext i8 %11 to i32
  %13 = shl i32 %12, %i.al
  %14 = or i32 %13, %i.ao                         ; 2 uses
  br i1 %5, label %.lr.ph188.1, label %._crit_edge189

.lr.ph188.1:                                      ; preds = %.lr.ph188
  %15 = getelementptr inbounds nuw i8, ptr %.2135193, i64 2 ; 2 uses
  %16 = load i8, ptr %10, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, %6
  %19 = or i32 %18, %14                           ; 2 uses
  br i1 %7, label %.lr.ph188.a, label %._crit_edge189

.lr.ph188.a:                                      ; preds = %.lr.ph188.1
  %i.ap = getelementptr inbounds nuw i8, ptr %.2135193, i64 3 ; 2 uses
  %i.aq = load i8, ptr %15, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl i32 %i.ar, %8
  %i.at = or i32 %i.as, %19                       ; 2 uses
  br i1 %9, label %.lr.ph188.3, label %._crit_edge189

.lr.ph188.3:                                      ; preds = %.lr.ph188.a
  %20 = getelementptr inbounds nuw i8, ptr %.2135193, i64 4
  %21 = load i8, ptr %i.ap, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = or i32 %i.at, %22
  br label %._crit_edge189

._crit_edge189:                                   ; preds = %.lr.ph188.3, %.lr.ph188.a, %.lr.ph188.1, %.lr.ph188
  %.lcssa297 = phi ptr [ %10, %.lr.ph188 ], [ %15, %.lr.ph188.1 ], [ %i.ap, %.lr.ph188.a ], [ %20, %.lr.ph188.3 ] ; 2 uses
  %.lcssa296 = phi i32 [ %14, %.lr.ph188 ], [ %19, %.lr.ph188.1 ], [ %i.at, %.lr.ph188.a ], [ %23, %.lr.ph188.3 ] ; 2 uses
  %.lcssa295.neg = phi i32 [ %.neg300, %.lr.ph188 ], [ %.neg301, %.lr.ph188.1 ], [ %.1120.lcssa, %.lr.ph188.a ], [ 8, %.lr.ph188.3 ]
  br i1 %.not, label %bb.g, label %._crit_edge189.thread

._crit_edge189.thread:                            ; preds = %bb.f, %._crit_edge189
  %.0111.lcssa247 = phi i32 [ %.lcssa296, %._crit_edge189 ], [ %i.ao, %bb.f ]
  %.0126.lcssa246 = phi i32 [ %.lcssa295.neg, %._crit_edge189 ], [ %.neg303, %bb.f ]
  %.3136.lcssa245 = phi ptr [ %.lcssa297, %._crit_edge189 ], [ %.2135193, %bb.f ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.3136.lcssa245, i64 1
  %i.av = load i8, ptr %.3136.lcssa245, align 1, !tbaa !10
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = lshr i32 %i.aw, %.0126.lcssa246
  %i.ay = or i32 %i.ax, %.0111.lcssa247
  %i.az = and i32 %i.aw, %i.w
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge189, %._crit_edge189.thread
  %.4137 = phi ptr [ %i.au, %._crit_edge189.thread ], [ %.lcssa297, %._crit_edge189 ] ; 2 uses
  %.3118 = phi i32 [ %i.az, %._crit_edge189.thread ], [ 0, %._crit_edge189 ] ; 2 uses
  %.1112 = phi i32 [ %i.ay, %._crit_edge189.thread ], [ %.lcssa296, %._crit_edge189 ] ; 2 uses
  %i.ba = lshr i32 %.1112, 1
  %i.bb = and i32 %.1112, 1
  %sext146 = sub nsw i32 0, %i.bb
  %.2113 = xor i32 %i.ba, %sext146
  %i.bc = add i32 %.2113, %.1196                  ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv227
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !9
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.loopexit, label %bb.f, !llvm.loop !77

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge170
  %indvars.iv = phi i64 [ %i.aj, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge170 ] ; 2 uses
  %.2178 = phi i32 [ %.0, %.preheader.preheader ], [ %i.ch, %._crit_edge170 ]
  %.4177 = phi i32 [ %i.x, %.preheader.preheader ], [ %i.ce, %._crit_edge170 ] ; 2 uses
  %.2121176 = phi i32 [ %.1120.lcssa, %.preheader.preheader ], [ %.4123.lcssa, %._crit_edge170 ] ; 2 uses
  %.5138174 = phi ptr [ %.1134.lcssa, %.preheader.preheader ], [ %.7140.lcssa, %._crit_edge170 ] ; 2 uses
  %i.be = icmp eq i32 %.4177, 0
  br i1 %i.be, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %.preheader, %.lr.ph160
  %.3122159 = phi i32 [ %i.bf, %.lr.ph160 ], [ %.2121176, %.preheader ]
  %.6139158 = phi ptr [ %i.bg, %.lr.ph160 ], [ %.5138174, %.preheader ] ; 2 uses
  %i.bf = add nuw nsw i32 %.3122159, 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.6139158, i64 1 ; 2 uses
  %i.bh = load i8, ptr %.6139158, align 1, !tbaa !10 ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %.lr.ph160, label %._crit_edge161.loopexit, !llvm.loop !78

._crit_edge161.loopexit:                          ; preds = %.lr.ph160
  %i.bj = zext i8 %i.bh to i32
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.loopexit, %.preheader
  %.6139.lcssa = phi ptr [ %.5138174, %.preheader ], [ %i.bg, %._crit_edge161.loopexit ] ; 2 uses
  %.3122.lcssa = phi i32 [ %.2121176, %.preheader ], [ %i.bf, %._crit_edge161.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4177, %.preheader ], [ %i.bj, %._crit_edge161.loopexit ] ; 2 uses
  %i.bk = zext nneg i32 %.5.lcssa to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @nonzero_count, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !9
  %i.bn = sub nsw i32 %.3122.lcssa, %i.bm         ; 2 uses
  %.neg = xor i32 %i.bn, -1
  %i.bo = add i32 %.3122.lcssa, %.neg             ; 2 uses
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = xor i32 %i.bp, %.5.lcssa                ; 2 uses
  %i.br = sub nsw i32 %i.bo, %i.v                 ; 3 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph169, label %._crit_edge170

.lr.ph169:                                        ; preds = %._crit_edge161, %.lr.ph169
  %.6167 = phi i32 [ %i.bx, %.lr.ph169 ], [ %i.bq, %._crit_edge161 ]
  %.4123166 = phi i32 [ %i.by, %.lr.ph169 ], [ %i.br, %._crit_edge161 ] ; 2 uses
  %.7140165 = phi ptr [ %i.bu, %.lr.ph169 ], [ %.6139.lcssa, %._crit_edge161 ] ; 2 uses
  %i.bt = shl i32 %.6167, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.7140165, i64 1 ; 2 uses
  %i.bv = load i8, ptr %.7140165, align 1, !tbaa !10
  %i.bw = zext i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bt, %i.bw            ; 2 uses
  %i.by = add nsw i32 %.4123166, 8                ; 2 uses
  %i.bz = icmp samesign ult i32 %.4123166, -8
  br i1 %i.bz, label %.lr.ph169, label %._crit_edge170, !llvm.loop !79

._crit_edge170:                                   ; preds = %.lr.ph169, %._crit_edge161
  %.7140.lcssa = phi ptr [ %.6139.lcssa, %._crit_edge161 ], [ %i.bu, %.lr.ph169 ] ; 2 uses
  %.4123.lcssa = phi i32 [ %i.br, %._crit_edge161 ], [ %i.by, %.lr.ph169 ] ; 4 uses
  %.6.lcssa = phi i32 [ %i.bq, %._crit_edge161 ], [ %i.bx, %.lr.ph169 ] ; 2 uses
  %i.ca = shl i32 %i.bn, %i.v
  %i.cb = lshr i32 %.6.lcssa, %.4123.lcssa
  %i.cc = or i32 %i.cb, %i.ca                     ; 2 uses
  %notmask145 = shl nsw i32 -1, %.4123.lcssa
  %i.cd = xor i32 %notmask145, -1
  %i.ce = and i32 %.6.lcssa, %i.cd                ; 2 uses
  %i.cf = lshr i32 %i.cc, 1
  %i.cg = and i32 %i.cc, 1
  %sext = sub nsw i32 0, %i.cg
  %.3114 = xor i32 %i.cf, %sext
  %i.ch = add i32 %.3114, %.2178                  ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !80

.loopexit:                                        ; preds = %._crit_edge170, %bb.g, %.lr.ph203, %middle.block, %.preheader150, %.preheader148, %.preheader147
  %.8 = phi ptr [ %.1134.lcssa, %.preheader147 ], [ %.4137, %bb.g ], [ %.1134.lcssa, %middle.block ], [ %.1134.lcssa, %.preheader148 ], [ %.1134.lcssa, %.preheader150 ], [ %.1134.lcssa, %.lr.ph203 ], [ %.7140.lcssa, %._crit_edge170 ] ; 2 uses
  %.4131 = phi i32 [ %.0127, %.preheader147 ], [ %spec.select, %bb.g ], [ %spec.select, %middle.block ], [ %.0127, %.preheader148 ], [ %.0127, %.preheader150 ], [ %spec.select, %.lr.ph203 ], [ %spec.select, %._crit_edge170 ]
  %.5124 = phi i32 [ %.1120.lcssa, %.preheader147 ], [ %.1120.lcssa, %bb.g ], [ %.1120.lcssa, %middle.block ], [ %.1120.lcssa, %.preheader148 ], [ %.1120.lcssa, %.preheader150 ], [ %.1120.lcssa, %.lr.ph203 ], [ %.4123.lcssa, %._crit_edge170 ]
  %.7 = phi i32 [ %i.x, %.preheader147 ], [ %.3118, %bb.g ], [ %i.x, %middle.block ], [ %i.x, %.preheader148 ], [ %i.x, %.preheader150 ], [ %i.x, %.lr.ph203 ], [ %i.ce, %._crit_edge170 ]
  %.3 = phi i32 [ %.0, %.preheader147 ], [ %i.bc, %bb.g ], [ %.0, %middle.block ], [ %.0, %.preheader148 ], [ %.0, %.preheader150 ], [ %.0, %.lr.ph203 ], [ %i.ch, %._crit_edge170 ]
  %i.cj = icmp ugt ptr %.8, %i.g
  br i1 %i.cj, label %.sink.split, label %bb.c, !llvm.loop !81

bb.h:                                             ; preds = %bb.c
  %i.ck = icmp ult ptr %.0133, %i.g
  br i1 %i.ck, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %.loopexit, %bb.h, %bb.a
  %.str.4.sink = phi ptr [ @.str.4, %bb.h ], [ @.str.2, %bb.a ], [ @.str.3, %.loopexit ]
  %.0132.ph = phi i32 [ 0, %bb.h ], [ 1, %bb.a ], [ 1, %.loopexit ]
  tail call void @ffpmsg(ptr noundef nonnull %.str.4.sink) #9
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.0132 = phi i32 [ 0, %bb.h ], [ %.0132.ph, %.sink.split ]
  ret i32 %.0132
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fits_rdecomp_short(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = or disjoint i32 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.h, align 1, !tbaa !10
  %i.n = zext i8 %i.m to i32
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0126 = phi ptr [ %i.l, %bb.a ], [ %.8, %.loopexit ] ; 3 uses
  %.0120 = phi i32 [ 0, %bb.a ], [ %.4124, %.loopexit ] ; 10 uses
  %.0112 = phi i32 [ 8, %bb.a ], [ %.5117, %.loopexit ] ; 2 uses
  %.0108 = phi i32 [ %i.n, %bb.a ], [ %.7, %.loopexit ] ; 2 uses
  %.0 = phi i32 [ %i.g, %bb.a ], [ %.3, %.loopexit ] ; 9 uses
  %i.o = icmp slt i32 %.0120, %3
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.0112, -4                   ; 2 uses
  %i.q = icmp slt i32 %.0112, 4
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.1109147 = phi i32 [ %i.v, %.lr.ph ], [ %.0108, %bb.c ]
  %.1113146 = phi i32 [ %i.w, %.lr.ph ], [ %i.p, %bb.c ] ; 2 uses
  %.1127145 = phi ptr [ %i.s, %.lr.ph ], [ %.0126, %bb.c ] ; 2 uses
  %i.r = shl i32 %.1109147, 8
  %i.s = getelementptr inbounds nuw i8, ptr %.1127145, i64 1 ; 2 uses
  %i.t = load i8, ptr %.1127145, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u               ; 2 uses
  %i.w = add nsw i32 %.1113146, 8                 ; 2 uses
  %i.x = icmp samesign ult i32 %.1113146, -8
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.1127.lcssa = phi ptr [ %.0126, %bb.c ], [ %i.s, %.lr.ph ] ; 8 uses
  %.1113.lcssa = phi i32 [ %i.p, %bb.c ], [ %i.w, %.lr.ph ] ; 16 uses
  %.1109.lcssa = phi i32 [ %.0108, %bb.c ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.y = lshr i32 %.1109.lcssa, %.1113.lcssa
  %i.z = add i32 %i.y, -1                         ; 4 uses
  %notmask = shl nsw i32 -1, %.1113.lcssa
  %i.aa = xor i32 %notmask, -1                    ; 2 uses
  %i.ab = and i32 %.1109.lcssa, %i.aa             ; 8 uses
  %i.ac = add i32 %.0120, %4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %3) ; 10 uses
  %i.ad = icmp slt i32 %i.z, 0
  br i1 %i.ad, label %.preheader139, label %bb.d

.preheader139:                                    ; preds = %._crit_edge
  %i.ae = icmp slt i32 %.0120, %spec.select
  br i1 %i.ae, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader139
  %i.af = trunc i32 %.0 to i16                    ; 3 uses
  %i.ag = zext i32 %.0120 to i64                  ; 6 uses
  %wide.trip.count227 = zext nneg i32 %spec.select to i64 ; 2 uses
  %i.ah = sub nsw i64 %wide.trip.count227, %i.ag  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i64 %i.ah, 16
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ah, 12
  %n.vec = and i64 %i.ah, -16                     ; 4 uses
  %i.aj = add nsw i64 %n.vec, %i.ag
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !16
  store <8 x i16> %broadcast.splat, ptr %i.ak, align 2, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec274 = and i64 %i.ah, -4                   ; 3 uses
  %i.am = add nsw i64 %n.vec274, %i.ag
  %broadcast.splatinsert275 = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat276 = shufflevector <4 x i16> %broadcast.splatinsert275, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep313 = getelementptr [2 x i8], ptr %2, i64 %i.ag
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index277 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next278, %vec.epilog.vector.body ] ; 2 uses
  %gep314 = getelementptr [2 x i8], ptr %invariant.gep313, i64 %index277
  store <4 x i16> %broadcast.splat276, ptr %gep314, align 2, !tbaa !16
  %index.next278 = add nuw i64 %index277, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next278, %n.vec274
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !84

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n279 = icmp eq i64 %i.ah, %n.vec274
  br i1 %cmp.n279, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv224.ph = phi i64 [ %i.ag, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %vec.epilog.scalar.ph ], [ %indvars.iv224.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv224
  store i16 %i.af, ptr %i.ao, align 2, !tbaa !16
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !85

bb.d:                                             ; preds = %._crit_edge
  %i.ap = icmp eq i32 %i.z, 14
  %i.aq = icmp slt i32 %.0120, %spec.select       ; 2 uses
  br i1 %i.ap, label %.preheader140, label %.preheader142

.preheader142:                                    ; preds = %bb.d
  br i1 %i.aq, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader142
  %i.ar = zext nneg i32 %.0120 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader

.preheader140:                                    ; preds = %bb.d
  br i1 %i.aq, label %.lr.ph189, label %.loopexit

.lr.ph189:                                        ; preds = %.preheader140
  %i.as = sub nsw i32 16, %.1113.lcssa
  %i.at = sub nsw i32 8, %.1113.lcssa
  %i.au = icmp samesign ult i32 %.1113.lcssa, 9
  %.not = icmp eq i32 %.1113.lcssa, 0
  %i.av = zext nneg i32 %.0120 to i64
  %wide.trip.count222 = zext nneg i32 %spec.select to i64
  %5 = icmp eq i32 %.1113.lcssa, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph189, %bb.f
  %indvars.iv219 = phi i64 [ %i.av, %.lr.ph189 ], [ %indvars.iv.next220, %bb.f ] ; 2 uses
  %.1188 = phi i32 [ %.0, %.lr.ph189 ], [ %i.bk, %bb.f ]
  %.2110187 = phi i32 [ %i.ab, %.lr.ph189 ], [ %.3111, %bb.f ]
  %.2128185 = phi ptr [ %.1127.lcssa, %.lr.ph189 ], [ %.4130, %bb.f ] ; 4 uses
  %i.aw = shl i32 %.2110187, %i.as                ; 2 uses
  br i1 %i.au, label %.lr.ph180, label %._crit_edge181.thread

.lr.ph180:                                        ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.2128185, i64 1 ; 2 uses
  %i.ay = load i8, ptr %.2128185, align 1, !tbaa !10
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl i32 %i.az, %i.at
  %i.bb = or i32 %i.ba, %i.aw                     ; 2 uses
  br i1 %5, label %.lr.ph180.1, label %._crit_edge181

.lr.ph180.1:                                      ; preds = %.lr.ph180
  %6 = getelementptr inbounds nuw i8, ptr %.2128185, i64 2
  %7 = load i8, ptr %i.ax, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = or disjoint i32 %i.bb, %8
  br label %._crit_edge181

._crit_edge181:                                   ; preds = %.lr.ph180.1, %.lr.ph180
  %.lcssa295 = phi ptr [ %i.ax, %.lr.ph180 ], [ %6, %.lr.ph180.1 ] ; 2 uses
  %.lcssa294 = phi i32 [ %i.bb, %.lr.ph180 ], [ %9, %.lr.ph180.1 ] ; 2 uses
  %.pn.neg = phi i32 [ 0, %.lr.ph180 ], [ 8, %.lr.ph180.1 ]
  br i1 %.not, label %bb.f, label %._crit_edge181.thread

._crit_edge181.thread:                            ; preds = %bb.e, %._crit_edge181
  %.0104.lcssa238 = phi i32 [ %.lcssa294, %._crit_edge181 ], [ %i.aw, %bb.e ]
  %.0118.lcssa237 = phi i32 [ %.pn.neg, %._crit_edge181 ], [ -8, %bb.e ]
  %.3129.lcssa236 = phi ptr [ %.lcssa295, %._crit_edge181 ], [ %.2128185, %bb.e ] ; 2 uses
  %.0118.lcssa237.neg = add i32 %.0118.lcssa237, %.1113.lcssa
  %i.bc = getelementptr inbounds nuw i8, ptr %.3129.lcssa236, i64 1
  %i.bd = load i8, ptr %.3129.lcssa236, align 1, !tbaa !10
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = lshr i32 %i.be, %.0118.lcssa237.neg
  %i.bg = or i32 %i.bf, %.0104.lcssa238
  %i.bh = and i32 %i.be, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge181, %._crit_edge181.thread
  %.4130 = phi ptr [ %i.bc, %._crit_edge181.thread ], [ %.lcssa295, %._crit_edge181 ] ; 2 uses
  %.3111 = phi i32 [ %i.bh, %._crit_edge181.thread ], [ 0, %._crit_edge181 ] ; 2 uses
  %.1105 = phi i32 [ %i.bg, %._crit_edge181.thread ], [ %.lcssa294, %._crit_edge181 ] ; 2 uses
  %i.bi = lshr i32 %.1105, 1
  %i.bj = and i32 %.1105, 1
  %sext138 = sub nsw i32 0, %i.bj
  %.2106 = xor i32 %i.bi, %sext138
  %i.bk = add i32 %.2106, %.1188                  ; 3 uses
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv219
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !16
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %.loopexit, label %bb.e, !llvm.loop !86

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge162
  %indvars.iv = phi i64 [ %i.ar, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge162 ] ; 2 uses
  %.2170 = phi i32 [ %.0, %.preheader.preheader ], [ %i.cq, %._crit_edge162 ]
  %.4169 = phi i32 [ %i.ab, %.preheader.preheader ], [ %i.cn, %._crit_edge162 ] ; 2 uses
  %.2114168 = phi i32 [ %.1113.lcssa, %.preheader.preheader ], [ %.4116.lcssa, %._crit_edge162 ] ; 2 uses
  %.5131166 = phi ptr [ %.1127.lcssa, %.preheader.preheader ], [ %.7133.lcssa, %._crit_edge162 ] ; 2 uses
  %i.bn = icmp eq i32 %.4169, 0
  br i1 %i.bn, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.3115151 = phi i32 [ %i.bo, %.lr.ph152 ], [ %.2114168, %.preheader ]
  %.6132150 = phi ptr [ %i.bp, %.lr.ph152 ], [ %.5131166, %.preheader ] ; 2 uses
  %i.bo = add nuw nsw i32 %.3115151, 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.6132150, i64 1 ; 2 uses
  %i.bq = load i8, ptr %.6132150, align 1, !tbaa !10 ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %.lr.ph152, label %._crit_edge153.loopexit, !llvm.loop !87

._crit_edge153.loopexit:                          ; preds = %.lr.ph152
  %i.bs = zext i8 %i.bq to i32
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %._crit_edge153.loopexit, %.preheader
  %.6132.lcssa = phi ptr [ %.5131166, %.preheader ], [ %i.bp, %._crit_edge153.loopexit ] ; 2 uses
  %.3115.lcssa = phi i32 [ %.2114168, %.preheader ], [ %i.bo, %._crit_edge153.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4169, %.preheader ], [ %i.bs, %._crit_edge153.loopexit ] ; 2 uses
  %i.bt = zext nneg i32 %.5.lcssa to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @nonzero_count, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !9
  %i.bw = sub nsw i32 %.3115.lcssa, %i.bv         ; 2 uses
  %.neg = xor i32 %i.bw, -1
  %i.bx = add i32 %.3115.lcssa, %.neg             ; 2 uses
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = xor i32 %i.by, %.5.lcssa                ; 2 uses
  %i.ca = sub nsw i32 %i.bx, %i.z                 ; 3 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %._crit_edge153, %.lr.ph161
  %.6159 = phi i32 [ %i.cg, %.lr.ph161 ], [ %i.bz, %._crit_edge153 ]
  %.4116158 = phi i32 [ %i.ch, %.lr.ph161 ], [ %i.ca, %._crit_edge153 ] ; 2 uses
  %.7133157 = phi ptr [ %i.cd, %.lr.ph161 ], [ %.6132.lcssa, %._crit_edge153 ] ; 2 uses
  %i.cc = shl i32 %.6159, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.7133157, i64 1 ; 2 uses
  %i.ce = load i8, ptr %.7133157, align 1, !tbaa !10
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cc, %i.cf            ; 2 uses
  %i.ch = add nsw i32 %.4116158, 8                ; 2 uses
  %i.ci = icmp samesign ult i32 %.4116158, -8
  br i1 %i.ci, label %.lr.ph161, label %._crit_edge162, !llvm.loop !88

._crit_edge162:                                   ; preds = %.lr.ph161, %._crit_edge153
  %.7133.lcssa = phi ptr [ %.6132.lcssa, %._crit_edge153 ], [ %i.cd, %.lr.ph161 ] ; 2 uses
  %.4116.lcssa = phi i32 [ %i.ca, %._crit_edge153 ], [ %i.ch, %.lr.ph161 ] ; 4 uses
  %.6.lcssa = phi i32 [ %i.bz, %._crit_edge153 ], [ %i.cg, %.lr.ph161 ] ; 2 uses
  %i.cj = shl i32 %i.bw, %i.z
  %i.ck = lshr i32 %.6.lcssa, %.4116.lcssa
  %i.cl = or i32 %i.ck, %i.cj                     ; 2 uses
  %notmask137 = shl nsw i32 -1, %.4116.lcssa
  %i.cm = xor i32 %notmask137, -1
  %i.cn = and i32 %.6.lcssa, %i.cm                ; 2 uses
  %i.co = lshr i32 %i.cl, 1
  %i.cp = and i32 %i.cl, 1
  %sext = sub nsw i32 0, %i.cp
  %.3107 = xor i32 %i.co, %sext
  %i.cq = add i32 %.3107, %.2170                  ; 3 uses
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !89

.loopexit:                                        ; preds = %._crit_edge162, %bb.f, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader142, %.preheader140, %.preheader139
  %.8 = phi ptr [ %.1127.lcssa, %.preheader139 ], [ %.4130, %bb.f ], [ %.1127.lcssa, %middle.block ], [ %.1127.lcssa, %.preheader140 ], [ %.1127.lcssa, %.preheader142 ], [ %.1127.lcssa, %vec.epilog.scalar.ph ], [ %.1127.lcssa, %vec.epilog.middle.block ], [ %.7133.lcssa, %._crit_edge162 ] ; 2 uses
  %.4124 = phi i32 [ %.0120, %.preheader139 ], [ %spec.select, %bb.f ], [ %spec.select, %middle.block ], [ %.0120, %.preheader140 ], [ %.0120, %.preheader142 ], [ %spec.select, %vec.epilog.scalar.ph ], [ %spec.select, %vec.epilog.middle.block ], [ %spec.select, %._crit_edge162 ]
  %.5117 = phi i32 [ %.1113.lcssa, %.preheader139 ], [ %.1113.lcssa, %bb.f ], [ %.1113.lcssa, %middle.block ], [ %.1113.lcssa, %.preheader140 ], [ %.1113.lcssa, %.preheader142 ], [ %.1113.lcssa, %vec.epilog.scalar.ph ], [ %.1113.lcssa, %vec.epilog.middle.block ], [ %.4116.lcssa, %._crit_edge162 ]
  %.7 = phi i32 [ %i.ab, %.preheader139 ], [ %.3111, %bb.f ], [ %i.ab, %middle.block ], [ %i.ab, %.preheader140 ], [ %i.ab, %.preheader142 ], [ %i.ab, %vec.epilog.scalar.ph ], [ %i.ab, %vec.epilog.middle.block ], [ %i.cn, %._crit_edge162 ]
  %.3 = phi i32 [ %.0, %.preheader139 ], [ %i.bk, %bb.f ], [ %.0, %middle.block ], [ %.0, %.preheader140 ], [ %.0, %.preheader142 ], [ %.0, %vec.epilog.scalar.ph ], [ %.0, %vec.epilog.middle.block ], [ %i.cq, %._crit_edge162 ]
  %i.ct = icmp ugt ptr %.8, %i.k
  br i1 %i.ct, label %.sink.split, label %bb.b, !llvm.loop !90

bb.g:                                             ; preds = %bb.b
  %i.cu = icmp ult ptr %.0126, %i.k
  br i1 %i.cu, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %.loopexit, %bb.g
  %.str.4.sink = phi ptr [ @.str.4, %bb.g ], [ @.str.3, %.loopexit ]
  %.0125.ph = phi i32 [ 0, %bb.g ], [ 1, %.loopexit ]
  tail call void @ffpmsg(ptr noundef nonnull %.str.4.sink) #9
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.0125 = phi i32 [ 0, %bb.g ], [ %.0125.ph, %.sink.split ]
  ret i32 %.0125
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fits_rdecomp_byte(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
.split:
  %i.a = load i8, ptr %0, align 1, !tbaa !10
  %i.b = zext i8 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.c, align 1, !tbaa !10
  %i.i = zext i8 %i.h to i32
  br label %bb.a

bb.a:                                             ; preds = %.loopexit, %.split
  %.0121 = phi ptr [ %i.g, %.split ], [ %.8, %.loopexit ] ; 3 uses
  %.0115 = phi i32 [ 0, %.split ], [ %.4119, %.loopexit ] ; 11 uses
  %.0107 = phi i32 [ 8, %.split ], [ %.5112, %.loopexit ] ; 2 uses
  %.0103 = phi i32 [ %i.i, %.split ], [ %.7, %.loopexit ] ; 2 uses
  %.0 = phi i32 [ %i.b, %.split ], [ %.3, %.loopexit ] ; 7 uses
  %i.j = icmp slt i32 %.0115, %3
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %.0107, -3                   ; 2 uses
  %i.l = icmp slt i32 %.0107, 3
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.1104142 = phi i32 [ %i.q, %.lr.ph ], [ %.0103, %bb.b ]
  %.1108141 = phi i32 [ %i.r, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %.1122140 = phi ptr [ %i.n, %.lr.ph ], [ %.0121, %bb.b ] ; 2 uses
  %i.m = shl i32 %.1104142, 8
  %i.n = getelementptr inbounds nuw i8, ptr %.1122140, i64 1 ; 2 uses
  %i.o = load i8, ptr %.1122140, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  %i.r = add nsw i32 %.1108141, 8                 ; 2 uses
  %i.s = icmp samesign ult i32 %.1108141, -8
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.1122.lcssa = phi ptr [ %.0121, %bb.b ], [ %i.n, %.lr.ph ] ; 6 uses
  %.1108.lcssa = phi i32 [ %i.k, %bb.b ], [ %i.r, %.lr.ph ] ; 11 uses
  %.1104.lcssa = phi i32 [ %.0103, %bb.b ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.t = lshr i32 %.1104.lcssa, %.1108.lcssa
  %i.u = add i32 %i.t, -1                         ; 4 uses
  %notmask = shl nsw i32 -1, %.1108.lcssa
  %i.v = xor i32 %notmask, -1                     ; 2 uses
  %i.w = and i32 %.1104.lcssa, %i.v               ; 6 uses
  %i.x = add i32 %.0115, %4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %3) ; 8 uses
  %i.y = icmp slt i32 %i.u, 0
  br i1 %i.y, label %.preheader134, label %bb.c

.preheader134:                                    ; preds = %._crit_edge
  %i.z = icmp slt i32 %.0115, %spec.select
  br i1 %i.z, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.preheader134
  %i.aa = trunc i32 %.0 to i8
  %i.ab = zext nneg i32 %.0115 to i64
  %scevgep = getelementptr i8, ptr %2, i64 %i.ab
  %i.ac = xor i32 %.0115, -1
  %i.ad = add i32 %spec.select, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.aa, i64 %i.af, i1 false), !tbaa !10
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %i.ag = icmp eq i32 %i.u, 6
  %i.ah = icmp slt i32 %.0115, %spec.select       ; 2 uses
  br i1 %i.ag, label %.preheader135, label %.preheader137

.preheader137:                                    ; preds = %bb.c
  br i1 %i.ah, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader137
  %i.ai = zext nneg i32 %.0115 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader

.preheader135:                                    ; preds = %bb.c
  br i1 %i.ah, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %.preheader135
  %i.aj = sub nsw i32 8, %.1108.lcssa
  %i.ak = icmp eq i32 %.1108.lcssa, 0
  %i.al = zext nneg i32 %.0115 to i64
  %wide.trip.count214 = zext nneg i32 %spec.select to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph185, %bb.d
  %indvars.iv211 = phi i64 [ %i.al, %.lr.ph185 ], [ %indvars.iv.next212, %bb.d ] ; 2 uses
  %.1184 = phi i32 [ %.0, %.lr.ph185 ], [ %i.au, %bb.d ]
  %.2105183 = phi i32 [ %i.w, %.lr.ph185 ], [ %.3106, %bb.d ]
  %.2123181 = phi ptr [ %.1122.lcssa, %.lr.ph185 ], [ %i.an, %bb.d ] ; 2 uses
  %i.am = shl i32 %.2105183, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.2123181, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.2123181, align 1, !tbaa !10
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = lshr i32 %i.ap, %.1108.lcssa
  %i.ar = and i32 %i.ap, %i.v
  %.3106 = select i1 %i.ak, i32 0, i32 %i.ar      ; 2 uses
  %.1100 = or i32 %i.am, %i.aq                    ; 2 uses
  %i.as = lshr i32 %.1100, 1
  %i.at = and i32 %.1100, 1
  %sext133 = sub nsw i32 0, %i.at
  %.2101 = xor i32 %i.as, %sext133
  %i.au = add i32 %.2101, %.1184                  ; 3 uses
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv211
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !10
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %.loopexit, label %bb.d, !llvm.loop !93

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge157
  %indvars.iv = phi i64 [ %i.ai, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge157 ] ; 2 uses
  %.2165 = phi i32 [ %.0, %.preheader.preheader ], [ %i.ca, %._crit_edge157 ]
  %.4164 = phi i32 [ %i.w, %.preheader.preheader ], [ %i.bx, %._crit_edge157 ] ; 2 uses
  %.2109163 = phi i32 [ %.1108.lcssa, %.preheader.preheader ], [ %.4111.lcssa, %._crit_edge157 ] ; 2 uses
  %.5126161 = phi ptr [ %.1122.lcssa, %.preheader.preheader ], [ %.7128.lcssa, %._crit_edge157 ] ; 2 uses
  %i.ax = icmp eq i32 %.4164, 0
  br i1 %i.ax, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %.preheader, %.lr.ph147
  %.3110146 = phi i32 [ %i.ay, %.lr.ph147 ], [ %.2109163, %.preheader ]
  %.6127145 = phi ptr [ %i.az, %.lr.ph147 ], [ %.5126161, %.preheader ] ; 2 uses
  %i.ay = add nuw nsw i32 %.3110146, 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.6127145, i64 1 ; 2 uses
  %i.ba = load i8, ptr %.6127145, align 1, !tbaa !10 ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %.lr.ph147, label %._crit_edge148.loopexit, !llvm.loop !94

._crit_edge148.loopexit:                          ; preds = %.lr.ph147
  %i.bc = zext i8 %i.ba to i32
  br label %._crit_edge148

._crit_edge148:                                   ; preds = %._crit_edge148.loopexit, %.preheader
  %.6127.lcssa = phi ptr [ %.5126161, %.preheader ], [ %i.az, %._crit_edge148.loopexit ] ; 2 uses
  %.3110.lcssa = phi i32 [ %.2109163, %.preheader ], [ %i.ay, %._crit_edge148.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4164, %.preheader ], [ %i.bc, %._crit_edge148.loopexit ] ; 2 uses
  %i.bd = zext nneg i32 %.5.lcssa to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @nonzero_count, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9
  %i.bg = sub nsw i32 %.3110.lcssa, %i.bf         ; 2 uses
  %.neg = xor i32 %i.bg, -1
  %i.bh = add i32 %.3110.lcssa, %.neg             ; 2 uses
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = xor i32 %i.bi, %.5.lcssa                ; 2 uses
  %i.bk = sub nsw i32 %i.bh, %i.u                 ; 3 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %._crit_edge148, %.lr.ph156
  %.6154 = phi i32 [ %i.bq, %.lr.ph156 ], [ %i.bj, %._crit_edge148 ]
  %.4111153 = phi i32 [ %i.br, %.lr.ph156 ], [ %i.bk, %._crit_edge148 ] ; 2 uses
  %.7128152 = phi ptr [ %i.bn, %.lr.ph156 ], [ %.6127.lcssa, %._crit_edge148 ] ; 2 uses
  %i.bm = shl i32 %.6154, 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.7128152, i64 1 ; 2 uses
  %i.bo = load i8, ptr %.7128152, align 1, !tbaa !10
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bm, %i.bp            ; 2 uses
  %i.br = add nsw i32 %.4111153, 8                ; 2 uses
  %i.bs = icmp samesign ult i32 %.4111153, -8
  br i1 %i.bs, label %.lr.ph156, label %._crit_edge157, !llvm.loop !95

._crit_edge157:                                   ; preds = %.lr.ph156, %._crit_edge148
  %.7128.lcssa = phi ptr [ %.6127.lcssa, %._crit_edge148 ], [ %i.bn, %.lr.ph156 ] ; 2 uses
  %.4111.lcssa = phi i32 [ %i.bk, %._crit_edge148 ], [ %i.br, %.lr.ph156 ] ; 4 uses
  %.6.lcssa = phi i32 [ %i.bj, %._crit_edge148 ], [ %i.bq, %.lr.ph156 ] ; 2 uses
  %i.bt = shl i32 %i.bg, %i.u
  %i.bu = lshr i32 %.6.lcssa, %.4111.lcssa
  %i.bv = or i32 %i.bu, %i.bt                     ; 2 uses
  %notmask132 = shl nsw i32 -1, %.4111.lcssa
  %i.bw = xor i32 %notmask132, -1
  %i.bx = and i32 %.6.lcssa, %i.bw                ; 2 uses
  %i.by = lshr i32 %i.bv, 1
  %i.bz = and i32 %i.bv, 1
  %sext = sub nsw i32 0, %i.bz
  %.3102 = xor i32 %i.by, %sext
  %i.ca = add i32 %.3102, %.2165                  ; 3 uses
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !96

.loopexit:                                        ; preds = %._crit_edge157, %bb.d, %.lr.ph191, %.preheader137, %.preheader135, %.preheader134
  %.8 = phi ptr [ %.1122.lcssa, %.preheader134 ], [ %.1122.lcssa, %.lr.ph191 ], [ %i.an, %bb.d ], [ %.1122.lcssa, %.preheader135 ], [ %.1122.lcssa, %.preheader137 ], [ %.7128.lcssa, %._crit_edge157 ] ; 2 uses
  %.4119 = phi i32 [ %.0115, %.preheader134 ], [ %spec.select, %.lr.ph191 ], [ %spec.select, %bb.d ], [ %.0115, %.preheader135 ], [ %.0115, %.preheader137 ], [ %spec.select, %._crit_edge157 ]
  %.5112 = phi i32 [ %.1108.lcssa, %.preheader134 ], [ %.1108.lcssa, %.lr.ph191 ], [ %.1108.lcssa, %bb.d ], [ %.1108.lcssa, %.preheader135 ], [ %.1108.lcssa, %.preheader137 ], [ %.4111.lcssa, %._crit_edge157 ]
  %.7 = phi i32 [ %i.w, %.preheader134 ], [ %i.w, %.lr.ph191 ], [ %.3106, %bb.d ], [ %i.w, %.preheader135 ], [ %i.w, %.preheader137 ], [ %i.bx, %._crit_edge157 ]
  %.3 = phi i32 [ %.0, %.preheader134 ], [ %.0, %.lr.ph191 ], [ %i.au, %bb.d ], [ %.0, %.preheader135 ], [ %.0, %.preheader137 ], [ %i.ca, %._crit_edge157 ]
  %i.cd = icmp ugt ptr %.8, %i.f
  br i1 %i.cd, label %.sink.split, label %bb.a, !llvm.loop !97

bb.e:                                             ; preds = %bb.a
  %i.ce = icmp ult ptr %.0121, %i.f
  br i1 %i.ce, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %.loopexit, %bb.e
  %.str.4.sink = phi ptr [ @.str.4, %bb.e ], [ @.str.3, %.loopexit ]
  %.0120.ph = phi i32 [ 0, %bb.e ], [ 1, %.loopexit ]
  tail call void @ffpmsg(ptr noundef nonnull %.str.4.sink) #9
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0120 = phi i32 [ 0, %bb.e ], [ %.0120.ph, %.sink.split ]
  ret i32 %.0120
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 8, i32 8}
!15 = !{!"short", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11, !13, !12}
!21 = distinct !{!21, !11, !12, !13}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !13, !12}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !11, !12, !13}
!27 = distinct !{!27, !11, !13, !12}
!28 = distinct !{!28, !11, !12, !13}
!29 = distinct !{!29, !11, !12, !13}
!30 = distinct !{!30, !11, !13, !12}
!31 = distinct !{!31, !11, !12, !13}
!32 = distinct !{!32, !11, !12, !13}
!33 = distinct !{!33, !11, !13, !12}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11, !12, !13}
!38 = distinct !{!38, !11, !12, !13}
!39 = distinct !{!39, !11, !13, !12}
!40 = distinct !{!40, !11, !12, !13}
!41 = distinct !{!41, !11, !12, !13}
!42 = distinct !{!42, !11, !13, !12}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11, !12, !13}
!45 = distinct !{!45, !11, !12, !13}
!46 = distinct !{!46, !11, !13, !12}
!47 = distinct !{!47, !11, !12, !13}
!48 = distinct !{!48, !11, !12, !13}
!49 = distinct !{!49, !11, !13, !12}
!50 = distinct !{!50, !11, !12, !13}
!51 = distinct !{!51, !11, !12, !13}
!52 = distinct !{!52, !11, !13, !12}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11, !12, !13}
!57 = distinct !{!57, !11, !12, !13}
!58 = distinct !{!58, !11, !13, !12}
!59 = distinct !{!59, !11, !12, !13}
!60 = distinct !{!60, !11, !12, !13}
!61 = distinct !{!61, !11, !13, !12}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11, !12, !13}
!64 = distinct !{!64, !11, !12, !13}
!65 = distinct !{!65, !11, !13, !12}
!66 = distinct !{!66, !11, !12, !13}
!67 = distinct !{!67, !11, !12, !13}
!68 = distinct !{!68, !11, !13, !12}
!69 = distinct !{!69, !11, !12, !13}
!70 = distinct !{!70, !11, !12, !13}
!71 = distinct !{!71, !11, !13, !12}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11, !12, !13}
!76 = distinct !{!76, !11, !13, !12}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11, !12, !13}
!84 = distinct !{!84, !11, !12, !13}
!85 = distinct !{!85, !11, !13, !12}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = !{!"branch_weights", i32 4, i32 12}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
end_hunk_0
