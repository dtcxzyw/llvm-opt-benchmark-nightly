Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 136
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 156
begin_hunk_0_@process:bb.a
  br label %vector.body1766

vector.body1766:                                  ; preds = %vector.body1766, %vector.ph1764
  %index1767 = phi i64 [ 0, %vector.ph1764 ], [ %index.next1777, %vector.body1766 ] ; 3 uses
  %i.rlf = shl nuw i64 %index1767, 2              ; 2 uses
  %i.rlg = getelementptr inbounds nuw [4 x i8], ptr %i.rjp, i64 %index1767
  %wide.load1768 = load <4 x float>, ptr %i.rlg, align 4, !tbaa !12, !alias.scope !605, !noalias !602 ; 3 uses
  %i.rlh = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.rlf ; 2 uses
  %wide.vec1769 = load <16 x float>, ptr %i.rlh, align 4, !tbaa !12, !alias.scope !600, !noalias !606 ; 3 uses
  %strided.vec1770 = shufflevector <16 x float> %wide.vec1769, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1771 = shufflevector <16 x float> %wide.vec1769, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1772 = shufflevector <16 x float> %wide.vec1769, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.rli = getelementptr inbounds nuw [4 x i8], ptr %i.rku, i64 %i.rlf
  %wide.vec1773 = load <16 x float>, ptr %i.rli, align 64, !tbaa !12, !alias.scope !607, !noalias !602 ; 3 uses
  %strided.vec1774 = shufflevector <16 x float> %wide.vec1773, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1775 = shufflevector <16 x float> %wide.vec1773, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1776 = shufflevector <16 x float> %wide.vec1773, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.rlj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1770, %strided.vec1774
  %i.rlk = fmul reassoc nsz arcp contract afn <4 x float> %i.rlj, %wide.load1768
  %i.rll = fadd reassoc nsz arcp contract afn <4 x float> %i.rlk, %strided.vec1774
  %i.rlm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1771, %strided.vec1775
  %i.rln = fmul reassoc nsz arcp contract afn <4 x float> %i.rlm, %wide.load1768
  %i.rlo = fadd reassoc nsz arcp contract afn <4 x float> %i.rln, %strided.vec1775
  %i.rlp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1772, %strided.vec1776
  %i.rlq = fmul reassoc nsz arcp contract afn <4 x float> %i.rlp, %wide.load1768
  %i.rlr = fadd reassoc nsz arcp contract afn <4 x float> %i.rlq, %strided.vec1776
  %i.rls = shufflevector <4 x float> %i.rll, <4 x float> %i.rlo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rlt = shufflevector <4 x float> %i.rlr, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.rls, <8 x float> %i.rlt, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.rlh, align 4, !tbaa !12, !alias.scope !600, !noalias !606
  %index.next1777 = add nuw i64 %index1767, 4     ; 2 uses
  %i.rlu = icmp eq i64 %index.next1777, %n.vec1765
  br i1 %i.rlu, label %.lr.ph.i615.preheader, label %vector.body1766, !llvm.loop !437

._crit_edge.i617:                                 ; preds = %.lr.ph.i615
  tail call void @free(ptr noundef nonnull %i.rku) #27, !noalias !602
  br label %.sink.split.i

.lr.ph.i615:                                      ; preds = %.lr.ph.i615.preheader, %.lr.ph.i615
  %.07280.i = phi i64 [ %i.rmy, %.lr.ph.i615 ], [ %.07280.i.ph, %.lr.ph.i615.preheader ] ; 3 uses
  %i.rlv = shl nuw i64 %.07280.i, 2               ; 4 uses
  %i.rlw = getelementptr inbounds nuw [4 x i8], ptr %i.rjp, i64 %.07280.i ; 3 uses
  %i.rlx = load float, ptr %i.rlw, align 4, !tbaa !12, !noalias !602
  %i.rly = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.rlv ; 3 uses
  %i.rlz = load float, ptr %i.rly, align 4, !tbaa !12, !alias.scope !600
  %i.rma = getelementptr inbounds nuw [4 x i8], ptr %i.rku, i64 %i.rlv
  %i.rmb = load float, ptr %i.rma, align 16, !tbaa !12, !noalias !602 ; 2 uses
  %i.rmc = fsub reassoc nsz arcp contract afn float %i.rlz, %i.rmb
  %i.rmd = fmul reassoc nsz arcp contract afn float %i.rmc, %i.rlx
  %i.rme = fadd reassoc nsz arcp contract afn float %i.rmd, %i.rmb
  store float %i.rme, ptr %i.rly, align 4, !tbaa !12, !alias.scope !600
  %i.rmf = load float, ptr %i.rlw, align 4, !tbaa !12, !noalias !602
  %i.rmg = or disjoint i64 %i.rlv, 1              ; 2 uses
  %i.rmh = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.rmg ; 2 uses
  %i.rmi = load float, ptr %i.rmh, align 4, !tbaa !12, !alias.scope !600
  %i.rmj = getelementptr inbounds nuw [4 x i8], ptr %i.rku, i64 %i.rmg
  %i.rmk = load float, ptr %i.rmj, align 4, !tbaa !12, !noalias !602 ; 2 uses
  %i.rml = fsub reassoc nsz arcp contract afn float %i.rmi, %i.rmk
  %i.rmm = fmul reassoc nsz arcp contract afn float %i.rml, %i.rmf
  %i.rmn = fadd reassoc nsz arcp contract afn float %i.rmm, %i.rmk
  store float %i.rmn, ptr %i.rmh, align 4, !tbaa !12, !alias.scope !600
  %i.rmo = load float, ptr %i.rlw, align 4, !tbaa !12, !noalias !602
  %i.rmp = or disjoint i64 %i.rlv, 2              ; 2 uses
  %i.rmq = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.rmp ; 2 uses
  %i.rmr = load float, ptr %i.rmq, align 4, !tbaa !12, !alias.scope !600
  %i.rms = getelementptr inbounds nuw [4 x i8], ptr %i.rku, i64 %i.rmp
  %i.rmt = load float, ptr %i.rms, align 8, !tbaa !12, !noalias !602 ; 2 uses
  %i.rmu = fsub reassoc nsz arcp contract afn float %i.rmr, %i.rmt
  %i.rmv = fmul reassoc nsz arcp contract afn float %i.rmu, %i.rmo
  %i.rmw = fadd reassoc nsz arcp contract afn float %i.rmv, %i.rmt
  store float %i.rmw, ptr %i.rmq, align 4, !tbaa !12, !alias.scope !600
  %i.rmx = getelementptr inbounds nuw i8, ptr %i.rly, i64 12
  store float 0.000000e+00, ptr %i.rmx, align 4, !tbaa !12, !alias.scope !600
  %i.rmy = add nuw nsw i64 %.07280.i, 1           ; 2 uses
  %exitcond.not.i616 = icmp eq i64 %i.rmy, %i.rjo
  br i1 %exitcond.not.i616, label %._crit_edge.i617, label %.lr.ph.i615, !llvm.loop !438

.sink.split.i:                                    ; preds = %.lr.ph82.i, %middle.block1722, %vec.epilog.middle.block1741, %._crit_edge.i617, %bb.ro, %bb.rm
  tail call void @free(ptr noundef %i.rjp) #27, !noalias !602
  tail call void @free(ptr noundef %i.rjr) #27, !noalias !602
  br label %dual_demosaic.exit

dual_demosaic.exit:                               ; preds = %.sink.split.i, %bb.rl, %_capture_sharpen.exit
  br i1 %.not75.i, label %bb.rp, label %bb.rq

bb.rp:                                            ; preds = %dual_demosaic.exit
  %i.rmz = mul i32 %i.aov, %i.awk
  %i.rna = sext i32 %i.rmz to i64
  %i.rnb = getelementptr inbounds [4 x i8], ptr %i.and, i64 %i.rna
  %i.rnc = mul i32 %i.aov, %i.aws
  %i.rnd = sext i32 %i.rnc to i64
  %i.rne = getelementptr inbounds [4 x i8], ptr %i.anv, i64 %i.rnd
  %i.rnf = mul nsw i32 %i.aov, %i.awt
  %i.rng = sext i32 %i.rnf to i64
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.rnb, ptr noundef nonnull %i.rne, i64 noundef %i.rng) #27
  br label %bb.rq

bb.rq:                                            ; preds = %dual_demosaic.exit, %bb.rp, %bb.hc
  %indvars.iv.next1250 = add nuw nsw i64 %indvars.iv1249, 1 ; 2 uses
  %exitcond1252.not = icmp eq i64 %indvars.iv.next1250, %wide.trip.count
  br i1 %exitcond1252.not, label %._crit_edge, label %bb.hc

bb.rr:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef %i.anv) #27
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %._crit_edge
  tail call void @free(ptr noundef %.0387) #27
  %i.rnh = getelementptr inbounds nuw i8, ptr %i.s, i64 552
  %i.rni = load i32, ptr %i.rnh, align 8, !tbaa !449
  %.not425 = icmp eq i32 %i.rni, 0
  br i1 %.not425, label %bb.ru, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.rnj = tail call i32 @dt_dev_write_scharr_mask(ptr noundef %1, ptr noundef nonnull %i.and, ptr noundef %4, i32 noundef 1) #27 ; 0 uses
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.rs
  %i.rnk = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.rnl = load i32, ptr %i.rnk, align 4, !tbaa !146 ; 2 uses
  %i.rnm = icmp eq i32 %i.rnl, 0
  %or.cond33.not428 = select i1 %i.rnm, i1 true, i1 %i.cw
  %or.cond35 = select i1 %or.cond33.not428, i1 true, i1 %i.v
  br i1 %or.cond35, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  tail call fastcc void @color_smoothing(ptr noundef %i.and, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.rnl)
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  br i1 %i.dn, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef nonnull %i.and, ptr noundef %5, ptr noundef %4) #27
  tail call void @free(ptr noundef %i.and) #27
  br label %bb.ry

bb.ry:                                            ; preds = %bb.go, %bb.rw, %bb.rx, %bb.hb, %bb.t, %bb.w, %bb.v
  ret void
}

declare void @dt_dev_clear_scharr_mask(ptr noundef) local_unnamed_addr #3

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_passthrough_monochrome_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_third_size_xtrans_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_half_size_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @green_equilibration_favg(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 1                            ; 2 uses
  %.not.not.not = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not.not.not, i32 -1, i32 1 ; 3 uses
  %spec.select58 = xor i32 %i.a, 1                ; 3 uses
  %i.b = sext i32 %2 to i64                       ; 5 uses
  %i.c = sext i32 %3 to i64
  %i.d = mul nsw i64 %i.c, %i.b
  tail call void @dt_iop_image_copy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.d) #27
  %i.e = add nsw i32 %3, -1                       ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.a
  %i.g = zext nneg i32 %spec.select58 to i64      ; 4 uses
  %i.h = xor i32 %spec.select, -1
  %i.i = add i32 %2, %i.h                         ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp ult i32 %spec.select58, %i.i
  %i.l = sext i32 %spec.select to i64
  %invariant.gep73 = getelementptr [4 x i8], ptr %1, i64 %i.l
  br i1 %i.k, label %.lr.ph.us, label %.lr.ph68.split

.lr.ph.us:                                        ; preds = %.lr.ph68, %._crit_edge.us
  %.05366.us = phi i64 [ %i.ab, %._crit_edge.us ], [ 0, %.lr.ph68 ] ; 3 uses
  %i.m = phi <2 x double> [ %i.y, %._crit_edge.us ], [ zeroinitializer, %.lr.ph68 ]
  %i.n = mul i64 %.05366.us, %i.b
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  %i.p = or disjoint i64 %.05366.us, 1
  %i.q = mul i64 %i.p, %i.b
  %gep74.us = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.05262.us = phi i64 [ %i.g, %.lr.ph.us ], [ %i.z, %bb.b ] ; 3 uses
  %i.r = phi <2 x double> [ %i.m, %.lr.ph.us ], [ %i.y, %bb.b ]
  %i.s = getelementptr [4 x i8], ptr %i.o, i64 %.05262.us
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %gep.us = getelementptr [4 x i8], ptr %gep74.us, i64 %.05262.us
  %i.u = load float, ptr %gep.us, align 4, !tbaa !12
  %i.v = insertelement <2 x float> poison, float %i.u, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.t, i64 1
  %i.x = fpext reassoc nsz arcp contract afn <2 x float> %i.w to <2 x double>
  %i.y = fadd reassoc nsz arcp contract afn <2 x double> %i.r, %i.x ; 7 uses
  %i.z = add i64 %.05262.us, 2                    ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %bb.b, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.b
  %i.ab = add i64 %.05366.us, 2                   ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.f
  br i1 %i.ac, label %.lr.ph.us, label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge.us
  %5 = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.y, zeroinitializer ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %or.cond = select i1 %7, i1 %6, i1 false
  %i.ad = icmp sgt i32 %3, 1
  %or.cond93 = and i1 %or.cond, %i.ad
  br i1 %or.cond93, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge69
  %i.ae = xor i32 %spec.select, -1
  %i.af = add i32 %2, %i.ae                       ; 2 uses
  %i.ag = icmp slt i32 %spec.select58, %i.af
  br i1 %i.ag, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ah = and i32 %4, 1
  %i.ai = xor i32 %i.ah, 1
  %i.aj = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.ak = zext nneg i32 %i.af to i64              ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.f, i64 2)
  %i.al = add nuw i64 %smax, 4611686018427387903
  %i.am = lshr i64 %i.al, 1
  %i.an = mul i64 %i.am, %i.b
  %i.ao = shl i64 %i.an, 3
  %i.ap = xor i64 %i.g, -1
  %i.aq = add nsw i64 %i.ap, %i.ak
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.ao, %i.as
  %i.au = shl nuw nsw i64 %i.g, 2                 ; 3 uses
  %i.av = or disjoint i64 %i.at, %i.au
  %i.aw = add i64 %i.av, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.aw
  %scevgep99 = getelementptr i8, ptr %1, i64 %i.au
  %scevgep100 = getelementptr i8, ptr %0, i64 %i.aw
  %scevgep101 = getelementptr i8, ptr %0, i64 %i.au
  %i.ax = xor i64 %i.g, -1
  %i.ay = add nsw i64 %i.ax, %i.ak                ; 2 uses
  %i.az = lshr i64 %i.ay, 1
  %i.ba = add nuw i64 %i.az, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 8
  %bound0 = icmp ult ptr %scevgep101, %scevgep
  %bound1 = icmp ult ptr %scevgep99, %scevgep100
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %2, 0
  %i.bb = or i1 %found.conflict, %stride.check
  %i.bc = and i64 %i.ba, 3                        ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = select i1 %i.bd, i64 4, i64 %i.bc
  %n.vec = sub i64 %i.ba, %i.be                   ; 2 uses
  %i.bf = shl i64 %n.vec, 1
  %i.bg = or disjoint i64 %i.bf, %i.aj
  %broadcast.splat103 = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat105 = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert106 = insertelement <4 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat107 = shufflevector <4 x i64> %broadcast.splatinsert106, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat107, <i64 0, i64 2, i64 4, i64 6>
  %i.bh = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat105
  %i.bi = extractelement <2 x double> %i.y, i64 0
  %i.bj = extractelement <2 x double> %i.y, i64 1
  %i.bk = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bj
  br label %.preheader

.lr.ph68.split:                                   ; preds = %.lr.ph68, %.lr.ph68.split
  %.05366 = phi i64 [ %i.bl, %.lr.ph68.split ], [ 0, %.lr.ph68 ]
  %i.bl = add i64 %.05366, 2                      ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.f
  br i1 %i.bm, label %.lr.ph68.split, label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv84 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next85, %._crit_edge ] ; 2 uses
  %i.bn = mul nsw i64 %indvars.iv84, %i.b         ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bb
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.preheader, %vector.body
  %indvars.iv.ph = phi i64 [ %i.bg, %vector.body ], [ %i.aj, %.preheader ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bo = add nuw nsw <4 x i64> %broadcast.splat, %vec.ind ; 2 uses
  %i.bp = extractelement <4 x i64> %i.bo, i64 0
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp
  %wide.vec = load <8 x float>, ptr %i.bq, align 4, !tbaa !12, !alias.scope !613
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.br = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec to <4 x double>
  %i.bs = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat103, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn <4 x double> %i.bs, %i.bh
  %i.bu = fptrunc reassoc nsz arcp contract afn <4 x double> %i.bt to <4 x float>
  %i.bv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bu, <4 x float> zeroinitializer)
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %0, <4 x i64> %i.bo
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.bv, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !614, !noalias !613
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !611

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.bx = icmp slt i64 %indvars.iv.next85, %i.f
  br i1 %i.bx, label %.preheader, label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.by = add nsw i64 %i.bn, %indvars.iv          ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fpext reassoc nsz arcp contract afn float %i.ca to double
  %i.cc = fmul reassoc nsz arcp contract afn double %i.bi, %i.cb
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, %i.bk
  %i.ce = fptrunc reassoc nsz arcp contract afn double %i.cd to float
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ce, float 0.000000e+00)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  store float %i.cf, ptr %i.cg, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.ch, label %scalar.ph, label %._crit_edge, !llvm.loop !612

.loopexit:                                        ; preds = %.lr.ph68.split, %._crit_edge, %bb.a, %.preheader.lr.ph, %._crit_edge69
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @green_equilibration_lavg(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 768
  %.not = icmp eq i32 %i.a, 256
  %spec.select = select i1 %.not, i32 2, i32 3    ; 2 uses
  %i.b = shl nuw nsw i32 %spec.select, 2          ; 2 uses
  %i.c = lshr i32 %4, %i.b
  %i.d = and i32 %i.c, 3
  %.not117 = icmp eq i32 %i.d, 1
  %.0111 = select i1 %.not117, i64 2, i64 3       ; 3 uses
  %i.e = trunc nuw nsw i64 %.0111 to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = and i32 %i.f, 2
  %i.h = or disjoint i32 %i.g, %i.b
  %i.i = lshr i32 %4, %i.h
  %i.j = and i32 %i.i, 3
  %.not118 = icmp ne i32 %i.j, 1
  %i.k = sext i1 %.not118 to i32
  %.1 = add nsw i32 %spec.select, %i.k            ; 2 uses
  %i.l = sext i32 %2 to i64                       ; 6 uses
  %i.m = sext i32 %3 to i64
  %i.n = mul nsw i64 %i.m, %i.l
  tail call void @dt_iop_image_copy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.n) #27
  %i.o = add nsw i32 %3, -2                       ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ult i32 %.1, %i.o
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge125

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.r = zext nneg i32 %.1 to i64                 ; 2 uses
  %i.s = add nsw i32 %2, -2
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ult i64 %.0111, %i.t
  br i1 %i.u, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.0110124.us = phi i64 [ %i.ae, %._crit_edge.us ], [ %i.r, %.preheader.lr.ph ] ; 5 uses
  %i.v = add i64 %.0110124.us, -1
  %i.w = mul i64 %i.v, %i.l
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.w
  %i.y = add nuw i64 %.0110124.us, 1
  %i.z = mul i64 %i.y, %i.l
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %i.z
  %i.ab = add i64 %.0110124.us, -2
  %i.ac = mul i64 %i.ab, %i.l
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %i.ac
  %i.ae = add i64 %.0110124.us, 2                 ; 3 uses
  %i.af = mul i64 %i.ae, %i.l
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %i.af
  %i.ah = mul i64 %.0110124.us, %i.l
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.f
  %.0123.us = phi i64 [ %.0111, %.preheader.us ], [ %i.cz, %bb.f ] ; 6 uses
  %i.ai = getelementptr [4 x i8], ptr %i.x, i64 %.0123.us ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.aa, i64 %.0123.us ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 -4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 4 uses
  %i.am = getelementptr i8, ptr %i.ai, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !12 ; 4 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 -4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.aj, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12 ; 4 uses
  %i.as = getelementptr [4 x i8], ptr %i.ad, i64 %.0123.us
  %i.at = getelementptr [4 x i8], ptr %i.ag, i64 %.0123.us
  %i.au = load float, ptr %i.as, align 4, !tbaa !12 ; 4 uses
  %i.av = load float, ptr %i.at, align 4, !tbaa !12 ; 4 uses
  %i.aw = add i64 %.0123.us, %i.ah                ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %1, i64 %i.aw ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12 ; 4 uses
  %i.ba = getelementptr i8, ptr %i.ax, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12 ; 4 uses
end_hunk_0
